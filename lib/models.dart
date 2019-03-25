import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  final String username;
  final String message;
  final DocumentReference reference;

  Chat.fromMap(Map<String, dynamic> data, {this.reference})
      : username = data['username'],
        message = data['text'];

  Chat.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Chat<$username:$message>";
}
