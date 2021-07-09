/// ContainerStateRunning is a running state of a container.
class ContainerStateRunning {
  /// The main constructor.
  const ContainerStateRunning({
    this.startedAt,
  });

  /// Creates a ContainerStateRunning from JSON data.
  ContainerStateRunning.fromJson(Map<String, dynamic> json)
      : this(
          startedAt: json['startedAt'] != null
              ? DateTime.tryParse(json['startedAt'])
              : null,
        );

  /// Creates a list of ContainerStateRunning from JSON data.
  static List<ContainerStateRunning> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerStateRunning.fromJson(e)).toList();
  }

  /// Time at which the container was last (re-)started.
  final DateTime? startedAt;
}
