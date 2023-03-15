// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources. Status is represented by the `.status` JSON path inside of a CustomResource. When set, * exposes a /status subresource for the custom resource * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza * PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza.
class CustomResourceSubresourceStatus {
  /// Default constructor.
  const CustomResourceSubresourceStatus();

  /// Creates a [CustomResourceSubresourceStatus] from JSON data.
  factory CustomResourceSubresourceStatus.fromJson(Map<String, dynamic> json) {
    return CustomResourceSubresourceStatus();
  }

  /// Converts a [CustomResourceSubresourceStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
