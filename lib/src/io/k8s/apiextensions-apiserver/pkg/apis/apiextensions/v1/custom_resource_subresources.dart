// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apiextensions__apiserver_pkg_apis_apiextensions_v1.dart';

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
class CustomResourceSubresources {
  /// Default constructor.
  const CustomResourceSubresources({
    this.scale,
    this.status,
  });

  /// Creates a [CustomResourceSubresources] from JSON data.
  factory CustomResourceSubresources.fromJson(Map<String, dynamic> json) {
    final tempScaleJson = json['scale'];
    final tempStatusJson = json['status'];

    final CustomResourceSubresourceScale? tempScale = tempScaleJson != null
        ? CustomResourceSubresourceScale.fromJson(tempScaleJson)
        : null;
    final CustomResourceSubresourceStatus? tempStatus = tempStatusJson != null
        ? CustomResourceSubresourceStatus.fromJson(tempStatusJson)
        : null;

    return CustomResourceSubresources(
      scale: tempScale,
      status: tempStatus,
    );
  }

  /// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  final CustomResourceSubresourceScale? scale;

  /// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  final CustomResourceSubresourceStatus? status;

  /// Converts a [CustomResourceSubresources] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempScale = scale;
    final tempStatus = status;

    if (tempScale != null) {
      jsonData['scale'] = tempScale.toJson();
    }

    if (tempStatus != null) {
      jsonData['status'] = tempStatus.toJson();
    }

    return jsonData;
  }
}
