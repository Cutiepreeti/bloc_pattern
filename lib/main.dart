import 'package:bloc_pattern/app/app.dart';
import 'package:bloc_pattern/device/device.dart';
import 'package:bloc_pattern/data/data.dart';
import 'package:bloc_pattern/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp( const MyApp());
}

Future<void>initServices() async{

 Get.put(
   AuthUseCase(
     Get.put(
       Repository(
         Get.put(
           DataRepository(
             Get.put(
               ConnectHelper(),
            ),
          ),
        ),
        Get.put(
          DeviceRepository(
         ),
       ),
     ),
     ),
   ),
 );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: AppPages.pages,
    initialRoute: AppPages.initial,
  );
}
