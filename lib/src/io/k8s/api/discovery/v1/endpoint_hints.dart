// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.discovery.v1;

/// EndpointHints provides hints describing how an endpoint should be consumed.
class EndpointHints {
  /// Default constructor.
  const EndpointHints({
    this.forZones,
  });

  /// Creates a [EndpointHints] from JSON data.
  factory EndpointHints.fromJson(Map<String, dynamic> json) {
    final tempForZonesJson = json['forZones'];

    final List<ForZone>? tempForZones = tempForZonesJson != null
        ? List<dynamic>.from(tempForZonesJson)
            .map((e) => ForZone.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : null;

    return EndpointHints(
      forZones: tempForZones,
    );
  }

  /// forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
  final List<ForZone>? forZones;

  /// Converts a [EndpointHints] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempForZones = forZones;

    if (tempForZones != null) {
      jsonData['forZones'] = tempForZones;
    }

    return jsonData;
  }
}
