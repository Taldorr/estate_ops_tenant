class MailboxMessage {
  const MailboxMessage({
    required this.id,
    required this.title,
    required this.createdAt,
    this.readAt,
  });

  factory MailboxMessage.fromJson(Map<String, dynamic> json) => MailboxMessage(
        id: json['id'] as String,
        title: json['title'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        readAt: json['read_at'] != null ? DateTime.parse(json['read_at'] as String) : null,
      );

  final String id;

  final String title;

  final DateTime createdAt;
  final DateTime? readAt;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'created_at': createdAt.toIso8601String(),
        'read_at': readAt?.toIso8601String(),
      };

  MailboxMessage copyWith({String? id, String? title, DateTime? createdAt, DateTime? readAt}) =>
      MailboxMessage(
        id: id ?? this.id,
        title: title ?? this.title,
        createdAt: createdAt ?? this.createdAt,
        readAt: readAt ?? this.readAt,
      );
}
