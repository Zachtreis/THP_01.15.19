def caesar_cipher(str, n)
    for i in (0...str.length)
        if str[i].ord.between?(65, 90) 
            str[i] = (((str[i].ord-64+n)%26)+64).chr      
        elsif str[i].ord.between?(97, 122)
            str[i] = (((str[i].ord-97+n)%26)+97).chr
        end
    end
    return str
end