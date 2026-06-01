# Construction-Project-Management-System-CPMS-
<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12,20,30&height=220&section=header&text=🏗️%20Construction%20PM%20System&fontSize=42&fontColor=fff&animation=twinkling&fontAlignY=35&desc=Database%20Design%20%7C%20SQL%20%7C%20ER%20Diagram&descAlignY=55&descSize=18" width="100%"/>

<br>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&size=20&duration=3000&pause=1000&color=D4A843&center=true&vCenter=true&multiline=true&repeat=true&width=650&height=110&lines=Construction+Project+Management+System+🏗️;Designed+with+SQL+%26+Relational+Database+🗄️;Built+with+dedication+%26+earned+an+A%2B+✨)](https://git.io/typing-svg)

<br>

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![phpMyAdmin](https://img.shields.io/badge/phpMyAdmin-6C78AF?style=for-the-badge&logo=phpmyadmin&logoColor=white)

</div>

---

## 🏗️ About The Project

> *"Good data architecture is the foundation of every great system."*

**Construction Project Management System (CPMS)** is a relational database designed to manage all aspects of a construction company — from employees and projects to factories, resources, contracts, and timelines.

> ⚠️ **Note:** This is a fictional system created purely for educational purposes.

This was my **first ever database project** — designed during my **Database Systems** course at university, and I'm proud of every table and relation in it 🗄️

---

## 🏆 Achievement

<div align="center">

<img src="https://media.giphy.com/media/l0MYyoiQfGTOBxATS/giphy.gif" width="80px"/>

### ✨ Academic Achievement ✨

| | |
|:---:|:---:|
| 🎓 **Course** | Database Systems |
| 📊 **Grade** | ![A+](https://img.shields.io/badge/-A%2B-brightgreen?style=flat-square) |
| 🏆 **Project Score** | ![A+](https://img.shields.io/badge/-A%2B-D4A843?style=flat-square) |

> *"Hard work + passion = A+"* 🏗️

</div>

---

## 🗄️ Database Structure

The database `cpms` consists of **11 tables**:

| Table | Description |
|-------|-------------|
| 👷 **employees** | All company staff with their positions and contacts |
| 📁 **projects** | Construction projects with descriptions and dates |
| 🏢 **department** | Company departments and contact info |
| 📋 **task** | Tasks assigned to employees per department |
| 🏭 **factory** | Factories supplying building materials |
| 📍 **f_location** | Factory locations across Saudi Arabia |
| 🪨 **resources** | Building materials linked to factories and projects |
| 📅 **timeline** | Project timelines with start and end dates |
| 📝 **reports** | Progress reports linked to timelines |
| 🤝 **contracts** | Contracts between clients and projects |
| 👤 **client** | Client information and contacts |

---

## 🔗 Entity Relationships

```
employees ──── projects ──── department
    │               │
   task          timeline ──── reports
                    │
               contracts ──── client
                    │
               resources ──── factory ──── f_location
```

---

## 🗂️ Project Files

```
🏗️ construction-pm-database/
│
├── 📄 cpms.sql              ← Full database (CREATE + INSERT)
├── 📊 Construction_PM.pptx  ← Project presentation
├── 📝 Database-project.docx ← Full project documentation
├── 📄 Database-project.pdf  ← PDF version of documentation
└── 📋 README.md             ← You are here!
```

---

## 🚀 How to Run

```sql
-- 1. Import the SQL file in phpMyAdmin or MySQL Workbench
-- 2. Or run via terminal:
mysql -u root -p < cpms.sql

-- 3. Use the database:
USE cpms;

-- 4. Check all tables:
SHOW TABLES;
```

---

## 👩‍💻 Team

<div align="center">

| 🏗️ | Name |
|----|------|
| 🌟 | **Leen Daghriri** |
| 💡 | **Rima Amashi** |
| 🔧 | **Waad Ali Madkhali** |
| 📊 | **Karima Musa Mubaraki** |
| 📋 | **Sarah Maayel Harubi** |

</div>
---

## 🔗 Connect

<div align="center">

[![LinkedIn](https://img.shields.io/badge/☆_LinkedIn-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/leen-dighriri-)
[![Email](https://img.shields.io/badge/☆_Email-c71585?style=flat-square&logo=gmail&logoColor=white)](mailto:leenad987987333@gmail.com)

</div>

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12,20,30&height=100&section=footer&animation=twinkling" width="100%"/>

*Made with 🏗️ by The CPMS Team · 2024*

</div>
