import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/label_selector.dart';
import 'package:kubernetes/src/generated/kubernetes/api/apps/v1/deployment_strategy.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_template_spec.dart';

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
class DeploymentSpec {
  /// The main constructor.
  const DeploymentSpec({
    this.minReadySeconds,
    this.paused,
    this.progressDeadlineSeconds,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    this.strategy,
    required this.template,
  });

  /// Creates a DeploymentSpec from JSON data.
  DeploymentSpec.fromJson(Map<String, dynamic> json)
      : this(
          minReadySeconds: json['minReadySeconds'],
          paused: json['paused'],
          progressDeadlineSeconds: json['progressDeadlineSeconds'],
          replicas: json['replicas'],
          revisionHistoryLimit: json['revisionHistoryLimit'],
          selector: LabelSelector.fromJson(json['selector']),
          strategy: json['strategy'] != null
              ? DeploymentStrategy.fromJson(json['strategy'])
              : null,
          template: PodTemplateSpec.fromJson(json['template']),
        );

  /// Creates a list of DeploymentSpec from JSON data.
  static List<DeploymentSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DeploymentSpec.fromJson(e)).toList();
  }

  /// Converts a DeploymentSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (minReadySeconds != null) {
      jsonData['minReadySeconds'] = minReadySeconds!;
    }
    if (paused != null) {
      jsonData['paused'] = paused!;
    }
    if (progressDeadlineSeconds != null) {
      jsonData['progressDeadlineSeconds'] = progressDeadlineSeconds!;
    }
    if (replicas != null) {
      jsonData['replicas'] = replicas!;
    }
    if (revisionHistoryLimit != null) {
      jsonData['revisionHistoryLimit'] = revisionHistoryLimit!;
    }
    jsonData['selector'] = selector.toJson();
    if (strategy != null) {
      jsonData['strategy'] = strategy!.toJson();
    }
    jsonData['template'] = template.toJson();

    return jsonData;
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// Indicates that the deployment is paused.
  final bool? paused;

  /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  final int? progressDeadlineSeconds;

  /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final int? replicas;

  /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;

  /// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
  final LabelSelector selector;

  /// The deployment strategy to use to replace existing pods with new ones.
  final DeploymentStrategy? strategy;

  /// Template describes the pods that will be created.
  final PodTemplateSpec template;
}
