// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha2;

/// PodSchedulingContextSpec describes where resources for the Pod are needed.
class PodSchedulingContextSpec {
  /// Default constructor.
  const PodSchedulingContextSpec({
    this.potentialNodes,
    this.selectedNode,
  });

  /// Creates a [PodSchedulingContextSpec] from JSON data.
  factory PodSchedulingContextSpec.fromJson(Map<String, dynamic> json) {
    final tempPotentialNodesJson = json['potentialNodes'];
    final tempSelectedNodeJson = json['selectedNode'];

    final List<String>? tempPotentialNodes = tempPotentialNodesJson != null
        ? List<String>.from(tempPotentialNodesJson)
        : null;
    final String? tempSelectedNode = tempSelectedNodeJson;

    return PodSchedulingContextSpec(
      potentialNodes: tempPotentialNodes,
      selectedNode: tempSelectedNode,
    );
  }

  /// PotentialNodes lists nodes where the Pod might be able to run.
  ///
  /// The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  final List<String>? potentialNodes;

  /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
  final String? selectedNode;

  /// Converts a [PodSchedulingContextSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPotentialNodes = potentialNodes;
    final tempSelectedNode = selectedNode;

    if (tempPotentialNodes != null) {
      jsonData['potentialNodes'] = tempPotentialNodes;
    }

    if (tempSelectedNode != null) {
      jsonData['selectedNode'] = tempSelectedNode;
    }

    return jsonData;
  }
}
