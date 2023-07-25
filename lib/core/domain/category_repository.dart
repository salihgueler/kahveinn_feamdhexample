import 'package:kahveinn/core/model/category.dart';
import 'package:kahveinn/core/model/category_content.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

const _categories = <Category>[
  // Image source is https://www.pexels.com/photo/coffee-beans-1695052/
  Category(
    id: '1',
    title: 'Beans',
    categoryImageUrl:
        'https://images.pexels.com/photos/1695052/pexels-photo-1695052.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
    contents: [
      // Image credit goes to https://www.pexels.com/photo/small-deep-spoon-with-coffee-beans-5472417/
      CategoryContent(
        id: '1',
        title: 'Arabica',
        description:
            'Arabica is the most popular type of coffee, hands down. Depending on who you ask, many coffee enthusiasts prefer using Arabica beans due to its taste. Typically used for black coffee, Arabica beans have a sweeter, more complex flavor that you can drink straight. Funny thing is, even though it’s the most popular, it doesn’t have as much caffeine as Robusta.',
        image:
            'https://images.pexels.com/photos/5472417/pexels-photo-5472417.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      // Image credit goes to https://www.pexels.com/photo/arabica-coffee-beans-in-cup-and-on-table-against-gray-background-7507355/
      CategoryContent(
        id: '2',
        title: 'Robusta',
        description:
            'While Arabica is the most popular, Robusta is cheaper and stronger. Because of its bitter flavor, you’ll typically see Robusta used for espresso drinks and in instant coffee mixes. If your Monday morning is lagging, reach for a cup of coffee that uses Robusta beans. Their high caffeine content will wake you right up!',
        image:
            'https://images.pexels.com/photos/7507355/pexels-photo-7507355.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
    ],
  ),
  // Image source is https://www.pexels.com/photo/person-performing-coffee-art-302899/
  Category(
    id: '2',
    title: 'Coffees',
    categoryImageUrl:
        'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
    contents: [
      CategoryContent(
        id: '1',
        title: 'Black',
        description:
            'Black coffee is as simple as it gets with ground coffee beans steeped in hot water, served warm. And if you want to sound fancy, you can call black coffee by its proper name: cafe noir. Since it isn’t doctored up with milk or sugar, the quality of coffee is especially important. Treat yourself to a coffee subscription box to find your favorite style.',
        // Image credit goes to https://www.pexels.com/photo/white-mug-on-red-background-2916450/
        image:
            'https://images.pexels.com/photos/2916450/pexels-photo-2916450.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '2',
        title: 'Latte',
        description:
            'As the most popular coffee drink out there, the latte is comprised of a shot of espresso and steamed milk with just a touch of foam. It can be ordered plain or with a flavor shot of anything from vanilla to pumpkin spice. (Here’s how to make a copycat Starbucks pumpkin spice latte.)',
        // Image credit goes to https://www.pexels.com/photo/close-up-photography-of-cup-of-coffee-851555/
        image:
            'https://images.pexels.com/photos/851555/pexels-photo-851555.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '3',
        title: 'Cappuccino',
        description:
            'Cappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top. Sometimes you can find variations that use cream instead of milk or ones that throw in flavor shot, as well.',
        // Image credit goes to https://www.pexels.com/photo/red-ceramic-mug-on-red-saucer-1187317/
        image:
            'https://images.pexels.com/photos/1187317/pexels-photo-1187317.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '4',
        title: 'Americano',
        description:
            'With a similar flavor to black coffee, the americano consists of an espresso shot diluted in hot water. Pro tip: if you’re making your own, pour the espresso first, then add the hot water.',
        // Image credit goes to https://www.pexels.com/photo/cup-of-hot-coffee-on-ceramic-saucer-6207297/
        image:
            'https://images.pexels.com/photos/6207297/pexels-photo-6207297.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '5',
        title: 'Espresso',
        description:
            'An espresso shot can be served solo or used as the foundation of most coffee drinks, like lattes and macchiatos.',
        // Image credit goes to https://www.pexels.com/photo/white-ceramic-mug-and-saucer-685527/
        image:
            'https://images.pexels.com/photos/685527/pexels-photo-685527.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '6',
        title: 'Doppio',
        description:
            'A double shot of espresso, the doppio is perfect for putting extra pep in your step.',
        // Image credit goes to https://www.pexels.com/photo/man-working-with-laptop-in-office-with-coffee-5882704/
        image:
            'https://images.pexels.com/photos/5882704/pexels-photo-5882704.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '7',
        title: 'Cortado',
        description:
            'Like yin and yang, a cortado is the perfect balance of espresso and warm steamed milk. The milk is used to cut back on the espresso’s acidity.',
        // Image credit goes to https://www.pexels.com/photo/cappuccino-in-white-ceramic-cup-on-white-ceramic-saucer-2396220/
        image:
            'https://images.pexels.com/photos/2396220/pexels-photo-2396220.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '8',
        title: 'Red Eye',
        description:
            'Named after those pesky midnight flights, a red eye can cure any tiresome morning. A full cup of hot coffee with an espresso shot mixed in, this will definitely get your heart racing.',
        // Image credit goes to https://www.pexels.com/photo/a-cup-of-coffee-and-a-fujifilm-camera-7173314/
        image:
            'https://images.pexels.com/photos/7173314/pexels-photo-7173314.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '9',
        title: 'Galão',
        description:
            'Originating in Portugal, this hot coffee drink is closely related to the latte and cappuccino. Only difference is it contains about twice as much foamed milk, making it a lighter drink compared to the other two.',
        // Image credit goes to https://www.pexels.com/photo/clear-glass-cup-with-brown-liquid-4669247/
        image:
            'https://images.pexels.com/photos/4669247/pexels-photo-4669247.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '10',
        title: 'Lungo',
        description:
            'A lungo is a long-pull espresso. The longer the pull, the more caffeine there is and the more ounces you can enjoy.',
        // Image credit goes to https://www.pexels.com/photo/cup-of-coffee-and-spoon-of-table-4226806/
        image:
            'https://images.pexels.com/photos/4226806/pexels-photo-4226806.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '11',
        title: 'Macchiato',
        description:
            'The macchiato is another espresso-based drink that has a small amount of foam on top. It’s the happy medium between a cappuccino and a doppio.',
        // Image credit goes to https://www.pexels.com/photo/a-glass-of-iced-caramel-macchiato-5305639/
        image:
            'https://images.pexels.com/photos/5305639/pexels-photo-5305639.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '12',
        title: 'Mocha',
        description:
            'For all you chocolate lovers out there, you’ll fall in love with a mocha (or maybe you already have). The mocha is a chocolate espresso drink with steamed milk and foam.',
        // Image credit goes to https://www.pexels.com/photo/close-up-photography-of-cup-of-coffee-851555/
        image:
            'https://images.pexels.com/photos/851555/pexels-photo-851555.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '13',
        title: 'Ristretto',
        description:
            'Ristretto is an espresso shot. It uses less hot water which creates a sweeter flavor compared to the bitter taste of a traditional shot of espresso or a doppio.',
        // Image credit goes to https://www.pexels.com/photo/coffee-machine-brewing-hot-espresso-3756728/
        image:
            'https://images.pexels.com/photos/3756728/pexels-photo-3756728.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '14',
        title: 'Flat White',
        description:
            'This Aussie-born drink is basically a cappuccino without the foam or chocolate sprinkle. It’s an espresso drink with steamed milk.',
        // Image credit goes to https://www.pexels.com/photo/beverage-filled-mug-near-apple-airpods-with-lightning-connector-and-apple-magic-keyboard-317377/
        image:
            'https://images.pexels.com/photos/317377/pexels-photo-317377.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '15',
        title: 'Affogato',
        description:
            'The affogato is an excuse to enjoy a scoop of ice cream any time of day (and any time of year in my opinion). Served with a scoop of ice cream and a shot of espresso, or two. The affogato is extra delish served over a brownie.',
        // Image credit goes to https://www.pexels.com/photo/an-affogato-dessert-on-a-wooden-saucer-and-tray-9442600/
        image:
            'https://images.pexels.com/photos/9442600/pexels-photo-9442600.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '16',
        title: 'Café au Lait',
        description:
            'Café au lait is perfect for the coffee minimalist who wants a bit more flavor. Just add a splash of warm milk to your coffee and you’re all set!',
        // Image credit goes to https://www.pexels.com/photo/cup-of-coffee-on-a-table-by-the-window-facing-the-street-in-a-cafe-5865683/
        image:
            'https://images.pexels.com/photos/5865683/pexels-photo-5865683.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '17',
        title: 'Irish',
        description:
            'Irish coffee consists of black coffee, whiskey and sugar, topped with whipped cream. Here’s an Irish coffee recipe that will warm you right up.',
        // Image credit goes to https://www.pexels.com/photo/white-and-green-ceramic-floral-mug-3860527/
        image:
            'https://images.pexels.com/photos/3860527/pexels-photo-3860527.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '18',
        title: 'Iced Coffee',
        description:
            'A coffee with ice, typically served with a dash of milk, cream or sweetener—iced coffee is really as simple as that. Iced coffee fanatics know that whipping up this delicious drink at home is tricky, so you’ll want to try a Hyperchiller to master your DIY iced coffee recipe.',
        // Image credit goes to https://www.pexels.com/photo/macbook-pro-beside-clear-glass-jar-1204148/
        image:
            'https://images.pexels.com/photos/1204148/pexels-photo-1204148.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '19',
        title: 'Iced Espresso',
        description:
            'Like an iced coffee, iced espresso can be served straight or with a dash of milk, cream or sweetener. You can also ice speciality espresso-based drinks like americanos, mochas, macchiatos, lattes and flat whites.',
        // Image credit goes to pexels.com/photo/selective-focus-photography-of-bag-of-beans-beside-clear-glass-bottle-3165336/
        image:
            'https://images.pexels.com/photos/3165336/pexels-photo-3165336.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '20',
        title: 'Cold Brew',
        description:
            'The trendiest of the iced coffee bunch, cold brew coffees are made by steeping coffee beans from anywhere between 6-36 hours, depending on how strong you would like your cold brew. Once the beans are done steeping, add cold milk or cream. Here are a few of our best cold brew coffee tips.',
        // Image credit goes to https://www.pexels.com/photo/cold-coffee-in-glass-near-typewriter-1432528/
        image:
            'https://images.pexels.com/photos/1432528/pexels-photo-1432528.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '21',
        title: 'Frappuccino',
        description:
            'Made famous by Starbucks, the Frappuccino is a blended iced coffee drink that’s topped with whipped cream and syrup. But not all Frapps are made the same: watch out for coffee-free versions. Unless you’re into that sorta thing.',
        // Image credit goes to https://www.pexels.com/photo/glasses-of-sweet-cold-frappuccino-8743862/
        image:
            'https://images.pexels.com/photos/8743862/pexels-photo-8743862.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '22',
        title: 'Nitro',
        description:
            'A cold brew + nitrogen bubbles = a cold brew coffee with a frothy, Guinness-like consistency. (It’s poured via a nitro tap, too.)',
        // Image credit goes to https://www.pexels.com/photo/top-view-of-office-desk-with-laptop-eyeglasses-and-coffee-5882702/
        image:
            'https://images.pexels.com/photos/5882702/pexels-photo-5882702.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '23',
        title: 'Mazagran',
        description:
            'Maza-who?! Mazagran coffee is a cross between iced coffee, tea and your favorite rum drink. It typically consists of espresso, lemon, sugar and (sometimes) rum.',
        // Image credit goes to https://www.pexels.com/photo/iced-coffee-and-syrups-on-table-7474153/
        image:
            'https://images.pexels.com/photos/7474153/pexels-photo-7474153.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
    ],
  ),
  // Image source is https://www.pexels.com/photo/close-up-of-coffee-cup-324028/
  Category(
    id: '3',
    title: 'Coffee Makers',
    categoryImageUrl:
        'https://images.pexels.com/photos/324028/pexels-photo-324028.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
    contents: [
      CategoryContent(
        id: '1',
        title: 'French Press',
        description: '''
This manual coffee maker is extremely easy to use. Add ground coffee beans into your French press, pour piping hot water over the grounds, let the coffee steep for a few minutes and finally, press the plunger down and pour! Simple as that. French presses can be used for any bean, but many people prefer using them for darker, richer roasts. Also, how fancy does this French press look? Make your morning brew…in style!

For a perfect cup of coffee, use a French press. But this cylindrical carafe, plunger and filter can do more than brew a beautiful light roast. We found plenty of French press hacks!
''',
        // Image credit goes to https://www.pexels.com/photo/closed-book-beside-french-press-and-mug-1649282/
        image:
            'https://images.pexels.com/photos/1649282/pexels-photo-1649282.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '2',
        title: 'Percolator',
        description:
            'Try out a percolator to add a retro feel to your daily brew—like 1880s retro. To put it simply, percolators brew coffee by continuously pushing boiling hot water bubbles up into the “coffee chamber” to steep the coffee grains. This cycle is repeated until the coffee is ready to serve. They’re typically used for medium roasts and prepared over the stovetop, but percolators can work over any heated surface, even a campfire (hint, hint!).',
        // Image credit goes to https://www.pexels.com/photo/black-kettle-on-grill-221445/
        image:
            'https://images.pexels.com/photos/221445/pexels-photo-221445.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '3',
        title: 'Single Serve',
        description:
            'Single serve coffee maker sales have really peaked in the past few years. Measure out your desired coffee amount, pour into the reusable filter, pour water in and voila! A cup of coffee just for you will be ready soon. Single serve coffee makers are perfect for single-person households (or those where just one person drinks coffee). Try out this budget-friendly single serve coffee maker which includes a fun travel mug!',
        // Image credit goes to https://www.pexels.com/photo/wood-dawn-caffeine-coffee-5045608/
        image:
            'https://images.pexels.com/photos/5045608/pexels-photo-5045608.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '4',
        title: 'AeroPress',
        description:
            'We’ve got another manual coffee maker for you. The AeroPress is very similar to the French press. To use an AeroPress, we recommend checking out this beautiful get-started guide. You can make espresso, lattes, cold brews or just a classic cup of coffee in this nifty little machine.',
        // Image credit goes to https://www.pexels.com/photo/person-holding-clear-glass-mug-with-beer-5461656/
        image:
            'https://images.pexels.com/photos/5461656/pexels-photo-5461656.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '5',
        title: 'Drip',
        description: '''
Aah, yes. The classic electric coffee maker you know and love. To get your brew going in a drip coffee maker, all you have to do is scoop your coffee, pour it into the filter, pour some water in and press start to let the drip coffee maker do it’s coffee magic. Soon, you’ll hear the sweet sounds of your coffee dripping right into your coffee pot. Mornings, conquered.

Some drip coffee makers also come with a thermal carafe. Typically with a double layered, stainless steel wall, thermal carafes keep your coffee tasting fresh and hot for hours longer than most glass carafes do. Some drip coffee makers use a thermal carafe, but traditionally, they use a glass carafe instead.
''', // Image credit goes to https://www.pexels.com/photo/close-up-shot-of-a-coffee-dripper-6660455/
        image:
            'https://images.pexels.com/photos/6660455/pexels-photo-6660455.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '6',
        title: 'Pour Over',
        description:
            'A pour-over coffee maker is exactly what it sounds like: you manually pour hot water over the beans. With a solid 5-star rating on Amazon, pour-over coffee makers like Chemex are a solid choice. Fans love the fact that you get to control the strength of the coffee, plus the pots are super easy to clean. You do need a special kind of filter, though, which is pricier than the typical drip coffee filter. However, some are reusable.',
        // Image credit goes to https://www.pexels.com/photo/a-person-pouring-hot-water-on-a-coffee-dispenser-5328288/
        image:
            'https://images.pexels.com/photos/5328288/pexels-photo-5328288.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '7',
        title: 'Cold Brew',
        description:
            'Diehard cold brew fans may want to invest in a cold brew coffee maker. To use a cold brew maker, throw in your coffee grounds, brew and serve. You can store the coffee for up to 36 hours. If you’re looking for a multi-functional coffee maker, you can prepare cold brew coffees in other makers, like the AeroPress.',
        // Image credit goes to https://www.pexels.com/photo/glass-of-cold-coffee-served-with-milk-and-beans-4552181/
        image:
            'https://images.pexels.com/photos/4552181/pexels-photo-4552181.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
      CategoryContent(
        id: '8',
        title: 'Moka',
        description:
            'Moka pots share a lot of similarities with the percolator and there’s often confusion between the two. Both need a heated surface, like a stovetop or even a campfire. However, the Moka pot produces an espresso-like drink and its brewing process is a bit different than the percolator. You need to keep more of an eye on it because when the Moka pot’s water is spent, you should remove the pot from the heat surface to avoid burnt-tasting coffee. Whereas with the percolator’s simple brewing process, the longer you leave it running, the stronger the coffee will be.',
        // Image credit goes to https://www.pexels.com/photo/fresh-hot-coffee-prepared-with-machine-4424672/
        image:
            'https://images.pexels.com/photos/4424672/pexels-photo-4424672.jpeg?auto=compress&cs=tinysrgb&w=840&h=500&dpr=1',
      ),
    ],
  ),
];

class CategoryRepository {
  List<Category> get categories => _categories;

  List<CategoryContent>? getCategoryContentsByCategoryId(String id) {
    return _categories
        .firstWhereOrNull((category) => category.id == id)
        ?.contents;
  }

  CategoryContent? getCategoryContentByCategoryIdAndContentId(
    String categoryId,
    String contentId,
  ) {
    final contents = _categories
        .firstWhere((category) => category.id == categoryId)
        .contents;
    final content =
        contents.firstWhereOrNull((content) => content.id == contentId);
    return content;
  }

  String getCategoryTitleByCategoryId(String id) {
    return _categories.firstWhere((category) => category.id == id).title;
  }
}
