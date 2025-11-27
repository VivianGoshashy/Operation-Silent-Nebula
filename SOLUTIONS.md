# Operation Silent Nebula - Solution Guide

---

## 🔰 MILESTONE 1: RECONNAISSANCE


### Task 1: Navigate to nebula_corp
```bash
cd ~/nebula_corp
```
### Task 2: List home directory contents
```bash
ls home/
```
#### Output: admin staff

### Task 3: Navigate to staff directory
```bash
cd home/staff
```

### Task 4: Display current directory
```bash
pwd
```
#### Output: /home/student/nebula_corp/home/staff

### Task 5: Check project status
```bash
cat project_alpha.status
```
#### Output: Project Alpha: 20% complete



## 🔍 MILESTONE 2: INVESTIGATION


### Task 1: Navigate to logs
```bash
cd ~/nebula_corp/var/log
```

### Task 2: Find root access alert
```bash
grep "ALERT" access.log
```
#### Output: 2023-10-27 10:55:10 ALERT Root access granted to 45.33.22.11
#### ANSWER: Attacker IP = 45.33.22.11

### Task 3: Navigate to hidden cache
```bash
cd ~/nebula_corp/tmp/.cache
```

### Task 4: Reveal hidden files
```bash
ls -a
```
#### Output: . .. .rootkit_config

### Task 5: Examine attacker config
```bash
cat .rootkit_config
```
#### Output: HACKER_KEY=992834729



## 🛠 MILESTONE 3: CONTAINMENT


### Task 1: Create evidence directory
```bash
cd ~/nebula_corp
mkdir evidence
```

### Task 2: Preserve access logs
```bash
cp var/log/access.log evidence/
```

### Task 3: Secure attacker config
```bash
mv tmp/.cache/.rootkit_config evidence/
```

### Task 4: Remove malicious script
```bash
cd home/admin
rm suspicious_script.sh
```

### Task 5: Verify removal
```bash
ls
```
#### Output: (suspicious_script.sh should be gone)



## 🔒 MILESTONE 4: HARDENING



### Task 1: Navigate to evidence
```bash
cd ~/nebula_corp/evidence
```

### Task 2: Check permissions
```bash
ls -l
```
#### Output: -rw-r--r-- for both files

### Task 3: Set read-only permissions
```bash
chmod 400 access.log
chmod 400 .rootkit_config
```

### Task 4: Verify permissions
```bash
ls -l
```
#### Output: -r-------- for both files




## ⚡ MILESTONE 5: NEUTRALIZATION




### Task 1: Get malicious process ID
```bash
cat ~/nebula_corp/tmp/.miner_pid
```
#### Output: [PID number, e.g., 1234]

### Task 2: Verify process (replace 1234 with actual PID)
```bash
ps 130
```
#### Output: Shows running process

### Task 3: Terminate process
```bash
kill 130
```

### Task 4: Verify termination
```bash
ps 130
```
#### Output: No output (process terminated)

### Task 5: Create evidence archive
```bash
cd ~/nebula_corp
tar -czf case_files.tar.gz evidence/
```

### Task 6: Verify archive
```bash
tar -tzf case_files.tar.gz
```
#### Output: Lists files in archive

### Task 7: Verify the process is gone
```bash
ps 130
```
#### Output: No process

### Task 8: Check evidence contents
```bash
ls -l evidence/
```
