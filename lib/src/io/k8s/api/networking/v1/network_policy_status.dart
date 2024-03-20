// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// NetworkPolicyStatus describes the current state of the NetworkPolicy.
class NetworkPolicyStatus {
  /// Default constructor.
  const NetworkPolicyStatus({
    this.conditions,
  });

  /// Creates a [NetworkPolicyStatus] from JSON data.
  factory NetworkPolicyStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final List<Condition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => Condition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

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
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
