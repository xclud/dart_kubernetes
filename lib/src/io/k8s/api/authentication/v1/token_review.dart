// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authentication_v1.dart';

/// TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
class TokenReview {
  /// Default constructor.
  const TokenReview({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a [TokenReview] from JSON data.
  factory TokenReview.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];
    final tempStatusJson = json['status'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final TokenReviewSpec tempSpec = TokenReviewSpec.fromJson(tempSpecJson);
    final TokenReviewStatus? tempStatus = tempStatusJson != null
        ? TokenReviewStatus.fromJson(tempStatusJson)
        : null;

    return TokenReview(
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

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec holds information about the request being evaluated.
  final TokenReviewSpec spec;

  /// Status is filled in by the server and indicates whether the request can be authenticated.
  final TokenReviewStatus? status;

  /// Converts a [TokenReview] instance to JSON data.
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
