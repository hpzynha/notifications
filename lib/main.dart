import 'package:flutter/material.dart';
import 'package:notifications/home_page.dart';
import 'package:notifications/notification_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializar as notificações
  NotificationService().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
