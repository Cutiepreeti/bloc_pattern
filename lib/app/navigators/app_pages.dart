import 'package:bloc_pattern/app/app.dart';
import 'package:get/get.dart';

class AppPages{
  static const initial=Routes.listUser;

  static final pages=[
      GetPage<UserView>
        (
        name: Routes.listUser,
        page:UserView.new,
        //binding:LoginBinding(),
        transition:Transition.leftToRight,
      ),
  ];
}