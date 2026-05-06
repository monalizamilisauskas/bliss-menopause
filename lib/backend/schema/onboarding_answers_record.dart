import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingAnswersRecord extends FirestoreRecord {
  OnboardingAnswersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "menopauseStage" field.
  String? _menopauseStage;
  String get menopauseStage => _menopauseStage ?? '';
  bool hasMenopauseStage() => _menopauseStage != null;

  // "mainSymptom" field.
  String? _mainSymptom;
  String get mainSymptom => _mainSymptom ?? '';
  bool hasMainSymptom() => _mainSymptom != null;

  // "wellnessRoutine" field.
  String? _wellnessRoutine;
  String get wellnessRoutine => _wellnessRoutine ?? '';
  bool hasWellnessRoutine() => _wellnessRoutine != null;

  // "mainGoal" field.
  String? _mainGoal;
  String get mainGoal => _mainGoal ?? '';
  bool hasMainGoal() => _mainGoal != null;

  // "completedAt" field.
  DateTime? _completedAt;
  DateTime? get completedAt => _completedAt;
  bool hasCompletedAt() => _completedAt != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _menopauseStage = snapshotData['menopauseStage'] as String?;
    _mainSymptom = snapshotData['mainSymptom'] as String?;
    _wellnessRoutine = snapshotData['wellnessRoutine'] as String?;
    _mainGoal = snapshotData['mainGoal'] as String?;
    _completedAt = snapshotData['completedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('onboardingAnswers');

  static Stream<OnboardingAnswersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OnboardingAnswersRecord.fromSnapshot(s));

  static Future<OnboardingAnswersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => OnboardingAnswersRecord.fromSnapshot(s));

  static OnboardingAnswersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OnboardingAnswersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OnboardingAnswersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OnboardingAnswersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OnboardingAnswersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OnboardingAnswersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOnboardingAnswersRecordData({
  String? userId,
  String? menopauseStage,
  String? mainSymptom,
  String? wellnessRoutine,
  String? mainGoal,
  DateTime? completedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'menopauseStage': menopauseStage,
      'mainSymptom': mainSymptom,
      'wellnessRoutine': wellnessRoutine,
      'mainGoal': mainGoal,
      'completedAt': completedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class OnboardingAnswersRecordDocumentEquality
    implements Equality<OnboardingAnswersRecord> {
  const OnboardingAnswersRecordDocumentEquality();

  @override
  bool equals(OnboardingAnswersRecord? e1, OnboardingAnswersRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.menopauseStage == e2?.menopauseStage &&
        e1?.mainSymptom == e2?.mainSymptom &&
        e1?.wellnessRoutine == e2?.wellnessRoutine &&
        e1?.mainGoal == e2?.mainGoal &&
        e1?.completedAt == e2?.completedAt;
  }

  @override
  int hash(OnboardingAnswersRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.menopauseStage,
        e?.mainSymptom,
        e?.wellnessRoutine,
        e?.mainGoal,
        e?.completedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is OnboardingAnswersRecord;
}
