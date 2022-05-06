; ModuleID = '/llk/IR/drivers/mfd/atmel-smc.c_pt.bc'
source_filename = "../drivers/mfd/atmel-smc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_init:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_init\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_set_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_set_timing\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_set_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_set_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_set_setup\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_set_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_set_pulse:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_set_pulse\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_set_pulse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_set_cycle:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_set_cycle\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_set_cycle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_apply\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_hsmc_cs_conf_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_hsmc_cs_conf_apply\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_hsmc_cs_conf_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_smc_cs_conf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_smc_cs_conf_get\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_smc_cs_conf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_hsmc_cs_conf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_hsmc_cs_conf_get\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_hsmc_cs_conf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_hsmc_get_reg_layout:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_hsmc_get_reg_layout\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_hsmc_get_reg_layout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_hsmc_reg_layout = type { i32 }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32, i32 }

@__kstrtab_atmel_smc_cs_conf_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_init = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_init to i32), ptr @__kstrtab_atmel_smc_cs_conf_init, ptr @__kstrtabns_atmel_smc_cs_conf_init }, section "___ksymtab_gpl+atmel_smc_cs_conf_init", align 4
@__kstrtab_atmel_smc_cs_conf_set_timing = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_set_timing = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_set_timing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_set_timing to i32), ptr @__kstrtab_atmel_smc_cs_conf_set_timing, ptr @__kstrtabns_atmel_smc_cs_conf_set_timing }, section "___ksymtab_gpl+atmel_smc_cs_conf_set_timing", align 4
@__kstrtab_atmel_smc_cs_conf_set_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_set_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_set_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_set_setup to i32), ptr @__kstrtab_atmel_smc_cs_conf_set_setup, ptr @__kstrtabns_atmel_smc_cs_conf_set_setup }, section "___ksymtab_gpl+atmel_smc_cs_conf_set_setup", align 4
@__kstrtab_atmel_smc_cs_conf_set_pulse = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_set_pulse = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_set_pulse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_set_pulse to i32), ptr @__kstrtab_atmel_smc_cs_conf_set_pulse, ptr @__kstrtabns_atmel_smc_cs_conf_set_pulse }, section "___ksymtab_gpl+atmel_smc_cs_conf_set_pulse", align 4
@__kstrtab_atmel_smc_cs_conf_set_cycle = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_set_cycle = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_set_cycle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_set_cycle to i32), ptr @__kstrtab_atmel_smc_cs_conf_set_cycle, ptr @__kstrtabns_atmel_smc_cs_conf_set_cycle }, section "___ksymtab_gpl+atmel_smc_cs_conf_set_cycle", align 4
@__kstrtab_atmel_smc_cs_conf_apply = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_apply = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_apply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_apply to i32), ptr @__kstrtab_atmel_smc_cs_conf_apply, ptr @__kstrtabns_atmel_smc_cs_conf_apply }, section "___ksymtab_gpl+atmel_smc_cs_conf_apply", align 4
@__kstrtab_atmel_hsmc_cs_conf_apply = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_hsmc_cs_conf_apply = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_hsmc_cs_conf_apply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_hsmc_cs_conf_apply to i32), ptr @__kstrtab_atmel_hsmc_cs_conf_apply, ptr @__kstrtabns_atmel_hsmc_cs_conf_apply }, section "___ksymtab_gpl+atmel_hsmc_cs_conf_apply", align 4
@__kstrtab_atmel_smc_cs_conf_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_smc_cs_conf_get = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_smc_cs_conf_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_smc_cs_conf_get to i32), ptr @__kstrtab_atmel_smc_cs_conf_get, ptr @__kstrtabns_atmel_smc_cs_conf_get }, section "___ksymtab_gpl+atmel_smc_cs_conf_get", align 4
@__kstrtab_atmel_hsmc_cs_conf_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_hsmc_cs_conf_get = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_hsmc_cs_conf_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_hsmc_cs_conf_get to i32), ptr @__kstrtab_atmel_hsmc_cs_conf_get, ptr @__kstrtabns_atmel_hsmc_cs_conf_get }, section "___ksymtab_gpl+atmel_hsmc_cs_conf_get", align 4
@atmel_smc_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_reg_layout }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_reg_layout }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_atmel_hsmc_get_reg_layout = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_hsmc_get_reg_layout = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_hsmc_get_reg_layout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_hsmc_get_reg_layout to i32), ptr @__kstrtab_atmel_hsmc_get_reg_layout, ptr @__kstrtabns_atmel_hsmc_get_reg_layout }, section "___ksymtab_gpl+atmel_hsmc_get_reg_layout", align 4
@sama5d3_reg_layout = internal constant %struct.atmel_hsmc_reg_layout { i32 1536 }, align 4
@sama5d2_reg_layout = internal constant %struct.atmel_hsmc_reg_layout { i32 1792 }, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_atmel_hsmc_cs_conf_apply, ptr @__ksymtab_atmel_hsmc_cs_conf_get, ptr @__ksymtab_atmel_hsmc_get_reg_layout, ptr @__ksymtab_atmel_smc_cs_conf_apply, ptr @__ksymtab_atmel_smc_cs_conf_get, ptr @__ksymtab_atmel_smc_cs_conf_init, ptr @__ksymtab_atmel_smc_cs_conf_set_cycle, ptr @__ksymtab_atmel_smc_cs_conf_set_pulse, ptr @__ksymtab_atmel_smc_cs_conf_set_setup, ptr @__ksymtab_atmel_smc_cs_conf_set_timing], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @atmel_smc_cs_conf_init(ptr nocapture noundef writeonly %0) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %0, i8 0, i32 20, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_smc_cs_conf_set_timing(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  switch i32 %4, label %28 [
    i32 6, label %5
    i32 4, label %5
    i32 2, label %5
    i32 1, label %5
    i32 0, label %5
  ]

5:                                                ; preds = %3, %3, %3, %3, %3
  %6 = lshr i32 %2, 6
  %7 = and i32 %2, 63
  %8 = icmp ugt i32 %7, 7
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %6, %9
  %11 = select i1 %8, i32 0, i32 %7
  %12 = icmp ugt i32 %10, 1
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %12, i32 7, i32 %11
  %15 = select i1 %12, i32 -34, i32 0
  %16 = select i1 %13, i32 0, i32 8
  %17 = or i32 %16, %14
  %18 = shl nsw i32 -1, %1
  %19 = sub i32 28, %1
  %20 = lshr i32 -1, %19
  %21 = and i32 %20, %18
  %22 = xor i32 %21, -1
  %23 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = shl i32 %17, %1
  %27 = or i32 %25, %26
  store i32 %27, ptr %23, align 4
  br label %28

28:                                               ; preds = %5, %3
  %29 = phi i32 [ %15, %5 ], [ -22, %3 ]
  ret i32 %29
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_smc_cs_conf_set_setup(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 29)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = lshr i32 %2, 7
  %8 = and i32 %2, 127
  %9 = icmp ugt i32 %8, 31
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %7, %10
  %12 = select i1 %9, i32 0, i32 %8
  %13 = icmp ugt i32 %11, 1
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %13, i32 31, i32 %12
  %16 = select i1 %13, i32 -34, i32 0
  %17 = select i1 %14, i32 0, i32 32
  %18 = or i32 %17, %15
  %19 = shl nsw i32 -1, %1
  %20 = sub i32 24, %1
  %21 = lshr i32 -1, %20
  %22 = and i32 %21, %19
  %23 = xor i32 %22, -1
  %24 = load i32, ptr %0, align 4
  %25 = and i32 %24, %23
  %26 = shl i32 %18, %1
  %27 = or i32 %25, %26
  store i32 %27, ptr %0, align 4
  br label %28

28:                                               ; preds = %6, %3
  %29 = phi i32 [ %16, %6 ], [ -22, %3 ]
  ret i32 %29
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_smc_cs_conf_set_pulse(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 29)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = lshr i32 %2, 8
  %8 = and i32 %2, 255
  %9 = icmp ugt i32 %8, 63
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %7, %10
  %12 = select i1 %9, i32 0, i32 %8
  %13 = icmp ugt i32 %11, 1
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %13, i32 63, i32 %12
  %16 = select i1 %13, i32 -34, i32 0
  %17 = select i1 %14, i32 0, i32 64
  %18 = or i32 %17, %15
  %19 = shl nsw i32 -1, %1
  %20 = sub i32 24, %1
  %21 = lshr i32 -1, %20
  %22 = and i32 %21, %19
  %23 = xor i32 %22, -1
  %24 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  %27 = shl i32 %18, %1
  %28 = or i32 %26, %27
  store i32 %28, ptr %24, align 4
  br label %29

29:                                               ; preds = %6, %3
  %30 = phi i32 [ %16, %6 ], [ -22, %3 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_smc_cs_conf_set_cycle(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %1, -17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = lshr i32 %2, 8
  %8 = and i32 %2, 255
  %9 = icmp ugt i32 %8, 127
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %7, %10
  %12 = select i1 %9, i32 0, i32 %8
  %13 = icmp ugt i32 %11, 3
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 3) #6
  %15 = select i1 %13, i32 127, i32 %12
  %16 = select i1 %13, i32 -34, i32 0
  %17 = shl nuw nsw i32 %14, 7
  %18 = or i32 %17, %15
  %19 = shl nsw i32 -1, %1
  %20 = sub nuw nsw i32 16, %1
  %21 = lshr i32 -1, %20
  %22 = and i32 %21, %19
  %23 = xor i32 %22, -1
  %24 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  %27 = shl i32 %18, %1
  %28 = or i32 %26, %27
  store i32 %28, ptr %24, align 4
  br label %29

29:                                               ; preds = %6, %3
  %30 = phi i32 [ %16, %6 ], [ -22, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_smc_cs_conf_apply(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = shl i32 %1, 4
  %5 = load i32, ptr %2, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %4, i32 noundef %5) #6
  %7 = or i32 %4, 4
  %8 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %7, i32 noundef %9) #6
  %11 = or i32 %4, 8
  %12 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %11, i32 noundef %13) #6
  %15 = or i32 %4, 12
  %16 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %15, i32 noundef %17) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_hsmc_cs_conf_apply(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load i32, ptr %1, align 4
  %6 = mul i32 %2, 20
  %7 = add i32 %5, %6
  %8 = load i32, ptr %3, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %7, i32 noundef %8) #6
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %6, 4
  %12 = add i32 %11, %10
  %13 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %12, i32 noundef %14) #6
  %16 = load i32, ptr %1, align 4
  %17 = add i32 %6, 8
  %18 = add i32 %17, %16
  %19 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %18, i32 noundef %20) #6
  %22 = load i32, ptr %1, align 4
  %23 = add i32 %6, 12
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %24, i32 noundef %26) #6
  %28 = load i32, ptr %1, align 4
  %29 = add i32 %6, 16
  %30 = add i32 %29, %28
  %31 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %30, i32 noundef %32) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_smc_cs_conf_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = shl i32 %1, 4
  %5 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %4, ptr noundef %2) #6
  %6 = or i32 %4, 4
  %7 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 1
  %8 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %6, ptr noundef %7) #6
  %9 = or i32 %4, 8
  %10 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 2
  %11 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %9, ptr noundef %10) #6
  %12 = or i32 %4, 12
  %13 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %2, i32 0, i32 4
  %14 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %12, ptr noundef %13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_hsmc_cs_conf_get(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = load i32, ptr %1, align 4
  %6 = mul i32 %2, 20
  %7 = add i32 %5, %6
  %8 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %7, ptr noundef %3) #6
  %9 = load i32, ptr %1, align 4
  %10 = add i32 %6, 4
  %11 = add i32 %10, %9
  %12 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 1
  %13 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %11, ptr noundef %12) #6
  %14 = load i32, ptr %1, align 4
  %15 = add i32 %6, 8
  %16 = add i32 %15, %14
  %17 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 2
  %18 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %16, ptr noundef %17) #6
  %19 = load i32, ptr %1, align 4
  %20 = add i32 %6, 12
  %21 = add i32 %20, %19
  %22 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 3
  %23 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %21, ptr noundef %22) #6
  %24 = load i32, ptr %1, align 4
  %25 = add i32 %6, 16
  %26 = add i32 %25, %24
  %27 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %3, i32 0, i32 4
  %28 = tail call i32 @regmap_read(ptr noundef %0, i32 noundef %26, ptr noundef %27) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @atmel_hsmc_get_reg_layout(ptr noundef %0) #3 {
  %2 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_smc_ids, ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ inttoptr (i32 -22 to ptr), %1 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
