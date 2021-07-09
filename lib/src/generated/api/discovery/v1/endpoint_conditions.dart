/// EndpointConditions represents the current condition of an endpoint.
class EndpointConditions {
  /// The main constructor.
  const EndpointConditions({
    this.ready,
    this.serving,
    this.terminating,
  });

  /// Creates a EndpointConditions from JSON data.
  EndpointConditions.fromJson(Map<String, dynamic> json)
      : this(
          ready: json['ready'],
          serving: json['serving'],
          terminating: json['terminating'],
        );

  /// Creates a list of EndpointConditions from JSON data.
  static List<EndpointConditions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointConditions.fromJson(e)).toList();
  }

  /// Ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
  final bool? ready;

  /// Serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
  final bool? serving;

  /// Terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
  final bool? terminating;
}
