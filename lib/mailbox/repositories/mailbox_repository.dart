// coverage:ignore-file

import '../models/mailbox_message.dart';

class MailboxRepository {
  MailboxRepository();

  Future<List<MailboxMessage>> load() async {
    return Future.value([
      MailboxMessage(
        id: "1",
        title: "Miete wird eingezogen",
        createdAt: DateTime(2024, 2, 20),
        readAt: DateTime(2024, 2, 21),
      ),
      MailboxMessage(
        id: "2",
        title: "Neuigkeiten zu Ihrer Anfrage",
        createdAt: DateTime(2024, 2, 23),
      ),
      MailboxMessage(
        id: "3",
        title: "Termin: Kontrolle der Feuermelder im Gebäude Tondernstraße 9",
        createdAt: DateTime(2024, 2, 25),
      ),
    ]);
  }
  //   try {

  //     final response = await ApiService.getInstance().apiClient.mailboxGet();
  //     return response.body?.map((dto) => MailboxMessage.fromDto(dto)).toList() ?? [];
  //   } catch (e) {
  //     print("error: $e");
  //     return [];
  //   }
  // }
}
