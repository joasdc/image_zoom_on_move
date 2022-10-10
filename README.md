# image_zoom_on_move

A Flutter package that lets you add an image and the zoom effect when moving the mouse over this image.

## Features

![Gif](resources/zoom_on_move.gif)

## Usage

To use this plugin, add `image_zoom_on_move` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

Recommended usage: Web.

### Example

``` dart
final imageUrl =
      "https://images.unsplash.com/photo-1619360142632-031d811d1678?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";

ImageZoomOnMove(
    image: Image.network(
        imageUrl,
        fit: BoxFit.cover,
    ),
),
```

To change the cursor:

``` dart
final imageUrl =
      "https://images.unsplash.com/photo-1619360142632-031d811d1678?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";

ImageZoomOnMove(
    cursor: SystemMouseCursors.grab,
    image: Image.network(
        imageUrl,
        fit: BoxFit.cover,
    ),
),
```

### Constructors 

``` dart
const ImageZoomOnMove({
    this.height,
    this.width,
    this.cursor = SystemMouseCursors.zoomIn,
    this.onTap,
    required this.image,
    Key? key,
}) : super(key: key);
```



