import 'package:decipher/componenets/career_path_item.dart';
import 'package:decipher/componenets/search_text_field.dart';
import 'package:decipher/constants.dart';
import 'package:flutter/material.dart';

class CareerPathsExploreScreen extends StatelessWidget {
  const CareerPathsExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Visual Communication",
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchTextField(hint: "Search Career"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Career in Visual Communication",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: 16.0,
                    color: Theme.of(context).primaryColor
                  ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
               mainAxisSpacing: 12.0,
                crossAxisSpacing: 20.0,    
                // Generate 100 widgets that display their index in the List.
                children: List.generate(8, (index) {
                  return CareerPathItem(
                    title: careers[index].title,
                    description:
                        "Graphic design is a craft where professionals create visual content to communicate messages.",
                    onTap: () {},
                    assetPath: careers[index].assetPath,
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
