// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v1.dart';

/// ScaleSpec describes the attributes of a scale subresource.
class ScaleSpec {
  /// Default constructor.
  const ScaleSpec({
    this.replicas,
  });

  /// Creates a [ScaleSpec] from JSON data.
  factory ScaleSpec.fromJson(Map<String, dynamic> json) {
    final tempReplicasJson = json['replicas'];

    final int? tempReplicas = tempReplicasJson;

    return ScaleSpec(
      replicas: tempReplicas,
    );
  }

  /// replicas is the desired number of instances for the scaled object.
  final int? replicas;

  /// Converts a [ScaleSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempReplicas = replicas;

    if (tempReplicas != null) {
      jsonData['replicas'] = tempReplicas;
    }

    return jsonData;
  }
}
