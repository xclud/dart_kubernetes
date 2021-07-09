import 'package:kubernetes/src/generated/api/core/v1/aws_elastic_block_store_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/azure_disk_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/azure_file_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/ceph_fs_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/cinder_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/config_map_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/csi_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/downward_api_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/empty_dir_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/ephemeral_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/fc_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/flex_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/flocker_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/gce_persistent_disk_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/git_repo_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/glusterfs_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/host_path_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/iscsi_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/nfs_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/photon_persistent_disk_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/portworx_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/projected_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/quobyte_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/rbd_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/scale_io_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/secret_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/storage_os_volume_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/vsphere_virtual_disk_volume_source.dart';

/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
class Volume {
  /// The main constructor.
  const Volume({
    this.awsElasticBlockStore,
    this.azureDisk,
    this.azureFile,
    this.cephfs,
    this.cinder,
    this.configMap,
    this.csi,
    this.downwardAPI,
    this.emptyDir,
    this.ephemeral,
    this.fc,
    this.flexVolume,
    this.flocker,
    this.gcePersistentDisk,
    this.gitRepo,
    this.glusterfs,
    this.hostPath,
    this.iscsi,
    required this.name,
    this.nfs,
    this.persistentVolumeClaim,
    this.photonPersistentDisk,
    this.portworxVolume,
    this.projected,
    this.quobyte,
    this.rbd,
    this.scaleIO,
    this.secret,
    this.storageos,
    this.vsphereVolume,
  });

  /// Creates a Volume from JSON data.
  Volume.fromJson(Map<String, dynamic> json)
      : this(
          awsElasticBlockStore: json['awsElasticBlockStore'] != null
              ? AWSElasticBlockStoreVolumeSource.fromJson(
                  json['awsElasticBlockStore'])
              : null,
          azureDisk: json['azureDisk'] != null
              ? AzureDiskVolumeSource.fromJson(json['azureDisk'])
              : null,
          azureFile: json['azureFile'] != null
              ? AzureFileVolumeSource.fromJson(json['azureFile'])
              : null,
          cephfs: json['cephfs'] != null
              ? CephFSVolumeSource.fromJson(json['cephfs'])
              : null,
          cinder: json['cinder'] != null
              ? CinderVolumeSource.fromJson(json['cinder'])
              : null,
          configMap: json['configMap'] != null
              ? ConfigMapVolumeSource.fromJson(json['configMap'])
              : null,
          csi: json['csi'] != null
              ? CSIVolumeSource.fromJson(json['csi'])
              : null,
          downwardAPI: json['downwardAPI'] != null
              ? DownwardAPIVolumeSource.fromJson(json['downwardAPI'])
              : null,
          emptyDir: json['emptyDir'] != null
              ? EmptyDirVolumeSource.fromJson(json['emptyDir'])
              : null,
          ephemeral: json['ephemeral'] != null
              ? EphemeralVolumeSource.fromJson(json['ephemeral'])
              : null,
          fc: json['fc'] != null ? FCVolumeSource.fromJson(json['fc']) : null,
          flexVolume: json['flexVolume'] != null
              ? FlexVolumeSource.fromJson(json['flexVolume'])
              : null,
          flocker: json['flocker'] != null
              ? FlockerVolumeSource.fromJson(json['flocker'])
              : null,
          gcePersistentDisk: json['gcePersistentDisk'] != null
              ? GCEPersistentDiskVolumeSource.fromJson(
                  json['gcePersistentDisk'])
              : null,
          gitRepo: json['gitRepo'] != null
              ? GitRepoVolumeSource.fromJson(json['gitRepo'])
              : null,
          glusterfs: json['glusterfs'] != null
              ? GlusterfsVolumeSource.fromJson(json['glusterfs'])
              : null,
          hostPath: json['hostPath'] != null
              ? HostPathVolumeSource.fromJson(json['hostPath'])
              : null,
          iscsi: json['iscsi'] != null
              ? ISCSIVolumeSource.fromJson(json['iscsi'])
              : null,
          name: json['name'],
          nfs: json['nfs'] != null
              ? NFSVolumeSource.fromJson(json['nfs'])
              : null,
          persistentVolumeClaim: json['persistentVolumeClaim'] != null
              ? PersistentVolumeClaimVolumeSource.fromJson(
                  json['persistentVolumeClaim'])
              : null,
          photonPersistentDisk: json['photonPersistentDisk'] != null
              ? PhotonPersistentDiskVolumeSource.fromJson(
                  json['photonPersistentDisk'])
              : null,
          portworxVolume: json['portworxVolume'] != null
              ? PortworxVolumeSource.fromJson(json['portworxVolume'])
              : null,
          projected: json['projected'] != null
              ? ProjectedVolumeSource.fromJson(json['projected'])
              : null,
          quobyte: json['quobyte'] != null
              ? QuobyteVolumeSource.fromJson(json['quobyte'])
              : null,
          rbd: json['rbd'] != null
              ? RBDVolumeSource.fromJson(json['rbd'])
              : null,
          scaleIO: json['scaleIO'] != null
              ? ScaleIOVolumeSource.fromJson(json['scaleIO'])
              : null,
          secret: json['secret'] != null
              ? SecretVolumeSource.fromJson(json['secret'])
              : null,
          storageos: json['storageos'] != null
              ? StorageOSVolumeSource.fromJson(json['storageos'])
              : null,
          vsphereVolume: json['vsphereVolume'] != null
              ? VsphereVirtualDiskVolumeSource.fromJson(json['vsphereVolume'])
              : null,
        );

