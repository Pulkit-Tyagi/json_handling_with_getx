import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_handling/getx_controller/controller.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  
  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserInfo'),
        centerTitle: true,
      ),
      body: Obx(() => Column(
        children: [
          Text('${controller.userInfoList.value?.data?.ph}')
        ],
      )),

    );
  }
}
