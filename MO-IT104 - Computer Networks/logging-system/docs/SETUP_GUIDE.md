# 🛠 MO-IT104 Computer Networks - Setup Guide

## 🎯 **Quick Start Installation**

Get your Computer Networks logging system operational in under 5 minutes!

---

## 📋 **Prerequisites**

- Windows 10/11 with PowerShell 5.0+ or Command Prompt
- VS Code (optional but recommended for snippets)
- Access to course directory: `c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks`

---

## 🚀 **Installation Steps**

### **Step 1: Verify Directory Structure**

Your logging system should be organized as:
```
MO-IT104 - Computer Networks/
├── course-activity.log           # Will be created on first use
├── logging-system/
│   ├── README.md
│   ├── scripts/
│   │   ├── course-log.ps1
│   │   └── study-entry.bat
│   ├── templates/
│   │   ├── DAILY_STUDY_TEMPLATES.md
│   │   ├── WEEKLY_REVIEW_TEMPLATE.md
│   │   ├── LAB_SESSION_TEMPLATE.md
│   │   ├── ASSIGNMENT_TRACKING.md
│   │   └── EXAM_PREP_TEMPLATE.md
│   └── docs/
│       └── SETUP_GUIDE.md (this file)
```

### **Step 2: Test PowerShell Script**

Open PowerShell in your course directory:
```powershell
cd "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"

# Test with initialization entry
.\logging-system\scripts\course-log.ps1 -Type "COURSE" -Topic "SETUP" -Description "Logging system initialized for MO-IT104" -Status "STARTED"
```

**Expected Output:**
```
✅ Logged: COURSE - SETUP
   📝 Logging system initialized for MO-IT104
   📊 Status: STARTED

📋 Recent Log Entries:
   [1724725600] | COURSE | SETUP | Logging system initialized for MO-IT104 | STARTED
```

### **Step 3: Test Batch Script (Alternative)**

If PowerShell isn't available:
```cmd
cd "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"

# Test with initialization entry
.\logging-system\scripts\study-entry.bat "COURSE" "SETUP" "Batch logging system initialized" "STARTED"
```

### **Step 4: Verify Log File Creation**

Check that `course-activity.log` was created in your course directory and contains the test entry.

---

## 🎯 **VS Code Snippets Setup (Optional)**

### **Option 1: Manual Setup**

1. Open VS Code in your course directory
2. Press `Ctrl+Shift+P` → "Configure User Snippets"
3. Select "New Global Snippets file"
4. Name it: `mo-it104-logging.code-snippets`
5. Copy the following content:

```json
{
  "Computer Networks Log Entry": {
    "prefix": "netlog",
    "body": [
      "[${1:timestamp}] | ${2|STUDY,LECTURE,LAB,ASSIGNMENT,QUIZ,EXAM,CONCEPT,PROTOCOL,TOOL,SIMULATION,TROUBLESHOOT,CONFIG,PROGRESS,CHALLENGE,BREAKTHROUGH,REVIEW,REFLECTION,GOAL,PLAN,COURSE|} | ${3:TOPIC} | ${4:description} | ${5|PLANNED,IN_PROGRESS,COMPLETED,RESOLVED,OBSTACLE,INVESTIGATING,BREAKTHROUGH,POSITIVE,NOTED,STARTED,PROGRESS|}"
    ],
    "description": "Quick Computer Networks log entry"
  },
  
  "Study Session Start": {
    "prefix": "netstudy",
    "body": [
      "[${1:timestamp}] | STUDY | SESSION_START | Focus: ${2:today's topic} | PLANNED",
      "[${3:timestamp}] | GOAL | TODAY | ${4:specific objectives} | PLANNED"
    ],
    "description": "Start study session template"
  },
  
  "Lab Documentation": {
    "prefix": "netlab",
    "body": [
      "[${1:timestamp}] | LAB | ${2:LAB_NAME} | ${3:lab activity description} | ${4|STARTED,IN_PROGRESS,COMPLETED|}"
    ],
    "description": "Lab session logging"
  },
  
  "Concept Learning": {
    "prefix": "netconcept",
    "body": [
      "[${1:timestamp}] | CONCEPT | ${2:NETWORKING_TOPIC} | ${3:what you learned} | BREAKTHROUGH"
    ],
    "description": "Document learning breakthroughs"
  }
}
```

### **Option 2: Copy from Portfolio Project**

If you have the portfolio logging system:
```powershell
# Copy the snippets file
copy "c:\Users\ADMIN\Desktop\developerFiles\myPortfolio\.vscode\project-log.code-snippets" ".vscode\mo-it104-logging.code-snippets"
```

### **Testing VS Code Snippets**

1. Open `course-activity.log` in VS Code
2. Type `netlog` + Tab → Should show dropdown options
3. Type `netstudy` + Tab → Should create study session template

---

## ⚡ **Daily Usage Workflow**

### **Morning Study Session Start**
```powershell
# Navigate to course directory
cd "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"

# Start study session
.\logging-system\scripts\course-log.ps1 -Type "STUDY" -Topic "SESSION_START" -Description "Focus: TCP/IP protocol analysis" -Status "PLANNED"

# Set daily goals
.\logging-system\scripts\course-log.ps1 -Type "GOAL" -Topic "TODAY" -Description "Complete Chapter 4 reading, finish Wireshark lab" -Status "PLANNED"
```

