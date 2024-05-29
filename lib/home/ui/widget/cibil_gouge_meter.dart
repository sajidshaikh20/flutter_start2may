import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../utils/exports.dart';

class CibilGougeMeter extends StatelessWidget {
  const CibilGougeMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/ic_ellips.png",
                  ),
                  fit: BoxFit.fill),
            ),
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                    minimum: 300,
                    maximum: 900,
                    showLabels: false,
                    showTicks: false,
                    axisLineStyle: const AxisLineStyle(
                        cornerStyle: CornerStyle.bothFlat,
                        gradient: SweepGradient(colors: <Color>[
                          Color(0xFFE83323),
                          Color(0xFFFBE760),
                          Color(0xFFFBE760),
                          Color(0xFF7BB937),
                        ], stops: <double>[
                          0.20,
                          0.50,
                          0.20,
                          0.80,
                        ]),
                        thickness: 10),
                    pointers: const <GaugePointer>[
                      NeedlePointer(
                        value: 600,
                        lengthUnit: GaugeSizeUnit.factor,
                        needleLength: 0.5,
                        needleStartWidth: 1,
                        needleColor: Colors.grey,
                        knobStyle: KnobStyle(color: Colors.grey),
                        needleEndWidth: 3,
                      ),
                      /*RangePointer(
                        value: 0,
                      )*/
                      /*  WidgetPointer(
                        value: 10,
                        offset: 25,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(
                            'assets/svg/ic_needles.svg',
                          ),
                        ),
                      )*/
                    ]),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                data: "300",
                fontSize: 7.5.sp,
                fontWeight: FontWeight.w400,
                opacity: 0.5,
              ),
              const SizedBox(
                width: 30,
              ),
              CustomTextWidget(
                data: "900",
                fontSize: 7.5.sp,
                fontWeight: FontWeight.w400,
                opacity: 0.5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
