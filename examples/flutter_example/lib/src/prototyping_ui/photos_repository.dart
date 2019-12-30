import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_example/src/prototyping_ui/photo.dart';
import 'package:flutter_example/src/prototyping_ui/photos_provider.dart';
import 'package:flutter_example/src/prototyping_ui/photo_error.dart';

class PhotoRepository {
  final _photoProvider = PhotoProvider();

  Future<BuiltList<Photo>> fetchPhotos({
    @required int page,
  }) async {
    try {
      final photos = await _photoProvider.fetchPhotos(
        page: page,
      );
      return photos;
    } on PhotoError catch (error) {
      throw ('Cannot fetch photos: \n${error.message}');
    }
  }

  Future<Photo> fetchQuestionnaire({
    @required String photoId,
    @required int width,
    @required int height,
  }) async {
    try {
      final photo = _photoProvider.fetchPhoto(
        photoId: photoId,
        width: width,
        height: height,
      );
      return photo;
    } on PhotoError catch (error) {
      throw ('Cannot fetch photo with id: \n${error.message}');
    }
  }
}
