List<Plant> listPlant = [
  Plant(
    id: 1,
    name: 'Succulent Plant',
    price: "\$39.99",
    image: 'assets/plant.png',isAvailable: true,
    isWishList: true,
    about: 'Succulent Plantis one of the most popular and beautiful species that will produce clumpms. The storage of water often gives succulent plants a more swollen or fleshy appearance than other plants, a characteristic known as succulence.'
  ),
    Plant(
    id: 2,
    name: 'Dragon Plant',
    price: "\$29.99",
    image: 'assets/plant.png',
    isAvailable: false,
    isWishList: false,
      about: 'Succulent Plantis one of the most popular and beautiful species that will produce clumpms. The storage of water often gives succulent plants a more swollen or fleshy appearance than other plants, a characteristic known as succulence.'
  ),
    Plant(
    id: 3,
    name: 'Ravenea Plant',
    price: "\$25.99",
      image: 'assets/plant.png',isAvailable: false,
    isWishList: false,
        about: 'Succulent Plantis one of the most popular and beautiful species that will produce clumpms. The storage of water often gives succulent plants a more swollen or fleshy appearance than other plants, a characteristic known as succulence.'

  ),
    Plant(
    id:4,
    name: 'Potted Plant',
    price: "\$19.99",
      image: 'assets/plant.png',isAvailable: true,
    isWishList: true,
        about: 'Succulent Plantis one of the most popular and beautiful species that will produce clumpms. The storage of water often gives succulent plants a more swollen or fleshy appearance than other plants, a characteristic known as succulence.'

  ),

  Plant(
    id: 5,
    name: 'Succulent Plant',
    price: "\$39.99",
    image: 'assets/plant.png',isAvailable: true,
    isWishList: true,
      about: 'Succulent Plantis one of the most popular and beautiful species that will produce clumpms. The storage of water often gives succulent plants a more swollen or fleshy appearance than other plants, a characteristic known as succulence.'

  ),
  Plant(
    id: 6,
    name: 'Dragon Plant',
    price: "\$29.99",
    image: 'assets/plant.png',isAvailable: false,
    isWishList: false,
      about: 'Succulent Plantis one of the most popular and beautiful species that will produce clumpms. The storage of water often gives succulent plants a more swollen or fleshy appearance than other plants, a characteristic known as succulence.'

  ),
];

class Plant {
  String? name;
  String? price;
  int? id;
  bool? isWishList;
  bool? isAvailable;
  String? image;
  String? about;

  Plant({
    this.name,
    this.id,
    this.price,
    this.about,
    this.isAvailable,
    this.image,
    this.isWishList,
  });
}
