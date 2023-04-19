import 'package:flutter/material.dart';
import 'package:flutter_todo_app/presentation/home/home_state.dart';
import 'package:flutter_todo_app/utilities/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    required this.sortBy,
    required this.sortType,
    required this.onSortByTapCallBack,
    required this.onSortTypeTapCallBack,
    Key? key,
  }) : super(key: key);

  final SortBy sortBy;
  final SortType sortType;

  final Function(SortBy value) onSortByTapCallBack;

  final Function(SortType value) onSortTypeTapCallBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: SortBy.values.map((element) {
              return element.getWidget(sortBy, onSortByTapCallBack, context);
            }).toList(),
          ),
        ),
        sortType.getWidget(
          sortType,
          onSortTypeTapCallBack,
        ),
      ],
    );
  }

  List<bool> getSelection() {
    return SortBy.values.map((e) => e == sortBy).toList();
  }
}

extension SortByWidget on SortBy {
  Widget getWidget(SortBy value, Function(SortBy value) onFilterTapCallBack,
      BuildContext context) {
    switch (this) {
      case SortBy.date:
        return GestureDetector(
          onTap: () => onFilterTapCallBack(this),
          behavior: HitTestBehavior.opaque,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: value == this ? primaryColor : Colors.transparent,
                border: Border.all(
                    color: value == this ? primaryColor : Colors.black)),
            child: Text(
              AppLocalizations.of(context)!.dateFilterTypeLabel,
            ),
          ),
        );
      case SortBy.title:
        return GestureDetector(
          onTap: () => onFilterTapCallBack(this),
          behavior: HitTestBehavior.opaque,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: value == this ? primaryColor : Colors.transparent,
                border: Border.all(
                    color: value == this ? primaryColor : Colors.black)),
            child: Text(
              AppLocalizations.of(context)!.tileFilterTypeLabel,
            ),
          ),
        );
      case SortBy.status:
        return GestureDetector(
          onTap: () => onFilterTapCallBack(this),
          behavior: HitTestBehavior.opaque,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: value == this ? primaryColor : Colors.transparent,
                border: Border.all(
                    color: value == this ? primaryColor : Colors.black)),
            child: Text(AppLocalizations.of(context)!.statusFilterTypeLabel),
          ),
        );
    }
  }
}

extension SortTypeWidget on SortType {
  Widget getWidget(
    SortType sortType,
    Function(SortType value) onSortTypeTapCallBack,
  ) {
    switch (this) {
      case SortType.newest:
        return GestureDetector(
          onTap: () => onSortTypeTapCallBack(this),
          behavior: HitTestBehavior.opaque,
          child: const Icon(
            FontAwesomeIcons.arrowDown,
          ),
        );
      case SortType.lowest:
        return GestureDetector(
          onTap: () => onSortTypeTapCallBack(this),
          behavior: HitTestBehavior.opaque,
          child: const Icon(
            FontAwesomeIcons.arrowUp,
          ),
        );
    }
  }
}
