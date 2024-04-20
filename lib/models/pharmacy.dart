class Pharmacy {
  int? id;
  String? pharmacyName;
  String? location;
  String? status;
  String? mobile;
  String? ownerName;

  Pharmacy({
    this.id,
    this.pharmacyName,
    this.location,
    this.status,
    this.mobile,
    this.ownerName,
  });

  factory Pharmacy.fromJson(Map<String, dynamic> json) {
    return Pharmacy(
      id: json['id'],
      pharmacyName: json['pharmacyName'],
      location: json['location'],
      status: json['status'],
    );
  }
}

