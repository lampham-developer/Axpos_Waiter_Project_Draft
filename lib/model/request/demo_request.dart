import 'package:json_annotation/json_annotation.dart';
part 'demo_request.g.dart';

@JsonSerializable()
class DemoRequest {
  String? id;
  String? name;


  DemoRequest({this.id, this.name});

  factory DemoRequest.fromJson(Map<String, dynamic> json) => _$DemoRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DemoRequestToJson(this);
}