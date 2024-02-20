import 'package:cloud_firestore/cloud_firestore.dart';

class MoistureLevelModel {
  final String id;
  final String label;
  final double value;
  final DateTime createdAt;

  MoistureLevelModel(
      {required this.id,
      required this.label,
      required this.value,
      required this.createdAt});

  factory MoistureLevelModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return MoistureLevelModel(
      id: doc.id,
      label: data['label'],
      value: double.parse(data['level'].toString()),
      createdAt: (data['date'] as Timestamp).toDate(),
    );
  }

  double get level => value;
}
