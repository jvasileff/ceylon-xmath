shared Long longNumber(Integer number) {
    if (realInts) {
        return LongImpl64.OfInteger(number);
    } else {
        return LongImpl16.OfInteger(number);
    }
}
