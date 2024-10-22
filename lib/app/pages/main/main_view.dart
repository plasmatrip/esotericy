import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/pages/main/widgets/navigation.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainView();
}

class _MainView extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DiaryView(),
        CardsView(),
        FortuneTellingGroupView(),
        NewsView(),
        SettingsView(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          body: child,
          bottomNavigationBar: Navigation(tabsRouter: tabsRouter),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: tabsRouter.activeIndex == 1
              ? FilledButton(
                  onPressed: () async => AutoRouter.of(context).push(const AddLayoutView()),
                  style: context.extraBtn,
                  child: const Text('Добавить расклад'),
                )
              : null,
        );
      },
    );
  }
}
