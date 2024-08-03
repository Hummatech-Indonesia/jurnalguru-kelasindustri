import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entities/failure/failure.dart';
import '../../../../../domain/entities/student.dart';
import '../../../../../utilities/extensions.dart';
import '../../../../providers/journal/journals_provider.dart';
import '../../../../providers/student/students_provider.dart';
import '../../../../theme/theme_constants.dart';
import '../../../../widgets/multi_select/ui_multi_select_form_field.dart';
import '../../../../widgets/ui_screen.dart';
import '../../../../widgets/ui_text_form_field.dart';
import 'widget/image_picker_dialog.dart';

class AddJournalScreen extends ConsumerStatefulWidget {
  const AddJournalScreen({super.key});

  @override
  ConsumerState<AddJournalScreen> createState() => _AddJournalScreenState();
}

class _AddJournalScreenState extends ConsumerState<AddJournalScreen> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<int> _sickStudents = [];
  List<int> _absentStudents = [];
  List<int> _permitStudents = [];

  File? _image;

  bool _isLoading = false;

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    if (_image == null) Failure('Image is required').snackbar(context);

    try {
      setState(() => _isLoading = true);

      await ref.read(journalsProvider.notifier).add(
            title: _titleController.text,
            description: _descriptionController.text,
            image: _image!,
            sicks: _sickStudents,
            absents: _absentStudents,
            permits: _permitStudents,
          );

      if (mounted) {
        Navigator.of(context).pop();
      }
    } on Failure catch (e) {
      if (mounted) e.snackbar(context);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: Column(
        children: [
          buildHeader(context),
          Expanded(child: buildBody(context)),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
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

  Widget buildBody(BuildContext context) {
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UITextFormField(
                controller: _titleController,
                label: "Judul",
                hint: "Masukkan judul",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Masukkan judul";
                  }
                  return null;
                },
              ),
              16.heightBox,
              UITextFormField(
                controller: _descriptionController,
                label: "Deskripsi Jurnal",
                hint: "Deskripsi",
                minLines: 3,
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Masukkan deskripsi";
                  }

                  if (value.length < 100) {
                    return "Deskripsi harus lebih dari 100 karakter";
                  }

                  return null;
                },
              ),
              16.heightBox,
              Consumer(
                builder: (context, ref, child) {
                  final students = ref.watch(studentsProvider);

                  return students.display(
                    (students) => UIMultiSelectFormField(
                      label: "Sakit",
                      hint: "Siswa Sakit",
                      options: mapStudentsToDropdownMenuItem("sick", students),
                      onChanged: (value) {
                        setState(() {
                          _sickStudents = value;
                        });
                      },
                    ),
                  );
                },
              ),
              16.heightBox,
              Consumer(
                builder: (context, ref, child) {
                  final students = ref.watch(studentsProvider);

                  return students.display(
                    (students) => UIMultiSelectFormField(
                      label: "Alpa",
                      hint: "Siswa Alpa",
                      options:
                          mapStudentsToDropdownMenuItem("absent", students),
                      onChanged: (value) {
                        setState(() {
                          _absentStudents = value;
                        });
                      },
                    ),
                  );
                },
              ),
              16.heightBox,
              Consumer(
                builder: (context, ref, child) {
                  final students = ref.watch(studentsProvider);

                  return students.display(
                    (students) => UIMultiSelectFormField(
                      label: "Izin",
                      hint: "Siswa Izin",
                      options:
                          mapStudentsToDropdownMenuItem("permit", students),
                      onChanged: (value) {
                        setState(() {
                          _permitStudents = value;
                        });
                      },
                    ),
                  );
                },
              ),
              16.heightBox,
              Text(
                "Foto Jurnal",
                style: context.text.bodyLarge?.weight(Weight.medium),
              ),
              4.heightBox,
              if (_image != null)
                _buildImagePicker(context)
              else
                AspectRatio(
                  aspectRatio: 1,
                  child: _buildImagePicker(context),
                ),
              38.heightBox,
              FilledButton(
                onPressed: _isLoading ? null : _submit,
                child: _isLoading
                    ? const CircularProgressIndicator()
                    : const Text("Tambah Jurnal"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material _buildImagePicker(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () async {
          final result = await ImagePickerDialog.pick(context);

          if (result != null) {
            setState(() {
              _image = result;
            });
          }
        },
        borderRadius: ThemeConstants.mediumRadius,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: context.color.onSurface.withOpacity(0.2),
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: ThemeConstants.mediumRadius,
          ),
          child: _image != null
              ? ClipRRect(
                  borderRadius: ThemeConstants.mediumRadius,
                  child: Image.file(
                    _image!,
                    fit: BoxFit.cover,
                  ),
                )
              : Icon(
                  Icons.camera_alt_rounded,
                  color: context.color.onSurface.withOpacity(0.2),
                  size: 48,
                ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<int>> mapStudentsToDropdownMenuItem(
    String type,
    List<Student> students,
  ) {
    var filtered = students.map((e) => e.studentClassroom!.id!).toSet();

    if (type == "sick") {
      filtered = filtered
          .difference(_absentStudents.toSet())
          .difference(_permitStudents.toSet());
    } else if (type == "absent") {
      filtered = filtered
          .difference(_sickStudents.toSet())
          .difference(_permitStudents.toSet());
    } else if (type == "permit") {
      filtered = filtered
          .difference(_sickStudents.toSet())
          .difference(_absentStudents.toSet());
    }

    final result = students
        .where((e) => filtered.contains(e.studentClassroom!.id!))
        .toList();

    return result
        .map((data) => DropdownMenuItem(
              value: data.studentClassroom!.id!,
              child: Text(data.student?.name ?? '-'),
            ))
        .toList();
  }
}
