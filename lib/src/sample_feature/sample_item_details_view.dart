import 'package:flutter/material.dart';
import 'sample_item.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    // Read arguments from RouteSettings
    final item = ModalRoute.of(context)!.settings.arguments as SampleItem;
    String itemId = item.id.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Item #$itemId Details'),
      ),
      body: Center(
        // Show Sample Item ID
        child: Text('Some more information about item #$itemId'),
      ),
    );
  }
}
