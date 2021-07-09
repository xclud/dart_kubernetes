import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/fields_v1.dart';

/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
class ManagedFieldsEntry {
  /// The main constructor.
  const ManagedFieldsEntry({
    this.apiVersion,
    this.fieldsType,
    this.fieldsV1,
    this.manager,
    this.operation,
    this.subresource,
    this.time,
  });

  /// Creates a ManagedFieldsEntry from JSON data.
  ManagedFieldsEntry.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          fieldsType: json['fieldsType'],
          fieldsV1: json['fieldsV1'] != null
              ? FieldsV1.fromJson(json['fieldsV1'])
              : null,
          manager: json['manager'],
          operation: json['operation'],
          subresource: json['subresource'],
          time: json['time'] != null ? DateTime.tryParse(json['time']) : null,
        );

  /// Creates a list of ManagedFieldsEntry from JSON data.
  static List<ManagedFieldsEntry> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ManagedFieldsEntry.fromJson(e)).toList();
  }

  /// APIVersion defines the version of this resource that this field set applies to. The format is "group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
  final String? apiVersion;

  /// FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1".
  final String? fieldsType;

  /// FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
  final FieldsV1? fieldsV1;

  /// Manager is an identifier of the workflow managing these fields.
  final String? manager;

  /// Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
  final String? operation;

  /// Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
  final String? subresource;

  /// Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'.
  final DateTime? time;
}
