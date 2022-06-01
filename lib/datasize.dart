import 'package:flutter/material.dart';

class detasize
{
  static double? width,height,sthight,btheight,appheight,bodyheight;

  detasize(BuildContext context)
  {
    width= MediaQuery.of(context).size.width;
    height= MediaQuery.of(context).size.height;
    sthight= MediaQuery.of(context).padding.top;
    btheight= MediaQuery.of(context).padding.bottom;
    appheight=kToolbarHeight;
    bodyheight=height!-sthight!-btheight!-appheight!;
  }
}