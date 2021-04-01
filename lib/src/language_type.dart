enum LanguageType {
  RU,
  UK,
  BE,
  EN,
  ES,
  FI,
  DE,
  IT,
}

final List<String> languages = [
  'ru',
  'uk',
  'be',
  'en',
  'es',
  'fi',
  'de',
  'it',
];

String getLanguageString(LanguageType? lang) {
  return languages[lang!.index];
}
