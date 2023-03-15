// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ExecAction describes a "run in container" action.
class ExecAction {
  /// Default constructor.
  const ExecAction({
    this.command,
  });

  /// Creates a [ExecAction] from JSON data.
  factory ExecAction.fromJson(Map<String, dynamic> json) {
    final tempCommandJson = json['command'];

    final tempCommand = tempCommandJson;

    return ExecAction(
      command: tempCommand,
    );
  }

  /// Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  final List<String>? command;

  /// Converts a [ExecAction] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCommand = command;

    if (tempCommand != null) {
      jsonData['command'] = tempCommand;
    }

    return jsonData;
  }
}
