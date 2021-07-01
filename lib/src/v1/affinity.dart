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

class NodeAffinity {}

class PodAffinity {}

class PodAntiAffinity {}
