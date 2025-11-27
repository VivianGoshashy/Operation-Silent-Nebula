
### **2.2 setup_environment.sh**
```bash
#!/bin/bash

# ==========================================
# OPERATION SILENT NEBULA - SETUP SCRIPT
# ==========================================
# Cybersecurity Incident Response Training Lab
# Created for educational purposes
# ==========================================

set -e  # Exit on any error

BASE_DIR="$HOME/nebula_corp"
LOG_FILE="$BASE_DIR/setup.log"

echo "🚀 Initializing Operation Silent Nebula Simulation..."
echo "Timestamp: $(date)" | tee "$LOG_FILE"

# 1. Clean up previous runs
if [ -d "$BASE_DIR" ]; then
    echo "🔄 Removing previous simulation data..." | tee -a "$LOG_FILE"
    rm -rf "$BASE_DIR"
fi

# 2. Create Directory Structure
echo "🏗️  Building server architecture..." | tee -a "$LOG_FILE"
mkdir -p "$BASE_DIR/var/log"
mkdir -p "$BASE_DIR/home/staff"
mkdir -p "$BASE_DIR/home/admin"
mkdir -p "$BASE_DIR/etc/config"
mkdir -p "$BASE_DIR/tmp/.cache"
mkdir -p "$BASE_DIR/opt/backup"
mkdir -p "$BASE_DIR/usr/bin"

# 3. Create Legitimate Files
echo "📁 Populating system files..." | tee -a "$LOG_FILE"

# Staff documents
echo "Project Alpha: 20% complete" > "$BASE_DIR/home/staff/project_alpha.status"
echo "Q4 Planning Meeting: Oct 30" > "$BASE_DIR/home/staff/meeting_notes.txt"
echo "TODO: Update documentation" > "$BASE_DIR/home/staff/todo.list"

# Configuration files
echo "server_port=8080" > "$BASE_DIR/etc/config/web.conf"
echo "db_host=localhost" > "$BASE_DIR/etc/config/db.conf"
echo "backup_schedule=daily" > "$BASE_DIR/etc/config/backup.conf"

# 4. CREATE ATTACK EVIDENCE

# Suspicious Log Entries
echo "📊 Generating access logs..." | tee -a "$LOG_FILE"
LOG_FILE_PATH="$BASE_DIR/var/log/access.log"

# Normal traffic pattern
for i in {1..100}; do
    echo "2023-10-27 08:$(printf '%02d' $((i/2))):$(printf '%02d' $((i*30%60))) INFO User login from 192.168.1.$((RANDOM%50+1))" >> "$LOG_FILE_PATH"
done

# Attack sequence
echo "2023-10-27 10:55:01 WARN Failed login from 45.33.22.11" >> "$LOG_FILE_PATH"
echo "2023-10-27 10:55:05 WARN Failed login from 45.33.22.11" >> "$LOG_FILE_PATH"
echo "2023-10-27 10:55:10 ALERT Root access granted to 45.33.22.11" >> "$LOG_FILE_PATH"
echo "2023-10-27 10:56:00 INFO Data exfiltration started" >> "$LOG_FILE_PATH"
echo "2023-10-27 10:57:30 INFO Backdoor installed in /tmp/.cache/" >> "$LOG_FILE_PATH"

# Hidden Malicious File
echo "🔍 Planting forensic evidence..." | tee -a "$LOG_FILE"
echo "HACKER_KEY=992834729" > "$BASE_DIR/tmp/.cache/.rootkit_config"
echo "PERSISTENCE=true" >> "$BASE_DIR/tmp/.cache/.rootkit_config"
echo "EXFIL_SERVER=45.33.22.11:8080" >> "$BASE_DIR/tmp/.cache/.rootkit_config"

# Malicious Script
MALWARE="$BASE_DIR/home/admin/suspicious_script.sh"
echo "#!/bin/bash" > "$MALWARE"
echo "# This script appears suspicious" >> "$MALWARE"
echo "echo 'Data collection in progress...'" >> "$MALWARE"
echo "nohup sleep 3600 > /dev/null 2>&1 &" >> "$MALWARE"
echo "echo 'Process started: \$!'" >> "$MALWARE"
chmod 777 "$MALWARE"  # Insecure permissions

# 5. Start Background Process (Simulated Malware)
echo "⚡ Launching simulated malicious process..." | tee -a "$LOG_FILE"
sleep 3600 &
MALWARE_PID=$!
echo $MALWARE_PID > "$BASE_DIR/tmp/.miner_pid"

# 6. Create System Documentation
echo "Nebula Corp Production Server 01" > "$BASE_DIR/README.txt"
echo "Maintenance Window: Sunday 02:00-04:00" >> "$BASE_DIR/README.txt"
echo "Admin Contact: admin@nebulacorp.com" >> "$BASE_DIR/README.txt"

# 7. Completion Message
echo "" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"
echo "✅ SIMULATION ENVIRONMENT READY" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"
echo "📍 Location: $BASE_DIR" | tee -a "$LOG_FILE"
echo "📝 Log File: $LOG_FILE" | tee -a "$LOG_FILE"
echo "🔧 Malware PID: $MALWARE_PID" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "🎯 Your Mission:" | tee -a "$LOG_FILE"
echo "1. Investigate the security breach" | tee -a "$LOG_FILE"
echo "2. Identify and contain the threat" | tee -a "$LOG_FILE"
echo "3. Preserve evidence for forensics" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Refer to INSTRUCTIONS.md for detailed tasks." | tee -a "$LOG_FILE"
echo "Good luck, Administrator! 🛡️" | tee -a "$LOG_FILE"
