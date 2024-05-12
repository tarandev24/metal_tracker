import 'package:flutter/material.dart';
import 'package:metal_tracker/custom_widgets/custom_paint.dart';
import 'package:metal_tracker/custom_widgets/metalStatusCard.dart';
import 'package:metal_tracker/custom_widgets/navigation_bar.dart';
import 'package:metal_tracker/model/metalInvestmentDetails.dart';
import 'package:metal_tracker/sampleData/sampleData.dart';
import 'package:metal_tracker/static.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  static const routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  MetalInvestmentDetails metal = MetalInvestmentDetails.fromJson(metalData);

  @override
  Widget build(BuildContext context) {
    CommonMediaQuery.initialize(context);
    return Scaffold(
      body: Container(
        child: CustomPaint(
          size: Size(CommonMediaQuery.screenWidth, CommonMediaQuery.screenHeight),
          painter: VerticalBluePainter(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: Column(children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          '\$${metal.accountValue}',
                          style: const TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Container(
                          width: 130,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15), // Make it circular
                            color: Color.fromARGB(255, 4, 99, 146), // Primary color with 50% opacity
                            border: Border.all(
                              color: Color.fromARGB(255, 4, 99, 146),
                              width: 2,
                            ),
                          ),
                          child:  Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${metal.totalIncreasePercentage}%',
                                  style: const TextStyle(
                                    color: Colors.white, // Text color
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Value',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        Text(
                          'Since last purchase',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 15.0),
                      child: Divider(),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cash Balance',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        Text(
                          'Metal Holdings',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         '\$${metal.cashBalance}',
                          style: const TextStyle(color: Colors.white, fontSize: 21),
                        ),
                        Text(
                         '\$${metal.metalHodlings}',
                          style: const TextStyle(color: Colors.white, fontSize: 21),
                        ),
                      ],
                    ),
                  ]),
                ),
                for (var metalItem in metal.metals!)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                    child: MetalStatusCard(
                      iconColor: metalItem.metalColor!,
                      metalName: metalItem.metalName!,
                      price: '\$${metalItem.price}',
                      investedOunce: '${metalItem.investedOunces} oz',
                      changePercentage: '${metalItem.changePercentage}%',
                      marketPrice: '\$${metalItem.marketPrice}',
                      marketChangePercentage: '${metalItem.marketChangePercentage}%',
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 4.0),
                  child: Text('Do More With OneGold', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(currentNavIndex: 0),
    );
  }
}


