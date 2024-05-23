import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AmenititiesRecord extends FirestoreRecord {
  AmenititiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AC" field.
  bool? _ac;
  bool get ac => _ac ?? false;
  bool hasAc() => _ac != null;

  // "Pool" field.
  bool? _pool;
  bool get pool => _pool ?? false;
  bool hasPool() => _pool != null;

  // "Washer" field.
  bool? _washer;
  bool get washer => _washer ?? false;
  bool hasWasher() => _washer != null;

  // "Dryer" field.
  bool? _dryer;
  bool get dryer => _dryer ?? false;
  bool hasDryer() => _dryer != null;

  // "NightLife" field.
  bool? _nightLife;
  bool get nightLife => _nightLife ?? false;
  bool hasNightLife() => _nightLife != null;

  // "propertyRef" field.
  DocumentReference? _propertyRef;
  DocumentReference? get propertyRef => _propertyRef;
  bool hasPropertyRef() => _propertyRef != null;

  // "extraOutlets" field.
  bool? _extraOutlets;
  bool get extraOutlets => _extraOutlets ?? false;
  bool hasExtraOutlets() => _extraOutlets != null;

  // "Parking" field.
  bool? _parking;
  bool get parking => _parking ?? false;
  bool hasParking() => _parking != null;

  // "PetFriendly" field.
  bool? _petFriendly;
  bool get petFriendly => _petFriendly ?? false;
  bool hasPetFriendly() => _petFriendly != null;

  // "Internet" field.
  bool? _internet;
  bool get internet => _internet ?? false;
  bool hasInternet() => _internet != null;

  // "ComfortRoomsPriv" field.
  bool? _comfortRoomsPriv;
  bool get comfortRoomsPriv => _comfortRoomsPriv ?? false;
  bool hasComfortRoomsPriv() => _comfortRoomsPriv != null;

  // "ComfortRoomsPub" field.
  bool? _comfortRoomsPub;
  bool get comfortRoomsPub => _comfortRoomsPub ?? false;
  bool hasComfortRoomsPub() => _comfortRoomsPub != null;

  void _initializeFields() {
    _ac = snapshotData['AC'] as bool?;
    _pool = snapshotData['Pool'] as bool?;
    _washer = snapshotData['Washer'] as bool?;
    _dryer = snapshotData['Dryer'] as bool?;
    _nightLife = snapshotData['NightLife'] as bool?;
    _propertyRef = snapshotData['propertyRef'] as DocumentReference?;
    _extraOutlets = snapshotData['extraOutlets'] as bool?;
    _parking = snapshotData['Parking'] as bool?;
    _petFriendly = snapshotData['PetFriendly'] as bool?;
    _internet = snapshotData['Internet'] as bool?;
    _comfortRoomsPriv = snapshotData['ComfortRoomsPriv'] as bool?;
    _comfortRoomsPub = snapshotData['ComfortRoomsPub'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('amenitities');

  static Stream<AmenititiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AmenititiesRecord.fromSnapshot(s));

  static Future<AmenititiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AmenititiesRecord.fromSnapshot(s));

  static AmenititiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AmenititiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AmenititiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AmenititiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AmenititiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AmenititiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAmenititiesRecordData({
  bool? ac,
  bool? pool,
  bool? washer,
  bool? dryer,
  bool? nightLife,
  DocumentReference? propertyRef,
  bool? extraOutlets,
  bool? parking,
  bool? petFriendly,
  bool? internet,
  bool? comfortRoomsPriv,
  bool? comfortRoomsPub,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AC': ac,
      'Pool': pool,
      'Washer': washer,
      'Dryer': dryer,
      'NightLife': nightLife,
      'propertyRef': propertyRef,
      'extraOutlets': extraOutlets,
      'Parking': parking,
      'PetFriendly': petFriendly,
      'Internet': internet,
      'ComfortRoomsPriv': comfortRoomsPriv,
      'ComfortRoomsPub': comfortRoomsPub,
    }.withoutNulls,
  );

  return firestoreData;
}

class AmenititiesRecordDocumentEquality implements Equality<AmenititiesRecord> {
  const AmenititiesRecordDocumentEquality();

  @override
  bool equals(AmenititiesRecord? e1, AmenititiesRecord? e2) {
    return e1?.ac == e2?.ac &&
        e1?.pool == e2?.pool &&
        e1?.washer == e2?.washer &&
        e1?.dryer == e2?.dryer &&
        e1?.nightLife == e2?.nightLife &&
        e1?.propertyRef == e2?.propertyRef &&
        e1?.extraOutlets == e2?.extraOutlets &&
        e1?.parking == e2?.parking &&
        e1?.petFriendly == e2?.petFriendly &&
        e1?.internet == e2?.internet &&
        e1?.comfortRoomsPriv == e2?.comfortRoomsPriv &&
        e1?.comfortRoomsPub == e2?.comfortRoomsPub;
  }

  @override
  int hash(AmenititiesRecord? e) => const ListEquality().hash([
        e?.ac,
        e?.pool,
        e?.washer,
        e?.dryer,
        e?.nightLife,
        e?.propertyRef,
        e?.extraOutlets,
        e?.parking,
        e?.petFriendly,
        e?.internet,
        e?.comfortRoomsPriv,
        e?.comfortRoomsPub
      ]);

  @override
  bool isValidKey(Object? o) => o is AmenititiesRecord;
}
