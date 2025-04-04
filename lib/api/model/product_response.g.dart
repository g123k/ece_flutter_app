// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAPIEntity _$ProductAPIEntityFromJson(Map<String, dynamic> json) =>
    ProductAPIEntity(
      ProductAPIResponseEntity.fromJson(
          json['response'] as Map<String, dynamic>),
      json['error'],
    );

Map<String, dynamic> _$ProductAPIEntityToJson(ProductAPIEntity instance) =>
    <String, dynamic>{
      'response': instance.response,
      'error': instance.error,
    };

ProductAPIResponseEntity _$ProductAPIResponseEntityFromJson(
        Map<String, dynamic> json) =>
    ProductAPIResponseEntity(
      json['name'] as String,
      json['altName'] as String,
      json['barcode'] as String,
      ProductAPIResponsePicturesEntity.fromJson(
          json['pictures'] as Map<String, dynamic>),
      json['quantity'] as String,
      (json['brands'] as List<dynamic>).map((e) => e as String).toList(),
      (json['stores'] as List<dynamic>).map((e) => e as String).toList(),
      (json['countries'] as List<dynamic>).map((e) => e as String).toList(),
      (json['manufacturingCountries'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['nutriScore'] as String,
      (json['novaScore'] as num).toInt(),
      (json['ecoScore'] as num).toInt(),
      json['ecoScoreGrade'] as String,
      (json['nutritionScore'] as num).toInt(),
      ProductAPIResponseIngredientsEntity.fromJson(
          json['ingredients'] as Map<String, dynamic>),
      ProductAPIResponseNutrientLevelsEntity.fromJson(
          json['nutrientLevels'] as Map<String, dynamic>),
      ProductAPIResponseNutritionFactsEntity.fromJson(
          json['nutritionFacts'] as Map<String, dynamic>),
      ProductAPIResponseTracesEntity.fromJson(
          json['traces'] as Map<String, dynamic>),
      Map<String, String>.from(json['additives'] as Map),
      ProductAPIResponseAllergensEntity.fromJson(
          json['allergens'] as Map<String, dynamic>),
      (json['packaging'] as List<dynamic>).map((e) => e as String).toList(),
      ProductAPIResponseAnalysisEntity.fromJson(
          json['analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductAPIResponseEntityToJson(
        ProductAPIResponseEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'altName': instance.altName,
      'barcode': instance.barcode,
      'pictures': instance.pictures,
      'quantity': instance.quantity,
      'brands': instance.brands,
      'stores': instance.stores,
      'countries': instance.countries,
      'manufacturingCountries': instance.manufacturingCountries,
      'nutriScore': instance.nutriScore,
      'novaScore': instance.novaScore,
      'ecoScore': instance.ecoScore,
      'ecoScoreGrade': instance.ecoScoreGrade,
      'nutritionScore': instance.nutritionScore,
      'ingredients': instance.ingredients,
      'nutrientLevels': instance.nutrientLevels,
      'nutritionFacts': instance.nutritionFacts,
      'traces': instance.traces,
      'additives': instance.additives,
      'allergens': instance.allergens,
      'packaging': instance.packaging,
      'analysis': instance.analysis,
    };

ProductAPIResponsePicturesEntity _$ProductAPIResponsePicturesEntityFromJson(
        Map<String, dynamic> json) =>
    ProductAPIResponsePicturesEntity(
      json['product'] as String,
      json['front'] as String,
      json['ingredients'] as String,
      json['nutrition'] as String,
    );

Map<String, dynamic> _$ProductAPIResponsePicturesEntityToJson(
        ProductAPIResponsePicturesEntity instance) =>
    <String, dynamic>{
      'product': instance.product,
      'front': instance.front,
      'ingredients': instance.ingredients,
      'nutrition': instance.nutrition,
    };

ProductAPIResponseIngredientsEntity
    _$ProductAPIResponseIngredientsEntityFromJson(Map<String, dynamic> json) =>
        ProductAPIResponseIngredientsEntity(
          json['containsPalmOil'] as bool,
          (json['list'] as List<dynamic>).map((e) => e as String).toList(),
          (json['details'] as List<dynamic>)
              .map((e) => ProductAPIResponseIngredientsDetailsEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$ProductAPIResponseIngredientsEntityToJson(
        ProductAPIResponseIngredientsEntity instance) =>
    <String, dynamic>{
      'containsPalmOil': instance.containsPalmOil,
      'list': instance.list,
      'details': instance.details,
    };

ProductAPIResponseIngredientsDetailsEntity
    _$ProductAPIResponseIngredientsDetailsEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseIngredientsDetailsEntity(
          json['vegan'] as bool,
          json['vegetarian'] as bool,
          json['containsPalmOil'] as bool,
          json['percent'] as String,
          json['value'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseIngredientsDetailsEntityToJson(
        ProductAPIResponseIngredientsDetailsEntity instance) =>
    <String, dynamic>{
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'containsPalmOil': instance.containsPalmOil,
      'percent': instance.percent,
      'value': instance.value,
    };

ProductAPIResponseNutrientLevelsEntity
    _$ProductAPIResponseNutrientLevelsEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutrientLevelsEntity(
          ProductAPIResponseNutrientLevelsFatEntity.fromJson(
              json['fat'] as Map<String, dynamic>),
          ProductAPIResponseNutrientLevelsSaltEntity.fromJson(
              json['salt'] as Map<String, dynamic>),
          ProductAPIResponseNutrientLevelsSaturatedFatEntity.fromJson(
              json['saturatedFat'] as Map<String, dynamic>),
          ProductAPIResponseNutrientLevelsSugarsEntity.fromJson(
              json['sugars'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductAPIResponseNutrientLevelsEntityToJson(
        ProductAPIResponseNutrientLevelsEntity instance) =>
    <String, dynamic>{
      'fat': instance.fat,
      'salt': instance.salt,
      'saturatedFat': instance.saturatedFat,
      'sugars': instance.sugars,
    };

ProductAPIResponseNutrientLevelsFatEntity
    _$ProductAPIResponseNutrientLevelsFatEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutrientLevelsFatEntity(
          json['level'] as String,
          (json['per100g'] as num).toInt(),
        );

Map<String, dynamic> _$ProductAPIResponseNutrientLevelsFatEntityToJson(
        ProductAPIResponseNutrientLevelsFatEntity instance) =>
    <String, dynamic>{
      'level': instance.level,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutrientLevelsSaltEntity
    _$ProductAPIResponseNutrientLevelsSaltEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutrientLevelsSaltEntity(
          json['level'] as String,
          (json['per100g'] as num).toDouble(),
        );

Map<String, dynamic> _$ProductAPIResponseNutrientLevelsSaltEntityToJson(
        ProductAPIResponseNutrientLevelsSaltEntity instance) =>
    <String, dynamic>{
      'level': instance.level,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutrientLevelsSaturatedFatEntity
    _$ProductAPIResponseNutrientLevelsSaturatedFatEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutrientLevelsSaturatedFatEntity(
          json['level'] as String,
          (json['per100g'] as num).toDouble(),
        );

Map<String, dynamic> _$ProductAPIResponseNutrientLevelsSaturatedFatEntityToJson(
        ProductAPIResponseNutrientLevelsSaturatedFatEntity instance) =>
    <String, dynamic>{
      'level': instance.level,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutrientLevelsSugarsEntity
    _$ProductAPIResponseNutrientLevelsSugarsEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutrientLevelsSugarsEntity(
          json['level'] as String,
          (json['per100g'] as num).toInt(),
        );

Map<String, dynamic> _$ProductAPIResponseNutrientLevelsSugarsEntityToJson(
        ProductAPIResponseNutrientLevelsSugarsEntity instance) =>
    <String, dynamic>{
      'level': instance.level,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsEntity
    _$ProductAPIResponseNutritionFactsEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsEntity(
          json['servingSize'] as String,
          json['calories'],
          ProductAPIResponseNutritionFactsFatEntity.fromJson(
              json['fat'] as Map<String, dynamic>),
          ProductAPIResponseNutritionFactsSaturatedFatEntity.fromJson(
              json['saturatedFat'] as Map<String, dynamic>),
          ProductAPIResponseNutritionFactsCarbohydrateEntity.fromJson(
              json['carbohydrate'] as Map<String, dynamic>),
          ProductAPIResponseNutritionFactsSugarEntity.fromJson(
              json['sugar'] as Map<String, dynamic>),
          json['fiber'],
          ProductAPIResponseNutritionFactsProteinsEntity.fromJson(
              json['proteins'] as Map<String, dynamic>),
          ProductAPIResponseNutritionFactsSodiumEntity.fromJson(
              json['sodium'] as Map<String, dynamic>),
          ProductAPIResponseNutritionFactsSaltEntity.fromJson(
              json['salt'] as Map<String, dynamic>),
          ProductAPIResponseNutritionFactsEnergyEntity.fromJson(
              json['energy'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsEntityToJson(
        ProductAPIResponseNutritionFactsEntity instance) =>
    <String, dynamic>{
      'servingSize': instance.servingSize,
      'calories': instance.calories,
      'fat': instance.fat,
      'saturatedFat': instance.saturatedFat,
      'carbohydrate': instance.carbohydrate,
      'sugar': instance.sugar,
      'fiber': instance.fiber,
      'proteins': instance.proteins,
      'sodium': instance.sodium,
      'salt': instance.salt,
      'energy': instance.energy,
    };

ProductAPIResponseNutritionFactsFatEntity
    _$ProductAPIResponseNutritionFactsFatEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsFatEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsFatEntityToJson(
        ProductAPIResponseNutritionFactsFatEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsSaturatedFatEntity
    _$ProductAPIResponseNutritionFactsSaturatedFatEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsSaturatedFatEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsSaturatedFatEntityToJson(
        ProductAPIResponseNutritionFactsSaturatedFatEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsCarbohydrateEntity
    _$ProductAPIResponseNutritionFactsCarbohydrateEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsCarbohydrateEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsCarbohydrateEntityToJson(
        ProductAPIResponseNutritionFactsCarbohydrateEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsSugarEntity
    _$ProductAPIResponseNutritionFactsSugarEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsSugarEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsSugarEntityToJson(
        ProductAPIResponseNutritionFactsSugarEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsProteinsEntity
    _$ProductAPIResponseNutritionFactsProteinsEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsProteinsEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsProteinsEntityToJson(
        ProductAPIResponseNutritionFactsProteinsEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsSodiumEntity
    _$ProductAPIResponseNutritionFactsSodiumEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsSodiumEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsSodiumEntityToJson(
        ProductAPIResponseNutritionFactsSodiumEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsSaltEntity
    _$ProductAPIResponseNutritionFactsSaltEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsSaltEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsSaltEntityToJson(
        ProductAPIResponseNutritionFactsSaltEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseNutritionFactsEnergyEntity
    _$ProductAPIResponseNutritionFactsEnergyEntityFromJson(
            Map<String, dynamic> json) =>
        ProductAPIResponseNutritionFactsEnergyEntity(
          json['unit'] as String,
          json['perServing'] as String,
          json['per100g'] as String,
        );

Map<String, dynamic> _$ProductAPIResponseNutritionFactsEnergyEntityToJson(
        ProductAPIResponseNutritionFactsEnergyEntity instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

ProductAPIResponseTracesEntity _$ProductAPIResponseTracesEntityFromJson(
        Map<String, dynamic> json) =>
    ProductAPIResponseTracesEntity(
      (json['list'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductAPIResponseTracesEntityToJson(
        ProductAPIResponseTracesEntity instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

ProductAPIResponseAllergensEntity _$ProductAPIResponseAllergensEntityFromJson(
        Map<String, dynamic> json) =>
    ProductAPIResponseAllergensEntity(
      (json['list'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductAPIResponseAllergensEntityToJson(
        ProductAPIResponseAllergensEntity instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

ProductAPIResponseAnalysisEntity _$ProductAPIResponseAnalysisEntityFromJson(
        Map<String, dynamic> json) =>
    ProductAPIResponseAnalysisEntity(
      json['palmOil'] as String,
      json['vegan'] as String,
      json['vegetarian'] as String,
    );

Map<String, dynamic> _$ProductAPIResponseAnalysisEntityToJson(
        ProductAPIResponseAnalysisEntity instance) =>
    <String, dynamic>{
      'palmOil': instance.palmOil,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
    };
