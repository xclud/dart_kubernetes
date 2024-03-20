part of '../kubernetes.dart';

/// Kubernetes Configuration.
class K8SConfiguration {
  /// The main constructor.
  const K8SConfiguration({
    this.preferences,
    required this.apiVersion,
    required this.kind,
    this.currentContext,
    this.contexts = const [],
    this.clusters = const [],
    this.users = const [],
    this.extensions = const [],
  });

  /// Creates a K8SConfiguration from JSON data.
  K8SConfiguration.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          currentContext: json['current-context'],
          clusters: json['clusters'] == null
              ? const []
              : Cluster.listFromJson((json['clusters'] as Iterable)
                  .map((e) => e as Map<String, dynamic>)),
          users: json['users'] == null
              ? const []
              : User.listFromJson((json['users'] as Iterable)
                  .map((e) => e as Map<String, dynamic>)),
          contexts: json['contexts'] == null
              ? const []
              : Context.listFromJson((json['contexts'] as Iterable)
                  .map((e) => e as Map<String, dynamic>)),
        );

  /// Gets or sets general information to be use for CLI interactions.
  final Map<String, Object>? preferences;

  /// API version.
  final String apiVersion;

  /// Kind.
  final String kind;

  /// Gets or sets the name of the context that you would like to use by default.
  final String? currentContext;

  /// Gets or sets a map of referencable names to context configs.
  final Iterable<Context> contexts;

  /// Gets or sets a map of referencable names to cluster configs.
  final Iterable<Cluster> clusters;

  /// Gets or sets a map of referencable names to user configs
  final Iterable<User> users;

  /// Gets or sets additional information. This is useful for extenders so that reads and writes don't clobber unknown fields.
  final Iterable<NamedExtension>? extensions;
}

/// Represents a tuple of references to a cluster (how do I communicate with a kubernetes cluster),
/// a user (how do I identify myself), and a namespace (what subset of resources do I want to work with)
class ContextDetails {
  /// The main constructor.
  ContextDetails({
    required this.cluster,
    required this.user,
    this.namespace,
    this.extensions,
  });

  /// Creates a ContextDetails from JSON data.
  ContextDetails.fromJson(Map<String, dynamic> json)
      : this(
          cluster: json['cluster'],
          user: json['user'],
          namespace: json['namespace'],
          //extensions: json['extensions'],
        );

  /// Gets or sets the name of the cluster for this context.
  final String cluster;

  /// Gets or sets the name of the user for this context.
  final String user;

  /// Gets or sets the default namespace to use on unspecified requests.
  final String? namespace;

  /// Gets or sets additional information. This is useful for extenders so that reads and writes don't clobber unknown fields.
  final Iterable<NamedExtension>? extensions;
}

/// Relates nicknames to context information.
class Context {
  /// The default constructor.
  Context({
    required this.name,
    this.contextDetails,
    this.extensions,
  });

  /// Creates a Context from JSON data.
  Context.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          contextDetails: ContextDetails.fromJson(json['context']),
          //extensions: json['extensions'],
        );

  /// Creates a list of Context from JSON data.
  static List<Context> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Context.fromJson(e)).toList();
  }

  /// Gets or sets the context information.
  final ContextDetails? contextDetails;

  /// Gets or sets the nickname for this context.
  final String name;

  /// Gets or sets additional information. This is useful for extenders so that reads and writes don't clobber unknown fields.
  Iterable<NamedExtension>? extensions;
}

/// Relates nicknames to extension information
class NamedExtension {
  /// Gets or sets the nickname for this extension.
  String? name;

  /// Get or sets the extension information.
  dynamic extension;
}

/// Contains information about how to communicate with a kubernetes cluster
class ClusterEndpoint {
  /// The default constructor.
  ClusterEndpoint({
    required this.server,
    this.certificateAuthorityData,
    this.certificateAuthority,
    this.extensions,
    this.skipTlsVerify,
  });

  /// Creates a ClusterEndpoint from JSON data.
  ClusterEndpoint.fromJson(Map<String, dynamic> json)
      : this(
          server: json['server'],
          certificateAuthorityData: json['certificate-authority-data'],
        );

  /// Gets or sets the path to a cert file for the certificate authority.
  final String? certificateAuthority;

  /// Gets or sets =PEM-encoded certificate authority certificates. Overrides <see cref="CertificateAuthority"/>.
  final String? certificateAuthorityData;