### **During Study - Key Learning Moments**
```powershell
# Document insights
.\logging-system\scripts\course-log.ps1 -Type "CONCEPT" -Topic "TCP_HANDSHAKE" -Description "Finally understand sequence number progression" -Status "BREAKTHROUGH"

# Note challenges
.\logging-system\scripts\course-log.ps1 -Type "CHALLENGE" -Topic "SUBNETTING" -Description "VLSM calculations under time pressure" -Status "OBSTACLE"

# Record solutions
.\logging-system\scripts\course-log.ps1 -Type "SOLUTION" -Topic "SUBNETTING" -Description "Binary method makes VLSM much clearer" -Status "RESOLVED"
```

### **Evening Session End**
```powershell
# Session summary
.\logging-system\scripts\course-log.ps1 -Type "STUDY" -Topic "SESSION_END" -Description "Completed Chapter 4, finished HTTP analysis lab" -Status "COMPLETED"

# Daily reflection
.\logging-system\scripts\course-log.ps1 -Type "REFLECTION" -Topic "PROGRESS" -Description "Good progress, feeling confident about packet analysis" -Status "POSITIVE"

# Tomorrow's plan
.\logging-system\scripts\course-log.ps1 -Type "PLAN" -Topic "TOMORROW" -Description "Focus on routing protocols - RIP and OSPF introduction" -Status "PLANNED"
```

---

## 🔧 **Troubleshooting**

### **PowerShell Execution Policy Issues**

If you get "execution policy" errors:
```powershell
# Check current policy
Get-ExecutionPolicy

# If restricted, temporarily allow:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# After logging, reset if desired:
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser
```

### **Script Path Issues**

Always use full paths or navigate to course directory first:
```powershell
# Either navigate first:
cd "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"
.\logging-system\scripts\course-log.ps1 [parameters]

# Or use full path:
& "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks\logging-system\scripts\course-log.ps1" [parameters]
```

### **Log File Permission Issues**

If log file creation fails:
```powershell
# Check directory permissions
icacls "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"

# Create log file manually if needed:
New-Item -Path "course-activity.log" -ItemType File
```

---

## 📊 **Verification Checklist**

After setup, verify these items work:

- [ ] **PowerShell Script**: Can create log entries without errors
- [ ] **Batch Script**: Alternative method works if PowerShell unavailable
- [ ] **Log File**: `course-activity.log` is created and entries are saved
- [ ] **VS Code Snippets**: Tab completion works in log file
- [ ] **Templates**: All template files accessible and readable
- [ ] **Help System**: Script help displays usage examples

### **Test All Functions**
```powershell
# Test each entry type
.\logging-system\scripts\course-log.ps1 -Type "STUDY" -Topic "TEST" -Description "Testing study logging" -Status "COMPLETED"
.\logging-system\scripts\course-log.ps1 -Type "LAB" -Topic "TEST" -Description "Testing lab logging" -Status "COMPLETED"
.\logging-system\scripts\course-log.ps1 -Type "ASSIGNMENT" -Topic "TEST" -Description "Testing assignment logging" -Status "COMPLETED"
.\logging-system\scripts\course-log.ps1 -Type "CONCEPT" -Topic "TEST" -Description "Testing concept logging" -Status "BREAKTHROUGH"
```

---

## 🎯 **Advanced Configuration**

### **Custom Alias Creation**

For faster logging, create PowerShell aliases:
```powershell
# Add to PowerShell profile
Set-Alias -Name "lognet" -Value "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks\logging-system\scripts\course-log.ps1"

# Usage becomes:
lognet -Type "STUDY" -Topic "TCP_IP" -Description "Protocol analysis" -Status "PROGRESS"
```

### **Automatic Timestamping**

Scripts automatically generate Unix timestamps. To use readable timestamps:
```powershell
# Modify script or use manual timestamps like:
# [2024-08-16 14:30:00] instead of [1724725800]
```

### **Multiple Course Integration**

To use the same system for multiple courses:
```powershell
# Create course-specific shortcuts
function LogIT104 { 
    Set-Location "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"
    .\logging-system\scripts\course-log.ps1 @args
}

function LogIT106 {
    Set-Location "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT106 - Data Analytics Fundamentals"
    .\logging-system\scripts\course-log.ps1 @args
}
```

---

## ✅ **Success Confirmation**

You've successfully set up the Computer Networks logging system when:

1. ✅ Scripts run without errors
2. ✅ Log entries appear in `course-activity.log`
3. ✅ VS Code snippets work (if installed)
4. ✅ Templates are accessible and useful
5. ✅ Daily workflow feels natural and efficient

**You're now ready to document your complete Computer Networks learning journey!** 🚀

---

## 📞 **Support Resources**

### **Documentation Reference**
- Main guide: `logging-system/README.md`
- Templates: `logging-system/templates/` directory
- This setup guide: `logging-system/docs/SETUP_GUIDE.md`

### **Example Usage**
All scripts include built-in help and examples. Run without parameters to see usage instructions.

### **Backup Strategy**
Your `course-activity.log` is your academic portfolio. Back it up regularly to:
- OneDrive/Google Drive for cloud backup
- USB drive for physical backup
- Email drafts for additional safety

**Start logging your Computer Networks journey today!** 📊

---

**Setup Guide Created**: August 16, 2025  
**Course**: MO-IT104 - Computer Networks  
**System Version**: Academic Logging v1.0
