/// TLS modes enforced by the proxy.
enum TlsMode {
  /// The SNI string presented by the client will be used as the match criterion in
  /// a VirtualService TLS route to determine the destination service from the service registry.
  passthrough, //PASSTHROUGH
  /// Secure connections with standard TLS semantics.
  simple, //SIMPLE
  /// Secure connections to the downstream using mutual TLS by presenting server certificates for authentication.
  mutual, //MUTUAL
  /// Similar to the passthrough mode, except servers with this TLS mode do not require an associated VirtualService
  /// to map from the SNI value to service in the registry. The destination details such as the service/subset/port
  /// are encoded in the SNI value. The proxy will forward to the upstream (Envoy) cluster (a group of endpoints)
  /// specified by the SNI value. This server is typically used to provide connectivity between services in disparate
  /// L3 networks that otherwise do not have direct connectivity between their respective endpoints.
  /// Use of this mode assumes that both the source and the destination are using Istio mTLS to secure traffic.
  /// In order for this mode to be enabled, the gateway deployment must be configured with the `ISTIO_META_ROUTER_MODE=sni-dnat` environment variable.
  autoPassthrough, //AUTO_PASSTHROUGH
  /// Secure connections from the downstream using mutual TLS by presenting server certificates for authentication.
  /// Compared to Mutual mode, this mode uses certificates, representing gateway workload identity, generated automatically
  /// by Istio for mTLS authentication. When this mode is used, all other fields in TLSOptions should be empty.
  istioMutual, //ISTIO_MUTUAL
}
