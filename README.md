# One Dojo 🥋

**Modular Martial Arts Club Management Platform**

---

One Dojo is a secure, modular, self-hosted application designed for managing martial arts schools and clubs. Built for privacy-conscious organisations in Canada, it serves as a central hub for enrolment, attendance, finances, and student progression — with full role-based access controls and API-driven extensibility.

---

## ✨ Features (v1 Core)

- 🧍 **Student Management**
  - Customisable belt/level structure
  - Class assignments and instructor linkage
  - Active/inactive status toggling
  - Note tracking (per student and per level)
  - Emergency contact management with shared contacts
  - Secure student logins via hashed passwords
  - Role assignments per student (Student, Instructor, Club Admin, etc.)

- 🗓️ **Attendance Tracking**
  - Class roll-call support
  - Session logs tied to students and instructors

- 💵 **Financial Ledger**
  - Record payment amounts, methods, and dates
  - Generate printable/bilingual invoices & receipts (no payment processing)

- 🔐 **Role-Based Access Control**
  - **Administrator** – Full access
  - **Instructor** – Student records only
  - **Treasurer** – Financial records only
  - Custom roles stored in the `roles` table for flexible permissions

- 🔌 **Modular Architecture**
  - Exposed secure APIs for external integration
  - Hooks for future modules (grading events, inventory, mobile apps)

---

## ⚙️ Tech Stack

- **Apache 2.4** – Reverse proxy and TLS termination
- **PHP 8.3** – Application runtime (Laravel or Slim, TBD)
- **MariaDB 11.x** – Relational data storage
- **Redis** – Session/cache support (future phase)
- **Docker** – Container-based development
- **GitHub Actions** – CI/CD pipeline

---

## 📁 Project Structure

```plaintext
one-dojo/
├── app/              # Controllers, Models, Views
├── config/           # App and DB config
├── public/           # DocumentRoot (Apache entrypoint)
├── storage/          # Writable logs/uploads
├── tests/            # PHPUnit test cases
├── docker/           # Container setup (optional)
├── scripts/          # Utility scripts (migrations etc.)
├── sql/              # SQL schema scripts
├── .env.example      # Environment variable template
├── composer.json     # PHP dependencies
└── README.md
````

---

## 🚀 Getting Started

```bash
# Clone the repository
git clone git@github.com:YourUsername/one-dojo.git
cd one-dojo

# Install PHP dependencies
composer install

# Set up your environment
cp .env.example .env
# Edit .env and set database/app values
# Load database schema
for f in sql/*.sql; do mysql -u root -p one_dojo < "$f"; don

# Run locally (if using Laravel, for example)
php artisan serve
```

---

## 🧪 Tests

```bash
# Run PHPUnit tests
vendor/bin/phpunit
```

---

## 🛡️ Security & Privacy

One Dojo is developed with Canadian privacy regulations (PHIPA, PIPEDA) in mind. All modules are designed to:

* Store only necessary personal information
* Encrypt sensitive data in transit and at rest
* Support full audit trails and access logs
* Offer zero direct payment processing to reduce PCI-DSS burden

---

## 📬 Roadmap Highlights

* [ ] Custom belt/grading taxonomy
* [ ] PDF invoice/receipt generation
* [ ] Attendance tracking kiosk interface
* [ ] API v1 with token/key permissions
* [ ] Modular extension SDK

---

## 🧩 Contributing

We're aiming for clean, well-documented, secure PHP. All contributions must pass:

* PSR-12 formatting (`phpcs`)
* Static analysis (`phpstan`)
* Unit & integration tests (`phpunit`)

---

## 📄 License

This project is licensed under the MIT License.

---

*“One Dojo to rule them all, one ledger to find them…”*

```
