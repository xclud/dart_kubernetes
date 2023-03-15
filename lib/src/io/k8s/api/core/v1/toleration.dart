// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
class Toleration {
  /// Default constructor.
  const Toleration({
    this.effect,
    this.key,
    this.operator,
    this.tolerationSeconds,
    this.value,
  });

  /// Creates a [Toleration] from JSON data.
  factory Toleration.fromJson(Map<String, dynamic> json) {
    final tempEffectJson = json['effect'];
    final tempKeyJson = json['key'];
    final tempOperatorJson = json['operator'];
    final tempTolerationSecondsJson = json['tolerationSeconds'];
    final tempValueJson = json['value'];

    final tempEffect = tempEffectJson;
    final tempKey = tempKeyJson;
    final tempOperator = tempOperatorJson;
    final tempTolerationSeconds = tempTolerationSecondsJson;
    final tempValue = tempValueJson;

    return Toleration(
      effect: tempEffect,
      key: tempKey,
      operator: tempOperator,
      tolerationSeconds: tempTolerationSeconds,
      value: tempValue,
    );
  }

  /// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
  final String? effect;

  /// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  final String? key;

  /// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
  final String? operator;

  /// TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
  final int? tolerationSeconds;

  /// Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  final String? value;

  /// Converts a [Toleration] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEffect = effect;
    final tempKey = key;
    final tempOperator = operator;
    final tempTolerationSeconds = tolerationSeconds;
    final tempValue = value;

    if (tempEffect != null) {
      jsonData['effect'] = tempEffect;
    }

    if (tempKey != null) {
      jsonData['key'] = tempKey;
    }

    if (tempOperator != null) {
      jsonData['operator'] = tempOperator;
    }

    if (tempTolerationSeconds != null) {
      jsonData['tolerationSeconds'] = tempTolerationSeconds;
    }

    if (tempValue != null) {
      jsonData['value'] = tempValue;
    }

    return jsonData;
  }
}
