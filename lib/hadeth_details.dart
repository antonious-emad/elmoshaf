import 'package:elmoshaf_el_zhby/tabs/hadeth_model.dart';
import 'package:flutter/material.dart';

import 'myThemeData.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
  static const String routeName="hadethDertails";
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
              elevation: 12.0,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  color: MyThemeData.primaryColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Center(child: Text(
                          "${args.content[index]}(${index+1})", textAlign: TextAlign.center, style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall,)),
                  ),
                  separatorBuilder: (context,index)=>Divider(
                    indent: 40,
                    endIndent: 40,
                    thickness: 1,
                    color: MyThemeData.primaryColor,
                  ),
                  itemCount: args.content.length,),
              )
          ),
        ),
      ),
    );
  }
}