  /// Gets or sets the address of the kubernetes cluster (https://hostname:port).
  final String server;

  /// Gets or sets a value indicating whether to skip the validity check for the server's certificate.
  /// This will make your HTTPS connections insecure.
  final bool? skipTlsVerify;

  /// Gets or sets additional information. This is useful for extenders so that reads and writes don't clobber unknown fields.
  final Iterable<NamedExtension>? extensions;
}

/// Relates nicknames to cluster information.
class Cluster {
  /// Default constructor.
  Cluster({
    required this.name,
    required this.clusterEndpoint,
  });

  /// Creates a Cluster from JSON data.
  Cluster.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          clusterEndpoint: ClusterEndpoint.fromJson(json['cluster']),
        );

  /// Creates a list of Cluster from JSON data.
  static List<Cluster> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Cluster.fromJson(e)).toList();
  }

  /// Gets or sets the cluster information.
  final ClusterEndpoint clusterEndpoint;

  /// Gets or sets the nickname for this Cluster.
  final String name;
}

/// Contains information that describes identity information.  This is use to tell the kubernetes cluster who you are.
class AuthProvider {
  /// Gets or sets the nickname for this auth provider.
  String? name;

  /// Gets or sets the configuration for this auth provider
  Map<String, String>? config;
}

/// Contains information that describes identity information. This is use to tell the kubernetes cluster who you are.
class UserCredentials {
  /// The default constructor.
  UserCredentials({
    this.clientCertificateData,
    this.clientKeyData,
    this.clientCertificate,
  });

  /// Creates a UserCredentials from JSON data.
  UserCredentials.fromJson(Map<String, dynamic> json)
      : this(
          clientCertificateData: json['client-certificate-data'],
          clientKeyData: json['client-key-data'],
        );

  /// Gets or sets PEM-encoded data from a client cert file for TLS. Overrides <see cref="ClientCertificate"/>.
  final String? clientCertificateData;

  /// Gets or sets the path to a client cert file for TLS.
  final String? clientCertificate;

  /// Gets or sets PEM-encoded data from a client key file for TLS. Overrides <see cref="ClientKey"/>.
  String? clientKeyData;

  /// Gets or sets the path to a client key file for TLS.
  String? clientKey;

  /// Gets or sets the bearer token for authentication to the kubernetes cluster.
  String? token;

  /// Gets or sets the username to impersonate. The name matches the flag.
  String? impersonate;

  /// Gets or sets the groups to impersonate.
  Iterable<String> impersonateGroups = [];

  /// Gets or sets additional information for impersonated user.
  Map<String, String> impersonateUserExtra = {};

  /// Gets or sets the username for basic authentication to the kubernetes cluster.
  String? userName;

  /// Gets or sets the password for basic authentication to the kubernetes cluster.
  String? password;

  /// Gets or sets custom authentication plugin for the kubernetes cluster.
  AuthProvider? authProvider;

  /// Gets or sets additional information. This is useful for extenders so that reads and writes don't clobber unknown fields.
  Iterable<NamedExtension>? extensions;

  /// Gets or sets external command and its arguments to receive user credentials
  ExternalExecution? externalExecution;
}

/// Relates nicknames to auth information.
class User {
  /// The default constructor.
  User({
    required this.name,
    required this.userCredentials,
  });

  /// Creates a User from JSON data.
  User.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          userCredentials: json['user'] == null
              ? null
              : UserCredentials.fromJson(json['user']),
        );

  /// Creates a list of User from JSON data.
  static List<User> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => User.fromJson(e)).toList();
  }

  /// Gets or sets the auth information.
  final UserCredentials? userCredentials;

  /// Gets or sets the nickname for this auth information.
  final String name;
}

/// External Execution
class ExternalExecution {
  /// API version.
  String? apiVersion;

  /// The command to execute. Required.
  String? command;

  /// Environment variables to set when executing the plugin. Optional.
  List<Map<String, String>>? environmentVariables;

  /// Arguments to pass when executing the plugin. Optional.
  List<String>? arguments;

  /// Text shown to the user when the executable doesn't seem to be present. Optional.
  String? installHint;

  /// Whether or not to provide cluster information to this exec plugin as a part of
  /// the KUBERNETES_EXEC_INFO environment variable. Optional.
  bool? provideClusterInfo;
}
