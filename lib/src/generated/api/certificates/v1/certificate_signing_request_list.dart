import 'package:kubernetes/src/generated/api/certificates/v1/certificate_signing_request.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// CertificateSigningRequestList is a collection of CertificateSigningRequest objects.
class CertificateSigningRequestList {
  /// The main constructor.
  const CertificateSigningRequestList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a CertificateSigningRequestList from JSON data.
  CertificateSigningRequestList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null
              ? CertificateSigningRequest.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of CertificateSigningRequestList from JSON data.
  static List<CertificateSigningRequestList> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CertificateSigningRequestList.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Items is a collection of CertificateSigningRequest objects.
  final List<CertificateSigningRequest> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  ///
  final ListMeta? metadata;
}
