; ModuleID = '/llk/IR/arch/arm/probes/decode-arm.c_pt.bc'
source_filename = "../arch/arm/probes/decode-arm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_item = type { i32 }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@arm_1111_table = internal constant [13 x %union.decode_item] [%union.decode_item { i32 3 }, %union.decode_item { i32 -30408704 }, %union.decode_item { i32 -200278016 }, %union.decode_item zeroinitializer, %union.decode_item { i32 3 }, %union.decode_item { i32 -30408688 }, %union.decode_item { i32 -166723584 }, %union.decode_item { i32 1 }, %union.decode_item { i32 3 }, %union.decode_item { i32 -33554432 }, %union.decode_item { i32 -100663296 }, %union.decode_item { i32 2 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_0001_0xx0____0xxx_table = internal constant [21 x %union.decode_item] [%union.decode_item { i32 458755 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 16777216 }, %union.decode_item { i32 4 }, %union.decode_item { i32 3 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 18874384 }, %union.decode_item { i32 3 }, %union.decode_item { i32 115 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 18874416 }, %union.decode_item { i32 3 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 23068688 }, %union.decode_item { i32 5 }, %union.decode_item { i32 7798900 }, %union.decode_item { i32 261095664 }, %union.decode_item { i32 16777296 }, %union.decode_item { i32 6 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_0001_0xx0____1xx0_table = internal constant [19 x %union.decode_item] [%union.decode_item { i32 7827572 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 20971648 }, %union.decode_item { i32 7 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387056 }, %union.decode_item { i32 18874528 }, %union.decode_item { i32 7368820 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 23068800 }, %union.decode_item { i32 8 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 16777344 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387056 }, %union.decode_item { i32 18874496 }, %union.decode_item { i32 8 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_0000_____1001_table = internal constant [19 x %union.decode_item] [%union.decode_item { i32 7368820 }, %union.decode_item { i32 266338544 }, %union.decode_item { i32 144 }, %union.decode_item { i32 8 }, %union.decode_item { i32 5 }, %union.decode_item { i32 266338544 }, %union.decode_item { i32 2097296 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 6291600 }, %union.decode_item { i32 8 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 4194448 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 8388752 }, %union.decode_item { i32 7 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_0001_____1001_table = internal constant [1 x %union.decode_item] zeroinitializer, align 4
@arm_cccc_000x_____1xx1_table = internal constant [31 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 253755536 }, %union.decode_item { i32 2097296 }, %union.decode_item { i32 6 }, %union.decode_item { i32 235987152 }, %union.decode_item { i32 57552 }, %union.decode_item { i32 8978548 }, %union.decode_item { i32 240124112 }, %union.decode_item { i32 208 }, %union.decode_item { i32 10 }, %union.decode_item { i32 8978436 }, %union.decode_item { i32 240124112 }, %union.decode_item { i32 4194512 }, %union.decode_item { i32 10 }, %union.decode_item { i32 8847476 }, %union.decode_item { i32 240124144 }, %union.decode_item { i32 176 }, %union.decode_item { i32 14 }, %union.decode_item { i32 8847476 }, %union.decode_item { i32 240124048 }, %union.decode_item { i32 1048720 }, %union.decode_item { i32 13 }, %union.decode_item { i32 8847364 }, %union.decode_item { i32 240124144 }, %union.decode_item { i32 4194480 }, %union.decode_item { i32 14 }, %union.decode_item { i32 8847364 }, %union.decode_item { i32 240124048 }, %union.decode_item { i32 5243024 }, %union.decode_item { i32 13 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_000x_table = internal constant [32 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 235991040 }, %union.decode_item { i32 1110016 }, %union.decode_item { i32 3 }, %union.decode_item { i32 -1 }, %union.decode_item { i32 -509558771 }, %union.decode_item { i32 15 }, %union.decode_item { i32 1048596 }, %union.decode_item { i32 261095440 }, %union.decode_item { i32 17825792 }, %union.decode_item { i32 16 }, %union.decode_item { i32 65556 }, %union.decode_item { i32 262144016 }, %union.decode_item { i32 27262976 }, %union.decode_item { i32 16 }, %union.decode_item { i32 1114132 }, %union.decode_item { i32 234881040 }, %union.decode_item zeroinitializer, %union.decode_item { i32 16 }, %union.decode_item { i32 7368820 }, %union.decode_item { i32 261095568 }, %union.decode_item { i32 17825808 }, %union.decode_item { i32 16 }, %union.decode_item { i32 487540 }, %union.decode_item { i32 262144144 }, %union.decode_item { i32 27262992 }, %union.decode_item { i32 16 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 234881168 }, %union.decode_item { i32 16 }, %union.decode_item { i32 16 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_001x_table = internal constant [34 x %union.decode_item] [%union.decode_item { i32 458756 }, %union.decode_item { i32 263192576 }, %union.decode_item { i32 50331648 }, %union.decode_item { i32 18 }, %union.decode_item { i32 5 }, %union.decode_item { i32 268370175 }, %union.decode_item { i32 52428801 }, %union.decode_item { i32 4 }, %union.decode_item { i32 268370175 }, %union.decode_item { i32 52428804 }, %union.decode_item { i32 19 }, %union.decode_item { i32 3 }, %union.decode_item { i32 268370172 }, %union.decode_item { i32 52428800 }, %union.decode_item { i32 20 }, %union.decode_item { i32 6 }, %union.decode_item { i32 263192576 }, %union.decode_item { i32 52428800 }, %union.decode_item { i32 6 }, %union.decode_item { i32 235991040 }, %union.decode_item { i32 34664448 }, %union.decode_item { i32 1048580 }, %union.decode_item { i32 261095424 }, %union.decode_item { i32 51380224 }, %union.decode_item { i32 17 }, %union.decode_item { i32 65540 }, %union.decode_item { i32 262144000 }, %union.decode_item { i32 60817408 }, %union.decode_item { i32 17 }, %union.decode_item { i32 1114116 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 33554432 }, %union.decode_item { i32 17 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_0110_____xxx1_table = internal constant [44 x %union.decode_item] [%union.decode_item { i32 7798900 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 109052080 }, %union.decode_item { i32 21 }, %union.decode_item { i32 5 }, %union.decode_item { i32 262144048 }, %union.decode_item { i32 111149072 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 263192816 }, %union.decode_item { i32 111149104 }, %union.decode_item { i32 21 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 263192688 }, %union.decode_item { i32 112197680 }, %union.decode_item { i32 22 }, %union.decode_item { i32 6 }, %union.decode_item { i32 263192592 }, %union.decode_item { i32 100663312 }, %union.decode_item { i32 6 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 100663472 }, %union.decode_item { i32 6 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 100663504 }, %union.decode_item { i32 7798900 }, %union.decode_item { i32 260046864 }, %union.decode_item { i32 100663312 }, %union.decode_item { i32 23 }, %union.decode_item { i32 7798900 }, %union.decode_item { i32 267386928 }, %union.decode_item { i32 109051920 }, %union.decode_item { i32 24 }, %union.decode_item { i32 6 }, %union.decode_item { i32 263192816 }, %union.decode_item { i32 110100592 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 261030128 }, %union.decode_item { i32 110035056 }, %union.decode_item { i32 25 }, %union.decode_item { i32 9896052 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 109052016 }, %union.decode_item { i32 26 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_0111_____xxx1_table = internal constant [44 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 133169392 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 121634832 }, %union.decode_item { i32 27 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267448464 }, %union.decode_item { i32 117501968 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267448528 }, %union.decode_item { i32 122744848 }, %union.decode_item { i32 7368820 }, %union.decode_item { i32 267448560 }, %union.decode_item { i32 125890576 }, %union.decode_item { i32 28 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 117440528 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387088 }, %union.decode_item { i32 122683408 }, %union.decode_item { i32 7958644 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 125829136 }, %union.decode_item { i32 28 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387088 }, %union.decode_item { i32 122683600 }, %union.decode_item { i32 28 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 262144112 }, %union.decode_item { i32 127926352 }, %union.decode_item { i32 29 }, %union.decode_item { i32 458756 }, %union.decode_item { i32 266338431 }, %union.decode_item { i32 130023455 }, %union.decode_item { i32 29 }, %union.decode_item { i32 458900 }, %union.decode_item { i32 266338416 }, %union.decode_item { i32 130023440 }, %union.decode_item { i32 29 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_01xx_table = internal constant [23 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 205582336 }, %union.decode_item { i32 71364608 }, %union.decode_item { i32 6 }, %union.decode_item { i32 220200960 }, %union.decode_item { i32 69206016 }, %union.decode_item { i32 8454148 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 67108864 }, %union.decode_item { i32 12 }, %union.decode_item { i32 8454148 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 68157440 }, %union.decode_item { i32 11 }, %union.decode_item { i32 8454260 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 100663296 }, %union.decode_item { i32 12 }, %union.decode_item { i32 8454260 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 101711872 }, %union.decode_item { i32 11 }, %union.decode_item zeroinitializer], align 4
@arm_cccc_100x_table = internal constant [5 x %union.decode_item] [%union.decode_item { i32 2 }, %union.decode_item { i32 239075328 }, %union.decode_item { i32 134217728 }, %union.decode_item { i32 31 }, %union.decode_item zeroinitializer], align 4
@probes_decode_arm_table = dso_local constant <{ %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item }> <{ %union.decode_item { i32 1 }, %union.decode_item { i32 -268435456 }, %union.decode_item { i32 -268435456 }, { ptr } { ptr @arm_1111_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 261095552 }, %union.decode_item { i32 16777216 }, { ptr } { ptr @arm_cccc_0001_0xx0____0xxx_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 261095568 }, %union.decode_item { i32 16777344 }, { ptr } { ptr @arm_cccc_0001_0xx0____1xx0_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658480 }, %union.decode_item { i32 144 }, { ptr } { ptr @arm_cccc_0000_____1001_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658480 }, %union.decode_item { i32 16777360 }, { ptr } { ptr @arm_cccc_0001_____1001_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881168 }, %union.decode_item { i32 144 }, { ptr } { ptr @arm_cccc_000x_____1xx1_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881024 }, %union.decode_item zeroinitializer, { ptr } { ptr @arm_cccc_000x_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 33554432 }, { ptr } { ptr @arm_cccc_001x_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658256 }, %union.decode_item { i32 100663312 }, { ptr } { ptr @arm_cccc_0110_____xxx1_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658256 }, %union.decode_item { i32 117440528 }, { ptr } { ptr @arm_cccc_0111_____xxx1_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 201326592 }, %union.decode_item { i32 67108864 }, { ptr } { ptr @arm_cccc_01xx_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 134217728 }, { ptr } { ptr @arm_cccc_100x_table }, %union.decode_item { i32 3 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 167772160 }, %union.decode_item { i32 30 }, %union.decode_item { i32 6 }, %union.decode_item { i32 201326592 }, %union.decode_item { i32 201326592 }, %union.decode_item zeroinitializer }>, align 4
@probes_condition_checks = external dso_local local_unnamed_addr constant [16 x ptr], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @simulate_bbl(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %0, 16777216
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr [18 x i32], ptr %2, i32 0, i32 14
  store i32 %5, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = shl i32 %0, 2
  %12 = and i32 %11, 67108860
  %13 = and i32 %11, 33554432
  %14 = sub nsw i32 0, %13
  %15 = or i32 %12, %14
  %16 = add nsw i32 %15, 4
  %17 = add i32 %16, %5
  store i32 %17, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @simulate_blx1(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %0, 2
  %7 = and i32 %6, 67108860
  %8 = and i32 %6, 33554432
  %9 = sub nsw i32 0, %8
  %10 = or i32 %7, %9
  %11 = getelementptr [18 x i32], ptr %2, i32 0, i32 14
  store i32 %5, ptr %11, align 4
  %12 = lshr i32 %0, 23
  %13 = and i32 %12, 2
  %14 = or i32 %13, 4
  %15 = add nsw i32 %14, %10
  %16 = add i32 %15, %5
  store i32 %16, ptr %4, align 4
  %17 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 32
  store i32 %19, ptr %17, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @simulate_blx2bx(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 15
  %5 = getelementptr [18 x i32], ptr %2, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %0, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [18 x i32], ptr %2, i32 0, i32 14
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = and i32 %6, -2
  %15 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  store i32 %14, ptr %15, align 4
  %16 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -33
  %19 = shl i32 %6, 5
  %20 = and i32 %19, 32
  %21 = or i32 %18, %20
  store i32 %21, ptr %16, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @simulate_mrs(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %0, 12
  %5 = and i32 %4, 15
  %6 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -117505057
  %9 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @simulate_mov_ipsp(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [18 x i32], ptr %2, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x i32], ptr %2, i32 0, i32 12
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_probes_decode_insn(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 3
  store ptr @arm_singlestep, ptr %6, align 4
  %7 = lshr i32 %0, 28
  %8 = getelementptr [16 x ptr], ptr @probes_condition_checks, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @probes_decode_insn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @probes_decode_arm_table, i1 noundef zeroext false, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #3
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_singlestep(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 4
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void %8(i32 noundef %0, ptr noundef %1, ptr noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probes_decode_insn(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
