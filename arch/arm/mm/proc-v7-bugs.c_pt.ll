; ModuleID = '/llk/IR/arch/arm/mm/proc-v7-bugs.c_pt.bc'
source_filename = "../arch/arm/mm/proc-v7-bugs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@spectre_warned = internal global i8 0, section ".data..percpu", align 1
@harden_branch_predictor_fn = dso_local global ptr null, section ".data..percpu", align 4
@.str = private unnamed_addr constant [88 x i8] c"Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\013CPU%u: %s\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"BPIALL\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ICIALLU\00", align 1
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"hypervisor\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\016CPU%u: Spectre v2: using %s workaround\0A\00", align 1
@spectre_bhb_method = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"\013CPU%u: Spectre BHB: method disagreement, system vulnerable\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\016CPU%u: Spectre BHB: using %s workaround\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"loop\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_v7_ca8_ibe() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #3, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @spectre_warned to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1", "=r"() #6, !srcloc !10
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i8, ptr %5, align 1, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #5
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %15, ptr noundef nonnull @.str) #7
  br label %17

17:                                               ; preds = %12, %9
  store i8 1, ptr %5, align 1
  br label %19

18:                                               ; preds = %0
  tail call fastcc void @cpu_v7_spectre_v2_init()
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpu_v7_spectre_v2_init() unnamed_addr #0 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !12
  %2 = and i32 %1, -16711696
  switch i32 %2, label %4 [
    i32 1090568320, label %20
    i32 1090568336, label %20
    i32 1090568400, label %20
    i32 1090568416, label %20
    i32 1090572432, label %20
    i32 1090572448, label %20
    i32 1090568432, label %3
    i32 1107296496, label %3
    i32 1107300352, label %41
    i32 1090572400, label %7
    i32 1090572416, label %7
  ]

3:                                                ; preds = %0, %0
  br label %20

4:                                                ; preds = %0
  %5 = and i32 %1, -16777216
  %6 = icmp eq i32 %5, 1090519040
  br i1 %6, label %41, label %7

7:                                                ; preds = %4, %0, %0
  %8 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  switch i32 %8, label %13 [
    i32 2, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %7
  %10 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147450880) #5, !srcloc !13
  br label %14

11:                                               ; preds = %7
  %12 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147450880) #5, !srcloc !14
  br label %14

13:                                               ; preds = %7
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147450880) #5, !srcloc !15
  br label %41

14:                                               ; preds = %11, %9
  %15 = phi { i32, i32, i32, i32 } [ %12, %11 ], [ %10, %9 ]
  %16 = extractvalue { i32, i32, i32, i32 } %15, 0
  switch i32 %16, label %40 [
    i32 1, label %41
    i32 0, label %17
  ]

17:                                               ; preds = %14
  %18 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  switch i32 %18, label %41 [
    i32 2, label %20
    i32 1, label %19
  ]

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %17, %3, %0, %0, %0, %0, %0, %0
  %21 = phi i32 [ 8, %17 ], [ 1, %0 ], [ 1, %0 ], [ 1, %0 ], [ 1, %0 ], [ 1, %0 ], [ 1, %0 ], [ 2, %3 ], [ 4, %19 ]
  %22 = tail call ptr @llvm.thread.pointer() #5
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  switch i32 %21, label %41 [
    i32 1, label %32
    i32 2, label %33
    i32 8, label %34
    i32 4, label %35
  ]

32:                                               ; preds = %31
  store ptr @harden_branch_predictor_bpiall, ptr %28, align 4
  br label %36

33:                                               ; preds = %31
  store ptr @harden_branch_predictor_iciallu, ptr %28, align 4
  br label %36

34:                                               ; preds = %31
  store ptr @call_hvc_arch_workaround_1, ptr %28, align 4
  store ptr @cpu_v7_hvc_switch_mm, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 8), align 4
  br label %36

