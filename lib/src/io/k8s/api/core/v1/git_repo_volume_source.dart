// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
///
/// DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
class GitRepoVolumeSource {
  /// Default constructor.
  const GitRepoVolumeSource({
    this.directory,
    required this.repository,
    this.revision,
  });

  /// Creates a [GitRepoVolumeSource] from JSON data.
  factory GitRepoVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDirectoryJson = json['directory'];
    final tempRepositoryJson = json['repository'];
    final tempRevisionJson = json['revision'];

    final tempDirectory = tempDirectoryJson;
    final tempRepository = tempRepositoryJson;
    final tempRevision = tempRevisionJson;

    return GitRepoVolumeSource(
      directory: tempDirectory,
      repository: tempRepository,
      revision: tempRevision,
    );
  }

  /// directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  final String? directory;

  /// repository is the URL.
  final String repository;

  /// revision is the commit hash for the specified revision.
  final String? revision;

  /// Converts a [GitRepoVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDirectory = directory;
    final tempRepository = repository;
    final tempRevision = revision;

    if (tempDirectory != null) {
      jsonData['directory'] = tempDirectory;
    }

    jsonData['repository'] = tempRepository;

    if (tempRevision != null) {
      jsonData['revision'] = tempRevision;
    }

    return jsonData;
  }
}
