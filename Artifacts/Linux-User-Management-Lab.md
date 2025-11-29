# 🐧 Linux User Management Lab

**Objective**: Practice creating, managing, and securing user accounts in a Linux environment.

---

## Create Users
```bash
sudo adduser alice
sudo adduser bob

## Create Groups
sudo groupadd students
sudo groupadd lecturers

sudo groupadd students
sudo groupadd lecturers

sudo usermod -aG students alice
sudo usermod -aG lecturers bob

## Permissions
sudo mkdir /srv/university_lab
sudo chown :students /srv/university_lab
sudo chmod 770 /srv/university_lab

## Password Policies
- Edit /etc/login.defs:
- PASS_MAX_DAYS 90
- PASS_MIN_DAYS 7
- PASS_WARN_AGE 14

## Audit
groups alice
groups bob
sudo tail -n 50 /var/log/auth.log

---

## 📄 `artifacts/Student-Feedback-Workflow.md`

```markdown
# 📝 Student Feedback Workflow

**Objective**: Collect, analyze, and act on student feedback for ICT lab sessions.

---

## Step 1 – Collection
- Distribute feedback forms (Google Forms or paper).
- Key questions:
  - Clarity of instructions
  - Lab difficulty
  - Tool usability
  - Suggestions for improvement

---

## Step 2 – Aggregation
- Export responses to CSV.
- Store in `/srv/feedback/YYYY-MM-DD.csv`.

---

## Step 3 – Analysis
- Use scripts to calculate:
  - Average satisfaction score
  - Common issues (keyword frequency)
  - Improvement trends

---

## Step 4 – Action
- Summarize findings in weekly lecturer meeting.
- Adjust lab instructions or tooling.
- Document changes in `Lab-Revision-Log.md`.

---

## Step 5 – Communication
- Share summary with students:
  - “You said X was unclear, we added more examples.”
- Reinforce continuous improvement culture.

---


---

## 📄 `artifacts/Student-Feedback-Workflow.md`

```markdown
# 📝 Student Feedback Workflow

**Objective**: Collect, analyze, and act on student feedback for ICT lab sessions.

---

## Step 1 – Collection
- Distribute feedback forms (Google Forms or paper).
- Key questions:
  - Clarity of instructions
  - Lab difficulty
  - Tool usability
  - Suggestions for improvement

---

## Step 2 – Aggregation
- Export responses to CSV.
- Store in `/srv/feedback/YYYY-MM-DD.csv`.

---

## Step 3 – Analysis
- Use scripts to calculate:
  - Average satisfaction score
  - Common issues (keyword frequency)
  - Improvement trends

---

## Step 4 – Action
- Summarize findings in weekly lecturer meeting.
- Adjust lab instructions or tooling.
- Document changes in `Lab-Revision-Log.md`.

---

## Step 5 – Communication
- Share summary with students:
  - “You said X was unclear, we added more examples.”
- Reinforce continuous improvement culture.

---

**Outcome**: Transparent, iterative teaching process with measurable student satisfaction improvements.