35:                                               ; preds = %31
  store ptr @call_smc_arch_workaround_1, ptr %28, align 4
  store ptr @cpu_v7_smc_switch_mm, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 8), align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %32
  %37 = phi ptr [ @.str.2, %32 ], [ @.str.3, %33 ], [ @.str.4, %34 ], [ @.str.5, %35 ]
  %38 = load i32, ptr %23, align 8
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %38, ptr noundef nonnull %37) #7
  br label %41

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40, %36, %31, %20, %17, %14, %13, %4, %0
  %42 = phi i32 [ %21, %20 ], [ %21, %31 ], [ %21, %36 ], [ 0, %4 ], [ 0, %0 ], [ 0, %13 ], [ 0, %14 ], [ 0, %17 ], [ 0, %40 ]
  %43 = phi i32 [ 1, %20 ], [ 1, %31 ], [ 1, %36 ], [ 0, %4 ], [ 0, %0 ], [ 2, %13 ], [ 0, %14 ], [ 2, %17 ], [ 2, %40 ]
  tail call void @spectre_v2_update_state(i32 noundef %43, i32 noundef %42) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_v7_ca15_ibe() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #3, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @spectre_warned to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1", "=r"() #6, !srcloc !10
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i8, ptr %5, align 1, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #5
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %15, ptr noundef nonnull @.str) #7
  br label %17

17:                                               ; preds = %12, %9
  store i8 1, ptr %5, align 1
  br label %19

18:                                               ; preds = %0
  tail call fastcc void @cpu_v7_spectre_v2_init()
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_v7_bugs_init() local_unnamed_addr #0 {
  tail call fastcc void @cpu_v7_spectre_v2_init()
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !12
  %2 = and i32 %1, -16711696
  switch i32 %2, label %25 [
    i32 1090568432, label %4
    i32 1107296496, label %4
    i32 1090572400, label %4
    i32 1090572416, label %4
    i32 1090572432, label %3
    i32 1090572448, label %3
  ]

3:                                                ; preds = %0, %0
  br label %4

4:                                                ; preds = %3, %0, %0, %0, %0
  %5 = phi ptr [ @.str.2, %3 ], [ @.str.9, %0 ], [ @.str.9, %0 ], [ @.str.9, %0 ], [ @.str.9, %0 ]
  %6 = phi i32 [ 1, %3 ], [ 16, %0 ], [ 16, %0 ], [ 16, %0 ], [ 16, %0 ]
  %7 = load i32, ptr @spectre_bhb_method, align 4
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @llvm.thread.pointer() #5
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %14) #7
  br label %25

16:                                               ; preds = %9
  %17 = tail call i32 @spectre_bhb_update_vectors(i32 noundef %6) #5
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  store i32 %6, ptr @spectre_bhb_method, align 4
  br label %20

20:                                               ; preds = %19, %4
  %21 = tail call ptr @llvm.thread.pointer() #5
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %23, ptr noundef nonnull %5) #7
  br label %25

25:                                               ; preds = %20, %16, %11, %0
  %26 = phi i32 [ 0, %0 ], [ %6, %11 ], [ %6, %16 ], [ %6, %20 ]
  %27 = phi i32 [ 0, %0 ], [ 2, %11 ], [ 2, %16 ], [ 1, %20 ]
  tail call void @spectre_v2_update_state(i32 noundef %27, i32 noundef %26) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spectre_v2_update_state(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @harden_branch_predictor_bpiall() #0 {
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @harden_branch_predictor_iciallu() #0 {
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 0", "r"(i32 0) #5, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_hvc_arch_workaround_1() #0 {
  %1 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2147450880) #5, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_v7_hvc_switch_mm(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_smc_arch_workaround_1() #0 {
  %1 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2147450880) #5, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_v7_smc_switch_mm(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spectre_bhb_update_vectors(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 383613}
!10 = !{i64 5937}
!11 = !{i8 0, i8 2}
!12 = !{i64 2148805002}
!13 = !{i64 2149235086, i64 2149235169}
!14 = !{i64 2149238857, i64 2149238920}
!15 = !{i64 2149240954}
!16 = !{i64 2149244024}
!17 = !{i64 2149244343}
!18 = !{i64 2149249487, i64 2149249570}
!19 = !{i64 2149246250, i64 2149246313}
