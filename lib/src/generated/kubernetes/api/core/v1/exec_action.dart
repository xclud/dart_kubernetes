
/// ExecAction describes a "run in container" action.
class ExecAction {
  /// The main constructor.
  const ExecAction({
    this.command,
  });

  /// Creates a ExecAction from JSON data.
  ExecAction.fromJson(Map<String, dynamic> json)
      : this(
          command: json['command'] != null ? List<String>.from(json['command']) : null,
        );

  /// Creates a list of ExecAction from JSON data.
  static List<ExecAction> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ExecAction.fromJson(e)).toList();
  }

  /// Converts a ExecAction instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(command != null) { jsonData['command'] = command!; }
    

    return jsonData;
  }


  /// Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  final List<String>? command;
}
