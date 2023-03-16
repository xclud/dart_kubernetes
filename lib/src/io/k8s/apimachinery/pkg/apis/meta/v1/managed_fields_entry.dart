// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
class ManagedFieldsEntry {
  /// Default constructor.
  const ManagedFieldsEntry({
    this.apiVersion,
    this.fieldsType,
    this.fieldsV1,
    this.manager,
    this.operation,
    this.subresource,
    this.time,
  });

  /// Creates a [ManagedFieldsEntry] from JSON data.
  factory ManagedFieldsEntry.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempFieldsTypeJson = json['fieldsType'];
    final tempFieldsV1Json = json['fieldsV1'];
    final tempManagerJson = json['manager'];
    final tempOperationJson = json['operation'];
    final tempSubresourceJson = json['subresource'];
    final tempTimeJson = json['time'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempFieldsType = tempFieldsTypeJson;
    final FieldsV1? tempFieldsV1 =
        tempFieldsV1Json != null ? FieldsV1.fromJson(tempFieldsV1Json) : null;
    final String? tempManager = tempManagerJson;
    final String? tempOperation = tempOperationJson;
    final String? tempSubresource = tempSubresourceJson;
    final DateTime? tempTime =
        tempTimeJson != null ? DateTime.tryParse(tempTimeJson) : null;

    return ManagedFieldsEntry(
      apiVersion: tempApiVersion,
      fieldsType: tempFieldsType,
      fieldsV1: tempFieldsV1,
      manager: tempManager,
      operation: tempOperation,
      subresource: tempSubresource,
      time: tempTime,
    );
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

  /// Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over.
  final DateTime? time;

  /// Converts a [ManagedFieldsEntry] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempFieldsType = fieldsType;
    final tempFieldsV1 = fieldsV1;
    final tempManager = manager;
    final tempOperation = operation;
    final tempSubresource = subresource;
    final tempTime = time;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempFieldsType != null) {
      jsonData['fieldsType'] = tempFieldsType;
    }

    if (tempFieldsV1 != null) {
      jsonData['fieldsV1'] = tempFieldsV1.toJson();
    }

    if (tempManager != null) {
      jsonData['manager'] = tempManager;
    }

    if (tempOperation != null) {
      jsonData['operation'] = tempOperation;
    }

    if (tempSubresource != null) {
      jsonData['subresource'] = tempSubresource;
    }

    if (tempTime != null) {
      jsonData['time'] = tempTime;
    }

    return jsonData;
  }
}
