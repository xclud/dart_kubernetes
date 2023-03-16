// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
class HorizontalPodAutoscalerBehavior {
  /// Default constructor.
  const HorizontalPodAutoscalerBehavior({
    this.scaleDown,
    this.scaleUp,
  });

  /// Creates a [HorizontalPodAutoscalerBehavior] from JSON data.
  factory HorizontalPodAutoscalerBehavior.fromJson(Map<String, dynamic> json) {
    final tempScaleDownJson = json['scaleDown'];
    final tempScaleUpJson = json['scaleUp'];

    final HPAScalingRules? tempScaleDown = tempScaleDownJson != null
        ? HPAScalingRules.fromJson(tempScaleDownJson)
        : null;
    final HPAScalingRules? tempScaleUp = tempScaleUpJson != null
        ? HPAScalingRules.fromJson(tempScaleUpJson)
        : null;

    return HorizontalPodAutoscalerBehavior(
      scaleDown: tempScaleDown,
      scaleUp: tempScaleUp,
    );
  }

  /// scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
  final HPAScalingRules? scaleDown;

  /// scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
  ///   * increase no more than 4 pods per 60 seconds
  ///   * double the number of pods per 60 seconds
  /// No stabilization is used.
  final HPAScalingRules? scaleUp;

  /// Converts a [HorizontalPodAutoscalerBehavior] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempScaleDown = scaleDown;
    final tempScaleUp = scaleUp;

    if (tempScaleDown != null) {
      jsonData['scaleDown'] = tempScaleDown.toJson();
    }

    if (tempScaleUp != null) {
      jsonData['scaleUp'] = tempScaleUp.toJson();
    }

    return jsonData;
  }
}
