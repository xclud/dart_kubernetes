import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/batch/v1/job_spec.dart';

/// JobTemplateSpec describes the data a Job should have when created from a template.
class JobTemplateSpec {
  /// The main constructor.
  const JobTemplateSpec({
    this.metadata,
    this.spec,
  });

  /// Creates a JobTemplateSpec from JSON data.
  JobTemplateSpec.fromJson(Map<String, dynamic> json)
      : this(
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: json['spec'] != null ? JobSpec.fromJson(json['spec']): null,
        );

  /// Creates a list of JobTemplateSpec from JSON data.
  static List<JobTemplateSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JobTemplateSpec.fromJson(e)).toList();
  }

  /// Converts a JobTemplateSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(spec != null) { jsonData['spec'] = spec!.toJson(); }
    

    return jsonData;
  }


  /// Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final JobSpec? spec;
}
