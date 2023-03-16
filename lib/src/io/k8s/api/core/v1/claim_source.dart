// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ClaimSource describes a reference to a ResourceClaim.
///
/// Exactly one of these fields should be set.  Consumers of this type must treat an empty object as if it has an unknown value.
class ClaimSource {
  /// Default constructor.
  const ClaimSource({
    this.resourceClaimName,
    this.resourceClaimTemplateName,
  });

  /// Creates a [ClaimSource] from JSON data.
  factory ClaimSource.fromJson(Map<String, dynamic> json) {
    final tempResourceClaimNameJson = json['resourceClaimName'];
    final tempResourceClaimTemplateNameJson = json['resourceClaimTemplateName'];

    final String? tempResourceClaimName = tempResourceClaimNameJson;
    final String? tempResourceClaimTemplateName =
        tempResourceClaimTemplateNameJson;

    return ClaimSource(
      resourceClaimName: tempResourceClaimName,
      resourceClaimTemplateName: tempResourceClaimTemplateName,
    );
  }

  /// ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  final String? resourceClaimName;

  /// ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.
  ///
  /// The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).
  ///
  /// An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.
  ///
  /// This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  final String? resourceClaimTemplateName;

  /// Converts a [ClaimSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempResourceClaimName = resourceClaimName;
    final tempResourceClaimTemplateName = resourceClaimTemplateName;

    if (tempResourceClaimName != null) {
      jsonData['resourceClaimName'] = tempResourceClaimName;
    }

    if (tempResourceClaimTemplateName != null) {
      jsonData['resourceClaimTemplateName'] = tempResourceClaimTemplateName;
    }

    return jsonData;
  }
}
