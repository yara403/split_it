import 'package:flutter/material.dart';
import 'package:split_it/modules/event/widgets/event_app_bar.dart';
import 'package:split_it/modules/event/widgets/tile_integrante.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/shared/models/item_model.dart';
import 'package:split_it/shared/utils/formatter.dart';
import 'package:split_it/theme/app_theme.dart';

class EventPage extends StatelessWidget {
  final List<ItemModel> itens = [
    ItemModel(name: "Picanha", value: 122),
    ItemModel(name: "Linguicinha", value: 17),
    ItemModel(name: "Carvão", value: 19),
    ItemModel(name: "Cerveja", value: 68),
    ItemModel(name: "Refrigerante", value: 12),
    ItemModel(name: "Pão de alho", value: 15),
  ];

  EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EventModel event =
        ModalRoute.of(context)!.settings.arguments as EventModel;
    return Scaffold(
        appBar: EventAppBarWidget(
          event: event,
          onPressBack: () {
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 8, color: AppTheme.colors.dividerEvent),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 24,
                ),
                child: Text("INTEGRANTES",
                    style: AppTheme.textStyles.titleIntegrants),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    TileIntegranteWidget(
                      urlPhoto: "assets/images/profile/eu.png",
                      userName: "Você",
                      value: 126.0,
                    ),
                    TileIntegranteWidget(
                      urlPhoto: "assets/images/profile/maria.png",
                      userName: "Maria Antônia",
                      value: -126.0,
                    ),
                  ],
                ),
              ),
              Container(height: 8, color: AppTheme.colors.dividerEvent),
              Container(
                height: 64,
                padding: EdgeInsets.all(24),
                child: Text("ÍTENS", style: AppTheme.textStyles.headerItens),
              ),
              Container(height: 1, color: AppTheme.colors.dividerItens),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: Text(itens.first.name,
                      style: AppTheme.textStyles.titleItem),
                  trailing: RichText(
                    text: TextSpan(
                      text: "R\$ ",
                      style: AppTheme.textStyles.itemTileValue,
                      children: [
                        TextSpan(
                            text:
                                "${FormatterUtils.formatMoney(itens.first.value)}",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    ...itens
                        .sublist(1)
                        .map((item) => ListTile(
                              title: Text(item.name,
                                  style: AppTheme.textStyles.titleItem),
                              trailing: RichText(
                                text: TextSpan(
                                  text: "R\$ ",
                                  style: AppTheme.textStyles.itemTileValue,
                                  children: [
                                    TextSpan(
                                        text:
                                            "${FormatterUtils.formatMoney(item.value)}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              shape: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: AppTheme.colors.dividerItens),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 0),
                            ))
                        .toList(),
                  ],
                ),
              ),
              Container(
                color: AppTheme.colors.backgroundTotal,
                height: 44,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 24),
                    title: Text("Total", style: AppTheme.textStyles.titleTotal),
                    trailing: RichText(
                        text: TextSpan(
                            text: "R\$ ",
                            style: AppTheme.textStyles.valueTotal,
                            children: [
                          TextSpan(
                            text: "252,00",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ]))),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                alignment: Alignment.centerRight,
                child: RichText(
                    text: TextSpan(
                        text: "Faltam R\$ ",
                        style: AppTheme.textStyles.debit,
                        children: [
                      TextSpan(
                        text: "126,00",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ])),
              ),
            ],
          ),
        ));
  }
}
