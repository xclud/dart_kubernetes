import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running.
class PodAffinityTerm {
  /// The main constructor.
  const PodAffinityTerm({
    this.labelSelector,
    this.namespaceSelector,
    this.namespaces,
    required this.topologyKey,
  });

  /// Creates a PodAffinityTerm from JSON data.
  PodAffinityTerm.fromJson(Map<String, dynamic> json)
      : this(
          labelSelector: json['labelSelector'] != null
              ? LabelSelector.fromJson(json['labelSelector'])
              : null,
          namespaceSelector: json['namespaceSelector'] != null
              ? LabelSelector.fromJson(json['namespaceSelector'])
              : null,
          namespaces: json['namespaces'] != null
              ? List<String>.from(json['namespaces'])
              : null,
          topologyKey: json['topologyKey'],
        );

  /// Creates a list of PodAffinityTerm from JSON data.
  static List<PodAffinityTerm> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodAffinityTerm.fromJson(e)).toList();
  }

  /// Converts a PodAffinityTerm instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (labelSelector != null) {
      jsonData['labelSelector'] = labelSelector!.toJson();
    }
    if (namespaceSelector != null) {
      jsonData['namespaceSelector'] = namespaceSelector!.toJson();
    }
    if (namespaces != null) {
      jsonData['namespaces'] = namespaces!;
    }
    jsonData['topologyKey'] = topologyKey;

    return jsonData;
  }

  /// A label query over a set of resources, in this case pods.
  final LabelSelector? labelSelector;

  /// A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces.
  final LabelSelector? namespaceSelector;

  /// Namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace".
  final List<String>? namespaces;

  /// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  final String topologyKey;
}
