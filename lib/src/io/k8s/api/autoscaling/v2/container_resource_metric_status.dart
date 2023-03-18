// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatus {
  /// Default constructor.
  const ContainerResourceMetricStatus({
    required this.container,
    required this.current,
    required this.name,
  });

  /// Creates a [ContainerResourceMetricStatus] from JSON data.
  factory ContainerResourceMetricStatus.fromJson(Map<String, dynamic> json) {
    final tempContainerJson = json['container'];
    final tempCurrentJson = json['current'];
    final tempNameJson = json['name'];

    final String tempContainer = tempContainerJson;
    final MetricValueStatus tempCurrent =
        MetricValueStatus.fromJson(tempCurrentJson);
    final String tempName = tempNameJson;

    return ContainerResourceMetricStatus(
      container: tempContainer,
      current: tempCurrent,
      name: tempName,
    );
  }

  /// container is the name of the container in the pods of the scaling target.
  final String container;

  /// current contains the current value for the given metric.
  final MetricValueStatus current;

  /// name is the name of the resource in question.
  final String name;

  /// Converts a [ContainerResourceMetricStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempContainer = container;
    final tempCurrent = current;
    final tempName = name;

    jsonData['container'] = tempContainer;

    jsonData['current'] = tempCurrent.toJson();

    jsonData['name'] = tempName;

    return jsonData;
  }
}
