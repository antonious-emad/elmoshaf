import 'package:elmoshaf_el_zhby/myThemeData.dart';
import 'package:elmoshaf_el_zhby/sura_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatefulWidget {

  static const String routeName = "SuraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {loadFile(args.index);}
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
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
                  itemBuilder: (context, index) =>
                  Center(child: Text(
                    verses[index], textAlign: TextAlign.center, style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,)),
                  separatorBuilder: (context,index)=>Divider(
              indent: 40,
              endIndent: 40,
              thickness: 1,
              color: MyThemeData.primaryColor,
            ),
                  itemCount: verses.length,),
              )),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String>lines = file.split("\n");
    verses = lines;
    setState(() {});
  }
}
