// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// NetworkPolicyStatus describes the current state of the NetworkPolicy.
class NetworkPolicyStatus {
  /// Default constructor.
  const NetworkPolicyStatus({
    this.conditions,
  });

  /// Creates a [NetworkPolicyStatus] from JSON data.
  factory NetworkPolicyStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final List<Condition>? tempConditions = tempConditionsJson;

    return NetworkPolicyStatus(
      conditions: tempConditions,
    );
  }

  /// conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state.
  final List<Condition>? conditions;

  /// Converts a [NetworkPolicyStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    return jsonData;
  }
}
