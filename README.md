<div align="center">

# 📚 Bookia

### A modern Flutter book app with a complete authentication experience

<p>
  <img src="https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/State%20Management-Cubit-A6247D?style=for-the-badge" />
</p>

A Flutter authentication app built with clean, scalable architecture

</div>

---

## 💡 About

**Bookia** is a Flutter app built to practice a complete authentication flow — 🖐️ Welcome, 🔑 Login, and 📝 Register screens — all connected to a real API.

The goal wasn't just to make it *work*, but to make it **clean**: separating API calls, state management, and UI into their own layers instead of mixing everything together. 🧩

---

## 🎬 Demo

<div align="center">

https://github.com/user-attachments/assets/b1bba1d7-2395-43a4-85f1-df7d47541f17

https://github.com/user-attachments/assets/fca9c7a2-65d9-4a3f-bcb8-ad020f35e474

https://github.com/user-attachments/assets/3c4a50f8-dbdd-41fb-8a97-81b35bcb8cf5

</div>

---

## ✨ Features

| | Feature | Description |
|---|---|---|
| 🔐 | **Authentication** | Login & Register connected to a real backend using `Dio` |
| 🔄 | **State Management** | `Cubit` handles Loading / Success / Error states reactively |
| 💾 | **Persistent Session** | Token saved locally with `SharedPreferences` — stay logged in after closing the app |
| 👁️ | **Password Toggle** | Show/hide password with a single tap |
| 🧭 | **Smooth Navigation** | Custom `BuildContext` extensions for clean, readable routing |
| 🐛 | **Debug Friendly** | `PrettyDioLogger` prints every request & response beautifully in console |

---

## 🛠️ Tech Stack

<div align="center">

<img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" />
<img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white" />
<img src="https://img.shields.io/badge/flutter__bloc-Cubit-A6247D?style=flat-square" />
<img src="https://img.shields.io/badge/Dio-Networking-13AA52?style=flat-square" />
<img src="https://img.shields.io/badge/SharedPreferences-Local%20Storage-FFA500?style=flat-square" />

</div>

---

## 📂 Project Structure

Each feature (`login`, `register`, `home`...) follows the same clean pattern:

```
feature/
├── 📁 data/
│   ├── model/     → data models
│   └── repo/       → API calls (Dio)
├── 📁 cubit/        → app state (loading / success / error)
└── 📁 ui/           → screens & widgets
```

<details>
<summary>📦 <strong>Click to see the full folder structure</strong></summary>

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

## 🔑 How Authentication Works

```
📝 User Input
      ↓
🔄 Cubit emits Loading
      ↓
🌐 Repo sends request via Dio
      ↓
   ┌──────┴──────┐
   ✅ Success      ❌ Error
   ↓                ↓
💾 Save Token      Show Error Dialog
   ↓
🏠 Navigate to Home
```

---

## 🚀 Getting Started

```bash
git clone <repo-url>
cd bookia_app
flutter pub get
flutter run
```

---

## 🔧 Code Generation

If you make changes that require code generation, run the following commands:

**Build Runner** (for generated files):
```bash
dart run build_runner build --delete-conflicting-outputs
```

**Localization Keys** (for translation keys):
```bash
dart run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart -O lib/gen
```

<div align="center">

**Thanks for checking out this project! 🚀**

</div>

