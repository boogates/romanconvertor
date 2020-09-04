def fromRoman(romanNumber)
    int result = 0
    romanArray = romanNumber.split(//)

    romanArray.each do |letter|
        if letter == "I"
            result + 1
        end
        if letter == "V"
            result + 5
        end
        if letter == "X"
            result + 10
        end
        if letter == "L"
            result + 50
        end
        if letter == "C"
            result + 100
        end
        if letter == "D"
            result + 500
        end
        if letter == "M"
            result + 1000
        end
    end
    print result
end

def toRoman(arabicNumber)
    String result = ""
    if arabicNumber <= 0
        raise RangeError
    end
    if arabicNumber >= 4000
        raise RangeError
    end
    if arabicNumber >= 1000
        result + "M"
        toRoman(arabicNumber - 1000)
    end
    if arabicNumber >= 900
        result + "CM"
        toRoman(arabicNumber - 900)
    end
    if arabicNumber >= 500
        result + "D"
        toRoman(arabicNumber - 500)
    end
    if arabicNumber >= 400
        result + "CD"
        toRoman(arabicNumber - 400)
    end
    if arabicNumber >= 100
        result + "C"
        toRoman(arabicNumber - 100)
    end
    if arabicNumber >= 90
        result + "XC"
        toRoman(arabicNumber - 90)
    end
    if arabicNumber >= 50
        result + "L"
        toRoman(arabicNumber - 50)
    end
    if arabicNumber >= 40
        result + "XL"
        toRoman(arabicNumber - 40)
    end
    if arabicNumber >= 10
        result + "X"
        toRoman(arabicNumber - 10)
    end
    if arabicNumber >= 9
        result + "IX"
        toRoman(arabicNumber - 9)
    end
    if arabicNumber >= 5
        result + "V"
        toRoman(arabicNumber - 5)
    end
    if arabicNumber >= 4
        result + "IV"
        toRoman(arabicNumber - 4)
    end
    if arabicNumber >= 1
        result + "I"
        toRoman(arabicNumber - 1)
    end
    print result
end