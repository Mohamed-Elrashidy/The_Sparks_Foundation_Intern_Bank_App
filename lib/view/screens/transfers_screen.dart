import 'package:app/view/widgets/bit_text.dart';
import 'package:app/view/widgets/item_view.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensionScale.dart';
import '../../utils/dummy_data.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.orangeAccent, Colors.white])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: Dimension.scaleHeight(20),
              ),
              BigText(text: "Transfers History"),
              SizedBox(
                height: Dimension.scaleHeight(20),
              ),
              itemViewBuilder()
            ],
          ),
        ),
      ),
    );
  }

  Widget itemViewBuilder() {
    return Container(
      height: Dimension.screenHeight - Dimension.scaleHeight(59) - 100,
      child: ListView.builder(
          itemCount: DummyData.transferList.length,
          itemBuilder: (_, index) => ItemView(
              data1: DummyData.transferList[index].sender,
              data2: DummyData.transferList[index].reciever,
              title1: "From",
              title2: "To")),
    );
  }
}
