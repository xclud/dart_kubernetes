import 'http_route.dart';
import 'tcp_route.dart';
import 'tls_route.dart';

class VirtualServiceSpec {
  /// The main constructor.
  const VirtualServiceSpec({
    this.hosts,
    this.gateways,
    this.http,
    this.tls,
    this.tcp,
    this.exportTo,
  });

  /// Creates a VirtualServiceSpec from JSON data.
  VirtualServiceSpec.fromJson(Map<String, dynamic> json) : this();

  final List<String>? hosts;
  final List<String>? gateways;
  final List<HTTPRoute>? http;
  final List<TLSRoute>? tls;
  final List<TCPRoute>? tcp;
  final List<String>? exportTo;
}
