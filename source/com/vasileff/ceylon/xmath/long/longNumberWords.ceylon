Long longNumberOfWords(Integer w3, Integer w2, Integer w1, Integer w0) {
    if (realInts) {
        return LongImpl64.OfWords(w3, w2, w1, w0);
    } else {
        return LongImpl16.OfWords(w3, w2, w1, w0);
    }
}
