import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/storage/v1/volume_attachment_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/storage/v1/volume_attachment_status.dart';

/// VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.
/// 
/// VolumeAttachment objects are non-namespaced.
class VolumeAttachment {
  /// The main constructor.
  const VolumeAttachment({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a VolumeAttachment from JSON data.
  VolumeAttachment.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: VolumeAttachmentSpec.fromJson(json['spec']),
          status: json['status'] != null ? VolumeAttachmentStatus.fromJson(json['status']): null,
        );

  /// Creates a list of VolumeAttachment from JSON data.
  static List<VolumeAttachment> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeAttachment.fromJson(e)).toList();
  }

  /// Converts a VolumeAttachment instance to JSON data.
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

  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec represents specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
  final VolumeAttachmentSpec spec;

  /// Status represents status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
  final VolumeAttachmentStatus? status;
}
