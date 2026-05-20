import 'package:flutter/material.dart';
import 'package:somiti_app/responsive.dart';

class CumulativeSavingsCard extends StatelessWidget {
  const CumulativeSavingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      height: isMobile ? 320 : 464,
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cumulative Savings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Last 7 months growth",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff64748B),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffEFF6FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "৳30,000 growth",
                  style: TextStyle(
                    color: Color(0xff2563EB),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          const Expanded(child: SimpleLineChart()),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}

class SimpleLineChart extends StatelessWidget {
  const SimpleLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LineChartPainter(),
      child: const SizedBox.expand(),
    );
  }
}

class LineChartPainter extends CustomPainter {
  final List<double> values = const [25, 30, 35, 40, 45, 50, 55];
  final List<String> months = const ["Oct", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr"];

  @override
  void paint(Canvas canvas, Size size) {
    final gridPaint = Paint()
      ..color = const Color(0xffE5E7EB)
      ..strokeWidth = 1;

    final linePaint = Paint()
      ..color = const Color(0xff2563EB)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final fillPaint = Paint()
      ..color = const Color(0xff2563EB).withOpacity(0.08);

    final dotPaint = Paint()
      ..color = const Color(0xff2563EB);

    const left = 42.0;
    const bottom = 28.0;
    const top = 10.0;
    final chartWidth = size.width - left - 12;
    final chartHeight = size.height - top - bottom;

    for (int i = 0; i < 5; i++) {
      final y = top + chartHeight / 4 * i;
      canvas.drawLine(Offset(left, y), Offset(size.width, y), gridPaint);
    }

    final points = <Offset>[];
    for (int i = 0; i < values.length; i++) {
      final x = left + chartWidth / (values.length - 1) * i;
      final y = top + chartHeight - ((values[i] / 60) * chartHeight);
      points.add(Offset(x, y));
    }

    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (final p in points.skip(1)) {
      path.lineTo(p.dx, p.dy);
    }

    final fillPath = Path.from(path)
      ..lineTo(points.last.dx, top + chartHeight)
      ..lineTo(points.first.dx, top + chartHeight)
      ..close();

    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(path, linePaint);

    for (final p in points) {
      canvas.drawCircle(p, 5, dotPaint);
      canvas.drawCircle(p, 2.5, Paint()..color = Colors.white);
    }

    final labels = ["৳0k", "৳15k", "৳30k", "৳45k", "৳60k"];
    for (int i = 0; i < labels.length; i++) {
      _drawText(
        canvas,
        labels[labels.length - 1 - i],
        Offset(0, top + chartHeight / 4 * i - 7),
      );
    }

    for (int i = 0; i < months.length; i++) {
      final x = left + chartWidth / (months.length - 1) * i - 10;
      _drawText(canvas, months[i], Offset(x, top + chartHeight + 8));
    }
  }

  void _drawText(Canvas canvas, String text, Offset offset) {
    final painter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: Color(0xff94A3B8),
          fontSize: 11,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    painter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}