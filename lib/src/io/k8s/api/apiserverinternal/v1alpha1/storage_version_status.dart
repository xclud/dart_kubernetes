// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apiserverinternal.v1alpha1;

/// API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
class StorageVersionStatus {
  /// Default constructor.
  const StorageVersionStatus({
    this.commonEncodingVersion,
    this.conditions,
    this.storageVersions,
  });

  /// Creates a [StorageVersionStatus] from JSON data.
  factory StorageVersionStatus.fromJson(Map<String, dynamic> json) {
    final tempCommonEncodingVersionJson = json['commonEncodingVersion'];
    final tempConditionsJson = json['conditions'];
    final tempStorageVersionsJson = json['storageVersions'];

    final String? tempCommonEncodingVersion = tempCommonEncodingVersionJson;

    final List<StorageVersionCondition>? tempConditions =
        tempConditionsJson != null
            ? List<dynamic>.from(tempConditionsJson)
                .map(
                  (e) => StorageVersionCondition.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<ServerStorageVersion>? tempStorageVersions =
        tempStorageVersionsJson != null
            ? List<dynamic>.from(tempStorageVersionsJson)
                .map(
                  (e) => ServerStorageVersion.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return StorageVersionStatus(
      commonEncodingVersion: tempCommonEncodingVersion,
      conditions: tempConditions,
      storageVersions: tempStorageVersions,
    );
  }

  /// If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
  final String? commonEncodingVersion;

  /// The latest available observations of the storageVersion's state.
  final List<StorageVersionCondition>? conditions;

  /// The reported versions per API server instance.
  final List<ServerStorageVersion>? storageVersions;

  /// Converts a [StorageVersionStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCommonEncodingVersion = commonEncodingVersion;
    final tempConditions = conditions;
    final tempStorageVersions = storageVersions;

    if (tempCommonEncodingVersion != null) {
      jsonData['commonEncodingVersion'] = tempCommonEncodingVersion;
    }

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempStorageVersions != null) {
      jsonData['storageVersions'] = tempStorageVersions;
    }

    return jsonData;
  }
}
