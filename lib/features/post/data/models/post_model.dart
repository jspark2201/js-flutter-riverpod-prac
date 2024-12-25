
import 'package:freezed_annotation/freezed_annotation.dart';
// 필수: `main.dart`를 Freezed에서 생성한 코드와 연결합니다.
part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String title,
    required bool isFavorite,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json)
  => _$PostModelFromJson(json);
}