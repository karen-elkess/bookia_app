<div align="center">

# 📚 Bookia

A Flutter book app with a full authentication flow — built while learning Flutter 🌱

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![State Management](https://img.shields.io/badge/State%20Management-Cubit-blueviolet)](https://bloclibrary.dev)

</div>

---

## About

Bookia is a Flutter app I built to practice a complete authentication flow — Welcome, Login, and Register screens, connected to a real API.

The goal wasn't just to make it work, but to organize the code properly: separating the API calls, the state management, and the UI into their own layers instead of mixing everything together.

---

## What's inside

- **Login & Register** connected to a real backend using `Dio`
- **State management** with `Cubit`, so the UI reacts to Loading / Success / Error states
- **Token saved locally** with `SharedPreferences`, so the user stays logged in after closing the app
- **Password visibility toggle** on the password fields
- **Custom navigation extensions** to keep navigation code short and readable
- **Request logging** with `PrettyDioLogger` to debug API calls easily during development

---

## Project structure

Each feature (`login`, `register`, `home`...) is organized the same way:

```
feature/
├── data/
│   ├── model/     → data models
│   └── repo/       → API calls (Dio)
├── cubit/          → app state (loading / success / error)
└── ui/             → screens & widgets
```

<details>
<summary>Full folder structure</summary>

```
lib
├── core
│   ├── helper          → custom extensions
│   ├── routes
│   ├── theme/cubit
│   └── widgets
│
├── features
│   ├── welcome
│   ├── login
│   ├── register
│   └── home
│
└── gen
```

</details>

---

## Tech Stack

- **Flutter** & **Dart**
- **flutter_bloc** (Cubit) for state management
- **Dio** for API requests
- **shared_preferences** for local storage
- **pretty_dio_logger** for debugging

---

## Demo

https://github.com/user-attachments/assets/b1bba1d7-2395-43a4-85f1-df7d47541f17

https://github.com/user-attachments/assets/fca9c7a2-65d9-4a3f-bcb8-ad020f35e474

https://github.com/user-attachments/assets/3c4a50f8-dbdd-41fb-8a97-81b35bcb8cf5

---

## Getting Started

```bash
git clone <repo-url>
cd bookia_app
flutter pub get
flutter run
```

---

<div align="center">

Still learning, still building 🚀

</div>
