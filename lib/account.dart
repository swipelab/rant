import 'package:rant/ghost/ghost.dart';
import 'package:rant/matrix/matrix.dart';
import 'package:rant/matrix/matrix_room.dart';
import 'package:rant/models/models.dart';
import 'package:scoped/scoped.dart';

import 'dart:async';

class Account {
  final Store store;
  Timer _timer;

  Account(this.store) {
    _timer = Timer.periodic(Duration(seconds: 1), handleTimeout);
  }

  void handleTimeout(Timer timer) {
    onSync();
  }

  final Ref<int> workers = Ref(0);
  final Ref<bool> isAuthenticated = Ref(false);
  final Ref<Profile> profile = Ref(Profile());
  final Ref<List<MatrixRoom>> rooms = Ref([]);

  Matrix get _matrix => store.get<Matrix>();

  Future<void> googleSignIn() async {}

  Future<void> login(String email, String password) async {
    try {
      final user = await _matrix.login(user: email, password: password);
      profile.value = await _matrix.getProfile(user: user.userId);

      isAuthenticated.value = true;
    } catch (e) {
      throw e;
    }
  }

  Future<void> logout() async {
    await store.get<Ghost>().logout();

    profile.value = Profile();
    isAuthenticated.value = false;
  }

  Map<String, MatrixRoom> join = {};

  bool _syncing = false;
  String _nextBatch;

  void onSync() async {
    if (!isAuthenticated.value || _syncing) return;
    _syncing = true;

    workers.value++;

    try {
      final sync = await _matrix.sync(since: _nextBatch, timeout: 30000);

      sync.rooms.join.forEach((key, value) {
        final room =
            join.putIfAbsent(key, () => MatrixRoom(roomId: key, store: store));
        value.state.forEach(room.handleEvent);
        value.timeline.events.forEach(room.handleEvent);
      });

      rooms.value = join.values.toList();
      _nextBatch = sync.nextBatch;
    } catch (e) {
      print(e);
    } finally {
      workers.value--;
      _syncing = false;
    }
  }
}
