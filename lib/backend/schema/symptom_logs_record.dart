import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SymptomLogsRecord extends FirestoreRecord {
  SymptomLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "mood" field.
  String? _mood;
  String get mood => _mood ?? '';
  bool hasMood() => _mood != null;

  // "hotFlashes" field.
  int? _hotFlashes;
  int get hotFlashes => _hotFlashes ?? 0;
  bool hasHotFlashes() => _hotFlashes != null;

  // "sleepQuality" field.
  int? _sleepQuality;
  int get sleepQuality => _sleepQuality ?? 0;
  bool hasSleepQuality() => _sleepQuality != null;

  // "energyLevel" field.
  int? _energyLevel;
  int get energyLevel => _energyLevel ?? 0;
  bool hasEnergyLevel() => _energyLevel != null;

  // "nightSweats" field.
  bool? _nightSweats;
  bool get nightSweats => _nightSweats ?? false;
  bool hasNightSweats() => _nightSweats != null;

  // "brainFog" field.
  bool? _brainFog;
  bool get brainFog => _brainFog ?? false;
  bool hasBrainFog() => _brainFog != null;

  // "fatigue" field.
  bool? _fatigue;
  bool get fatigue => _fatigue ?? false;
  bool hasFatigue() => _fatigue != null;

  // "headache" field.
  bool? _headache;
  bool get headache => _headache ?? false;
  bool hasHeadache() => _headache != null;

  // "bloating" field.
  bool? _bloating;
  bool get bloating => _bloating ?? false;
  bool hasBloating() => _bloating != null;

  // "anxiety" field.
  bool? _anxiety;
  bool get anxiety => _anxiety ?? false;
  bool hasAnxiety() => _anxiety != null;

  // "intensity" field.
  String? _intensity;
  String get intensity => _intensity ?? '';
  bool hasIntensity() => _intensity != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _mood = snapshotData['mood'] as String?;
    _hotFlashes = castToType<int>(snapshotData['hotFlashes']);
    _sleepQuality = castToType<int>(snapshotData['sleepQuality']);
    _energyLevel = castToType<int>(snapshotData['energyLevel']);
    _nightSweats = snapshotData['nightSweats'] as bool?;
    _brainFog = snapshotData['brainFog'] as bool?;
    _fatigue = snapshotData['fatigue'] as bool?;
    _headache = snapshotData['headache'] as bool?;
    _bloating = snapshotData['bloating'] as bool?;
    _anxiety = snapshotData['anxiety'] as bool?;
    _intensity = snapshotData['intensity'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symptomLogs');

  static Stream<SymptomLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SymptomLogsRecord.fromSnapshot(s));

  static Future<SymptomLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SymptomLogsRecord.fromSnapshot(s));

  static SymptomLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SymptomLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SymptomLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SymptomLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SymptomLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SymptomLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSymptomLogsRecordData({
  String? userId,
  DateTime? date,
  String? mood,
  int? hotFlashes,
  int? sleepQuality,
  int? energyLevel,
  bool? nightSweats,
  bool? brainFog,
  bool? fatigue,
  bool? headache,
  bool? bloating,
  bool? anxiety,
  String? intensity,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'date': date,
      'mood': mood,
      'hotFlashes': hotFlashes,
      'sleepQuality': sleepQuality,
      'energyLevel': energyLevel,
      'nightSweats': nightSweats,
      'brainFog': brainFog,
      'fatigue': fatigue,
      'headache': headache,
      'bloating': bloating,
      'anxiety': anxiety,
      'intensity': intensity,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SymptomLogsRecordDocumentEquality implements Equality<SymptomLogsRecord> {
  const SymptomLogsRecordDocumentEquality();

  @override
  bool equals(SymptomLogsRecord? e1, SymptomLogsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.date == e2?.date &&
        e1?.mood == e2?.mood &&
        e1?.hotFlashes == e2?.hotFlashes &&
        e1?.sleepQuality == e2?.sleepQuality &&
        e1?.energyLevel == e2?.energyLevel &&
        e1?.nightSweats == e2?.nightSweats &&
        e1?.brainFog == e2?.brainFog &&
        e1?.fatigue == e2?.fatigue &&
        e1?.headache == e2?.headache &&
        e1?.bloating == e2?.bloating &&
        e1?.anxiety == e2?.anxiety &&
        e1?.intensity == e2?.intensity &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(SymptomLogsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.date,
        e?.mood,
        e?.hotFlashes,
        e?.sleepQuality,
        e?.energyLevel,
        e?.nightSweats,
        e?.brainFog,
        e?.fatigue,
        e?.headache,
        e?.bloating,
        e?.anxiety,
        e?.intensity,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is SymptomLogsRecord;
}
