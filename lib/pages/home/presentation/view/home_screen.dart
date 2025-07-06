import 'package:flutter/material.dart';
import 'package:tuba_ui/pages/home/presentation/view/widgets/FoodListView.dart';
import 'package:tuba_ui/pages/home/presentation/view/widgets/address_widget.dart';
import 'package:tuba_ui/pages/home/presentation/view/widgets/restaurant_list_view_section.dart';
import 'package:tuba_ui/pages/home/presentation/view/widgets/menu_rows.dart';
import 'package:tuba_ui/pages/home/presentation/view/widgets/search_field.dart';
import 'package:tuba_ui/pages/home/presentation/view/widgets/slider_pics_widget.dart';
import '../../../../consts/text_styles.dart';
import '../../../../widgets/gaps.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffFAFAFA),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const AddressWidget(),
                Gaps.vGap4,
                const SearchFormField(),
                Gaps.vGap4,
                const SliderPicsWidget(),
                Gaps.vGap14,
                const MenuRows(),
                Gaps.vGap14,
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nearby Restaurants',style:TextStyles.textSmall ),
                      Text('view all',style:TextStyles.textSmall ),
                    ],
                               ),
                 ),
                Gaps.vGap5,
                const RestaurantListViewSection(),
                Gaps.vGap14,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Food',style:TextStyles.textSmall ),
                      Text('view all',style:TextStyles.textSmall ),
                    ],
                  ),
                ),
                Gaps.vGap5,
                const FoodListView(),
              ]
          ),
        )
        )
    );
  }
}
