// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../resource_v1alpha2.dart';

/// ResourceClaimConsumerReference contains enough information to let you locate the consumer of a ResourceClaim. The user must be a resource in the same namespace as the ResourceClaim.
class ResourceClaimConsumerReference {
  /// Default constructor.
  const ResourceClaimConsumerReference({
    this.apiGroup,
    required this.name,
    required this.resource,
    required this.uid,
  });

  /// Creates a [ResourceClaimConsumerReference] from JSON data.
  factory ResourceClaimConsumerReference.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempNameJson = json['name'];
    final tempResourceJson = json['resource'];
    final tempUidJson = json['uid'];

    final String? tempApiGroup = tempApiGroupJson;
    final String tempName = tempNameJson;
    final String tempResource = tempResourceJson;
    final String tempUid = tempUidJson;

    return ResourceClaimConsumerReference(
      apiGroup: tempApiGroup,
      name: tempName,
      resource: tempResource,
      uid: tempUid,
    );
  }

  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;

  /// Name is the name of resource being referenced.
  final String name;

  /// Resource is the type of resource being referenced, for example "pods".
  final String resource;

  /// UID identifies exactly one incarnation of the resource.
  final String uid;

  /// Converts a [ResourceClaimConsumerReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroup = apiGroup;
    final tempName = name;
    final tempResource = resource;
    final tempUid = uid;

    if (tempApiGroup != null) {
      jsonData['apiGroup'] = tempApiGroup;
    }

    jsonData['name'] = tempName;

    jsonData['resource'] = tempResource;

    jsonData['uid'] = tempUid;

    return jsonData;
  }
}
