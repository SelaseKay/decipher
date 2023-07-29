import 'package:decipher/componenets/company_container.dart';
import 'package:decipher/componenets/custom_drop_down_button.dart';
import 'package:decipher/componenets/custom_toggle_button.dart';
import 'package:decipher/componenets/search_text_field.dart';
import 'package:decipher/db/database_helper.dart';
import 'package:decipher/model/company.dart';
import 'package:flutter/material.dart';

class InternshipScreen extends StatefulWidget {
  const InternshipScreen({super.key});

  @override
  State<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
  String filter = "NONE";

  @override
  void initState() {
    super.initState();
  }

  final _controller = PageController();

  List<Company> shortlistedCompany = [];

  String _searchQuery = "";

  @override
  void dispose() {
    DatabaseHelper.instance.closeDb();
    super.dispose();
  }

  void _filterSearchResults(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFfECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Internship",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            SearchTextField(
              hint: "Search Company",
              onChanged: (value) {
                _filterSearchResults(value);
              },
              iconColor: const Color(0xFF212121),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomToggleButton(
              controller: _controller,
            ),
            const SizedBox(
              height: 14.0,
            ),
            CustomDropDownButton(
              onChanged: (value) {
                setState(() {
                  filter = value;
                });
              },
            ),
            const SizedBox(height: 8.0),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FutureBuilder<List<Company>>(
                      future: DatabaseHelper.instance
                          .getCompanies(filter, _searchQuery),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else if (snapshot.hasData) {
                          return ListView.builder(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              return CompanyContainer(
                                text: snapshot.data![index].name,
                                isShortListed:
                                    snapshot.data![index].isShortListed,
                                onShortlist: () async {
                                  if (snapshot.data![index].isShortListed) {
                                    await DatabaseHelper.instance.updateField(
                                      snapshot.data![index].name,
                                      0,
                                    );
                                  } else {
                                    await DatabaseHelper.instance.updateField(
                                      snapshot.data![index].name,
                                      1,
                                    );
                                  }
                                  setState(() {
                                    
                                  });
                                },
                              );
                            },
                          );
                        }
                        return const SizedBox.shrink();
                      }),
                  FutureBuilder<List<Company>>(
                    future: DatabaseHelper.instance.shortlistedCompanies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }
                      if (snapshot.hasData) {
                        return ListView.builder(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return CompanyContainer(
                              text: snapshot.data![index].name,
                              isShortListed:
                                  snapshot.data![index].isShortListed,
                              onShortlist: () async {
                                if (snapshot.data![index].isShortListed) {
                                  await DatabaseHelper.instance.updateField(
                                      snapshot.data![index].name, 0);
                                }
                                setState(() {
                                  
                                });
                              },
                            );
                          },
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
