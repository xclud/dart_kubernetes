import 'dart:convert';

import 'package:yakc/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Cluster>> getClusters() async {
  final shared = await SharedPreferences.getInstance();

  final existing = shared.getString('CLUSTERS') ?? '[]';
  final json = jsonDecode(existing);

  final clusters = (json as Iterable).cast<Map<String, dynamic>>().toList();

  return clusters.map((e) => Cluster.fromJson(e)).toList();
}

Future<void> addCluster(Cluster cluster) async {
  final shared = await SharedPreferences.getInstance();

  final existing = shared.getString('CLUSTERS') ?? '[]';
  final json = jsonDecode(existing);

  final clusters = (json as Iterable).cast<Map<String, dynamic>>().toList();

  clusters.add(cluster.toJson());

  final jsonText = jsonEncode(clusters);

  await shared.setString('CLUSTERS', jsonText);
}

Future<bool> deleteAllClusters() async {
  final shared = await SharedPreferences.getInstance();
  return shared.remove('CLUSTERS');
}
