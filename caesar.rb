def caesar_cipher(input, factor)
    output = ""
    input.each_char do |c|
        if [" ", ".", ",", "-", "!", "?"].include? (c)
            output += c
        elsif /[[:upper:]]/.match(c)
            new_ord = (c.ord - 64 + factor) % 26 + 64
            c = new_ord.chr
            output += c
        else
            new_ord = (c.ord - 96 + factor) % 26 + 96
            c = new_ord.chr
            output += c
        end
    end
    puts output
end

caesar_cipher("What a string!", 5)