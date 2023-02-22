import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/validating_admission_policy_binding_spec.dart';

/// ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized resources. ValidatingAdmissionPolicyBinding and parameter CRDs together define how cluster administrators configure policies for clusters.
class ValidatingAdmissionPolicyBinding {
  /// The main constructor.
  const ValidatingAdmissionPolicyBinding({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  /// Creates a ValidatingAdmissionPolicyBinding from JSON data.
  ValidatingAdmissionPolicyBinding.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: json['spec'] != null ? ValidatingAdmissionPolicyBindingSpec.fromJson(json['spec']): null,
        );

  /// Creates a list of ValidatingAdmissionPolicyBinding from JSON data.
  static List<ValidatingAdmissionPolicyBinding> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ValidatingAdmissionPolicyBinding.fromJson(e)).toList();
  }

  /// Converts a ValidatingAdmissionPolicyBinding instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(spec != null) { jsonData['spec'] = spec!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  final ValidatingAdmissionPolicyBindingSpec? spec;
}
