// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ContainerResizePolicy represents resource resize policy for the container.
class ContainerResizePolicy {
  /// Default constructor.
  const ContainerResizePolicy({
    required this.resourceName,
    required this.restartPolicy,
  });

  /// Creates a [ContainerResizePolicy] from JSON data.
  factory ContainerResizePolicy.fromJson(Map<String, dynamic> json) {
    final tempResourceNameJson = json['resourceName'];
    final tempRestartPolicyJson = json['restartPolicy'];

    final String tempResourceName = tempResourceNameJson;
    final String tempRestartPolicy = tempRestartPolicyJson;

    return ContainerResizePolicy(
      resourceName: tempResourceName,
      restartPolicy: tempRestartPolicy,
    );
  }

  /// Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  final String resourceName;

  /// Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  final String restartPolicy;

  /// Converts a [ContainerResizePolicy] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempResourceName = resourceName;
    final tempRestartPolicy = restartPolicy;

    jsonData['resourceName'] = tempResourceName;

    jsonData['restartPolicy'] = tempRestartPolicy;

    return jsonData;
  }
}
