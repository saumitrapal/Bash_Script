# Bash_Script_Note

#00: Introduction

Goal: Understand what shell scripting is and when to automate tasks via Bash.

Key Insight: Bash scripts allow you to chain terminal commands into predictable, repeatable automated workflows.

#01: Hello World & Shebang

The Shebang (#!/bin/bash): Tells the kernel which interpreter must execute the script.

Execution Workflow:

chmod +x my_script.sh    # Grant execute permission
./my_script.sh           # Execute script from current directory


#02: Variables & Subshells

Declaring: No spaces around the assignment operator: name="Linux".

Referencing: Access with a leading dollar sign: $name or ${name}.

Command Substitution: Capture command output into a variable via $(command):

current_date=$(date +%F)


#03: Basic Math

Bash handles integer math natively via arithmetic expansion:

result=$(( 10 + 5 ))
echo "$result"


Note: Floating-point arithmetic requires an external utility like bc.

#04: If Statements & Conditions

Syntax: Always leave whitespace inside the test brackets [ ... ].

Common Comparison Flags:

Numbers: -eq (equal), -ne (not equal), -gt (greater than), -lt (less than).

Files: -f (exists & is a file), -d (exists & is a directory).

#05: Exit Codes

Every command returns an exit status from 0 to 255:

0 = Success

Non-zero (1–255) = Error or warning

Check the exit code of the last run command with $?.

Terminate a script intentionally with custom status: exit 1.

#06: While Loops

Executes repeatedly as long as the condition remains true:

counter=1
while [ $counter -le 5 ]; do
    echo "Count: $counter"
    ((counter++))
done


#07: Project-Universal Update Script

Hands-on project combining conditions and exit codes to auto-detect the operating system (/etc/os-release or /etc/debian_version / /etc/redhat-release) and invoke the appropriate package manager (apt, dnf, or pacman).

#08: For Loops

Best for processing known lists or sets of items:

for file in *.log; do
    tar -czf "${file}.tar.gz" "$file"
done


#09: Where to Store Scripts & $PATH

Avoid running scripts with ./ everywhere by saving them in standard directories in your $PATH:

Per-user scripts: ~/bin or ~/.local/bin

System-wide scripts: /usr/local/bin

#10:Data Streams & Redirection

Standard Streams:

0: Standard Input (stdin)

1: Standard Output (stdout)

2: Standard Error (stderr)

Redirection Syntax:

Redirect stdout: command > output.log

Append stdout: command >> output.log

Redirect errors: command 2> error.log

Suppress output: command > /dev/null 2>&1

#11: Functions

Encapsulate repetitive logic to keep scripts DRY (Don't Repeat Yourself):

check_status() {
    echo "Checking status of: $1"
}
check_status "nginx"


#12: Case Statements

Provides cleaner, more readable syntax when checking a variable against multiple static patterns:

case "$action" in
    start) systemctl start app ;;
    stop)  systemctl stop app ;;
    *)     echo "Usage: $0 {start|stop}" ;;
esac


#13: Scheduling Jobs - cron

Manage automated recurring schedules with crontab -e.

Cron syntax breakdown:

┌───────────── minute (0 - 59)
│ ┌─────────── hour (0 - 23)
│ │ ┌───────── day of month (1 - 31)
│ │ │ ┌─────── month (1 - 12)
│ │ │ │ ┌───── day of week (0 - 6, Sunday=0)
* * * * * /path/to/script.sh


#14: Scheduling Jobs - at & systemd Timers

at command: Ideal for scheduling a single one-off future job (e.g., at 02:00 tomorrow).

Overview of modern Linux service automation with systemd timers.

#15: Positional Arguments

Inspect and handle dynamic arguments supplied from the command line:

$0: Name of the script

$1, $2, ...: First and second parameters

$#: Number of arguments passed

$@: All arguments as a list

#16: Project-Automated Backup Script

Capstone automation script utilizing rsync or tar:

Validates argument count ($#).

Ensures source and destination directories exist (-d).

Generates date-stamped backup archives (date +%Y-%m-%d).

#17: Course Wrap-up & Next Steps

Summary of scripting conventions.

Recommended best practices: linting with shellcheck, adding descriptive comments, and handling error paths cleanly.
