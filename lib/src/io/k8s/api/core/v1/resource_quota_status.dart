// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ResourceQuotaStatus defines the enforced hard limits and observed use.
class ResourceQuotaStatus {
  /// Default constructor.
  const ResourceQuotaStatus({
    this.hard = const {},
    this.used = const {},
  });

  /// Creates a [ResourceQuotaStatus] from JSON data.
  factory ResourceQuotaStatus.fromJson(Map<String, dynamic> json) {
    final tempHardJson = json['hard'];
    final tempUsedJson = json['used'];

    final Map<String, Object> tempHard = tempHardJson;
    final Map<String, Object> tempUsed = tempUsedJson;

    return ResourceQuotaStatus(
      hard: tempHard,
      used: tempUsed,
    );
  }

  /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/.
  final Map<String, Object> hard;

  /// Used is the current observed total usage of the resource in the namespace.
  final Map<String, Object> used;

  /// Converts a [ResourceQuotaStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHard = hard;
    final tempUsed = used;

    jsonData['hard'] = tempHard;

    jsonData['used'] = tempUsed;

    return jsonData;
  }
}
