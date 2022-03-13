import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateFormField extends FormField<DateTime> {
  DateFormField({
    FormFieldSetter<DateTime>? onSaved,
    FormFieldValidator<DateTime>? onValidate,
    DateTime? initValue,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) : super(
          onSaved: onSaved,
          validator: onValidate,
          autovalidateMode: autovalidateMode,
          initialValue: initValue ?? DateTime(2010, 1, 1),
          builder: (FormFieldState<DateTime> state) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 100,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (newDate) {
                    if (newDate != state.value) {
                      state.didChange(newDate);
                    }
                  },
                  initialDateTime: state.value,
                ),
              ),
            );
          },
        );
}
