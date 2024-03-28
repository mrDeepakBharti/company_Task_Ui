import 'package:company_ui/utils/res/fonts.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Map<String, double> dataMap = {
    'Invested Amount': 1000, // 10% for blue color
    'Total Profit': 20000, // 90% for green color
  };
  int _selectedIndex = 0;

  static const List<IconData> _icons = [
    Icons.home_outlined,
    Icons.folder_outlined,
    Icons.account_balance_wallet_outlined,
    Icons.notifications_outlined,
    Icons.settings_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FBF5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF1FBF5),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              width: 139,
              height: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assest/images/Group 13.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 520,
                height: 180,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage('assest/images/Group 30.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04),
                  child: const CircularProgressIndicator(
                    strokeWidth: 17,
                    value: 1,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF43AA6F),
                    ),
                    backgroundColor: Colors.transparent,
                    semanticsValue: 'Loading',
                    semanticsLabel: 'Loading',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: 92,
                    height: 111,
                    decoration: const BoxDecoration(
                        color: Color(0xff9dd4b4),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Invested',
                          style: TextStyle(
                            fontFamily: AppFonts.Poppins_Medium,
                            fontSize: 16,
                            color: Color(0xff505050),
                          ),
                        ),
                        Text(
                          'Amount',
                          style: TextStyle(
                            fontFamily: AppFonts.Poppins_Medium,
                            fontSize: 16,
                            color: Color(0xff505050),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\u20B9 9000',
                          style: TextStyle(
                            fontFamily: AppFonts.Poppins_Medium,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    // Add other properties or child widgets here
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: 92,
                    height: 111,
                    decoration: const BoxDecoration(
                        color: Color(0xffd5eeea),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: AppFonts.Poppins_Medium,
                            fontSize: 16,
                            color: Color(0xff505050),
                          ),
                        ),
                        Text(
                          'Profit',
                          style: TextStyle(
                            fontFamily: AppFonts.Poppins_Medium,
                            fontSize: 16,
                            color: Color(0xff505050),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\u20B9 10,000',
                          style: TextStyle(
                            fontFamily: AppFonts.Poppins_Medium,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    // Add other properties or child widgets here
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Purchased Plan',
              style: TextStyle(
                  fontFamily: AppFonts.Poppins_Medium,
                  color: Color(0xffaaafac),
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 2.0,
              child: Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gold",
                            style: TextStyle(
                              fontFamily: AppFonts.Poppins_Medium,
                              color: Color(0xffaaafac),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "4%",
                            style: TextStyle(
                              fontFamily: AppFonts.Poppins_Medium,
                              color: Color(0xff21422D),
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32,
                      chartRadius: MediaQuery.of(context).size.width / 4,
                      // Decrease the chartRadius
                      colorList: [Color(0xffb2dfdb), Colors.green],
                      initialAngleInDegree: 0,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 24, // Decrease the ringStrokeWidth
                      centerText: "Investments",
                      legendOptions: LegendOptions(
                        showLegendsInRow: true,
                        legendPosition: LegendPosition.bottom,
                        showLegends: true,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: false,
                        showChartValuesOutside:
                            true, // Move labels outside the ring
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int index) => setState(() => _selectedIndex = index),
          selectedItemColor: const Color(0xFF219653),
          unselectedItemColor: const Color(0xFF939393),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          showUnselectedLabels: true,
          items: _icons
              .map(
                (icon) => BottomNavigationBarItem(
                  icon: Icon(icon),
                  label: '',
                ),
              )
              .toList(),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
