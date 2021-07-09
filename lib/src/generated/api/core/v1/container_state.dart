import 'package:kubernetes/src/generated/api/core/v1/container_state_running.dart';
import 'package:kubernetes/src/generated/api/core/v1/container_state_terminated.dart';
import 'package:kubernetes/src/generated/api/core/v1/container_state_waiting.dart';

/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
class ContainerState {
  /// The main constructor.
  const ContainerState({
    this.running,
    this.terminated,
    this.waiting,
  });

  /// Creates a ContainerState from JSON data.
  ContainerState.fromJson(Map<String, dynamic> json)
      : this(
          running: json['running'] != null
              ? ContainerStateRunning.fromJson(json['running'])
              : null,
          terminated: json['terminated'] != null
              ? ContainerStateTerminated.fromJson(json['terminated'])
              : null,
          waiting: json['waiting'] != null
              ? ContainerStateWaiting.fromJson(json['waiting'])
              : null,
        );

  /// Creates a list of ContainerState from JSON data.
  static List<ContainerState> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerState.fromJson(e)).toList();
  }

  /// Converts a ContainerState instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (running != null) {
      jsonData['running'] = running!.toJson();
    }
    if (terminated != null) {
      jsonData['terminated'] = terminated!.toJson();
    }
    if (waiting != null) {
      jsonData['waiting'] = waiting!.toJson();
    }

    return jsonData;
  }

  /// Details about a running container.
  final ContainerStateRunning? running;

  /// Details about a terminated container.
  final ContainerStateTerminated? terminated;

  /// Details about a waiting container.
  final ContainerStateWaiting? waiting;
}
