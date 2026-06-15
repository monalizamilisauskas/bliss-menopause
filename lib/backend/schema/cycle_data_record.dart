import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CycleDataRecord extends FirestoreRecord {
  CycleDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "avgCycleDays" field.
  int? _avgCycleDays;
  int get avgCycleDays => _avgCycleDays ?? 0;
  bool hasAvgCycleDays() => _avgCycleDays != null;

  // "periodDays" field.
  int? _periodDays;
  int get periodDays => _periodDays ?? 0;
  bool hasPeriodDays() => _periodDays != null;

  // "ovulationDay" field.
  int? _ovulationDay;
  int get ovulationDay => _ovulationDay ?? 0;
  bool hasOvulationDay() => _ovulationDay != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _avgCycleDays = castToType<int>(snapshotData['avgCycleDays']);
    _periodDays = castToType<int>(snapshotData['periodDays']);
    _ovulationDay = castToType<int>(snapshotData['ovulationDay']);
    _userId = snapshotData['userId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cycleData');

  static Stream<CycleDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CycleDataRecord.fromSnapshot(s));

  static Future<CycleDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CycleDataRecord.fromSnapshot(s));

  static CycleDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CycleDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CycleDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CycleDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CycleDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CycleDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCycleDataRecordData({
  int? avgCycleDays,
  int? periodDays,
  int? ovulationDay,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'avgCycleDays': avgCycleDays,
      'periodDays': periodDays,
      'ovulationDay': ovulationDay,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CycleDataRecordDocumentEquality implements Equality<CycleDataRecord> {
  const CycleDataRecordDocumentEquality();

  @override
  bool equals(CycleDataRecord? e1, CycleDataRecord? e2) {
    return e1?.avgCycleDays == e2?.avgCycleDays &&
        e1?.periodDays == e2?.periodDays &&
        e1?.ovulationDay == e2?.ovulationDay &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CycleDataRecord? e) => const ListEquality()
      .hash([e?.avgCycleDays, e?.periodDays, e?.ovulationDay, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is CycleDataRecord;
}
