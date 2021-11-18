import 'package:moneyro/app/shared/models/category/category.dart';
class DefaultCategoriesData {
  // category names
  static const HOUSING = 'Housing';
  static const TRANSPORTATION = 'Transportation';
  static const FOOD = 'Food';
  static const UTILITIES = 'Utilities';
  static const SHOPPING = 'Shopping';
  static const HEALTHCARE = 'Healthcare';
  static const PERSONAL = 'Personal';
  static const EDUCATION = 'Education';
  static const GIFTS_DONATIONS = 'Gifts / Donations';
  static const DEBT = 'Debt';
  static const ENTERTAINMENT = 'Entertainment';

  static final List<TransactionCategory> initialCategoryGroups = [
    TransactionCategory.create(name: HOUSING, icon: '🏠', isGroup: true),
    TransactionCategory.create(name: TRANSPORTATION, icon: '🚀', isGroup: true),
    TransactionCategory.create(name: FOOD, icon: '🍴', isGroup: true),
    TransactionCategory.create(name: UTILITIES, icon: '📄', isGroup: true),
    TransactionCategory.create(name: SHOPPING, icon: '🛍', isGroup: true),
    TransactionCategory.create(name: HEALTHCARE, icon: '🏥', isGroup: true),
    TransactionCategory.create(name: PERSONAL, icon: '😊', isGroup: true),
    TransactionCategory.create(name: EDUCATION, icon: '🎓', isGroup: true),
    TransactionCategory.create(name: GIFTS_DONATIONS, icon: '🎈', isGroup: true),
    TransactionCategory.create(name: ENTERTAINMENT, icon: '🤗', isGroup: true),
    TransactionCategory.create(name: DEBT, icon: '💲', isGroup: true),

  ];



