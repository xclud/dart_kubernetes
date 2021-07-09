import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/service_reference.dart';

/// WebhookClientConfig contains the information to make a TLS connection with the webhook.
class WebhookClientConfig {
  /// The main constructor.
  const WebhookClientConfig({
    this.caBundle,
    this.service,
    this.url,
  });

  /// Creates a WebhookClientConfig from JSON data.
  WebhookClientConfig.fromJson(Map<String, dynamic> json)
      : this(
          caBundle: json['caBundle'],
          service: json['service'] != null
              ? ServiceReference.fromJson(json['service'])
              : null,
          url: json['url'],
        );

  /// Creates a list of WebhookClientConfig from JSON data.
  static List<WebhookClientConfig> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => WebhookClientConfig.fromJson(e)).toList();
  }

  /// Converts a WebhookClientConfig instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (caBundle != null) {
      jsonData['caBundle'] = caBundle!;
    }
    if (service != null) {
      jsonData['service'] = service!.toJson();
    }
    if (url != null) {
      jsonData['url'] = url!;
    }

    return jsonData;
  }

  /// CaBundle is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.
  final String? caBundle;

  /// Service is a reference to the service for this webhook. Either service or url must be specified.
  ///
  /// If the webhook is running within the cluster, then you should use `service`.
  final ServiceReference? service;

  /// Url gives the location of the webhook, in standard URL form (`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.
  ///
  /// The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.
  ///
  /// Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.
  ///
  /// The scheme must be "https"; the URL must begin with "https://".
  ///
  /// A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.
  ///
  /// Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments ("#...") and query parameters ("?...") are not allowed, either.
  final String? url;
}
