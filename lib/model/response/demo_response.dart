import 'package:json_annotation/json_annotation.dart';
part 'demo_response.g.dart';

@JsonSerializable()
class DemoResponse {
  String? id;
  String? name;


  DemoResponse({this.id, this.name});

  factory DemoResponse.fromJson(Map<String, dynamic> json) => _$DemoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DemoResponseToJson(this);
}
