// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../node_v1.dart';

/// Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
class Scheduling {
  /// Default constructor.
  const Scheduling({
    this.nodeSelector,
    this.tolerations,
  });

  /// Creates a [Scheduling] from JSON data.
  factory Scheduling.fromJson(Map<String, dynamic> json) {
    final tempNodeSelectorJson = json['nodeSelector'];
    final tempTolerationsJson = json['tolerations'];

    final Map<String, String>? tempNodeSelector = tempNodeSelectorJson != null
        ? Map<String, String>.from(tempNodeSelectorJson)
        : null;

    final List<Toleration>? tempTolerations = tempTolerationsJson != null
        ? List<dynamic>.from(tempTolerationsJson)
            .map(
              (e) => Toleration.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return Scheduling(
      nodeSelector: tempNodeSelector,
      tolerations: tempTolerations,
    );
  }

  /// nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  final Map<String, String>? nodeSelector;

  /// tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  final List<Toleration>? tolerations;

  /// Converts a [Scheduling] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNodeSelector = nodeSelector;
    final tempTolerations = tolerations;

    if (tempNodeSelector != null) {
      jsonData['nodeSelector'] = tempNodeSelector;
    }

    if (tempTolerations != null) {
      jsonData['tolerations'] =
          tempTolerations.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
