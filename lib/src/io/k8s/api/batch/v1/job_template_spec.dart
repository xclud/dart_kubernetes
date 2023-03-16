// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

/// JobTemplateSpec describes the data a Job should have when created from a template.
class JobTemplateSpec {
  /// Default constructor.
  const JobTemplateSpec({
    this.metadata,
    this.spec,
  });

  /// Creates a [JobTemplateSpec] from JSON data.
  factory JobTemplateSpec.fromJson(Map<String, dynamic> json) {
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];

    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final JobSpec? tempSpec =
        tempSpecJson != null ? JobSpec.fromJson(tempSpecJson) : null;

    return JobTemplateSpec(
      metadata: tempMetadata,
      spec: tempSpec,
    );
  }

  /// Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final JobSpec? spec;

  /// Converts a [JobTemplateSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMetadata = metadata;
    final tempSpec = spec;

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempSpec != null) {
      jsonData['spec'] = tempSpec.toJson();
    }

    return jsonData;
  }
}
