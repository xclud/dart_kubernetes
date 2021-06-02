import 'other.dart';

class ObjectMeta {
  ObjectMeta({
    this.annotations,
    this.clusterName,
    this.creationTimestamp,
    this.deletionGracePeriodSeconds,
    this.deletionTimestamp,
    this.finalizers,
    this.generateName,
    this.generation,
    this.labels,
    this.managedFields,
    this.name,
    this.namespaceProperty,
    this.ownerReferences,
    this.resourceVersion,
    this.selfLink,
    this.uid,
  });

  final Map<String, String>? annotations;
  final String? clusterName;
  final DateTime? creationTimestamp;
  final int? deletionGracePeriodSeconds;
  final DateTime? deletionTimestamp;
  final List<String>? finalizers;
  final String? generateName;
  final int? generation;
  final Map<String, String>? labels;
  final List<ManagedFieldsEntry>? managedFields;
  final String? name;
  final String? namespaceProperty;
  final List<OwnerReference>? ownerReferences;
  final String? resourceVersion;
  final String? selfLink;
  final String? uid;
}