  static  List<TransactionCategory> getDefaultChildCategories(List<TransactionCategory> categoryGroups) {
    var housing = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == HOUSING);
    var transportation = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == TRANSPORTATION);
    var food = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == FOOD);
    var utilities = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == UTILITIES);
    var shopping = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == SHOPPING);
    var healthCare = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == HEALTHCARE);
    var personal = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == PERSONAL);
    var debt = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == DEBT);
    var education = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == EDUCATION);
    var giftsDonations = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == GIFTS_DONATIONS);
    var entertainment = categoryGroups.firstWhere((categoryGroup) => categoryGroup.name == ENTERTAINMENT);

    return [
    // Housing
    TransactionCategory.create(
        name: 'Mortgage or rent',
        icon: '🏠',
        categoryGroup: housing),
    TransactionCategory.create(
        name: 'Household Expenses',
        icon: '🏠',
        categoryGroup: housing),
    TransactionCategory.create(
        name: 'House Repairs',
        icon: '🏚',
        categoryGroup: housing),

// Transportation
    TransactionCategory.create(
        name: 'Car Expenses',
        icon: '🚘',
        categoryGroup: transportation),
    TransactionCategory.create(
        name: 'Gas',
        icon: '⛽️',
        categoryGroup: transportation),
    TransactionCategory.create(
        name: 'Car Repairs',
        icon: '🛠',
        categoryGroup: transportation),
    TransactionCategory.create(
        name: 'Taxi',
        icon: '🚕',
        categoryGroup: transportation),
    TransactionCategory.create(
        name: 'Bus',
        icon: '🚍',
        categoryGroup: transportation),
    TransactionCategory.create(
        name: 'Train / Metro',
        icon: '🚝',
        categoryGroup: transportation),
    TransactionCategory.create(
        name: 'Scooter',
        icon: '🛵',
        categoryGroup: transportation),

// Food
    TransactionCategory.create(
        name: 'Groceries',
        icon: '🛒',
        categoryGroup: food),

    TransactionCategory.create(
        name: 'Eat out',
        icon: '🍽',
        categoryGroup: food),

    TransactionCategory.create(
        name: 'Fast food',
        icon: '🍔',
        categoryGroup: food),

    TransactionCategory.create(
        name: 'Fruits',
        icon: '🍇',
        categoryGroup: food),

    TransactionCategory.create(
        name: 'Beverages',
        icon: '🍹',
        categoryGroup: food),

    TransactionCategory.create(
        name: 'Snacks',
        icon: '🍫',
        categoryGroup: food),

// Utilities
    TransactionCategory.create(
        name: 'Electricity Bill',
        icon: '💡',
        categoryGroup: utilities),
    TransactionCategory.create(
        name: 'Water Bill',
        icon: '🚰',
        categoryGroup: utilities),
    TransactionCategory.create(
        name: 'Phone bill',
        icon: '☎️',
        categoryGroup: utilities),
    TransactionCategory.create(
        name: 'Cable',
        icon: '📺',
        categoryGroup: utilities),
    TransactionCategory.create(
        name: 'Internet Bill',
        icon: '🌐',
        categoryGroup: utilities),

// Shopping
    TransactionCategory.create(
        name: 'Clothes',
        icon: '👚',
        categoryGroup: shopping),
    TransactionCategory.create(
        name: 'Electronics',
        icon: '📱',
        categoryGroup: shopping),
    TransactionCategory.create(
        name: 'Shopping',
        icon: '🛍',
        categoryGroup: shopping),

// Healthcare
    TransactionCategory.create(
        name: 'Hospital Care',
        icon: '🏥',
        categoryGroup: healthCare),
    TransactionCategory.create(
        name: 'Dental Care',
        icon: '😁',
        categoryGroup: healthCare),
    TransactionCategory.create(
        name: 'Medications',
        icon: '💊',
        categoryGroup: healthCare),

// Personal
    TransactionCategory.create(
        name: 'Gym Membership',
        icon: '🏋️',
        categoryGroup: personal),
    TransactionCategory.create(
        name: 'Hair Salon',
        icon: '💈',
        categoryGroup: personal),
    TransactionCategory.create(
        name: 'Cosmetics',
        icon: '💄',
        categoryGroup: personal),
    TransactionCategory.create(
        name: 'Subscription',
        icon: '💳',
        categoryGroup: personal),

// Debt
    TransactionCategory.create(
        name: 'Personal Loans',
        icon: '💰',
        categoryGroup: debt),
    TransactionCategory.create(
        name: 'Student Loans',
        icon: '🧑‍🎓',
        categoryGroup: debt),
    TransactionCategory.create(
        name: 'Credit Card',
        icon: '💳',
        categoryGroup: debt),

// Education
    TransactionCategory.create(
        name: 'School',
        icon: '🏫',
        categoryGroup: education),
    TransactionCategory.create(
        name: 'Books',
        icon: '📖',
        categoryGroup: education),
    TransactionCategory.create(
        name: 'Courses',
        icon: '📚',
        categoryGroup: education),

// Gifts / Donations
    TransactionCategory.create(
        name: 'Gift',
        icon: '🎁',
        categoryGroup: giftsDonations),
    TransactionCategory.create(
        name: 'Christmas',
        icon: '🎄',
        categoryGroup: giftsDonations),
    TransactionCategory.create(
        name: 'Charity',
        icon: '💝',
        categoryGroup: giftsDonations),
    TransactionCategory.create(
        name: 'Birthday',
        icon: '🎉',
        categoryGroup: giftsDonations),

// Entertainment
    TransactionCategory.create(
        name: 'Alcohol',
        icon: '🍺',
        categoryGroup: entertainment),
    TransactionCategory.create(
        name: 'Games',
        icon: '🎮',
        categoryGroup: entertainment),
    TransactionCategory.create(
        name: 'Movies',
        icon: '🍿',
        categoryGroup: entertainment),
    TransactionCategory.create(
        name: 'Concerts',
        icon: '🎸',
        categoryGroup: entertainment),
    TransactionCategory.create(
        name: 'Vacations',
        icon: '🏖',
        categoryGroup: entertainment),
    TransactionCategory.create(
        name: 'Subscription',
        icon: '💳',
        categoryGroup: entertainment),
  ];
  } 
}
