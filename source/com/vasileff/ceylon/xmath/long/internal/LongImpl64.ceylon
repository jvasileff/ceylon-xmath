import com.vasileff.ceylon.xmath.long {
    Long,
    lzero=zero
}
import com.vasileff.ceylon.xmath.whole {
    Whole,
    wholeNumber
}

shared
class LongImpl64 satisfies Long {

    shared actual
    Integer integer;

    shared
    new OfInteger(Integer integer) {
        this.integer = integer;
    }

    shared
    new OfWords(Integer w3, Integer w2, Integer w1, Integer w0) {
        integer = w0.or(w1.leftLogicalShift(16))
                    .or(w2.leftLogicalShift(32))
                    .or(w3.leftLogicalShift(48));
    }

    shared actual
    Long and(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.and(other.integer));
    }

    shared actual
    Comparison compare(Long other) {
        assert(is LongImpl64 other);
        return integer.compare(other.integer);
    }

    shared actual
    Long divided(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.divided(other.integer));
    }

    shared actual
    Long flip(Integer index)
        =>  OfInteger(integer.flip(index));

    shared actual
    Boolean get(Integer index)
        =>  integer.get(index);

    shared actual
    Long leftLogicalShift(Integer shift)
        =>  OfInteger(integer.leftLogicalShift(shift));

    shared actual
    Long neighbour(Integer offset)
        =>  OfInteger(integer.neighbour(offset));

    shared actual
    Integer offset(Long other) {
        assert(is LongImpl64 other);
        return integer.offset(other.integer);
    }

    shared actual
    Long or(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.or(other.integer));
    }

    shared actual
    Long plus(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.plus(other.integer));
    }

    shared actual
    Long plusInteger(Integer integer)
        =>  OfInteger(this.integer.plusInteger(integer));

    shared actual
    Long power(Long exponent) {
        assert(is LongImpl64 exponent);
        return OfInteger(integer.power(exponent.integer));
    }

    shared actual
    Long powerOfInteger(Integer exponent)
        =>  OfInteger(integer.powerOfInteger(exponent));

    shared actual
    Long remainder(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.remainder(other.integer));
    }

    shared actual
    Long rightArithmeticShift(Integer shift)
        =>  OfInteger(integer.rightArithmeticShift(shift));

    shared actual
    Long rightLogicalShift(Integer shift)
        =>  OfInteger(integer.rightLogicalShift(shift));

    shared actual
    Long set(Integer index, Boolean bit)
        =>  OfInteger(integer.set(index, bit));

    shared actual
    Long times(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.times(other.integer));
    }

    shared actual
    Long timesInteger(Integer integer)
        =>  OfInteger(this.integer.timesInteger(integer));

    shared actual
    Long xor(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.xor(other.integer));
    }

    shared actual
    Boolean equals(Object that)
        =>  if (is LongImpl64 that)
            then integer == that.integer
            else false;

    shared actual
    Boolean unit => integer.unit;

    shared actual
    Long fractionalPart => lzero;

    shared actual
    Long wholePart => this;

    shared actual
    Boolean zero => integer.zero;

    shared actual
    String string => integer.string;

    shared actual
    Integer preciseInteger => integer;

    shared actual
    Integer impreciseInteger => integer;

    shared actual
    Integer hash => integer.hash;

    shared actual
    Whole whole => wholeNumber(integer);

    shared actual
    Long negated => OfInteger(integer.negated);

    shared actual
    Long not => OfInteger(integer.not);

    shared actual
    Boolean negative => integer.negative;

    shared actual
    Boolean positive => integer.positive;

    shared actual
    Boolean even => integer.even;
}
