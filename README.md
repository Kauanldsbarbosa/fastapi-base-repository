# 🚀 FastAPI StartKit v2

Configured base repository for building **FastAPI** projects using:

- **SQLAlchemy** for ORM
- **Alembic** for database migrations
- **Pytest** for testing
- **Ruff** for linting and formatting
- **Docker** for containerization
- **Poetry** for dependency management

Perfect for quickly starting modern, performant APIs with Python 3.12+.

---

## 📦 Tech Stack

- **FastAPI**
- **SQLAlchemy**
- **Alembic**
- **Poetry**
- **Ruff**
- **Docker & Docker Compose**
- **Pytest & Coverage**
- **Asyncpg, Psycopg2, Aiosqlite** for database support

---

## 📁 Project Structure

```
├── app/                 # Application source code
├── config/              # Config files and requirements.txt
├── alembic/             # Database migrations
├── tests/               # Tests
├── Dockerfile
├── docker-compose.yml
├── pyproject.toml
├── Makefile
└── README.md
```

---

## 🚀 Running the Project

```bash
make up
```

The app will be available at: [http://localhost:8000](http://localhost:8000)

---

## 🧪 Running Tests

To run tests:

```bash
make test
```

To check coverage:

```bash
make coverage
```

---

## 🔄 Database Migrations

Create a new migration:

```bash
make makemigrations
```

Apply the latest migrations:

```bash
make migrate
```

---

## ✨ Ruff - Linting & Auto-fix

Check for lint issues:

```bash
make ruff-check
```

Auto-fix lint issues:

```bash
make ruff-fix
```

---

## 📦 Generate Requirements File

Export `requirements.txt` from Poetry:

```bash
make create-requirements
```

---

## 🛠 Requirements

- Python 3.12+
- Docker & Docker Compose
- [Poetry](https://python-poetry.org/) (`pip install poetry`)

---

## 📬 Author

**KauanldsBarbosa**  
📧 kauanldsbarbosa@gmail.com