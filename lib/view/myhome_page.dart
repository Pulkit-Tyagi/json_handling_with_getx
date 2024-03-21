import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_handling/getx_controller/controller.dart';
import 'package:json_handling/view/india_screen_view.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Handling'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
              itemBuilder: (context, index){
                return Card(
                  child: ListTile(
                    leading: Text(controller.list.value![index].id.toString()),
                    title: Text(controller.list.value![index].name.toString()),
                    subtitle: Text(controller.list.value![index].data![0].firstName.toString()),
                    trailing: Text(controller.list.value![index].data![0].lastName.toString()),
                  ),
                );
            
              },
              itemCount: controller.list.value.length,
            )),
          ),
          ElevatedButton(onPressed: (){
            Get.to(()=> const IndiaScreen());
          }, 
              child: const Text('India Screen'))
        ],
      )
    );
  }

}
