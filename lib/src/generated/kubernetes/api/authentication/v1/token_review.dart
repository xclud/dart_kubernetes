import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authentication/v1/token_review_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authentication/v1/token_review_status.dart';

/// TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
class TokenReview {
  /// The main constructor.
  const TokenReview({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a TokenReview from JSON data.
  TokenReview.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: TokenReviewSpec.fromJson(json['spec']),
          status: json['status'] != null ? TokenReviewStatus.fromJson(json['status']): null,
        );

  /// Creates a list of TokenReview from JSON data.
  static List<TokenReview> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenReview.fromJson(e)).toList();
  }

  /// Converts a TokenReview instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    jsonData['spec'] = spec.toJson();
    if(status != null) { jsonData['status'] = status!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec holds information about the request being evaluated.
  final TokenReviewSpec spec;

  /// Status is filled in by the server and indicates whether the request can be authenticated.
  final TokenReviewStatus? status;
}
