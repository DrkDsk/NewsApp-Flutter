class CategoryItem {
  final String imageAsset;
  final String title;

  const CategoryItem({
    required this.imageAsset,
    required this.title
  });
}

List<CategoryItem> categoryItems = [
  const CategoryItem(imageAsset: 'images/business.jpg', title: 'Business'),
  const CategoryItem(imageAsset: 'images/enter.jpg', title: 'Entertainment'),
  const CategoryItem(imageAsset: 'images/general.jpg', title: 'General'),
  const CategoryItem(imageAsset: 'images/health.jpg', title: 'Health'),
  const CategoryItem(imageAsset: 'images/science.jpg', title: 'Science'),
  const CategoryItem(imageAsset: 'images/sports.jpg', title: 'Sports'),
  const CategoryItem(imageAsset: 'images/tech.jpg', title: 'Technology')
];

