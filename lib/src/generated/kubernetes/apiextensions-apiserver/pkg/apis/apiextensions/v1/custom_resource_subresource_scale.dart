
/// CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
class CustomResourceSubresourceScale {
  /// The main constructor.
  const CustomResourceSubresourceScale({
    this.labelSelectorPath,
    required this.specReplicasPath,
    required this.statusReplicasPath,
  });

  /// Creates a CustomResourceSubresourceScale from JSON data.
  CustomResourceSubresourceScale.fromJson(Map<String, dynamic> json)
      : this(
          labelSelectorPath: json['labelSelectorPath'],
          specReplicasPath: json['specReplicasPath'],
          statusReplicasPath: json['statusReplicasPath'],
        );

  /// Creates a list of CustomResourceSubresourceScale from JSON data.
  static List<CustomResourceSubresourceScale> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceSubresourceScale.fromJson(e)).toList();
  }

  /// Converts a CustomResourceSubresourceScale instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(labelSelectorPath != null) { jsonData['labelSelectorPath'] = labelSelectorPath!; }
    jsonData['specReplicasPath'] = specReplicasPath;
    jsonData['statusReplicasPath'] = statusReplicasPath;
    

    return jsonData;
  }


  /// LabelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
  final String? labelSelectorPath;

  /// SpecReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  final String specReplicasPath;

  /// StatusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
  final String statusReplicasPath;
}
