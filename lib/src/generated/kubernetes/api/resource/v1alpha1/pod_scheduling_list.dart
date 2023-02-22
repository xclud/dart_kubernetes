import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/pod_scheduling.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// PodSchedulingList is a collection of Pod scheduling objects.
class PodSchedulingList {
  /// The main constructor.
  const PodSchedulingList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a PodSchedulingList from JSON data.
  PodSchedulingList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null ? PodScheduling.listFromJson((json['items'] as Iterable).cast<Map<String, dynamic>>()): [],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ListMeta.fromJson(json['metadata']): null,
        );

  /// Creates a list of PodSchedulingList from JSON data.
  static List<PodSchedulingList> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSchedulingList.fromJson(e)).toList();
  }

  /// Converts a PodSchedulingList instance to JSON data.
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

  /// Items is the list of PodScheduling objects.
  final List<PodScheduling> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata.
  final ListMeta? metadata;
}
