# Flutter Auth App 🚀

A simple **Flutter authentication app** built with:
- **Riverpod** for state management
- **Hive** for local database storage
- **Google Fonts** for custom typography  

After logging in or signing up, users can see a personalized home screen with:
- A welcome message showing their **username**
- A **counter** with increment, decrement, and reset functionality
- A **logout button** to return to the login/signup screen  

---

## ✨ Features

- ✅ User **Sign Up** with Hive local database  
- ✅ User **Login** with validation  
- ✅ State management handled using **Riverpod**  
- ✅ Persists user credentials locally  
- ✅ Displays **welcome message with username**  
- ✅ Counter with **Increment / Decrement / Reset** buttons  
- ✅ **Logout** support  
- ✅ Transparent AppBar and modern UI  

---

## 📂 Project Structure

```
lib/
│
├── main.dart
├── auth/
│   ├── auth_screen.dart
│   └── auth_notifier.dart
├── home_screen.dart
