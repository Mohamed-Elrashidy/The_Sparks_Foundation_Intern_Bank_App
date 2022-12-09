import 'package:app/view/widgets/bit_text.dart';
import 'package:app/view/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/customer_model.dart';
import '../../utils/dimensionScale.dart';
import '../widgets/main_button.dart';

class CustomerDataScreen extends StatelessWidget {

  final Customer customer;
   CustomerDataScreen(this.customer);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.white],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight)),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Row(children: [Padding(
                padding: const EdgeInsets.only(left:16),
                child: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios)),
              )],),
           SizedBox(height: Dimension.scaleHeight(20),),
           BigText(text: customer.name),
              SizedBox(height: Dimension.scaleHeight(60),),

              DataViewBuilder(),
              SizedBox(height: Dimension.scaleHeight(100),),
              MainButton(title: "Transfer", event: (){})

            ],
          ),
        ),
      )
    );
  }
  Widget DataViewBuilder()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        itemViewBuilder("ID", customer.id),
        itemViewBuilder("Social Number", customer.socialNumber),
        itemViewBuilder("Nationality", customer.nationality),

        itemViewBuilder("Gender", customer.gender),
        itemViewBuilder("Phone", customer.phone),
        itemViewBuilder("Balance", customer.balance.toString()),
        itemViewBuilder("Date of birth", customer.dateOfBirth),


      ],
    );
  }
  Widget itemViewBuilder(String label,String data)
  {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:Dimension.scaleHeight(10)),
      child: SmallText(text: "$label: $data ",size: Dimension.scaleHeight(15),),
    );
  }
}
