// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
class Volume {
  /// Default constructor.
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

  /// Creates a [Volume] from JSON data.
  factory Volume.fromJson(Map<String, dynamic> json) {
    final tempAwsElasticBlockStoreJson = json['awsElasticBlockStore'];
    final tempAzureDiskJson = json['azureDisk'];
    final tempAzureFileJson = json['azureFile'];
    final tempCephfsJson = json['cephfs'];
    final tempCinderJson = json['cinder'];
    final tempConfigMapJson = json['configMap'];
    final tempCsiJson = json['csi'];
    final tempDownwardAPIJson = json['downwardAPI'];
    final tempEmptyDirJson = json['emptyDir'];
    final tempEphemeralJson = json['ephemeral'];
    final tempFcJson = json['fc'];
    final tempFlexVolumeJson = json['flexVolume'];
    final tempFlockerJson = json['flocker'];
    final tempGcePersistentDiskJson = json['gcePersistentDisk'];
    final tempGitRepoJson = json['gitRepo'];
    final tempGlusterfsJson = json['glusterfs'];
    final tempHostPathJson = json['hostPath'];
    final tempIscsiJson = json['iscsi'];
    final tempNameJson = json['name'];
    final tempNfsJson = json['nfs'];
    final tempPersistentVolumeClaimJson = json['persistentVolumeClaim'];
    final tempPhotonPersistentDiskJson = json['photonPersistentDisk'];
    final tempPortworxVolumeJson = json['portworxVolume'];
    final tempProjectedJson = json['projected'];
    final tempQuobyteJson = json['quobyte'];
    final tempRbdJson = json['rbd'];
    final tempScaleIOJson = json['scaleIO'];
    final tempSecretJson = json['secret'];
    final tempStorageosJson = json['storageos'];
    final tempVsphereVolumeJson = json['vsphereVolume'];

    final AWSElasticBlockStoreVolumeSource? tempAwsElasticBlockStore =
        tempAwsElasticBlockStoreJson != null
            ? AWSElasticBlockStoreVolumeSource.fromJson(
                tempAwsElasticBlockStoreJson)
            : null;
    final AzureDiskVolumeSource? tempAzureDisk = tempAzureDiskJson != null
        ? AzureDiskVolumeSource.fromJson(tempAzureDiskJson)
        : null;
    final AzureFileVolumeSource? tempAzureFile = tempAzureFileJson != null
        ? AzureFileVolumeSource.fromJson(tempAzureFileJson)
        : null;
    final CephFSVolumeSource? tempCephfs = tempCephfsJson != null
        ? CephFSVolumeSource.fromJson(tempCephfsJson)
        : null;
    final CinderVolumeSource? tempCinder = tempCinderJson != null
        ? CinderVolumeSource.fromJson(tempCinderJson)
        : null;
    final ConfigMapVolumeSource? tempConfigMap = tempConfigMapJson != null
        ? ConfigMapVolumeSource.fromJson(tempConfigMapJson)
        : null;
    final CSIVolumeSource? tempCsi =
        tempCsiJson != null ? CSIVolumeSource.fromJson(tempCsiJson) : null;
    final DownwardAPIVolumeSource? tempDownwardAPI = tempDownwardAPIJson != null
        ? DownwardAPIVolumeSource.fromJson(tempDownwardAPIJson)
        : null;
    final EmptyDirVolumeSource? tempEmptyDir = tempEmptyDirJson != null
        ? EmptyDirVolumeSource.fromJson(tempEmptyDirJson)
        : null;
    final EphemeralVolumeSource? tempEphemeral = tempEphemeralJson != null
        ? EphemeralVolumeSource.fromJson(tempEphemeralJson)
        : null;
    final FCVolumeSource? tempFc =
        tempFcJson != null ? FCVolumeSource.fromJson(tempFcJson) : null;
    final FlexVolumeSource? tempFlexVolume = tempFlexVolumeJson != null
        ? FlexVolumeSource.fromJson(tempFlexVolumeJson)
        : null;
    final FlockerVolumeSource? tempFlocker = tempFlockerJson != null
        ? FlockerVolumeSource.fromJson(tempFlockerJson)
        : null;
    final GCEPersistentDiskVolumeSource? tempGcePersistentDisk =
        tempGcePersistentDiskJson != null
            ? GCEPersistentDiskVolumeSource.fromJson(tempGcePersistentDiskJson)
            : null;
    final GitRepoVolumeSource? tempGitRepo = tempGitRepoJson != null
        ? GitRepoVolumeSource.fromJson(tempGitRepoJson)
        : null;
    final GlusterfsVolumeSource? tempGlusterfs = tempGlusterfsJson != null
        ? GlusterfsVolumeSource.fromJson(tempGlusterfsJson)
        : null;
    final HostPathVolumeSource? tempHostPath = tempHostPathJson != null
        ? HostPathVolumeSource.fromJson(tempHostPathJson)
        : null;
    final ISCSIVolumeSource? tempIscsi = tempIscsiJson != null
        ? ISCSIVolumeSource.fromJson(tempIscsiJson)
        : null;
    final String tempName = tempNameJson;
    final NFSVolumeSource? tempNfs =
        tempNfsJson != null ? NFSVolumeSource.fromJson(tempNfsJson) : null;
    final PersistentVolumeClaimVolumeSource? tempPersistentVolumeClaim =
        tempPersistentVolumeClaimJson != null
            ? PersistentVolumeClaimVolumeSource.fromJson(
                tempPersistentVolumeClaimJson)
            : null;
    final PhotonPersistentDiskVolumeSource? tempPhotonPersistentDisk =
        tempPhotonPersistentDiskJson != null
            ? PhotonPersistentDiskVolumeSource.fromJson(
                tempPhotonPersistentDiskJson)
            : null;
    final PortworxVolumeSource? tempPortworxVolume =
        tempPortworxVolumeJson != null
            ? PortworxVolumeSource.fromJson(tempPortworxVolumeJson)
            : null;
    final ProjectedVolumeSource? tempProjected = tempProjectedJson != null
        ? ProjectedVolumeSource.fromJson(tempProjectedJson)
        : null;
    final QuobyteVolumeSource? tempQuobyte = tempQuobyteJson != null
        ? QuobyteVolumeSource.fromJson(tempQuobyteJson)
        : null;
    final RBDVolumeSource? tempRbd =
        tempRbdJson != null ? RBDVolumeSource.fromJson(tempRbdJson) : null;
    final ScaleIOVolumeSource? tempScaleIO = tempScaleIOJson != null
        ? ScaleIOVolumeSource.fromJson(tempScaleIOJson)
        : null;
    final SecretVolumeSource? tempSecret = tempSecretJson != null
        ? SecretVolumeSource.fromJson(tempSecretJson)
        : null;
    final StorageOSVolumeSource? tempStorageos = tempStorageosJson != null
        ? StorageOSVolumeSource.fromJson(tempStorageosJson)
        : null;
    final VsphereVirtualDiskVolumeSource? tempVsphereVolume =
        tempVsphereVolumeJson != null
            ? VsphereVirtualDiskVolumeSource.fromJson(tempVsphereVolumeJson)
            : null;

    return Volume(
      awsElasticBlockStore: tempAwsElasticBlockStore,
      azureDisk: tempAzureDisk,
      azureFile: tempAzureFile,
      cephfs: tempCephfs,
      cinder: tempCinder,
      configMap: tempConfigMap,
      csi: tempCsi,
      downwardAPI: tempDownwardAPI,
      emptyDir: tempEmptyDir,
      ephemeral: tempEphemeral,
      fc: tempFc,
      flexVolume: tempFlexVolume,
      flocker: tempFlocker,
      gcePersistentDisk: tempGcePersistentDisk,
      gitRepo: tempGitRepo,
      glusterfs: tempGlusterfs,
      hostPath: tempHostPath,
      iscsi: tempIscsi,
      name: tempName,
      nfs: tempNfs,
      persistentVolumeClaim: tempPersistentVolumeClaim,
      photonPersistentDisk: tempPhotonPersistentDisk,
      portworxVolume: tempPortworxVolume,
      projected: tempProjected,
      quobyte: tempQuobyte,
      rbd: tempRbd,
      scaleIO: tempScaleIO,
      secret: tempSecret,
      storageos: tempStorageos,
      vsphereVolume: tempVsphereVolume,
    );
  }

  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final AWSElasticBlockStoreVolumeSource? awsElasticBlockStore;

  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  final AzureDiskVolumeSource? azureDisk;

  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod.
  final AzureFileVolumeSource? azureFile;

  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime.
  final CephFSVolumeSource? cephfs;

