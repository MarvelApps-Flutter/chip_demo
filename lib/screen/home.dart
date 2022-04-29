import 'package:chip_module/dummy_data/chips_data.dart';
import 'package:chip_module/model/action_chip_model.dart';
import 'package:chip_module/model/chip_model.dart';
import 'package:chip_module/model/choice_chip_model.dart';
import 'package:chip_module/model/filter_chip_model.dart';
import 'package:chip_module/model/input_chip_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ChipModel> chips = ChipsData.chipData;
  List<InputChipModel> inputChips = ChipsData.inputChipData;
  List<ActionChipModel> actionChips = ChipsData.actionChipData;
  List<FilterChipModel> filterChips = ChipsData.filterChipData;
  List<ChoiceChipModel> choiceChips = ChipsData.choiceChipData;

  late bool isEmpty;

  double space = 8.0;

  @override
  void initState() {
    isEmpty = inputChips.isEmpty;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text('Chip'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header('Chips'),
                buildChips(),
                divider(),
                header('Action Chips'),
                buildActionChips(),
                divider(),
                header('Choice Chips'),
                buildChoiceChips(),
                divider(),
                isEmpty ? SizedBox() : header('Input Chips'),
                buildInputChips(),
                isEmpty ? SizedBox() : divider(),
                header('Filter Chips'),
                buildFilterChips()
              ],
            ),
          ),
        ));
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 4,
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ],
          ),
          Center(
            child: Container(
              width: 36,
              color: Colors.grey.shade400,
              child: Icon(Icons.all_inclusive),
            ),
          )
        ],
      ),
    );
  }

  Widget header(String text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      );

  Widget buildActionChips() => Wrap(
        runSpacing: space,
        spacing: space,
        children: actionChips
            .map((actionChip) => ActionChip(
                  avatar: Icon(
                    actionChip.icon,
                    color: actionChip.iconColor,
                  ),
                  backgroundColor: Colors.grey[200],
                  label: Text(actionChip.label),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Perform ${actionChip.label}'),
                        duration: Duration(milliseconds: 200),
                      ),
                    );
                  },
                ))
            .toList(),
      );

  Widget buildInputChips() => Wrap(
        runSpacing: space,
        spacing: space,
        children: inputChips
            .map((inputChip) => InputChip(
                avatar: CircleAvatar(
                  backgroundImage: NetworkImage(inputChip.urlAvatar),
                ),
                label: Text(inputChip.label),
                labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                onPressed: () {},
                onDeleted: () => setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Interacte with ${inputChip.label} chip'),
                          duration: Duration(milliseconds: 200),
                        ),
                      );
                      inputChips.remove(inputChip);
                      isEmpty = inputChips.isEmpty;
                    })))
            .toList(),
      );

  Widget buildChoiceChips() => Wrap(
        runSpacing: space,
        spacing: space,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

                      return choiceChip == newChip
                          ? newChip.copy(isSelected: isSelected)
                          : newChip;
                    }).toList();
                    isSelected
                        ? ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Select ${choiceChip.label}'),
                              duration: Duration(milliseconds: 200),
                            ),
                          )
                        : ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('DeSelect ${choiceChip.label}'),
                              duration: Duration(milliseconds: 200),
                            ),
                          );
                  }),
                  selected: choiceChip.isSelected,
                  selectedColor: Colors.green,
                  backgroundColor: Colors.blue,
                ))
            .toList(),
      );

  Widget buildFilterChips() => Wrap(
        runSpacing: space,
        spacing: space,
        children: filterChips
            .map((filterChip) => FilterChip(
                  label: Text(filterChip.label),
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: filterChip.color,
                  ),
                  backgroundColor: filterChip.color.withOpacity(0.1),
                  onSelected: (isSelected) => setState(() {
                    filterChips = filterChips.map((otherChip) {
                      return filterChip == otherChip
                          ? otherChip.copy(isSelected: isSelected)
                          : otherChip;
                    }).toList();
                    isSelected
                        ? ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Select ${filterChip.label} filter'),
                              duration: Duration(milliseconds: 200),
                            ),
                          )
                        : ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('DeSelect ${filterChip.label} filter'),
                              duration: Duration(milliseconds: 200),
                            ),
                          );
                  }),
                  selected: filterChip.isSelected,
                  checkmarkColor: filterChip.color,
                  selectedColor: filterChip.color.withOpacity(0.25),
                ))
            .toList(),
      );

  Widget buildChips() => Wrap(
        runSpacing: space,
        spacing: space,
        children: chips
            .map((chip) => Chip(
                  labelPadding: EdgeInsets.all(4),
                  avatar: CircleAvatar(
                    child: Text(
                      chip.initial,
                    ),
                    backgroundColor: Colors.white.withOpacity(0.8),
                  ),
                  label: Text(chip.label),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  backgroundColor: chip.backgroundColor,
                ))
            .toList(),
      );
}
