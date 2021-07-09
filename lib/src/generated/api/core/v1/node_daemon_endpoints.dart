import 'package:kubernetes/src/generated/api/core/v1/daemon_endpoint.dart';

/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
class NodeDaemonEndpoints {
  /// The main constructor.
  const NodeDaemonEndpoints({
    this.kubeletEndpoint,
  });

  /// Creates a NodeDaemonEndpoints from JSON data.
  NodeDaemonEndpoints.fromJson(Map<String, dynamic> json)
      : this(
          kubeletEndpoint: json['kubeletEndpoint'] != null
              ? DaemonEndpoint.fromJson(json['kubeletEndpoint'])
              : null,
        );

  /// Creates a list of NodeDaemonEndpoints from JSON data.
  static List<NodeDaemonEndpoints> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeDaemonEndpoints.fromJson(e)).toList();
  }

  /// Converts a NodeDaemonEndpoints instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (kubeletEndpoint != null) {
      jsonData['kubeletEndpoint'] = kubeletEndpoint!.toJson();
    }

    return jsonData;
  }

  /// Endpoint on which Kubelet is listening.
  final DaemonEndpoint? kubeletEndpoint;
}
