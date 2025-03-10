import 'package:deash_board/core/services/media_query_services.dart';
import 'package:deash_board/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderView extends StatelessWidget {
  final VoidCallback? onTap;
  const HeaderView({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if (!MediaQueryServices.isDesktop(context))
            IconButton(icon: Icon(Icons.menu), onPressed: onTap),

          if (!MediaQueryServices.isMobile(context))
            Text("Dashboard", style: Theme.of(context).textTheme.titleLarge),
          if (!MediaQueryServices.isMobile(context)) Spacer(),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: AppColor.secondaryColor,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(16 * 0.75),
                    margin: EdgeInsets.symmetric(horizontal: 16 / 2),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset("assets/icons/Search.svg"),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16 / 2),
            decoration: BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.white10),
            ),
            child: Row(
              children: [
                Image.asset("assets/images/profile_pic.png", height: 38),
                if (!MediaQueryServices.isMobile(context))
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16 / 2),
                    child: Text("Angelina Jolie"),
                  ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
