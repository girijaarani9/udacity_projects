import 'package:flutter/material.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category({Key? key}) : super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://api.flutter.dev/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return InkWell(
      onTap: () {
        print("I was tapped");
      },
      splashColor: Colors.green,
      borderRadius: BorderRadius.circular(50),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            _categoryIcon,
            size: 60,
          ),
        ),
        title: Text(
          _categoryName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
