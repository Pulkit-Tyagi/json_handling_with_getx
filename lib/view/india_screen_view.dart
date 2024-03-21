import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_handling/getx_controller/controller.dart';
import 'package:json_handling/view/user_info_screen.dart';

class IndiaScreen extends StatefulWidget {
  const IndiaScreen({super.key});

  @override
  State<IndiaScreen> createState() => _IndiaScreenState();
}

class _IndiaScreenState extends State<IndiaScreen> {
  
  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('India Screen')),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
              itemBuilder: (context, index){
                return Card(
                  elevation: 4,
                  child: ListTile(
                    title: Text(controller.indiaList.value![index].state![0].name.toString()),
                    subtitle: Text(controller.indiaList.value![index].state![0].district![0].subDistrict!.subd1.toString()),
                    trailing: Text(controller.indiaList.value![index].state![0].district![0].d2.toString()),
                  ),
                );
              },
              itemCount: controller.indiaList.value.length,
            )),
          ),
          ElevatedButton(onPressed: (){
            Get.to(()=> const UserInfo());
          },
              child: Text("UserInfo Screen "))
        ],
      ),
    );
  }
}
