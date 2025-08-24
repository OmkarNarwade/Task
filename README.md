# flutter_application_task

A simple Flutter authentication app with Riverpod state management and Hive local storage.
Users can sign up, log in, log out, and after authentication land on a counter screen with increment, decrement, and reset actions.

✨ Features

✅ User sign up & login with username/password

✅ Local persistence using Hive 

✅ State management using Riverpod

✅ Beautiful UI with Google Fonts

✅ Home screen with counter functionality:

   -Increment (+1)
   -Decrement (-1)
   -Reset (0)

✅ Logout option in the AppBar

📂 Project Structure
lib/
│
├── main.dart                # Entry point
│
├── auth/
│   ├── auth_screen.dart      # Login / SignUp UI
│   └── auth_notifier.dart    # Authentication logic (Riverpod + Hive)
│
├── home_screen.dart          # Home page with counter + logout

📦 Dependencies

The app uses the following major packages:

flutter_riverpod
 → State management

hive
 & hive_flutter
 → Local storage

google_fonts
 → Beautiful typography

