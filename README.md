# Flutter GetX Masterclass: Chapter 1 - Setting Up GetX in Your Flutter Project

This repository contains the code for **Chapter 1** of the Flutter GetX Masterclass. In this chapter, we cover the installation of GetX, setting up a scalable folder structure, and creating a simple product listing app with navigation to a product details page.

## 📹 Watch the Tutorial on YouTube

Follow the step-by-step tutorial in the video for a hands-on experience!

[![Watch on YouTube](https://img.youtube.com/vi/X7EjiQEmrBI/0.jpg)](https://www.youtube.com/watch?v=X7EjiQEmrBI?t=36)

🔗 **[Watch the full tutorial on YouTube](https://www.youtube.com/watch?v=X7EjiQEmrBI)**

---

## 📝 Chapter Overview

In this chapter, you'll learn:
1. How to install and set up GetX in a Flutter project.
2. How to structure your project for scalability using MVC principles.
3. How to create a product list and navigate to a product details page using GetX for routing.

---

## 📂 Folder Structure

Here’s the folder structure we’ve set up in this chapter:

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
│   │   │   └── models/
│   │   │       └── product_model.dart
│   └── routes/
│       └── app_pages.dart
│       └── app_routes.dart
└── main.dart
```

---

## 🧑‍💻 How to Run the App

1. Clone the repository:
    ```bash
    git clone git clone -b Chapter-1 https://github.com/Amanullahgit/flutter-getx-real-world-application.git
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

Feel free to fork and contribute to this repository!

---

## 🔗 Useful Links

- **GetX Package**: [pub.dev/packages/get](https://pub.dev/packages/get)
- **Flutter Documentation**: [flutter.dev/docs](https://flutter.dev/docs)

---

Happy Coding! 🎉
