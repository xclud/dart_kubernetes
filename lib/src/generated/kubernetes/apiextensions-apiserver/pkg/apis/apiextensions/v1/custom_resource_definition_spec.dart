import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_conversion.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_definition_names.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_definition_version.dart';

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear.
class CustomResourceDefinitionSpec {
  /// The main constructor.
  const CustomResourceDefinitionSpec({
    this.conversion,
    required this.group,
    required this.names,
    this.preserveUnknownFields,
    required this.scope,
    required this.versions,
  });

  /// Creates a CustomResourceDefinitionSpec from JSON data.
  CustomResourceDefinitionSpec.fromJson(Map<String, dynamic> json)
      : this(
          conversion: json['conversion'] != null
              ? CustomResourceConversion.fromJson(json['conversion'])
              : null,
          group: json['group'],
          names: CustomResourceDefinitionNames.fromJson(json['names']),
          preserveUnknownFields: json['preserveUnknownFields'],
          scope: json['scope'],
          versions: json['versions'] != null
              ? CustomResourceDefinitionVersion.listFromJson(
                  (json['versions'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of CustomResourceDefinitionSpec from JSON data.
  static List<CustomResourceDefinitionSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceDefinitionSpec.fromJson(e)).toList();
  }

  /// Converts a CustomResourceDefinitionSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (conversion != null) {
      jsonData['conversion'] = conversion!.toJson();
    }
    jsonData['group'] = group;
    jsonData['names'] = names.toJson();
    if (preserveUnknownFields != null) {
      jsonData['preserveUnknownFields'] = preserveUnknownFields!;
    }
    jsonData['scope'] = scope;
    jsonData['versions'] = versions.map((item) => item.toJson()).toList();

    return jsonData;
  }

  /// Conversion defines conversion settings for the CRD.
  final CustomResourceConversion? conversion;

  /// Group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final String group;

  /// Names specify the resource and kind names for the custom resource.
  final CustomResourceDefinitionNames names;

  /// PreserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  final bool? preserveUnknownFields;

  /// Scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  final String scope;

  /// Versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final List<CustomResourceDefinitionVersion> versions;
}
