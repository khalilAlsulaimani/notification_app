import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:notification_app/utilities.dart';

Future<void> createPlantFoodNotification() async {
  await AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: createUniqueId(),
          channelKey: "basic_channel",
          title:
              '${Emojis.money_money_bag + Emojis.plant_cactus} Buy Plant Food',
          body: 'Florist at 123 MainStreet has two in stock',
          //bigPicture: 'assets://assets/notification_map.png',

          notificationLayout: NotificationLayout.BigPicture));
}
