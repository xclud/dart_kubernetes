import 'other.dart';

class ObjectMeta {
  const ObjectMeta({
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
    this.namespace,
    this.ownerReferences,
    this.resourceVersion,
    this.selfLink,
    this.uid,
  });

  ObjectMeta.fromJson(Map<String, dynamic> json)
      : this(
          //annotations: json['annotations'],
          clusterName: json['clusterName'],
          creationTimestamp: json['creationTimestamp'] != null
              ? DateTime.tryParse(json['creationTimestamp'])
              : null,
          deletionGracePeriodSeconds: json['deletionGracePeriodSeconds'],
          deletionTimestamp: json['deletionTimestamp'] != null
              ? DateTime.tryParse(json['deletionTimestamp'])
              : null,
          finalizers: json['finalizers'] != null
              ? List<String>.from(json['finalizers'])
              : null,
          generateName: json['generateName'],
          generation: json['generation'],
          //labels: json['labels'],
          //managedFields: json['managedFields'],
          name: json['name'],
          namespace: json['namespace'],
          //ownerReferences: json['ownerReferences'],
          resourceVersion: json['resourceVersion'],
          selfLink: json['selfLink'],
          uid: json['uid'],
        );

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
  final String? namespace;
  final List<OwnerReference>? ownerReferences;
  final String? resourceVersion;
  final String? selfLink;
  final String? uid;
}
