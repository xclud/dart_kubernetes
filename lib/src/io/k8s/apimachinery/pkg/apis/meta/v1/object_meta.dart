// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apimachinery_pkg_apis_meta_v1.dart';

/// ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
class ObjectMeta {
  /// Default constructor.
  const ObjectMeta({
    this.annotations,
    this.creationTimestamp,
    this.deletionGracePeriodSeconds,
    this.deletionTimestamp,
    this.finalizers,
    this.generateName,
    this.generation,
    this.labels,
    this.managedFields,
    this.name,
    this.namespace,
    this.ownerReferences,
    this.resourceVersion,
    this.selfLink,
    this.uid,
  });

  /// Creates a [ObjectMeta] from JSON data.
  factory ObjectMeta.fromJson(Map<String, dynamic> json) {
    final tempAnnotationsJson = json['annotations'];
    final tempCreationTimestampJson = json['creationTimestamp'];
    final tempDeletionGracePeriodSecondsJson =
        json['deletionGracePeriodSeconds'];
    final tempDeletionTimestampJson = json['deletionTimestamp'];
    final tempFinalizersJson = json['finalizers'];
    final tempGenerateNameJson = json['generateName'];
    final tempGenerationJson = json['generation'];
    final tempLabelsJson = json['labels'];
    final tempManagedFieldsJson = json['managedFields'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempOwnerReferencesJson = json['ownerReferences'];
    final tempResourceVersionJson = json['resourceVersion'];
    final tempSelfLinkJson = json['selfLink'];
    final tempUidJson = json['uid'];

    final Map<String, String>? tempAnnotations = tempAnnotationsJson != null
        ? Map<String, String>.from(tempAnnotationsJson)
        : null;

    final DateTime? tempCreationTimestamp = tempCreationTimestampJson != null
        ? DateTime.tryParse(tempCreationTimestampJson)
        : null;
    final int? tempDeletionGracePeriodSeconds =
        tempDeletionGracePeriodSecondsJson;
    final DateTime? tempDeletionTimestamp = tempDeletionTimestampJson != null
        ? DateTime.tryParse(tempDeletionTimestampJson)
        : null;
    final List<String>? tempFinalizers = tempFinalizersJson != null
        ? List<String>.from(tempFinalizersJson)
        : null;
    final String? tempGenerateName = tempGenerateNameJson;
    final int? tempGeneration = tempGenerationJson;

    final Map<String, String>? tempLabels = tempLabelsJson != null
        ? Map<String, String>.from(tempLabelsJson)
        : null;

    final List<ManagedFieldsEntry>? tempManagedFields =
        tempManagedFieldsJson != null
            ? List<dynamic>.from(tempManagedFieldsJson)
                .map(
                  (e) => ManagedFieldsEntry.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;

    final List<OwnerReference>? tempOwnerReferences =
        tempOwnerReferencesJson != null
            ? List<dynamic>.from(tempOwnerReferencesJson)
                .map(
                  (e) => OwnerReference.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempResourceVersion = tempResourceVersionJson;
    final String? tempSelfLink = tempSelfLinkJson;
    final String? tempUid = tempUidJson;

    return ObjectMeta(
      annotations: tempAnnotations,
      creationTimestamp: tempCreationTimestamp,
      deletionGracePeriodSeconds: tempDeletionGracePeriodSeconds,
      deletionTimestamp: tempDeletionTimestamp,
      finalizers: tempFinalizers,
      generateName: tempGenerateName,
      generation: tempGeneration,
      labels: tempLabels,
      managedFields: tempManagedFields,
      name: tempName,
      namespace: tempNamespace,
      ownerReferences: tempOwnerReferences,
      resourceVersion: tempResourceVersion,
      selfLink: tempSelfLink,
      uid: tempUid,
    );
  }

  /// Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations.
  final Map<String, String>? annotations;

  /// CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
  ///
  /// Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final DateTime? creationTimestamp;

  /// Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
  final int? deletionGracePeriodSeconds;

  /// DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
  ///
  /// Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final DateTime? deletionTimestamp;

  /// Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
  final List<String>? finalizers;

  /// GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
  ///
  /// If this field is specified and the generated name exists, the server will return a 409.
  ///
  /// Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency.
  final String? generateName;

  /// A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
  final int? generation;

  /// Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels.
  final Map<String, String>? labels;

  /// ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
  final List<ManagedFieldsEntry>? managedFields;

  /// Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names.
  final String? name;

  /// Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
  ///
  /// Must be a DNS_LABEL. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces.
  final String? namespace;

  /// List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
  final List<OwnerReference>? ownerReferences;

  /// An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
  ///
  /// Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency.
  final String? resourceVersion;

  /// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
  final String? selfLink;

  /// UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
  ///
  /// Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids.
  final String? uid;

  /// Converts a [ObjectMeta] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAnnotations = annotations;
    final tempCreationTimestamp = creationTimestamp;
    final tempDeletionGracePeriodSeconds = deletionGracePeriodSeconds;
    final tempDeletionTimestamp = deletionTimestamp;
    final tempFinalizers = finalizers;
    final tempGenerateName = generateName;
    final tempGeneration = generation;
    final tempLabels = labels;
    final tempManagedFields = managedFields;
    final tempName = name;
    final tempNamespace = namespace;
    final tempOwnerReferences = ownerReferences;
    final tempResourceVersion = resourceVersion;
    final tempSelfLink = selfLink;
    final tempUid = uid;

    if (tempAnnotations != null) {
      jsonData['annotations'] = tempAnnotations;
    }

    if (tempCreationTimestamp != null) {
      jsonData['creationTimestamp'] = tempCreationTimestamp;
    }

    if (tempDeletionGracePeriodSeconds != null) {
      jsonData['deletionGracePeriodSeconds'] = tempDeletionGracePeriodSeconds;
    }

    if (tempDeletionTimestamp != null) {
      jsonData['deletionTimestamp'] = tempDeletionTimestamp;
    }

    if (tempFinalizers != null) {
      jsonData['finalizers'] = tempFinalizers;
    }

    if (tempGenerateName != null) {
      jsonData['generateName'] = tempGenerateName;
    }

    if (tempGeneration != null) {
      jsonData['generation'] = tempGeneration;
    }

    if (tempLabels != null) {
      jsonData['labels'] = tempLabels;
    }

    if (tempManagedFields != null) {
      jsonData['managedFields'] =
          tempManagedFields.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    if (tempOwnerReferences != null) {
      jsonData['ownerReferences'] =
          tempOwnerReferences.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempResourceVersion != null) {
      jsonData['resourceVersion'] = tempResourceVersion;
    }

    if (tempSelfLink != null) {
      jsonData['selfLink'] = tempSelfLink;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
