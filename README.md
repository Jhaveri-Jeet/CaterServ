# Catering Service Website

This repository contains the source code for a catering service website developed using ASP.NET. The website features an admin panel where administrators can manage settings and users can book catering services. Confirmation of bookings is sent via email.

## Features

- **Admin Panel:** Administrators can access the admin panel to manage settings, view bookings, etc.
- **User Booking:** Users can browse catering services, select items, and book them for events.
- **Email Confirmation:** Confirmation emails are sent to users upon successful booking.

## Technologies Used

- ASP.NET
- C#
- HTML
- CSS
- JavaScript
- SQL Server (or any preferred database management system)

## Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/catering-service.git
```

2. Set up the database:
   - Create a new database in your preferred DBMS.
   - Import the SQL schema provided in `database.sql`.

3. Update database connection string:
   - Navigate to `Web.config` file.
   - Modify the `<connectionStrings>` section to include your database credentials.

4. Build and run the project using Visual Studio or any preferred development environment.

## Usage

1. Access the website through a web browser.
2. Admins can log in to the admin panel using their credentials.
3. Users can browse catering services, select items, and book them for events.
4. Upon successful booking, users will receive a confirmation email.
