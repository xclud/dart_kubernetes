import 'package:kubernetes/src/generated/kubernetes/api/discovery/v1/for_zone.dart';

/// EndpointHints provides hints describing how an endpoint should be consumed.
class EndpointHints {
  /// The main constructor.
  const EndpointHints({
    this.forZones,
  });

  /// Creates a EndpointHints from JSON data.
  EndpointHints.fromJson(Map<String, dynamic> json)
      : this(
          forZones: json['forZones'] != null ? ForZone.listFromJson((json['forZones'] as Iterable).cast<Map<String, dynamic>>()): null,
        );

  /// Creates a list of EndpointHints from JSON data.
  static List<EndpointHints> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointHints.fromJson(e)).toList();
  }

  /// Converts a EndpointHints instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(forZones != null) { jsonData['forZones'] = forZones!.map((item) => item.toJson()).toList(); }
    

    return jsonData;
  }


  /// ForZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
  final List<ForZone>? forZones;
}
