dynamic JSMath {
    "Euler's number (approx. 2.718)"
    shared formal Float \iE;

    "natural logarithm of 2 (approx. 0.693)"
    shared formal Float \iLN2;

    "natural logarithm of 10 (approx. 2.302)"
    shared formal Float \iLN10;

    "base-2 logarithm of E (approx. 1.442)"
    shared formal Float \iLOG2E;

    "base-10 logarithm of E (approx. 0.434)"
    shared formal Float \iLOG10E;

    "PI (approx. 3.14)"
    shared formal Float \iPI;

    "square root of 1/2 (approx. 0.707)"
    shared formal Float \iSQRT1_2;

    "square root of 2 (approx. 1.414)"
    shared formal Float \iSQRT2;

    "absolute value of x"
    shared formal Float abs(Float x);

    "arccosine of x, in radians"
    shared formal Float acos(Float x);

    "arcsine of x, in radians"
    shared formal Float asin(Float x);

    "arctangent of x as a numeric value between -PI/2 and PI/2 radians"
    shared formal Float atan(Float x);

    "the arctangent of the quotient of its arguments"
    shared formal Float atan2(Float y, Float x);

    "x, rounded upwards to the nearest integer"
    shared formal Float ceil(Float x);

    "cosine of x (x is in radians)"
    shared formal Float cos(Float x);

    "the value of E^x"
    shared formal Float exp(Float x);

    "x, rounded downwards to the nearest integer"
    shared formal Float floor(Float x);

    "the natural logarithm (base E) of x"
    shared formal Float log(Float x);

    "the number with the highest value"
    shared formal Float max(Float *xs);

    "the number with the lowest value"
    shared formal Float min(Float *xs);

    "the value of x to the power of y"
    shared formal Float pow(Float x, Float y);

    "a random number between 0 and 1"
    shared formal Float random();

    "Rounds x to the nearest integer"
    shared formal Float round(Float x);

    "sine of x (x is in radians)"
    shared formal Float sin(Float x);

    "square root of x"
    shared formal Float sqrt(Float x);

    "tangent of an angle"
    shared formal Float tan(Float x);
}

native("js") JSMath jsMath {
    dynamic { return Math; }
}

// FIXME https://github.com/ceylon/ceylon-js/issues/571
//// Jump through hoops to have a jsMath
//// property w/o an extra function call
//// on each access
//native("js") JSMath jsMath = (() {
//    assert(exists result = getJsMath());
//    return result;
//})();
//
//native JSMath? getJsMath();
//
//native("jvm") JSMath? getJsMath()
//    =>  null;
//
//native("js") JSMath? getJsMath() {
//    dynamic { return Math; }
//}
