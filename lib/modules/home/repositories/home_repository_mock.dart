import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashBoard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(send: 48, receive: 446);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
        title: 'Churrasco',
        created: DateTime.now(),
        value: 126,
        people: 1,
      ),
      EventModel(
        title: 'Almoço',
        created: DateTime.now(),
        value: -16,
        people: 2,
      ),
      EventModel(
        title: 'Steam game',
        created: DateTime.now(),
        value: 122,
        people: 1,
      ),
      EventModel(
        title: 'Churrasco',
        created: DateTime.now(),
        value: 32,
        people: 12,
      ),
      EventModel(
        title: 'Trilheiros',
        created: DateTime.now(),
        value: -32,
        people: 2,
      ),
      EventModel(
        title: 'Sala São Paulo',
        created: DateTime.now(),
        value: 12,
        people: 1,
      ),
      EventModel(
        title: 'San Paolo',
        created: DateTime.now(),
        value: -16,
        people: 2,
      ),
      EventModel(
        title: 'Churrasco',
        created: DateTime.now(),
        value: 32,
        people: 1,
      ),
      EventModel(
        title: 'Almoço',
        created: DateTime.now(),
        value: -16,
        people: 2,
      ),
      EventModel(
        title: 'Steam game',
        created: DateTime.now(),
        value: 122,
        people: 1,
      ),
    ];
  }
}
