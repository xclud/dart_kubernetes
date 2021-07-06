import 'package:kubernetes/src/istio/port_selector.dart';

class Destination {
  const Destination({
    required this.host,
    this.subnet,
    this.port,
  });

  final String host;
  final String? subnet;
  final PortSelector? port;
}
