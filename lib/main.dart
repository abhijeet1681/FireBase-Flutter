import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:db_connection/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCAyKeYBdDjdTdHTTRsiwWvtReNgorWQtE",
      authDomain: "fir-d6084.firebaseapp.com",
      projectId: "fir-d6084",
      storageBucket: "fir-d6084.firebasestorage.app",
      messagingSenderId: "1024401220777",
      appId: "1:1024401220777:web:f9be99c04faf0d503375b8",
      databaseURL:
          "https://fir-d6084-default-rtdb.firebaseio.com",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth & Database Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const LoginPage(),
    );
  }
}
