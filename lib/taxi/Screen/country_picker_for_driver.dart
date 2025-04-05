import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';



class CountryPickerScreen extends StatelessWidget {
  CountryPickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo for country picker')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showCountryPicker(
              context: context,
              exclude: <String>['KN', 'MF'],
              favorite: <String>['SE'],
              showPhoneCode: true,
              onSelect: (Country country) {
                print('Select country: ${country.displayName}');
              },
              moveAlongWithKeyboard: false,
              countryListTheme: CountryListThemeData(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                // Optional. Styles the search field.
                inputDecoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Start typing to search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF8C98A8).withOpacity(0.2),
                    ),
                  ),
                ),
                // Optional. Styles the text in the search field
                searchTextStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            );
          },
          child: const Text('Show country picker'),
        ),
      ),
    );
  }
}