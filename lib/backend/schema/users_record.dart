import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "currentPhase" field.
  String? _currentPhase;
  String get currentPhase => _currentPhase ?? '';
  bool hasCurrentPhase() => _currentPhase != null;

  // "hormonalBalance" field.
  String? _hormonalBalance;
  String get hormonalBalance => _hormonalBalance ?? '';
  bool hasHormonalBalance() => _hormonalBalance != null;

  // "estrogenLevel" field.
  int? _estrogenLevel;
  int get estrogenLevel => _estrogenLevel ?? 0;
  bool hasEstrogenLevel() => _estrogenLevel != null;

  // "progesteroneLevel" field.
  int? _progesteroneLevel;
  int get progesteroneLevel => _progesteroneLevel ?? 0;
  bool hasProgesteroneLevel() => _progesteroneLevel != null;

  // "fshLevel" field.
  int? _fshLevel;
  int get fshLevel => _fshLevel ?? 0;
  bool hasFshLevel() => _fshLevel != null;

  // "streak" field.
  int? _streak;
  int get streak => _streak ?? 0;
  bool hasStreak() => _streak != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _currentPhase = snapshotData['currentPhase'] as String?;
    _hormonalBalance = snapshotData['hormonalBalance'] as String?;
    _estrogenLevel = castToType<int>(snapshotData['estrogenLevel']);
    _progesteroneLevel = castToType<int>(snapshotData['progesteroneLevel']);
    _fshLevel = castToType<int>(snapshotData['fshLevel']);
    _streak = castToType<int>(snapshotData['streak']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? currentPhase,
  String? hormonalBalance,
  int? estrogenLevel,
  int? progesteroneLevel,
  int? fshLevel,
  int? streak,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'currentPhase': currentPhase,
      'hormonalBalance': hormonalBalance,
      'estrogenLevel': estrogenLevel,
      'progesteroneLevel': progesteroneLevel,
      'fshLevel': fshLevel,
      'streak': streak,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.currentPhase == e2?.currentPhase &&
        e1?.hormonalBalance == e2?.hormonalBalance &&
        e1?.estrogenLevel == e2?.estrogenLevel &&
        e1?.progesteroneLevel == e2?.progesteroneLevel &&
        e1?.fshLevel == e2?.fshLevel &&
        e1?.streak == e2?.streak;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.currentPhase,
        e?.hormonalBalance,
        e?.estrogenLevel,
        e?.progesteroneLevel,
        e?.fshLevel,
        e?.streak
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
