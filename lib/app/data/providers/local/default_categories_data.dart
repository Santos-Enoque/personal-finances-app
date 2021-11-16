import 'package:moneyro/app/shared/models/category/category.dart';
class DefaultCategoriesData {
  static final List<TransactionCategory> initialCategoryGroups = [
    TransactionCategory.create(name: 'Housing', icon: '🏠', isGroup: true),
    TransactionCategory.create(name: 'Transportation', icon: '🚀', isGroup: true),
    TransactionCategory.create(name: 'Food', icon: '🍴', isGroup: true),
    TransactionCategory.create(name: 'Utilities', icon: '📄', isGroup: true),
    TransactionCategory.create(name: 'Shopping', icon: '🛍', isGroup: true),
    TransactionCategory.create(name: 'Healthcare', icon: '🏥', isGroup: true),
    TransactionCategory.create(name: 'Personal', icon: '😊', isGroup: true),
    TransactionCategory.create(name: 'Education', icon: '🎓', isGroup: true),
    TransactionCategory.create(name: 'Gifts / Donations', icon: '🎈', isGroup: true),
    TransactionCategory.create(name: 'Entertainment', icon: '🤗', isGroup: true),
  ];

//  converting categories group to map is optional
  static final initialCategoryGroupsMap = {
    for (TransactionCategory categoryGroup in initialCategoryGroups)
      categoryGroup.name: categoryGroup
  };

