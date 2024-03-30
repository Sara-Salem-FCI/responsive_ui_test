import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/widgets/custom_list_view.dart';
import 'package:responsive_ui/widgets/custom_sliver_list.dart';
import 'package:responsive_ui/widgets/custom_sliver_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return const CustomListView();
              }
              else {
                return const CustomSliverGrid();
              }
            }),
          ),
          CustomSliverList(),
        ],
      ),
    );
  }
}
