import 'package:ecom_2026/features/shipping_address/model/address.dart';

class AddressRepository {
  List<Address> getAddresses() {
    return const [
      Address(
        id: '1',
        label: 'Home',
        fullAddress: '123 Main Street, apt 48',
        city: 'New York',
        state: 'NY',
        zipCode: '10001',
        isDefault: true,
        type: AddressType.home,
      ),
      Address(
        id: '2',
        label: 'Office',
        fullAddress: '456 Madison Avenue, floor 12',
        city: 'New York',
        state: 'NY',
        zipCode: '10022',
        isDefault: false,
        type: AddressType.office,
      ),
      Address(
        id: '3',
        label: 'Parents House',
        fullAddress: '789 Oak Street',
        city: 'Brooklyn',
        state: 'NY',
        zipCode: '11201',
        isDefault: false,
        type: AddressType.other,
      ),
      Address(
        id: '4',
        label: 'Beach House',
        fullAddress: '321 Ocean Drive',
        city: 'Miami',
        state: 'FL',
        zipCode: '33139',
        isDefault: false,
        type: AddressType.other,
      ),
      Address(
        id: '5',
        label: 'Work Branch',
        fullAddress: '987 Corporate Blvd, Suite 300',
        city: 'San Francisco',
        state: 'CA',
        zipCode: '94105',
        isDefault: false,
        type: AddressType.office,
      ),
    ];
  }

  Address? getDefaultAddress() {
    return getAddresses().firstWhere(
      (addreess) => addreess.isDefault,
      orElse: () => getAddresses().first,
    );
  }
}
