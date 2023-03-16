// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.certificates.v1;

/// CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.
///
/// Kubelets use this API to obtain:
///  1. client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client-kubelet" signerName).
///  2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the "kubernetes.io/kubelet-serving" signerName).
///
/// This API can be used to request client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.
class CertificateSigningRequest {
  /// Default constructor.
  const CertificateSigningRequest({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a [CertificateSigningRequest] from JSON data.
  factory CertificateSigningRequest.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];
    final tempStatusJson = json['status'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final CertificateSigningRequestSpec tempSpec =
        CertificateSigningRequestSpec.fromJson(tempSpecJson);
    final CertificateSigningRequestStatus? tempStatus = tempStatusJson != null
        ? CertificateSigningRequestStatus.fromJson(tempStatusJson)
        : null;

    return CertificateSigningRequest(
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      spec: tempSpec,
      status: tempStatus,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Metadata.
  final ObjectMeta? metadata;

  /// spec contains the certificate request, and is immutable after creation. Only the request, signerName, expirationSeconds, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users.
  final CertificateSigningRequestSpec spec;

  /// status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure.
  final CertificateSigningRequestStatus? status;

  /// Converts a [CertificateSigningRequest] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempSpec = spec;
    final tempStatus = status;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    jsonData['spec'] = tempSpec.toJson();

    if (tempStatus != null) {
      jsonData['status'] = tempStatus.toJson();
    }

    return jsonData;
  }
}
