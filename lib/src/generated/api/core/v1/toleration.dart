/// The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
class Toleration {
  /// The main constructor.
  const Toleration({
    this.effect,
    this.key,
    this.operator,
    this.tolerationSeconds,
    this.value,
  });

  /// Creates a Toleration from JSON data.
  Toleration.fromJson(Map<String, dynamic> json)
      : this(
          effect: json['effect'],
          key: json['key'],
          operator: json['operator'],
          tolerationSeconds: json['tolerationSeconds'],
          value: json['value'],
        );

  /// Creates a list of Toleration from JSON data.
  static List<Toleration> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Toleration.fromJson(e)).toList();
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
}
