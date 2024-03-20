// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../certificates_v1alpha1.dart';

/// ClusterTrustBundleSpec contains the signer and trust anchors.
class ClusterTrustBundleSpec {
  /// Default constructor.
  const ClusterTrustBundleSpec({
    this.signerName,
    required this.trustBundle,
  });

  /// Creates a [ClusterTrustBundleSpec] from JSON data.
  factory ClusterTrustBundleSpec.fromJson(Map<String, dynamic> json) {
    final tempSignerNameJson = json['signerName'];
    final tempTrustBundleJson = json['trustBundle'];

    final String? tempSignerName = tempSignerNameJson;
    final String tempTrustBundle = tempTrustBundleJson;

    return ClusterTrustBundleSpec(
      signerName: tempSignerName,
      trustBundle: tempTrustBundle,
    );
  }

  /// signerName indicates the associated signer, if any.
  ///
  /// In order to create or update a ClusterTrustBundle that sets signerName, you must have the following cluster-scoped permission: group=certificates.k8s.io resource=signers resourceName=<the signer name> verb=attest.
  ///
  /// If signerName is not empty, then the ClusterTrustBundle object must be named with the signer name as a prefix (translating slashes to colons). For example, for the signer name `example.com/foo`, valid ClusterTrustBundle object names include `example.com:foo:abc` and `example.com:foo:v1`.
  ///
  /// If signerName is empty, then the ClusterTrustBundle object's name must not have such a prefix.
  ///
  /// List/watch requests for ClusterTrustBundles can filter on this field using a `spec.signerName=NAME` field selector.
  final String? signerName;

  /// trustBundle contains the individual X.509 trust anchors for this bundle, as PEM bundle of PEM-wrapped, DER-formatted X.509 certificates.
  ///
  /// The data must consist only of PEM certificate blocks that parse as valid X.509 certificates.  Each certificate must include a basic constraints extension with the CA bit set.  The API server will reject objects that contain duplicate certificates, or that use PEM block headers.
  ///
  /// Users of ClusterTrustBundles, including Kubelet, are free to reorder and deduplicate certificate blocks in this file according to their own logic, as well as to drop PEM block headers and inter-block data.
  final String trustBundle;

  /// Converts a [ClusterTrustBundleSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempSignerName = signerName;
    final tempTrustBundle = trustBundle;

    if (tempSignerName != null) {
      jsonData['signerName'] = tempSignerName;
    }

    jsonData['trustBundle'] = tempTrustBundle;

    return jsonData;
  }
}
