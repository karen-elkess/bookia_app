Markdown
# 📚 Bookia - Book Store App

> A modern, responsive Flutter mobile application designed for browsing, discovering, and purchasing books with seamless API integration and smooth state management.

---

## 📌 About The Project

**Bookia** is a feature-rich mobile app crafted to provide book lovers with an effortless browsing and shopping experience. Built using Flutter and Dart, the application demonstrates clean architecture principles, robust network request handling via Dio, and predictable state management using BLoC/Cubit.

---

## ✨ Key Features

- **🔐 User Authentication:** Secure Login & Registration flows integrated with RESTful APIs.
- **👁️ Password Visibility Toggle:** Interactive UI enhancement for user password input fields.
- **🎨 Custom Dynamic Theming:** Light & Dark theme support managed via a dedicated Theme Cubit.
- **🛣️ Clean Routing & Navigation:** Efficient app-wide navigation utilizing custom routing extensions and GoRouter.
- **📱 Clean Feature-First Architecture:** Scalable codebase divided into feature modules and core utilities.
- **🌐 Network API Handling:** Asynchronous network communication powered by Dio with error handling.

---

## 🛠️ Tech Stack & Packages

| Category | Tools / Packages Used |
| :--- | :--- |
| **Framework & Language** | Flutter, Dart |
| **State Management** | Flutter BLoC / Cubit |
| **Networking & HTTP** | Dio |
| **Navigation & Routing** | GoRouter / Custom Navigation Extensions |
| **Architecture Pattern** | Feature-First Clean Architecture |
| **Local / Theme State** | Hydrated Bloc / Cubit |

---

## 📂 Project Structure

```text
lib/
├── core/
│   ├── helper/          # Utility classes & helper functions
│   ├── routes/          # Navigation & GoRouter configuration
│   ├── theme/           # App themes & Theme Cubit
│   └── widgets/         # Shared reusable UI widgets
├── features/
│   ├── welcome/         # Onboarding & Welcome screens
│   ├── login/           # Authentication - Login module (Cubit, Data, UI)
│   ├── register/        # Authentication - Register module (Cubit, Data, UI)
│   └── home/            # Main dashboard & book feeds (Data, Presentation)
└── gen/                 # Generated assets & code helper files
🎥 App Demo & Video Preview
Watch the video walkthrough to see the Bookia app in action, featuring authentication flows and UI navigation:

[📺 Watch Full App Demo Video (Replace this with your Google Drive, LinkedIn, or YouTube video link)]

(https://github.com/user-attachments/assets/b1bba1d7-2395-43a4-85f1-df7d47541f17)


https://github.com/user-attachments/assets/fca9c7a2-65d9-4a3f-bcb8-ad020f35e474



https://github.com/user-attachments/assets/3c4a50f8-dbdd-41fb-8a97-81b35bcb8cf5



🚀 How to Run the Project
Follow these steps to set up and run the app locally on your device or emulator:

Prerequisites
Flutter SDK installed (v3.0.0 or higher recommended).

Android Studio or VS Code configured for Flutter development.


To generate code automatically, run one of the following commands in the terminal:

//- **One-time build:**
  bash
  dart run build_runner build --delete-conflicting-outputs

```bash
dart run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart -O lib/gen




