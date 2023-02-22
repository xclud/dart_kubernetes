import 'package:kubernetes/src/generated/kubernetes/api/core/v1/preferred_scheduling_term.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_selector.dart';

/// Node affinity is a group of node affinity scheduling rules.
class NodeAffinity {
  /// The main constructor.
  const NodeAffinity({
    this.preferredDuringSchedulingIgnoredDuringExecution,
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  /// Creates a NodeAffinity from JSON data.
  NodeAffinity.fromJson(Map<String, dynamic> json)
      : this(
          preferredDuringSchedulingIgnoredDuringExecution: json['preferredDuringSchedulingIgnoredDuringExecution'] != null ? PreferredSchedulingTerm.listFromJson((json['preferredDuringSchedulingIgnoredDuringExecution'] as Iterable).cast<Map<String, dynamic>>()): null,
          requiredDuringSchedulingIgnoredDuringExecution: json['requiredDuringSchedulingIgnoredDuringExecution'] != null ? NodeSelector.fromJson(json['requiredDuringSchedulingIgnoredDuringExecution']): null,
        );

  /// Creates a list of NodeAffinity from JSON data.
  static List<NodeAffinity> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeAffinity.fromJson(e)).toList();
  }

  /// Converts a NodeAffinity instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(preferredDuringSchedulingIgnoredDuringExecution != null) { jsonData['preferredDuringSchedulingIgnoredDuringExecution'] = preferredDuringSchedulingIgnoredDuringExecution!.map((item) => item.toJson()).toList(); }
    if(requiredDuringSchedulingIgnoredDuringExecution != null) { jsonData['requiredDuringSchedulingIgnoredDuringExecution'] = requiredDuringSchedulingIgnoredDuringExecution!.toJson(); }
    

    return jsonData;
  }


  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  final List<PreferredSchedulingTerm>? preferredDuringSchedulingIgnoredDuringExecution;

  /// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
  final NodeSelector? requiredDuringSchedulingIgnoredDuringExecution;
}
