import 'package:flutter/material.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/core/utils/extension/widget.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key, this.height=60, this.text='', this.backgroundColor, this.widget,
  });
  final double? height;
  final String? text;
  final Color? backgroundColor;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: backgroundColor??AppColors.primary.withOpacity(1),
      title: Text(text!,),

      toolbarHeight: height ?? 50.h,

      actions: [

        widget!= null? const Row(
          children: [
            Text("تسجيل الخروج",style: CustomTextStyles.fontSize18,),
             Directionality(textDirection: TextDirection.ltr,
            child: Icon(Icons.backspace_outlined,)),
          ],
        ).onTap((){
        }):const SizedBox(),
      ],
    );
  }

  @override
  Size get preferredSize => Size(
    mediaQueryData.size.width,
    height ?? 32.h,
  );
}
