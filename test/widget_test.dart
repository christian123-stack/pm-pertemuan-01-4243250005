import 'package:flutter_test/flutter_test.dart';
import 'package:pm_pertemuan_01_4243250005/tr1.dart';

void main() {
  testWidgets('shows student identity and responds to the greeting button',
      (tester) async {
    await tester.pumpWidget(const TugasRutinApp());

    expect(find.text('Hello, World!'), findsOneWidget);
    expect(find.text('Saya Christian Nicholas Sinaga'), findsOneWidget);
    expect(find.text('NIM 4243250005  •  PSIK 24C'), findsOneWidget);

    await tester.tap(find.text('Sapa saya'));
    await tester.pump();

    expect(find.text('Senang bertemu denganmu!'), findsOneWidget);
    expect(find.text('Ulangi sapaan'), findsOneWidget);
  });
}
