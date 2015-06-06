import com.vasileff.ceylon.xmath.integer {
    smallest
}
import java.lang {
    LongArray
}
import ceylon.interop.java {
    createJavaLongArray
}

native Words wordsOfSize(Integer size);

native("jvm") Words wordsOfSize(Integer size)
    =>  WordsJVM.OfSize(size);

native("js") Words wordsOfSize(Integer size)
    =>  WordsJS.OfSize(size);

Integer getw(Words words, Integer index)
    =>  words.getw(index);

void setw(Words words, Integer index, Integer word)
    =>  words.setw(index, word);

Integer sizew(Words words)
    =>  words.size;

void copyWords(
        Words source,
        Words destination,
        Integer sourcePosition = 0,
        Integer destinationPosition = 0,
        Integer length = sizew(source) - sourcePosition) {
    source.copyTo(destination, sourcePosition,
          destinationPosition, length);
}

Words clonew(Words source)
    =>  source.clone();

native Words wordsOfOne(Integer word);

native("jvm") Words wordsOfOne(Integer word)
    =>  WordsJVM.OfOne(word);

native("js") Words wordsOfOne(Integer word)
    =>  WordsJS.OfOne(word);

native Words copyAppend(Integer wordsSize, Words words, Integer other);

native("jvm") Words copyAppend(Integer wordsSize, Words words, Integer other)
    =>  WordsJVM.CopyAppend(wordsSize, words, other);

native("js") Words copyAppend(Integer wordsSize, Words words, Integer other)
    =>  WordsJS.CopyAppend(wordsSize, words, other);

Boolean wordsEqual(Integer firstSize, Words first,
                   Integer secondSize, Words second) {
    if (firstSize != secondSize) {
        return false;
    } else if (first === second) {
        return true;
    } else {
        for (i in 0:firstSize) {
            if (getw(first, i) != getw(second, i)) {
                return false;
            }
        }
        return true;
    }
}

interface Words satisfies Identifiable {
    shared formal
    void copyTo(
            "The container into which to copy the elements."
            Words destination,
            "The index of the first element in this array to
             copy."
            Integer sourcePosition = 0,
            "The index in the given container into which to
             copy the first element."
            Integer destinationPosition = 0,
            "The number of elements to copy."
            Integer length =
                    smallest(size - sourcePosition,
                        destination.size - destinationPosition));

    shared formal
    Integer size;

    shared formal
    void setw(Integer index, Integer word);

    shared formal
    Integer getw(Integer index);

    shared formal
    Words clone();
}

native("jvm") class WordsJVM satisfies Words {
    LongArray storage;

    new Of(LongArray storage) {
        this.storage = storage;
    }

    shared
    new OfSize(Integer size) {
        storage = LongArray(size, 0);

    }

    shared
    new OfOne(Integer word) {
        storage = createJavaLongArray { word };
    }

    shared
    new CopyAppend(
            Integer wordsSize, Words words, Integer other)
            extends OfSize(wordsSize + 1) {
        assert (is WordsJVM words);
        words.storage.copyTo(storage, 0, 0, wordsSize);
        storage.set(wordsSize, other);
    }

    shared actual
    void copyTo(
            Words destination,
            Integer sourcePosition,
            Integer destinationPosition,
            Integer length) {
        assert (is WordsJVM destination);
        storage.copyTo(
                destination.storage, sourcePosition,
                destinationPosition, length);
    }

    shared actual
    Integer size => storage.size;

    shared actual
    void setw(Integer index, Integer word)
        =>  storage.set(index, word);

    shared actual
    Integer getw(Integer index)
        =>  storage.get(index);

    shared actual
    Words clone()
        =>  Of(storage.clone());
}

native("js") class WordsJS satisfies Words {
    Array<Integer> storage;

    new Of(Array<Integer> storage) {
        this.storage = storage;
    }

    shared
    new OfSize(Integer size) {
        storage = arrayOfSize(size, 0);
    }

    shared
    new OfOne(Integer word) {
        storage = Array<Integer> { word };
    }

    shared
    new CopyAppend(
            Integer wordsSize, Words words, Integer other)
            extends OfSize(wordsSize + 1) {
        assert (is WordsJS words);
        words.storage.copyTo(storage, 0, 0, wordsSize);
        storage.set(wordsSize, other);
    }

    shared actual
    void copyTo(
            Words destination,
            Integer sourcePosition,
            Integer destinationPosition,
            Integer length) {
        assert (is WordsJS destination);
        storage.copyTo(
                destination.storage, sourcePosition,
                destinationPosition, length);
    }

    shared actual
    Integer size => storage.size;

    shared actual
    void setw(Integer index, Integer word)
        =>  storage.set(index, word);

    shared actual
    Integer getw(Integer index) {
        assert (exists result =
                storage.getFromFirst(index));
        return result;
    }

    shared actual
    Words clone()
        =>  Of(storage.clone());
}
