import 'package:flutter/material.dart';
import 'package:metal_tracker/custom_widgets/navigation_bar.dart';
import 'package:metal_tracker/static.dart';
import 'package:hexcolor/hexcolor.dart';

class MetalStatusCard extends StatefulWidget {
  MetalStatusCard(
      {required this.iconColor,
      required this.metalName,
      required this.price,
      required this.investedOunce,
      required this.changePercentage,
      required this.marketPrice,
      required this.marketChangePercentage,
      super.key});

  String iconColor;
  String metalName;
  String price;
  String investedOunce;
  String changePercentage;
  String marketPrice;
  String marketChangePercentage;

  @override
  State<MetalStatusCard> createState() => _MetalStatusCardState();
}

class _MetalStatusCardState extends State<MetalStatusCard> {
  @override
  Widget build(BuildContext context) {
    CommonMediaQuery.initialize(context);
    return SizedBox(
      width: CommonMediaQuery.screenWidth - 20,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10), // Adjust the radius to make it fully circular
          ),
          elevation: 1,
          color: scaffoldBackgroundColor, // Adjust the elevation as needed
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: HexColor(widget.iconColor)
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/metal_bar.png')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: CommonMediaQuery.screenWidth - 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.metalName,
                                style:  TextStyle(
                                    color: HexColor(widget.iconColor), fontSize: 24),
                              ),
                              Text(
                                widget.price,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.investedOunce,
                                style: const TextStyle(fontSize: 11),
                              ),
                              Text(
                                widget.changePercentage,
                                style: const TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Divider(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Metal Price',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Change',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.marketPrice,
                        style: const TextStyle(fontSize: 17),
                      ),
                      Text(
                        widget.marketChangePercentage,
                        style:
                            const TextStyle(color: Colors.brown, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
