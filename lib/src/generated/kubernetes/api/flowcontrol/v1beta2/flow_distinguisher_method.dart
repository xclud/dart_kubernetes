
/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethod {
  /// The main constructor.
  const FlowDistinguisherMethod({
    required this.type,
  });

  /// Creates a FlowDistinguisherMethod from JSON data.
  FlowDistinguisherMethod.fromJson(Map<String, dynamic> json)
      : this(
          type: json['type'],
        );

  /// Creates a list of FlowDistinguisherMethod from JSON data.
  static List<FlowDistinguisherMethod> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlowDistinguisherMethod.fromJson(e)).toList();
  }

  /// Converts a FlowDistinguisherMethod instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['type'] = type;
    

    return jsonData;
  }


  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final String type;
}
