## Betcha

Monorepo containing a Rails API backend and a Vite React frontend.

### Prerequisites
- Ruby (matching `.ruby-version` in `backend`)
- Bundler
- Node.js (LTS) and npm

### Backend (Rails API)
```bash
cd backend
bundle install
bin/rails db:prepare
bin/rails server
```
Server runs at `http://localhost:3000`.

### Frontend (React + Vite)
```bash
cd frontend
npm install
npm run dev
```
App runs at the URL shown by Vite (usually `http://localhost:5173`). The landing page title and heading display "Betcha".


