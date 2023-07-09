class User {
  int id;
  String firstName;
  String lastName;
  String email;
  DateTime emailVerifiedAt;
  String userType;
  String phone;
  String status;
  String totalOrders;
  String lastPassword;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.emailVerifiedAt,
    required this.userType,
    required this.phone,
    required this.status,
    required this.totalOrders,
    required this.lastPassword,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      emailVerifiedAt: DateTime.parse(json['email_verified_at']),
      userType: json['user_type'],
      phone: json['phone'],
      status: json['status'],
      totalOrders: json['total_orders'],
      lastPassword: json['last_password'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
