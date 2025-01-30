class FirstMenuRepository {
  static List<String> distances = ['1.8 km', '2 km', '3 km'];
  static List<String> images = [
    'assets/images_of_market/dreamsville_house.png',
    'assets/images_of_market/ascot_house.png',
  ];
  static List<String> names = ['Dreamsville House', 'House B', 'House C'];
  static List<String> descriptions = [
    'Jl. Sultan Iskandar Muda',
    'Modern apartment in the city',
    'Jl. Sultan Iskandar Muda, Jakarta selatan'
  ];
  static List<Map<String, String>> items = [
    {
      'name': 'Orchad House',
      'cost': 'Rp. 2.500.000.000 / Прямо сейчас',
      'imgPath': 'assets/images_of_market/hotel_1.png',
      'description1': '6 Bedroom',
      'description2': '4 Bathroom',
      'svgPath1': 'assets/images_of_market/bed_icon.svg',
      'svgPath2': 'assets/images_of_market/bath_icon.svg',
    },
    // Добавьте больше элементов по мере необходимости
    {
      'name': 'Sunset Villa',
      'cost': 'Rp. 3.000.000.000 / Прямо сейчас',
      'imgPath': 'assets/images_of_market/hotel_2.png',
      'description1': '5 Bedroom',
      'description2': '3 Bathroom',
      'svgPath1': 'assets/images_of_market/bed_icon.svg',
      'svgPath2': 'assets/images_of_market/bath_icon.svg',
    },
    // Добавьте дополнительные элементы здесь
  ];
}