  /// cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final CinderVolumeSource? cinder;

  /// configMap represents a configMap that should populate this volume.
  final ConfigMapVolumeSource? configMap;

  /// csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature).
  final CSIVolumeSource? csi;

  /// downwardAPI represents downward API about the pod that should populate this volume.
  final DownwardAPIVolumeSource? downwardAPI;

  /// emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir.
  final EmptyDirVolumeSource? emptyDir;

  /// ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
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
  final EphemeralVolumeSource? ephemeral;

  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final FCVolumeSource? fc;

  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
  final FlexVolumeSource? flexVolume;

  /// flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running.
  final FlockerVolumeSource? flocker;

  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final GCEPersistentDiskVolumeSource? gcePersistentDisk;

  /// gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  final GitRepoVolumeSource? gitRepo;

  /// glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/glusterfs/README.md.
  final GlusterfsVolumeSource? glusterfs;

  /// hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath.
  final HostPathVolumeSource? hostPath;

  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md.
  final ISCSIVolumeSource? iscsi;

  /// name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String name;

  /// nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final NFSVolumeSource? nfs;

  /// persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims.
  final PersistentVolumeClaimVolumeSource? persistentVolumeClaim;

  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine.
  final PhotonPersistentDiskVolumeSource? photonPersistentDisk;

  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine.
  final PortworxVolumeSource? portworxVolume;

