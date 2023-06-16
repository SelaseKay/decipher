import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _StepperItem(currentIndex: currentIndex, index: 0,),
        const SizedBox(width: 20.0,),
         _StepperItem(currentIndex: currentIndex, index: 1,),
        const SizedBox(width: 20.0,),
         _StepperItem(currentIndex: currentIndex, index: 2,),
        const SizedBox(width: 20.0,),
         _StepperItem(currentIndex: currentIndex, index: 3,),
        const SizedBox(width: 20.0,),
      ],
    );
  }
}

class _StepperItem extends StatelessWidget {
  const _StepperItem({
    super.key,
    required this.currentIndex,
    required this.index,
  });


  final int index;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.0,
      width: 14.0,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color:
              currentIndex == index ? Colors.white : Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(7.0),
          )),
    );
  }
}
