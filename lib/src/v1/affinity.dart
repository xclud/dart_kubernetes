import 'node_affinity.dart';
import 'pod_affinity.dart';
import 'pod_anti_affinity.dart';

class Affinity {
  const Affinity({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  final NodeAffinity? nodeAffinity;
  final PodAffinity? podAffinity;
  final PodAntiAffinity? podAntiAffinity;
}
