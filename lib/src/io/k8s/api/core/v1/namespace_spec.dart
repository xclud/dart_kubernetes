// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// NamespaceSpec describes the attributes on a Namespace.
class NamespaceSpec {
  /// Default constructor.
  const NamespaceSpec({
    this.finalizers,
  });

  /// Creates a [NamespaceSpec] from JSON data.
  factory NamespaceSpec.fromJson(Map<String, dynamic> json) {
    final tempFinalizersJson = json['finalizers'];

    final List<String>? tempFinalizers = tempFinalizersJson != null
        ? List<String>.from(tempFinalizersJson)
        : null;

    return NamespaceSpec(
      finalizers: tempFinalizers,
    );
  }

  /// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/.
  final List<String>? finalizers;

  /// Converts a [NamespaceSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFinalizers = finalizers;

    if (tempFinalizers != null) {
      jsonData['finalizers'] = tempFinalizers;
    }

    return jsonData;
  }
}
