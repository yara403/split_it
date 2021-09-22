import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class AppBarRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late AppBarController controller;
  late HomeRepository repository;
  setUp(() {
    repository = AppBarRepositoryMock();
    controller = AppBarController(repository: repository);
  });
  test('Testando loadDashboard retornando sucesso', () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    controller.listen((state) => states.add(state));
    when(repository.getDashBoard).thenAnswer(
      (_) async => DashboardModel(send: 40, receive: 100),
    );
    await controller.loadDashboard();
    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateSuccess>());
    expect(states.length, 2);
  });

  test('Testando loadDashboard retornando erro', () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    controller.listen((state) => states.add(state));
    when(repository.getDashBoard).thenThrow("Deu erro!");
    await controller.loadDashboard();
    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateFailure>());
    expect((states[1] as AppBarStateFailure).message, "Deu erro!");
    expect(states.length, 2);
  });
}
