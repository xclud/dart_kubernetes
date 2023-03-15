// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha1;

/// PodSchedulingStatus describes where resources for the Pod can be allocated.
class PodSchedulingStatus {
  /// Default constructor.
  const PodSchedulingStatus({
    this.resourceClaims,
  });

  /// Creates a [PodSchedulingStatus] from JSON data.
  factory PodSchedulingStatus.fromJson(Map<String, dynamic> json) {
    final tempResourceClaimsJson = json['resourceClaims'];

    final tempResourceClaims = tempResourceClaimsJson;

    return PodSchedulingStatus(
      resourceClaims: tempResourceClaims,
    );
  }

  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final List<ResourceClaimSchedulingStatus>? resourceClaims;

  /// Converts a [PodSchedulingStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempResourceClaims = resourceClaims;

    if (tempResourceClaims != null) {
      jsonData['resourceClaims'] = tempResourceClaims;
    }

    return jsonData;
  }
}
