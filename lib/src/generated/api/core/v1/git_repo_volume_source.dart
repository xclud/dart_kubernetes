/// Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
///
///  To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
class GitRepoVolumeSource {
  /// The main constructor.
  const GitRepoVolumeSource({
    this.directory,
    required this.repository,
    this.revision,
  });

  /// Creates a GitRepoVolumeSource from JSON data.
  GitRepoVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          directory: json['directory'],
          repository: json['repository'],
          revision: json['revision'],
        );

  /// Creates a list of GitRepoVolumeSource from JSON data.
  static List<GitRepoVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GitRepoVolumeSource.fromJson(e)).toList();
  }

  /// Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  final String? directory;

  /// Repository URL.
  final String repository;

  /// Commit hash for the specified revision.
  final String? revision;
}
