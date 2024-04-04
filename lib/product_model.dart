class ProductModel {
  final String description;
  final String title;
  final String ? image;
  final String amount;
  final int price;
  final String category;

  ProductModel({required this.description, required this.title,
    required this.image, required this.amount, required this.price, required this.category});
  static data({required String category}) {
    List<Map<String, dynamic>>product = _product[category];
    return product;
  }
// factory ProductModel.json(String category,int index){
//
//   // return ProductModel(image: product[index]['image'],category: product[index]['category']
//   //     ,description: product[index]['description'],
//   //     title: product[index]['title'],amount: product[index]['amount'],
//   //     price: product[index]['price']);
//   return product;
// }

 static final Map<String, dynamic> _product={
    "Fruits&Vegetables": [
      {
        "id":0,
        "category": "Fruits&Vegetables product",
        "description": "Fresh Organic Apples",
        "title": "Red Apples",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe3cWuW0QViDrMsLk8Dfnu7UX5woC_idCXDzpND1RuAQ&s",
        "amount": "1 kg", // Use a numerical value or appropriate unit
        "price": 500
      },
      {
        "id":1,
        "category": "Fruits & Vegetables product",
        "description": "A healthy and delicious snack that's high in potassium and fiber.",
        "title": "Bananas",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT98NMc-ypl1GTY6izJbW6uJsQ1OkUkgFGkmCUtoVj_GA&s",
        "amount": "1 kg",
        "price": 200,
      },
      {
        "id":2,
        "category": "Fruits & Vegetables product",
        "description": "A refreshing and nutritious fruit that's a good source of vitamin C.",
        "title": "Oranges",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREPl0GMy0ImxgzfVnVfm4NhI0BYIxEWqCq73Jje4ie9g&s",
        "amount": "500g",
        "price": 250,
      },
      {
        "id":3,
        "category": "Fruits & Vegetables product",
        "description": "Versatile fruit that can be eaten raw, cooked, or used in sauces.",
        "title": "Tomatoes",
        "image": "https://media.istockphoto.com/id/1450576005/photo/tomato-isolated-tomato-on-white-background-perfect-retouched-tomatoe-side-view-with-clipping.jpg?s=612x612&w=0&k=20&c=lkQa_rpaKpc-ELRRGobYVJH-eMJ0ew9BckCqavkSTA0=",
        "amount": "1 kg",
        "price": 150,
      },
      {
        "id":4,
        "category": "Fruits & Vegetables product",
        "description": "A refreshing and hydrating vegetable that's low in calories.",
        "title": "strawberry",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0-5IJH5cvYQV7K0tOyIt_DkEga5EhlpGeqmQ60ZaLEg&s",
        "amount": "1 kg",
        "price": 100,
      },
      {
        "id":5,
        "category": "Fruits & Vegetables product",
        "description": "A refreshing and hydrating vegetable that's low in calories.",
        "title": "Cucumbers",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQort1zpYmNaKbDG1_d8_sjR8VCAioHaCVZK-GHWYCmBZn9ZALEmlICG2h30DYWlu0qfz4&usqp=CAU",
        "amount": "3 kg",
        "price": 200,
      },
    ],
    "Breakfast": [
      {
        "id":0,
        "category": "Breakfast product",
        "description": "A healthy and filling breakfast option that's high in fiber and protein.",
        "title": "Oatmeal",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhQ6BV_lA4-BmwOENHhYvB6SATGbn-tZPjuciKuBA6ew&s",
        "amount": "500g",
        "price": 200,
      },
      {
        "id":1,
        "category": "Breakfast product",
        "description": "A quick and easy breakfast option that's a good source of vitamins and minerals.",
        "title": "Cereal",
        "image": "https://i5.walmartimages.com/seo/Kellogg-s-Frosted-Flakes-Strawberry-Milkshake-Cold-Breakfast-Cereal-Family-Size-23-oz-Box_22e7db5e-aa41-4238-8cd4-3e2103c1a83c.d9c6d37db24c3627408703ad6eb1aa43.jpeg",
        "amount": "350g",
        "price": 150,},
      {
        "id":2,
        "category": "Breakfast product",
        "description": "A nutritious and versatile breakfast option that's high in protein.",
        "title": "Eggs",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDdvIY7DttQqepkF2mpwh21pit7cI30xdBsfNToZ8exQ&s",
        "amount": "1 dozen",
        "price": 100,
      },
      {
        "id":3,
        "category": "Breakfast product",
        "description": "A healthy and delicious breakfast option that's a good source of protein and calcium.",
        "title": "Yogurt",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAlsw12_gpOphAkj7G4W0x8xhTeST3UQ2XW7dZw0Bw5A&s",
        "amount": "500g",
        "price": 250,},
      {
        "id":4,
        "category": "Breakfast product",
        "description": "A refreshing and nutritious breakfast option that's a good source of vitamins and fiber.",
        "title": "Fruits",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfASlwuEzZn7_TjzQkr25YBgqzQum6TTa_6z5cisevdA&s",
        "amount": "1 kg",
        "price": 300,},
      {
        "id":5,
        "category": "Breakfast product",
        "description": "A versatile breakfast option that can be eaten plain, with toppings, or used to make sandwiches.",
        "title": "Toast",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS62TyKpDjaqsoJ8lS5tCml5ODgqVoaKLRap791oofZsQ&s",
        "amount": "1 loaf",
        "price": 50,
      },
    ],
    "Beverages": [
      {
        "id":0,
        "category": "Beverages product",
        "description": "The most essential beverage for human health and hydration.",
        "title": "Water",
        "image": "https://thehealthhouse.nl/wp-content/uploads/2022/12/XXL-WATER.png",
        "amount": "1L",
        "price": 50,},
      {
        "id":1,
        "category": "Beverages product",
        "description": "A refreshing and nutritious drink that's a good source of vitamin C.",
        "title": "Orange Juice",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEK4Y9QeRPKfC_7APlceG4uWZKrpC-Zv_fhbN4hTmE5g&s",
        "amount": "1L",
        "price": 150,
      },
      {
        "id":2,
        "category": "Beverages product",
        "description": "A popular and stimulating beverage that can be enjoyed hot or cold.",
        "title": "Coffee",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3nQWO0C30lUfdkIhqMOvg4bTp38gZL9MieR38XkZ0ig&s",
        "amount": "1 cup",
        "price": 100,},
      {
        "id":3,
        "category": "Beverages product",
        "description": "A healthy and relaxing beverage that's available in a variety of flavors.",
        "title": "Tea",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFcfaShS_COkIGCf_KGZD1_oCDRbGHpjovIHC-_-exEw&s",
        "amount": "1 bag",
        "price": 75,},
      {
        "id":4,
        "category": "Beverages product",
        "description": "A nutritious and versatile beverage that's a good source of calcium and protein.",
        "title": "Milk",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ASDYx9CArwvyT33isW6mv9h012zGQKfoV3Kg1NbL1Q&s",
        "amount": "1L",
        "price": 125,
      },
      {
        "id":5,
        "category": "Beverages product",
        "description": "A refreshing and tart beverage that's a good source of vitamin C.",
        "title": "Lemonade",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ5huDyE6vk1btpMS0H4aG9-5jDeshXmLfURMHDy6Tcw&s",
        "amount": "1L",
        "price": 175,
      },
    ],
    "Snacks": [
      {
        "id":0,
        "category": "Snacks product",
        "description": "A classic and salty snack that's perfect for sharing.",
        "title": "Potato Chips",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKRN70GQ6qaKjaF3vQBuJwQV4fa89P16-gYZrYF-vN5g&s",
        "amount": "150g",
        "price": 100,
      },
      {
        "id":1,
        "category": "Snacks product",
        "description": "A healthy and nutritious snack that's high in protein and fiber.",
        "title": "Nuts",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeXFlLbIQI4A3sBWwoXE9hjsP8-a9XrP5SiX85oSnow&s",
        "amount": "100g",
        "price": 200,
      },
      {
        "id":2,
        "category": "Snacks product",
        "description": "A sweet and chewy snack that's a good source of vitamins and minerals.",
        "title": "Dried Fruits",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHEuXT67tgzxQwF3ER8erY2XSm4ZjVcdVVzGOrWKDoEA&s",
        "amount": "100g",
        "price": 150,
      },
      {
        "id":3,
        "category": "Snacks product",
        "description": "A sweet and crunchy snack that's perfect for dipping in milk or coffee.",
        "title": "Cookies",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaCRDGZfhcPEE5OzwOl-6g2_3qVUHaVQ7I9nyhL11rfw&s",
        "amount": "100g",
        "price": 125,
      },
      {
        "id":4,
        "category": "Snacks product",
        "description": "A sweet and moist snack that's perfect for sharing.",
        "title": "Muffins",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8BVgFihipQolFcTkkhdV0KnYEdWLkaluzN_H0Uc1KbQ&s",
        "amount": "1 piece",
        "price": 75,
      },
      {
        "id":5,
        "category": "Snacks product",
        "description": "A light and airy snack that's perfect for watching movies.",
        "title": "Popcorn",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_EJHCFQYJD6T8y91sYP_CVlm8JgLi-XmXohinMdaLQ&s",
        "amount": "100g",
        "price": 50,
      },
    ],
    "Dairy": [
      {
        "id":0,
        "category": "Dairy product",
        "description": "A nutritious and versatile beverage that's a good source of calcium and protein.",
        "title": "Whole Milk",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNCbuvXUqiWuERyYNQvD1Q4SeGr-vcF3vUEn21eZ_uOw&s",
        "amount": "1L",
        "price": 125,
      },
      {
        "id":1,
        "category": "Dairy product",
        "description": "A good source of calcium and protein with less fat than whole milk.",
        "title": "Low-Fat Milk",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2oh_D02NtYtWWfyV-h_Z6lMPcnO93ZE2DRIJUY-oMKQ&s",
        "amount": "1L",
        "price": 115,
      },
      {
        "id":2,
        "category": "Dairy product",
        "description": "A plant-based alternative to cow's milk that's a good source of vitamin E.",
        "title": "Almond Milk",
        "image": "https://images.ctfassets.net/v8ah3e6kpvgz/4ajbLFSbSuuvlgAbef6pge/f9472fc3b9e859741d483133ef996319/20220826_unsweetened_530x700.png",
        "amount": "1L",
        "price": 150,
      },
      {
        "id":3,
        "category": "Dairy product",
        "description": "A semi-hard cheese that's popular for its sharp and nutty flavor.",
        "title": "Cheddar Cheese",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpq8a2CsgGEnAOmcgRTrC6NV9b67QoBiyqq4JDur9DRg&s",
        "amount": "200g",
        "price": 250,
      },
      {
        "id":4,
        "category": "Dairy product",
        "description": "A thick and creamy yogurt that's a good source of protein and calcium.",
        "title": "Greek Yogurt",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1IHsGZTUZuANOnPsNYlrnU4bgwTWoDuEs-atT04m7VQ&s",
        "amount": "500g",
        "price": 200,
      },
      {
        "id":5,
        "category": "Dairy product",
        "description": "A spread made from roasted peanuts that's a good source of protein and healthy fats.",
        "title": "Peanut Butter",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzQeSLAwEsv8sn4pwD598a6hzbJ5FBokX0F8y1zDrvTg&s",
        "amount": "350g",
        "price": 175,
      },
    ],
    "Meat&Fish": [
      {
        "id":0,
        "category": "Meat & Fish product",
        "description": "A versatile and flavorful ground meat that can be used in a variety of dishes.",
        "title": "Ground Beef",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTglnuxCgD6XV-R5QxxTKHYXNyPxx_pHjkrFQAofTHu5A&s",
        "amount": "500g",
        "price": 300,
      },
      {
        "id":1,
        "category": "Meat & Fish product",
        "description": "A lean and healthy source of protein that's easy to cook.",
        "title": "Chicken Breasts",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTawWLf9nQ-C0XHP7xlMtZI1nBNWtLUwXykvMl0TufBKQ&s",
        "amount": "1 kg",
        "price": 250,
      },
      {
        "id":2,
        "category": "Meat & Fish product",
        "description": "A healthy and delicious fish that's high in omega-3 fatty acids.",
        "title": "Salmon",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT_Rrn844QAfdse_QgT22khP1g-Tzn7sSbFFIVwuWyAQ&s",
        "amount": "500g",
        "price": 400,},
      {
        "id":3,
        "category": "Meat & Fish product",
        "description": "A versatile and delicious seafood that's easy to cook.",
        "title": "Shrimp",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX6ZBRj_qXpQXZpEtEVrIcw5tMwyvyW89SA5hUVOAc2w&s",
        "amount": "500g",
        "price": 350,},
      {
        "id":4,
        "category": "Meat & Fish product",
        "description": "A flavorful and tender meat that's perfect for slow cooking.",
        "title": "Lamb",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzWaMvKv8vH0ysRlmnpv47I7ISKdSZFkKFbcQVHqMhw&s",
        "amount": "500g",
        "price": 325,
      },
      {
        "id":5,
        "category": "Meat & Fish product",
        "description": "A flavorful and versatile cured meat that's perfect for breakfast or as a snack.",
        "title": "Bacon",
        "image": "https://ik.imagekit.io/smithfield/0aba5e4b-3a57-0042-244b-f7dbdf0cc00d/c284b910-8e34-46a1-8c17-2ba5b72f05d5/thick-cut-bacon.png",
        "amount": "250g",
        "price": 200,
      },
    ],
};
}