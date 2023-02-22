/// CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources. Status is represented by the `.status` JSON path inside of a CustomResource. When set, * exposes a /status subresource for the custom resource * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza * PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza.
class CustomResourceSubresourceStatus {
  /// The main constructor.
  const CustomResourceSubresourceStatus();

  /// Creates a CustomResourceSubresourceStatus from JSON data.
  CustomResourceSubresourceStatus.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of CustomResourceSubresourceStatus from JSON data.
  static List<CustomResourceSubresourceStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => CustomResourceSubresourceStatus.fromJson(e))
        .toList();
  }

  /// Converts a CustomResourceSubresourceStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
