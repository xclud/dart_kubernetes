// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha2;

/// PodSchedulingContextStatus describes where resources for the Pod can be allocated.
class PodSchedulingContextStatus {
  /// Default constructor.
  const PodSchedulingContextStatus({
    this.resourceClaims,
  });

  /// Creates a [PodSchedulingContextStatus] from JSON data.
  factory PodSchedulingContextStatus.fromJson(Map<String, dynamic> json) {
    final tempResourceClaimsJson = json['resourceClaims'];

    final List<ResourceClaimSchedulingStatus>? tempResourceClaims =
        tempResourceClaimsJson != null
            ? List<dynamic>.from(tempResourceClaimsJson)
                .map(
                  (e) => ResourceClaimSchedulingStatus.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return PodSchedulingContextStatus(
      resourceClaims: tempResourceClaims,
    );
  }

  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final List<ResourceClaimSchedulingStatus>? resourceClaims;

  /// Converts a [PodSchedulingContextStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempResourceClaims = resourceClaims;

    if (tempResourceClaims != null) {
      jsonData['resourceClaims'] = tempResourceClaims;
    }

    return jsonData;
  }
}
