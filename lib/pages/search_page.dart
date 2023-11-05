import 'package:flutter/material.dart';
import 'package:imdb/shared/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<String> searchTypes = ['Filmes', 'Séries', 'Pessoas'];
  String selectedOption = 'Filmes';

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      expands: false,
                      cursorColor: AppColors.white,
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Pesquise aqui',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: AppColors.white,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  ...searchTypes
                      .map(
                        (searchType) => Row(
                          children: [
                            Radio(
                              value: searchType,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value.toString();
                                });
                              },
                            ),
                            Text(
                              searchType,
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            )
          ],
        );
  }
}