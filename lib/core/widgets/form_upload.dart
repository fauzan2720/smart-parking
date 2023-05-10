part of 'package:smart_parking/core.dart';

class SmartFormUpload extends StatefulWidget {
  final String hint;
  final AssetImage icon;
  final String? helperText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const SmartFormUpload({
    Key? key,
    required this.hint,
    required this.icon,
    this.helperText,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  _SmartFormUploadState createState() => _SmartFormUploadState();
}

class _SmartFormUploadState extends State<SmartFormUpload> {
  late File _imageFile;

  void _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hint,
          style: const TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: _pickImage,
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: _imageFile == null
                ? Icon(
                    Icons.cloud_upload_outlined,
                    color: AppColors.grey.withOpacity(0.5),
                    size: 48,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      _imageFile,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 12),
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.text,
          validator: widget.validator,
          readOnly: true,
          decoration: InputDecoration(
            prefixIcon: ImageIcon(
              widget.icon,
              color: AppColors.grey,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                _pickImage();
              },
              icon: ImageIcon(
                AppIcons.upload,
                color: AppColors.grey,
              ),
            ),
            helperText: widget.helperText,
            helperStyle: const TextStyle(
              color: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
