import 'package:flutter/material.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/features/home/presentation/widgets/custom_app_bar.dart';
import 'heart_widget.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        TabBar(
          tabs: const [
            Tab(
              child: Text(
                "TODAY",
              ),
            ),
            Tab(
              child: Text(
                "YESTERDAY",
              ),
            ),
            Tab(
              child: Text(
                "LAST WEEK",
              ),
            )
          ],
          unselectedLabelColor: Colors.black,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: const [
            HeartWidget(
              txt: '82',
            ),
            HeartWidget(
              txt: '90',
            ),
            HeartWidget(
              txt: '70',
            )
          ],
        ))
      ],
    ).paddingSymmetric(horizontal: 30,vertical: 20);
  }
}
