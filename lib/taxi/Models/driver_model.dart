class Driver {
  final String name;
  final String phoneNumber;
  final String carBrand;
  final String carNumber;
  final String profilePhotoPath;
  final String licensePhotoPath;

  Driver({
    required this.name,
    required this.phoneNumber,
    required this.carBrand,
    required this.carNumber,
    required this.profilePhotoPath,
    required this.licensePhotoPath,
  });

  // Преобразование объекта в Map для сохранения в SharedPreferences
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'carBrand': carBrand,
      'carNumber': carNumber,
      'profilePhotoPath': profilePhotoPath,
      'licensePhotoPath': licensePhotoPath,
    };
  }

  // Создание объекта из Map
  factory Driver.fromMap(Map<String, dynamic> map) {
    return Driver(
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      carBrand: map['carBrand'],
      carNumber: map['carNumber'],
      profilePhotoPath: map['profilePhotoPath'],
      licensePhotoPath: map['licensePhotoPath'],
    );
  }
}