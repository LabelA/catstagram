import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat.g.dart';

@JsonSerializable()
class Cat extends Equatable {
  const Cat({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  /// Connect the generated [_$CatFromJson] function to the `fromJson`
  /// factory.
  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  final String id;
  final String url;
  final int width;
  final int height;

  @override
  List<Object?> get props => [id, url, width, height];
}
