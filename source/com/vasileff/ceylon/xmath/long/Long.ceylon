import com.vasileff.ceylon.xmath.whole {
    Whole
}

shared sealed
interface Long
        satisfies Integral<Long> &
                  Binary<Long> &
                  Exponentiable<Long, Long> {

    shared formal
    Integer integer;

    shared formal
    Integer preciseInteger;

    shared formal
    Integer impreciseInteger;

    shared formal
    Boolean even;

    shared formal
    Whole whole;
}
