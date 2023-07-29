import 'package:decipher/componenets/career_path_item.dart';
import 'package:decipher/componenets/search_text_field.dart';
import 'package:decipher/dummy_data.dart';
import 'package:decipher/model/career.dart';
import 'package:decipher/screens/overview_screen.dart';
import 'package:flutter/material.dart';

class CareerPathsExploreScreen extends StatefulWidget {
  const CareerPathsExploreScreen({
    super.key,
    required this.careerType,
  });

  final CareerType careerType;

  @override
  State<CareerPathsExploreScreen> createState() => _CareerPathsExploreScreenState();
}

class _CareerPathsExploreScreenState extends State<CareerPathsExploreScreen> {


  late final _duplicateCareerPaths = careers[widget.careerType]!;
  var _searchCareerPaths = <Career>[];

  _getTitle(CareerType careerType) {
    switch (careerType) {
      case CareerType.visualComm:
        return "Visual Communication";
      case CareerType.adsAndMedia:
        return "Advertising and Media";
      default:
        return "Creative Multimedia";
    }
  }

  @override
  void initState() {
    super.initState();
    _searchCareerPaths  = _duplicateCareerPaths;
  }



  void _filterSearchResults(String query) {
    setState(() {
      _searchCareerPaths = _duplicateCareerPaths
          .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _getTitle(widget.careerType),
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color(0xFFECF4FF),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchTextField(hint: "Search Career", onChanged: (value){
                  setState(() {
                    _filterSearchResults(value);
                  });
              },),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Careers in ${_getTitle(widget.careerType)}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontSize: 16.0, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                padding: const EdgeInsets.only(bottom: 16.0),
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 20.0,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(_searchCareerPaths.length, (index) {
                  return CareerPathItem(
                    title: _searchCareerPaths[index].title,
                    description: _searchCareerPaths[index].overview,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OverviewScreen(
                            careerId: index,
                            careerType: widget.careerType,
                          ),
                        ),
                      );
                    },
                    assetPath: _searchCareerPaths[index].assetPath,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
