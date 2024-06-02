class Category {
  final String imageAsset;
  final String title;

  const Category({
    required this.imageAsset,
    required this.title
  });
}

List<Category> categoryItems = [
  const Category(imageAsset: 'images/business.jpg', title: 'Business'),
  const Category(imageAsset: 'images/enter.jpg', title: 'Entertainment'),
  const Category(imageAsset: 'images/general.jpg', title: 'General'),
  const Category(imageAsset: 'images/health.jpg', title: 'Health'),
  const Category(imageAsset: 'images/science.jpg', title: 'Science'),
  const Category(imageAsset: 'images/sports.jpg', title: 'Sports'),
  const Category(imageAsset: 'images/tech.jpg', title: 'Technology')
];

