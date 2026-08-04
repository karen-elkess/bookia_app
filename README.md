# 📚 Bookia App

A modern, responsive Mobile Application built with **Flutter** for book enthusiasts. The app features a full authentication flow, custom localization, responsive layouts, and dynamic theme handling (Light/Dark mode).

---

## ✨ Features

- 🌐 **Localization Support:** Multi-language support (Arabic & English) powered by `easy_localization`.
- 🌓 **Dynamic Theme:** Light and Dark mode switching managed via `Flutter Bloc / Cubit`.
- 📱 **Responsive Design:** Adaptive UI across various screen sizes using `flutter_screenutil`.
- 🚀 **Native Splash Screen:** Customized native splash screen transition.
- 📖 **Onboarding Flow:** Smooth introductory onboarding user experience.
- 🔐 **Authentication UI:** Complete design for Welcome, Login, and Register screens.
- 🛠️ **Clean Architecture:** Organized structure following the `Feature-first` pattern.

---

## 🛠️ Tech Stack & Libraries

- **Framework:** [Flutter](https://flutter.dev/)
- **State Management:** [Flutter Bloc / Cubit](https://pub.dev/packages/flutter_bloc)
- **Localization:** [Easy Localization](https://pub.dev/packages/easy_localization)
- **Screen Responsiveness:** [Flutter ScreenUtil](https://pub.dev/packages/flutter_screenutil)
- **Code Generation:** [Build Runner](https://pub.dev/packages/build_runner)

---

## ⚙️ Code Generation Commands

If you modify translation assets or generated files, run the following commands:

### 1. Easy Localization Generation (Keys)
```bash
dart run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart -O lib/gen
## Code Generation

To generate code automatically, run one of the following commands in the terminal:

//- **One-time build:**
  ```bash
  dart run build_runner build --delete-conflicting-outputs
  ```
//watch
  ```bash
dart run build_runner watch --delete-conflicting-outputs
```

  ```bash
dart run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart -O lib/gen
```




https://github.com/user-attachments/assets/b1bba1d7-2395-43a4-85f1-df7d47541f17

