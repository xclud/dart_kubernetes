import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/validating_admission_policy_binding.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// ValidatingAdmissionPolicyBindingList is a list of ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingList {
  /// The main constructor.
  const ValidatingAdmissionPolicyBindingList({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a ValidatingAdmissionPolicyBindingList from JSON data.
  ValidatingAdmissionPolicyBindingList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null ? ValidatingAdmissionPolicyBinding.listFromJson((json['items'] as Iterable).cast<Map<String, dynamic>>()): null,
          kind: json['kind'],
          metadata: json['metadata'] != null ? ListMeta.fromJson(json['metadata']): null,
        );

  /// Creates a list of ValidatingAdmissionPolicyBindingList from JSON data.
  static List<ValidatingAdmissionPolicyBindingList> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ValidatingAdmissionPolicyBindingList.fromJson(e)).toList();
  }

  /// Converts a ValidatingAdmissionPolicyBindingList instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(items != null) { jsonData['items'] = items!.map((item) => item.toJson()).toList(); }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// List of PolicyBinding.
  final List<ValidatingAdmissionPolicyBinding>? items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final ListMeta? metadata;
}
