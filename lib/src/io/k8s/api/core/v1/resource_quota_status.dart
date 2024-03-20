// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ResourceQuotaStatus defines the enforced hard limits and observed use.
class ResourceQuotaStatus {
  /// Default constructor.
  const ResourceQuotaStatus({
    this.hard,
    this.used,
  });

  /// Creates a [ResourceQuotaStatus] from JSON data.
  factory ResourceQuotaStatus.fromJson(Map<String, dynamic> json) {
    final tempHardJson = json['hard'];
    final tempUsedJson = json['used'];

    final Map<String, String>? tempHard =
        tempHardJson != null ? Map<String, String>.from(tempHardJson) : null;

    final Map<String, String>? tempUsed =
        tempUsedJson != null ? Map<String, String>.from(tempUsedJson) : null;

    return ResourceQuotaStatus(
      hard: tempHard,
      used: tempUsed,
    );
  }

  /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/.
  final Map<String, String>? hard;

  /// Used is the current observed total usage of the resource in the namespace.
  final Map<String, String>? used;

  /// Converts a [ResourceQuotaStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHard = hard;
    final tempUsed = used;

    if (tempHard != null) {
      jsonData['hard'] = tempHard;
    }

    if (tempUsed != null) {
      jsonData['used'] = tempUsed;
    }

    return jsonData;
  }
}
