// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirements {
  /// Default constructor.
  const ResourceRequirements({
    this.claims,
    this.limits,
    this.requests,
  });

  /// Creates a [ResourceRequirements] from JSON data.
  factory ResourceRequirements.fromJson(Map<String, dynamic> json) {
    final tempClaimsJson = json['claims'];
    final tempLimitsJson = json['limits'];
    final tempRequestsJson = json['requests'];

    final List<ResourceClaim>? tempClaims = tempClaimsJson != null
        ? List<dynamic>.from(tempClaimsJson)
            .map(
              (e) => ResourceClaim.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final Map<String, String>? tempLimits = tempLimitsJson != null
        ? Map<String, String>.from(tempLimitsJson)
        : null;

    final Map<String, String>? tempRequests = tempRequestsJson != null
        ? Map<String, String>.from(tempRequestsJson)
        : null;

    return ResourceRequirements(
      claims: tempClaims,
      limits: tempLimits,
      requests: tempRequests,
    );
  }

  /// Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
  ///
  /// This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
  ///
  /// This field is immutable. It can only be set for containers.
  final List<ResourceClaim>? claims;

  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/.
  final Map<String, String>? limits;

  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/.
  final Map<String, String>? requests;

  /// Converts a [ResourceRequirements] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClaims = claims;
    final tempLimits = limits;
    final tempRequests = requests;

    if (tempClaims != null) {
      jsonData['claims'] = tempClaims;
    }

    if (tempLimits != null) {
      jsonData['limits'] = tempLimits;
    }

    if (tempRequests != null) {
      jsonData['requests'] = tempRequests;
    }

    return jsonData;
  }
}
