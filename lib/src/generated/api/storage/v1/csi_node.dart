import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/storage/v1/csi_node_spec.dart';

/// CSINode holds information about all CSI drivers installed on a node. CSI drivers do not need to create the CSINode object directly. As long as they use the node-driver-registrar sidecar container, the kubelet will automatically populate the CSINode object for the CSI driver as part of kubelet plugin registration. CSINode has the same name as a node. If the object is missing, it means either there are no CSI Drivers available on the node, or the Kubelet version is low enough that it doesn't create this object. CSINode has an OwnerReference that points to the corresponding node object.
class CSINode {
  /// The main constructor.
  const CSINode({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  /// Creates a CSINode from JSON data.
  CSINode.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: CSINodeSpec.fromJson(json['spec']),
        );

  /// Creates a list of CSINode from JSON data.
  static List<CSINode> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CSINode.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// metadata.name must be the Kubernetes node name.
  final ObjectMeta? metadata;

  /// spec is the specification of CSINode
  final CSINodeSpec spec;
}
