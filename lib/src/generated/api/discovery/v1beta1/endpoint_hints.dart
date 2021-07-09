import 'package:kubernetes/src/generated/api/discovery/v1beta1/for_zone.dart';

/// EndpointHints provides hints describing how an endpoint should be consumed.
class EndpointHints {
  /// The main constructor.
  const EndpointHints({
    this.forZones,
  });

  /// Creates a EndpointHints from JSON data.
  EndpointHints.fromJson(Map<String, dynamic> json)
      : this(
          forZones: json['forZones'] != null
              ? ForZone.listFromJson(
                  (json['forZones'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of EndpointHints from JSON data.
  static List<EndpointHints> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointHints.fromJson(e)).toList();
  }

  /// ForZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing. May contain a maximum of 8 entries.
  final List<ForZone>? forZones;
}
