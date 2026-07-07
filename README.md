# Hansea

🚧 **Work in Progress** — a full-stack e-commerce platform (Java + Spring Boot backend, React frontend). Built as the most advanced project in my portfolio, focused on production-style backend concerns that don't show up in a simple CRUD API.

## Why this project

My earlier projects (TaskFlow API, Car REST Service) cover REST + JWT + a relational database well. Hansea is deliberately scoped to go further: a cart that lives in Redis instead of Postgres, event-driven side effects through Kafka, optimistic locking against overselling, and a real order state machine — the kind of problems that come up in production e-commerce systems.

## Current Status

**Done:**
- Domain model — `User`, `UserProfile`, `Product`, `ProductImage`, `Category`, `Order`, `OrderItem`, `RefreshToken`, with `Role` and `OrderStatus` enums
- Database schema fully defined and versioned with **Liquibase** migrations (users, user profiles, refresh tokens, categories, products, product images, orders, order items, category-product relations)
- Project scaffolding — Gradle build, Docker Compose for local Postgres, Testcontainers wired up for integration testing

**In progress / planned:**
- [ ] Authentication — registration, login, JWT access + refresh tokens
- [ ] Product catalog — CRUD, search, filtering by category/price/seller
- [ ] Shopping cart in **Redis** (TTL-based, expires after 7 days of inactivity)
- [ ] Order lifecycle — `PENDING → CONFIRMED → PAID → SHIPPED → DELIVERED → CANCELLED / REFUNDED`
- [ ] Optimistic locking on inventory to prevent overselling
- [ ] Scheduled auto-cancellation of unpaid orders
- [ ] **Kafka** events for order creation and shipping notifications
- [ ] Image storage via **MinIO**
- [ ] React frontend (Tailwind CSS + shadcn/ui)

## Roles

- **CUSTOMER** — browses products, manages cart, places orders
- **SELLER** — manages own product listings, views orders on their products
- **ADMIN** — full access, manages users and categories, can cancel orders

## Tech Stack

| Category | Technology |
|---|---|
| Language | Java 21 |
| Framework | Spring Boot 3.5 |
| Build Tool | Gradle |
| Database | PostgreSQL |
| Migrations | Liquibase |
| ORM | Spring Data JPA |
| Security | Spring Security (JWT — in progress) |
| Mapping | MapStruct |
| Boilerplate | Lombok |
| Testing | JUnit 5, Testcontainers |
| Caching (planned) | Redis |
| Messaging (planned) | Apache Kafka |
| File storage (planned) | MinIO |
| Frontend (planned) | React, Tailwind CSS, shadcn/ui |

## Running Locally

```bash
git clone https://github.com/chizhiks/hansea.git
cd hansea
cp .env.example .env   # fill in your local values
docker compose up -d   # starts PostgreSQL
./gradlew bootRun
```

## Author

Andrii Chyzhov
