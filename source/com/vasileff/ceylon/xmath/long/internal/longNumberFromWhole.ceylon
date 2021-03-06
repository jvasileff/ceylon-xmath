import com.vasileff.ceylon.xmath.long {
    Long
}
import com.vasileff.ceylon.xmath.long.internal {
    LongImpl16
}
import com.vasileff.ceylon.xmath.whole {
    Whole
}

shared
Long longNumberFromWhole(Whole whole)
    =>  if (realInts)
        then LongImpl64.ofInteger(whole.integer)
        else LongImpl16.ofWhole(whole);
