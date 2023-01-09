import 'package:axpos_project/model/request/demo_request.dart';
import 'package:axpos_project/model/response/demo_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://63bb92decf99234bfa5e75e8.mockapi.io/mock/v1')
abstract class ApiService{
  factory ApiService(Dio dio) = _ApiService;

  @GET("/tasks")
  Future<DemoResponse> getTask();

  @GET("/tasks/{id}")
  Future<DemoResponse> getAppDetail(@Path() int id);

  @POST("/tasks")
  Future<DemoResponse> postTask(@Body() DemoRequest request);
}