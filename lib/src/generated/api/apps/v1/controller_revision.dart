import 'package:kubernetes/src/generated/apimachinery/pkg/runtime/raw_extension.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// ControllerRevision implements an immutable snapshot of state data. Clients are responsible for serializing and deserializing the objects that contain their internal state. Once a ControllerRevision has been successfully created, it can not be updated. The API Server will fail validation of all requests that attempt to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this object is beta. However, it may be subject to name and representation changes in future releases, and clients should not depend on its stability. It is primarily for internal use by controllers.
class ControllerRevision {
  /// The main constructor.
  const ControllerRevision({
    this.apiVersion,
    this.data,
    this.kind,
    this.metadata,
    required this.revision,
  });

  /// Creates a ControllerRevision from JSON data.
  ControllerRevision.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          data:
              json['data'] != null ? RawExtension.fromJson(json['data']) : null,
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          revision: json['revision'],
        );

  /// Creates a list of ControllerRevision from JSON data.
  static List<ControllerRevision> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ControllerRevision.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Data is the serialized representation of the state.
  final RawExtension? data;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Revision indicates the revision of the state represented by Data.
  final int revision;
}
