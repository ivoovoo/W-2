
import 'package:flutter/material.dart';
import 'package:social_network/taxi/components/tile.dart';
import 'package:social_network/taxi/components/tile_sec.dart';
import 'package:social_network/taxi/components/tile_third.dart';
import 'package:social_network/taxi/components/where_to_row.dart';


import 'choose_ride_dialog.dart';

class DraggableBottomSheet extends StatefulWidget {
  const DraggableBottomSheet({
    super.key,
    required this.controller,
  });

  final DraggableScrollableController controller;

  @override
  State<DraggableBottomSheet> createState() => _DraggableBottomSheetState();
}

class _DraggableBottomSheetState extends State<DraggableBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        controller: widget.controller,
        initialChildSize: 1 * (1 / 3),
        minChildSize: 1 * (1 / 3),
        maxChildSize: 1 * (1 / 1.55),
        builder: (
          ctx,
          controller,
        ) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                WhereToRow(
                  onGoTap: () {
                    showBottomSheet(
                        context: context,
                        builder: (ctx) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
                            child: const ChooseRideDialog(),
                          );
                        });
                  },
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: controller,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SafeArea(
                          bottom: true,
                          top: false,
                          child: Column(
                            children: [
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
                              SizedBox(
                                height: 24,
                              ),
                              TileThird(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
