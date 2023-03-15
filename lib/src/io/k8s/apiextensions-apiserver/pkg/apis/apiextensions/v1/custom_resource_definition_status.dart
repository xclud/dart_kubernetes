// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition.
class CustomResourceDefinitionStatus {
  /// Default constructor.
  const CustomResourceDefinitionStatus({
    this.acceptedNames,
    this.conditions,
    this.storedVersions,
  });

  /// Creates a [CustomResourceDefinitionStatus] from JSON data.
  factory CustomResourceDefinitionStatus.fromJson(Map<String, dynamic> json) {
    final tempAcceptedNamesJson = json['acceptedNames'];
    final tempConditionsJson = json['conditions'];
    final tempStoredVersionsJson = json['storedVersions'];

    final tempAcceptedNames = tempAcceptedNamesJson != null
        ? CustomResourceDefinitionNames.fromJson(tempAcceptedNamesJson)
        : null;
    final tempConditions = tempConditionsJson;
    final tempStoredVersions = tempStoredVersionsJson;

    return CustomResourceDefinitionStatus(
      acceptedNames: tempAcceptedNames,
      conditions: tempConditions,
      storedVersions: tempStoredVersions,
    );
  }

  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final CustomResourceDefinitionNames? acceptedNames;

  /// conditions indicate state for particular aspects of a CustomResourceDefinition.
  final List<CustomResourceDefinitionCondition>? conditions;

  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final List<String>? storedVersions;

  /// Converts a [CustomResourceDefinitionStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAcceptedNames = acceptedNames;
    final tempConditions = conditions;
    final tempStoredVersions = storedVersions;

    if (tempAcceptedNames != null) {
      jsonData['acceptedNames'] = tempAcceptedNames.toJson();
    }

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempStoredVersions != null) {
      jsonData['storedVersions'] = tempStoredVersions;
    }

    return jsonData;
  }
}
