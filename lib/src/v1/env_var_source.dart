class EnvVarSource {
  const EnvVarSource({
    this.configMapKeyRef,
    this.fieldRef,
    this.resourceFieldRef,
    this.secretKeyRef,
  });

  EnvVarSource.jsonJson(Map<String, dynamic> json) : this();

  final ConfigMapKeySelector? configMapKeyRef;
  final ObjectFieldSelector? fieldRef;
  final ResourceFieldSelector? resourceFieldRef;
  final SecretKeySelector? secretKeyRef;
}

class ConfigMapKeySelector {}

class ObjectFieldSelector {}

class ResourceFieldSelector {}

class SecretKeySelector {}
