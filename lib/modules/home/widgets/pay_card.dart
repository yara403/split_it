import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class PayCardWidget extends StatelessWidget {
  const PayCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppTheme.colors.borderCardPay,
          width: 1,
        ),
        gradient: AppTheme.gradients.backgroundCardPay,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppTheme.colors.backgroundPaySymbol,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/money_pay.png',
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Text(
              "A pagar",
              style: AppTheme.textStyles.card,
            ),
            RichText(
              text: TextSpan(
                  style: AppTheme.textStyles.cardMoneyToPay,
                  children: [
                    TextSpan(text: "R\$ "),
                    TextSpan(
                      text: "161,00",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
