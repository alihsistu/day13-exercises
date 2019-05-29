# # 1
# def partition(array, num)

# end

# # 2
# def merge(hash1, hash2)

# end

# # 3
# def censor(sentence, array)
# end

# 4
def power_of_two?(num)
    
    if num.to_s(2).count('1') != 1
        return false
    elsif (Integer.sqrt(num)).is_a? Integer
        return true
    end
end

# 5
def palindrome_substrings(string)

end