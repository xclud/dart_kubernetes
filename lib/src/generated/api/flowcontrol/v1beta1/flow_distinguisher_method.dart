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
  static List<FlowDistinguisherMethod> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlowDistinguisherMethod.fromJson(e)).toList();
  }

  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final String type;
}
