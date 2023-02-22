import 'package:kubernetes/src/generated/kubernetes/api/core/v1/persistent_volume.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// PersistentVolumeList is a list of PersistentVolume items.
class PersistentVolumeList {
  /// The main constructor.
  const PersistentVolumeList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a PersistentVolumeList from JSON data.
  PersistentVolumeList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null ? PersistentVolume.listFromJson((json['items'] as Iterable).cast<Map<String, dynamic>>()): [],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ListMeta.fromJson(json['metadata']): null,
        );

  /// Creates a list of PersistentVolumeList from JSON data.
  static List<PersistentVolumeList> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeList.fromJson(e)).toList();
  }

  /// Converts a PersistentVolumeList instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    jsonData['items'] = items.map((item) => item.toJson()).toList();
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Items is a list of persistent volumes. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes.
  final List<PersistentVolume> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final ListMeta? metadata;
}
