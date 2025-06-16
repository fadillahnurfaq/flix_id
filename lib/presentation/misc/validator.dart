class Validator {
  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return "Kolom ini tidak boleh kosong.";
    }
    return null;
  }

  static String? email(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }

    if (value != null && value.isNotEmpty) {
      final bool isValidEmail = RegExp(
              r"^((([a-z]|\d|[!#\$%&'*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$")
          .hasMatch(value);

      if (!isValidEmail) {
        return "Email harus berupa alamat email yang valid.";
      }
    }

    return null;
  }

  static String? phone(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }
    if (value != null && value.isNotEmpty) {
      final bool isValidPhoneNumber =
          RegExp(r'(^(?:[+0]9)?[0-9]{9,12}$)').hasMatch(value);

      if (!isValidPhoneNumber) {
        return "Nomor ponsel harus nomor ponsel yang valid.";
      }
    }
    return null;
  }

  static String? npwp(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }
    if (value != null && value.isNotEmpty) {
      final bool isValidFormat =
          RegExp(r'^\d{2}\.\d{3}\.\d{3}\.\d{1}-\d{3}\.\d{3}$').hasMatch(value);

      if (!isValidFormat) {
        return "Format tidak valid. Gunakan format ##.###.###.#-###.###";
      }
    }
    return null;
  }

  static String? url(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }
    if (value?.isNotEmpty == true) {
      final bool isValidUrl =
          RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+')
              .hasMatch(value!);

      if (!isValidUrl) {
        return "Urlnya harus berupa url yang valid.";
      }
    }
    return null;
  }

  static String? password(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }

    if (value?.isNotEmpty == true && value!.length < 8) {
      return "Kata sandi minimal harus 8 karakter.";
    }

    return null;
  }

  static String? postalCode(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }

    if (value?.isNotEmpty == true && value!.length < 5) {
      return "Kode pos harus 5 angka.";
    }

    return null;
  }

  static String? ktp(String? value, {bool isRequired = false}) {
    if (isRequired && (value == null || value.isEmpty)) {
      return "Kolom ini tidak boleh kosong.";
    }

    if (value?.isNotEmpty == true && value!.length < 16) {
      return "Nomor KTP harus 16 angka.";
    }

    return null;
  }

  static String? percent(String? value) {
    if (value == null || value.isEmpty) {
      return "Kolom ini tidak boleh kosong.";
    }

    if ((int.tryParse(value) ?? 0) > 100) {
      return "Tidak boleh lebih dari 100%.";
    }

    return null;
  }

  static String? rtOrRw(String? value) {
    if (value == null || value.isEmpty) {
      return "Kolom ini tidak boleh kosong.";
    }

    final RegExp rtRwRegex = RegExp(r'^\d{3}/\d{3}$');

    if (!rtRwRegex.hasMatch(value)) {
      return "RT/RW harus berupa RT/RW yang valid (001/001).";
    }

    return null;
  }

  static bool isHTML(String str) {
    final RegExp htmlRegExp =
        RegExp('<[^>]*>', multiLine: true, caseSensitive: false);
    return htmlRegExp.hasMatch(str);
  }
}
