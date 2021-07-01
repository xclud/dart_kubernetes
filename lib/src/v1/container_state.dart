class ContainerState {
  const ContainerState({
    this.running,
    this.terminated,
    this.waiting,
  });

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

  final ContainerStateRunning? running;
  final ContainerStateTerminated? terminated;
  final ContainerStateWaiting? waiting;
}

class ContainerStateRunning {
  const ContainerStateRunning({this.startedAt});

  ContainerStateRunning.fromJson(Map<String, dynamic> json)
      : this(
          startedAt: json['startedAt'] != null
              ? DateTime.tryParse(json['startedAt'])
              : null,
        );

  final DateTime? startedAt;
}

class ContainerStateTerminated {
  const ContainerStateTerminated({
    required this.exitCode,
    this.containerID,
    this.finishedAt,
    this.message,
    this.reason,
    this.signal,
    this.startedAt,
  });

  ContainerStateTerminated.fromJson(Map<String, dynamic> json)
      : this(
          exitCode: json['exitCode'],
          containerID: json['containerID'],
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

  final int exitCode;
  final String? containerID;
  final DateTime? finishedAt;
  final String? message;
  final String? reason;
  final int? signal;
  final DateTime? startedAt;
}

class ContainerStateWaiting {
  const ContainerStateWaiting({this.message, this.reason});

  ContainerStateWaiting.fromJson(Map<String, dynamic> json)
      : this(
          message: json['message'],
          reason: json['reason'],
        );

  final String? message;
  final String? reason;
}
