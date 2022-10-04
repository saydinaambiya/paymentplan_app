import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payment_app/shared/theme.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  int selectedindex = -1;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    Widget headerWidget() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 32,
          right: 32,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade to ',
                  style: titleStyle,
                ),
                Text(
                  'Pro',
                  style: titleProStyle,
                )
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Go unlock all features and \nbuild your own business bigger',
              style: subtitleStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget optionWidget(
        int index, String titlePlan, String descPlan, int pricePlan) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
            isClicked = true;
          });
        },
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
                color: selectedindex == index ? blueColor : greyColor),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titlePlan,
                    style: titlePlanStyle,
                  ),
                  Text(
                    descPlan,
                    style: descPlanStyle,
                  )
                ],
              ),
              const Spacer(),
              Text(
                NumberFormat.simpleCurrency(locale: 'en_US', decimalDigits: 0)
                    .format(pricePlan),
                style: priceStyle,
              )
            ],
          ),
        ),
      );
    }

    Widget buttonCheckout() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          height: 50,
          minWidth: double.infinity,
          elevation: 5,
          color: blueColor,
          onPressed: () {},
          child: Text(
            'Checkout Now',
            style: buttonStyle(whiteColor),
          ),
        ),
      );
    }

    Widget cancelCheckout() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // height: 50,
          minWidth: double.minPositive,
          elevation: 5,
          color: whiteColor,
          onPressed: () {
            setState(() {
              isClicked = false;
              selectedindex = -1;
            });
          },
          child: Text(
            'Cancel',
            style: buttonStyle(redColor),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          headerWidget(),
          optionWidget(0, 'Monthly', 'Good for starting up', 20),
          optionWidget(1, 'Quarterly', 'Focusing on building', 55),
          optionWidget(2, 'Yearly', 'Steady company', 220),
          isClicked
              ? Column(
                  children: [
                    buttonCheckout(),
                    cancelCheckout(),
                  ],
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
