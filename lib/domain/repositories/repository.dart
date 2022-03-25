import 'package:bloc_pattern/data/data.dart';
import 'package:bloc_pattern/device/device.dart';
import 'package:bloc_pattern/domain/domain.dart';


class Repository {
  Repository(this._dataRepository, this._deviceRepository);

  final DataRepository _dataRepository;
  final DeviceRepository _deviceRepository;

  Future<ListUser>getUsers()
  async{
    try {
      var response=await _dataRepository.getUsers();
      //print(response.data);
      var listUser = listUserFromJson(response.data);
      //print('data:${listUser.data}');
      //var listUser=ListUser.fromJson(jsonDecode(response.data));
      //print('Repository:${listUser.data!.first.firstName}');
      return listUser;
    }
    catch (_) {
      var response=await _deviceRepository.getUsers();
      var listUser= listUserFromJson(response.data);
      return listUser;
    }
  }
}