// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v1;

/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatus {
  /// Default constructor.
  const ScaleStatus({
    required this.replicas,
    this.selector,
  });

  /// Creates a [ScaleStatus] from JSON data.
  factory ScaleStatus.fromJson(Map<String, dynamic> json) {
    final tempReplicasJson = json['replicas'];
    final tempSelectorJson = json['selector'];

    final int tempReplicas = tempReplicasJson;
    final String? tempSelector = tempSelectorJson;

    return ScaleStatus(
      replicas: tempReplicas,
      selector: tempSelector,
    );
  }

  /// replicas is the actual number of observed instances of the scaled object.
  final int replicas;

  /// selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/.
  final String? selector;

  /// Converts a [ScaleStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempReplicas = replicas;
    final tempSelector = selector;

    jsonData['replicas'] = tempReplicas;

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector;
    }

    return jsonData;
  }
}
