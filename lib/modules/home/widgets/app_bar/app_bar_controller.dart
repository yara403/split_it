import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class AppBarController {
  late HomeRepository repository;
  AppBarState state = AppBarStateEmpty();
  Function(AppBarState state)? onListen;

  AppBarController({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  loadDashboard() async {
    update(AppBarStateLoading());
    try {
      var response = await repository.getDashBoard();
      update(AppBarStateSuccess(dashboard: response));
    } catch (e) {
      update(AppBarStateFailure(message: e.toString()));
    }
  }

  listen(Function(AppBarState state) onChange) {
    onListen = onChange;
  }

  update(AppBarState state) {
    this.state = state;
    if (onListen != null) onListen!(state);
  }
}
