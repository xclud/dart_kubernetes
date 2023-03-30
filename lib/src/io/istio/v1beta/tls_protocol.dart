part of io.istio.v1beta1;

/// TLS protocol versions.
enum TlsProtocol {
  /// Automatically choose the optimal TLS version.
  auto, //TLS_AUTO
  /// TLS version 1.0
  v1_0, //TLSV1_0
  /// TLS version 1.1
  v1_1, //TLSV1_1
  /// TLS version 1.2
  v1_2, //TLSV1_2
  /// TLS version 1.3
  v1_3, //TLSV1_3
}
