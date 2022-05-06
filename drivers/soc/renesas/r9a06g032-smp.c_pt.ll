; ModuleID = '/llk/IR/drivers/soc/renesas/r9a06g032-smp.c_pt.bc'
source_filename = "../drivers/soc/renesas/r9a06g032-smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"renesas,r9a06g032-smp\00", align 1
@r9a06g032_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @r9a06g032_smp_prepare_cpus, ptr null, ptr @r9a06g032_smp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_r9a06g032_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @r9a06g032_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013CPU#1: missing device tree node\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cpu-release-addr\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\013CPU#1: invalid cpu-release-addr property\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\016CPU#1: cpu-release-addr %08x\0A\00", align 1
@cpu_bootaddr = internal unnamed_addr global ptr null, align 4
@cpu_lock = internal global %struct.spinlock zeroinitializer, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_method_of_table_r9a06g032_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @r9a06g032_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = tail call ptr @of_get_cpu_node(i32 noundef 1, ptr noundef null) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %33

9:                                                ; preds = %1
  %10 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @of_node_put(ptr noundef nonnull %5) #6
  br label %26

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !8
  %17 = call i32 @of_property_read_u64(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #6
  %18 = load i64, ptr %4, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %23

20:                                               ; preds = %13
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 0) #6
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %20 ]
  call void @of_node_put(ptr noundef nonnull %5) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %12
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %33

28:                                               ; preds = %23
  %29 = load i32, ptr %3, align 4
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %29) #7
  %31 = load i32, ptr %3, align 4
  %32 = call ptr @ioremap(i32 noundef %31, i32 noundef 4) #6
  store ptr %32, ptr @cpu_bootaddr, align 4
  br label %33

33:                                               ; preds = %28, %26, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @cpu_bootaddr, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpu_lock) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #8, !srcloc !10
  %7 = load ptr, ptr @cpu_bootaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #6, !srcloc !11
  %8 = and i32 %0, 31
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %9
  %11 = lshr i32 %0, 5
  %12 = sub nsw i32 0, %11
  %13 = getelementptr i32, ptr %10, i32 %12
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %13) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %14 = load i16, ptr @cpu_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @cpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %16

16:                                               ; preds = %5, %2
  %17 = phi i32 [ 0, %5 ], [ -19, %2 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 2150365916}
!10 = !{i64 2147905113, i64 2147905136, i64 2147905168, i64 2147905200, i64 2147905238, i64 2147905268}
!11 = !{i64 361451}
!12 = !{i64 2148898077}
!13 = !{i64 2148893901}
!14 = !{i64 2148893976, i64 2148894003, i64 2148894050, i64 2148894072, i64 2148894100, i64 2148894120}
!15 = !{i64 2148921080}
