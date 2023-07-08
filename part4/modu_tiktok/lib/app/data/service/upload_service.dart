import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

Future<String> uploadVideoToFirestore(File videoFile) async {
  try {
    final storageRef = FirebaseStorage.instance.ref().child('videos');
    final uploadTask =
        storageRef.child('${DateTime.now()}.mp4').putFile(videoFile);

    final snapshot = await uploadTask;
    final videoUrl = await snapshot.ref.getDownloadURL();

    return videoUrl;
  } catch (error) {
    throw PlatformException(
      code: 'VIDEO_UPLOAD_ERROR',
      message: 'Failed to upload video: $error',
    );
  }
}
