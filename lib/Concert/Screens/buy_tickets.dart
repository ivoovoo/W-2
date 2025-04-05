import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'map_view.dart';

class BuyTickets extends StatefulWidget {
  const BuyTickets({super.key});

  @override
  State<BuyTickets> createState() => _BuyTicketsState();
}

class _BuyTicketsState extends State<BuyTickets> {
  String longText = """
  On a crisp autumn evening, music enthusiasts from all walks of life gathered at the grand City Hall Auditorium for the highly anticipated International Band Music Concert. This extraordinary event brought together talented musicians from across the globe, showcasing the rich diversity of musical traditions and the unifying power of music.

The concert kicked off with a vibrant performance by the Tokyo Wind Ensemble, whose precise and energetic rendition of contemporary Japanese compositions left the audience in awe. The seamless blend of traditional melodies with modern arrangements highlighted the unique cultural identity of Japan while resonating with universal themes of hope and resilience.

Next, the Berlin Philharmonic Wind Quintet took the stage, delivering a masterful performance of classical European pieces. Their interpretation of works by Mozart and Beethoven was both elegant and powerful, transporting the audience to the heart of Europe’s musical heritage. The quintet’s impeccable synchronization and emotional depth were met with thunderous applause.

The highlight of the evening was the collaboration between the Brazilian Samba Band and the Indian Fusion Ensemble. This unexpected pairing created a mesmerizing fusion of rhythms and melodies, blending the infectious energy of Brazilian samba with the intricate patterns of Indian classical music. The result was a lively, soul-stirring performance that had the audience on their feet, dancing and clapping along.

The concert concluded with a joint performance by all the participating bands, playing a specially composed piece titled "Harmony Across Borders." This powerful finale symbolized the spirit of unity and collaboration, reminding everyone that music transcends language, culture, and geography.

As the final notes faded away, the audience erupted into a standing ovation, their hearts full of joy and inspiration. The International Band Music Concert was not just a celebration of music but a testament to the beauty of cultural exchange and the shared humanity that connects us all. It was an evening that will be remembered for years to come, a true symphony of global harmony.
  """;

  List<Contact> _contacts = [];
  List<Contact> _filteredContacts = [];

  // Список контактов
  @override
  void initState() {
    super.initState();
    _loadContacts();

    _searchController.addListener(_filterContacts);
  }

  final TextEditingController _searchController = TextEditingController();

  Future<void> _loadContacts() async {
    try {
      final Iterable<Contact> contacts = await ContactsService.getContacts();
      setState(() {
        _contacts = contacts.toList();
        _filteredContacts = _contacts;
      });
    } catch (e) {
      print('Ошибка при загрузке контактов: $e');
    }
  }

  @override
  void dispose() {
    _searchController.dispose(); // Освобождаем ресурсы
    super.dispose();
  }

  void _filterContacts() {
    final query = _searchController.text.toLowerCase(); // Поисковый запрос

    setState(() {
      _filteredContacts = _contacts.where((contact) {
        final nameMatch = contact.displayName?.toLowerCase().contains(query) ?? false;
        final phoneMatch = contact.phones?.any((phone) => phone.value?.toLowerCase().contains(query) ?? false) ?? false;
        return nameMatch || phoneMatch;
      }).toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/concert.png', fit: BoxFit.contain),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'International Band Music Concert',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          child: Row(
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(86, 105, 255, 0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/calendar_dec.svg',
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '14 December, 2021',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Tuesday, 4:00PM - 9:00PM',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(116, 118, 136, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          child: Row(
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(86, 105, 255, 0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: SvgPicture.asset('assets/gala.svg'),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gala Convention Center',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '36 Guild Street London, UK ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(116, 118, 136, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/ashfak.png'),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ashfak Sayem',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Ashfak Sayem ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(112, 110, 143, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 60,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromRGBO(86, 105, 255, 0.1),
                              ),
                              child: Center(
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(86, 105, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'About Event',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          longText,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        SizedBox(height: 80),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/top_right.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: GestureDetector(
                onTap: () {
                  _showContactsBottomSheet(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 6,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/persons.png'),
                            Text(
                              '  +20 Going',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(63, 56, 221, 1),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 67,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(86, 105, 255, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Invite',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 40,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement( MaterialPageRoute(
                    builder: (context) => MapView(),
                  ),);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(86, 105, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        spreadRadius: 40,
                        blurRadius: 25,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 30),
                        Text(
                          'Buy Ticket \$120',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(61, 86, 240, 1),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isChecked = false;

  void _showContactsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      builder: (BuildContext context) {
        return _contacts.isEmpty
            ? Center(child: Text('Контакты не найдены'))
            : Column(
              children: [
                SizedBox(height: 20),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
        controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(240, 240, 240, 1),
                          ), // Черная рамка
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(240, 240, 240, 1),
                          ), // Черная рамка (когда поле активно)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(240, 240, 240, 1),
                          ), // Черная рамка (когда поле в фокусе)
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            'assets/search_6_.svg', // Путь к SVG-иконке
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 7,
                  child: ListView.builder(
                    itemCount: _filteredContacts.length,
                    itemBuilder: (context, index) {
                      final contact = _filteredContacts[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                contact.avatar != null
                                    ? ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                        ),
                                        child: Image.memory(contact.avatar!),
                                      ),
                                    )
                                    : Image.asset('assets/Ellipse 60.png'),
                                SizedBox(width: 10),
                                Text('@${contact.displayName}' ?? 'Без имени'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: SvgPicture.asset('assets/No-Select.svg'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
      },
    );
  }
}
