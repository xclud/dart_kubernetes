import 'package:kubernetes/src/generated/api/apiserverinternal/v1alpha1/storage_version_condition.dart';
import 'package:kubernetes/src/generated/api/apiserverinternal/v1alpha1/server_storage_version.dart';

/// API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
class StorageVersionStatus {
  /// The main constructor.
  const StorageVersionStatus({
    this.commonEncodingVersion,
    this.conditions,
    this.storageVersions,
  });

  /// Creates a StorageVersionStatus from JSON data.
  StorageVersionStatus.fromJson(Map<String, dynamic> json)
      : this(
          commonEncodingVersion: json['commonEncodingVersion'],
          conditions: json['conditions'] != null
              ? StorageVersionCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          storageVersions: json['storageVersions'] != null
              ? ServerStorageVersion.listFromJson(
                  (json['storageVersions'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of StorageVersionStatus from JSON data.
  static List<StorageVersionStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StorageVersionStatus.fromJson(e)).toList();
  }

  /// Converts a StorageVersionStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (commonEncodingVersion != null) {
      jsonData['commonEncodingVersion'] = commonEncodingVersion!;
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (storageVersions != null) {
      jsonData['storageVersions'] =
          storageVersions!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
  final String? commonEncodingVersion;

  /// The latest available observations of the storageVersion's state.
  final List<StorageVersionCondition>? conditions;

  /// The reported versions per API server instance.
  final List<ServerStorageVersion>? storageVersions;
}
