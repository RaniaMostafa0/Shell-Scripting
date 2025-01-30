#!/bin/bash
students_submissions="students"
grading_file="expected.txt"
for student_dir in "$students_submissions"/*; do
    if [ -d "$student_dir" ]; then
        name=$(basename "$student_dir")
        file=$(find "$student_dir" -type f -iname "task1.sh" | head -n 1)
        if [ ! -f "$file" ]; then
            echo "$name grade is 0/50 (No file submitted.)"
            echo
        else
            executed_file=$(bash "$file")
            mismatch=$(echo "$executed_file" | diff --ignore-all-space - "$grading_file" | grep -E '<|>' | wc -l)
            echo "$name has $mismatch mismached lines"
            grade=$((50 - mismatch * 5))
            if [ $grade -lt 0 ]; then
                grade=0
            fi
            echo "$name grade is $grade/50."
	    echo
        fi
    fi
done
