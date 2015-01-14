import ceylon.math.whole {
    Whole,
    wholeNumber
}
class LongImpl64 satisfies Long {

    shared actual Integer integer;

    shared new OfInteger(Integer integer) {
        this.integer = integer;
    }

    shared new OfWords(Integer w3, Integer w2, Integer w1, Integer w0) {
        integer = w0.or(w1.leftLogicalShift(16))
                    .or(w2.leftLogicalShift(32))
                    .or(w3.leftLogicalShift(48));
    }

    shared actual Long and(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.and(other.integer));
    }

    shared actual Comparison compare(Long other) {
        assert(is LongImpl64 other);
        return integer.compare(other.integer);
    }

    shared actual Long divided(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.divided(other.integer));
    }

    shared actual Long flip(Integer index) {
        return OfInteger(integer.flip(index));
    }

    shared actual Long fractionalPart {
        return package.zero;
    }

    shared actual Boolean get(Integer index) {
        return integer.get(index);
    }

    shared actual Long leftLogicalShift(Integer shift) {
        return OfInteger(integer.leftLogicalShift(shift));
    }

    shared actual Long negated {
        return OfInteger(integer.negated);
    }

    shared actual Boolean negative {
        return integer.negative;
    }

    shared actual Long neighbour(Integer offset) {
        return OfInteger(integer.neighbour(offset));
    }

    shared actual Long not {
        return OfInteger(integer.not);
    }

    shared actual Integer offset(Long other) {
        assert(is LongImpl64 other);
        return integer.offset(other.integer);
    }

    shared actual Long or(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.or(other.integer));
    }

    shared actual Long plus(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.plus(other.integer));
    }

    shared actual Long plusInteger(Integer integer) {
        return OfInteger(integer.plusInteger(integer));
    }

    shared actual Boolean positive {
        return integer.positive;
    }

    shared actual Long power(Long exponent) {
        assert(is LongImpl64 exponent);
        return OfInteger(integer.power(exponent.integer));
    }

    shared actual Long powerOfInteger(Integer exponent) {
        return OfInteger(integer.powerOfInteger(exponent));
    }

    shared actual Long remainder(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.remainder(other.integer));
    }

    shared actual Long rightArithmeticShift(Integer shift) {
        return OfInteger(integer.rightArithmeticShift(shift));
    }

    shared actual Long rightLogicalShift(Integer shift) {
        return OfInteger(integer.rightLogicalShift(shift));
    }

    shared actual Long set(Integer index, Boolean bit) {
        return OfInteger(integer.set(index, bit));
    }

    shared actual Long times(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.times(other.integer));
    }

    shared actual Long timesInteger(Integer integer) {
        return OfInteger(integer.timesInteger(integer));
    }

    shared actual Boolean unit {
        return integer.unit;
    }

    shared actual Long wholePart {
        return this;
    }

    shared actual Long xor(Long other) {
        assert(is LongImpl64 other);
        return OfInteger(integer.xor(other.integer));
    }

    shared actual Boolean zero {
        return integer.zero;
    }

    shared actual String string
        =>  integer.string;

    // FIXME use Integer's definition of equals... floats, integers, etc?
    shared actual Boolean equals(Object that) {
        if (is LongImpl64 that) {
            return integer == that.integer;
        }
        else {
            return false;
        }
    }

    shared actual Integer hash
        => integer.hash;

    shared actual Whole whole
        => wholeNumber(integer);

    shared actual Boolean even
        => integer.even;

}