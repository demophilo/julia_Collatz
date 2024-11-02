





function collatz_sequence_length(n::Int128)
    m::Int128 = n
    count = 0  # Die Variable count ist nicht explizit als BigInt definiert

    while m != 1
        m = ((m << 1) + m + 1) * (m & 1 != 0) + (m >> 1) * (m & 1 == 0)
        count = count + (m & 1 != 0)
    end

    return count
end

function max_sequence_length_in_given_collatz_length(binary_digits)
    longest_sequence_number1 = []
    longest_sequence_number2 = []
    longest_sequence = 0
    lower_limit::Int128 = 2 << (binary_digits - 2) + 1
    upper_limit::Int128 = 2 << (binary_digits - 1) - 1
    for i::Int128 in lower_limit:2:upper_limit
        sequence_length = collatz_sequence_length(i)
        if sequence_length > longest_sequence
            longest_sequence = sequence_length
            longest_sequence_number1 = [i, sequence_length]

            longest_sequence_number2 = [0,0];
        elseif sequence_length == longest_sequence
            longest_sequence_number2 = [i, sequence_length]
        end
    end
    return (longest_sequence_number1, longest_sequence_number2)
end


function decimal_to_binary(n::Int128)
    binary_array = []
    
    while n > 0
        pushfirst!(binary_array, n % 2)
        n = div(n, 2)
    end
    
    return binary_array
end


function get_line_array(z, x, y)
    leading_zeros = max(0, x - length(z) - y)
    new_array = vcat(fill(0, leading_zeros), z, fill(0, y))
    return new_array
end

function get_picture(num, height)
    picrure_array = []
    for line in 1:1:height
        


    end
    
end

zahl = 42
binär_ziffern = decimal_to_binary(zahl)
println("Die Binärzahl von $zahl ist $binär_ziffern")


ursprüngliches_array = decimal_to_binary(zahl)
neues_array = get_line_array(ursprüngliches_array, 20, 3)
println(neues_array)


# maxDigit = 40

# println(max_sequence_length_in_given_collatz_length(41))
#=
for i in 2:maxDigit
    println(i," ", max_sequence_length_in_given_collatz_length(i))
end
=#
