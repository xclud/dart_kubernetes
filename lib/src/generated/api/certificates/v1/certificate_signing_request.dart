import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/certificates/v1/certificate_signing_request_spec.dart';
import 'package:kubernetes/src/generated/api/certificates/v1/certificate_signing_request_status.dart';

/// CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.
///
/// Kubelets use this API to obtain:
///  1. client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client-kubelet" signerName).
///  2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the "kubernetes.io/kubelet-serving" signerName).
///
/// This API can be used to request client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.
class CertificateSigningRequest {
  /// The main constructor.
  const CertificateSigningRequest({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a CertificateSigningRequest from JSON data.
  CertificateSigningRequest.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: CertificateSigningRequestSpec.fromJson(json['spec']),
          status: json['status'] != null
              ? CertificateSigningRequestStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of CertificateSigningRequest from JSON data.
  static List<CertificateSigningRequest> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CertificateSigningRequest.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  ///
  final ObjectMeta? metadata;

  /// Spec contains the certificate request, and is immutable after creation. Only the request, signerName, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users.
  final CertificateSigningRequestSpec spec;

  /// Status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure.
  final CertificateSigningRequestStatus? status;
}
