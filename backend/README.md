# ontime backend

Minimal Node + Express skeleton for Phase 1.

## Quickstart

1. cd backend
2. Install dependencies:

```bash
npm install
```

3. Copy environment file:

```bash
cp .env.example .env
```

4. Start the server (dev with nodemon):

```bash
npm run dev
# or
npm start
```

5. Open http://localhost:4000/api/health — you should see:

```json
{ "status": "ok" }
```

## Notes

- Uses `dotenv`, `cors`, and `express`.
- Next: add auth, reminders, and Canvas sync routes.
