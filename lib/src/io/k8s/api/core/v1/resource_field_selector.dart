// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ResourceFieldSelector represents container resources (cpu, memory) and their output format.
class ResourceFieldSelector {
  /// Default constructor.
  const ResourceFieldSelector({
    this.containerName,
    this.divisor,
    required this.resource,
  });

  /// Creates a [ResourceFieldSelector] from JSON data.
  factory ResourceFieldSelector.fromJson(Map<String, dynamic> json) {
    final tempContainerNameJson = json['containerName'];
    final tempDivisorJson = json['divisor'];
    final tempResourceJson = json['resource'];

    final String? tempContainerName = tempContainerNameJson;
    final String? tempDivisor = tempDivisorJson;
    final String tempResource = tempResourceJson;

    return ResourceFieldSelector(
      containerName: tempContainerName,
      divisor: tempDivisor,
      resource: tempResource,
    );
  }

  /// Container name: required for volumes, optional for env vars.
  final String? containerName;

  /// Specifies the output format of the exposed resources, defaults to "1".
  final String? divisor;

  /// Required: resource to select.
  final String resource;

  /// Converts a [ResourceFieldSelector] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempContainerName = containerName;
    final tempDivisor = divisor;
    final tempResource = resource;

    if (tempContainerName != null) {
      jsonData['containerName'] = tempContainerName;
    }

    if (tempDivisor != null) {
      jsonData['divisor'] = tempDivisor;
    }

    jsonData['resource'] = tempResource;

    return jsonData;
  }
}
