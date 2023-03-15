// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.discovery.v1;

/// EndpointConditions represents the current condition of an endpoint.
class EndpointConditions {
  /// Default constructor.
  const EndpointConditions({
    this.ready,
    this.serving,
    this.terminating,
  });

  /// Creates a [EndpointConditions] from JSON data.
  factory EndpointConditions.fromJson(Map<String, dynamic> json) {
    final tempReadyJson = json['ready'];
    final tempServingJson = json['serving'];
    final tempTerminatingJson = json['terminating'];

    final tempReady = tempReadyJson;
    final tempServing = tempServingJson;
    final tempTerminating = tempTerminatingJson;

    return EndpointConditions(
      ready: tempReady,
      serving: tempServing,
      terminating: tempTerminating,
    );
  }

  /// ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
  final bool? ready;

  /// serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition.
  final bool? serving;

  /// terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating.
  final bool? terminating;

  /// Converts a [EndpointConditions] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempReady = ready;
    final tempServing = serving;
    final tempTerminating = terminating;

    if (tempReady != null) {
      jsonData['ready'] = tempReady;
    }

    if (tempServing != null) {
      jsonData['serving'] = tempServing;
    }

    if (tempTerminating != null) {
      jsonData['terminating'] = tempTerminating;
    }

    return jsonData;
  }
}
