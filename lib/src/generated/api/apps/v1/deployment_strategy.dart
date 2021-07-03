import 'package:kubernetes/src/generated/api/apps/v1/rolling_update_deployment.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategy {
  /// The main constructor.
  const DeploymentStrategy({
    this.rollingUpdate,
    this.type,
  });

  /// Creates a DeploymentStrategy from JSON data.
  DeploymentStrategy.fromJson(Map<String, dynamic> json)
      : this(
          rollingUpdate: json['rollingUpdate'] != null
              ? RollingUpdateDeployment.fromJson(json['rollingUpdate'])
              : null,
          type: json['type'],
        );

  /// Creates a list of DeploymentStrategy from JSON data.
  static List<DeploymentStrategy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DeploymentStrategy.fromJson(e)).toList();
  }

  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final RollingUpdateDeployment? rollingUpdate;

  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final String? type;
}
