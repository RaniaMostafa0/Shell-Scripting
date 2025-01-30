1) Overview:
- This project focuses on shell scripting and provides scripts for analyzing file system usage and grading student assignments automatically.
2) Requirements:
To run the scripts, ensure you have the following installed:
- Bash
- du, sort, head, getopts
- wget, tar, diff
3) Grading Criteria:
- Checks if task1.sh exists; if missing, the student gets 0 points.
- Runs task1.sh using Bash.
- Compares output against expected.txt using diff (ignores whitespace).
- Deducts 5 points per unmatched line (max deduction: 50 points).
