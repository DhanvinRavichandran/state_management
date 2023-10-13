class Fooditems{
  final String name;
  final int price;
  final String description;
  final String image;

  Fooditems(this.name,this.price,this.description,this.image);

  static List<Fooditems>getProducts(){
    List<Fooditems> items=<Fooditems>[];
    items.add(
      Fooditems("Chicken biryani", 170, "Richly flavoured aromatic layer with marinated chicken piece"
          ,"1.jpg")
    );
    items.add(
        Fooditems("Mutton biryani", 220, "Richly flavoured aromatic layer with marinated Mutton piece"
            ,"2.jpg")
    );
    items.add(
        Fooditems("South Indian Meals", 150, "Full home Style South indian meals"
            ,"3.jpg")
    );
    items.add(
        Fooditems("Mandi biryani", 350, "Richly flavoured aromatic layer with marinated chicken piece"
            ,"4.jpg")
    );
    return items;

  }
}