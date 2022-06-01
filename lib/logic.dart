import 'package:get/get.dart';

class logic extends GetxController {
  RxString s1 = "".obs,
      s2 = "".obs,
      s3 = "".obs,
      s4 = "".obs,
      s5 = "".obs,
      s6 = "".obs,
      s7 = "".obs,
      s8 = "".obs,
      s9 = "".obs;
  RxInt t = 0.obs, o = 0.obs, x = 0.obs;
  RxString turn = "0".obs, win = "".obs;
  RxList<bool> check = List.filled(9, true).obs;

  resetgame() {
    s1.value = "";
    s2.value = "";
    s3.value = "";
    s4.value = "";
    s5.value = "";
    s6.value = "";
    s7.value = "";
    s8.value = "";
    s9.value = "";
    t.value = 0;
    o.value = 0;
    x.value = 0;
    turn.value = "0";
    win.value = "";
  }

  wincheck() {
    if ((s1.value == "0" && s2.value == "0" && s3.value == "0") ||
        (s4.value == "0" && s5.value == "0" && s6.value == "0") ||
        (s7.value == "0" && s8.value == "0" && s9.value == "0") ||
        (s1.value == "0" && s4.value == "0" && s7.value == "0") ||
        (s2.value == "0" && s5.value == "0" && s8.value == "0") ||
        (s3.value == "0" && s6.value == "0" && s9.value == "0") ||
        (s1.value == "0" && s5.value == "0" && s9.value == "0") ||
        (s3.value == "0" && s5.value == "0" && s7.value == "0")) {
      win.value = "'o is win'";
    }
    if ((s1.value == "x" && s2.value == "x" && s3.value == "x") ||
        (s4.value == "x" && s5.value == "x" && s6.value == "x") ||
        (s7.value == "x" && s8.value == "x" && s9.value == "x") ||
        (s1.value == "x" && s4.value == "x" && s7.value == "x") ||
        (s2.value == "x" && s5.value == "x" && s8.value == "x") ||
        (s3.value == "x" && s6.value == "x" && s9.value == "x") ||
        (s1.value == "x" && s5.value == "x" && s9.value == "x") ||
        (s3.value == "x" && s5.value == "x" && s7.value == "x")) {
      win.value = "'x is win'";
    }
  }

  setvvl(int l) {
    if (l == 1) {
      if (t.value % 2 == 0) {
        s1.value = "0";
        o++;
        turn.value = "x";
      } else {
        s1.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      check.value[0] = false;
      wincheck();
    }
    if (l == 2) {
      if (t.value % 2 == 0) {
        s2.value = "0";
        o++;
        turn.value = "x";
      } else {
        s2.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      check[1]=false;
      wincheck();
    }
    if (l == 3) {
      if (t.value % 2 == 0) {
        s3.value = "0";
        o++;
        turn.value = "x";
      } else {
        s3.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
    if (l == 4) {
      if (t.value % 2 == 0) {
        s4.value = "0";
        o++;
        turn.value = "x";
      } else {
        s4.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
    if (l == 5) {
      if (t.value % 2 == 0) {
        s5.value = "0";
        o++;
        turn.value = "x";
      } else {
        s5.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
    if (l == 6) {
      if (t.value % 2 == 0) {
        s6.value = "0";
        o++;
        turn.value = "x";
      } else {
        s6.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
    if (l == 7) {
      if (t.value % 2 == 0) {
        s7.value = "0";
        o++;
        turn.value = "x";
      } else {
        s7.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
    if (l == 8) {
      if (t.value % 2 == 0) {
        s8.value = "0";
        o++;
        turn.value = "x";
      } else {
        s8.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
    if (l == 9) {
      if (t.value % 2 == 0) {
        s9.value = "0";
        o++;
        turn.value = "x";
      } else {
        s9.value = "x";
        x++;
        turn.value = "0";
      }
      t++;
      wincheck();
    }
  }
}
