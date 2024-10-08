import 'package:barcode_scan2/gen/protos/protos.pb.dart';
import 'package:barcode_scan2/model/scan_options.dart';
import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:elibrary/presentation/page/book_shelf/add_book_confirm_page.dart';
import 'package:elibrary/presentation/specific_style_widget/image_widget.dart';
import 'package:elibrary/state_management/prov/book_shelf_prov.dart';
import 'package:elibrary/state_management/prov_manager.dart';
import 'package:elibrary/style/ui_params.dart';
import 'package:elibrary/usecase/handler/user_book_handler.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:elibrary/generated/l10n.dart';
import '../../../constant/app_strings.dart';
import '../../widget/custom_image_card.dart';
import '../../widget/info_display/headline2.dart';

class BookShelf extends StatefulWidget {
  const BookShelf({super.key});

  @override
  State<BookShelf> createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {

  bool _confirmModalVisible = false;
  bool confirmModalVisible() => _confirmModalVisible;
  void setConfirmModalVisible(bool visible) {
    _confirmModalVisible = visible;
  }

  final GlobalKey<TooltipState> tooltipkey=GlobalKey<TooltipState>();
  final BookShelfProv _uprov= ProvManager.bookshelfProv;

  bool _isSelectionMode = false;
  List<bool> _isSelected = List.generate(20, (_) => false);
  String result = '';

  @override
  void initState() {
    // 初始化书架页面
    UserBookHandler.initBookShelfPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SafeArea(
          child: Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                    child: IconButton(
                      onPressed: addButtonPressed,
                      icon: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: UIParams.defIconS.w,
                      ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(right: 12),
                    child: IconButton(
                        onPressed: ()=>showPullDownMenu(
                        context: context,
                        items: [
                          PullDownMenuItem(
                            onTap: () {},
                            title: S.of(context).add,
                            icon: CupertinoIcons.add,
                            iconColor: Theme.of(context).colorScheme.primary,
                          ),
                          PullDownMenuItem(
                            onTap: () {},
                            title: S.of(context).edit,
                            icon: CupertinoIcons.pen,
                          ),
                          PullDownMenuItem(
                            title: S.of(context).share,
                            subtitle: 'Share in different channel',
                            onTap: () {},
                            icon: CupertinoIcons.arrowshape_turn_up_right,
                          ),
                          PullDownMenuItem(
                            onTap: () {},
                            title: S.of(context).temporarilyClose,
                            icon: CupertinoIcons.xmark_circle,
                          ),
                          PullDownMenuItem(
                            onTap: () {},
                            title: S.of(context).clear,
                            isDestructive: true,
                            icon: CupertinoIcons.delete,
                          ),
                        ],
                        position: Rect.fromPoints(const Offset(400,80), const Offset(500,0)),
                      ),
                      icon: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: UIParams.defIconS.w,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                child: HeadLine2(
                  title: S.of(context).myLib,
                  size: 37,
                  icon: Tooltip(
                    key: tooltipkey,
                    message: S.of(context).publicSpec,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      borderRadius: BorderRadius.circular(UIParams.smallBorderR),
                    ),
                    textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 16,
                    ),
                    child: const Icon(
                      Icons.info_outline,
                      size: 30,
                    ),
                  ),
                  onTap: ()=>tooltipkey.currentState?.ensureTooltipVisible(),
                ),
              ),
              const Divider(
                height: 8,
                thickness: 1.5,
                indent: 20,
              ),
              const SizedBox(height: 10,),
              Expanded(
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 0),
                  child: Selector<BookShelfProv,int>(
                    selector: (_,prov)=>prov.bookShelf.length,
                    builder: (context,len,___){
                      return GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: len,
                        itemBuilder: (BuildContext context, int index) {
                          return CupertinoContextMenu(
                            enableHapticFeedback: false,
                            actions: [
                              CupertinoContextMenuAction(
                                trailingIcon: CupertinoIcons.share,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('分享'),
                              ),
                              CupertinoContextMenuAction(
                                isDestructiveAction: true,
                                trailingIcon: CupertinoIcons.delete,
                                child: const Text('下架'),
                                onPressed: () {
                                  UserBookHandler.rmBookFromShelf(isbnList: [_uprov.bookShelf[index].isbn]);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                            child: CustomImageCard(
                              key: ValueKey<String>(_uprov.bookShelf[index].isbn),// 用isbn作为key, 以提高刷新性能
                              image: getCustomCachedImage(
                                url: _uprov.bookShelf[index].cover_url,
                                width: 210.w,
                                height: 300.w,
                              ),
                              text: _uprov.bookShelf[index].title,
                              //useSolidColor: true,
                              surfaceColor: Colors.white,
                            ),
                          );
                        },
                      );
                    },
                  )
                ),
              ),
            ],
          ),
        ),
    );
  }
  Widget _buildKindWidget(String kind){
    return Row(
      children: [
        Icon(
          Icons.done_all,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          kind,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            letterSpacing: -0.7,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
  Widget _buildAvailableWidget({required String item,required BuildContext context, bool isAvailable = true}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w,vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(UIParams.smallBorderR),
        color: isAvailable ? Theme.of(context).colorScheme.primary:Theme.of(context).disabledColor,
      ),
      child: Row(
        children: [
          Icon(
            isAvailable ? Icons.done : Icons.close,
            color: Theme.of(context).colorScheme.surface,
          ),
          SizedBox(width: 5.w),
          Text(
            item,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.surface
            ),
          ),
        ],
      ),
    );
  }
  Future<void> addButtonPressed() async{
    var result = await BarcodeScanner.scan(
      options: const ScanOptions(
        autoEnableFlash: false,
        strings: {
          'cancel': 'Cancel',
          'flash_on': 'Flash',
          'flash_off': 'Flash off',
        },
      ),
    );
    print(result.type); // The result type (barcode, cancelled, failed)
    print(result.rawContent); // The barcode content
    print(result.format); // The barcode format (as enum)
    print(result.formatNote); // If a unknown format was scanned this field contains a note,
    if(result.type==ResultType.Cancelled){
      return;
    }
    EasyLoading.show();
    bool res = await  UserBookHandler.initConfirmDialog(
      isbn: '1401204252',
    );
    EasyLoading.dismiss();
    if(res){
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context)=>SizedBox(
          height: MediaQuery.of(context).size.height * 0.85,
          child: const BookConfirmPage(),
        ),
      );
    }
    else{
      // 显示加载中并且重试
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context)=>SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.clear_circled,
                size: Theme.of(context).textTheme.titleLarge?.fontSize,
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Text(
                  '暂无此书记录',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              CupertinoButton(
                onPressed: (){},
                child: const Text(
                  '去反馈'
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}