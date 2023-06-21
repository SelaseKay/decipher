import 'package:decipher/componenets/custom_tab.dart';
import 'package:decipher/dummy_data.dart';
import 'package:flutter/material.dart';

class MajorsOverviewScreen extends StatelessWidget {
  MajorsOverviewScreen({
    super.key,
    required this.majorId,
    required this.tabButtonColor,
  });

  final Color tabButtonColor;
  final int majorId;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 3;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Visual Communication",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: imageHeight,
            width: double.infinity,
            child: Image.asset(
              majors[majorId].assetPath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Text(
              majors[majorId].title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          CustomTab(
            controller: _controller,
            selectedColor: tabButtonColor,
            tabText1: "Description",
            tabText2: "Overview",
            tabText3: "Watch",
            unselectedColor: tabButtonColor.withOpacity(0.4),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListView(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  children: [
                    Text(
                      majors[majorId].description,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                    )
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  children: [
                    Text(
                      majors[majorId].overview,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 12.0),
                    )
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  children: [
                    Text(
                      majors[majorId].watch,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 12.0),
                    )
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
