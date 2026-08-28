FILE="../data/students.csv"
OUTPUT="output.txt"
{
# 1. Display the contents of the file.
echo "Displaying the contents of the file:"
cat $FILE

# 2. Count the total number of student records.
echo -e "\nCounting the total number of student records:"
tail -n +2 $FILE | wc -l

# 3. Sort the file such that students sharing the hostel room are contiguous
echo -e "\nSorting the file such that students sharing the hostel room are contiguous"
tail -n +2 $FILE | sort -t ',' -k4

# 4. Display the count of students from different departments
echo ""
echo "Displaying the count of students from different departments"
tail -n +2 $FILE | awk -F ',' '{print $2}' | sort | uniq -c
} > $OUTPUT