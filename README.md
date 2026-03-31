# Open Source Software (OSS) Audit Toolkit

### **Student Information**
* **Name:** Prem Kumar
* **Roll Number:** 24BAS10099

## **Project Overview**
This repository contains a suite of professional shell scripts designed to perform an **Open Source Audit** on a Linux system. The toolkit focuses on system identification, ecosystem analysis, package inspection, and security/log auditing.

**Chosen Software:** Python

## **Script Descriptions**

### 1. System Identity Report (`system_identity.sh`)
Displays a comprehensive overview of the host system, including kernel version, current user, system uptime, and a legal license notice.

### 2. FOSS Ecosystem Report (`foss_ecosystem.sh`)
Analyzes the Python environment on the machine. It verifies if Python is installed and lists all active Python dependencies (PIP packages).

### 3. FOSS Package Inspector (`package_inspector.sh`)
Checks for the presence of specific FOSS tools (defaulting to `git`). It provides installation status and a philosophical note on the importance of free software.

### 4. Disk and Permission Auditor (`disk_auditor.sh`)
Audits system directories and critical software configuration files. It reports on disk usage and checks for sensitive file permissions.

### 5. Log File Analyzer (`log_analyzer.sh`)
A diagnostic tool that searches system log files for specific keywords (e.g., "error" or "failed") and outputs the most recent 5 matches.

---

## **Dependencies**
To run these scripts, your Linux environment should have the following:
* **Bash Shell:** (Standard on most distributions).
* **Python 3 & PIP:** Required for the Ecosystem Report.
* **Sudo Privileges:** Required for the Disk Auditor and Log Analyzer to access system-level files (e.g., `/var/log/`).

---

## **Step-by-Step Instructions**

### **Step 1: Clone the Repository**
Open your terminal and navigate to your desired directory:
```bash
git clone [Your-Repository-URL]
cd [Your-Repository-Name]
```

### **Step 2: Grant Execute Permissions**
Before running the scripts, you must make them executable:
```bash
chmod +x *.sh
```

### **Step 3: Run the Scripts**
You can run each script individually using the commands below:

* **System Identity:**
    ```bash
    ./system_identity.sh
    ```
* **Ecosystem Audit:**
    ```bash
    ./foss_ecosystem.sh
    ```
* **Package Inspection:**
    ```bash
    ./package_inspector.sh
    ```
* **Disk & Permission Audit:**
    ```bash
    sudo ./disk_auditor.sh
    ```
* **Log Analysis:**
    ```bash
    sudo ./log_analyzer.sh
