# Flutter GetX Masterclass: Chapter 3 - Dependency Management with GetX

This repository contains the code for **Chapter 3** of the Flutter GetX Masterclass. In this chapter, we focus on **dependency management** using GetX. You'll learn how to efficiently manage and inject dependencies like services and controllers across different parts of your Flutter app.

## 📹 Watch the Tutorial on YouTube

Follow along with the tutorial video for a hands-on experience with dependency management in GetX!

[![Watch on YouTube](https://img.youtube.com/vi/X7EjiQEmrBI/0.jpg)](https://www.youtube.com/watch?v=X7EjiQEmrBI&t=1068s)

🔗 **[Watch the full tutorial on YouTube](https://www.youtube.com/watch?v=X7EjiQEmrBI)**

---

## 📝 Chapter Overview

In this chapter, you'll learn:
1. How to register and inject dependencies in GetX using **Bindings**.
2. The difference between **Get.put()**, **Get.lazyPut()**, and **Get.find()**.
3. How to manage controller lifecycles with GetX.
4. How to use dependency injection to manage services like cart and product management efficiently.

---

## 📂 Folder Structure

Here’s the updated folder structure after adding dependency management and services:

```
lib/
│
├── app/
│   ├── modules/
│   │   ├── product/
│   │   │   ├── controllers/
│   │   │   │   └── product_controller.dart
│   │   │   │   └── cart_controller.dart
│   │   │   ├── views/
│   │   │   │   └── product_view.dart
│   │   │   │   └── product_details_view.dart
│   │   │   │   └── cart_view.dart
│   │   │   └── models/
│   │   │       └── product_model.dart
│   ├── services/
│   │   └── cart_service.dart
│   └── routes/
│       └── app_pages.dart
│       └── app_routes.dart
└── main.dart
```

---

## 🧑‍💻 How to Run the App

1. Clone the repository:
    ```bash
    git clone -b Chapter-3 https://github.com/Amanullahgit/flutter-getx-real-world-application.git
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

## 🛠️ Key GetX Concepts in This Chapter

- **Dependency Injection with GetX**: Using `Bindings` for organizing and injecting controllers and services.
- **Get.put vs Get.lazyPut**: Understand the difference between eagerly and lazily injecting dependencies.
- **Lifecycle Management**: Managing the lifecycle of controllers and services, ensuring clean memory usage.

---

## 🔗 Useful Links

- **GetX Package**: [pub.dev/packages/get](https://pub.dev/packages/get)
- **Flutter Documentation**: [flutter.dev/docs](https://flutter.dev/docs)

---

Contributions are welcome! Fork this repo and make it even better. 🙌

---

Happy Coding! 🎉
