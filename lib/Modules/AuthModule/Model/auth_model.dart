class UserModel {
  String userId;
  String name;
  String email;
  String? profileImage;

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
    this.profileImage,
  });
  factory UserModel.fromJson(dynamic json) {
    return UserModel(
        userId: json["id"],
        name: json["name"],
        email: json["email"],
        profileImage: json["profileImage"]);
  }


// Map<String, dynamic> toJson() => {
//   "userId": userId == null ? null : userId,
//   "id": id == null ? null : id,
//   "title": title == null ? null : title,
// };
}