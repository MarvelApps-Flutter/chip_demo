import 'package:chip_module/model/action_chip_model.dart';
import 'package:chip_module/model/chip_model.dart';
import 'package:chip_module/model/choice_chip_model.dart';
import 'package:chip_module/model/filter_chip_model.dart';
import 'package:chip_module/model/input_chip_model.dart';
import 'package:flutter/material.dart';

class ChipsData {
  static final chipData = <ChipModel>[
    const ChipModel(
      initial: 'C',
      label: 'Chip',
      backgroundColor: Colors.red,
    ),
    const ChipModel(
      initial: 'AC',
      label: 'ActionChip',
      backgroundColor: Colors.blue,
    ),
    const ChipModel(
      initial: 'IC',
      label: 'InputChip',
      backgroundColor: Colors.orange,
    ),
    const ChipModel(
      initial: 'FC',
      label: 'FilterChip',
      backgroundColor: Colors.green,
    ),
    const ChipModel(
      initial: 'CC',
      label: 'ChoiceChip',
      backgroundColor: Colors.purple,
    ),
  ];

  static final choiceChipData = <ChoiceChipModel>[
    ChoiceChipModel(
      label: 'Choice 1',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipModel(
      label: 'Choice 2',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipModel(
      label: 'Choice 3',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipModel(
      label: 'Choice 4',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipModel(
      label: 'Choice 5',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
  ];

  static final actionChipData = <ActionChipModel>[
    ActionChipModel(
      label: 'Listen Music',
      icon: Icons.music_note,
      iconColor: Colors.orange,
    ),
    ActionChipModel(
      label: 'Call',
      icon: Icons.call,
      iconColor: Colors.red,
    ),
    ActionChipModel(
      label: 'Set Alarm',
      icon: Icons.alarm,
      iconColor: Colors.blue,
    ),
    ActionChipModel(
      label: 'Hire',
      icon: Icons.directions_run,
      iconColor: Colors.purple,
    ),
    ActionChipModel(
      label: 'Work',
      icon: Icons.work,
      iconColor: Colors.pink,
    ),
    ActionChipModel(
      label: 'Email',
      icon: Icons.alternate_email,
      iconColor: Colors.green,
    ),
  ];

  static final filterChipData = <FilterChipModel>[
    const FilterChipModel(
      label: 'Price: Low To High',
      isSelected: false,
      color: Colors.green,
    ),
    const FilterChipModel(
      label: 'Price: High To Low',
      isSelected: false,
      color: Colors.red,
    ),
    const FilterChipModel(
      label: 'Get By Tomorrow',
      isSelected: false,
      color: Colors.blue,
    ),
    const FilterChipModel(
      label: 'Avg. Customer Review',
      isSelected: false,
      color: Colors.orange,
    ),
    const FilterChipModel(
      label: 'Sort By Relevance',
      isSelected: false,
      color: Colors.purple,
    ),
  ];

  static final inputChipData = <InputChipModel>[
    InputChipModel(
      label: 'Rebecca',
      urlAvatar:
          'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    ),
    InputChipModel(
      label: 'Klaus',
      urlAvatar:
          'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    InputChipModel(
      label: 'Freya',
      urlAvatar:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    ),
    InputChipModel(
      label: 'Cami',
      urlAvatar:
          'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80',
    ),
    InputChipModel(
      label: 'Davina',
      urlAvatar:
          'https://images.unsplash.com/photo-1514626585111-9aa86183ac98?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ),
  ];
}
