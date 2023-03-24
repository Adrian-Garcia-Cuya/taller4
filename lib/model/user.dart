class User {
  int? id;
  final String name;
  final String nationality;
  final int age;
  final String gender;
  User({
    this.id,
    required this.name,
    required this.nationality,
    required this.age,
    required this.gender,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'gender': gender,
      'nationality': nationality
    };
  }

  @override
  String toString() {
    return 'User( name: $name, age: $age)';
  }
}