  /// projected items for all in one resources secrets, configmaps, and downward API.
  final ProjectedVolumeSource? projected;

  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime.
  final QuobyteVolumeSource? quobyte;

  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md.
  final RBDVolumeSource? rbd;

  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
  final ScaleIOVolumeSource? scaleIO;

  /// secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret.
  final SecretVolumeSource? secret;

  /// storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
  final StorageOSVolumeSource? storageos;

  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine.
  final VsphereVirtualDiskVolumeSource? vsphereVolume;

  /// Converts a [Volume] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAwsElasticBlockStore = awsElasticBlockStore;
    final tempAzureDisk = azureDisk;
    final tempAzureFile = azureFile;
    final tempCephfs = cephfs;
    final tempCinder = cinder;
    final tempConfigMap = configMap;
    final tempCsi = csi;
    final tempDownwardAPI = downwardAPI;
    final tempEmptyDir = emptyDir;
    final tempEphemeral = ephemeral;
    final tempFc = fc;
    final tempFlexVolume = flexVolume;
    final tempFlocker = flocker;
    final tempGcePersistentDisk = gcePersistentDisk;
    final tempGitRepo = gitRepo;
    final tempGlusterfs = glusterfs;
    final tempHostPath = hostPath;
    final tempIscsi = iscsi;
    final tempName = name;
    final tempNfs = nfs;
    final tempPersistentVolumeClaim = persistentVolumeClaim;
    final tempPhotonPersistentDisk = photonPersistentDisk;
    final tempPortworxVolume = portworxVolume;
    final tempProjected = projected;
    final tempQuobyte = quobyte;
    final tempRbd = rbd;
    final tempScaleIO = scaleIO;
    final tempSecret = secret;
    final tempStorageos = storageos;
    final tempVsphereVolume = vsphereVolume;

    if (tempAwsElasticBlockStore != null) {
      jsonData['awsElasticBlockStore'] = tempAwsElasticBlockStore.toJson();
    }

    if (tempAzureDisk != null) {
      jsonData['azureDisk'] = tempAzureDisk.toJson();
    }

    if (tempAzureFile != null) {
      jsonData['azureFile'] = tempAzureFile.toJson();
    }

    if (tempCephfs != null) {
      jsonData['cephfs'] = tempCephfs.toJson();
    }

    if (tempCinder != null) {
      jsonData['cinder'] = tempCinder.toJson();
    }

    if (tempConfigMap != null) {
      jsonData['configMap'] = tempConfigMap.toJson();
    }

    if (tempCsi != null) {
      jsonData['csi'] = tempCsi.toJson();
    }

    if (tempDownwardAPI != null) {
      jsonData['downwardAPI'] = tempDownwardAPI.toJson();
    }

    if (tempEmptyDir != null) {
      jsonData['emptyDir'] = tempEmptyDir.toJson();
    }

    if (tempEphemeral != null) {
      jsonData['ephemeral'] = tempEphemeral.toJson();
    }

    if (tempFc != null) {
      jsonData['fc'] = tempFc.toJson();
    }

    if (tempFlexVolume != null) {
      jsonData['flexVolume'] = tempFlexVolume.toJson();
    }

    if (tempFlocker != null) {
      jsonData['flocker'] = tempFlocker.toJson();
    }

    if (tempGcePersistentDisk != null) {
      jsonData['gcePersistentDisk'] = tempGcePersistentDisk.toJson();
    }

    if (tempGitRepo != null) {
      jsonData['gitRepo'] = tempGitRepo.toJson();
    }

    if (tempGlusterfs != null) {
      jsonData['glusterfs'] = tempGlusterfs.toJson();
    }

    if (tempHostPath != null) {
      jsonData['hostPath'] = tempHostPath.toJson();
    }

    if (tempIscsi != null) {
      jsonData['iscsi'] = tempIscsi.toJson();
    }

    jsonData['name'] = tempName;

    if (tempNfs != null) {
      jsonData['nfs'] = tempNfs.toJson();
    }

    if (tempPersistentVolumeClaim != null) {
      jsonData['persistentVolumeClaim'] = tempPersistentVolumeClaim.toJson();
    }

    if (tempPhotonPersistentDisk != null) {
      jsonData['photonPersistentDisk'] = tempPhotonPersistentDisk.toJson();
    }

    if (tempPortworxVolume != null) {
      jsonData['portworxVolume'] = tempPortworxVolume.toJson();
    }

    if (tempProjected != null) {
      jsonData['projected'] = tempProjected.toJson();
    }

    if (tempQuobyte != null) {
      jsonData['quobyte'] = tempQuobyte.toJson();
    }

    if (tempRbd != null) {
      jsonData['rbd'] = tempRbd.toJson();
    }

    if (tempScaleIO != null) {
      jsonData['scaleIO'] = tempScaleIO.toJson();
    }

    if (tempSecret != null) {
      jsonData['secret'] = tempSecret.toJson();
    }

    if (tempStorageos != null) {
      jsonData['storageos'] = tempStorageos.toJson();
    }

    if (tempVsphereVolume != null) {
      jsonData['vsphereVolume'] = tempVsphereVolume.toJson();
    }

    return jsonData;
  }
}
