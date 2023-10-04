class Seller {
  final int id;
  final String name;
  final String profile;
  final String location;

  Seller({
    required this.id,
    required this.name,
    required this.profile,
    required this.location,
  });
}

List<Seller> sellerList = [
  Seller(
    id: 1,
    name: 'Liza',
    profile: 'asset/image/user.jpg',
    location: 'Phnom Penh',
  ),
  Seller(
    id: 2,
    name: 'Nita',
    profile: 'asset/image/user2.jpg',
    location: 'Kompot',
  ),
  Seller(
    id: 3,
    name: 'Lina',
    profile: 'asset/image/user3.jpg',
    location: 'Takeo',
  )
];
