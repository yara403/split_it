import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:split_it/modules/home/widgets/icon_dollar.dart';
import 'package:split_it/modules/home/widgets/loading.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel event;
  final bool isLoading;

  const EventTileWidget({
    Key? key,
    required this.event,
    this.isLoading = false,
  }) : super(key: key);

  IconDollarType get type =>
      event.value! >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR');
    if (isLoading)
      return Row(
        children: [
          LoadingWidget(size: Size(48, 48)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: LoadingWidget(
                      size: Size(80, 20),
                    ),
                    subtitle: LoadingWidget(size: Size(50, 20)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LoadingWidget(size: Size(70, 20)),
                        SizedBox(
                          height: 3,
                        ),
                        LoadingWidget(size: Size(45, 20)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    else
      return Row(
        children: [
          IconDollarWidget(type: type),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/event_details",
                          arguments: event);
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        event.title!,
                        style: AppTheme.textStyles.eventTileTitle,
                      ),
                      subtitle: Text(
                        formmattedDate,
                        style: AppTheme.textStyles.eventTileSubTitle,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('R\$ $formmattedValue',
                              style: AppTheme.textStyles.eventTileMoney),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                              "${event.people} amigo${event.people! > 1 ? 's' : ''}",
                              style: AppTheme.textStyles.eventTilePeople),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: AppTheme.colors.divider,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }

  get formmattedValue =>
      event.value!.abs().toStringAsFixed(2).replaceFirst('.', ',');

  get formmattedDate => DateFormat("dd MMMM", 'pt_BR').format(event.created!);
}
