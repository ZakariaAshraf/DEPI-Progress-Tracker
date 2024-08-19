
class User {
  int id;
  String userName;
  String? image;
  String name;
  String address;
  int followers;
  int following;

  User(
      {required this.id,
        required this.userName,
        this.image,
        required this.name,
        this.address = "",
        this.followers = 0,
        this.following = 0});
}

// User user =User(id: 1, name: "Tamer", address: "Cairo, Egypt",image:"assets/images/tamer_hosni.jpg",followers: 1000,following: 250, userName: "@tamer101" );
