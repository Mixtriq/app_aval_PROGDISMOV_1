import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;

Future<void> sendNotification(String token, String title, String body) async {
  const String serverKey = "AIzaSyDiQx-x-pKAS__IgLoa3loP3zUQZX1VjOU";
  const String fcmUrl = "https://fcm.googleapis.com/fcm/send";

  final response = await http.post(
    Uri.parse(fcmUrl),
    headers: {
      "Content-Type": "application/json",
      "Authorization": "key=$serverKey",
    },
    body: jsonEncode({
      "to": token,
      "notification": {
        "title": title,
        "body": body,
      },
    }),
  );

  if (response.statusCode == 200) {
    print("Notificação enviada com sucesso!");
  } else {
    print("Erro ao enviar notificação: ${response.body}");
  }
}

Future<void> notifyUser(String userId, String movieTitle) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("users/$userId/fcmToken");
  DatabaseEvent event = await ref.once();
  String? token = event.snapshot.value as String?;

  if (token != null) {
    sendNotification(token, "Filme Adicionado!", "O filme '$movieTitle' foi adicionado à sua watchlist.");
  } else {
    print("Usuário sem token FCM.");
  }
}
