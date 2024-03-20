// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../resource_v1alpha2.dart';

/// ResourceClaimParametersReference contains enough information to let you locate the parameters for a ResourceClaim. The object must be in the same namespace as the ResourceClaim.
class ResourceClaimParametersReference {
  /// Default constructor.
  const ResourceClaimParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  /// Creates a [ResourceClaimParametersReference] from JSON data.
  factory ResourceClaimParametersReference.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];

    final String? tempApiGroup = tempApiGroupJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;

    return ResourceClaimParametersReference(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
    );
  }

  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;

  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example "ConfigMap".
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Converts a [ResourceClaimParametersReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroup = apiGroup;
    final tempKind = kind;
    final tempName = name;

    if (tempApiGroup != null) {
      jsonData['apiGroup'] = tempApiGroup;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
