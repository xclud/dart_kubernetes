import 'package:kubernetes/src/generated/api/apps/v1/rolling_update_daemon_set.dart';

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
class DaemonSetUpdateStrategy {
  /// The main constructor.
  const DaemonSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  /// Creates a DaemonSetUpdateStrategy from JSON data.
  DaemonSetUpdateStrategy.fromJson(Map<String, dynamic> json)
      : this(
          rollingUpdate: json['rollingUpdate'] != null
              ? RollingUpdateDaemonSet.fromJson(json['rollingUpdate'])
              : null,
          type: json['type'],
        );

  /// Creates a list of DaemonSetUpdateStrategy from JSON data.
  static List<DaemonSetUpdateStrategy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonSetUpdateStrategy.fromJson(e)).toList();
  }

  /// Converts a DaemonSetUpdateStrategy instance to JSON data.
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

  /// Rolling update config params. Present only if type = "RollingUpdate".
  final RollingUpdateDaemonSet? rollingUpdate;

  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  final String? type;
}
