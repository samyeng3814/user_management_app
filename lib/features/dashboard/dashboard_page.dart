import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/features/dashboard/widgets/overview_card_widget.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/end_drawer_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<double> chartsValue = [
    25,
    35,
    67,
    56,
    67,
    89,
    97,
    54,
    79,
    33,
    16,
    56,
    90
  ];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: AppColors.whiteColor,
        title: Text(
          'Dashboard',
          style: AppTheme.of(context).title,
        ),
        centerTitle: true,
        leadingWidth: screenWidth * 0.18,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SvgPicture.asset(
            'assets/svg/car_icon.svg',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              splashRadius: 18,
              constraints: const BoxConstraints(),
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              icon: SizedBox(
                width: 40,
                height: 40,
                child: SvgPicture.asset(
                  'assets/svg/menu_icon.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: AppTheme.of(context).title,
                ),
                OverViewCardWidget(
                  title: 'Total Customers',
                  value: '345',
                  percentageValue: '2.3%',
                  msgString: ' is less than last month',
                  iconPath: 'total_customer_icon',
                  arrowIcon: Icons.arrow_downward_rounded,
                  valueColor: AppColors.redColor,
                ),
                OverViewCardWidget(
                  title: 'Total Sales',
                  value: '₹ 34588',
                  percentageValue: '4.5%',
                  msgString: ' is greater than last month',
                  iconPath: 'total_sales_icon',
                  valueColor: AppColors.greenColor,
                  arrowIcon: Icons.arrow_upward_rounded,
                ),
                AppSizedBox.h12,
                Text(
                  'Sales Overview',
                  style: AppTheme.of(context).title,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: screenHeight * 0.44,
                    width: screenWidth * 1.3,
                    child: BarChart(
                      BarChartData(
                        barGroups: List.generate(chartsValue.length, (index) {
                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              makeRodData(
                                chartsValue[index],
                                index % 2 == 0
                                    ? AppColors.blackColor
                                    : AppColors.textFieldBorderColor,
                              )
                            ],
                            barsSpace: 22,
                          );
                        }),
                        titlesData: const FlTitlesData(
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        maxY: 97 + 22,
                        gridData: const FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BarChartRodData makeRodData(double y, Color color) {
    return BarChartRodData(
      toY: y,
      width: 18,
      borderRadius: BorderRadius.circular(2),
      color: color,
      backDrawRodData: BackgroundBarChartRodData(
        show: false,
        toY: 97 + 22,
        color: AppColors.textFieldBorderColor.withOpacity(0.1),
      ),
    );
  }
}
