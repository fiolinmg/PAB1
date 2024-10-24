class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Pantai Bali',
    location: 'Bali',
    description:
        'Pantai Kuta Bali',
    openDays: 'Open Everyday',
    openTime: '09:00 - 24.00',
    ticketPrice: 'Rp 25000'
  )];