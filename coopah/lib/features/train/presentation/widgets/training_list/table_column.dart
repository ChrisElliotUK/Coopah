import 'package:flutter/material.dart';

/// [TableColumn] is a widget that displays a column of data in a table.
/// It has an optional [subtitle] which can be set by providing a [subtitle]
/// by default [subtitle] is null.
/// [itemCount] is the number of items in the column.
/// [columnName] is the name of the column.
/// [itemBuilder] is a function that returns a widget for each item in the column.
class TableColumn extends StatelessWidget {
  const TableColumn({
    Key? key,
    required this.itemCount,
    required this.columnName,
    required this.itemBuilder,
    this.subtitle,
  }) : super(key: key);

  final int itemCount;
  final String columnName;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(columnName,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary)),
                if (subtitle != null)
                  Text(subtitle!,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary)),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
          ),
        ],
      ),
    );
  }
}
