# 📚 Bookia App

<div align="center">

**Bookia** is a full-featured book application built with Flutter, following a clean and organized architecture that separates Data and Presentation layers.

</div>

---

## ✨ Features

- 🔐 **Complete Authentication Flow** — Welcome, Login, Register
- 🎨 **Theme Management** — Handled via a dedicated Theme Cubit
- 🌐 **API Integration** — Powered by Dio with a logging Interceptor (Pretty Dio Logger)
- 💾 **Persistent Login** — Token stored using SharedPreferences
- 🧭 **Custom Navigation Extensions** — Simplified and clean screen navigation
- 🏗️ **Clean Architecture** — Full separation between Data / Presentation / Cubit for each feature

---

## 🏗️ Project Structurelib
├── core
│ ├── helper # Extensions & Helper functions
│ ├── routes # App Routing (onGenerateRoute)
│ ├── theme
│ │ └── cubit # Theme Cubit (Light/Dark)
│ └── widgets # Shared/Reusable Widgets
│
├── features
│ ├── welcome
│ │ └── presentation/ui/widgets
│ │
│ ├── login
│ │ ├── cubit # LoginCubit + LoginState
│ │ ├── data
│ │ │ ├── model # Login Models
│ │ │ └── repo # LoginRepo (API Calls)
│ │ └── ui # Login Screen
│ │
│ ├── register
│ │ ├── data
│ │ │ ├── model
│ │ │ └── repo # RegisterRepo (API Calls)
│ │ └── presentations
│ │ ├── cubit # RegisterCubit + RegisterState
│ │ └── ui/widgets # Register Screen + Widgets
│ │
│ └── home
│ ├── data
│ └── presentation/ui # Home Screen
│
└── gen # Generated Files


---

## 🧠 Architecture

The project follows a **Feature-First Architecture**, where each feature (Login, Register, Home...) has:

| Layer | Responsibility |
|---|---|
| **Data / Repo** | Direct communication with the API (Dio requests) |
| **Data / Model** | Data representation (JSON Parsing) |
| **Cubit** | State management (Loading, Success, Error) |
| **UI** | Screens and user interaction |

---

## 🔑 Authentication Flow

User Input → Cubit → Repo → Dio → API
↓
emit(State: Loading / Success / Error)
↓
BlocListener → UI Reaction


After a successful Login/Register:
1. The **Token** is extracted from the Response
2. It gets stored in **SharedPreferences**
3. Automatic navigation to the **Home Screen** using `pushNamedAndRemoveUntil`

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **Flutter** | Core framework |
| **Dio** | API communication |
| **Pretty Dio Logger** | Request/Response tracking during development |
| **flutter_bloc (Cubit)** | State management |
| **SharedPreferences** | Local session data storage |

---

## 🚀 Getting Started

```bash
# Clone the repository
git clone <repo-url>

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---

## 🎥 Demo

<!-- Video goes here -->

---




https://github.com/user-attachments/assets/b1bba1d7-2395-43a4-85f1-df7d47541f17






https://github.com/user-attachments/assets/fca9c7a2-65d9-4a3f-bcb8-ad020f35e474






https://github.com/user-attachments/assets/3c4a50f8-dbdd-41fb-8a97-81b35bcb8cf5



