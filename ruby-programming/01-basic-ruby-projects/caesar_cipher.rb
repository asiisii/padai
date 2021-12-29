# If the ASCII value lies in the range of [65, 90], then it is an uppercase letter.
# If the ASCII value lies in the range of [97, 122], then it is a lowercase letter.
# If the ASCII value lies in the range of [48, 57], then it is a number.
# If the ASCII value lies in the ranges [32, 47], [58, 64], [91, 96] or [123, 126], then it is a special character

def caesar_cipher(str, shift_factor = 0)
  ciphered = ''
  str.split("").each do |char|
    if (char.ord.between?(65, 90) || char.ord.between?(97,122))
      shifted = char.ord + shift_factor
      if (shifted > 122 || (char.ord < 91 && shifted > 91))
        shifted -= 26
      end
      ciphered += shifted.chr
    else
      ciphered += char
    end
  end
  puts ciphered
  ciphered
end

caesar_cipher("What a string!", 5)
#"Bmfy f xywnsl!"