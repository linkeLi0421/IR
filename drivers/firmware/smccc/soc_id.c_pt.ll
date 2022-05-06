; ModuleID = '/llk/IR/drivers/firmware/smccc/soc_id.c_pt.bc'
source_filename = "../drivers/firmware/smccc/soc_id.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_soc_id__181_106_smccc_soc_init6 = internal global ptr @smccc_soc_init, section ".initcall6.init", align 4
@soc_dev = internal unnamed_addr global ptr null, align 4
@soc_dev_attr = internal unnamed_addr global ptr null, align 4
@__exitcall_smccc_soc_exit = internal global ptr @smccc_soc_exit, section ".exitcall.exit", align 4
@smccc_soc_init.soc_id_str = internal global [20 x i8] zeroinitializer, align 1
@smccc_soc_init.soc_id_rev_str = internal global [12 x i8] zeroinitializer, align 1
@smccc_soc_init.soc_id_jep106_id_str = internal global [12 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [44 x i8] c"\013SMCCC: SOC_ID: %s: invalid SMCCC conduit\0A\00", align 1
@__func__.smccc_soc_init = private unnamed_addr constant [15 x i8] c"smccc_soc_init\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"\016SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\016SMCCC: SOC_ID: ARCH_FEATURES(ARCH_SOC_ID) returned error: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\013SMCCC: SOC_ID: ARCH_SOC_ID(0) returned error: %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\013SMCCC: SOC_ID: ARCH_SOC_ID(1) returned error: %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"jep106:%02x%02x\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s:%04x\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\016SMCCC: SOC_ID: ID = %s Revision = %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__exitcall_smccc_soc_exit, ptr @__initcall__kmod_soc_id__181_106_smccc_soc_init6, ptr @smccc_soc_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smccc_soc_init() #0 section ".init.text" {
  %1 = tail call i32 @arm_smccc_get_version() #5
  %2 = icmp ult i32 %1, 65538
  br i1 %2, label %81, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.smccc_soc_init) #6
  br label %81

8:                                                ; preds = %3
  %9 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  switch i32 %9, label %14 [
    i32 2, label %10
    i32 1, label %12
  ]

10:                                               ; preds = %8
  %11 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147483646) #5, !srcloc !8
  br label %15

12:                                               ; preds = %8
  %13 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147483646) #5, !srcloc !9
  br label %15

14:                                               ; preds = %8
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147483646) #5, !srcloc !10
  br label %19

15:                                               ; preds = %12, %10
  %16 = phi { i32, i32, i32, i32 } [ %13, %12 ], [ %11, %10 ]
  %17 = extractvalue { i32, i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %14
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %81

21:                                               ; preds = %15
  %22 = icmp slt i32 %17, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %17) #6
  br label %81

25:                                               ; preds = %21
  %26 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  switch i32 %26, label %31 [
    i32 2, label %27
    i32 1, label %29
  ]

27:                                               ; preds = %25
  %28 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 0) #5, !srcloc !11
  br label %32

29:                                               ; preds = %25
  %30 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 0) #5, !srcloc !12
  br label %32

31:                                               ; preds = %25
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483646, i32 0) #5, !srcloc !13
  br label %36

32:                                               ; preds = %29, %27
  %33 = phi { i32, i32, i32, i32 } [ %30, %29 ], [ %28, %27 ]
  %34 = extractvalue { i32, i32, i32, i32 } %33, 0
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %31
  %37 = phi i32 [ -1, %31 ], [ %34, %32 ]
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %37) #6
  br label %81

39:                                               ; preds = %32
  %40 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  switch i32 %40, label %45 [
    i32 2, label %41
    i32 1, label %43
  ]

41:                                               ; preds = %39
  %42 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 1) #5, !srcloc !14
  br label %46

43:                                               ; preds = %39
  %44 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 1) #5, !srcloc !15
  br label %46

45:                                               ; preds = %39
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483646, i32 1) #5, !srcloc !16
  br label %50

46:                                               ; preds = %43, %41
  %47 = phi { i32, i32, i32, i32 } [ %44, %43 ], [ %42, %41 ]
  %48 = extractvalue { i32, i32, i32, i32 } %47, 0
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %45
  %51 = phi i32 [ -1, %45 ], [ %48, %46 ]
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %51) #6
  br label %81

53:                                               ; preds = %46
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 28) #7
  store ptr %55, ptr @soc_dev_attr, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %81, label %57

57:                                               ; preds = %53
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smccc_soc_init.soc_id_rev_str, ptr noundef nonnull @.str.5, i32 noundef %48)
  %59 = lshr i32 %34, 24
  %60 = lshr i32 %34, 16
  %61 = and i32 %60, 127
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smccc_soc_init.soc_id_jep106_id_str, ptr noundef nonnull @.str.6, i32 noundef %59, i32 noundef %61)
  %63 = and i32 %34, 65535
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smccc_soc_init.soc_id_str, ptr noundef nonnull @.str.7, ptr noundef nonnull @smccc_soc_init.soc_id_jep106_id_str, i32 noundef %63)
  %65 = load ptr, ptr @soc_dev_attr, align 4
  %66 = getelementptr inbounds %struct.soc_device_attribute, ptr %65, i32 0, i32 4
  store ptr @smccc_soc_init.soc_id_str, ptr %66, align 4
  %67 = getelementptr inbounds %struct.soc_device_attribute, ptr %65, i32 0, i32 2
  store ptr @smccc_soc_init.soc_id_rev_str, ptr %67, align 4
  %68 = getelementptr inbounds %struct.soc_device_attribute, ptr %65, i32 0, i32 1
  store ptr @smccc_soc_init.soc_id_jep106_id_str, ptr %68, align 4
  %69 = tail call ptr @soc_device_register(ptr noundef %65) #5
  store ptr %69, ptr @soc_dev, align 4
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %71 = load ptr, ptr @soc_dev_attr, align 4
  br i1 %70, label %72, label %75

72:                                               ; preds = %57
  tail call void @kfree(ptr noundef %71) #5
  %73 = load ptr, ptr @soc_dev, align 4
  %74 = ptrtoint ptr %73 to i32
  br label %81

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %77, ptr noundef %79) #6
  br label %81

81:                                               ; preds = %75, %72, %53, %50, %36, %23, %19, %6, %0
  %82 = phi i32 [ -95, %6 ], [ 0, %19 ], [ -22, %23 ], [ -22, %36 ], [ -22, %50 ], [ %74, %72 ], [ 0, %75 ], [ 0, %0 ], [ -12, %53 ]
  ret i32 %82
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @smccc_soc_exit() #0 section ".exit.text" {
  %1 = load ptr, ptr @soc_dev, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @soc_device_unregister(ptr noundef nonnull %1) #5
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @soc_dev_attr, align 4
  tail call void @kfree(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_get_version() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 2151252001, i64 2151252084}
!9 = !{i64 2151255717, i64 2151255780}
!10 = !{i64 2151257774}
!11 = !{i64 2151264123, i64 2151264206}
!12 = !{i64 2151266808, i64 2151266871}
!13 = !{i64 2151268116}
!14 = !{i64 2151272886, i64 2151272969}
!15 = !{i64 2151275571, i64 2151275634}
!16 = !{i64 2151276879}
