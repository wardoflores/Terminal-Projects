
import subprocess

def count_processes_using_device(device_path):
    try:
        # Run the fuser command to get the processes using the device
        cmd = f"fuser -v {device_path}"
        result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

        # Split the output into lines and count the unique processes
        lines = result.stdout.strip().split("\n")
        process_set = set()
        for line in lines:
            process_ids = line.split()[1:]
            process_set.update(process_ids)

        return len(process_set)
    except subprocess.CalledProcessError:
        return 0

def is_camera_active(device_path):
    # Check if the camera device is being used by any processes
    process_count = count_processes_using_device(device_path)

    # If there are three or more processes using the camera, consider it as active
    if process_count >= 2:
        return True

    return False

def detect_camera_activity(device_path):
    if is_camera_active(device_path):
        print("Camera is being used!")
        # Perform desired actions when camera is active
        command = "{ echo key Super+3 } | dotool"
        subprocess.call(command, shell=True)
    else:
        print("Camera is not being used.")

def get_processes_using_device(device_path):
    try:
        # Run the fuser command to get the processes using the device
        cmd = f"fuser -v {device_path}"
        result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

        # Return the output of the fuser command
        return result.stdout.strip()
    except subprocess.CalledProcessError:
        return ""

# Specify the path of the camera device (e.g., '/dev/video0')
camera_device_path = '/dev/video0'
detect_camera_activity(camera_device_path)

# Get the processes using the camera device
processes = get_processes_using_device(camera_device_path)
process_count = count_processes_using_device(camera_device_path)
#print("Processes using the camera device:")
#print(processes)
print(f"Number of processes using the camera device: {process_count}")
print("*Camera is being used if processes are more than 2 (The 1 process being pipewire)")
