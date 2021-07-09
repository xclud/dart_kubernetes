import 'package:kubernetes/src/generated/api/core/v1/namespace_condition.dart';

/// NamespaceStatus is information about the current status of a Namespace.
class NamespaceStatus {
  /// The main constructor.
  const NamespaceStatus({
    this.conditions,
    this.phase,
  });

  /// Creates a NamespaceStatus from JSON data.
  NamespaceStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? NamespaceCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          phase: json['phase'],
        );

  /// Creates a list of NamespaceStatus from JSON data.
  static List<NamespaceStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NamespaceStatus.fromJson(e)).toList();
  }

  /// Converts a NamespaceStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (phase != null) {
      jsonData['phase'] = phase!;
    }

    return jsonData;
  }

  /// Represents the latest available observations of a namespace's current state.
  final List<NamespaceCondition>? conditions;

  /// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/.
  final String? phase;
}
