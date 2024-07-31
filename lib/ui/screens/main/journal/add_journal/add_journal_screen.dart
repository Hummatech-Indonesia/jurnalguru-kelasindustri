import 'package:flutter/material.dart';

import '../../../../../utilities/extensions.dart';
import '../../../../theme/theme_constants.dart';
import '../../../../widgets/multi_select/ui_multi_select_form_field.dart';
import '../../../../widgets/ui_date_picker_form_field.dart';
import '../../../../widgets/ui_dropdown_form_field.dart';
import '../../../../widgets/ui_screen.dart';
import '../../../../widgets/ui_text_form_field.dart';

class AddJournalScreen extends StatefulWidget {
  const AddJournalScreen({super.key});

  @override
  State<AddJournalScreen> createState() => _AddJournalScreenState();
}

class _AddJournalScreenState extends State<AddJournalScreen> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _classController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _classController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: Column(
        children: [
          _buildHeader(context),
          Expanded(child: _buildBody(context)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ThemeConstants.defaultPadding,
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton.filled(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: context.color.surface,
                    foregroundColor: context.color.onSurface,
                  ),
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  "Tambah Jurnal",
                  style: context.text.titleLarge
                      ?.weight(Weight.bold)
                      .onPrimaryColor(),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.surface,
        borderRadius: BorderRadius.only(
          topLeft: ThemeConstants.largeRadius.topLeft,
          topRight: ThemeConstants.largeRadius.topRight,
        ),
      ),
      child: SingleChildScrollView(
        padding: ThemeConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UITextFormField(
              controller: _titleController,
              label: "Judul",
              hint: "Masukkan judul",
            ),
            16.heightBox,
            UIDropdownFormField(
              label: "Kelas",
              hint: "Pilih kelas",
              options: const [
                DropdownMenuItem(value: 1, child: Text("Kelas 1")),
                DropdownMenuItem(value: 2, child: Text("Kelas 2")),
                DropdownMenuItem(value: 3, child: Text("Kelas 3")),
              ],
              onChanged: (_) {},
            ),
            16.heightBox,
            UIDatePickerFormField(
              label: "Tanggal",
              hint: "Tanggal",
              onChanged: (_) {},
            ),
            16.heightBox,
            UIDropdownFormField(
              label: "Mapel",
              hint: "Pilih Mapel",
              options: const [
                DropdownMenuItem(value: 1, child: Text("Mapel 1")),
                DropdownMenuItem(value: 2, child: Text("Mapel 2")),
                DropdownMenuItem(value: 3, child: Text("Mapel 3")),
              ],
              onChanged: (_) {},
            ),
            16.heightBox,
            UITextFormField(
              controller: _titleController,
              label: "Deskripsi Jurnal",
              hint: "Deskripsi",
              minLines: 3,
              maxLines: 5,
            ),
            16.heightBox,
            const UIMultiSelectFormField(
              label: "Sakit",
              hint: "Siswa Sakit",
              options: [
                DropdownMenuItem(value: 1, child: Text("Siswa A")),
                DropdownMenuItem(value: 2, child: Text("Siswa B")),
                DropdownMenuItem(value: 3, child: Text("Siswa C")),
                DropdownMenuItem(value: 4, child: Text("Siswa D")),
                DropdownMenuItem(value: 5, child: Text("Siswa E")),
                DropdownMenuItem(value: 6, child: Text("Siswa F")),
              ],
            ),
            16.heightBox,
            const UIMultiSelectFormField(
              label: "Alpa",
              hint: "Siswa Alpa",
              options: [
                DropdownMenuItem(value: 1, child: Text("Siswa A")),
                DropdownMenuItem(value: 2, child: Text("Siswa B")),
                DropdownMenuItem(value: 3, child: Text("Siswa C")),
              ],
            ),
            16.heightBox,
            const UIMultiSelectFormField(
              label: "Izin",
              hint: "Siswa Izin",
              options: [
                DropdownMenuItem(value: 1, child: Text("Siswa A")),
                DropdownMenuItem(value: 2, child: Text("Siswa B")),
                DropdownMenuItem(value: 3, child: Text("Siswa C")),
              ],
            ),
            48.heightBox,
            FilledButton(
              onPressed: () {},
              child: const Text("Pilih Siswa"),
            ),
          ],
        ),
      ),
    );
  }
}
