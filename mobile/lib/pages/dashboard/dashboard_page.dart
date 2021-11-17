import 'package:app/services/services.dart';
import 'package:provider/provider.dart';
import 'package:stated/stated.dart';
import 'package:flutter/material.dart';

class DashboardPage extends Page {
  DashboardPage() : super(key: ValueKey(DashboardPage));

  @override
  Route createRoute(BuildContext context) => MaterialPageRoute(
        settings: this,
        builder: (context) => BlocBuilder<DashboardState>(
          create: (context) => DashboardBloc(
            config: context.read<Config>(),
            history: context.read(),
          ),
          builder: (context, state, _) => DashboardView(state: state),
        ),
      );
}

class DashboardState {
  DashboardState({
    required this.counter,
    required this.increment,
    required this.openChat,
    this.title,
  });

  final String? title;
  final int counter;
  final VoidCallback increment;
  final VoidCallback openChat;
}

class DashboardBloc extends Bloc<DashboardState> {
  int _counter = 0;

  DashboardBloc({
    required this.config,
    required this.history,
  });

  final Config config;
  final History history;

  void increment() {
    _counter++;
    config.theme = ['dark', 'light'][_counter % 2];
    setState();
  }

  DashboardState build() => DashboardState(
        title: config.theme ?? '',
        counter: _counter,
        increment: increment,
        openChat: () => history.openChat('chatId'),
      );
}

class DashboardView extends StatelessWidget {
  const DashboardView({
    required this.state,
    Key? key,
  }) : super(key: key);
  final DashboardState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard : ${state.title}'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Chat'),
            onTap: state.openChat,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: state.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
