import 'package:kubernetes/src/generated/kubernetes/api/apps/v1/rolling_update_stateful_set_strategy.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategy {
  /// The main constructor.
  const StatefulSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  /// Creates a StatefulSetUpdateStrategy from JSON data.
  StatefulSetUpdateStrategy.fromJson(Map<String, dynamic> json)
      : this(
          rollingUpdate: json['rollingUpdate'] != null
              ? RollingUpdateStatefulSetStrategy.fromJson(json['rollingUpdate'])
              : null,
          type: json['type'],
        );

  /// Creates a list of StatefulSetUpdateStrategy from JSON data.
  static List<StatefulSetUpdateStrategy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatefulSetUpdateStrategy.fromJson(e)).toList();
  }

  /// Converts a StatefulSetUpdateStrategy instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (rollingUpdate != null) {
      jsonData['rollingUpdate'] = rollingUpdate!.toJson();
    }
    if (type != null) {
      jsonData['type'] = type!;
    }

    return jsonData;
  }

  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final RollingUpdateStatefulSetStrategy? rollingUpdate;

  /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  final String? type;
}
