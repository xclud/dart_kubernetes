// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
class Taint {
  /// Default constructor.
  const Taint({
    required this.effect,
    required this.key,
    this.timeAdded,
    this.value,
  });

  /// Creates a [Taint] from JSON data.
  factory Taint.fromJson(Map<String, dynamic> json) {
    final tempEffectJson = json['effect'];
    final tempKeyJson = json['key'];
    final tempTimeAddedJson = json['timeAdded'];
    final tempValueJson = json['value'];

    final String tempEffect = tempEffectJson;
    final String tempKey = tempKeyJson;
    final DateTime? tempTimeAdded =
        tempTimeAddedJson != null ? DateTime.tryParse(tempTimeAddedJson) : null;
    final String? tempValue = tempValueJson;

    return Taint(
      effect: tempEffect,
      key: tempKey,
      timeAdded: tempTimeAdded,
      value: tempValue,
    );
  }

  /// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  final String effect;

  /// Required. The taint key to be applied to a node.
  final String key;

  /// TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
  final DateTime? timeAdded;

  /// The taint value corresponding to the taint key.
  final String? value;

  /// Converts a [Taint] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEffect = effect;
    final tempKey = key;
    final tempTimeAdded = timeAdded;
    final tempValue = value;

    jsonData['effect'] = tempEffect;

    jsonData['key'] = tempKey;

    if (tempTimeAdded != null) {
      jsonData['timeAdded'] = tempTimeAdded;
    }

    if (tempValue != null) {
      jsonData['value'] = tempValue;
    }

    return jsonData;
  }
}
