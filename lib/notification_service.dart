import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  final bool _isInitialized = false;

  bool get isInitialized => _isInitialized;

  // Inicialização
  Future<void> initNotification() async {
    if (_isInitialized) return; // Previne a reinicialização
    // prepara as configurações de inicialização do android
    const initSettingsAndroid =
        AndroidInitializationSettings('@assets/images/notification.png');

    // prepara as configurações de inicialização do iOS
    const initSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    //Configuração de inicialização
    const initSettings = InitializationSettings(
        android: initSettingsAndroid, iOS: initSettingsIOS);

    // Inicializar o plugin!
    await notificationsPlugin.initialize(initSettings);
  }

  // Detalhes de config das Notificação
  NotificationDetails notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_channel_id',
        'Daily Notifications',
        channelDescription: 'Daily Notification Channel',
        importance: Importance.max,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(),
    );
  }

  // Mostra a notificação
  Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
  }) async {
    return notificationsPlugin.show(
      id,
      title,
      body,
      const NotificationDetails(),
    );
  }
  // On Tap Notificação
}
