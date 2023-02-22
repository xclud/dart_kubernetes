import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/condition.dart';

/// NetworkPolicyStatus describes the current state of the NetworkPolicy.
class NetworkPolicyStatus {
  /// The main constructor.
  const NetworkPolicyStatus({
    this.conditions,
  });

  /// Creates a NetworkPolicyStatus from JSON data.
  NetworkPolicyStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? Condition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of NetworkPolicyStatus from JSON data.
  static List<NetworkPolicyStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicyStatus.fromJson(e)).toList();
  }

  /// Converts a NetworkPolicyStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state.
  final List<Condition>? conditions;
}
