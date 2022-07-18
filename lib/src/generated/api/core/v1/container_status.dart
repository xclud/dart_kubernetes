import 'package:kubernetes/src/generated/api/core/v1/container_state.dart';

/// ContainerStatus contains details for the current status of this container.
class ContainerStatus {
  /// The main constructor.
  const ContainerStatus({
    this.containerID,
    required this.image,
    required this.imageID,
    this.lastState,
    required this.name,
    required this.ready,
    required this.restartCount,
    this.started,
    this.state,
  });

  /// Creates a ContainerStatus from JSON data.
  ContainerStatus.fromJson(Map<String, dynamic> json)
      : this(
          containerID: json['containerID'],
          image: json['image'],
          imageID: json['imageID'],
          lastState: json['lastState'] != null
              ? ContainerState.fromJson(json['lastState'])
              : null,
          name: json['name'],
          ready: json['ready'],
          restartCount: json['restartCount'],
          started: json['started'],
          state: json['state'] != null
              ? ContainerState.fromJson(json['state'])
              : null,
        );

  /// Creates a list of ContainerStatus from JSON data.
  static List<ContainerStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerStatus.fromJson(e)).toList();
  }

  /// Converts a ContainerStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (containerID != null) {
      jsonData['containerID'] = containerID!;
    }
    jsonData['image'] = image;
    jsonData['imageID'] = imageID;
    if (lastState != null) {
      jsonData['lastState'] = lastState!.toJson();
    }
    jsonData['name'] = name;
    jsonData['ready'] = ready;
    jsonData['restartCount'] = restartCount;
    if (started != null) {
      jsonData['started'] = started!;
    }
    if (state != null) {
      jsonData['state'] = state!.toJson();
    }

    return jsonData;
  }

  /// Container's ID in the format '<type>://<container_id>'.
  final String? containerID;

  /// The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images.
  final String image;

  /// ImageID of the container's image.
  final String imageID;

  /// Details about the container's last termination condition.
  final ContainerState? lastState;

  /// This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
  final String name;

  /// Specifies whether the container has passed its readiness probe.
  final bool ready;

  /// The number of times the container has been restarted.
  final int restartCount;

  /// Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
  final bool? started;

  /// Details about the container's current condition.
  final ContainerState? state;
}
