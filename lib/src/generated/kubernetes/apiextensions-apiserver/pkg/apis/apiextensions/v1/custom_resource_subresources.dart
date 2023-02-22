import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_subresource_scale.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_subresource_status.dart';

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
class CustomResourceSubresources {
  /// The main constructor.
  const CustomResourceSubresources({
    this.scale,
    this.status,
  });

  /// Creates a CustomResourceSubresources from JSON data.
  CustomResourceSubresources.fromJson(Map<String, dynamic> json)
      : this(
          scale: json['scale'] != null
              ? CustomResourceSubresourceScale.fromJson(json['scale'])
              : null,
          status: json['status'] != null
              ? CustomResourceSubresourceStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of CustomResourceSubresources from JSON data.
  static List<CustomResourceSubresources> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceSubresources.fromJson(e)).toList();
  }

  /// Converts a CustomResourceSubresources instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (scale != null) {
      jsonData['scale'] = scale!.toJson();
    }
    if (status != null) {
      jsonData['status'] = status!.toJson();
    }

    return jsonData;
  }

  /// Scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  final CustomResourceSubresourceScale? scale;

  /// Status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  final CustomResourceSubresourceStatus? status;
}
