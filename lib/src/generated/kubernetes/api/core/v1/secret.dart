import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
class Secret {
  /// The main constructor.
  const Secret({
    this.apiVersion,
    this.data,
    this.immutable,
    this.kind,
    this.metadata,
    this.stringData,
    this.type,
  });

  /// Creates a Secret from JSON data.
  Secret.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          data: json['data'] != null ? Map<String, String>.from(json['data']) : null,
          immutable: json['immutable'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          stringData: json['stringData'] != null ? Map<String, String>.from(json['stringData']) : null,
          type: json['type'],
        );

  /// Creates a list of Secret from JSON data.
  static List<Secret> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Secret.fromJson(e)).toList();
  }

  /// Converts a Secret instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(data != null) { jsonData['data'] = data!; }
    if(immutable != null) { jsonData['immutable'] = immutable!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(stringData != null) { jsonData['stringData'] = stringData!; }
    if(type != null) { jsonData['type'] = type!; }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4.
  final Map<String, String>? data;

  /// Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  final bool? immutable;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// StringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  final Map<String, String>? stringData;

  /// Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types.
  final String? type;
}
