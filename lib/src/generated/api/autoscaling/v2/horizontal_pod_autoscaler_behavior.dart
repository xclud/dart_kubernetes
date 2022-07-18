import 'package:kubernetes/src/generated/api/autoscaling/v2/hpa_scaling_rules.dart';

/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
class HorizontalPodAutoscalerBehavior {
  /// The main constructor.
  const HorizontalPodAutoscalerBehavior({
    this.scaleDown,
    this.scaleUp,
  });

  /// Creates a HorizontalPodAutoscalerBehavior from JSON data.
  HorizontalPodAutoscalerBehavior.fromJson(Map<String, dynamic> json)
      : this(
          scaleDown: json['scaleDown'] != null
              ? HPAScalingRules.fromJson(json['scaleDown'])
              : null,
          scaleUp: json['scaleUp'] != null
              ? HPAScalingRules.fromJson(json['scaleUp'])
              : null,
        );

  /// Creates a list of HorizontalPodAutoscalerBehavior from JSON data.
  static List<HorizontalPodAutoscalerBehavior> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => HorizontalPodAutoscalerBehavior.fromJson(e))
        .toList();
  }

  /// Converts a HorizontalPodAutoscalerBehavior instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (scaleDown != null) {
      jsonData['scaleDown'] = scaleDown!.toJson();
    }
    if (scaleUp != null) {
      jsonData['scaleUp'] = scaleUp!.toJson();
    }

    return jsonData;
  }

  /// ScaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
  final HPAScalingRules? scaleDown;

  /// ScaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
  ///   * increase no more than 4 pods per 60 seconds
  ///   * double the number of pods per 60 seconds
  /// No stabilization is used.
  final HPAScalingRules? scaleUp;
}
