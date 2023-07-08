import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modu_tiktok/app/data/model/video.dart';
import 'package:modu_tiktok/app/data/service/auth_service.dart';

Future<List<Video>> getVideoList() async {
  final currentUserUuid = getCurrentUserUuid().toString();

  final videos = await FirebaseFirestore.instance
      .collection('Videos')
      .where('user', isEqualTo: currentUserUuid)
      .get();

  return videos.docs.map((doc) => Video.fromJson(doc.data())).toList();
}
