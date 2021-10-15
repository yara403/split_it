import 'package:flutter/material.dart';
import 'package:split_it/shared/utils/formatter.dart';
import 'package:split_it/theme/app_theme.dart';

class TileIntegranteWidget extends StatefulWidget {
  final String urlPhoto;
  final String userName;
  final double value;

  TileIntegranteWidget({
    Key? key,
    required this.urlPhoto,
    required this.userName,
    required this.value,
  }) : super(key: key);

  @override
  _TileIntegranteWidgetState createState() => _TileIntegranteWidgetState();
}

class _TileIntegranteWidgetState extends State<TileIntegranteWidget> {
  late bool isPaid;

  @override
  void initState() {
    isPaid = widget.value > 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: ClipRRect(
        child: Image.asset(
          widget.urlPhoto,
          width: 40,
          height: 40,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text(widget.userName, style: AppTheme.textStyles.nameIntegrant),
      subtitle: Text("R\$ ${FormatterUtils.formatMoney(widget.value)}",
          style: isPaid
              ? AppTheme.textStyles.creditValue
              : AppTheme.textStyles.debtValue),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: isPaid
                ? AppTheme.colors.activeCheckboxArea
                : AppTheme.colors.checkboxArea,
            borderRadius: BorderRadius.circular(5)),
        child: Checkbox(
          checkColor: AppTheme.colors.checkColor,
          splashRadius: 10,
          activeColor: AppTheme.colors.activeCheckbox,
          overlayColor: MaterialStateColor.resolveWith((states) {
            return Colors.white;
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          side: BorderSide(width: 1.5, color: AppTheme.colors.borderCheckbox),
          value: isPaid,
          onChanged: (bool? value) {
            setState(() {
              isPaid = value!;
            });
          },
        ),
      ),
    );
  }
}
