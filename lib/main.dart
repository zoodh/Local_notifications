import 'package:flutter/material.dart';
import 'flutter_notification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp ({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    NotificationService().showNotification(
                      title: 'اذكار الصباح',
                      body: 'نذكرك بموعد الاذكار',
                    );
                  },
                  child: Text("zood"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}