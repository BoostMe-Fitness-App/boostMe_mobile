import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  final String commentId;

  Comment({required this.commentId});
  static Comment fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Comment(commentId: snapshot["commentId"]);
  }

  Map<String, dynamic> toJson() => {
        "commentId": commentId,
      };
}
