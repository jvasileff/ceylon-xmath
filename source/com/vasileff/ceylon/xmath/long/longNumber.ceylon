import com.vasileff.ceylon.xmath.long.internal {
    LongImpl16, LongImpl64, realInts
}

shared Long longNumber(Integer number) {
    if (realInts) {
        return LongImpl64.OfInteger(number);
    } else {
        return LongImpl16.OfInteger(number);
    }
}
