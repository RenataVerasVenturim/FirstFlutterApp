import 'package:authentication/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as ui;
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'src/app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

ui.FirebaseUIAuth.configureProviders([
  ui.EmailAuthProvider(),
]);
await auth.FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
await auth.FirebaseAuth.instance.signOut();


  runApp(const AuthApp());
}
