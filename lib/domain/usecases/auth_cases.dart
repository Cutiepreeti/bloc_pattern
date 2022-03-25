import 'package:bloc_pattern/domain/domain.dart';

class AuthUseCase {

  AuthUseCase(this._repository);
  late final Repository _repository;

  Future<ListUser>getUsers()
  async{
    var listUser=await _repository.getUsers();
    //print('${listUser.data!.first.firstName}');
    return listUser;
  }
}
