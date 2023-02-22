
/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatus {
  /// The main constructor.
  const ScaleStatus({
    required this.replicas,
    this.selector,
  });

  /// Creates a ScaleStatus from JSON data.
  ScaleStatus.fromJson(Map<String, dynamic> json)
      : this(
          replicas: json['replicas'],
          selector: json['selector'],
        );

  /// Creates a list of ScaleStatus from JSON data.
  static List<ScaleStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ScaleStatus.fromJson(e)).toList();
  }

  /// Converts a ScaleStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['replicas'] = replicas;
    if(selector != null) { jsonData['selector'] = selector!; }
    

    return jsonData;
  }


  /// Actual number of observed instances of the scaled object.
  final int replicas;

  /// Label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: http://kubernetes.io/docs/user-guide/labels#label-selectors.
  final String? selector;
}
