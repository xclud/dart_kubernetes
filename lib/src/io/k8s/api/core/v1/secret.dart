// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
class Secret {
  /// Default constructor.
  const Secret({
    this.apiVersion,
    this.data = const {},
    this.immutable,
    this.kind,
    this.metadata,
    this.stringData = const {},
    this.type,
  });

  /// Creates a [Secret] from JSON data.
  factory Secret.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempDataJson = json['data'];
    final tempImmutableJson = json['immutable'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempStringDataJson = json['stringData'];
    final tempTypeJson = json['type'];

    final String? tempApiVersion = tempApiVersionJson;
    final Map<String, String> tempData = tempDataJson;
    final bool? tempImmutable = tempImmutableJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final Map<String, String> tempStringData = tempStringDataJson;
    final String? tempType = tempTypeJson;

    return Secret(
      apiVersion: tempApiVersion,
      data: tempData,
      immutable: tempImmutable,
      kind: tempKind,
      metadata: tempMetadata,
      stringData: tempStringData,
      type: tempType,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4.
  final Map<String, String> data;

  /// Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  final bool? immutable;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// stringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  final Map<String, String> stringData;

  /// Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types.
  final String? type;

  /// Converts a [Secret] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempData = data;
    final tempImmutable = immutable;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempStringData = stringData;
    final tempType = type;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['data'] = tempData;

    if (tempImmutable != null) {
      jsonData['immutable'] = tempImmutable;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    jsonData['stringData'] = tempStringData;

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    return jsonData;
  }
}
