// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apiextensions__apiserver_pkg_apis_apiextensions_v1.dart';

/// CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
class CustomResourceSubresourceScale {
  /// Default constructor.
  const CustomResourceSubresourceScale({
    this.labelSelectorPath,
    required this.specReplicasPath,
    required this.statusReplicasPath,
  });

  /// Creates a [CustomResourceSubresourceScale] from JSON data.
  factory CustomResourceSubresourceScale.fromJson(Map<String, dynamic> json) {
    final tempLabelSelectorPathJson = json['labelSelectorPath'];
    final tempSpecReplicasPathJson = json['specReplicasPath'];
    final tempStatusReplicasPathJson = json['statusReplicasPath'];

    final String? tempLabelSelectorPath = tempLabelSelectorPathJson;
    final String tempSpecReplicasPath = tempSpecReplicasPathJson;
    final String tempStatusReplicasPath = tempStatusReplicasPathJson;

    return CustomResourceSubresourceScale(
      labelSelectorPath: tempLabelSelectorPath,
      specReplicasPath: tempSpecReplicasPath,
      statusReplicasPath: tempStatusReplicasPath,
    );
  }

  /// labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
  final String? labelSelectorPath;

  /// specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  final String specReplicasPath;

  /// statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
  final String statusReplicasPath;

  /// Converts a [CustomResourceSubresourceScale] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLabelSelectorPath = labelSelectorPath;
    final tempSpecReplicasPath = specReplicasPath;
    final tempStatusReplicasPath = statusReplicasPath;

    if (tempLabelSelectorPath != null) {
      jsonData['labelSelectorPath'] = tempLabelSelectorPath;
    }

    jsonData['specReplicasPath'] = tempSpecReplicasPath;

    jsonData['statusReplicasPath'] = tempStatusReplicasPath;

    return jsonData;
  }
}
