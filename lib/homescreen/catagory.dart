class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: 'cleansers',
    image: 'assets/clenser.png',
  ),
  Category(
    title: 'moisturizers',
    image: 'assets/moisterizer.png',
  ),
  Category(
    title: 'shampoo',
    image: 'assets/pngegg.png',
  ),
  Category(
    title: 'serum',
    image: 'assets/pngwing.com.png',
  ),
  Category(
    title: 'masks',
    image: 'assets/mask.png',
  ),
  Category(
    title: 'hair oils',
    image: 'assets/hairoil.png',
  ),
  Category(
    title: 'herbal remedies',
    image: 'assets/herbal_image.png',
  ),
];
