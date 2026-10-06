#!/bin/bash

#scheduling a job
# at 16:56 -f ./myfile.sh -> this command will be execute at 16:56 time the executable file is myfile.sh.
# at 23:22 160626 ./myfile.sh -> this command is execute at specific time and specific date the file will be execute is myfile.sh.

logfile=logfile_result
echo "This logfile will be run at $(date)" > logfile
