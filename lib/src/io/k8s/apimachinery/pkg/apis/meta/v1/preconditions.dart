// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class Preconditions {
  /// Default constructor.
  const Preconditions({
    this.resourceVersion,
    this.uid,
  });

  /// Creates a [Preconditions] from JSON data.
  factory Preconditions.fromJson(Map<String, dynamic> json) {
    final tempResourceVersionJson = json['resourceVersion'];
    final tempUidJson = json['uid'];

    final String? tempResourceVersion = tempResourceVersionJson;
    final String? tempUid = tempUidJson;

    return Preconditions(
      resourceVersion: tempResourceVersion,
      uid: tempUid,
    );
  }

  /// Specifies the target ResourceVersion.
  final String? resourceVersion;

  /// Specifies the target UID.
  final String? uid;

  /// Converts a [Preconditions] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempResourceVersion = resourceVersion;
    final tempUid = uid;

    if (tempResourceVersion != null) {
      jsonData['resourceVersion'] = tempResourceVersion;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
