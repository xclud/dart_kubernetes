/// PodSchedulingSpec describes where resources for the Pod are needed.
class PodSchedulingSpec {
  /// The main constructor.
  const PodSchedulingSpec({
    this.potentialNodes,
    this.selectedNode,
  });

  /// Creates a PodSchedulingSpec from JSON data.
  PodSchedulingSpec.fromJson(Map<String, dynamic> json)
      : this(
          potentialNodes: json['potentialNodes'] != null
              ? List<String>.from(json['potentialNodes'])
              : null,
          selectedNode: json['selectedNode'],
        );

  /// Creates a list of PodSchedulingSpec from JSON data.
  static List<PodSchedulingSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSchedulingSpec.fromJson(e)).toList();
  }

  /// Converts a PodSchedulingSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (potentialNodes != null) {
      jsonData['potentialNodes'] = potentialNodes!;
    }
    if (selectedNode != null) {
      jsonData['selectedNode'] = selectedNode!;
    }

    return jsonData;
  }

  /// PotentialNodes lists nodes where the Pod might be able to run.
  ///
  /// The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  final List<String>? potentialNodes;

  /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
  final String? selectedNode;
}
