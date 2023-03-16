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
    this.limits = const {},
    this.requests = const {},
  });

  /// Creates a [ResourceRequirements] from JSON data.
  factory ResourceRequirements.fromJson(Map<String, dynamic> json) {
    final tempClaimsJson = json['claims'];
    final tempLimitsJson = json['limits'];
    final tempRequestsJson = json['requests'];

    final List<ResourceClaim>? tempClaims = tempClaimsJson;
    final Map<String, Object> tempLimits = tempLimitsJson;
    final Map<String, Object> tempRequests = tempRequestsJson;

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
  /// This field is immutable.
  final List<ResourceClaim>? claims;

  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/.
  final Map<String, Object> limits;

  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/.
  final Map<String, Object> requests;

  /// Converts a [ResourceRequirements] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClaims = claims;
    final tempLimits = limits;
    final tempRequests = requests;

    if (tempClaims != null) {
      jsonData['claims'] = tempClaims;
    }

    jsonData['limits'] = tempLimits;

    jsonData['requests'] = tempRequests;

    return jsonData;
  }
}
