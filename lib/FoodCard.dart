import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final String fName;
  final String fDescription;
  final String fPrice;
  final String fImage;

  const FoodCard({
    Key? key,
    required this.fName,
    required this.fImage,
    required this.fDescription,
    required this.fPrice,
  }) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true), // Detect hover
      onExit: (_) => setState(() => _isHovered = false), // Detect exit
      child: Card(
        elevation: _isHovered ? 8 : 4, // Increase shadow on hover
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 150,
          width: 300,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              // Food Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  widget.fImage,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12), // Spacing between image and text

              // Food Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.fName, // ✅ Fixed: Use `widget.fName`
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      widget.fDescription, // ✅ Correct
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "\$ ${widget.fPrice}", // ✅ Correct
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
