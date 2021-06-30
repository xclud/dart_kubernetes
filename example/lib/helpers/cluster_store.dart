import 'dart:convert';

import 'package:yakc/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Cluster>> getClusters() async {
  final shared = await SharedPreferences.getInstance();

  final existing = shared.getString('CLUSTERS') ?? '[]';
  final json = jsonDecode(existing);

  final clusters = (json as Iterable).cast<Map<String, dynamic>>().toList();

  return clusters.map((e) => Cluster.fromJson(e)).toList();

  // return [
  //   const Cluster(
  //       name: 'mycluster',
  //       server: 'https://10.0.33.242:6443',
  //       jwt:
  //           'eyJhbGciOiJSUzI1NiIsImtpZCI6IlVOdHEwRF8tbEFYZ3N2eFJBTzBjRE9HQnQxeGItOHBYR1RyX0VqYTBLaGsifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJhZG1pbi11c2VyLXRva2VuLTRxN204Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImFkbWluLXVzZXIiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiIwMzhlY2Y1MS01NjMzLTQzYzQtODYwZi04N2FhYmY4NTc0NmYiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6a3ViZS1zeXN0ZW06YWRtaW4tdXNlciJ9.AaKx7SuVQwchkltyCgZdfOYdsEpHmjd5FhNXAxhjgC5BO2KLc2VuBUPQw7zzGrJi7UIHLpOMn2Ip3XhCEo7WtIr1HkOGFZYdI6CqxEU-3f35tbTvZDVzDqmtq18PvOq_re3zI2CCuYEMjbjWL4TqjDVS-nKlYHuck59Y2YeBHazUsyHy8XrYW-AA8x-P1kU1ssW_xapzjt2jzdUkpkw2ndCrrOpWiY0Og8DBmAkVzq50N-vjqzimpSdHO5FVfV38k6h8Zoe0ul3hcs4h8MkLy75mtRRg8jkGKhezsjPaOSUMr_LSJNNUpnfMYr9-eUMt9igBSHX1fbv88yoUNu4p1Q')
  // ];
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
