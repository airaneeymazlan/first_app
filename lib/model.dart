class Detail {
  String name;
  String price;
  String description;

  Detail(this.name, this.price, this.description);

  static List<Detail> generateDetails() {
    return [
      Detail('Toffee Nut Crunch Latte', 'RM 9.90',
          'A blend of toffee nut syrup, coffee, milk and ice'),
      Detail('Tce Caramel Macchiato', 'RM 9.90',
          'A blend of toffee nut syrup, coffee, milk and ice'),
      Detail('Americano', 'RM 9.90',
          'A blend of toffee nut syrup, coffee, milk and ice'),
    ];
  }
}
