import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

class AuthState {
  final bool isLoggedIn;
  final String? message;

  const AuthState({this.isLoggedIn = false, this.message});
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState());

  final Box _usersBox = Hive.box('users');

  void signUp(String username, String password) {
    if (_usersBox.containsKey(username)) {
      state = const AuthState(message: "User already exists.");
      return;
    }
    _usersBox.put(username, password);
    state = const AuthState(message: "Account created! Please login.");
  }

  void login(String username, String password) {
    if (_usersBox.containsKey(username)) {
      if (_usersBox.get(username) == password) {
        state = const AuthState(isLoggedIn: true, message: "Login successful.");
      } else {
        state = const AuthState(message: "Invalid password.");
      }
    } else {
      state = const AuthState(message: "User not found.");
    }
  }

  void logout() {
    state = const AuthState(isLoggedIn: false, message: "Logged out.");
  }
}