  /// Creates a list of Volume from JSON data.
  static List<Volume> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Volume.fromJson(e)).toList();
  }

  /// AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final AWSElasticBlockStoreVolumeSource? awsElasticBlockStore;

  /// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  final AzureDiskVolumeSource? azureDisk;

  /// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  final AzureFileVolumeSource? azureFile;

  /// CephFS represents a Ceph FS mount on the host that shares a pod's lifetime.
  final CephFSVolumeSource? cephfs;

  /// Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final CinderVolumeSource? cinder;

  /// ConfigMap represents a configMap that should populate this volume.
  final ConfigMapVolumeSource? configMap;

  /// CSI (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature).
  final CSIVolumeSource? csi;

  /// DownwardAPI represents downward API about the pod that should populate this volume.
  final DownwardAPIVolumeSource? downwardAPI;

  /// EmptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir.
  final EmptyDirVolumeSource? emptyDir;

  /// Ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
  ///
  /// Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
  ///    tracking are needed,
  /// c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
  ///    a PersistentVolumeClaim (see EphemeralVolumeSource for more
  ///    information on the connection between this volume type
  ///    and PersistentVolumeClaim).
  ///
  /// Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
  ///
  /// Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
  ///
  /// A pod can use both types of ephemeral volumes and persistent volumes at the same time.
  ///
  /// This is a beta feature and only available when the GenericEphemeralVolume feature gate is enabled.
  final EphemeralVolumeSource? ephemeral;

  /// FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final FCVolumeSource? fc;

  /// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
  final FlexVolumeSource? flexVolume;

  /// Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running.
  final FlockerVolumeSource? flocker;

  /// GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final GCEPersistentDiskVolumeSource? gcePersistentDisk;

  /// GitRepo represents a git repository at a particular revision.  To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  final GitRepoVolumeSource? gitRepo;

  /// Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/glusterfs/README.md.
  final GlusterfsVolumeSource? glusterfs;

  /// HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath.
  final HostPathVolumeSource? hostPath;

  /// ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md.
  final ISCSIVolumeSource? iscsi;

  /// Volume's name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String name;

  /// NFS represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final NFSVolumeSource? nfs;

  /// PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims.
  final PersistentVolumeClaimVolumeSource? persistentVolumeClaim;

  /// PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine.
  final PhotonPersistentDiskVolumeSource? photonPersistentDisk;

  /// PortworxVolume represents a portworx volume attached and mounted on kubelets host machine.
  final PortworxVolumeSource? portworxVolume;

  /// Items for all in one resources secrets, configmaps, and downward API.
  final ProjectedVolumeSource? projected;

  /// Quobyte represents a Quobyte mount on the host that shares a pod's lifetime.
  final QuobyteVolumeSource? quobyte;

  /// RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md.
  final RBDVolumeSource? rbd;

  /// ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
  final ScaleIOVolumeSource? scaleIO;

  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret.
  final SecretVolumeSource? secret;

  /// StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
  final StorageOSVolumeSource? storageos;

  /// VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine.
  final VsphereVirtualDiskVolumeSource? vsphereVolume;
}
