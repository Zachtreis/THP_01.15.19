def sum_of_3_and_5_multiple(n)
    unless n.is_a?(Integer) && n >= 0
        resultat = "Yo ! Je ne prends que les entiers naturels. TG"
    else 
        resultat = 0
        for i in 0...n do
            if is_multiple_of_3_or_5(i)
                resultat+=i
            end
        end
    end
    return resultat
end

def is_multiple_of_3_or_5(n)
    if n > 0 && (n % 3 == 0 || n % 5 == 0)
        return true
    else
        return false
    end
end

puts sum_of_3_and_5_multiple(10)
