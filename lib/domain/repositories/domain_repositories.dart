import 'package:bloc_pattern/domain/domain.dart';

abstract class DomainRepository{

  Future<ResponseModel> getUsers();

}