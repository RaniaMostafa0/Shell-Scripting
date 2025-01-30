1) Overview:
- This project focuses on shell scripting and provides scripts for analyzing file system usage and grading student assignments automatically.
2) Requirements:
To run the scripts, ensure you have the following installed:
  1) Bash
  2) du, sort, head, getopts
  3) wget, tar, diff
3) Grading Criteria:
  1) Checks if task1.sh exists; if missing, the student gets 0 points.
  2) Runs task1.sh using Bash.
  3) Compares output against expected.txt using diff (ignores whitespace).
  4)Deducts 5 points per unmatched line (max deduction: 50 points).
