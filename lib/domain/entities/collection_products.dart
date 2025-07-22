class CollectionProductDTO {
  final String imageUrl;
  final String productTitle;
  final String productSubtitle;
  final double price;

  const CollectionProductDTO({
    required this.imageUrl,
    required this.productTitle,
    required this.productSubtitle,
    required this.price,
  });
}