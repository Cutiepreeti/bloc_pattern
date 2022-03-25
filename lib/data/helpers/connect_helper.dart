import 'package:bloc_pattern/domain/domain.dart';
import 'api_wrapper.dart';

class ConnectHelper{
   final apiWrapper= ApiWrapper();

   Future<ResponseModel>getUsers()
   async{
     var response=await apiWrapper.makeRequest(
      'api/users?page=2',
      Request.get,
      null,
    );
    return response;
  }}