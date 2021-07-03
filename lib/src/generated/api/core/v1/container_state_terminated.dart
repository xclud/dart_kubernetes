/// ContainerStateTerminated is a terminated state of a container.
class ContainerStateTerminated {
  /// The main constructor.
  const ContainerStateTerminated({
    this.containerID,
    required this.exitCode,
    this.finishedAt,
    this.message,
    this.reason,
    this.signal,
    this.startedAt,
  });

  /// Creates a ContainerStateTerminated from JSON data.
  ContainerStateTerminated.fromJson(Map<String, dynamic> json)
      : this(
          containerID: json['containerID'],
          exitCode: json['exitCode'],
          finishedAt: json['finishedAt'] != null
              ? DateTime.tryParse(json['finishedAt'])
              : null,
          message: json['message'],
          reason: json['reason'],
          signal: json['signal'],
          startedAt: json['startedAt'] != null
              ? DateTime.tryParse(json['startedAt'])
              : null,
        );

  /// Creates a list of ContainerStateTerminated from JSON data.
  static List<ContainerStateTerminated> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerStateTerminated.fromJson(e)).toList();
  }

  /// Container's ID in the format 'docker://<container_id>'
  final String? containerID;

  /// Exit status from the last termination of the container
  final int exitCode;

  /// Time at which the container last terminated
  final DateTime? finishedAt;

  /// Message regarding the last termination of the container
  final String? message;

  /// (brief) reason from the last termination of the container
  final String? reason;

  /// Signal from the last termination of the container
  final int? signal;

  /// Time at which previous execution of the container started
  final DateTime? startedAt;
}
