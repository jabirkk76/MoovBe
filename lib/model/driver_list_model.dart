class DriverListModel {
  List<Driver>? driverList;

  DriverListModel({this.driverList});

  factory DriverListModel.fromJson(Map<String, dynamic> json) {
    return DriverListModel(
      driverList: json["driver_list"],
    );
  }
}

class Driver {
  int? id;
  String? name;
  String? mobile;
  String? licenseNo;

  Driver({this.id, this.name, this.mobile, this.licenseNo});

  Driver.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    licenseNo = json['license_no'];
  }
}
