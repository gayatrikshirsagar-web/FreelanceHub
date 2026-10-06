# FreelanceHub

FreelanceHub is a full-stack freelance platform that connects
clients with students/freelancers.

## Technologies

### Frontend
- React
- Vite
- Axios
- React Router

### Backend
- Java
- Spring Boot
- Spring Data JPA
- Maven

### Database
- MySQL
- MySQL Workbench

## Project Structure

FreelancePlatformApplication/
│
├── Backend/
├── FreelanceFrontend/
├── database/
│   └── freelancehub_database.sql
├── .gitignore
└── README.md

## Features

### Student / Freelancer
- Registration
- Login
- Student dashboard
- Browse projects
- Apply for projects
- Saved projects
- My applications
- Active projects
- Messaging
- Notifications
- Profile management

### Client
- Registration
- Login
- Client dashboard
- Post projects
- Manage projects
- View applications
- Accept / reject applications
- Messaging
- Profile management

### Admin
- Admin login
- Admin dashboard
- Student management
- Client management
- Project management
- Application management
- Student verification
- Client verification

## Setup

### 1. Database

Create a MySQL database.

Import:

database/freelancehub_database.sql

### 2. Backend

Configure:

Backend/src/main/resources/application.properties

Use your own MySQL username and password.

Run the Spring Boot application.

Backend:

http://localhost:8080

### 3. Frontend

Open the frontend folder:

cd FreelanceFrontend

Install dependencies:

npm install

Run:

npm run dev

Open the URL shown by Vite.

## Important

Do not commit passwords, API keys, or other sensitive information.
