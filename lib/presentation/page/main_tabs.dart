import 'package:elibrary/constant/app_strings.dart';
import 'package:elibrary/presentation/page/browse/browse_book_page.dart';
import 'package:elibrary/presentation/page/home/home_page.dart';
import 'package:elibrary/presentation/page/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:elibrary/generated/l10n.dart';
import '../../style/app_colors.dart';
import 'book_shelf/book_shelf.dart';

class MainTabsPage extends StatefulWidget{
  const MainTabsPage({super.key});
  @override
  State<MainTabsPage> createState()=>_MaintabsState();
}
class _MaintabsState extends State<MainTabsPage> with SingleTickerProviderStateMixin{

  late PageController _controller;
  @override
  void initState() {
    _controller=PageController();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        scrollBehavior: const MaterialScrollBehavior(),
        controller: _controller,
        children: [
          const HomePage(),
          const BrowseBookPage(),
          BookShelf(),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        color: AppColors.darkBarColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
          child: GNav(
            duration: const Duration(milliseconds: 300),
            backgroundColor: AppColors.darkBarColor,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: AppColors.darkgrey,
            padding: const EdgeInsets.all(10),
            gap:8,
            onTabChange: (index){
              _controller.jumpToPage(index);
              print(index);
            },
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: S.of(context).home,
              ),
              GButton(
                icon: Icons.search,
                text: S.of(context).search
              ),
              GButton(
                icon: CupertinoIcons.rectangle_stack,
                text: S.of(context).own_lib
              ),
              GButton(
                icon: CupertinoIcons.person,
                text: S.of(context).profile
              ),
            ],
          ),
        ),
      )
    );
  }
}