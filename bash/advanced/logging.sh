#!/bin/bash

# Define log file
LOG_FILE="script.log"

# Function to log messages with a timestamp
log_message() {
    local LOG_LEVEL=$1
    shift
    local MESSAGE="$@"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$LOG_LEVEL] : $MESSAGE" | tee -a "$LOG_FILE"
}

# Example of using the log function for different levels of logging
log_message "INFO" "Script started."
log_message "INFO" "Performing some tasks..."

# Redirecting stdout and stderr to log file
exec > >(tee -a "$LOG_FILE") 2>&1

# Simulating a task and logging the result
log_message "INFO" "Creating a sample directory..."
mkdir -p /tmp/sample_dir
if [ $? -eq 0 ]; then
    log_message "INFO" "Directory created successfully."
else
    log_message "ERROR" "Failed to create directory."
fi

# Simulating a failure and logging the error
log_message "INFO" "Attempting to remove a non-existing file..."
rm /tmp/non_existing_file
if [ $? -ne 0 ]; then
    log_message "ERROR" "Error occurred while trying to remove non-existing file."
fi

# Adding more informational log entries
log_message "INFO" "Performing another task..."
# Simulate a task here
sleep 2

# Ending the script
log_message "INFO" "Script completed."

# 2024-09-21 12:30:01 [INFO] : Script started.
# 2024-09-21 12:30:01 [INFO] : Performing some tasks...
# 2024-09-21 12:30:01 [INFO] : Creating a sample directory...
# 2024-09-21 12:30:01 [INFO] : Directory created successfully.
# 2024-09-21 12:30:01 [INFO] : Attempting to remove a non-existing file...
# 2024-09-21 12:30:01 [ERROR] : Error occurred while trying to remove non-existing file.
# 2024-09-21 12:30:03 [INFO] : Performing another task...
# 2024-09-21 12:30:03 [INFO] : Script completed.