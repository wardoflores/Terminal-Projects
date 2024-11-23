import os
import re
import shutil
from difflib import SequenceMatcher

def similarity(a, b):
    return SequenceMatcher(None, a.lower(), b.lower()).ratio()

def find_best_match(title, directories):
    best_match = max(directories, key=lambda x: similarity(title, x))
    return best_match if similarity(title, best_match) > 0.7 else None

def organize_files(vault_path, excluded_directories=None):
    if excluded_directories is None:
        excluded_directories = []

    inbox_path = os.path.join(vault_path, "00 Inbox")
    if not os.path.exists(inbox_path):
        print(f"Inbox directory not found: {inbox_path}")
        return

    # Get all directories in the vault except the Inbox and excluded ones
    directories = [d for d in os.listdir(vault_path) 
                   if os.path.isdir(os.path.join(vault_path, d)) 
                   and d != "00 Inbox"
                   and d not in excluded_directories]

    for filename in os.listdir(inbox_path):
        if filename.endswith('.md'):
            file_path = os.path.join(inbox_path, filename)
            
            # Remove file extension and any leading numbers/symbols
            title = re.sub(r'^[\d\W_]+', '', os.path.splitext(filename)[0])
            
            best_match = find_best_match(title, directories)
            
            if best_match:
                target_dir = os.path.join(vault_path, best_match)
                target_path = os.path.join(target_dir, filename)
                
                # Ensure we don't overwrite existing files
                if os.path.exists(target_path):
                    base, ext = os.path.splitext(filename)
                    counter = 1
                    while os.path.exists(target_path):
                        new_filename = f"{base}_{counter}{ext}"
                        target_path = os.path.join(target_dir, new_filename)
                        counter += 1
                
                shutil.move(file_path, target_path)
                print(f"Moved '{filename}' to '{best_match}'")
            else:
                print(f"No suitable directory found for '{filename}'")

# Example usage
vault_path = '/home/wardoflores/repository/Obsidian-Personal-Vault'
excluded_dirs = ['.obsidian', '03 Records', '.jukit', '_FileOrganizer2000']  # Add directories you want to exclude
organize_files(vault_path, excluded_dirs)
