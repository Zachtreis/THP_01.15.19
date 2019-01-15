def day_trader(array)
    count = 0
    max = 0
    jour_achat = 0
    jour_vente = 0
    for i in array do
        count += 1
        for j in array[count..-1] do
            if j - i > max
                max = j-i
                jour_achat = array.index(i)
                jour_vente = array.index(j)
            end
        end
    end
    return [jour_achat, jour_vente]
end

