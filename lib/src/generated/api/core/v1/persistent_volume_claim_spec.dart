import 'package:kubernetes/src/generated/api/core/v1/typed_local_object_reference.dart';
import 'package:kubernetes/src/generated/api/core/v1/resource_requirements.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes.
class PersistentVolumeClaimSpec {
  /// The main constructor.
  const PersistentVolumeClaimSpec({
    this.accessModes,
    this.dataSource,
    this.resources,
    this.selector,
    this.storageClassName,
    this.volumeMode,
    this.volumeName,
  });

  /// Creates a PersistentVolumeClaimSpec from JSON data.
  PersistentVolumeClaimSpec.fromJson(Map<String, dynamic> json)
      : this(
          accessModes: json['accessModes'] != null
              ? List<String>.from(json['accessModes'])
              : null,
          dataSource: json['dataSource'] != null
              ? TypedLocalObjectReference.fromJson(json['dataSource'])
              : null,
          resources: json['resources'] != null
              ? ResourceRequirements.fromJson(json['resources'])
              : null,
          selector: json['selector'] != null
              ? LabelSelector.fromJson(json['selector'])
              : null,
          storageClassName: json['storageClassName'],
          volumeMode: json['volumeMode'],
          volumeName: json['volumeName'],
        );

  /// Creates a list of PersistentVolumeClaimSpec from JSON data.
  static List<PersistentVolumeClaimSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeClaimSpec.fromJson(e)).toList();
  }

  /// AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1.
  final List<String>? accessModes;

  /// This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.
  final TypedLocalObjectReference? dataSource;

  /// Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources.
  final ResourceRequirements? resources;

  /// A label query over volumes to consider for binding.
  final LabelSelector? selector;

  /// Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1.
  final String? storageClassName;

  /// VolumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  final String? volumeMode;

  /// VolumeName is the binding reference to the PersistentVolume backing this claim.
  final String? volumeName;
}
