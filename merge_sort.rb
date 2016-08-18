def merge_sort( array )

	return array if array.count <= 1

    middle = ( array.count / 2 ).floor

    left_arr = merge_sort( array[ 0..middle - 1 ] )
    right_arr = merge_sort( array[ ( middle )..( array.count - 1 ) ] )

    merge( left_arr, right_arr )

end




def merge( left, right )


  if left.empty?

  	return right

  elsif right.empty?

  	return left

  elsif left[ 0 ] < right[ 0 ]

    [ left[ 0 ] ] + merge( left[ 1..left.count ], right )

  else

    [ right[ 0 ] ] + merge( left, right[ 1..right.count ] )

  end


end


arr = merge_sort( [ 4, 7, 1, -34, 10, 99, 81, 14, 2, 7 ] )
print arr

# => [-34, 1, 2, 4, 7, 7, 10, 14, 81, 99]
