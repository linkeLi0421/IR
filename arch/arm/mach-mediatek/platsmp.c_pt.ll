; ModuleID = '/llk/IR/arch/arm/mach-mediatek/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-mediatek/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_smp_boot_info = type { i32, i32, [7 x i32], [7 x i32] }

@.str = private unnamed_addr constant [23 x i8] c"mediatek,mt81xx-tz-smp\00", align 1
@mt81xx_tz_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @mtk_tz_smp_prepare_cpus, ptr null, ptr @mtk_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mt81xx_tz_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @mt81xx_tz_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"mediatek,mt6589-smp\00", align 1
@mt6589_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @mtk_smp_prepare_cpus, ptr null, ptr @mtk_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mt6589_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @mt6589_smp_ops }, section "__cpu_method_of_table", align 4
@mtk_tz_smp_boot_infos = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt8135_tz_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt8135_tz_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt8135_tz_boot }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@mtk_smp_boot_infos = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6589\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt6589_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt7623_boot }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_mt7623_boot }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@mtk_smp_info = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\013%s: Device is not supported\0A\00", align 1
@__func__.__mtk_smp_prepare_cpus = private unnamed_addr constant [23 x i8] c"__mtk_smp_prepare_cpus\00", align 1
@mtk_smp_base = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"\013%s: Can't remap %lx\0A\00", align 1
@mtk_mt8135_tz_boot = internal constant %struct.mtk_smp_boot_info { i32 -2147475456, i32 1020, [7 x i32] [i32 1397506353, i32 1279349554, i32 1095978035, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1016, i32 1016, i32 1016, i32 0, i32 0, i32 0, i32 0] }, align 4
@mtk_mt6589_boot = internal constant %struct.mtk_smp_boot_info { i32 268443648, i32 52, [7 x i32] [i32 1397506353, i32 1279349554, i32 1095978035, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 56, i32 60, i32 64, i32 0, i32 0, i32 0, i32 0] }, align 4
@mtk_mt7623_boot = internal constant %struct.mtk_smp_boot_info { i32 270540800, i32 52, [7 x i32] [i32 1397506353, i32 1279349554, i32 1095978035, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 56, i32 60, i32 64, i32 0, i32 0, i32 0, i32 0] }, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_mt6589_smp, ptr @__cpu_method_of_table_mt81xx_tz_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_tz_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  tail call fastcc void @__mtk_smp_prepare_cpus(i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @mtk_smp_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @mtk_smp_info, align 4
  %7 = add i32 %0, -1
  %8 = getelementptr %struct.mtk_smp_boot_info, ptr %6, i32 0, i32 2, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr %struct.mtk_smp_boot_info, ptr %6, i32 0, i32 3, i32 %7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %3, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #5, !srcloc !8
  %15 = and i32 %0, 31
  %16 = add nuw nsw i32 %15, 1
  %17 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %16
  %18 = lshr i32 %0, 5
  %19 = sub nsw i32 0, %18
  %20 = getelementptr i32, ptr %17, i32 %19
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %11, %5, %2
  %22 = phi i32 [ 0, %11 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__mtk_smp_prepare_cpus(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, ptr @mtk_smp_boot_infos, ptr @mtk_tz_smp_boot_infos
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %6 = getelementptr %struct.of_device_id, ptr %3, i32 %5, i32 2
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.of_device_id, ptr %3, i32 %5, i32 3
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr @mtk_smp_info, align 4
  br label %17

12:                                               ; preds = %4
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %4

15:                                               ; preds = %12
  %16 = load ptr, ptr @mtk_smp_info, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__mtk_smp_prepare_cpus) #6
  br label %41

22:                                               ; preds = %17
  %23 = load i32, ptr %18, align 4
  br i1 %2, label %27, label %24

24:                                               ; preds = %22
  %25 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %23, i32 -2130706432, i32 8454144) #7, !srcloc !9
  %26 = inttoptr i32 %25 to ptr
  store ptr %26, ptr @mtk_smp_base, align 4
  br label %34

27:                                               ; preds = %22
  %28 = tail call ptr @ioremap(i32 noundef %23, i32 noundef 4096) #5
  store ptr %28, ptr @mtk_smp_base, align 4
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr @mtk_smp_info, align 4
  br i1 %29, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, ptr %30, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__mtk_smp_prepare_cpus, i32 noundef %32) #6
  br label %41

34:                                               ; preds = %27, %24
  %35 = phi ptr [ %18, %24 ], [ %30, %27 ]
  %36 = phi ptr [ %26, %24 ], [ %28, %27 ]
  %37 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup_arm to i32), i32 -2130706432, i32 8454144) #7, !srcloc !10
  %38 = getelementptr inbounds %struct.mtk_smp_boot_info, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %36, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #5, !srcloc !8
  br label %41

41:                                               ; preds = %34, %31, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup_arm() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  tail call fastcc void @__mtk_smp_prepare_cpus(i32 noundef 0) #4
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 362835}
!9 = !{i64 2147907283, i64 2147907306, i64 2147907338, i64 2147907370, i64 2147907408, i64 2147907438}
!10 = !{i64 2147906497, i64 2147906520, i64 2147906552, i64 2147906584, i64 2147906622, i64 2147906652}
