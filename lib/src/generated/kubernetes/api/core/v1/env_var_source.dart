import 'package:kubernetes/src/generated/kubernetes/api/core/v1/config_map_key_selector.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/object_field_selector.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/resource_field_selector.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/secret_key_selector.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSource {
  /// The main constructor.
  const EnvVarSource({
    this.configMapKeyRef,
    this.fieldRef,
    this.resourceFieldRef,
    this.secretKeyRef,
  });

  /// Creates a EnvVarSource from JSON data.
  EnvVarSource.fromJson(Map<String, dynamic> json)
      : this(
          configMapKeyRef: json['configMapKeyRef'] != null ? ConfigMapKeySelector.fromJson(json['configMapKeyRef']): null,
          fieldRef: json['fieldRef'] != null ? ObjectFieldSelector.fromJson(json['fieldRef']): null,
          resourceFieldRef: json['resourceFieldRef'] != null ? ResourceFieldSelector.fromJson(json['resourceFieldRef']): null,
          secretKeyRef: json['secretKeyRef'] != null ? SecretKeySelector.fromJson(json['secretKeyRef']): null,
        );

  /// Creates a list of EnvVarSource from JSON data.
  static List<EnvVarSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EnvVarSource.fromJson(e)).toList();
  }

  /// Converts a EnvVarSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(configMapKeyRef != null) { jsonData['configMapKeyRef'] = configMapKeyRef!.toJson(); }
    if(fieldRef != null) { jsonData['fieldRef'] = fieldRef!.toJson(); }
    if(resourceFieldRef != null) { jsonData['resourceFieldRef'] = resourceFieldRef!.toJson(); }
    if(secretKeyRef != null) { jsonData['secretKeyRef'] = secretKeyRef!.toJson(); }
    

    return jsonData;
  }


  /// Selects a key of a ConfigMap.
  final ConfigMapKeySelector? configMapKeyRef;

  /// Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
  final ObjectFieldSelector? fieldRef;

  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
  final ResourceFieldSelector? resourceFieldRef;

  /// Selects a key of a secret in the pod's namespace.
  final SecretKeySelector? secretKeyRef;
}
