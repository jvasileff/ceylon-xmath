import com.vasileff.ceylon.xmath.long.internal {
    LongImpl16, LongImpl64, realInts
}

shared
Long longNumber(Integer number)
    =>  if (realInts)
        then LongImpl64.OfInteger(number)
        else LongImpl16.OfInteger(number);