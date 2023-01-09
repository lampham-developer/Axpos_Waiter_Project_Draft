import 'package:axpos_project/model/request/demo_request.dart';
import 'package:axpos_project/model/response/demo_response.dart';
import 'package:axpos_project/repository/remote/api_service.dart';
import 'package:axpos_project/repository/remote/app_repository.dart';

class AppRepositoryImpl extends AppRepository {
  late ApiService _apiService;
  AppRepositoryImpl(this._apiService);

  @override
  Future<DemoResponse> getAppDetail(int id) async {
    return await _apiService.getAppDetail(id);
  }

  @override
  Future<DemoResponse> postTask(DemoRequest request) async {
    return await _apiService.postTask(request);
  }
}
