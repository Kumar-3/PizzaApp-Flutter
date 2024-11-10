class MyUserEntity {
  String userId;
  String name;
  String email;
  bool hasActiveCart;
  MyUserEntity({
    required this.userId,
    required this.name,
    required this.email,
    required this.hasActiveCart,
  });

  //to documents
  Map<String, dynamic> toDocument() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'hasActiveCart': hasActiveCart,
    };
  }

  // from documents
  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'],
      name: doc['name'],
      email: doc['email'],
      hasActiveCart: doc['hasActiveCart'],
    );
  }
}
