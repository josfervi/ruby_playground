MORSE_OF= {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..'
}

def morse_encode(str)
  
  morse_words= []
  
  str.split.each do |word|
    morse_words << morse_encode_word( word )
  end
  
  morse_words.join("  ")
end

def morse_encode_word word
  
  morse_chars= []
  
  word.chars.each do |char|
    morse_chars << MORSE_OF[char]
  end
  
  morse_chars.join(" ")
end