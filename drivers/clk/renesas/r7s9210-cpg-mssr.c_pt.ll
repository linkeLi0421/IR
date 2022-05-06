; ModuleID = '/llk/IR/drivers/clk/renesas/r7s9210-cpg-mssr.c_pt.bc'
source_filename = "../drivers/clk/renesas/r7s9210-cpg-mssr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.mssr_mod_clk = type { ptr, i32, i32 }
%struct.cpg_mssr_info = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.4 = type { i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@r7s9210_early_core_clks = internal global [4 x %struct.cpg_core_clk] [%struct.cpg_core_clk { ptr @.str, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.1, i32 7, i32 5, i32 6, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.2, i32 8, i32 6, i32 7, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.3, i32 4, i32 1, i32 8, i32 16, i32 1, i32 0 }], align 4
@r7s9210_early_mod_clks = internal constant [3 x %struct.mssr_mod_clk] [%struct.mssr_mod_clk { ptr @.str.4, i32 109, i32 4 }, %struct.mssr_mod_clk { ptr @.str.5, i32 110, i32 4 }, %struct.mssr_mod_clk { ptr @.str.6, i32 111, i32 4 }], section ".init.rodata", align 4
@r7s9210_core_clks = internal global [5 x %struct.cpg_core_clk] [%struct.cpg_core_clk { ptr @.str.7, i32 0, i32 1, i32 8, i32 2, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.8, i32 1, i32 1, i32 8, i32 4, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.9, i32 2, i32 1, i32 8, i32 8, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.10, i32 3, i32 1, i32 8, i32 16, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.11, i32 5, i32 1, i32 8, i32 32, i32 1, i32 0 }], align 4
@r7s9210_mod_clks = internal constant [21 x %struct.mssr_mod_clk] [%struct.mssr_mod_clk { ptr @.str.12, i32 140, i32 4 }, %struct.mssr_mod_clk { ptr @.str.13, i32 141, i32 4 }, %struct.mssr_mod_clk { ptr @.str.14, i32 142, i32 4 }, %struct.mssr_mod_clk { ptr @.str.15, i32 143, i32 4 }, %struct.mssr_mod_clk { ptr @.str.16, i32 144, i32 4 }, %struct.mssr_mod_clk { ptr @.str.17, i32 201, i32 2 }, %struct.mssr_mod_clk { ptr @.str.18, i32 202, i32 2 }, %struct.mssr_mod_clk { ptr @.str.19, i32 205, i32 2 }, %struct.mssr_mod_clk { ptr @.str.20, i32 206, i32 2 }, %struct.mssr_mod_clk { ptr @.str.21, i32 268, i32 3 }, %struct.mssr_mod_clk { ptr @.str.22, i32 269, i32 3 }, %struct.mssr_mod_clk { ptr @.str.23, i32 270, i32 3 }, %struct.mssr_mod_clk { ptr @.str.24, i32 271, i32 3 }, %struct.mssr_mod_clk { ptr @.str.25, i32 272, i32 3 }, %struct.mssr_mod_clk { ptr @.str.26, i32 302, i32 3 }, %struct.mssr_mod_clk { ptr @.str.27, i32 303, i32 3 }, %struct.mssr_mod_clk { ptr @.str.28, i32 304, i32 3 }, %struct.mssr_mod_clk { ptr @.str.29, i32 329, i32 2 }, %struct.mssr_mod_clk { ptr @.str.30, i32 330, i32 2 }, %struct.mssr_mod_clk { ptr @.str.31, i32 331, i32 2 }, %struct.mssr_mod_clk { ptr @.str.32, i32 332, i32 2 }], section ".init.rodata", align 4
@r7s9210_cpg_mssr_info = dso_local constant %struct.cpg_mssr_info { ptr @r7s9210_early_core_clks, i32 4, ptr @r7s9210_early_mod_clks, i32 3, ptr @r7s9210_core_clks, i32 5, i32 5, i32 9, i32 1, ptr @r7s9210_mod_clks, i32 21, i32 352, ptr null, i32 0, ptr null, i32 0, ptr null, ptr @rza2_cpg_clk_register }, section ".init.rodata", align 4
@__of_table_cpg_mstp_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s9210-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpg_mstp_clks_of_clk_init_driver }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".main\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".pll\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"p1c\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ostm2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ostm1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ostm0\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"p0\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"scif4\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"scif3\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"scif2\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"scif1\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"scif0\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ether1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ether0\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"spibsc\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"sdhi11\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"sdhi10\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"sdhi01\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"sdhi00\00", align 1
@cpg_mode = internal unnamed_addr global i1 false, align 1
@ratio_tab = internal unnamed_addr constant [5 x %struct.anon.4] [%struct.anon.4 { i32 2, i32 4, i32 8, i32 16 }, %struct.anon.4 { i32 4, i32 4, i32 8, i32 16 }, %struct.anon.4 { i32 8, i32 4, i32 8, i32 16 }, %struct.anon.4 { i32 16, i32 8, i32 16, i32 16 }, %struct.anon.4 { i32 16, i32 16, i32 32, i32 32 }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_cpg_mstp_clks], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal ptr @rza2_cpg_clk_register(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readnone %5) #0 section ".init.text" {
  %7 = getelementptr inbounds %struct.cpg_core_clk, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %3, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cpg_core_clk, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %24 [
    i32 7, label %18
    i32 8, label %15
  ]

