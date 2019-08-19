import './models/all_locales_test.dart' as all_locales;
import './models/asset_test.dart' as asset;
import './models/field_test.dart' as field;
import './models/field_type_test.dart' as field_type;
import './models/locale_test.dart' as locale;
import './models/location_test.dart' as location;
import './models/space_test.dart' as space;
import './models/system_fields_test.dart' as sys;
import './networking/contentful_client_test.dart' as client;

void main() {
  all_locales.main();
  asset.main();
  client.main();
  field_type.main();
  field.main();
  locale.main();
  location.main();
  space.main();
  sys.main();
}
