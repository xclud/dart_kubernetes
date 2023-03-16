// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PersistentVolumeSpec is the specification of a persistent volume.
class PersistentVolumeSpec {
  /// Default constructor.
  const PersistentVolumeSpec({
    this.accessModes,
    this.awsElasticBlockStore,
    this.azureDisk,
    this.azureFile,
    this.capacity = const {},
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

  /// Creates a [PersistentVolumeSpec] from JSON data.
  factory PersistentVolumeSpec.fromJson(Map<String, dynamic> json) {
    final tempAccessModesJson = json['accessModes'];
    final tempAwsElasticBlockStoreJson = json['awsElasticBlockStore'];
    final tempAzureDiskJson = json['azureDisk'];
    final tempAzureFileJson = json['azureFile'];
    final tempCapacityJson = json['capacity'];
    final tempCephfsJson = json['cephfs'];
    final tempCinderJson = json['cinder'];
    final tempClaimRefJson = json['claimRef'];
    final tempCsiJson = json['csi'];
    final tempFcJson = json['fc'];
    final tempFlexVolumeJson = json['flexVolume'];
    final tempFlockerJson = json['flocker'];
    final tempGcePersistentDiskJson = json['gcePersistentDisk'];
    final tempGlusterfsJson = json['glusterfs'];
    final tempHostPathJson = json['hostPath'];
    final tempIscsiJson = json['iscsi'];
    final tempLocalJson = json['local'];
    final tempMountOptionsJson = json['mountOptions'];
    final tempNfsJson = json['nfs'];
    final tempNodeAffinityJson = json['nodeAffinity'];
    final tempPersistentVolumeReclaimPolicyJson =
        json['persistentVolumeReclaimPolicy'];
    final tempPhotonPersistentDiskJson = json['photonPersistentDisk'];
    final tempPortworxVolumeJson = json['portworxVolume'];
    final tempQuobyteJson = json['quobyte'];
    final tempRbdJson = json['rbd'];
    final tempScaleIOJson = json['scaleIO'];
    final tempStorageClassNameJson = json['storageClassName'];
    final tempStorageosJson = json['storageos'];
    final tempVolumeModeJson = json['volumeMode'];
    final tempVsphereVolumeJson = json['vsphereVolume'];

    final List<String>? tempAccessModes = tempAccessModesJson;
    final AWSElasticBlockStoreVolumeSource? tempAwsElasticBlockStore =
        tempAwsElasticBlockStoreJson != null
            ? AWSElasticBlockStoreVolumeSource.fromJson(
                tempAwsElasticBlockStoreJson)
            : null;
    final AzureDiskVolumeSource? tempAzureDisk = tempAzureDiskJson != null
        ? AzureDiskVolumeSource.fromJson(tempAzureDiskJson)
        : null;
    final AzureFilePersistentVolumeSource? tempAzureFile =
        tempAzureFileJson != null
            ? AzureFilePersistentVolumeSource.fromJson(tempAzureFileJson)
            : null;
    final Map<String, Object> tempCapacity = tempCapacityJson;
    final CephFSPersistentVolumeSource? tempCephfs = tempCephfsJson != null
        ? CephFSPersistentVolumeSource.fromJson(tempCephfsJson)
        : null;
    final CinderPersistentVolumeSource? tempCinder = tempCinderJson != null
        ? CinderPersistentVolumeSource.fromJson(tempCinderJson)
        : null;
    final ObjectReference? tempClaimRef = tempClaimRefJson != null
        ? ObjectReference.fromJson(tempClaimRefJson)
        : null;
    final CSIPersistentVolumeSource? tempCsi = tempCsiJson != null
        ? CSIPersistentVolumeSource.fromJson(tempCsiJson)
        : null;
    final FCVolumeSource? tempFc =
        tempFcJson != null ? FCVolumeSource.fromJson(tempFcJson) : null;
    final FlexPersistentVolumeSource? tempFlexVolume =
        tempFlexVolumeJson != null
            ? FlexPersistentVolumeSource.fromJson(tempFlexVolumeJson)
            : null;
    final FlockerVolumeSource? tempFlocker = tempFlockerJson != null
        ? FlockerVolumeSource.fromJson(tempFlockerJson)
        : null;
    final GCEPersistentDiskVolumeSource? tempGcePersistentDisk =
        tempGcePersistentDiskJson != null
            ? GCEPersistentDiskVolumeSource.fromJson(tempGcePersistentDiskJson)
            : null;
    final GlusterfsPersistentVolumeSource? tempGlusterfs =
        tempGlusterfsJson != null
            ? GlusterfsPersistentVolumeSource.fromJson(tempGlusterfsJson)
            : null;
    final HostPathVolumeSource? tempHostPath = tempHostPathJson != null
        ? HostPathVolumeSource.fromJson(tempHostPathJson)
        : null;
    final ISCSIPersistentVolumeSource? tempIscsi = tempIscsiJson != null
        ? ISCSIPersistentVolumeSource.fromJson(tempIscsiJson)
        : null;
    final LocalVolumeSource? tempLocal = tempLocalJson != null
        ? LocalVolumeSource.fromJson(tempLocalJson)
        : null;
    final List<String>? tempMountOptions = tempMountOptionsJson;
    final NFSVolumeSource? tempNfs =
        tempNfsJson != null ? NFSVolumeSource.fromJson(tempNfsJson) : null;
    final VolumeNodeAffinity? tempNodeAffinity = tempNodeAffinityJson != null
        ? VolumeNodeAffinity.fromJson(tempNodeAffinityJson)
        : null;
    final String? tempPersistentVolumeReclaimPolicy =
        tempPersistentVolumeReclaimPolicyJson;
    final PhotonPersistentDiskVolumeSource? tempPhotonPersistentDisk =
        tempPhotonPersistentDiskJson != null
            ? PhotonPersistentDiskVolumeSource.fromJson(
                tempPhotonPersistentDiskJson)
            : null;
    final PortworxVolumeSource? tempPortworxVolume =
        tempPortworxVolumeJson != null
            ? PortworxVolumeSource.fromJson(tempPortworxVolumeJson)
            : null;
    final QuobyteVolumeSource? tempQuobyte = tempQuobyteJson != null
        ? QuobyteVolumeSource.fromJson(tempQuobyteJson)
        : null;
    final RBDPersistentVolumeSource? tempRbd = tempRbdJson != null
        ? RBDPersistentVolumeSource.fromJson(tempRbdJson)
        : null;
    final ScaleIOPersistentVolumeSource? tempScaleIO = tempScaleIOJson != null
        ? ScaleIOPersistentVolumeSource.fromJson(tempScaleIOJson)
        : null;
    final String? tempStorageClassName = tempStorageClassNameJson;
    final StorageOSPersistentVolumeSource? tempStorageos =
        tempStorageosJson != null
            ? StorageOSPersistentVolumeSource.fromJson(tempStorageosJson)
            : null;
    final String? tempVolumeMode = tempVolumeModeJson;
    final VsphereVirtualDiskVolumeSource? tempVsphereVolume =
        tempVsphereVolumeJson != null
            ? VsphereVirtualDiskVolumeSource.fromJson(tempVsphereVolumeJson)
            : null;

    return PersistentVolumeSpec(
      accessModes: tempAccessModes,
      awsElasticBlockStore: tempAwsElasticBlockStore,
      azureDisk: tempAzureDisk,
      azureFile: tempAzureFile,
      capacity: tempCapacity,
      cephfs: tempCephfs,
      cinder: tempCinder,
      claimRef: tempClaimRef,
      csi: tempCsi,
      fc: tempFc,
      flexVolume: tempFlexVolume,
      flocker: tempFlocker,
      gcePersistentDisk: tempGcePersistentDisk,
      glusterfs: tempGlusterfs,
      hostPath: tempHostPath,
      iscsi: tempIscsi,
      local: tempLocal,
      mountOptions: tempMountOptions,
      nfs: tempNfs,
      nodeAffinity: tempNodeAffinity,
      persistentVolumeReclaimPolicy: tempPersistentVolumeReclaimPolicy,
      photonPersistentDisk: tempPhotonPersistentDisk,
      portworxVolume: tempPortworxVolume,
      quobyte: tempQuobyte,
      rbd: tempRbd,
      scaleIO: tempScaleIO,
      storageClassName: tempStorageClassName,
      storageos: tempStorageos,
      volumeMode: tempVolumeMode,
      vsphereVolume: tempVsphereVolume,
    );
  }

  /// accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes.
  final List<String>? accessModes;

  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final AWSElasticBlockStoreVolumeSource? awsElasticBlockStore;

  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  final AzureDiskVolumeSource? azureDisk;

  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod.
  final AzureFilePersistentVolumeSource? azureFile;

  /// capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity.
  final Map<String, Object> capacity;

  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime.
  final CephFSPersistentVolumeSource? cephfs;

  /// cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final CinderPersistentVolumeSource? cinder;

  /// claimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding.
  final ObjectReference? claimRef;

  /// csi represents storage that is handled by an external CSI driver (Beta feature).
  final CSIPersistentVolumeSource? csi;

  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final FCVolumeSource? fc;

  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
  final FlexPersistentVolumeSource? flexVolume;

  /// flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running.
  final FlockerVolumeSource? flocker;

  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final GCEPersistentDiskVolumeSource? gcePersistentDisk;

  /// glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md.
  final GlusterfsPersistentVolumeSource? glusterfs;

  /// hostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath.
  final HostPathVolumeSource? hostPath;

  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
  final ISCSIPersistentVolumeSource? iscsi;

  /// local represents directly-attached storage with node affinity.
  final LocalVolumeSource? local;

  /// mountOptions is the list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options.
  final List<String>? mountOptions;

  /// nfs represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final NFSVolumeSource? nfs;

  /// nodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
  final VolumeNodeAffinity? nodeAffinity;

  /// persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming.
  final String? persistentVolumeReclaimPolicy;

  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine.
  final PhotonPersistentDiskVolumeSource? photonPersistentDisk;

  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine.
  final PortworxVolumeSource? portworxVolume;

  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime.
  final QuobyteVolumeSource? quobyte;

  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md.
  final RBDPersistentVolumeSource? rbd;

  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
  final ScaleIOPersistentVolumeSource? scaleIO;

  /// storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  final String? storageClassName;

  /// storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: https://examples.k8s.io/volumes/storageos/README.md.
  final StorageOSPersistentVolumeSource? storageos;

  /// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  final String? volumeMode;

  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine.
  final VsphereVirtualDiskVolumeSource? vsphereVolume;

  /// Converts a [PersistentVolumeSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAccessModes = accessModes;
    final tempAwsElasticBlockStore = awsElasticBlockStore;
    final tempAzureDisk = azureDisk;
    final tempAzureFile = azureFile;
    final tempCapacity = capacity;
    final tempCephfs = cephfs;
    final tempCinder = cinder;
    final tempClaimRef = claimRef;
    final tempCsi = csi;
    final tempFc = fc;
    final tempFlexVolume = flexVolume;
    final tempFlocker = flocker;
    final tempGcePersistentDisk = gcePersistentDisk;
    final tempGlusterfs = glusterfs;
    final tempHostPath = hostPath;
    final tempIscsi = iscsi;
    final tempLocal = local;
    final tempMountOptions = mountOptions;
    final tempNfs = nfs;
    final tempNodeAffinity = nodeAffinity;
    final tempPersistentVolumeReclaimPolicy = persistentVolumeReclaimPolicy;
    final tempPhotonPersistentDisk = photonPersistentDisk;
    final tempPortworxVolume = portworxVolume;
    final tempQuobyte = quobyte;
    final tempRbd = rbd;
    final tempScaleIO = scaleIO;
    final tempStorageClassName = storageClassName;
    final tempStorageos = storageos;
    final tempVolumeMode = volumeMode;
    final tempVsphereVolume = vsphereVolume;

    if (tempAccessModes != null) {
      jsonData['accessModes'] = tempAccessModes;
    }

    if (tempAwsElasticBlockStore != null) {
      jsonData['awsElasticBlockStore'] = tempAwsElasticBlockStore.toJson();
    }

    if (tempAzureDisk != null) {
      jsonData['azureDisk'] = tempAzureDisk.toJson();
    }

    if (tempAzureFile != null) {
      jsonData['azureFile'] = tempAzureFile.toJson();
    }

    jsonData['capacity'] = tempCapacity;

    if (tempCephfs != null) {
      jsonData['cephfs'] = tempCephfs.toJson();
    }

    if (tempCinder != null) {
      jsonData['cinder'] = tempCinder.toJson();
    }

    if (tempClaimRef != null) {
      jsonData['claimRef'] = tempClaimRef.toJson();
    }

    if (tempCsi != null) {
      jsonData['csi'] = tempCsi.toJson();
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

    if (tempGlusterfs != null) {
      jsonData['glusterfs'] = tempGlusterfs.toJson();
    }

    if (tempHostPath != null) {
      jsonData['hostPath'] = tempHostPath.toJson();
    }

    if (tempIscsi != null) {
      jsonData['iscsi'] = tempIscsi.toJson();
    }

    if (tempLocal != null) {
      jsonData['local'] = tempLocal.toJson();
    }

    if (tempMountOptions != null) {
      jsonData['mountOptions'] = tempMountOptions;
    }

    if (tempNfs != null) {
      jsonData['nfs'] = tempNfs.toJson();
    }

    if (tempNodeAffinity != null) {
      jsonData['nodeAffinity'] = tempNodeAffinity.toJson();
    }

    if (tempPersistentVolumeReclaimPolicy != null) {
      jsonData['persistentVolumeReclaimPolicy'] =
          tempPersistentVolumeReclaimPolicy;
    }

    if (tempPhotonPersistentDisk != null) {
      jsonData['photonPersistentDisk'] = tempPhotonPersistentDisk.toJson();
    }

    if (tempPortworxVolume != null) {
      jsonData['portworxVolume'] = tempPortworxVolume.toJson();
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

    if (tempStorageClassName != null) {
      jsonData['storageClassName'] = tempStorageClassName;
    }

    if (tempStorageos != null) {
      jsonData['storageos'] = tempStorageos.toJson();
    }

    if (tempVolumeMode != null) {
      jsonData['volumeMode'] = tempVolumeMode;
    }

    if (tempVsphereVolume != null) {
      jsonData['vsphereVolume'] = tempVsphereVolume.toJson();
    }

    return jsonData;
  }
}
