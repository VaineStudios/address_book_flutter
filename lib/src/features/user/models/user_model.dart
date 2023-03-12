class User {
  String id;
  String first_name;
  String last_name;
  String email;
  String profile_image;
  String password;
  String home_number;
  String mobile_number;
  User({required this.id, required this.email, required this.first_name, required this.last_name, required this.profile_image, this.password = "", this.home_number = "", this.mobile_number= ""});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json["_id"] ?? "",
      first_name: json["first_name"] ?? "",
      last_name: json["last_name"] ?? "",
      email: json["email"] ?? "",
      profile_image: json["profile_image"] ?? "",
    );
  }

  static User sampleUser = User(
    first_name: "Esperanza",
    last_name: "Harrison",
    profile_image: "assets/images/image_container.png",
    email: "esperanzaharrison@globoil.com",
    mobile_number: "+1 (845) 461-3905",
    home_number: "+1 (840) 588-2574",
    id: '63feb54f347bb953de3d864a',
  );
}