
# declaring an array
fruits=("apple" "banana" "cherry" "date")

# accessing array elements
echo "First element: ${fruits[0]}"
echo "Second element: ${fruits[1]}"

# iterating over arrays
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done

# array length
length=${#fruits[@]}
echo "The array contains $length elements"

# array slicing
# ${array[@]:start:length}
sliced_fruits=("${fruits[@]:1:2}")      # start at index 1 and get 2 elements
echo "Sliced array (from index 1, length 2): ${sliced_fruits[@]}"

remaining_fruits=("${fruits[@]:2}")     # starting from the second element and getting the remaining ones
echo "Remaining fruits from index 2: ${remaining_fruits[@]}"
