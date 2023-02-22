
/// ContainerStateWaiting is a waiting state of a container.
class ContainerStateWaiting {
  /// The main constructor.
  const ContainerStateWaiting({
    this.message,
    this.reason,
  });

  /// Creates a ContainerStateWaiting from JSON data.
  ContainerStateWaiting.fromJson(Map<String, dynamic> json)
      : this(
          message: json['message'],
          reason: json['reason'],
        );

  /// Creates a list of ContainerStateWaiting from JSON data.
  static List<ContainerStateWaiting> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerStateWaiting.fromJson(e)).toList();
  }

  /// Converts a ContainerStateWaiting instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(message != null) { jsonData['message'] = message!; }
    if(reason != null) { jsonData['reason'] = reason!; }
    

    return jsonData;
  }


  /// Message regarding why the container is not yet running.
  final String? message;

  /// (brief) reason the container is not yet running.
  final String? reason;
}
