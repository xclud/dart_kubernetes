// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authentication_v1.dart';

/// BoundObjectReference is a reference to an object that a token is bound to.
class BoundObjectReference {
  /// Default constructor.
  const BoundObjectReference({
    this.apiVersion,
    this.kind,
    this.name,
    this.uid,
  });

  /// Creates a [BoundObjectReference] from JSON data.
  factory BoundObjectReference.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempUidJson = json['uid'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final String? tempName = tempNameJson;
    final String? tempUid = tempUidJson;

    return BoundObjectReference(
      apiVersion: tempApiVersion,
      kind: tempKind,
      name: tempName,
      uid: tempUid,
    );
  }

  /// API version of the referent.
  final String? apiVersion;

  /// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  final String? kind;

  /// Name of the referent.
  final String? name;

  /// UID of the referent.
  final String? uid;

  /// Converts a [BoundObjectReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempName = name;
    final tempUid = uid;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
