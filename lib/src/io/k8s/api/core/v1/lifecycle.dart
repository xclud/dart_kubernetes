// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
class Lifecycle {
  /// Default constructor.
  const Lifecycle({
    this.postStart,
    this.preStop,
  });

  /// Creates a [Lifecycle] from JSON data.
  factory Lifecycle.fromJson(Map<String, dynamic> json) {
    final tempPostStartJson = json['postStart'];
    final tempPreStopJson = json['preStop'];

    final LifecycleHandler? tempPostStart = tempPostStartJson != null
        ? LifecycleHandler.fromJson(tempPostStartJson)
        : null;
    final LifecycleHandler? tempPreStop = tempPreStopJson != null
        ? LifecycleHandler.fromJson(tempPreStopJson)
        : null;

    return Lifecycle(
      postStart: tempPostStart,
      preStop: tempPreStop,
    );
  }

  /// PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks.
  final LifecycleHandler? postStart;

  /// PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod's termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks.
  final LifecycleHandler? preStop;

  /// Converts a [Lifecycle] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPostStart = postStart;
    final tempPreStop = preStop;

    if (tempPostStart != null) {
      jsonData['postStart'] = tempPostStart.toJson();
    }

    if (tempPreStop != null) {
      jsonData['preStop'] = tempPreStop.toJson();
    }

    return jsonData;
  }
}
