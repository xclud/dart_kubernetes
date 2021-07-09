import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_definition_names.dart';
import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_definition_condition.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition.
class CustomResourceDefinitionStatus {
  /// The main constructor.
  const CustomResourceDefinitionStatus({
    this.acceptedNames,
    this.conditions,
    this.storedVersions,
  });

  /// Creates a CustomResourceDefinitionStatus from JSON data.
  CustomResourceDefinitionStatus.fromJson(Map<String, dynamic> json)
      : this(
          acceptedNames: json['acceptedNames'] != null
              ? CustomResourceDefinitionNames.fromJson(json['acceptedNames'])
              : null,
          conditions: json['conditions'] != null
              ? CustomResourceDefinitionCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          storedVersions: json['storedVersions'] != null
              ? List<String>.from(json['storedVersions'])
              : null,
        );

  /// Creates a list of CustomResourceDefinitionStatus from JSON data.
  static List<CustomResourceDefinitionStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceDefinitionStatus.fromJson(e)).toList();
  }

  /// AcceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final CustomResourceDefinitionNames? acceptedNames;

  /// Conditions indicate state for particular aspects of a CustomResourceDefinition.
  final List<CustomResourceDefinitionCondition>? conditions;

  /// StoredVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final List<String>? storedVersions;
}
