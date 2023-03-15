import 'server.dart';

/// Configuration affecting edge load balancer. See more details at: https://istio.io/docs/reference/config/networking/gateway.html
class GatewaySpec {
  /// The main constructor.
  const GatewaySpec({this.selector, this.servers});

  /// Creates a GatewaySpec from JSON data.
  GatewaySpec.fromJson(Map<String, dynamic> json)
      : this(
          servers: json['servers'] != null
              ? Server.listFromJson((json['servers'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .toList())
              : null,
          selector: json['selector'] != null
              ? Map<String, String>.from(json['selector'])
              : null,
        );

  /// Selector.
  final Map<String, String>? selector;

  /// A list of server specifications.
  final List<Server>? servers;
}
