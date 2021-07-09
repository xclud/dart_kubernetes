import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/authentication/v1/token_request_spec.dart';
import 'package:kubernetes/src/generated/api/authentication/v1/token_request_status.dart';

/// TokenRequest requests a token for a given service account.
class TokenRequest {
  /// The main constructor.
  const TokenRequest({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a TokenRequest from JSON data.
  TokenRequest.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: TokenRequestSpec.fromJson(json['spec']),
          status: json['status'] != null
              ? TokenRequestStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of TokenRequest from JSON data.
  static List<TokenRequest> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenRequest.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec holds information about the request being evaluated.
  final TokenRequestSpec spec;

  /// Status is filled in by the server and indicates whether the token can be authenticated.
  final TokenRequestStatus? status;
}
