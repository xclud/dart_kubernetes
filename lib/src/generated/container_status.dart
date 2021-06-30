import 'container_state.dart';

class ContainerStatus {
  const ContainerStatus({
    required this.image,
    required this.imageID,
    required this.name,
    required this.ready,
    required this.restartCount,
    this.containerID,
    this.lastState,
    this.started,
    this.state,
  });

  ContainerStatus.fromJson(Map<String, dynamic> json)
      : this(
          image: json['image'],
          imageID: json['imageID'],
          name: json['name'],
          ready: json['ready'],
          restartCount: json['restartCount'],
          containerID: json['containerID'],
          //lastState: json['lastState'],
          started: json['started'],
          //state: json['state'],
        );

  static List<ContainerStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerStatus.fromJson(e)).toList();
  }

  final String image;
  final String imageID;
  final String name;
  final bool ready;
  final int restartCount;
  final String? containerID;
  final ContainerState? lastState;
  final bool? started;
  final ContainerState? state;
}
