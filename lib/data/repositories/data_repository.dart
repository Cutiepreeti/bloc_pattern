
import 'package:bloc_pattern/domain/models/response_model.dart';
import 'package:bloc_pattern/data/data.dart';

import '../../domain/repositories/domain_repositories.dart';

class DataRepository extends DomainRepository{

  DataRepository (this._connectHelper);
  final ConnectHelper _connectHelper;

  @override
  Future<ResponseModel>getUsers()
  async{
    var response=await _connectHelper.getUsers();
    //print('connect:${response.data}');
    return response;
  }

}