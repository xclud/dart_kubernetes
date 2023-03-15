// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PodResourceClaim references exactly one ResourceClaim through a ClaimSource. It adds a name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that need access to the ResourceClaim reference it with this name.
class PodResourceClaim {
  /// Default constructor.
  const PodResourceClaim({
    required this.name,
    this.source,
  });

  /// Creates a [PodResourceClaim] from JSON data.
  factory PodResourceClaim.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempSourceJson = json['source'];

    final tempName = tempNameJson;
    final tempSource =
        tempSourceJson != null ? ClaimSource.fromJson(tempSourceJson) : null;

    return PodResourceClaim(
      name: tempName,
      source: tempSource,
    );
  }

  /// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  final String name;

  /// Source describes where to find the ResourceClaim.
  final ClaimSource? source;

  /// Converts a [PodResourceClaim] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempSource = source;

    jsonData['name'] = tempName;

    if (tempSource != null) {
      jsonData['source'] = tempSource.toJson();
    }

    return jsonData;
  }
}
