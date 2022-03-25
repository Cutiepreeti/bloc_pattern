import 'package:bloc_pattern/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          shrinkWrap: true,
          itemCount:15,
          itemBuilder: (context, index) =>
              Card(
                child: ListTile(
                  leading: Container(
                    height: 80,
                    width: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg'),
                      ),
                    ),
                  ),
                  title: const Text('andy'),
                  subtitle: const Text('raj@gmail.co'),
                  trailing: const Text('3',
                    style: TextStyle(
                      color: Colors.red,
                    ),),
                ),
              )
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        AuthUseCase(Get.find()).getUsers();
      })
    );
  }
}
