import 'package:flutter/material.dart';
import 'package:notifications/notification_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationService().showNotification(
              title: "Oie",
              body: "Essa é a",
            );
          },
          child: const Text("Enviar Notificação"),
        ),
      ),
    );
  }
}
