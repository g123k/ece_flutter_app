import 'package:ece_app/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductAPIEntity {
  ProductAPIResponseEntity response;
  dynamic error;

  ProductAPIEntity(this.response, this.error);

  factory ProductAPIEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductAPIEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAPIEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseEntity {
  String name;
  String altName;
  String barcode;
  ProductAPIResponsePicturesEntity pictures;
  String quantity;
  List<String> brands;
  List<String> stores;
  List<String> countries;
  List<String> manufacturingCountries;
  String nutriScore;
  int novaScore;
  int ecoScore;
  String ecoScoreGrade;
  int nutritionScore;
  ProductAPIResponseIngredientsEntity ingredients;
  ProductAPIResponseNutrientLevelsEntity nutrientLevels;
  ProductAPIResponseNutritionFactsEntity nutritionFacts;
  ProductAPIResponseTracesEntity traces;
  Map<String, String> additives;
  ProductAPIResponseAllergensEntity allergens;
  List<String> packaging;
  ProductAPIResponseAnalysisEntity analysis;

  ProductAPIResponseEntity(
    this.name,
    this.altName,
    this.barcode,
    this.pictures,
    this.quantity,
    this.brands,
    this.stores,
    this.countries,
    this.manufacturingCountries,
    this.nutriScore,
    this.novaScore,
    this.ecoScore,
    this.ecoScoreGrade,
    this.nutritionScore,
    this.ingredients,
    this.nutrientLevels,
    this.nutritionFacts,
    this.traces,
    this.additives,
    this.allergens,
    this.packaging,
    this.analysis,
  );

  factory ProductAPIResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductAPIResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAPIResponseEntityToJson(this);

  Product toProduct() => Product(
    barcode: barcode,
    name: name,
    altName: altName,
    picture: pictures.front,
    quantity: quantity,
    brands: brands,
    manufacturingCountries: manufacturingCountries,
    nutriScore: switch (nutriScore) {
      'A' => ProductNutriscore.A,
      'B' => ProductNutriscore.B,
      'C' => ProductNutriscore.C,
      'D' => ProductNutriscore.D,
      'E' => ProductNutriscore.E,
      _ => ProductNutriscore.unknown,
    },
    novaScore: switch (novaScore) {
      1 => ProductNovaScore.group1,
      2 => ProductNovaScore.group2,
      3 => ProductNovaScore.group3,
      4 => ProductNovaScore.group4,
      _ => ProductNovaScore.unknown,
    },
    ecoScore: switch (ecoScoreGrade) {
      'A' => ProductGreenScore.A,
      'A+' => ProductGreenScore.Aplus,
      'B' => ProductGreenScore.B,
      'C' => ProductGreenScore.C,
      'D' => ProductGreenScore.D,
      'E' => ProductGreenScore.E,
      'F' => ProductGreenScore.F,
      _ => ProductGreenScore.unknown,
    },
    ingredients: ingredients.list,
    traces: traces.list,
    allergens: allergens.list,
    additives: additives,
    nutrientLevels: NutrientLevels(
      salt: nutrientLevels.salt.level,
      saturatedFat: nutrientLevels.saturatedFat.level,
      sugars: nutrientLevels.sugars.level,
      fat: nutrientLevels.fat.level,
    ),
    ingredientsFromPalmOil:
        ProductAnalysis.fromString(analysis.palmOil) == ProductAnalysis.yes,
    isVegan: ProductAnalysis.fromString(analysis.vegan),
    isVegetarian: ProductAnalysis.fromString(analysis.vegetarian),
    nutritionFacts: NutritionFacts(servingSize: nutritionFacts.servingSize),
  );
}

@JsonSerializable()
class ProductAPIResponsePicturesEntity {
  String product;
  String front;
  String ingredients;
  String nutrition;

  ProductAPIResponsePicturesEntity(
    this.product,
    this.front,
    this.ingredients,
    this.nutrition,
  );

  factory ProductAPIResponsePicturesEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponsePicturesEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponsePicturesEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseIngredientsEntity {
  bool containsPalmOil;
  List<String> list;
  List<ProductAPIResponseIngredientsDetailsEntity> details;

  ProductAPIResponseIngredientsEntity(
    this.containsPalmOil,
    this.list,
    this.details,
  );

  factory ProductAPIResponseIngredientsEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseIngredientsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseIngredientsEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseIngredientsDetailsEntity {
  bool vegan;
  bool vegetarian;
  bool containsPalmOil;
  String percent;
  String value;

  ProductAPIResponseIngredientsDetailsEntity(
    this.vegan,
    this.vegetarian,
    this.containsPalmOil,
    this.percent,
    this.value,
  );

  factory ProductAPIResponseIngredientsDetailsEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseIngredientsDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseIngredientsDetailsEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutrientLevelsEntity {
  ProductAPIResponseNutrientLevelsFatEntity fat;
  ProductAPIResponseNutrientLevelsSaltEntity salt;
  ProductAPIResponseNutrientLevelsSaturatedFatEntity saturatedFat;
  ProductAPIResponseNutrientLevelsSugarsEntity sugars;

  ProductAPIResponseNutrientLevelsEntity(
    this.fat,
    this.salt,
    this.saturatedFat,
    this.sugars,
  );

  factory ProductAPIResponseNutrientLevelsEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutrientLevelsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutrientLevelsEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutrientLevelsFatEntity {
  String level;
  int per100g;

  ProductAPIResponseNutrientLevelsFatEntity(this.level, this.per100g);

  factory ProductAPIResponseNutrientLevelsFatEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutrientLevelsFatEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutrientLevelsFatEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutrientLevelsSaltEntity {
  String level;
  double per100g;

  ProductAPIResponseNutrientLevelsSaltEntity(this.level, this.per100g);

  factory ProductAPIResponseNutrientLevelsSaltEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutrientLevelsSaltEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutrientLevelsSaltEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutrientLevelsSaturatedFatEntity {
  String level;
  double per100g;

  ProductAPIResponseNutrientLevelsSaturatedFatEntity(this.level, this.per100g);

  factory ProductAPIResponseNutrientLevelsSaturatedFatEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutrientLevelsSaturatedFatEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutrientLevelsSaturatedFatEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutrientLevelsSugarsEntity {
  String level;
  int per100g;

  ProductAPIResponseNutrientLevelsSugarsEntity(this.level, this.per100g);

  factory ProductAPIResponseNutrientLevelsSugarsEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutrientLevelsSugarsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutrientLevelsSugarsEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsEntity {
  String servingSize;
  dynamic calories;
  ProductAPIResponseNutritionFactsFatEntity fat;
  ProductAPIResponseNutritionFactsSaturatedFatEntity saturatedFat;
  ProductAPIResponseNutritionFactsCarbohydrateEntity carbohydrate;
  ProductAPIResponseNutritionFactsSugarEntity sugar;
  dynamic fiber;
  ProductAPIResponseNutritionFactsProteinsEntity proteins;
  ProductAPIResponseNutritionFactsSodiumEntity sodium;
  ProductAPIResponseNutritionFactsSaltEntity salt;
  ProductAPIResponseNutritionFactsEnergyEntity energy;

  ProductAPIResponseNutritionFactsEntity(
    this.servingSize,
    this.calories,
    this.fat,
    this.saturatedFat,
    this.carbohydrate,
    this.sugar,
    this.fiber,
    this.proteins,
    this.sodium,
    this.salt,
    this.energy,
  );

  factory ProductAPIResponseNutritionFactsEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsFatEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsFatEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsFatEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsFatEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsFatEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsSaturatedFatEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsSaturatedFatEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsSaturatedFatEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsSaturatedFatEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsSaturatedFatEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsCarbohydrateEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsCarbohydrateEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsCarbohydrateEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsCarbohydrateEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsCarbohydrateEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsSugarEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsSugarEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsSugarEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsSugarEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsSugarEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsProteinsEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsProteinsEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsProteinsEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsProteinsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsProteinsEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsSodiumEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsSodiumEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsSodiumEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsSodiumEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsSodiumEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsSaltEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsSaltEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsSaltEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsSaltEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsSaltEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseNutritionFactsEnergyEntity {
  String unit;
  String perServing;
  String per100g;

  ProductAPIResponseNutritionFactsEnergyEntity(
    this.unit,
    this.perServing,
    this.per100g,
  );

  factory ProductAPIResponseNutritionFactsEnergyEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseNutritionFactsEnergyEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseNutritionFactsEnergyEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseTracesEntity {
  List<String> list;

  ProductAPIResponseTracesEntity(this.list);

  factory ProductAPIResponseTracesEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductAPIResponseTracesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAPIResponseTracesEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseAllergensEntity {
  List<String> list;

  ProductAPIResponseAllergensEntity(this.list);

  factory ProductAPIResponseAllergensEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseAllergensEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseAllergensEntityToJson(this);
}

@JsonSerializable()
class ProductAPIResponseAnalysisEntity {
  String palmOil;
  String vegan;
  String vegetarian;

  ProductAPIResponseAnalysisEntity(this.palmOil, this.vegan, this.vegetarian);

  factory ProductAPIResponseAnalysisEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductAPIResponseAnalysisEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductAPIResponseAnalysisEntityToJson(this);
}
