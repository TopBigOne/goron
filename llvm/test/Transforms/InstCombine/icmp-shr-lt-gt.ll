; RUN: opt < %s -instcombine -S | FileCheck %s

define i1 @lshrugt_01_00(i4 %x) {
; CHECK-LABEL: @lshrugt_01_00(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 0
  ret i1 %c
}

define i1 @lshrugt_01_01(i4 %x) {
; CHECK-LABEL: @lshrugt_01_01(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 3
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 1
  ret i1 %c
}

define i1 @lshrugt_01_02(i4 %x) {
; CHECK-LABEL: @lshrugt_01_02(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 5
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 2
  ret i1 %c
}

define i1 @lshrugt_01_03(i4 %x) {
; CHECK-LABEL: @lshrugt_01_03(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 3
  ret i1 %c
}

define i1 @lshrugt_01_04(i4 %x) {
; CHECK-LABEL: @lshrugt_01_04(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, -7
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 4
  ret i1 %c
}

define i1 @lshrugt_01_05(i4 %x) {
; CHECK-LABEL: @lshrugt_01_05(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, -5
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 5
  ret i1 %c
}

define i1 @lshrugt_01_06(i4 %x) {
; CHECK-LABEL: @lshrugt_01_06(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, -3
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 6
  ret i1 %c
}

define i1 @lshrugt_01_07(i4 %x) {
; CHECK-LABEL: @lshrugt_01_07(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 7
  ret i1 %c
}

define i1 @lshrugt_01_08(i4 %x) {
; CHECK-LABEL: @lshrugt_01_08(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 8
  ret i1 %c
}

define i1 @lshrugt_01_09(i4 %x) {
; CHECK-LABEL: @lshrugt_01_09(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 9
  ret i1 %c
}

define i1 @lshrugt_01_10(i4 %x) {
; CHECK-LABEL: @lshrugt_01_10(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 10
  ret i1 %c
}

define i1 @lshrugt_01_11(i4 %x) {
; CHECK-LABEL: @lshrugt_01_11(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 11
  ret i1 %c
}

define i1 @lshrugt_01_12(i4 %x) {
; CHECK-LABEL: @lshrugt_01_12(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 12
  ret i1 %c
}

define i1 @lshrugt_01_13(i4 %x) {
; CHECK-LABEL: @lshrugt_01_13(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 13
  ret i1 %c
}

define i1 @lshrugt_01_14(i4 %x) {
; CHECK-LABEL: @lshrugt_01_14(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 14
  ret i1 %c
}

define i1 @lshrugt_01_15(i4 %x) {
; CHECK-LABEL: @lshrugt_01_15(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ugt i4 %s, 15
  ret i1 %c
}

define i1 @lshrugt_02_00(i4 %x) {
; CHECK-LABEL: @lshrugt_02_00(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 3
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 0
  ret i1 %c
}

define i1 @lshrugt_02_01(i4 %x) {
; CHECK-LABEL: @lshrugt_02_01(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 1
  ret i1 %c
}

define i1 @lshrugt_02_02(i4 %x) {
; CHECK-LABEL: @lshrugt_02_02(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, -5
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 2
  ret i1 %c
}

define i1 @lshrugt_02_03(i4 %x) {
; CHECK-LABEL: @lshrugt_02_03(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 3
  ret i1 %c
}

define i1 @lshrugt_02_04(i4 %x) {
; CHECK-LABEL: @lshrugt_02_04(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 4
  ret i1 %c
}

define i1 @lshrugt_02_05(i4 %x) {
; CHECK-LABEL: @lshrugt_02_05(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 5
  ret i1 %c
}

define i1 @lshrugt_02_06(i4 %x) {
; CHECK-LABEL: @lshrugt_02_06(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 6
  ret i1 %c
}

define i1 @lshrugt_02_07(i4 %x) {
; CHECK-LABEL: @lshrugt_02_07(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 7
  ret i1 %c
}

define i1 @lshrugt_02_08(i4 %x) {
; CHECK-LABEL: @lshrugt_02_08(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 8
  ret i1 %c
}

define i1 @lshrugt_02_09(i4 %x) {
; CHECK-LABEL: @lshrugt_02_09(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 9
  ret i1 %c
}

define i1 @lshrugt_02_10(i4 %x) {
; CHECK-LABEL: @lshrugt_02_10(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 10
  ret i1 %c
}

define i1 @lshrugt_02_11(i4 %x) {
; CHECK-LABEL: @lshrugt_02_11(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 11
  ret i1 %c
}

define i1 @lshrugt_02_12(i4 %x) {
; CHECK-LABEL: @lshrugt_02_12(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 12
  ret i1 %c
}

define i1 @lshrugt_02_13(i4 %x) {
; CHECK-LABEL: @lshrugt_02_13(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 13
  ret i1 %c
}

define i1 @lshrugt_02_14(i4 %x) {
; CHECK-LABEL: @lshrugt_02_14(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 14
  ret i1 %c
}

define i1 @lshrugt_02_15(i4 %x) {
; CHECK-LABEL: @lshrugt_02_15(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ugt i4 %s, 15
  ret i1 %c
}

define i1 @lshrugt_03_00(i4 %x) {
; CHECK-LABEL: @lshrugt_03_00(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 0
  ret i1 %c
}

define i1 @lshrugt_03_01(i4 %x) {
; CHECK-LABEL: @lshrugt_03_01(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 1
  ret i1 %c
}

define i1 @lshrugt_03_02(i4 %x) {
; CHECK-LABEL: @lshrugt_03_02(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 2
  ret i1 %c
}

define i1 @lshrugt_03_03(i4 %x) {
; CHECK-LABEL: @lshrugt_03_03(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 3
  ret i1 %c
}

define i1 @lshrugt_03_04(i4 %x) {
; CHECK-LABEL: @lshrugt_03_04(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 4
  ret i1 %c
}

define i1 @lshrugt_03_05(i4 %x) {
; CHECK-LABEL: @lshrugt_03_05(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 5
  ret i1 %c
}

define i1 @lshrugt_03_06(i4 %x) {
; CHECK-LABEL: @lshrugt_03_06(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 6
  ret i1 %c
}

define i1 @lshrugt_03_07(i4 %x) {
; CHECK-LABEL: @lshrugt_03_07(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 7
  ret i1 %c
}

define i1 @lshrugt_03_08(i4 %x) {
; CHECK-LABEL: @lshrugt_03_08(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 8
  ret i1 %c
}

define i1 @lshrugt_03_09(i4 %x) {
; CHECK-LABEL: @lshrugt_03_09(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 9
  ret i1 %c
}

define i1 @lshrugt_03_10(i4 %x) {
; CHECK-LABEL: @lshrugt_03_10(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 10
  ret i1 %c
}

define i1 @lshrugt_03_11(i4 %x) {
; CHECK-LABEL: @lshrugt_03_11(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 11
  ret i1 %c
}

define i1 @lshrugt_03_12(i4 %x) {
; CHECK-LABEL: @lshrugt_03_12(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 12
  ret i1 %c
}

define i1 @lshrugt_03_13(i4 %x) {
; CHECK-LABEL: @lshrugt_03_13(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 13
  ret i1 %c
}

define i1 @lshrugt_03_14(i4 %x) {
; CHECK-LABEL: @lshrugt_03_14(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 14
  ret i1 %c
}

define i1 @lshrugt_03_15(i4 %x) {
; CHECK-LABEL: @lshrugt_03_15(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ugt i4 %s, 15
  ret i1 %c
}

define i1 @lshrult_01_00(i4 %x) {
; CHECK-LABEL: @lshrult_01_00(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 0
  ret i1 %c
}

define i1 @lshrult_01_01(i4 %x) {
; CHECK-LABEL: @lshrult_01_01(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, 2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 1
  ret i1 %c
}

define i1 @lshrult_01_02(i4 %x) {
; CHECK-LABEL: @lshrult_01_02(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 2
  ret i1 %c
}

define i1 @lshrult_01_03(i4 %x) {
; CHECK-LABEL: @lshrult_01_03(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, 6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 3
  ret i1 %c
}

define i1 @lshrult_01_04(i4 %x) {
; CHECK-LABEL: @lshrult_01_04(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 4
  ret i1 %c
}

define i1 @lshrult_01_05(i4 %x) {
; CHECK-LABEL: @lshrult_01_05(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, -6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 5
  ret i1 %c
}

define i1 @lshrult_01_06(i4 %x) {
; CHECK-LABEL: @lshrult_01_06(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 6
  ret i1 %c
}

define i1 @lshrult_01_07(i4 %x) {
; CHECK-LABEL: @lshrult_01_07(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, -2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 7
  ret i1 %c
}

define i1 @lshrult_01_08(i4 %x) {
; CHECK-LABEL: @lshrult_01_08(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 8
  ret i1 %c
}

define i1 @lshrult_01_09(i4 %x) {
; CHECK-LABEL: @lshrult_01_09(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 9
  ret i1 %c
}

define i1 @lshrult_01_10(i4 %x) {
; CHECK-LABEL: @lshrult_01_10(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 10
  ret i1 %c
}

define i1 @lshrult_01_11(i4 %x) {
; CHECK-LABEL: @lshrult_01_11(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 11
  ret i1 %c
}

define i1 @lshrult_01_12(i4 %x) {
; CHECK-LABEL: @lshrult_01_12(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 12
  ret i1 %c
}

define i1 @lshrult_01_13(i4 %x) {
; CHECK-LABEL: @lshrult_01_13(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 13
  ret i1 %c
}

define i1 @lshrult_01_14(i4 %x) {
; CHECK-LABEL: @lshrult_01_14(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 14
  ret i1 %c
}

define i1 @lshrult_01_15(i4 %x) {
; CHECK-LABEL: @lshrult_01_15(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 1
  %c = icmp ult i4 %s, 15
  ret i1 %c
}

define i1 @lshrult_02_00(i4 %x) {
; CHECK-LABEL: @lshrult_02_00(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 0
  ret i1 %c
}

define i1 @lshrult_02_01(i4 %x) {
; CHECK-LABEL: @lshrult_02_01(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 1
  ret i1 %c
}

define i1 @lshrult_02_02(i4 %x) {
; CHECK-LABEL: @lshrult_02_02(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 2
  ret i1 %c
}

define i1 @lshrult_02_03(i4 %x) {
; CHECK-LABEL: @lshrult_02_03(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 3
  ret i1 %c
}

define i1 @lshrult_02_04(i4 %x) {
; CHECK-LABEL: @lshrult_02_04(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 4
  ret i1 %c
}

define i1 @lshrult_02_05(i4 %x) {
; CHECK-LABEL: @lshrult_02_05(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 5
  ret i1 %c
}

define i1 @lshrult_02_06(i4 %x) {
; CHECK-LABEL: @lshrult_02_06(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 6
  ret i1 %c
}

define i1 @lshrult_02_07(i4 %x) {
; CHECK-LABEL: @lshrult_02_07(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 7
  ret i1 %c
}

define i1 @lshrult_02_08(i4 %x) {
; CHECK-LABEL: @lshrult_02_08(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 8
  ret i1 %c
}

define i1 @lshrult_02_09(i4 %x) {
; CHECK-LABEL: @lshrult_02_09(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 9
  ret i1 %c
}

define i1 @lshrult_02_10(i4 %x) {
; CHECK-LABEL: @lshrult_02_10(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 10
  ret i1 %c
}

define i1 @lshrult_02_11(i4 %x) {
; CHECK-LABEL: @lshrult_02_11(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 11
  ret i1 %c
}

define i1 @lshrult_02_12(i4 %x) {
; CHECK-LABEL: @lshrult_02_12(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 12
  ret i1 %c
}

define i1 @lshrult_02_13(i4 %x) {
; CHECK-LABEL: @lshrult_02_13(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 13
  ret i1 %c
}

define i1 @lshrult_02_14(i4 %x) {
; CHECK-LABEL: @lshrult_02_14(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 14
  ret i1 %c
}

define i1 @lshrult_02_15(i4 %x) {
; CHECK-LABEL: @lshrult_02_15(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 2
  %c = icmp ult i4 %s, 15
  ret i1 %c
}

define i1 @lshrult_03_00(i4 %x) {
; CHECK-LABEL: @lshrult_03_00(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 0
  ret i1 %c
}

define i1 @lshrult_03_01(i4 %x) {
; CHECK-LABEL: @lshrult_03_01(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 1
  ret i1 %c
}

define i1 @lshrult_03_02(i4 %x) {
; CHECK-LABEL: @lshrult_03_02(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 2
  ret i1 %c
}

define i1 @lshrult_03_03(i4 %x) {
; CHECK-LABEL: @lshrult_03_03(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 3
  ret i1 %c
}

define i1 @lshrult_03_04(i4 %x) {
; CHECK-LABEL: @lshrult_03_04(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 4
  ret i1 %c
}

define i1 @lshrult_03_05(i4 %x) {
; CHECK-LABEL: @lshrult_03_05(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 5
  ret i1 %c
}

define i1 @lshrult_03_06(i4 %x) {
; CHECK-LABEL: @lshrult_03_06(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 6
  ret i1 %c
}

define i1 @lshrult_03_07(i4 %x) {
; CHECK-LABEL: @lshrult_03_07(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 7
  ret i1 %c
}

define i1 @lshrult_03_08(i4 %x) {
; CHECK-LABEL: @lshrult_03_08(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 8
  ret i1 %c
}

define i1 @lshrult_03_09(i4 %x) {
; CHECK-LABEL: @lshrult_03_09(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 9
  ret i1 %c
}

define i1 @lshrult_03_10(i4 %x) {
; CHECK-LABEL: @lshrult_03_10(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 10
  ret i1 %c
}

define i1 @lshrult_03_11(i4 %x) {
; CHECK-LABEL: @lshrult_03_11(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 11
  ret i1 %c
}

define i1 @lshrult_03_12(i4 %x) {
; CHECK-LABEL: @lshrult_03_12(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 12
  ret i1 %c
}

define i1 @lshrult_03_13(i4 %x) {
; CHECK-LABEL: @lshrult_03_13(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 13
  ret i1 %c
}

define i1 @lshrult_03_14(i4 %x) {
; CHECK-LABEL: @lshrult_03_14(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 14
  ret i1 %c
}

define i1 @lshrult_03_15(i4 %x) {
; CHECK-LABEL: @lshrult_03_15(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr i4 %x, 3
  %c = icmp ult i4 %s, 15
  ret i1 %c
}

define i1 @ashrsgt_01_00(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_00(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 0
  ret i1 %c
}

define i1 @ashrsgt_01_01(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_01(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 3
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 1
  ret i1 %c
}

define i1 @ashrsgt_01_02(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_02(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 5
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 2
  ret i1 %c
}

define i1 @ashrsgt_01_03(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_03(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 3
  ret i1 %c
}

define i1 @ashrsgt_01_04(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_04(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 4
  ret i1 %c
}

define i1 @ashrsgt_01_05(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_05(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 5
  ret i1 %c
}

define i1 @ashrsgt_01_06(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_06(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 6
  ret i1 %c
}

define i1 @ashrsgt_01_07(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_07(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 7
  ret i1 %c
}

define i1 @ashrsgt_01_08(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_08(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 8
  ret i1 %c
}

define i1 @ashrsgt_01_09(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_09(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 9
  ret i1 %c
}

define i1 @ashrsgt_01_10(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_10(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 10
  ret i1 %c
}

define i1 @ashrsgt_01_11(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_11(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 11
  ret i1 %c
}

define i1 @ashrsgt_01_12(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_12(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -7
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 12
  ret i1 %c
}

define i1 @ashrsgt_01_13(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_13(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -5
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 13
  ret i1 %c
}

define i1 @ashrsgt_01_14(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_14(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -3
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 14
  ret i1 %c
}

define i1 @ashrsgt_01_15(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_15(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp sgt i4 %s, 15
  ret i1 %c
}

define i1 @ashrsgt_02_00(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_00(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 3
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 0
  ret i1 %c
}

define i1 @ashrsgt_02_01(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_01(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 1
  ret i1 %c
}

define i1 @ashrsgt_02_02(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_02(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 2
  ret i1 %c
}

define i1 @ashrsgt_02_03(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_03(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 3
  ret i1 %c
}

define i1 @ashrsgt_02_04(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_04(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 4
  ret i1 %c
}

define i1 @ashrsgt_02_05(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_05(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 5
  ret i1 %c
}

define i1 @ashrsgt_02_06(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_06(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 6
  ret i1 %c
}

define i1 @ashrsgt_02_07(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_07(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 7
  ret i1 %c
}

define i1 @ashrsgt_02_08(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_08(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 8
  ret i1 %c
}

define i1 @ashrsgt_02_09(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_09(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 9
  ret i1 %c
}

define i1 @ashrsgt_02_10(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_10(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 10
  ret i1 %c
}

define i1 @ashrsgt_02_11(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_11(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 11
  ret i1 %c
}

define i1 @ashrsgt_02_12(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_12(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 12
  ret i1 %c
}

define i1 @ashrsgt_02_13(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_13(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 13
  ret i1 %c
}

define i1 @ashrsgt_02_14(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_14(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -5
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 14
  ret i1 %c
}

define i1 @ashrsgt_02_15(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_15(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 2
  %c = icmp sgt i4 %s, 15
  ret i1 %c
}

define i1 @ashrsgt_03_00(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_00(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 0
  ret i1 %c
}

define i1 @ashrsgt_03_01(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_01(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 1
  ret i1 %c
}

define i1 @ashrsgt_03_02(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_02(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 2
  ret i1 %c
}

define i1 @ashrsgt_03_03(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_03(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 3
  ret i1 %c
}

define i1 @ashrsgt_03_04(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_04(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 4
  ret i1 %c
}

define i1 @ashrsgt_03_05(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_05(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 5
  ret i1 %c
}

define i1 @ashrsgt_03_06(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_06(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 6
  ret i1 %c
}

define i1 @ashrsgt_03_07(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_07(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 7
  ret i1 %c
}

define i1 @ashrsgt_03_08(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_08(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 8
  ret i1 %c
}

define i1 @ashrsgt_03_09(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_09(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 9
  ret i1 %c
}

define i1 @ashrsgt_03_10(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_10(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 10
  ret i1 %c
}

define i1 @ashrsgt_03_11(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_11(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 11
  ret i1 %c
}

define i1 @ashrsgt_03_12(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_12(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 12
  ret i1 %c
}

define i1 @ashrsgt_03_13(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_13(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 13
  ret i1 %c
}

define i1 @ashrsgt_03_14(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_14(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 14
  ret i1 %c
}

define i1 @ashrsgt_03_15(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_15(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 3
  %c = icmp sgt i4 %s, 15
  ret i1 %c
}

define i1 @ashrslt_01_00(i4 %x) {
; CHECK-LABEL: @ashrslt_01_00(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 0
  ret i1 %c
}

define i1 @ashrslt_01_01(i4 %x) {
; CHECK-LABEL: @ashrslt_01_01(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 1
  ret i1 %c
}

define i1 @ashrslt_01_02(i4 %x) {
; CHECK-LABEL: @ashrslt_01_02(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 2
  ret i1 %c
}

define i1 @ashrslt_01_03(i4 %x) {
; CHECK-LABEL: @ashrslt_01_03(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 3
  ret i1 %c
}

define i1 @ashrslt_01_04(i4 %x) {
; CHECK-LABEL: @ashrslt_01_04(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 4
  ret i1 %c
}

define i1 @ashrslt_01_05(i4 %x) {
; CHECK-LABEL: @ashrslt_01_05(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 5
  ret i1 %c
}

define i1 @ashrslt_01_06(i4 %x) {
; CHECK-LABEL: @ashrslt_01_06(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 6
  ret i1 %c
}

define i1 @ashrslt_01_07(i4 %x) {
; CHECK-LABEL: @ashrslt_01_07(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 7
  ret i1 %c
}

define i1 @ashrslt_01_08(i4 %x) {
; CHECK-LABEL: @ashrslt_01_08(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 8
  ret i1 %c
}

define i1 @ashrslt_01_09(i4 %x) {
; CHECK-LABEL: @ashrslt_01_09(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 9
  ret i1 %c
}

define i1 @ashrslt_01_10(i4 %x) {
; CHECK-LABEL: @ashrslt_01_10(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 10
  ret i1 %c
}

define i1 @ashrslt_01_11(i4 %x) {
; CHECK-LABEL: @ashrslt_01_11(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 11
  ret i1 %c
}

define i1 @ashrslt_01_12(i4 %x) {
; CHECK-LABEL: @ashrslt_01_12(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 12
  ret i1 %c
}

define i1 @ashrslt_01_13(i4 %x) {
; CHECK-LABEL: @ashrslt_01_13(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 13
  ret i1 %c
}

define i1 @ashrslt_01_14(i4 %x) {
; CHECK-LABEL: @ashrslt_01_14(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 14
  ret i1 %c
}

define i1 @ashrslt_01_15(i4 %x) {
; CHECK-LABEL: @ashrslt_01_15(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 1
  %c = icmp slt i4 %s, 15
  ret i1 %c
}

define i1 @ashrslt_02_00(i4 %x) {
; CHECK-LABEL: @ashrslt_02_00(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 0
  ret i1 %c
}

define i1 @ashrslt_02_01(i4 %x) {
; CHECK-LABEL: @ashrslt_02_01(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 1
  ret i1 %c
}

define i1 @ashrslt_02_02(i4 %x) {
; CHECK-LABEL: @ashrslt_02_02(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 2
  ret i1 %c
}

define i1 @ashrslt_02_03(i4 %x) {
; CHECK-LABEL: @ashrslt_02_03(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 3
  ret i1 %c
}

define i1 @ashrslt_02_04(i4 %x) {
; CHECK-LABEL: @ashrslt_02_04(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 4
  ret i1 %c
}

define i1 @ashrslt_02_05(i4 %x) {
; CHECK-LABEL: @ashrslt_02_05(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 5
  ret i1 %c
}

define i1 @ashrslt_02_06(i4 %x) {
; CHECK-LABEL: @ashrslt_02_06(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 6
  ret i1 %c
}

define i1 @ashrslt_02_07(i4 %x) {
; CHECK-LABEL: @ashrslt_02_07(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 7
  ret i1 %c
}

define i1 @ashrslt_02_08(i4 %x) {
; CHECK-LABEL: @ashrslt_02_08(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 8
  ret i1 %c
}

define i1 @ashrslt_02_09(i4 %x) {
; CHECK-LABEL: @ashrslt_02_09(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 9
  ret i1 %c
}

define i1 @ashrslt_02_10(i4 %x) {
; CHECK-LABEL: @ashrslt_02_10(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 10
  ret i1 %c
}

define i1 @ashrslt_02_11(i4 %x) {
; CHECK-LABEL: @ashrslt_02_11(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 11
  ret i1 %c
}

define i1 @ashrslt_02_12(i4 %x) {
; CHECK-LABEL: @ashrslt_02_12(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 12
  ret i1 %c
}

define i1 @ashrslt_02_13(i4 %x) {
; CHECK-LABEL: @ashrslt_02_13(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 13
  ret i1 %c
}

define i1 @ashrslt_02_14(i4 %x) {
; CHECK-LABEL: @ashrslt_02_14(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 14
  ret i1 %c
}

define i1 @ashrslt_02_15(i4 %x) {
; CHECK-LABEL: @ashrslt_02_15(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 2
  %c = icmp slt i4 %s, 15
  ret i1 %c
}

define i1 @ashrslt_03_00(i4 %x) {
; CHECK-LABEL: @ashrslt_03_00(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 0
  ret i1 %c
}

define i1 @ashrslt_03_01(i4 %x) {
; CHECK-LABEL: @ashrslt_03_01(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 1
  ret i1 %c
}

define i1 @ashrslt_03_02(i4 %x) {
; CHECK-LABEL: @ashrslt_03_02(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 2
  ret i1 %c
}

define i1 @ashrslt_03_03(i4 %x) {
; CHECK-LABEL: @ashrslt_03_03(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 3
  ret i1 %c
}

define i1 @ashrslt_03_04(i4 %x) {
; CHECK-LABEL: @ashrslt_03_04(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 4
  ret i1 %c
}

define i1 @ashrslt_03_05(i4 %x) {
; CHECK-LABEL: @ashrslt_03_05(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 5
  ret i1 %c
}

define i1 @ashrslt_03_06(i4 %x) {
; CHECK-LABEL: @ashrslt_03_06(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 6
  ret i1 %c
}

define i1 @ashrslt_03_07(i4 %x) {
; CHECK-LABEL: @ashrslt_03_07(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 7
  ret i1 %c
}

define i1 @ashrslt_03_08(i4 %x) {
; CHECK-LABEL: @ashrslt_03_08(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 8
  ret i1 %c
}

define i1 @ashrslt_03_09(i4 %x) {
; CHECK-LABEL: @ashrslt_03_09(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 9
  ret i1 %c
}

define i1 @ashrslt_03_10(i4 %x) {
; CHECK-LABEL: @ashrslt_03_10(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 10
  ret i1 %c
}

define i1 @ashrslt_03_11(i4 %x) {
; CHECK-LABEL: @ashrslt_03_11(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 11
  ret i1 %c
}

define i1 @ashrslt_03_12(i4 %x) {
; CHECK-LABEL: @ashrslt_03_12(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 12
  ret i1 %c
}

define i1 @ashrslt_03_13(i4 %x) {
; CHECK-LABEL: @ashrslt_03_13(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 13
  ret i1 %c
}

define i1 @ashrslt_03_14(i4 %x) {
; CHECK-LABEL: @ashrslt_03_14(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 14
  ret i1 %c
}

define i1 @ashrslt_03_15(i4 %x) {
; CHECK-LABEL: @ashrslt_03_15(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr i4 %x, 3
  %c = icmp slt i4 %s, 15
  ret i1 %c
}

define i1 @lshrugt_01_00_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 0
  ret i1 %c
}

define i1 @lshrugt_01_01_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 1
  ret i1 %c
}

define i1 @lshrugt_01_02_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_02_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 2
  ret i1 %c
}

define i1 @lshrugt_01_03_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_03_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 3
  ret i1 %c
}

define i1 @lshrugt_01_04_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_04_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, -8
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 4
  ret i1 %c
}

define i1 @lshrugt_01_05_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_05_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, -6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 5
  ret i1 %c
}

define i1 @lshrugt_01_06_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_06_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp eq i4 %x, -2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 6
  ret i1 %c
}

define i1 @lshrugt_01_07_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_07_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 7
  ret i1 %c
}

define i1 @lshrugt_01_08_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_08_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 8
  ret i1 %c
}

define i1 @lshrugt_01_09_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_09_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 9
  ret i1 %c
}

define i1 @lshrugt_01_10_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_10_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 10
  ret i1 %c
}

define i1 @lshrugt_01_11_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_11_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 11
  ret i1 %c
}

define i1 @lshrugt_01_12_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_12_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 12
  ret i1 %c
}

define i1 @lshrugt_01_13_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_13_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 13
  ret i1 %c
}

define i1 @lshrugt_01_14_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_14_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 14
  ret i1 %c
}

define i1 @lshrugt_01_15_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_01_15_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ugt i4 %s, 15
  ret i1 %c
}

define i1 @lshrugt_02_00_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 0
  ret i1 %c
}

define i1 @lshrugt_02_01_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ugt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 1
  ret i1 %c
}

define i1 @lshrugt_02_02_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_02_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp eq i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 2
  ret i1 %c
}

define i1 @lshrugt_02_03_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_03_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 3
  ret i1 %c
}

define i1 @lshrugt_02_04_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_04_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 4
  ret i1 %c
}

define i1 @lshrugt_02_05_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_05_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 5
  ret i1 %c
}

define i1 @lshrugt_02_06_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_06_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 6
  ret i1 %c
}

define i1 @lshrugt_02_07_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_07_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 7
  ret i1 %c
}

define i1 @lshrugt_02_08_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_08_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 8
  ret i1 %c
}

define i1 @lshrugt_02_09_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_09_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 9
  ret i1 %c
}

define i1 @lshrugt_02_10_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_10_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 10
  ret i1 %c
}

define i1 @lshrugt_02_11_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_11_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 11
  ret i1 %c
}

define i1 @lshrugt_02_12_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_12_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 12
  ret i1 %c
}

define i1 @lshrugt_02_13_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_13_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 13
  ret i1 %c
}

define i1 @lshrugt_02_14_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_14_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 14
  ret i1 %c
}

define i1 @lshrugt_02_15_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_02_15_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ugt i4 %s, 15
  ret i1 %c
}

define i1 @lshrugt_03_00_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 0
  ret i1 %c
}

define i1 @lshrugt_03_01_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_01_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 1
  ret i1 %c
}

define i1 @lshrugt_03_02_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_02_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 2
  ret i1 %c
}

define i1 @lshrugt_03_03_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_03_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 3
  ret i1 %c
}

define i1 @lshrugt_03_04_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_04_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 4
  ret i1 %c
}

define i1 @lshrugt_03_05_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_05_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 5
  ret i1 %c
}

define i1 @lshrugt_03_06_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_06_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 6
  ret i1 %c
}

define i1 @lshrugt_03_07_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_07_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 7
  ret i1 %c
}

define i1 @lshrugt_03_08_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_08_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 8
  ret i1 %c
}

define i1 @lshrugt_03_09_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_09_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 9
  ret i1 %c
}

define i1 @lshrugt_03_10_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_10_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 10
  ret i1 %c
}

define i1 @lshrugt_03_11_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_11_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 11
  ret i1 %c
}

define i1 @lshrugt_03_12_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_12_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 12
  ret i1 %c
}

define i1 @lshrugt_03_13_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_13_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 13
  ret i1 %c
}

define i1 @lshrugt_03_14_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_14_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 14
  ret i1 %c
}

define i1 @lshrugt_03_15_exact(i4 %x) {
; CHECK-LABEL: @lshrugt_03_15_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ugt i4 %s, 15
  ret i1 %c
}

define i1 @lshrult_01_00_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_00_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 0
  ret i1 %c
}

define i1 @lshrult_01_01_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp eq i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 1
  ret i1 %c
}

define i1 @lshrult_01_02_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_02_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 2
  ret i1 %c
}

define i1 @lshrult_01_03_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_03_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, 6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 3
  ret i1 %c
}

define i1 @lshrult_01_04_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_04_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 4
  ret i1 %c
}

define i1 @lshrult_01_05_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_05_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, -6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 5
  ret i1 %c
}

define i1 @lshrult_01_06_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_06_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ult i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 6
  ret i1 %c
}

define i1 @lshrult_01_07_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_07_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, -2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 7
  ret i1 %c
}

define i1 @lshrult_01_08_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_08_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 8
  ret i1 %c
}

define i1 @lshrult_01_09_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_09_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 9
  ret i1 %c
}

define i1 @lshrult_01_10_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_10_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 10
  ret i1 %c
}

define i1 @lshrult_01_11_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_11_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 11
  ret i1 %c
}

define i1 @lshrult_01_12_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_12_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 12
  ret i1 %c
}

define i1 @lshrult_01_13_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_13_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 13
  ret i1 %c
}

define i1 @lshrult_01_14_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_14_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 14
  ret i1 %c
}

define i1 @lshrult_01_15_exact(i4 %x) {
; CHECK-LABEL: @lshrult_01_15_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 1
  %c = icmp ult i4 %s, 15
  ret i1 %c
}

define i1 @lshrult_02_00_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_00_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 0
  ret i1 %c
}

define i1 @lshrult_02_01_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp eq i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 1
  ret i1 %c
}

define i1 @lshrult_02_02_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_02_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 2
  ret i1 %c
}

define i1 @lshrult_02_03_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_03_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 3
  ret i1 %c
}

define i1 @lshrult_02_04_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_04_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 4
  ret i1 %c
}

define i1 @lshrult_02_05_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_05_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 5
  ret i1 %c
}

define i1 @lshrult_02_06_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_06_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 6
  ret i1 %c
}

define i1 @lshrult_02_07_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_07_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 7
  ret i1 %c
}

define i1 @lshrult_02_08_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_08_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 8
  ret i1 %c
}

define i1 @lshrult_02_09_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_09_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 9
  ret i1 %c
}

define i1 @lshrult_02_10_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_10_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 10
  ret i1 %c
}

define i1 @lshrult_02_11_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_11_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 11
  ret i1 %c
}

define i1 @lshrult_02_12_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_12_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 12
  ret i1 %c
}

define i1 @lshrult_02_13_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_13_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 13
  ret i1 %c
}

define i1 @lshrult_02_14_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_14_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 14
  ret i1 %c
}

define i1 @lshrult_02_15_exact(i4 %x) {
; CHECK-LABEL: @lshrult_02_15_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 2
  %c = icmp ult i4 %s, 15
  ret i1 %c
}

define i1 @lshrult_03_00_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_00_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 0
  ret i1 %c
}

define i1 @lshrult_03_01_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, -8
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 1
  ret i1 %c
}

define i1 @lshrult_03_02_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_02_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 2
  ret i1 %c
}

define i1 @lshrult_03_03_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_03_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 3
  ret i1 %c
}

define i1 @lshrult_03_04_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_04_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 4
  ret i1 %c
}

define i1 @lshrult_03_05_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_05_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 5
  ret i1 %c
}

define i1 @lshrult_03_06_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_06_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 6
  ret i1 %c
}

define i1 @lshrult_03_07_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_07_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 7
  ret i1 %c
}

define i1 @lshrult_03_08_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_08_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 8
  ret i1 %c
}

define i1 @lshrult_03_09_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_09_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 9
  ret i1 %c
}

define i1 @lshrult_03_10_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_10_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 10
  ret i1 %c
}

define i1 @lshrult_03_11_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_11_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 11
  ret i1 %c
}

define i1 @lshrult_03_12_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_12_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 12
  ret i1 %c
}

define i1 @lshrult_03_13_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_13_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 13
  ret i1 %c
}

define i1 @lshrult_03_14_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_14_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 14
  ret i1 %c
}

define i1 @lshrult_03_15_exact(i4 %x) {
; CHECK-LABEL: @lshrult_03_15_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = lshr exact i4 %x, 3
  %c = icmp ult i4 %s, 15
  ret i1 %c
}

define i1 @ashrsgt_01_00_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 0
  ret i1 %c
}

define i1 @ashrsgt_01_01_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 1
  ret i1 %c
}

define i1 @ashrsgt_01_02_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_02_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 2
  ret i1 %c
}

define i1 @ashrsgt_01_03_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_03_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 3
  ret i1 %c
}

define i1 @ashrsgt_01_04_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_04_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 4
  ret i1 %c
}

define i1 @ashrsgt_01_05_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_05_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 5
  ret i1 %c
}

define i1 @ashrsgt_01_06_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_06_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 6
  ret i1 %c
}

define i1 @ashrsgt_01_07_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_07_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 7
  ret i1 %c
}

define i1 @ashrsgt_01_08_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_08_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 8
  ret i1 %c
}

define i1 @ashrsgt_01_09_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_09_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 9
  ret i1 %c
}

define i1 @ashrsgt_01_10_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_10_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 10
  ret i1 %c
}

define i1 @ashrsgt_01_11_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_11_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 11
  ret i1 %c
}

define i1 @ashrsgt_01_12_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_12_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, -8
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 12
  ret i1 %c
}

define i1 @ashrsgt_01_13_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_13_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 13
  ret i1 %c
}

define i1 @ashrsgt_01_14_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_14_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 14
  ret i1 %c
}

define i1 @ashrsgt_01_15_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_01_15_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp sgt i4 %s, 15
  ret i1 %c
}

define i1 @ashrsgt_02_00_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 0
  ret i1 %c
}

define i1 @ashrsgt_02_01_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_01_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 1
  ret i1 %c
}

define i1 @ashrsgt_02_02_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_02_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 2
  ret i1 %c
}

define i1 @ashrsgt_02_03_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_03_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 3
  ret i1 %c
}

define i1 @ashrsgt_02_04_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_04_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 4
  ret i1 %c
}

define i1 @ashrsgt_02_05_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_05_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 5
  ret i1 %c
}

define i1 @ashrsgt_02_06_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_06_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 6
  ret i1 %c
}

define i1 @ashrsgt_02_07_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_07_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 7
  ret i1 %c
}

define i1 @ashrsgt_02_08_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_08_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 8
  ret i1 %c
}

define i1 @ashrsgt_02_09_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_09_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 9
  ret i1 %c
}

define i1 @ashrsgt_02_10_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_10_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 10
  ret i1 %c
}

define i1 @ashrsgt_02_11_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_11_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 11
  ret i1 %c
}

define i1 @ashrsgt_02_12_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_12_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 12
  ret i1 %c
}

define i1 @ashrsgt_02_13_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_13_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 13
  ret i1 %c
}

define i1 @ashrsgt_02_14_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_14_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp ne i4 %x, -8
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 14
  ret i1 %c
}

define i1 @ashrsgt_02_15_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_02_15_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 2
  %c = icmp sgt i4 %s, 15
  ret i1 %c
}

define i1 @ashrsgt_03_00_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_00_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 0
  ret i1 %c
}

define i1 @ashrsgt_03_01_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_01_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 1
  ret i1 %c
}

define i1 @ashrsgt_03_02_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_02_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 2
  ret i1 %c
}

define i1 @ashrsgt_03_03_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_03_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 3
  ret i1 %c
}

define i1 @ashrsgt_03_04_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_04_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 4
  ret i1 %c
}

define i1 @ashrsgt_03_05_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_05_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 5
  ret i1 %c
}

define i1 @ashrsgt_03_06_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_06_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 6
  ret i1 %c
}

define i1 @ashrsgt_03_07_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_07_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 7
  ret i1 %c
}

define i1 @ashrsgt_03_08_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_08_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 8
  ret i1 %c
}

define i1 @ashrsgt_03_09_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_09_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 9
  ret i1 %c
}

define i1 @ashrsgt_03_10_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_10_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 10
  ret i1 %c
}

define i1 @ashrsgt_03_11_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_11_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 11
  ret i1 %c
}

define i1 @ashrsgt_03_12_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_12_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 12
  ret i1 %c
}

define i1 @ashrsgt_03_13_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_13_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 13
  ret i1 %c
}

define i1 @ashrsgt_03_14_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_14_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 14
  ret i1 %c
}

define i1 @ashrsgt_03_15_exact(i4 %x) {
; CHECK-LABEL: @ashrsgt_03_15_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp sgt i4 %x, -1
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 3
  %c = icmp sgt i4 %s, 15
  ret i1 %c
}

define i1 @ashrslt_01_00_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 0
  ret i1 %c
}

define i1 @ashrslt_01_01_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 1
  ret i1 %c
}

define i1 @ashrslt_01_02_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_02_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 2
  ret i1 %c
}

define i1 @ashrslt_01_03_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_03_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 3
  ret i1 %c
}

define i1 @ashrslt_01_04_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_04_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 4
  ret i1 %c
}

define i1 @ashrslt_01_05_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_05_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 5
  ret i1 %c
}

define i1 @ashrslt_01_06_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_06_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 6
  ret i1 %c
}

define i1 @ashrslt_01_07_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_07_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 7
  ret i1 %c
}

define i1 @ashrslt_01_08_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_08_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 8
  ret i1 %c
}

define i1 @ashrslt_01_09_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_09_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 9
  ret i1 %c
}

define i1 @ashrslt_01_10_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_10_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 10
  ret i1 %c
}

define i1 @ashrslt_01_11_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_11_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 11
  ret i1 %c
}

define i1 @ashrslt_01_12_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_12_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 12
  ret i1 %c
}

define i1 @ashrslt_01_13_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_13_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -6
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 13
  ret i1 %c
}

define i1 @ashrslt_01_14_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_14_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 14
  ret i1 %c
}

define i1 @ashrslt_01_15_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_01_15_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -2
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 1
  %c = icmp slt i4 %s, 15
  ret i1 %c
}

define i1 @ashrslt_02_00_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 0
  ret i1 %c
}

define i1 @ashrslt_02_01_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_01_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 1
  ret i1 %c
}

define i1 @ashrslt_02_02_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_02_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 2
  ret i1 %c
}

define i1 @ashrslt_02_03_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_03_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 3
  ret i1 %c
}

define i1 @ashrslt_02_04_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_04_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 4
  ret i1 %c
}

define i1 @ashrslt_02_05_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_05_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 5
  ret i1 %c
}

define i1 @ashrslt_02_06_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_06_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 6
  ret i1 %c
}

define i1 @ashrslt_02_07_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_07_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 7
  ret i1 %c
}

define i1 @ashrslt_02_08_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_08_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 8
  ret i1 %c
}

define i1 @ashrslt_02_09_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_09_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 9
  ret i1 %c
}

define i1 @ashrslt_02_10_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_10_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 10
  ret i1 %c
}

define i1 @ashrslt_02_11_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_11_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 11
  ret i1 %c
}

define i1 @ashrslt_02_12_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_12_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 12
  ret i1 %c
}

define i1 @ashrslt_02_13_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_13_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 13
  ret i1 %c
}

define i1 @ashrslt_02_14_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_14_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 14
  ret i1 %c
}

define i1 @ashrslt_02_15_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_02_15_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, -4
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 2
  %c = icmp slt i4 %s, 15
  ret i1 %c
}

define i1 @ashrslt_03_00_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_00_exact(
; CHECK-NEXT:    [[C:%.*]] = icmp slt i4 %x, 0
; CHECK-NEXT:    ret i1 [[C]]
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 0
  ret i1 %c
}

define i1 @ashrslt_03_01_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_01_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 1
  ret i1 %c
}

define i1 @ashrslt_03_02_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_02_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 2
  ret i1 %c
}

define i1 @ashrslt_03_03_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_03_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 3
  ret i1 %c
}

define i1 @ashrslt_03_04_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_04_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 4
  ret i1 %c
}

define i1 @ashrslt_03_05_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_05_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 5
  ret i1 %c
}

define i1 @ashrslt_03_06_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_06_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 6
  ret i1 %c
}

define i1 @ashrslt_03_07_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_07_exact(
; CHECK-NEXT:    ret i1 true
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 7
  ret i1 %c
}

define i1 @ashrslt_03_08_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_08_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 8
  ret i1 %c
}

define i1 @ashrslt_03_09_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_09_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 9
  ret i1 %c
}

define i1 @ashrslt_03_10_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_10_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 10
  ret i1 %c
}

define i1 @ashrslt_03_11_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_11_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 11
  ret i1 %c
}

define i1 @ashrslt_03_12_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_12_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 12
  ret i1 %c
}

define i1 @ashrslt_03_13_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_13_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 13
  ret i1 %c
}

define i1 @ashrslt_03_14_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_14_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 14
  ret i1 %c
}

define i1 @ashrslt_03_15_exact(i4 %x) {
; CHECK-LABEL: @ashrslt_03_15_exact(
; CHECK-NEXT:    ret i1 false
;
  %s = ashr exact i4 %x, 3
  %c = icmp slt i4 %s, 15
  ret i1 %c
}

