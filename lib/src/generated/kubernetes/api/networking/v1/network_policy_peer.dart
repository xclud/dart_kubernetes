import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ip_block.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed.
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
          ipBlock: json['ipBlock'] != null ? IPBlock.fromJson(json['ipBlock']): null,
          namespaceSelector: json['namespaceSelector'] != null ? LabelSelector.fromJson(json['namespaceSelector']): null,
          podSelector: json['podSelector'] != null ? LabelSelector.fromJson(json['podSelector']): null,
        );

  /// Creates a list of NetworkPolicyPeer from JSON data.
  static List<NetworkPolicyPeer> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicyPeer.fromJson(e)).toList();
  }

  /// Converts a NetworkPolicyPeer instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(ipBlock != null) { jsonData['ipBlock'] = ipBlock!.toJson(); }
    if(namespaceSelector != null) { jsonData['namespaceSelector'] = namespaceSelector!.toJson(); }
    if(podSelector != null) { jsonData['podSelector'] = podSelector!.toJson(); }
    

    return jsonData;
  }


  /// IpBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final IPBlock? ipBlock;

  /// NamespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
/// 
/// If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector.
  final LabelSelector? namespaceSelector;

  /// PodSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
/// 
/// If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace.
  final LabelSelector? podSelector;
}
