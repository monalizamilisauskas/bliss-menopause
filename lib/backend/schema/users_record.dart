import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "totalDaysLogged" field.
  int? _totalDaysLogged;
  int get totalDaysLogged => _totalDaysLogged ?? 0;
  bool hasTotalDaysLogged() => _totalDaysLogged != null;

  // "bestStreak" field.
  int? _bestStreak;
  int get bestStreak => _bestStreak ?? 0;
  bool hasBestStreak() => _bestStreak != null;

  // "consistencyPercent" field.
  int? _consistencyPercent;
  int get consistencyPercent => _consistencyPercent ?? 0;
  bool hasConsistencyPercent() => _consistencyPercent != null;

  // "remindersEnabled" field.
  bool? _remindersEnabled;
  bool get remindersEnabled => _remindersEnabled ?? false;
  bool hasRemindersEnabled() => _remindersEnabled != null;

  // "reminderFrequency" field.
  String? _reminderFrequency;
  String get reminderFrequency => _reminderFrequency ?? '';
  bool hasReminderFrequency() => _reminderFrequency != null;

  // "reminderTime" field.
  DateTime? _reminderTime;
  DateTime? get reminderTime => _reminderTime;
  bool hasReminderTime() => _reminderTime != null;

  // "reminderDays" field.
  List<String>? _reminderDays;
  List<String> get reminderDays => _reminderDays ?? const [];
  bool hasReminderDays() => _reminderDays != null;

  // "reminderMessage" field.
  String? _reminderMessage;
  String get reminderMessage => _reminderMessage ?? '';
  bool hasReminderMessage() => _reminderMessage != null;

  // "lastSeen" field.
  DateTime? _lastSeen;
  DateTime? get lastSeen => _lastSeen;
  bool hasLastSeen() => _lastSeen != null;

  // "hormonalProfileUpdatedAt" field.
  DateTime? _hormonalProfileUpdatedAt;
  DateTime? get hormonalProfileUpdatedAt => _hormonalProfileUpdatedAt;
  bool hasHormonalProfileUpdatedAt() => _hormonalProfileUpdatedAt != null;

  // "onboarding_complete" field.
  bool? _onboardingComplete;
  bool get onboardingComplete => _onboardingComplete ?? false;
  bool hasOnboardingComplete() => _onboardingComplete != null;

  // "topSymptoms" field.
  List<String>? _topSymptoms;
  List<String> get topSymptoms => _topSymptoms ?? const [];
  bool hasTopSymptoms() => _topSymptoms != null;

  // "wellnessRoutine" field.
  String? _wellnessRoutine;
  String get wellnessRoutine => _wellnessRoutine ?? '';
  bool hasWellnessRoutine() => _wellnessRoutine != null;

  // "mainGoal" field.
  String? _mainGoal;
  String get mainGoal => _mainGoal ?? '';
  bool hasMainGoal() => _mainGoal != null;

  // "subscriptionTier" field.
  String? _subscriptionTier;
  String get subscriptionTier => _subscriptionTier ?? '';
  bool hasSubscriptionTier() => _subscriptionTier != null;

  // "exportRequestedAt" field.
  DateTime? _exportRequestedAt;
  DateTime? get exportRequestedAt => _exportRequestedAt;
  bool hasExportRequestedAt() => _exportRequestedAt != null;

  // "exportStatus" field.
  String? _exportStatus;
  String get exportStatus => _exportStatus ?? '';
  bool hasExportStatus() => _exportStatus != null;

  // "twoFactorEnabled" field.
  bool? _twoFactorEnabled;
  bool get twoFactorEnabled => _twoFactorEnabled ?? false;
  bool hasTwoFactorEnabled() => _twoFactorEnabled != null;

  // "visibilityShowName" field.
  bool? _visibilityShowName;
  bool get visibilityShowName => _visibilityShowName ?? false;
  bool hasVisibilityShowName() => _visibilityShowName != null;

  // "visibilityShowAge" field.
  bool? _visibilityShowAge;
  bool get visibilityShowAge => _visibilityShowAge ?? false;
  bool hasVisibilityShowAge() => _visibilityShowAge != null;

  // "visibilityShowSymptoms" field.
  bool? _visibilityShowSymptoms;
  bool get visibilityShowSymptoms => _visibilityShowSymptoms ?? false;
  bool hasVisibilityShowSymptoms() => _visibilityShowSymptoms != null;

  // "visibilityShowProgress" field.
  bool? _visibilityShowProgress;
  bool get visibilityShowProgress => _visibilityShowProgress ?? false;
  bool hasVisibilityShowProgress() => _visibilityShowProgress != null;

  // "dateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "blissInsight" field.
  String? _blissInsight;
  String get blissInsight => _blissInsight ?? '';
  bool hasBlissInsight() => _blissInsight != null;

  // "blissInsightDate" field.
  DateTime? _blissInsightDate;
  DateTime? get blissInsightDate => _blissInsightDate;
  bool hasBlissInsightDate() => _blissInsightDate != null;

  // "insightsCount" field.
  int? _insightsCount;
  int get insightsCount => _insightsCount ?? 0;
  bool hasInsightsCount() => _insightsCount != null;

  // "lastOpenedAt" field.
  DateTime? _lastOpenedAt;
  DateTime? get lastOpenedAt => _lastOpenedAt;
  bool hasLastOpenedAt() => _lastOpenedAt != null;

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
    _totalDaysLogged = castToType<int>(snapshotData['totalDaysLogged']);
    _bestStreak = castToType<int>(snapshotData['bestStreak']);
    _consistencyPercent = castToType<int>(snapshotData['consistencyPercent']);
    _remindersEnabled = snapshotData['remindersEnabled'] as bool?;
    _reminderFrequency = snapshotData['reminderFrequency'] as String?;
    _reminderTime = snapshotData['reminderTime'] as DateTime?;
    _reminderDays = getDataList(snapshotData['reminderDays']);
    _reminderMessage = snapshotData['reminderMessage'] as String?;
    _lastSeen = snapshotData['lastSeen'] as DateTime?;
    _hormonalProfileUpdatedAt =
        snapshotData['hormonalProfileUpdatedAt'] as DateTime?;
    _onboardingComplete = snapshotData['onboarding_complete'] as bool?;
    _topSymptoms = getDataList(snapshotData['topSymptoms']);
    _wellnessRoutine = snapshotData['wellnessRoutine'] as String?;
    _mainGoal = snapshotData['mainGoal'] as String?;
    _subscriptionTier = snapshotData['subscriptionTier'] as String?;
    _exportRequestedAt = snapshotData['exportRequestedAt'] as DateTime?;
    _exportStatus = snapshotData['exportStatus'] as String?;
    _twoFactorEnabled = snapshotData['twoFactorEnabled'] as bool?;
    _visibilityShowName = snapshotData['visibilityShowName'] as bool?;
    _visibilityShowAge = snapshotData['visibilityShowAge'] as bool?;
    _visibilityShowSymptoms = snapshotData['visibilityShowSymptoms'] as bool?;
    _visibilityShowProgress = snapshotData['visibilityShowProgress'] as bool?;
    _dateOfBirth = snapshotData['dateOfBirth'] as DateTime?;
    _blissInsight = snapshotData['blissInsight'] as String?;
    _blissInsightDate = snapshotData['blissInsightDate'] as DateTime?;
    _insightsCount = castToType<int>(snapshotData['insightsCount']);
    _lastOpenedAt = snapshotData['lastOpenedAt'] as DateTime?;
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
  int? totalDaysLogged,
  int? bestStreak,
  int? consistencyPercent,
  bool? remindersEnabled,
  String? reminderFrequency,
  DateTime? reminderTime,
  String? reminderMessage,
  DateTime? lastSeen,
  DateTime? hormonalProfileUpdatedAt,
  bool? onboardingComplete,
  String? wellnessRoutine,
  String? mainGoal,
  String? subscriptionTier,
  DateTime? exportRequestedAt,
  String? exportStatus,
  bool? twoFactorEnabled,
  bool? visibilityShowName,
  bool? visibilityShowAge,
  bool? visibilityShowSymptoms,
  bool? visibilityShowProgress,
  DateTime? dateOfBirth,
  String? blissInsight,
  DateTime? blissInsightDate,
  int? insightsCount,
  DateTime? lastOpenedAt,
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
      'totalDaysLogged': totalDaysLogged,
      'bestStreak': bestStreak,
      'consistencyPercent': consistencyPercent,
      'remindersEnabled': remindersEnabled,
      'reminderFrequency': reminderFrequency,
      'reminderTime': reminderTime,
      'reminderMessage': reminderMessage,
      'lastSeen': lastSeen,
      'hormonalProfileUpdatedAt': hormonalProfileUpdatedAt,
      'onboarding_complete': onboardingComplete,
      'wellnessRoutine': wellnessRoutine,
      'mainGoal': mainGoal,
      'subscriptionTier': subscriptionTier,
      'exportRequestedAt': exportRequestedAt,
      'exportStatus': exportStatus,
      'twoFactorEnabled': twoFactorEnabled,
      'visibilityShowName': visibilityShowName,
      'visibilityShowAge': visibilityShowAge,
      'visibilityShowSymptoms': visibilityShowSymptoms,
      'visibilityShowProgress': visibilityShowProgress,
      'dateOfBirth': dateOfBirth,
      'blissInsight': blissInsight,
      'blissInsightDate': blissInsightDate,
      'insightsCount': insightsCount,
      'lastOpenedAt': lastOpenedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
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
        e1?.streak == e2?.streak &&
        e1?.totalDaysLogged == e2?.totalDaysLogged &&
        e1?.bestStreak == e2?.bestStreak &&
        e1?.consistencyPercent == e2?.consistencyPercent &&
        e1?.remindersEnabled == e2?.remindersEnabled &&
        e1?.reminderFrequency == e2?.reminderFrequency &&
        e1?.reminderTime == e2?.reminderTime &&
        listEquality.equals(e1?.reminderDays, e2?.reminderDays) &&
        e1?.reminderMessage == e2?.reminderMessage &&
        e1?.lastSeen == e2?.lastSeen &&
        e1?.hormonalProfileUpdatedAt == e2?.hormonalProfileUpdatedAt &&
        e1?.onboardingComplete == e2?.onboardingComplete &&
        listEquality.equals(e1?.topSymptoms, e2?.topSymptoms) &&
        e1?.wellnessRoutine == e2?.wellnessRoutine &&
        e1?.mainGoal == e2?.mainGoal &&
        e1?.subscriptionTier == e2?.subscriptionTier &&
        e1?.exportRequestedAt == e2?.exportRequestedAt &&
        e1?.exportStatus == e2?.exportStatus &&
        e1?.twoFactorEnabled == e2?.twoFactorEnabled &&
        e1?.visibilityShowName == e2?.visibilityShowName &&
        e1?.visibilityShowAge == e2?.visibilityShowAge &&
        e1?.visibilityShowSymptoms == e2?.visibilityShowSymptoms &&
        e1?.visibilityShowProgress == e2?.visibilityShowProgress &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.blissInsight == e2?.blissInsight &&
        e1?.blissInsightDate == e2?.blissInsightDate &&
        e1?.insightsCount == e2?.insightsCount &&
        e1?.lastOpenedAt == e2?.lastOpenedAt;
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
        e?.streak,
        e?.totalDaysLogged,
        e?.bestStreak,
        e?.consistencyPercent,
        e?.remindersEnabled,
        e?.reminderFrequency,
        e?.reminderTime,
        e?.reminderDays,
        e?.reminderMessage,
        e?.lastSeen,
        e?.hormonalProfileUpdatedAt,
        e?.onboardingComplete,
        e?.topSymptoms,
        e?.wellnessRoutine,
        e?.mainGoal,
        e?.subscriptionTier,
        e?.exportRequestedAt,
        e?.exportStatus,
        e?.twoFactorEnabled,
        e?.visibilityShowName,
        e?.visibilityShowAge,
        e?.visibilityShowSymptoms,
        e?.visibilityShowProgress,
        e?.dateOfBirth,
        e?.blissInsight,
        e?.blissInsightDate,
        e?.insightsCount,
        e?.lastOpenedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
