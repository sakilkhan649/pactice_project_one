import 'package:get/get.dart';

class DopdownController extends GetxController {
  var selectedTraining = Rx<String?>(null);
  var selectedWomen = Rx<String?>(null);
  var selectedWomenlist = Rx<String?>(null);

  final List<String> training = ['Yes', 'No'];
  final List<String> women = [
    'Follicular',
    'Ovulation',
    'Luteal',
    'Menstruation',
  ];
  final List<String> womenlist = [
    'Everything Fine',
    'Cramps',
    'Breast Tenderness',
    'Headache',
    'Acne',
    'Lower Back Pain',
    'Tiredness',
    'Cravings',
    'Sleepless',
    'Abdominal Pain',
    'Vaginal Itching',
    'Vaginal Dryness',
  ];
}
