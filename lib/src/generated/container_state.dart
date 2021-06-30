class ContainerState {
  const ContainerState({
    this.running,
    this.terminated,
    this.waiting,
  });

  final ContainerStateRunning? running;
  final ContainerStateTerminated? terminated;
  final ContainerStateWaiting? waiting;
}

class ContainerStateRunning {
  const ContainerStateRunning({this.startedAt});

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

  final int exitCode;
  final String? containerID;
  final DateTime? finishedAt;
  final String? message;
  final String? reason;
  final int? signal;
  final DateTime? startedAt;
}

class ContainerStateWaiting {}
