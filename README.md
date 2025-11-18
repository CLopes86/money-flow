<div align="center">
  <img src="https://github.com/CLopes86.png" width="120" style="border-radius: 50%;" alt="Cesaltino Lopes"/>
  
  # 💰 MoneyFlow
  
  ### Advanced Personal Finance Tracker
  
  ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
  ![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
  ![Riverpod](https://img.shields.io/badge/Riverpod-3DDC84?style=for-the-badge)
  
  **Status:** 🚧 In Development
  
  [Features](#-features) • [Tech Stack](#-tech-stack) • [Getting Started](#-getting-started) • [Roadmap](#-roadmap)
  
</div>

---

## 🎯 About

**MoneyFlow** is a comprehensive personal finance management application built with Flutter. Track your expenses, set budgets, visualize spending patterns, and take control of your financial life with beautiful charts and AI-powered insights.

### ✨ Key Highlights

- 📊 **Beautiful Visualizations** - Interactive charts and graphs to understand your spending
- 💰 **Budget Management** - Set and track budgets per category
- 🤖 **Smart Receipt Scanning** - AI-powered OCR to extract data from receipts
- 📱 **Cross-Platform** - Works on Android, iOS, and Web
- 🔒 **Secure** - Biometric authentication and encrypted local storage
- ☁️ **Cloud Sync** - Your data synced across all devices with Firebase
- 🌓 **Dark Mode** - Easy on your eyes, day or night

---

## 🚀 Features

### ✅ Implemented
- [x] Project setup with Clean Architecture
- [x] Firebase integration
- [ ] Authentication (Email/Password, Google)
- [ ] Biometric authentication

### 🚧 In Progress
- [ ] Transaction management (Add, Edit, Delete)
- [ ] Category management
- [ ] Budget tracking
- [ ] Statistics dashboard

### 🔮 Planned
- [ ] Receipt scanning with OCR
- [ ] Export to PDF
- [ ] Multi-currency support
- [ ] Recurring transactions
- [ ] Financial insights with AI
- [ ] Bill reminders

---

## 🛠️ Tech Stack

### Core
- **Framework:** Flutter 3.x
- **Language:** Dart 3.x
- **State Management:** Riverpod 2.x
- **Architecture:** Clean Architecture

### Backend & Database
- **Authentication:** Firebase Auth
- **Cloud Database:** Cloud Firestore
- **Storage:** Firebase Storage
- **Local Cache:** Hive

### UI/UX
- **Charts:** FL Chart
- **Animations:** Flutter Animate
- **Icons:** Material Icons

### Additional Features
- **OCR:** Google ML Kit
- **PDF:** PDF & Printing packages
- **Notifications:** Flutter Local Notifications

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>= 3.0.0)
- Dart SDK (>= 3.0.0)
- Firebase project configured
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
```bash
   git clone https://github.com/CLopes86/money-flow.git
   cd money-flow
```

2. **Install dependencies**
```bash
   flutter pub get
```

3. **Configure Firebase**
   - Create a Firebase project
   - Add `google-services.json` (Android)
   - Add `GoogleService-Info.plist` (iOS)

4. **Run the app**
```bash
   flutter run
```

---

## 🏗️ Architecture

This project follows **Clean Architecture** principles with three main layers:
```
lib/
├── core/                  # Core utilities, constants, themes
├── features/              # Feature modules
│   ├── auth/
│   │   ├── data/         # Data sources, models, repositories
│   │   ├── domain/       # Entities, use cases, repository interfaces
│   │   └── presentation/ # UI, providers, widgets
│   ├── transactions/
│   └── ...
└── injection.dart         # Dependency injection
```

**Benefits:**
- ✅ Testable code
- ✅ Independent of frameworks
- ✅ Flexible and maintainable
- ✅ Clear separation of concerns

---

## 🗺️ Roadmap

### Phase 1 (Week 1-2) - Foundation
- [x] Project setup
- [x] Clean Architecture structure
- [ ] Firebase configuration
- [ ] Authentication flow

### Phase 2 (Week 3-4) - Core Features
- [ ] Transaction management
- [ ] Category system
- [ ] Basic statistics

### Phase 3 (Week 5-6) - Advanced Features
- [ ] Budget tracking
- [ ] Receipt scanning
- [ ] Charts and visualizations

### Phase 4 (Week 7-8) - Polish & Deploy
- [ ] Animations and UI polish
- [ ] Testing (Unit, Widget, Integration)
- [ ] Deploy to stores

---

## 📚 Learning Journey

This project is part of my learning path in Flutter development. Key concepts I'm mastering:

- ✅ Clean Architecture implementation
- ✅ Advanced State Management with Riverpod
- ✅ Firebase integration (Auth, Firestore, Storage)
- ✅ Local database with Hive
- ✅ Custom animations and transitions
- ✅ ML Kit integration for OCR
- ✅ Testing strategies (TDD)

---

## 📸 Screenshots

> Coming soon! Screenshots will be added as features are completed.

---

## 👨‍💻 Author

<div align="center">
  <img src="https://github.com/CLopes86.png" width="150" style="border-radius: 50%; border: 3px solid #0366d6;" alt="Cesaltino Lopes"/>
  
  ### **Cesaltino Lopes**
  
  🎓 Computer Science & Multimedia Student @ IPCB  
  💻 Aspiring Mobile Developer | Flutter Enthusiast  
  🚀 Building apps that matter
  
  [![GitHub](https://img.shields.io/badge/GitHub-CLopes86-181717?style=for-the-badge&logo=github)](https://github.com/CLopes86)
  [![LinkedIn](https://img.shields.io/badge/LinkedIn-Cesaltino%20Lopes-0077B5?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/cesaltino-lopes-55274b176)
  [![Email](https://img.shields.io/badge/Email-clopes86cv-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:clopes86cv@gmail.com)
  
</div>

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

### 💡 "Building the future, one line of code at a time"

**Made with 💙 and Flutter**

⭐ If you like this project, give it a star!

</div>