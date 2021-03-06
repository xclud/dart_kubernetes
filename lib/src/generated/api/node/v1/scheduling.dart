import 'package:kubernetes/src/generated/api/core/v1/toleration.dart';

/// Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
class Scheduling {
  /// The main constructor.
  const Scheduling({
    this.nodeSelector,
    this.tolerations,
  });

  /// Creates a Scheduling from JSON data.
  Scheduling.fromJson(Map<String, dynamic> json)
      : this(
          nodeSelector: json['nodeSelector'] != null
              ? Map<String, String>.from(json['nodeSelector'])
              : null,
          tolerations: json['tolerations'] != null
              ? Toleration.listFromJson((json['tolerations'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of Scheduling from JSON data.
  static List<Scheduling> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Scheduling.fromJson(e)).toList();
  }

  /// Converts a Scheduling instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (nodeSelector != null) {
      jsonData['nodeSelector'] = nodeSelector!;
    }
    if (tolerations != null) {
      jsonData['tolerations'] =
          tolerations!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// NodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  final Map<String, String>? nodeSelector;

  /// Tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  final List<Toleration>? tolerations;
}
