import 'package:kubernetes/src/generated/api/core/v1/aws_elastic_block_store_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/azure_disk_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/azure_file_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/ceph_fs_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/cinder_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';
import 'package:kubernetes/src/generated/api/core/v1/csi_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/fc_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/flex_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/flocker_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/gce_persistent_disk_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/glusterfs_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/host_path_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/iscsi_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/local_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/nfs_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/volume_node_affinity.dart';
import 'package:kubernetes/src/generated/api/core/v1/photon_persistent_disk_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/portworx_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/quobyte_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/rbd_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/scale_io_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/storage_os_persistent_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/vsphere_virtual_disk_volume_source.dart';

/// PersistentVolumeSpec is the specification of a persistent volume.
class PersistentVolumeSpec {
  /// The main constructor.
  const PersistentVolumeSpec({
    this.accessModes,
    this.awsElasticBlockStore,
    this.azureDisk,
    this.azureFile,
    this.capacity,
    this.cephfs,
    this.cinder,
    this.claimRef,
    this.csi,
    this.fc,
    this.flexVolume,
    this.flocker,
    this.gcePersistentDisk,
    this.glusterfs,
    this.hostPath,
    this.iscsi,
    this.local,
    this.mountOptions,
    this.nfs,
    this.nodeAffinity,
    this.persistentVolumeReclaimPolicy,
    this.photonPersistentDisk,
    this.portworxVolume,
    this.quobyte,
    this.rbd,
    this.scaleIO,
    this.storageClassName,
    this.storageos,
    this.volumeMode,
    this.vsphereVolume,
  });

  /// Creates a PersistentVolumeSpec from JSON data.
  PersistentVolumeSpec.fromJson(Map<String, dynamic> json)
      : this(
          accessModes: json['accessModes'] != null
              ? List<String>.from(json['accessModes'])
              : null,
          awsElasticBlockStore: json['awsElasticBlockStore'] != null
              ? AWSElasticBlockStoreVolumeSource.fromJson(
                  json['awsElasticBlockStore'])
              : null,
          azureDisk: json['azureDisk'] != null
              ? AzureDiskVolumeSource.fromJson(json['azureDisk'])
              : null,
          azureFile: json['azureFile'] != null
              ? AzureFilePersistentVolumeSource.fromJson(json['azureFile'])
              : null,
          capacity: json['capacity'],
          cephfs: json['cephfs'] != null
              ? CephFSPersistentVolumeSource.fromJson(json['cephfs'])
              : null,
          cinder: json['cinder'] != null
              ? CinderPersistentVolumeSource.fromJson(json['cinder'])
              : null,
          claimRef: json['claimRef'] != null
              ? ObjectReference.fromJson(json['claimRef'])
              : null,
          csi: json['csi'] != null
              ? CSIPersistentVolumeSource.fromJson(json['csi'])
              : null,
          fc: json['fc'] != null ? FCVolumeSource.fromJson(json['fc']) : null,
          flexVolume: json['flexVolume'] != null
              ? FlexPersistentVolumeSource.fromJson(json['flexVolume'])
              : null,
          flocker: json['flocker'] != null
              ? FlockerVolumeSource.fromJson(json['flocker'])
              : null,
          gcePersistentDisk: json['gcePersistentDisk'] != null
              ? GCEPersistentDiskVolumeSource.fromJson(
                  json['gcePersistentDisk'])
              : null,
          glusterfs: json['glusterfs'] != null
              ? GlusterfsPersistentVolumeSource.fromJson(json['glusterfs'])
              : null,
          hostPath: json['hostPath'] != null
              ? HostPathVolumeSource.fromJson(json['hostPath'])
              : null,
          iscsi: json['iscsi'] != null
              ? ISCSIPersistentVolumeSource.fromJson(json['iscsi'])
              : null,
          local: json['local'] != null
              ? LocalVolumeSource.fromJson(json['local'])
              : null,
          mountOptions: json['mountOptions'] != null
              ? List<String>.from(json['mountOptions'])
              : null,
          nfs: json['nfs'] != null
              ? NFSVolumeSource.fromJson(json['nfs'])
              : null,
          nodeAffinity: json['nodeAffinity'] != null
              ? VolumeNodeAffinity.fromJson(json['nodeAffinity'])
              : null,
          persistentVolumeReclaimPolicy: json['persistentVolumeReclaimPolicy'],
          photonPersistentDisk: json['photonPersistentDisk'] != null
              ? PhotonPersistentDiskVolumeSource.fromJson(
                  json['photonPersistentDisk'])
              : null,
          portworxVolume: json['portworxVolume'] != null
              ? PortworxVolumeSource.fromJson(json['portworxVolume'])
              : null,
          quobyte: json['quobyte'] != null
              ? QuobyteVolumeSource.fromJson(json['quobyte'])
              : null,
          rbd: json['rbd'] != null
              ? RBDPersistentVolumeSource.fromJson(json['rbd'])
              : null,
          scaleIO: json['scaleIO'] != null
              ? ScaleIOPersistentVolumeSource.fromJson(json['scaleIO'])
              : null,
          storageClassName: json['storageClassName'],
          storageos: json['storageos'] != null
              ? StorageOSPersistentVolumeSource.fromJson(json['storageos'])
              : null,
          volumeMode: json['volumeMode'],
          vsphereVolume: json['vsphereVolume'] != null
              ? VsphereVirtualDiskVolumeSource.fromJson(json['vsphereVolume'])
              : null,
        );

