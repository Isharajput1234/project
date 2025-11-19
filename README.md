# 🎓 Smart Room Booking System  
A web-based Classroom / Lab booking system built using **HTML, CSS, JavaScript, PHP, and MySQL**.  
It supports multiple user roles with different permissions and includes OS mutual exclusion logic.

---

## 📌 Features

### 👨‍🎓 Student
- Login and view dashboard  
- View available rooms  
- Book a room by selecting date/time/purpose  
- See booking history & status  

### 👨‍🏫 Faculty
- Same as students  
- Faculty bookings marked **High Priority**  
- Faster approval flow  

### 🧑‍💼 HOD (Head of Department)
- View **all pending booking requests**  
- Approve / reject bookings  
- View booking history  
- Priority sorting (faculty first)

---

## 🛠 Tech Stack

### **Frontend**
- HTML  
- CSS  
- Bootstrap 5  
- JavaScript (Fetch API, dynamic DOM updates)

### **Backend**
- PHP (login, booking, approval, request fetching)
- JSON APIs  
- MySQL Database  
- OS Algorithm (Peterson's Mutual Exclusion)

---

## 🗃 Database Structure

### **rooms**
| Column | Type | Description |
|--------|------|-------------|
| room_id | VARCHAR | Room number |
| room_type | VARCHAR | Lecture / Lab etc |
| capacity | INT | Room capacity |

### **users**
| Column | Type |
|--------|------|
| email | VARCHAR |
| password | VARCHAR |
| role | ENUM(student, faculty, hod) |
| name | VARCHAR |

### **room_requests**
| Column | Type |
|--------|------|
| request_id | INT (PK) |
| user_id | VARCHAR |
| user_role | VARCHAR |
| room | VARCHAR |
| purpose | VARCHAR |
| date | DATE |
| time_slot | VARCHAR |
| status | ENUM(pending, approved, rejected) |

---

## 🔄 Booking Flow (Important)

1. Student / Faculty logs in  
2. System loads valid rooms  
3. User selects a room, date, time, purpose  
4. JS sends JSON → `book_room.php`  
5. PHP inserts into `room_requests`  
6. HOD dashboard → fetches all requests  
7. HOD approves or rejects  
8. Status updates in DB  
9. Student/Faculty view updated status  

---

## 🧠 OS Concept: Peterson's Mutual Exclusion Algorithm

To demonstrate OS concurrency control:

- Implemented Peterson’s Algorithm in PHP  
- Simulates two processes trying to enter a **critical section**  
- Prevents race conditions  
- Ensures mutual exclusion  
- Conceptually shows how double-booking is avoided  

```php
$turn = 0;
$flag = [false, false];
