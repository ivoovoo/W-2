
import 'package:flutter/material.dart';
import 'package:social_network/taxi/components/plus_button.dart';
import 'package:social_network/taxi/components/tile.dart';
import 'package:social_network/taxi/components/tile_sec.dart';


import 'button_with_title.dart';
import 'cars_row.dart';
import 'debit_card_row.dart';
import 'destination_text_field_row.dart';
import 'location_separator.dart';

class ChooseRideDialog extends StatefulWidget {
  const ChooseRideDialog({
    super.key,
  });

  @override
  State<ChooseRideDialog> createState() => _ChooseRideDialogState();
}

class _ChooseRideDialogState extends State<ChooseRideDialog> {
  int locationsLength = 2;
  late List<FocusNode> focusNodeList = List.generate(5, (index) => FocusNode());
  late List<TextEditingController> controllersList = List.generate(5, (index) => TextEditingController());
  int focusedTextField = -1;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 5; i++) {
      focusNodeList[i].addListener(() {
        if (focusNodeList[i].hasFocus) {
          setState(() {
            focusedTextField = i;
          });
        } else {
          setState(() {
            focusedTextField = -1;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: List.generate(locationsLength, (index) {
                          if (index == 0) {
                            return DestinationTextFieldRow(
                              isFocused: index == focusedTextField,
                              controller: controllersList[index],
                              focusNode: focusNodeList[index],
                            );
                          }
                          return Column(
                            children: [
                              const LocationsSeparator(),
                              DestinationTextFieldRow(
                                isFocused: index == focusedTextField,
                                controller: controllersList[index],
                                focusNode: focusNodeList[index],
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: PlusButton(
                        onTap: () {
                          setState(() {
                            if (locationsLength < 5) {
                              locationsLength++;
                            }

                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              if (focusedTextField != -1)
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                child: Tile(),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Expanded(
                                child: TileSec(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (focusedTextField == -1) const CarsRow(),
              if (focusedTextField == -1)
                const SizedBox(
                  height: 22,
                ),
              if (focusedTextField == -1)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: DebitCardRow(),
                ),
              const SizedBox(
                height: 22,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ButtonWithTitle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
