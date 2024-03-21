class UserInfoResponse {
  String? name;
  int? id;
  Data? data;

  UserInfoResponse({this.name, this.id, this.data});

  UserInfoResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? email;
  int? ph;
  String? address;

  Data({this.email, this.ph, this.address});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    ph = json['ph'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['ph'] = this.ph;
    data['address'] = this.address;
    return data;
  }
}