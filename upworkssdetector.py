
import psutil

def is_command_executed(command_pattern):
    # Iterate over all running processes
    for proc in psutil.process_iter(['cmdline']):
        try:
            # Retrieve the command line of the process
            cmdline = proc.info['cmdline']

            # Convert the cmdline list to a string
            cmdline_str = ' '.join(cmdline)

            # Check if the command pattern is present in the cmdline string
            if command_pattern in cmdline_str:
                return True
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            pass

    return False

# Specify the command pattern to detect
command_pattern_to_detect = "/opt/Upwork/upwork --type=utility --utility-subtype=video_capture.mojom.VideoCaptureService"

# Check if any command matches the pattern
if is_command_executed(command_pattern_to_detect):
    print("A matching command is executed.")
else:
    print("No matching command is executed.")
