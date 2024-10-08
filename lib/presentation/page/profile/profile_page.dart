import 'package:elibrary/presentation/widget/image_tile.dart';
import 'package:elibrary/presentation/widget/setting_section.dart';
import 'package:elibrary/style/ui_params.dart';
import 'package:elibrary/usecase/handler/user_book_handler.dart';
import 'package:elibrary/usecase/handler/user_chat_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app_strings.dart';
import '../../../state_management/prov/user_prov.dart';
import '../../../state_management/prov_manager.dart';
import '../../../style/app_colors.dart';
import '../../widget/info_display/headline2.dart';
import 'package:elibrary/generated/l10n.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final UserProv _uprov = ProvManager.userProv;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child:Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: ()=>Navigator.of(context).pushNamed('/booking'),
                    icon: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).colorScheme.onSurface,
                      size: 30,
                    ),
                  ),
                ],
              ),
              HeadLine2(
                title: S.of(context).account,
                size: 37,
              ),
              const Divider(
                height: 8,
                thickness: 1.5,
              ),
              const SizedBox(height: UIParams.mediumGap,),
              Expanded(
                child:ListView(
                  shrinkWrap: true,
                  children:[
                    SettingSection(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                      children: [
                        ImageTile(
                          image: CircleAvatar(
                            radius: 28.w,
                            child: Text(
                              _uprov.user?.avatarStr??'U',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: 25.w,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                          ),
                          circleImage: true,
                          title: _uprov.user?.name,
                          subTitle: _uprov.user?.email,
                          fontSize: 20,
                          actionWidget: Chip(
                            label: Text(
                              S.of(context).editProfile,
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: UIParams.mediumGap),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: UIParams.largeGap),
                        child: Text(
                          S.of(context).yourNameWillBeDisplayed,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    SettingSection(
                      padding: const EdgeInsets.all(16),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildNumSection(
                              S.of(context).star,
                              12,
                                  () { },
                              titleStyle: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.onSurface),
                            ),
                            _buildNumSection(
                              S.of(context).history,
                              56,
                                  () { },
                              titleStyle: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.onSurface),
                            ),
                            _buildNumSection(
                              S.of(context).query,
                              23,
                              UserChatHandler.enterChatSessionPage,
                              titleStyle: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.onSurface),
                            ),
                          ],
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top:UIParams.defPadding,bottom: UIParams.largeGap),
                        child: Text(
                          S.of(context).tapToViewAll,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SettingSection(
                      children: [
                        _buildSettingTitle(icon: Icons.timer, iconColor: Colors.blueAccent,title: S.of(context).myReservations, onTap: ()=>UserBookHandler.enterRecordListPage(),),
                        const Divider( height: 1, thickness: 1, indent: 14,),
                        _buildSettingTitle(icon: Icons.book, iconColor: Colors.amber,title: S.of(context).myBorrowed, onTap: ()=>Navigator.of(context).pushNamed('/record'),),
                        const Divider( height: 1, thickness: 1, indent: 14,),
                        _buildSettingTitle(icon: Icons.timeline_rounded, iconColor: AppColors.rustyRed,title: S.of(context).myFines, onTap: () { }),
                      ],
                    ),

                    const SizedBox(height: UIParams.largeGap),
                    SettingSection(
                      children: [
                        _buildSettingTitle(icon: Icons.palette_rounded, iconColor: AppColors.oilGreen,title: S.of(context).appearance, onTap: () { }),
                        const Divider( height: 1, thickness: 1, indent: 14,),
                        _buildSettingTitle(icon: Icons.settings, iconColor: Colors.grey,title: S.of(context).moreSetting, onTap: () { }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildNumSection(String title, int num, VoidCallback onTap, {TextStyle? titleStyle}) {
    return MaterialButton(
      onPressed: onTap,
      child: Column(
        children: [
          Text(
            '$num',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          Text(
            title,
            style: titleStyle ?? Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
  // Widget _buildNumSection(String title,int num,VoidCallback onTap,){
  //   return MaterialButton(
  //     onPressed: onTap,
  //     child: Column(
  //       children: [
  //         Text(
  //           '$num',
  //           style: Theme.of(context).textTheme.headlineSmall?.copyWith(
  //             fontWeight: FontWeight.w500,
  //             color: Theme.of(context).colorScheme.onSurface,
  //           ),
  //         ),
  //         Text(
  //           title,
  //           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
  //             color: Theme.of(context).colorScheme.onSurface,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  Widget _wrappedIcon(IconData icon, {Color? color}){
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color?.withOpacity(0.3),
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
  Widget _buildSettingTitle({required IconData icon,Color? iconColor, required String title,required VoidCallback onTap}){
    return MaterialButton(
      onPressed: onTap,
      child:ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
        leading: _wrappedIcon(
          icon,
          color: iconColor,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
        ),
      ),
    );
  }
}