  /// Creates a list of PersistentVolumeSpec from JSON data.
  static List<PersistentVolumeSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeSpec.fromJson(e)).toList();
  }

  /// AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
  final List<String>? accessModes;

  /// AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  final AWSElasticBlockStoreVolumeSource? awsElasticBlockStore;

  /// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  final AzureDiskVolumeSource? azureDisk;

  /// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  final AzureFilePersistentVolumeSource? azureFile;

  /// A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  final Object? capacity;

  /// CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
  final CephFSPersistentVolumeSource? cephfs;

  /// Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final CinderPersistentVolumeSource? cinder;

  /// ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
  final ObjectReference? claimRef;

  /// CSI represents storage that is handled by an external CSI driver (Beta feature).
  final CSIPersistentVolumeSource? csi;

  /// FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final FCVolumeSource? fc;

  /// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
  final FlexPersistentVolumeSource? flexVolume;

  /// Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
  final FlockerVolumeSource? flocker;

  /// GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  final GCEPersistentDiskVolumeSource? gcePersistentDisk;

  /// Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md
  final GlusterfsPersistentVolumeSource? glusterfs;

  /// HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final HostPathVolumeSource? hostPath;

  /// ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
  final ISCSIPersistentVolumeSource? iscsi;

  /// Local represents directly-attached storage with node affinity
  final LocalVolumeSource? local;

  /// A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
  final List<String>? mountOptions;

  /// NFS represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final NFSVolumeSource? nfs;

  /// NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
  final VolumeNodeAffinity? nodeAffinity;

  /// What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
  final String? persistentVolumeReclaimPolicy;

  /// PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
  final PhotonPersistentDiskVolumeSource? photonPersistentDisk;

  /// PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
  final PortworxVolumeSource? portworxVolume;

  /// Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
  final QuobyteVolumeSource? quobyte;

  /// RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md
  final RBDPersistentVolumeSource? rbd;

  /// ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
  final ScaleIOPersistentVolumeSource? scaleIO;

  /// Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  final String? storageClassName;

  /// StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: https://examples.k8s.io/volumes/storageos/README.md
  final StorageOSPersistentVolumeSource? storageos;

  /// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  final String? volumeMode;

  /// VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
  final VsphereVirtualDiskVolumeSource? vsphereVolume;
}
