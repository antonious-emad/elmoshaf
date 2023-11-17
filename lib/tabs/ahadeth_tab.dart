import 'package:elmoshaf_el_zhby/hadeth_details.dart';
import 'package:elmoshaf_el_zhby/myThemeData.dart';
import 'package:elmoshaf_el_zhby/tabs/hadeth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ahadethtab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){loadHadeth();}
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Text("Ahadeth",textAlign: TextAlign.center,),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){Navigator.pushNamed(context, HadethDetails.routeName,arguments: allAhadeth[index]);},
                      child: Text(allAhadeth[index].title,textAlign: TextAlign.center,style:
                      Theme.of(context).textTheme.bodyMedium
                      ),
                    );
                  },
                  separatorBuilder:  (context,index){
                    return Divider(
                      color: MyThemeData.primaryColor,
                      thickness: 2,
                      indent: 40,
                      endIndent: 40,
                    );
                  },
                  itemCount: allAhadeth.length,
              ),

        ],
      ),
    );
  }

  void loadHadeth() async {
    await rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#\n");
      for (int i = 0; i < ahadethList.length; ++i) {
        String hadethOne = ahadethList[i];
        // List<String>hadethOneLines =hadethOne.split("\n\r");
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
