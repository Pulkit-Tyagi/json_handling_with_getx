import 'package:get/get.dart';
import 'package:json_handling/models/userlist_model.dart';

import '../models/india_response.dart';
import '../models/user_info_model.dart';


class Controller extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
    indiaData();
    onUserInfo();
  }

  // RxList list = [].obs;
  var list = RxList<ApiResponse>();
  var response = [
    {
      "name": "pulkit tyagi",
      "id": 1234,
      "data": [
        {
          "firstName": "pulkit",
          "lastName": "tyagi"
        },
        {
          "address": "didoli"
        }
      ]
    },
    {
      "name": "a tyagi",
      "id": 8763,
      "data": [
        {
          "firstName": "a",
          "lastName": "qwe"
        },
        {
          "address": "muradnagar"
        }
      ]
    },
    {
      "name": "b tyagi",
      "id": 4384,
      "data": [
        {
          "firstName": "b",
          "lastName": "wref"
        },
        {
          "address": "modinagar"
        }
      ]
    },
    {
      "name": "c tyagi",
      "id": 5673,
      "data": [
        {
          "firstName": "c",
          "lastName": "sfd"
        },
        {
          "address": "sonda"
        }
      ]
    }
  ];

  getData(){
    response.map((e) => list.add(ApiResponse.fromJson(e))).toList();
  }


  // RxList indiaList = [].obs;
  var indiaList = RxList<dynamic>();
  var indiaResponse = [
    {
      "country": "India",
      "state": [
        {
          "name": "Uttar Pradesh",
          "district": [
            {
              "d1": "Ghaziabad",
              "subDistrict": {
                "subd1": "Loni",
                "subd2": "Muradnagar",
                "subd3": "Modinagar"
              }
            },
            {
              "d2": "Muzaffarnagar",
              "subDistrict": {
                "subd1": "Rohana",
                "subd2": "Chappar",
                "subd3": "Barla"
              }
            }
          ]
        },
        {
          "name": "Haryana",
          "district": [
            {
              "d1": "Gurugram",
              "subDistrict": {
                "subd1": "Sohna",
                "subd2": "Rajiv Chowk",
                "subd3": "Subhash Chowk"
              }
            },
            {
              "d2": "Sonepat",
              "subDistrict": {
                "subd1": "Murthal",
                "subd2": "Narela",
                "subd3": null
              }
            }
          ]
        }
      ]
    },
    {
      "country": "Russia",
      "state": [
        {
          "name": "RS1",
          "district": [
            {
              "d1": "Russia State1 Dist1",
              "subDistrict": {
                "subd1": "s1d1a",
                "subd2": "s1d1b",
                "subd3": "s1d1c"
              }
            },
            {
              "d2": "Russia State2 Dist2",
              "subDistrict": {
                "subd1": "s1d2a",
                "subd2": "s1d2b",
                "subd3": "s1d2c"
              }
            }
          ]
        },
        {
          "name": "RS2",
          "district": [
            {
              "d1": "Russia State 2 Dist1",
              "subDistrict": {
                "subd1": "s2d1a",
                "subd2": "s2d1b",
                "subd3": "s2d1c"
              }
            },
            {
              "d2": "Russia State 2 Dist2",
              "subDistrict": {
                "subd1": "s2d2a",
                "subd2": "s2d2b",
                "subd3": null
              }
            }
          ]
        }
      ]
    }
  ];

  indiaData(){
    indiaResponse.map((e) => indiaList.add(IndiaResponse.fromJson(e))).toList();
  }

  //Rxn<type>() used for object type data
  Rxn<UserInfoResponse> userInfoList = Rxn<UserInfoResponse>();
  //RxList<>() used for list type data
  // var data = RxList<String>();

  var userInfoResponse = {
    "name":"pulkit",
    "id":1234,
    "data": {
      "email":"tpulkit@gmail.com",
      "ph": 12345678,
      "address":"Gurgaon"
    }
  };

  onUserInfo(){

    userInfoList.value = UserInfoResponse.fromJson(userInfoResponse);
  }

}
