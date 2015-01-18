import com.vasileff.ceylon.xmath.whole {
    Whole,
    gcd
}
import java.math {
    BigInteger
}
import java.lang {
    Thread
}

{Whole+} wholeStream(
        Integer numBits,
        Boolean allowZero = true,
        Boolean allowNegative = true,
        Boolean randomizeNumBits = false)
    =>  { generateWhole(numBits,
                        allowZero, allowNegative,
                        randomizeNumBits) }.cycled;

{Integer+} integerStream(
        Integer numBits,
        Boolean allowZero = true,
        Boolean allowNegative = true,
        Boolean randomizeNumBits = false)
    =>  { generateInteger(numBits,
                          allowZero, allowNegative,
                          randomizeNumBits) }.cycled;

void doBenches(
        String label,
        {Integer*} lhsBits,
        {Integer*} rhsBits,
        Integer iterations,
        Whole ceylonOp(Whole v1)(Whole v2),
        BigInteger javaOp(BigInteger v1)(BigInteger v2),
        Boolean allowZeroRhs = true,
        Boolean allowNegativeLhs = true,
        Boolean allowNegativeRhs = true) {

    for (lhsBitCount in lhsBits) {
        for (rhsBitCount in rhsBits) { 
            bench1 {
                label = label;
                lhsBits = lhsBitCount;
                rhsBits = rhsBitCount;
                iterations = iterations;
                ceylonOp = ceylonOp;
                javaOp = javaOp;
                allowZeroRhs = allowZeroRhs;
                allowNegativeLhs = allowNegativeLhs;
                allowNegativeRhs = allowNegativeRhs;
            };
        }
    }
}

void bench1(
        String label,
        Integer lhsBits,
        Integer rhsBits,
        Integer iterations,
        Whole ceylonOp(Whole v1)(Whole v2),
        BigInteger javaOp(BigInteger v1)(BigInteger v2),
        Boolean allowZeroRhs = true,
        Boolean allowNegativeLhs = true,
        Boolean allowNegativeRhs = true) {

    // FIXME: better way to create wholes, quickly
    value uniqueRandoms = 100;

    value lhsWholes = wholeStream(lhsBits, true, allowNegativeLhs);
    value rhsWholes = wholeStream(rhsBits, allowZeroRhs, allowNegativeRhs);

    value wholes = zipPairs(lhsWholes, rhsWholes).take(uniqueRandoms).sequence();
    value bigIntegers = wholes.collect(([Whole, Whole] pair)
        => [BigInteger(pair.first.string), BigInteger(pair.last.string)]);

    bench {
        ["Whole | ``label`` | ``lhsBits`` | ``rhsBits``",
         function () {
            variable Integer sum = 0;
            for (pair in wholes.cycled.take(iterations)) {
                sum = sum * 31 + ceylonOp(pair.first)(pair.last).integer;
            }
            return sum;
        }],
        ["BigInteger | ``label`` | ``lhsBits`` | ``rhsBits``",
         function () {
             variable Integer sum = 0;
             for (pair in bigIntegers.cycled.take(iterations)) {
                 sum = sum * 31 + javaOp(pair.first)(pair.last).longValue();
             }
             return sum;
        }]
    };
}

void bench({[String, Object()]+} tests) {
    variable Object expectedResult = 0;
    for (_ in 1:5) {
        for (test in tests) {
            expectedResult = test[1]();
        }
    }

    for (test in tests) {
        Thread.currentThread().sleep(500);
        Integer start = system.nanoseconds;
        value actualResult = test[1]();
        assert(expectedResult == actualResult);
        value time = (system.nanoseconds - start) / 10^6; 
        print ("``time`` | ``test[0]``");
    }
}

shared void doBench() {
    value iterations = 500_000;
    doBenches {
        label = "+";
        lhsBits = {64};
        rhsBits = {64, 64};
        iterations = iterations;
        ceylonOp = Whole.plus;
        javaOp = BigInteger.add;
        allowNegativeLhs = false;
        allowNegativeRhs = false;
    };
    doBenches {
        label = "-";
        lhsBits = {64};
        rhsBits = {64, 64};
        iterations = iterations;
        ceylonOp = Whole.minus;
        javaOp = BigInteger.subtract;
        allowNegativeLhs = false;
        allowNegativeRhs = false;
    };
    doBenches {
        label = "*";
        lhsBits = {64};
        rhsBits = {64, 64};
        iterations = iterations;
        ceylonOp = Whole.times;
        javaOp = BigInteger.multiply;
    };
    doBenches {
        label = "/";
        lhsBits = {64};
        rhsBits = {32, 32};
        iterations = iterations;
        ceylonOp = Whole.divided;
        javaOp = BigInteger.divide;
        allowZeroRhs = false;
    };
    doBenches {
        label = "%";
        lhsBits = {64};
        rhsBits = {32, 32};
        iterations = iterations;
        ceylonOp = Whole.remainder;
        javaOp = BigInteger.remainder;
        allowZeroRhs = false;
    };
    doBenches {
        label = "gcd";
        lhsBits = {64};
        rhsBits = {32, 32};
        iterations = iterations;
        ceylonOp = curry(gcd);
        javaOp = BigInteger.gcd;
        allowZeroRhs = false;
    };
}
