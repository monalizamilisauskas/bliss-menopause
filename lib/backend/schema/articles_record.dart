import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticlesRecord extends FirestoreRecord {
  ArticlesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "readTime" field.
  String? _readTime;
  String get readTime => _readTime ?? '';
  bool hasReadTime() => _readTime != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "isPublished" field.
  bool? _isPublished;
  bool get isPublished => _isPublished ?? false;
  bool hasIsPublished() => _isPublished != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "symptomTag" field.
  String? _symptomTag;
  String get symptomTag => _symptomTag ?? '';
  bool hasSymptomTag() => _symptomTag != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _tag = snapshotData['tag'] as String?;
    _readTime = snapshotData['readTime'] as String?;
    _content = snapshotData['content'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _isPublished = snapshotData['isPublished'] as bool?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _symptomTag = snapshotData['symptomTag'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticlesRecord.fromSnapshot(s));

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticlesRecord.fromSnapshot(s));

  static ArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticlesRecordData({
  String? title,
  String? tag,
  String? readTime,
  String? content,
  DateTime? createdAt,
  bool? isPublished,
  String? imageUrl,
  String? symptomTag,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'tag': tag,
      'readTime': readTime,
      'content': content,
      'createdAt': createdAt,
      'isPublished': isPublished,
      'imageUrl': imageUrl,
      'symptomTag': symptomTag,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticlesRecordDocumentEquality implements Equality<ArticlesRecord> {
  const ArticlesRecordDocumentEquality();

  @override
  bool equals(ArticlesRecord? e1, ArticlesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.tag == e2?.tag &&
        e1?.readTime == e2?.readTime &&
        e1?.content == e2?.content &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isPublished == e2?.isPublished &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.symptomTag == e2?.symptomTag;
  }

  @override
  int hash(ArticlesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.tag,
        e?.readTime,
        e?.content,
        e?.createdAt,
        e?.isPublished,
        e?.imageUrl,
        e?.symptomTag
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticlesRecord;
}
