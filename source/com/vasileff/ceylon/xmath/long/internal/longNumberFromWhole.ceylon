import com.vasileff.ceylon.xmath.long {
    Long
}
import com.vasileff.ceylon.xmath.long.internal {
    LongImpl16
}
import com.vasileff.ceylon.xmath.whole {
    Whole
}

shared Long longNumberFromWhole(Whole number) {
    if (realInts) {
        return LongImpl64.OfInteger(number.integer);
    } else {
        return LongImpl16.OfWhole(number);
    }
}
