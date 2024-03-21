class IndiaResponse {
  String? country;
  List<State>? state;

  IndiaResponse({this.country, this.state});

  IndiaResponse.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    if (json['state'] != null) {
      state = <State>[];
      json['state'].forEach((v) {
        state!.add(new State.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    if (this.state != null) {
      data['state'] = this.state!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class State {
  String? name;
  List<District>? district;

  State({this.name, this.district});

  State.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['district'] != null) {
      district = <District>[];
      json['district'].forEach((v) {
        district!.add(new District.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.district != null) {
      data['district'] = this.district!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class District {
  String? d1;
  SubDistrict? subDistrict;
  String? d2;

  District({this.d1, this.subDistrict, this.d2});

  District.fromJson(Map<String, dynamic> json) {
    d1 = json['d1'];
    subDistrict = json['subDistrict'] != null
        ? new SubDistrict.fromJson(json['subDistrict'])
        : null;
    d2 = json['d2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['d1'] = this.d1;
    if (this.subDistrict != null) {
      data['subDistrict'] = this.subDistrict!.toJson();
    }
    data['d2'] = this.d2;
    return data;
  }
}

class SubDistrict {
  String? subd1;
  String? subd2;
  String? subd3;

  SubDistrict({this.subd1, this.subd2, this.subd3});

  SubDistrict.fromJson(Map<String, dynamic> json) {
    subd1 = json['subd1'];
    subd2 = json['subd2'];
    subd3 = json['subd3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subd1'] = this.subd1;
    data['subd2'] = this.subd2;
    data['subd3'] = this.subd3;
    return data;
  }
}