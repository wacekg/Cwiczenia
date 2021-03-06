def decode_morse (morse)
  text = ""
  decode = { ".-" => "A",
             "-..." => "B",
             "-.-." => "C",
             "-.." => "D",
             "." => "E",
             "..-." => "F",
             "--." => "G",
             "...." => "H",
             ".." => "I",
             ".---" => "J",
             "-.-" => "K",
             ".-.." => "L",
             "--" => "M",
             "-." => "N",
             "---" => "O",
             ".--." => "P",
             "--.-" => "Q",
             ".-." => "R",
             "..." => "S",
             "-" => "T",
             "..-" => "U",
             "...-" => "V",
             ".--" => "W",
             "-..-" => "X",
             "-.--" => "Y",
             "--.." => "Z" }

  morse = morse.split(' ')
    morse.each do |elem|
      text << decode[elem]
    end
  puts text
end
decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..')
