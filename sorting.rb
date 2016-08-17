
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




array = insert( [ 10, 7, 8, 2, -3, 5, 10 ] )

print array
puts ""







