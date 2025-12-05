#!/bin/bash

# List Of Directories To Be Created
DIRS=("logs" "configs" "scripts")

# Creating directories with checks
for i in "${DIRS[@]}"; do
    if [ -d "$i" ]; then
        echo "Directory already exists: $i"
    else
        mkdir "$i"
        echo "Directory created: $i"
    fi
done

# Creating system.log
if [ -f "logs/system.log" ]; then
    echo "File already exists: logs/system.log"
else
    echo "System log initialized" > logs/system.log
    echo "File created successfully (system.log)"
fi

# Creating app.conf
if [ -f "configs/app.conf" ]; then
    echo "File already exists: configs/app.conf"
else
    echo "App_name=DevOps" > configs/app.conf
    echo "File created successfully (app.conf)"
fi

# Creating backup.sh
if [ -f "scripts/backup.sh" ]; then
    echo "File already exists: scripts/backup.sh"
else
    echo "#!/bin/bash" > scripts/backup.sh
    echo "echo 'Backup completed successfully'" >> scripts/backup.sh
    echo "File created successfully (backup.sh)"
fi

# Set permissions
chmod 644 logs/system.log
chmod 444 configs/app.conf
chmod 755 scripts/backup.sh

echo "Permissions updated."

echo "===== Directory Structure ====="
tree .

echo "===== Permissions Overview ====="
ls -lR

echo "===== Setup Complete ====="

