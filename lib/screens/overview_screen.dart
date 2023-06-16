import 'package:decipher/componenets/custom_tab.dart';
import 'package:decipher/dummy_data.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  OverviewScreen({
    super.key,
    required this.careerId,
  });

  final int careerId;

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 3;
    return Scaffold(
      appBar: AppBar(
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
              careers[careerId].assetPath,
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
              careers[careerId].title,
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
                      careers[careerId].overview,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 12.0),
                    )
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  children: [
                    Text(
                      careers[careerId].skills,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 12.0),
                    )
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  children: [
                    Text(
                      careers[careerId].tools,
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
