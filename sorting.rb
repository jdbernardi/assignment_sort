require 'pry'

def insert( array, right_index = 0 )

    value = array[ right_index + 1 ]

    return array if array.length == 1 || value.nil?



    i = right_index

    while ( i >= 0 && array[ i ] > value )

        array[ i + 1 ] = array[ i ]

        i -= 1

    end



    array[ i + 1 ] = value

    right_index += 1

    insert( array, right_index )

end


def bubble_sort( array, swap_count = 1, index = 0 )

    return array if swap_count == 0 || array.length == 1
    return if array[ index + 1 ].nil?

    swap_count = 0
    while ( !array[ index + 1 ].nil? )

        left = array[ index ]
        right = array[ index + 1 ]

        if left > right

            array[ index ] = right
            array[ index + 1 ] = left

            swap_count += 1

        end

        index += 1

    end

    bubble_sort( array, swap_count )


end #/. bubble





insertion = insert( [ 10, 7, 8, 2, -3, 5, 10 ] )
bubble = bubble_sort( [ 10, 6, 23, 1, 0, 44, -4, 23 ])

puts "INSERTION SORT"
print insertion
puts ""
puts ""
puts "BUBBLE SORT"
print bubble








