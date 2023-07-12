import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Users {
  int? id;
  String? name;
  String? userName;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  Users({
    this.id,
    this.name,
    this.userName,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Geo {
  String? lat;
  String? lng;

  Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
