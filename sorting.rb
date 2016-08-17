# You already have the text of the insert function that's the core of the algorithm, so grab that, then write an insertion_sort method that uses it to implement Insertion Sort.

# Try this on several different arrays, in luding some with duplicates and negative values, and see if it works.

=begin


def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;
end

=end




def insert( array, right_index = nil, value = nil)

	return array if array.length == 1

	sorted, *unsorted = array

	return if unsorted.length == 0

	right_index = sorted[ -1 ]

	value = unsorted[ 0 ]

	i = right_index

	while( i >= 0 && unsorted[ i ] > value )

		unsorted[ i + 1 ] = unsorted[ i ]

		i -= 1

	end

	array[ i + 1 ] = value

	insert( array )

end #/.InsertionSort


insert( [ 5,7,8,2,13,5,6,7,77 ] )





