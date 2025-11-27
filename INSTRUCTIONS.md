# Operation Silent Nebula - Lab Instructions

## 🎯 Mission Briefing

**Time**: 03:00 AM  
**Situation**: Security alerts indicate unauthorized access to Nebula Corp Server 01  
**Your Role**: Junior Systems Administrator  
**Mission**: Investigate, contain, and document the security breach

---

## 🔰 MILESTONE 1: RECONNAISSANCE

### Objective: Explore server structure and assess the situation

**Tasks:**
1. Navigate to the nebula_corp directory
2. List home directory contents to identify users
3. Explore staff documents
4. Verify your current location
5. Check project status files

**Commands to Use:** `cd`, `ls`, `pwd`, `cat`

**Expected Output:**
```bash
/home/student/nebula_corp/home/staff
Project Alpha: 20% complete
```

---

## 🔍 MILESTONE 2: INVESTIGATION

### Objective: Identify attacker traces and hidden artifacts

**Tasks:**
1. Analyze server access logs for security events
2. **CRITICAL**: Find the IP address that gained root access
3. Locate hidden directory in /tmp/.cache
4. Examine hidden configuration file
5. Document attacker tools and methods

**Commands to Use:** `grep`, `cd`, `ls -a`, `cat`

**Forensic Questions:**
- What IP address compromised the system?
- What authentication key did the attacker use?
- How many failed login attempts occurred?

---

## 🛠 MILESTONE 3: CONTAINMENT

### Objective: Isolate threats and preserve evidence

**Tasks:**
1. Create secure evidence directory
2. Preserve access logs for analysis
3. Move malicious configuration to evidence
4. Remove active threat script
5. Verify containment actions

**Commands to Use:** `mkdir`, `cp`, `mv`, `rm`

**Evidence Chain of Custody:**
- access.log → Server access records
- .rootkit_config → Attacker configuration
- investigation notes → Your documentation

---

## 🔒 MILESTONE 4: HARDENING

### Objective: Secure system and evidence

**Tasks:**
1. Navigate to evidence directory
2. Review current file permissions
3. Set access.log to read-only (400)
4. Secure .rootkit_config similarly
5. Verify permission changes

**Commands to Use:** `cd`, `ls -l`, `chmod`, `ls -l`

**Security Principle:**
- Read-only permissions prevent evidence tampering
- Proper permissions maintain chain of custody

---

## ⚡ MILESTONE 5: NEUTRALIZATION

### Objective: Eliminate active threats and archive evidence

**Tasks:**
1. Identify malicious process ID
2. Verify process is running
3. Terminate malicious process
4. Create forensic evidence archive
5. Verify archive contents

**Commands to Use:** `cat`, `ps`, `kill`, `tar`

**Final Deliverables:**
- Terminated malicious process
- case_files.tar.gz evidence archive
- Complete incident documentation

---

## 🏆 MISSION COMPLETE CRITERIA

✅ Attacker IP identified and documented  
✅ Malicious files contained and preserved  
✅ System permissions secured  
✅ Malicious process terminated  
✅ Evidence archive created  
✅ Incident report completed

---

## 📚 Learning Objectives Met

- **Linux Command Line Proficiency**
- **Log Analysis and Forensics**
- **Incident Response Procedures**
- **File System Security**
- **Process Management**
- **Evidence Preservation**

**Proceed to SOLUTIONS.md if you need guidance, or attempt the investigation independently first.**
