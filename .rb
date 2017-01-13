class Fixnum
  
  WORD_FOR_0= "zero"
  
  WORD_FOR_ONES_PLACE= {
    #0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"
  }
  
  WORD_FOR_TEENS= {
    #10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }
  
  WORD_FOR_TENS_PLACE= {
    10 => "ten",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
  }
  
  WORD_FOR_100= "hundred"
  
  WORD_FOR_SCALE= {
    1 => "",
    1_000 => "thousand",
    1_000_000 => "million",
    1_000_000_000 => "billion",
    1_000_000_000_000 => "trillion"
  }
  
  def in_words
  end
  end