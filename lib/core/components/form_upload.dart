import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';

class SmartFormUpload extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final AssetImage icon;
  final String? helperText;
  final String? Function(String?)? validator;

  const SmartFormUpload({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.helperText,
    this.validator,
  });

  @override
  State<SmartFormUpload> createState() => _SmartFormUploadState();
}

class _SmartFormUploadState extends State<SmartFormUpload> {
  String? _imageUrl;

  @override
  void initState() {
    super.initState();
    if (widget.controller.text.isNotEmpty) {
      _imageUrl = widget.controller.text;
    }
  }

  void _pickImage() async {
    final XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      widget.controller.text = pickedImage.path;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _imageUrl == null
            ? const SizedBox()
            : InkWell(
                onTap: _pickImage,
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      _imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
        if (_imageUrl != null) 12.0.height,
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.text,
          validator: widget.validator,
          readOnly: true,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: AppColors.grey.withOpacity(0.5),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grey,
              ),
            ),
            prefixIcon: Transform.scale(
              scale: 0.5,
              child: ImageIcon(
                widget.icon,
                color: AppColors.grey,
              ),
            ),
            helperText: widget.helperText,
            helperStyle: const TextStyle(
              color: AppColors.grey,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                _pickImage();
              },
              icon: const ImageIcon(
                AppIcons.upload,
                color: AppColors.grey,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
