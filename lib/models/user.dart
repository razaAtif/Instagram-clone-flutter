class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;

  const User({
    required this.email,
    required this.bio,
    required this.followers,
    required this.following,
    required this.photoUrl,
    required this.uid,
    required this.username,
  });

  // whenever we call this toJason method on our user class
  // it will convert everything that we receive form the arguments to a object file
  // so that we don't need to write this same code wherever we use it
  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "photoUrl": photoUrl,
        "email": email,
        "bio": bio,
        "followers": followers,
        "following": following,
      };
}
