import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/game_screen.dart';
import 'screens/result_screen.dart';
import 'providers/game_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CardGameApp());
}

class CardGameApp extends StatelessWidget {
  const CardGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameProvider(),
      child: MaterialApp(
        title: 'Climate Card Game',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'default',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/game': (context) => const GameScreen(),
          '/result': (context) => Consumer<GameProvider>(
                // ใช้ Consumer เพื่อเข้าถึง GameProvider
                builder: (context, gameProvider, _) => ResultScreen(
                  didPlayerWin: false, // หรือค่าเริ่มต้นอื่น ๆ ที่เหมาะสม
                  onExit: gameProvider.resetGame, // ส่งฟังก์ชัน resetGame
                ),
              ),
        },
      ),
    );
  }
}
