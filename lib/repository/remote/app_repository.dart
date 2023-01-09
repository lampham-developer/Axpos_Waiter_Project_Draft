import 'package:axpos_project/model/request/demo_request.dart';
import 'package:axpos_project/model/response/demo_response.dart';

abstract class AppRepository{
  Future<DemoResponse> getAppDetail(int id);
  Future<DemoResponse> postTask(DemoRequest request);
}