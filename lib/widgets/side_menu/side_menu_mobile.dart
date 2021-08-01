import 'package:flutter/material.dart';
import 'package:ecommerce_admin_tut/helpers/enumerators.dart';
import 'package:ecommerce_admin_tut/locator.dart';
import 'package:ecommerce_admin_tut/pages/categories/categories_page.dart';
import 'package:ecommerce_admin_tut/provider/app_provider.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:ecommerce_admin_tut/services/navigation_service.dart';
import 'package:ecommerce_admin_tut/widgets/navbar/navbar_logo.dart';
import 'package:ecommerce_admin_tut/widgets/side_menu/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenuMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                offset: Offset(3, 5),
                blurRadius: 17
            )
          ]),
      width: 60,
      child: Container(
        child: Column(
          children: [
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: (){appProvider.changeCurrentPage(DisplayedPage.HOME);
              locator<NavigationService>().navigateTo(HomeRoute);},
            ),
            IconButton(
              icon: Icon(Icons.people),
              onPressed: (){
                appProvider.changeCurrentPage(DisplayedPage.USERS);
                locator<NavigationService>().navigateTo(UsersRoute);
              },
            ),IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){
                appProvider.changeCurrentPage(DisplayedPage.PRODUCTS);
                locator<NavigationService>().navigateTo(ProductsRoute);
              },
            ),IconButton(
              icon: Icon(Icons.category),
              onPressed: (){
                appProvider.changeCurrentPage(DisplayedPage.CATEGORIES);
                locator<NavigationService>().navigateTo(CategoriesRoute);
              },
             ),
            IconButton(
              icon: Icon(Icons.bubble_chart),
              onPressed: (){
                appProvider.changeCurrentPage(DisplayedPage.SAMPLE);
                locator<NavigationService>().navigateTo(SampleRoute);
              },
            ),
            IconButton(
              icon: Icon(Icons.umbrella),
              onPressed: (){
                appProvider.changeCurrentPage(DisplayedPage.DEVELOPER);
                locator<NavigationService>().navigateTo(DeveloperRoute);
              },
            ),
      //IconButton(
            //   icon: Icon(Icons.notifications),
            //   onPressed: (){},
            // ),IconButton(
            //   icon: Icon(Icons.person),
            //   onPressed: (){},
            // ),IconButton(
            //   icon: Icon(Icons.settings),
            //   onPressed: (){},
            // ),
          ],
        ),
      ),
    );
  }
}
