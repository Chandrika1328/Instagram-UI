import 'package:flutter/material.dart';
import 'package:instagram_ui/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[300],
                      ),
                      Container(
                        child: Text(
                          'Search',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      )
                    ],
                  )),
            )),
        body: const ShopGrid());
  }
}
