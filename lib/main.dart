import 'package:flutter/material.dart';
import 'cardgame.dart'; // นำเข้าไฟล์ cardgame.dart ของคุณ

void main() {
  runApp(const MyApp()); // เรียกใช้ MyApp แทน CardGameApp โดยตรง
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Main Screen',
      home: MainScreen(), // กำหนด MainScreen เป็นหน้าจอเริ่มต้น
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: SizedBox(
          width: 200, // กำหนดความกว้างของปุ่ม
          height: 100, // กำหนดความสูงของปุ่ม
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardGameApp()),
              );
            },
            style: ElevatedButton.styleFrom(
              textStyle:
                  const TextStyle(fontSize: 24), // ปรับขนาดตัวอักษรในปุ่ม
            ),
            child: const Text('Go to Card Game'),
          ),
        ),
      ),
    );
  }
}
