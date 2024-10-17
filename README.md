# Flutter GetX Masterclass: Chapter 6 - Working with Services in GetX – Persistent Data

This repository contains the code for **Chapter 6** of the Flutter GetX Masterclass. In this chapter, we dive into using **GetX Services** to manage persistent data across the app, ensuring that user data (like the cart) is saved even after the app is restarted.

## 📹 Watch the Tutorial on YouTube

Follow along with the tutorial on YouTube to learn how to implement services in GetX for persistent data storage, and see how this can help manage app state across sessions.

[![Watch on YouTube](https://img.youtube.com/vi/X7EjiQEmrBI/0.jpg)](https://www.youtube.com/watch?v=X7EjiQEmrBI&t=2285s)

🔗 **[Watch the full tutorial on YouTube](https://www.youtube.com/watch?v=X7EjiQEmrBI)**

---

## 📝 Chapter Overview

In this chapter, you'll learn:
1. How to create and use **GetX Services** for managing app-wide state.
2. How to persist data using the **GetStorage** package.
3. How to integrate persistent storage into a shopping cart feature so that cart items remain after the app restarts.
4. How to use the `GetXService` lifecycle methods to load and save data efficiently.

---

## 📂 Folder Structure

Here’s the updated folder structure after implementing persistent data storage using GetX Services:

```
lib/
│
├── app/
│   ├── modules/
│   │   ├── product/
│   │   │   ├── controllers/
│   │   │   │   └── product_controller.dart
│   │   │   ├── views/
│   │   │   │   └── product_view.dart
│   │   │   │   └── product_details_view.dart
│   │   │   │   └── cart_view.dart
│   ├── services/
│   │   └── cart_service.dart
│   └── routes/
│       └── app_pages.dart
│       └── app_routes.dart
└── main.dart
```

---

## 🛠️ Key GetX Concepts in This Chapter

- **GetX Services**: Learn how to use services to maintain state across different parts of the app and between sessions.
- **GetStorage**: Explore how to store data persistently in local storage using the `GetStorage` package, ensuring the cart data is retained even when the app is closed.
- **Service Lifecycle**: Discover how to use lifecycle methods like `onInit` and `onClose` to manage loading and saving data at appropriate times.

---

## 🧑‍💻 How to Run the App

1. Clone the repository:
    ```bash
    git clone -b Chapter-6 https://github.com/Amanullahgit/flutter-getx-real-world-application.git
    ```
2. Navigate to the project directory:
    ```bash
    cd flutter-getx-real-world-application
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```

---

## 🔗 Useful Links

- **GetStorage Documentation**: [pub.dev/packages/get_storage](https://pub.dev/packages/get_storage)
- **GetX Services**: [pub.dev/packages/get](https://pub.dev/packages/get)
- **Flutter Documentation**: [flutter.dev/docs](https://flutter.dev/docs)

---

Feel free to fork and contribute to this repository as you follow along with the masterclass! 🚀

---

Happy Coding! 🎉
