import 'configmap_volume_source.dart';

class Volume {
  const Volume({
    required this.name,
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

  Volume.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          configMap: json['configMap'] != null
              ? ConfigMapVolumeSource.fromJson(json['configMap'])
              : null,
        );

  static List<Volume> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Volume.fromJson(e)).toList();
  }

  final String name;

  final AWSElasticBlockStoreVolumeSource? awsElasticBlockStore;
  final AzureDiskVolumeSource? azureDisk;
  final AzureFileVolumeSource? azureFile;
  final CephFSVolumeSource? cephfs;
  final CinderVolumeSource? cinder;
  final ConfigMapVolumeSource? configMap;
  final CSIVolumeSource? csi;
  final DownwardAPIVolumeSource? downwardAPI;
  final EmptyDirVolumeSource? emptyDir;
  final EphemeralVolumeSource? ephemeral;
  final FCVolumeSource? fc;
  final FlexVolumeSource? flexVolume;
  final FlockerVolumeSource? flocker;
  final GCEPersistentDiskVolumeSource? gcePersistentDisk;
  final GitRepoVolumeSource? gitRepo;
  final GlusterfsVolumeSource? glusterfs;
  final HostPathVolumeSource? hostPath;
  final ISCSIVolumeSource? iscsi;
  final NFSVolumeSource? nfs;
  final PersistentVolumeClaimVolumeSource? persistentVolumeClaim;
  final PhotonPersistentDiskVolumeSource? photonPersistentDisk;
  final PortworxVolumeSource? portworxVolume;
  final ProjectedVolumeSource? projected;
  final QuobyteVolumeSource? quobyte;
  final RBDVolumeSource? rbd;
  final ScaleIOVolumeSource? scaleIO;
  final SecretVolumeSource? secret;
  final StorageOSVolumeSource? storageos;
  final VsphereVirtualDiskVolumeSource? vsphereVolume;
}

class AWSElasticBlockStoreVolumeSource {}

class AzureDiskVolumeSource {}

class AzureFileVolumeSource {}

class CephFSVolumeSource {}

class CinderVolumeSource {}

class CSIVolumeSource {}

class DownwardAPIVolumeSource {}

class EmptyDirVolumeSource {}

class EphemeralVolumeSource {}

class FCVolumeSource {}

class FlexVolumeSource {}

class FlockerVolumeSource {}

class GCEPersistentDiskVolumeSource {}

class GitRepoVolumeSource {}

class GlusterfsVolumeSource {}

class HostPathVolumeSource {}

class ISCSIVolumeSource {}

class NFSVolumeSource {}

class PersistentVolumeClaimVolumeSource {}

class PhotonPersistentDiskVolumeSource {}

class PortworxVolumeSource {}

class ProjectedVolumeSource {}

class QuobyteVolumeSource {}

class RBDVolumeSource {}

class ScaleIOVolumeSource {}

class SecretVolumeSource {}

class StorageOSVolumeSource {}

class VsphereVirtualDiskVolumeSource {}
