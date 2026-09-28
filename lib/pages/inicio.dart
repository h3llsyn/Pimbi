import 'package:Pimbi/components/appBar.dart';
import 'package:Pimbi/components/app_notification.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  bool _notificacaoMostrada = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_notificacaoMostrada) return;

    final arguments = ModalRoute.of(context)?.settings.arguments;

    if (arguments == true) {
      _notificacaoMostrada = true;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;

        showAppNotification(
          context,
          type: NotificationType.success,
          message: "Login realizado com sucesso!",
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBarComponent(),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Tela Curta'),
            ),
            Center(
              child: Text('Tela Pomodoro'),
            ),
            Center(
              child: Text('Tela Longa'),
            ),
          ],
        ),
      ),
    );
  }
}