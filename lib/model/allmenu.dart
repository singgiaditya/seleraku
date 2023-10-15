class AllMenu {
  String name;
  String about;
  String location;
  String imageAsset;
  String imageDetail;
  String description;
  String video;
  List<String> ingredient;
  List<String> ingredientDetail;
  List<String> ingredientImage;
  List<String> method;
  bool favorite = true;

  AllMenu(
      {required this.name,
      required this.about,
      required this.location,
      required this.imageAsset,
      required this.imageDetail,
      required this.description,
      required this.video,
      required this.ingredient,
      required this.ingredientDetail,
      required this.ingredientImage,
      required this.method,
      required this.favorite});
}

var allMenuList = [
  AllMenu(
      name: 'Rendang',
      about: 'Beef with special sauce',
      location: 'West Sumatra',
      imageAsset: 'image/rendangHome.png',
      imageDetail: 'image/rendangtrans.png',
      description:
          'Rendang is a traditional food originsting from West Sumatra and prepared by Minangkabau People. Rendang is commonly made with beef(especially tenderloin) width special sauce containing a high amount of coconut milk.',
      video: '1iUKZfrfCbw',
      ingredient: [
        'Beef Cube',
        'Coconut Milk',
        'Kandis Acid',
        'Candlenut',
        'Red Chili',
        'Salt',
        'Cooking Oil',
        'Red Onion',
        'Garlic',
        'Lemongrass',
        'Galangal',
      ],
      ingredientDetail: [
        '1 Kilogram',
        '3 Cups',
        '4 Grains',
        '50 Grams',
        '250 Grams',
        '5 Grams',
        '100 Ml',
        '60 Grams',
        '50 grams',
        '3 Stalks',
        '100 Grams',
      ],
      ingredientImage: [
        'image/beefCube.png',
        'image/santan.png',
        'image/kandisacid.png',
        'image/candlenut.png',
        'image/redchili.png',
        'image/salt.png',
        'image/oil.png',
        'image/onion.png',
        'image/garlic.png',
        'image/lemongrass.png',
        'image/galangal.png'
      ],
      method: [
        'Puree all seasoning ingredients by pulverizing or blending.',
        'Saute the spices with a little cooking oil until fragrant.',
        'Add lemongrass, lime leaves, kandis acid and salt, mix well.',
        'Pour the coconut milk and bring to a boil, add the meat.',
        'Cook over low heat for a few hours until the meat is tender and the spices are browned to your liking.'
      ],
      favorite: false),
  AllMenu(
      name: 'Soto Lamongan',
      about: 'Soup made from meat and vegetable broth.',
      location: 'East Java',
      imageAsset: 'image/sotoCircle.png',
      imageDetail: 'image/SotoLamongan.png',
      description:
          'Soto Lamongan is a dish of chicken soup that is typical of the Lamongan area, East Java. One of the characteristics of Soto Lamongan lies in the prawn cracker powder which is often called koya or poya. Soto Lamongan has a slightly yellow gravy with a very pronounced chicken taste.',
      video: 'OpD00wxjLLw',
      ingredient: [
        'Chicken',
        'garlic',
        'Red Onion',
        'Coriander',
        'Turmeric',
        'salt',
        'Prawn Crackers',
        'Fried Garlic',
        'Candlenut',
        'Ginger',
        'Lemongrass',
        'Kaffir lime leaf',
        'Sugar',
        'Cooking Oil'
      ],
      ingredientDetail: [
        '1 tail',
        '17 cloves ',
        '15 cloves',
        '1 teaspoon',
        '3cm',
        'as it enough',
        '1 cup',
        '5 tbsp',
        '5',
        '2 cm',
        '2 stalks',
        '8 pieces',
        'As it enough',
        'as it enough'
      ],
      ingredientImage: [
        'image/ayam.png',
        'image/garlic.png',
        'image/onion.png',
        'image/coriander.png',
        'image/turmeric.png',
        'image/salt.png',
        'image/prawncrackers.png',
        'image/friedgarlic.png',
        'image/candlenut.png',
        'image/ginger.png',
        'image/lemongrass.png',
        'image/Kaffirlimeleaf.png',
        'image/sugar.png',
        'image/cookingoil.png'
      ],
      method: [
        'Prepare a stew consisting of 7 cloves of garlic, 1 tsp of coriander, 1 cm of turmeric, 1 tsp of salt. Then grind it.',
        'Prepare 1 chicken then boil it with the ground spices and add enough water.',
        'When the chicken is cooked, remove the chicken and the cooking water, dont throw it away because it will make a mixture of soto water.',
        'After the chicken has cooled, the chicken is fried.',
        'Now we prepare the koya seasoning, prepare 1 bowl of prawn crackers and 5 tablespoons of fried garlic. Then puree the prawn crackers and fried garlic.',
        'Next we make the seasoning for the soup, prepare 15 cloves of shallot, 10 cloves of garlic, 5 grains of candlenut, 2 cm of turmeric, 2 cm of ginger, 2 stalks of lemongrass, and 8 pieces of lime leaves. Then we puree these ingredients with added oil to taste.',
        'Then prepare a pan, we stir-fry the soto seasoning until fragrant and the seasoning is really cooked, add 2 lemongrass stalks and 4 lime leaves, then add water and add the chicken boiled water.',
        'Add 1 tsp chicken stock, 1 tsp ground pepper, 1 tbsp salt, and 1 tbsp sugar. When it boils, turn off the stove and set aside.',
        'Serve Soto Lamongan with rice, sliced ​​fried chicken, fried onions, soto sauce, koya, and lime.'
      ],
      favorite: false),
  AllMenu(
      name: 'Ayam Habang',
      about: 'Chicken with special sauce',
      location: 'South Kalimantan',
      imageAsset: 'image/ayamCircle.jpg',
      imageDetail: 'image/ayam-habang.jpg',
      description:
          'Ayam Habang is a food made from chicken using spices typical of the Banjar tribe. The red color of this Habang cooking spice is produced from the main ingredient, which is dried red chili.',
      video: 'Bkg0wEWc1wE',
      ingredient: [
        'Chickens',
        'Water',
        'Tamarind',
        'Oils',
        'Red Chili',
        'Garlic',
        'Salt',
        'Sugar',
        'Shrimp Paste',
        'Shallot',
      ],
      ingredientDetail: [
        '800 grams',
        '1 Liter',
        '1 tsp',
        '2 tbsp',
        '12 items',
        '5 items',
        '100 Ml',
        '2 tsp',
        '1 tbsp',
        '1/2 tsp',
        '8 items',
      ],
      ingredientImage: [
        'image/ayam.png',
        'image/water.png',
        'image/tamarind.png',
        'image/oil.png',
        'image/chili.png',
        'image/garlic.png',
        'image/salt.png',
        'image/sugar.png',
        'image/udang.png',
        'image/onion.png',
      ],
      method: [
        'In a bowl, coat the chicken with the tamarind water. Leave in the refrigerator for 10 minutes.',
        'Heat oil, saute ground spices with Bango Sweet Soy Sauce until fragrant.',
        'Add chicken and water, mix well. Cook until the chicken is cooked and the water dries up.',
        'Lift and serve.'
      ],
      favorite: false),
  AllMenu(
      name: 'Pokak Syrup',
      about: 'Traditional drink',
      location: 'East Java',
      imageAsset: 'image/pokakCircle.jpg',
      imageDetail: 'image/Siruppokak.png',
      description:
          'Pokak syrup is a drink that comes from Probolinggo. This drink is usually served during Hari Raya. This Pokak syrup is made from various spices such as brown sugar, granulated sugar, ginger, cinnamon, cloves, and pandan leaves.',
      video: 'gdd-0woCSUM',
      ingredient: [
        'Brown Sugar',
        'Cinnamon',
        'Clove',
        'Ginger',
        'Pandan Leaves',
        'Sugar',
        'Water'
      ],
      ingredientDetail: [
        '2,5 Kilograms',
        '6 Cinnamon',
        '6 Clove',
        '8 Ginger',
        '6 Pandan Leaves',
        '2,5 Kiograms',
        '1 Liter'
      ],
      ingredientImage: [
        'image/brownsugar.png',
        'image/cinnamon.png',
        'image/clove.png',
        'image/ginger.png',
        'image/pandanleaves.png',
        'image/sugar.png',
        'image/water.png'
      ],
      method: [
        'The prepared ginger is then peeled and then mashed.',
        'After the ginger is crushed, pour it into a sieve until it is separated from the ginger dregs.',
        'Then pour the ginger water into a pot that has been given water.',
        'Put the sugar, pandan leaves, cloves, brown sugar, and cinnamon into the pan.',
        'After the ingredients enter the pot, wait until it boils.',
        'While waiting to boil, stir until the sugar dissolves and thickens.',
        'Keep stirring until it thickens and the foam is reduced.',
        'The pokak syrup is cooked and thickened, let it cool down.',
        'Once cool, strain the pokak syrup. The staple syrup is ready to be consumed.'
      ],
      favorite: false),
  AllMenu(
      name: 'Wingko Babat',
      about: 'Traditional Snack',
      location: 'East Java',
      imageAsset: 'image/wingkoCircle.png',
      imageDetail: 'image/wingkobabat.png',
      description:
          'Wingko tripe is a traditional snack from Lamongan district. Wingko tripe is made from basic ingredients of coconut, sugar, and glutinous rice flour then mixed and cooked by roasting.',
      video: 'u1DSHjJ0InA',
      ingredient: [
        'Rice Flour',
        'Grated Coconut',
        'Vanilla Falvor',
        'Coconut Water',
        'Coconut Cream',
        'Margarine',
        'Sugar'
      ],
      ingredientDetail: [
        '300 Grams',
        '250 Grams',
        '1/4 Teaspoon',
        '100 Ml',
        '100 Ml',
        '50 Grams',
        '100 Grams'
      ],
      ingredientImage: [
        'image/glutinousriceflour.png',
        'image/gratedcoconut.png',
        'image/vanillaflavor.png',
        'image/coconutwater.png',
        'image/coconutcream.png',
        'image/margarine.png',
        'image/sugar.png'
      ],
      method: [
        'Put coconut milk, coconut water, sugar, margarine, vanilla into a saucepan. Then cook until the margarine dissolves using medium heat.',
        'Then add the grated coconut, stir until evenly distributed. After boiling we turn off the stove.',
        'Then transfer it to the container provided and let it cool down.',
        'Once cool, add the glutinous rice flour little by little. Then stir until evenly.',
        'Next, the dough is formed flat.',
        'Heat the Teflon and add margarine. After its hot, we put the dough back and forth so that its cooked perfectly.',
        'Serve and enjoy the wingko tripe.',
      ],
      favorite: false)
];

var allFavoriteList = [];
