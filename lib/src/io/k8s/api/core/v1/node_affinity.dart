// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Node affinity is a group of node affinity scheduling rules.
class NodeAffinity {
  /// Default constructor.
  const NodeAffinity({
    this.preferredDuringSchedulingIgnoredDuringExecution,
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  /// Creates a [NodeAffinity] from JSON data.
  factory NodeAffinity.fromJson(Map<String, dynamic> json) {
    final tempPreferredDuringSchedulingIgnoredDuringExecutionJson =
        json['preferredDuringSchedulingIgnoredDuringExecution'];
    final tempRequiredDuringSchedulingIgnoredDuringExecutionJson =
        json['requiredDuringSchedulingIgnoredDuringExecution'];

    final List<PreferredSchedulingTerm>?
        tempPreferredDuringSchedulingIgnoredDuringExecution =
        tempPreferredDuringSchedulingIgnoredDuringExecutionJson != null
            ? List<dynamic>.from(
                    tempPreferredDuringSchedulingIgnoredDuringExecutionJson)
                .map(
                  (e) => PreferredSchedulingTerm.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final NodeSelector? tempRequiredDuringSchedulingIgnoredDuringExecution =
        tempRequiredDuringSchedulingIgnoredDuringExecutionJson != null
            ? NodeSelector.fromJson(
                tempRequiredDuringSchedulingIgnoredDuringExecutionJson)
            : null;

    return NodeAffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          tempPreferredDuringSchedulingIgnoredDuringExecution,
      requiredDuringSchedulingIgnoredDuringExecution:
          tempRequiredDuringSchedulingIgnoredDuringExecution,
    );
  }

  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  final List<PreferredSchedulingTerm>?
      preferredDuringSchedulingIgnoredDuringExecution;

  /// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
  final NodeSelector? requiredDuringSchedulingIgnoredDuringExecution;

  /// Converts a [NodeAffinity] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPreferredDuringSchedulingIgnoredDuringExecution =
        preferredDuringSchedulingIgnoredDuringExecution;
    final tempRequiredDuringSchedulingIgnoredDuringExecution =
        requiredDuringSchedulingIgnoredDuringExecution;

    if (tempPreferredDuringSchedulingIgnoredDuringExecution != null) {
      jsonData['preferredDuringSchedulingIgnoredDuringExecution'] =
          tempPreferredDuringSchedulingIgnoredDuringExecution
              .map((e) => e.toJson())
              .toList(growable: false);
    }

    if (tempRequiredDuringSchedulingIgnoredDuringExecution != null) {
      jsonData['requiredDuringSchedulingIgnoredDuringExecution'] =
          tempRequiredDuringSchedulingIgnoredDuringExecution.toJson();
    }

    return jsonData;
  }
}
