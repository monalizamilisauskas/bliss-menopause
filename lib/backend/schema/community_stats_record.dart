import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityStatsRecord extends FirestoreRecord {
  CommunityStatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "members" field.
  int? _members;
  int get members => _members ?? 0;
  bool hasMembers() => _members != null;

  // "onlineNow" field.
  int? _onlineNow;
  int get onlineNow => _onlineNow ?? 0;
  bool hasOnlineNow() => _onlineNow != null;

  // "postsToday" field.
  int? _postsToday;
  int get postsToday => _postsToday ?? 0;
  bool hasPostsToday() => _postsToday != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _members = castToType<int>(snapshotData['members']);
    _onlineNow = castToType<int>(snapshotData['onlineNow']);
    _postsToday = castToType<int>(snapshotData['postsToday']);
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('communityStats');

  static Stream<CommunityStatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityStatsRecord.fromSnapshot(s));

  static Future<CommunityStatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityStatsRecord.fromSnapshot(s));

  static CommunityStatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityStatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityStatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityStatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityStatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityStatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityStatsRecordData({
  int? members,
  int? onlineNow,
  int? postsToday,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'members': members,
      'onlineNow': onlineNow,
      'postsToday': postsToday,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityStatsRecordDocumentEquality
    implements Equality<CommunityStatsRecord> {
  const CommunityStatsRecordDocumentEquality();

  @override
  bool equals(CommunityStatsRecord? e1, CommunityStatsRecord? e2) {
    return e1?.members == e2?.members &&
        e1?.onlineNow == e2?.onlineNow &&
        e1?.postsToday == e2?.postsToday &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(CommunityStatsRecord? e) => const ListEquality()
      .hash([e?.members, e?.onlineNow, e?.postsToday, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is CommunityStatsRecord;
}
