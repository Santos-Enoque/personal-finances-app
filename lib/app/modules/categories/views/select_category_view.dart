import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moneyro/app/modules/categories/controllers/categories_controller.dart';
import 'package:moneyro/app/shared/models/category/category.dart';

class SelectCategoryView extends GetView<CategoriesController> {
  const SelectCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.keyboard_backspace),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text('Select Category'),
          actions: [
            IconButton(icon: Icon(Icons.edit_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
          ],
         
        ),
        body: controller.obx((state) => Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
              itemCount: state!.length,
              itemBuilder: (_, int index) {
                var category = state[index];
                var categoryGroup = category.keys.first;
                List<TransactionCategory> childCategories = category[categoryGroup]!;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    if(index == 0)
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('Income'),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
            color: Theme.of(context).accentColor.withOpacity(.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            ),
            

            ),
            
            ),



                 Container(child: Text('Expense'),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12)
            ),
            

            ),
            
            )
          ],
          ),
                    ),
                    SizedBox(height: 4,),

                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).accentColor.withOpacity(.1),
                                child: Text(categoryGroup.icon, style: TextStyle(fontSize: 24),),
                              ),
                              SizedBox(width: 12,),
                              Text(categoryGroup.name.toUpperCase(), style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    ),
                    SizedBox(height: 4,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: childCategories.map((item) => Container(
                        padding: EdgeInsets.only(left: 8),
                        child: ListTile(
                          onTap: (){},
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).accentColor.withOpacity(.1),
                            child: Text(item.icon, style: TextStyle(fontSize: 24),),
                          ),
                          title: Text(item.name),
                          trailing: Icon(Icons.keyboard_arrow_right)
                        ),
                      )).toList(),
                    )
                  ]
                );
              }),
        ))
            );
  }
}
