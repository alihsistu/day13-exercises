def average(num1, num2)
    answer = num1.to_f + num2.to_f
    average = answer/2
    return average
end

def average_array(array)
    answer = (array.inject {|acc,el|acc+el}).to_f
    average = answer/array.length
    return average
end

def repeat(string, num)
    return string * num
end

def yell(string)
    return string.upcase + "!"
end

def alternating_case(sentence)
    array = sentence.split
    new_array = array - [" ", ",", "."]
    array2 = []
    new_array.each_with_index do |x,i|    
        if i%2==0
            array2.push(x.upcase)    
        else
            array2.push(x.downcase)
        end
    end
    sentence = array2.join(" ")
    return sentence
end

def hipsterfy(word)
    word.reverse.sub(/[aeiou]/, '').reverse
end

def vowel_counts(string)
    
    var = string.downcase.split("")

    freq = Hash.new(0)
    var.each do |var|
        freq[var] = freq[var] + 1 if var =~ /[aeiouAEIOU]/
    end
    return freq 
end

def caesar_cipher(string, n)
    caesar_string = ""

    string.scan (/./) do |i|
      if ("a".."z").include? (i.downcase) # Identify letters only.
        n.times {i = i.next}
      end
      caesar_string << i[-1]
    end
    return caesar_string
end