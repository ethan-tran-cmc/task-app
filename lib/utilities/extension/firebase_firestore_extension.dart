import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFireStorageExtension on FirebaseFirestore {
  CollectionReference tasksNode() => collection('tasks');
}
