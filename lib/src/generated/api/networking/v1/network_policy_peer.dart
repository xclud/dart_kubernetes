import 'package:kubernetes/src/generated/api/networking/v1/ip_block.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed
class NetworkPolicyPeer {
  /// The main constructor.
  const NetworkPolicyPeer({
    this.ipBlock,
    this.namespaceSelector,
    this.podSelector,
  });

  /// Creates a NetworkPolicyPeer from JSON data.
  NetworkPolicyPeer.fromJson(Map<String, dynamic> json)
      : this(
          ipBlock: json['ipBlock'] != null
              ? IPBlock.fromJson(json['ipBlock'])
              : null,
          namespaceSelector: json['namespaceSelector'] != null
              ? LabelSelector.fromJson(json['namespaceSelector'])
              : null,
          podSelector: json['podSelector'] != null
              ? LabelSelector.fromJson(json['podSelector'])
              : null,
        );

  /// Creates a list of NetworkPolicyPeer from JSON data.
  static List<NetworkPolicyPeer> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicyPeer.fromJson(e)).toList();
  }

  /// IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final IPBlock? ipBlock;

  /// Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
  final LabelSelector? namespaceSelector;

  /// This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
  final LabelSelector? podSelector;
}
