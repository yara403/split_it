import 'package:flutter/material.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventAppBarWidget extends PreferredSize {
  final EventModel event;
  final VoidCallback onPressBack;
  EventAppBarWidget({required this.event, required this.onPressBack})
      : super(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppTheme.colors.backButtonEvent,
                          ),
                          onPressed: () {
                            onPressBack();
                          }),
                    ),
                    Text(event.title!, style: AppTheme.textStyles.titleEvent),
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: IconButton(
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          color: AppTheme.colors.deleteButtonEvent,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(112));
}