  static final List<TransactionCategory> categories = [
    // Housing
    TransactionCategory.create(
        name: 'Mortgage or rent',
        icon: '🏠',
        categoryGroup: initialCategoryGroupsMap['Housing']),
    TransactionCategory.create(
        name: 'Household Expenses',
        icon: '🏠',
        categoryGroup: initialCategoryGroupsMap['Housing']),
    TransactionCategory.create(
        name: 'House Repairs',
        icon: '🏚',
        categoryGroup: initialCategoryGroupsMap['Housing']),

// Transportation
    TransactionCategory.create(
        name: 'Car Expenses',
        icon: '🚘',
        categoryGroup: initialCategoryGroupsMap['Transportation']),
    TransactionCategory.create(
        name: 'Gas',
        icon: '⛽️',
        categoryGroup: initialCategoryGroupsMap['Transportation']),
    TransactionCategory.create(
        name: 'Car Repairs',
        icon: '🛠',
        categoryGroup: initialCategoryGroupsMap['Transportation']),
    TransactionCategory.create(
        name: 'Taxi',
        icon: '🚕',
        categoryGroup: initialCategoryGroupsMap['Transportation']),
    TransactionCategory.create(
        name: 'Bus',
        icon: '🚍',
        categoryGroup: initialCategoryGroupsMap['Transportation']),
    TransactionCategory.create(
        name: 'Train / Metro',
        icon: '🚝',
        categoryGroup: initialCategoryGroupsMap['Transportation']),
    TransactionCategory.create(
        name: 'Scooter',
        icon: '🛵',
        categoryGroup: initialCategoryGroupsMap['Transportation']),

// Food
    TransactionCategory.create(
        name: 'Groceries',
        icon: '🛒',
        categoryGroup: initialCategoryGroupsMap['Food']),

    TransactionCategory.create(
        name: 'Eat out',
        icon: '🍽',
        categoryGroup: initialCategoryGroupsMap['Food']),

    TransactionCategory.create(
        name: 'Fast food',
        icon: '🍔',
        categoryGroup: initialCategoryGroupsMap['Food']),

    TransactionCategory.create(
        name: 'Fruits',
        icon: '🍇',
        categoryGroup: initialCategoryGroupsMap['Food']),

    TransactionCategory.create(
        name: 'Beverages',
        icon: '🍹',
        categoryGroup: initialCategoryGroupsMap['Food']),

    TransactionCategory.create(
        name: 'Snacks',
        icon: '🍫',
        categoryGroup: initialCategoryGroupsMap['Food']),

// Utilities
    TransactionCategory.create(
        name: 'Electricity Bill',
        icon: '💡',
        categoryGroup: initialCategoryGroupsMap['Utilities']),
    TransactionCategory.create(
        name: 'Water Bill',
        icon: '🚰',
        categoryGroup: initialCategoryGroupsMap['Utilities']),
    TransactionCategory.create(
        name: 'Phone bill',
        icon: '☎️',
        categoryGroup: initialCategoryGroupsMap['Utilities']),
    TransactionCategory.create(
        name: 'Cable',
        icon: '📺',
        categoryGroup: initialCategoryGroupsMap['Utilities']),
    TransactionCategory.create(
        name: 'Internet Bill',
        icon: '🌐',
        categoryGroup: initialCategoryGroupsMap['Utilities']),

// Shopping
    TransactionCategory.create(
        name: 'Clothes',
        icon: '👚',
        categoryGroup: initialCategoryGroupsMap['Shopping']),
    TransactionCategory.create(
        name: 'Electronics',
        icon: '📱',
        categoryGroup: initialCategoryGroupsMap['Shopping']),
    TransactionCategory.create(
        name: 'Shopping',
        icon: '🛍',
        categoryGroup: initialCategoryGroupsMap['Shopping']),

// Healthcare
    TransactionCategory.create(
        name: 'Hospital Care',
        icon: '🏥',
        categoryGroup: initialCategoryGroupsMap['Healthcare']),
    TransactionCategory.create(
        name: 'Dental Care',
        icon: '😁',
        categoryGroup: initialCategoryGroupsMap['Healthcare']),
    TransactionCategory.create(
        name: 'Medications',
        icon: '💊',
        categoryGroup: initialCategoryGroupsMap['Healthcare']),

// Personal
    TransactionCategory.create(
        name: 'Gym Membership',
        icon: '🏋️',
        categoryGroup: initialCategoryGroupsMap['Personal']),
    TransactionCategory.create(
        name: 'Hair Salon',
        icon: '💈',
        categoryGroup: initialCategoryGroupsMap['Personal']),
    TransactionCategory.create(
        name: 'Cosmetics',
        icon: '💄',
        categoryGroup: initialCategoryGroupsMap['Personal']),
    TransactionCategory.create(
        name: 'Subscription',
        icon: '💳',
        categoryGroup: initialCategoryGroupsMap['Personal']),

// Debt
    TransactionCategory.create(
        name: 'Personal Loans',
        icon: '💰',
        categoryGroup: initialCategoryGroupsMap['Debt']),
    TransactionCategory.create(
        name: 'Student Loans',
        icon: '🧑‍🎓',
        categoryGroup: initialCategoryGroupsMap['Debt']),
    TransactionCategory.create(
        name: 'Credit Card',
        icon: '💳',
        categoryGroup: initialCategoryGroupsMap['Debt']),

// Education
    TransactionCategory.create(
        name: 'School',
        icon: '🏫',
        categoryGroup: initialCategoryGroupsMap['Education']),
    TransactionCategory.create(
        name: 'Books',
        icon: '📖',
        categoryGroup: initialCategoryGroupsMap['Education']),
    TransactionCategory.create(
        name: 'Courses',
        icon: '📚',
        categoryGroup: initialCategoryGroupsMap['Education']),

// Gifts / Donations
    TransactionCategory.create(
        name: 'Gift',
        icon: '🎁',
        categoryGroup: initialCategoryGroupsMap['Gifts / Donations']),
    TransactionCategory.create(
        name: 'Christmas',
        icon: '🎄',
        categoryGroup: initialCategoryGroupsMap['Gifts / Donations']),
    TransactionCategory.create(
        name: 'Charity',
        icon: '💝',
        categoryGroup: initialCategoryGroupsMap['Gifts / Donations']),
    TransactionCategory.create(
        name: 'Birthday',
        icon: '🎉',
        categoryGroup: initialCategoryGroupsMap['Gifts / Donations']),

// Entertainment
    TransactionCategory.create(
        name: 'Alcohol',
        icon: '🍺',
        categoryGroup: initialCategoryGroupsMap['Entertainment']),
    TransactionCategory.create(
        name: 'Games',
        icon: '🎮',
        categoryGroup: initialCategoryGroupsMap['Entertainment']),
    TransactionCategory.create(
        name: 'Movies',
        icon: '🍿',
        categoryGroup: initialCategoryGroupsMap['Entertainment']),
    TransactionCategory.create(
        name: 'Concerts',
        icon: '🎸',
        categoryGroup: initialCategoryGroupsMap['Entertainment']),
    TransactionCategory.create(
        name: 'Vacations',
        icon: '🏖',
        categoryGroup: initialCategoryGroupsMap['Entertainment']),
    TransactionCategory.create(
        name: 'Subscription',
        icon: '💳',
        categoryGroup: initialCategoryGroupsMap['Entertainment']),
  ];
}