15:                                               ; preds = %12
  %16 = load i1, ptr @cpg_mode, align 1
  %17 = select i1 %16, i32 44, i32 88
  br label %19

18:                                               ; preds = %12
  tail call fastcc void @r7s9210_update_clk_table(ptr noundef %10, ptr noundef %4) #3
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ 1, %18 ], [ %17, %15 ]
  %21 = load ptr, ptr %1, align 4
  %22 = tail call ptr @__clk_get_name(ptr noundef %10) #4
  %23 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %21, ptr noundef %22, i32 noundef 0, i32 noundef %20, i32 noundef 1) #4
  br label %24

24:                                               ; preds = %19, %12, %6
  %25 = phi ptr [ %23, %19 ], [ %10, %6 ], [ inttoptr (i32 -22 to ptr), %12 ]
  ret ptr %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpg_mstp_clks_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  tail call void @cpg_mssr_early_init(ptr noundef %0, ptr noundef nonnull @r7s9210_cpg_mssr_info) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @r7s9210_update_clk_table(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @clk_get_rate(ptr noundef %0) #4
  %4 = icmp ugt i32 %3, 12000000
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i1 true, ptr @cpg_mode, align 1
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = and i32 %7, 4095
  switch i32 %8, label %13 [
    i32 18, label %14
    i32 274, label %9
    i32 530, label %10
    i32 802, label %11
    i32 819, label %12
  ]

9:                                                ; preds = %6
  br label %14

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %6
  br label %14

12:                                               ; preds = %6
  br label %14

13:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/r7s9210-cpg-mssr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

14:                                               ; preds = %12, %11, %10, %9, %6
  %15 = phi i32 [ 1, %9 ], [ 2, %10 ], [ 3, %11 ], [ 4, %12 ], [ 0, %6 ]
  %16 = getelementptr [5 x %struct.anon.4], ptr @ratio_tab, i32 0, i32 %15, i32 3
  %17 = getelementptr [5 x %struct.anon.4], ptr @ratio_tab, i32 0, i32 %15, i32 2
  %18 = getelementptr [5 x %struct.anon.4], ptr @ratio_tab, i32 0, i32 %15, i32 1
  %19 = getelementptr [5 x %struct.anon.4], ptr @ratio_tab, i32 0, i32 %15
  br label %20

20:                                               ; preds = %33, %14
  %21 = phi i32 [ 0, %14 ], [ %34, %33 ]
  %22 = getelementptr [5 x %struct.cpg_core_clk], ptr @r7s9210_core_clks, i32 0, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %33 [
    i32 0, label %27
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
    i32 4, label %26
    i32 5, label %30
  ]

24:                                               ; preds = %20
  br label %27

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20, %20
  br label %27

27:                                               ; preds = %26, %25, %24, %20
  %28 = phi ptr [ %16, %26 ], [ %17, %25 ], [ %18, %24 ], [ %19, %20 ]
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ 32, %20 ], [ %29, %27 ]
  %32 = getelementptr [5 x %struct.cpg_core_clk], ptr @r7s9210_core_clks, i32 0, i32 %21, i32 4
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = add nuw nsw i32 %21, 1
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %20

36:                                               ; preds = %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cpg_mssr_early_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2878129}
!9 = !{i64 2150450446}
!10 = !{i64 2150450769, i64 2150451272, i64 2150450806, i64 2150450862, i64 2150450896, i64 2150450920, i64 2150450961, i64 2150450982, i64 2150451010, i64 2150451044}
