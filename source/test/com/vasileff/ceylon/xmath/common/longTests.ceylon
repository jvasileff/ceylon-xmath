import ceylon.test {
    test,
    assertEquals,
    assertThatException
}

import com.vasileff.ceylon.xmath.long {
    longNumber,
    one,
    two,
    ten,
    zero
}

shared test
void longTests() {
    assertEquals(zero - one, longNumber(-1));
    assertEquals(zero - two, longNumber(-2));
    assertEquals(zero - ten, longNumber(-10));

    assertEquals(one - zero, longNumber(1));
    assertEquals(two - zero, longNumber(2));
    assertEquals(ten - zero, longNumber(10));
}

shared test
void preciseIntegerPowersOfTwo() {
    // even power's of two
    for (p in 0..52) {
        assertEquals(two.powerOfInteger(p).preciseInteger, 2^p);
    }

    // even power's of two - 1
    for (p in 0..53) {
        assertEquals(two.powerOfInteger(p).plusInteger(-1).preciseInteger, 2^p - 1);
    }

    // even power's of two + 1
    for (p in 0..52) {
        assertEquals(two.powerOfInteger(p).plusInteger(1).preciseInteger, 2^p + 1);
    }
}

shared test
void longPower() {
    // even power's of two
    assertEquals(two.powerOfInteger(0).string, "1");
    assertEquals(two.powerOfInteger(1).string, "2");
    assertEquals(two.powerOfInteger(2).string, "4");
    assertEquals(two.powerOfInteger(3).string, "8");
    assertEquals(two.powerOfInteger(4).string, "16");
    assertEquals(two.powerOfInteger(5).string, "32");
    assertEquals(two.powerOfInteger(6).string, "64");
    assertEquals(two.powerOfInteger(7).string, "128");
    assertEquals(two.powerOfInteger(8).string, "256");
    assertEquals(two.powerOfInteger(9).string, "512");
    assertEquals(two.powerOfInteger(10).string, "1024");
    assertEquals(two.powerOfInteger(11).string, "2048");
    assertEquals(two.powerOfInteger(12).string, "4096");
    assertEquals(two.powerOfInteger(13).string, "8192");
    assertEquals(two.powerOfInteger(14).string, "16384");
    assertEquals(two.powerOfInteger(15).string, "32768");
    assertEquals(two.powerOfInteger(16).string, "65536");
    assertEquals(two.powerOfInteger(17).string, "131072");
    assertEquals(two.powerOfInteger(18).string, "262144");
    assertEquals(two.powerOfInteger(19).string, "524288");
    assertEquals(two.powerOfInteger(20).string, "1048576");
    assertEquals(two.powerOfInteger(21).string, "2097152");
    assertEquals(two.powerOfInteger(22).string, "4194304");
    assertEquals(two.powerOfInteger(23).string, "8388608");
    assertEquals(two.powerOfInteger(24).string, "16777216");
    assertEquals(two.powerOfInteger(25).string, "33554432");
    assertEquals(two.powerOfInteger(26).string, "67108864");
    assertEquals(two.powerOfInteger(27).string, "134217728");
    assertEquals(two.powerOfInteger(28).string, "268435456");
    assertEquals(two.powerOfInteger(29).string, "536870912");
    assertEquals(two.powerOfInteger(30).string, "1073741824");
    assertEquals(two.powerOfInteger(31).string, "2147483648");
    assertEquals(two.powerOfInteger(32).string, "4294967296");
    assertEquals(two.powerOfInteger(33).string, "8589934592");
    assertEquals(two.powerOfInteger(34).string, "17179869184");
    assertEquals(two.powerOfInteger(35).string, "34359738368");
    assertEquals(two.powerOfInteger(36).string, "68719476736");
    assertEquals(two.powerOfInteger(37).string, "137438953472");
    assertEquals(two.powerOfInteger(38).string, "274877906944");
    assertEquals(two.powerOfInteger(39).string, "549755813888");
    assertEquals(two.powerOfInteger(40).string, "1099511627776");
    assertEquals(two.powerOfInteger(41).string, "2199023255552");
    assertEquals(two.powerOfInteger(42).string, "4398046511104");
    assertEquals(two.powerOfInteger(43).string, "8796093022208");
    assertEquals(two.powerOfInteger(44).string, "17592186044416");
    assertEquals(two.powerOfInteger(45).string, "35184372088832");
    assertEquals(two.powerOfInteger(46).string, "70368744177664");
    assertEquals(two.powerOfInteger(47).string, "140737488355328");
    assertEquals(two.powerOfInteger(48).string, "281474976710656");
    assertEquals(two.powerOfInteger(49).string, "562949953421312");
    assertEquals(two.powerOfInteger(50).string, "1125899906842624");
    assertEquals(two.powerOfInteger(51).string, "2251799813685248");
    assertEquals(two.powerOfInteger(52).string, "4503599627370496");
    assertEquals(two.powerOfInteger(53).string, "9007199254740992");
    assertEquals(two.powerOfInteger(54).string, "18014398509481984");
    assertEquals(two.powerOfInteger(55).string, "36028797018963968");
    assertEquals(two.powerOfInteger(56).string, "72057594037927936");
    assertEquals(two.powerOfInteger(57).string, "144115188075855872");
    assertEquals(two.powerOfInteger(58).string, "288230376151711744");
    assertEquals(two.powerOfInteger(59).string, "576460752303423488");
    assertEquals(two.powerOfInteger(60).string, "1152921504606846976");
    assertEquals(two.powerOfInteger(61).string, "2305843009213693952");
    assertEquals(two.powerOfInteger(62).string, "4611686018427387904");
    assertEquals(two.powerOfInteger(63).string, "-9223372036854775808");

    // even power's of two - 1
    assertEquals((two.powerOfInteger(0) - one).string, "0");
    assertEquals((two.powerOfInteger(1) - one).string, "1");
    assertEquals((two.powerOfInteger(2) - one).string, "3");
    assertEquals((two.powerOfInteger(3) - one).string, "7");
    assertEquals((two.powerOfInteger(4) - one).string, "15");
    assertEquals((two.powerOfInteger(5) - one).string, "31");
    assertEquals((two.powerOfInteger(6) - one).string, "63");
    assertEquals((two.powerOfInteger(7) - one).string, "127");
    assertEquals((two.powerOfInteger(8) - one).string, "255");
    assertEquals((two.powerOfInteger(9) - one).string, "511");
    assertEquals((two.powerOfInteger(10) - one).string, "1023");
    assertEquals((two.powerOfInteger(11) - one).string, "2047");
    assertEquals((two.powerOfInteger(12) - one).string, "4095");
    assertEquals((two.powerOfInteger(13) - one).string, "8191");
    assertEquals((two.powerOfInteger(14) - one).string, "16383");
    assertEquals((two.powerOfInteger(15) - one).string, "32767");
    assertEquals((two.powerOfInteger(16) - one).string, "65535");
    assertEquals((two.powerOfInteger(17) - one).string, "131071");
    assertEquals((two.powerOfInteger(18) - one).string, "262143");
    assertEquals((two.powerOfInteger(19) - one).string, "524287");
    assertEquals((two.powerOfInteger(20) - one).string, "1048575");
    assertEquals((two.powerOfInteger(21) - one).string, "2097151");
    assertEquals((two.powerOfInteger(22) - one).string, "4194303");
    assertEquals((two.powerOfInteger(23) - one).string, "8388607");
    assertEquals((two.powerOfInteger(24) - one).string, "16777215");
    assertEquals((two.powerOfInteger(25) - one).string, "33554431");
    assertEquals((two.powerOfInteger(26) - one).string, "67108863");
    assertEquals((two.powerOfInteger(27) - one).string, "134217727");
    assertEquals((two.powerOfInteger(28) - one).string, "268435455");
    assertEquals((two.powerOfInteger(29) - one).string, "536870911");
    assertEquals((two.powerOfInteger(30) - one).string, "1073741823");
    assertEquals((two.powerOfInteger(31) - one).string, "2147483647");
    assertEquals((two.powerOfInteger(32) - one).string, "4294967295");
    assertEquals((two.powerOfInteger(33) - one).string, "8589934591");
    assertEquals((two.powerOfInteger(34) - one).string, "17179869183");
    assertEquals((two.powerOfInteger(35) - one).string, "34359738367");
    assertEquals((two.powerOfInteger(36) - one).string, "68719476735");
    assertEquals((two.powerOfInteger(37) - one).string, "137438953471");
    assertEquals((two.powerOfInteger(38) - one).string, "274877906943");
    assertEquals((two.powerOfInteger(39) - one).string, "549755813887");
    assertEquals((two.powerOfInteger(40) - one).string, "1099511627775");
    assertEquals((two.powerOfInteger(41) - one).string, "2199023255551");
    assertEquals((two.powerOfInteger(42) - one).string, "4398046511103");
    assertEquals((two.powerOfInteger(43) - one).string, "8796093022207");
    assertEquals((two.powerOfInteger(44) - one).string, "17592186044415");
    assertEquals((two.powerOfInteger(45) - one).string, "35184372088831");
    assertEquals((two.powerOfInteger(46) - one).string, "70368744177663");
    assertEquals((two.powerOfInteger(47) - one).string, "140737488355327");
    assertEquals((two.powerOfInteger(48) - one).string, "281474976710655");
    assertEquals((two.powerOfInteger(49) - one).string, "562949953421311");
    assertEquals((two.powerOfInteger(50) - one).string, "1125899906842623");
    assertEquals((two.powerOfInteger(51) - one).string, "2251799813685247");
    assertEquals((two.powerOfInteger(52) - one).string, "4503599627370495");
    assertEquals((two.powerOfInteger(53) - one).string, "9007199254740991");
    assertEquals((two.powerOfInteger(54) - one).string, "18014398509481983");
    assertEquals((two.powerOfInteger(55) - one).string, "36028797018963967");
    assertEquals((two.powerOfInteger(56) - one).string, "72057594037927935");
    assertEquals((two.powerOfInteger(57) - one).string, "144115188075855871");
    assertEquals((two.powerOfInteger(58) - one).string, "288230376151711743");
    assertEquals((two.powerOfInteger(59) - one).string, "576460752303423487");
    assertEquals((two.powerOfInteger(60) - one).string, "1152921504606846975");
    assertEquals((two.powerOfInteger(61) - one).string, "2305843009213693951");
    assertEquals((two.powerOfInteger(62) - one).string, "4611686018427387903");
    assertEquals((two.powerOfInteger(63) - one).string, "9223372036854775807");

    // even power's of two + 1
    assertEquals((two.powerOfInteger(0) + one).string, "2");
    assertEquals((two.powerOfInteger(1) + one).string, "3");
    assertEquals((two.powerOfInteger(2) + one).string, "5");
    assertEquals((two.powerOfInteger(3) + one).string, "9");
    assertEquals((two.powerOfInteger(4) + one).string, "17");
    assertEquals((two.powerOfInteger(5) + one).string, "33");
    assertEquals((two.powerOfInteger(6) + one).string, "65");
    assertEquals((two.powerOfInteger(7) + one).string, "129");
    assertEquals((two.powerOfInteger(8) + one).string, "257");
    assertEquals((two.powerOfInteger(9) + one).string, "513");
    assertEquals((two.powerOfInteger(10) + one).string, "1025");
    assertEquals((two.powerOfInteger(11) + one).string, "2049");
    assertEquals((two.powerOfInteger(12) + one).string, "4097");
    assertEquals((two.powerOfInteger(13) + one).string, "8193");
    assertEquals((two.powerOfInteger(14) + one).string, "16385");
    assertEquals((two.powerOfInteger(15) + one).string, "32769");
    assertEquals((two.powerOfInteger(16) + one).string, "65537");
    assertEquals((two.powerOfInteger(17) + one).string, "131073");
    assertEquals((two.powerOfInteger(18) + one).string, "262145");
    assertEquals((two.powerOfInteger(19) + one).string, "524289");
    assertEquals((two.powerOfInteger(20) + one).string, "1048577");
    assertEquals((two.powerOfInteger(21) + one).string, "2097153");
    assertEquals((two.powerOfInteger(22) + one).string, "4194305");
    assertEquals((two.powerOfInteger(23) + one).string, "8388609");
    assertEquals((two.powerOfInteger(24) + one).string, "16777217");
    assertEquals((two.powerOfInteger(25) + one).string, "33554433");
    assertEquals((two.powerOfInteger(26) + one).string, "67108865");
    assertEquals((two.powerOfInteger(27) + one).string, "134217729");
    assertEquals((two.powerOfInteger(28) + one).string, "268435457");
    assertEquals((two.powerOfInteger(29) + one).string, "536870913");
    assertEquals((two.powerOfInteger(30) + one).string, "1073741825");
    assertEquals((two.powerOfInteger(31) + one).string, "2147483649");
    assertEquals((two.powerOfInteger(32) + one).string, "4294967297");
    assertEquals((two.powerOfInteger(33) + one).string, "8589934593");
    assertEquals((two.powerOfInteger(34) + one).string, "17179869185");
    assertEquals((two.powerOfInteger(35) + one).string, "34359738369");
    assertEquals((two.powerOfInteger(36) + one).string, "68719476737");
    assertEquals((two.powerOfInteger(37) + one).string, "137438953473");
    assertEquals((two.powerOfInteger(38) + one).string, "274877906945");
    assertEquals((two.powerOfInteger(39) + one).string, "549755813889");
    assertEquals((two.powerOfInteger(40) + one).string, "1099511627777");
    assertEquals((two.powerOfInteger(41) + one).string, "2199023255553");
    assertEquals((two.powerOfInteger(42) + one).string, "4398046511105");
    assertEquals((two.powerOfInteger(43) + one).string, "8796093022209");
    assertEquals((two.powerOfInteger(44) + one).string, "17592186044417");
    assertEquals((two.powerOfInteger(45) + one).string, "35184372088833");
    assertEquals((two.powerOfInteger(46) + one).string, "70368744177665");
    assertEquals((two.powerOfInteger(47) + one).string, "140737488355329");
    assertEquals((two.powerOfInteger(48) + one).string, "281474976710657");
    assertEquals((two.powerOfInteger(49) + one).string, "562949953421313");
    assertEquals((two.powerOfInteger(50) + one).string, "1125899906842625");
    assertEquals((two.powerOfInteger(51) + one).string, "2251799813685249");
    assertEquals((two.powerOfInteger(52) + one).string, "4503599627370497");
    assertEquals((two.powerOfInteger(53) + one).string, "9007199254740993");
    assertEquals((two.powerOfInteger(54) + one).string, "18014398509481985");
    assertEquals((two.powerOfInteger(55) + one).string, "36028797018963969");
    assertEquals((two.powerOfInteger(56) + one).string, "72057594037927937");
    assertEquals((two.powerOfInteger(57) + one).string, "144115188075855873");
    assertEquals((two.powerOfInteger(58) + one).string, "288230376151711745");
    assertEquals((two.powerOfInteger(59) + one).string, "576460752303423489");
    assertEquals((two.powerOfInteger(60) + one).string, "1152921504606846977");
    assertEquals((two.powerOfInteger(61) + one).string, "2305843009213693953");
    assertEquals((two.powerOfInteger(62) + one).string, "4611686018427387905");
    assertEquals((two.powerOfInteger(63) + one).string, "-9223372036854775807");
}

shared test
void longToFloat() {
    assertEquals(longNumber(2).float, 2.0);
    assertEquals(longNumber(-2).float, -2.0);

    assertEquals(longNumber(9007199254740991).float, 9007199254740991.0);
    assertEquals(longNumber(-9007199254740991).float, -9007199254740991.0);

    assertThatException(() => longNumber(9007199254740991).successor.float);
    assertThatException(() => longNumber(-9007199254740991).predecessor.float);
}

shared test
void longToCharacter() {
    assertEquals(longNumber(97).character, 'a');

    assertThatException(() => longNumber(-1).character);
    assertThatException(() => longNumber(#110000).character);
}

shared test
void longToByte() {
    assertEquals(longNumber(-256).byte, 0.byte);
    assertEquals(longNumber(-255).byte, 1.byte);
    assertEquals(longNumber(-1).byte, 255.byte);
    assertEquals(longNumber(0).byte, 0.byte);
    assertEquals(longNumber(1).byte, 1.byte);
    assertEquals(longNumber(255).byte, 255.byte);
    assertEquals(longNumber(256).byte, 0.byte);
}