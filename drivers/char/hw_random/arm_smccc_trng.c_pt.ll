; ModuleID = '/llk/IR/drivers/char/hw_random/arm_smccc_trng.c_pt.bc'
source_filename = "../drivers/char/hw_random/arm_smccc_trng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_arm_smccc_trng__170_119_smccc_trng_driver_init6 = internal global ptr @smccc_trng_driver_init, section ".initcall6.init", align 4
@smccc_trng_driver = internal global %struct.platform_driver { ptr @smccc_trng_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_smccc_trng_driver_exit = internal global ptr @smccc_trng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias171 = internal constant [41 x i8] c"arm_smccc_trng.alias=platform:smccc_trng\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [37 x i8] c"arm_smccc_trng.author=Andre Przywara\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [58 x i8] c"arm_smccc_trng.file=drivers/char/hw_random/arm_smccc_trng\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"arm_smccc_trng.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"smccc_trng\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_smccc_trng_driver_exit, ptr @__initcall__kmod_arm_smccc_trng__170_119_smccc_trng_driver_init6, ptr @smccc_trng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smccc_trng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @smccc_trng_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @smccc_trng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @smccc_trng_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smccc_trng_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 60, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  store ptr @.str, ptr %3, align 4
  %6 = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 5
  store ptr @smccc_trng_read, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call i32 @devm_hwrng_register(ptr noundef %2, ptr noundef nonnull %3) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ -12, %1 ]
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smccc_trng_read(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca { i32, i32, i32 }, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  %9 = getelementptr inbounds i8, ptr %5, i32 8
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  %11 = getelementptr inbounds i8, ptr %5, i32 8
  %12 = getelementptr inbounds i8, ptr %5, i32 8
  %13 = getelementptr inbounds i8, ptr %5, i32 4
  br label %14

14:                                               ; preds = %58, %7
  %15 = phi i32 [ 0, %7 ], [ %59, %58 ]
  %16 = sub i32 %2, %15
  %17 = shl i32 %16, 3
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 96)
  %19 = tail call i32 @arm_smccc_1_1_get_conduit() #7
  switch i32 %19, label %30 [
    i32 2, label %20
    i32 1, label %25
  ]

20:                                               ; preds = %14
  %21 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2080374701, i32 %18) #7, !srcloc !8
  %22 = extractvalue { i32, i32, i32, i32 } %21, 3
  %23 = extractvalue { i32, i32, i32, i32 } %21, 2
  %24 = extractvalue { i32, i32, i32, i32 } %21, 1
  store i32 %24, ptr %5, align 4
  store i32 %23, ptr %10, align 4
  store i32 %22, ptr %11, align 4
  br label %31

25:                                               ; preds = %14
  %26 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2080374701, i32 %18) #7, !srcloc !9
  %27 = extractvalue { i32, i32, i32, i32 } %26, 3
  %28 = extractvalue { i32, i32, i32, i32 } %26, 2
  %29 = extractvalue { i32, i32, i32, i32 } %26, 1
  store i32 %29, ptr %5, align 4
  store i32 %28, ptr %8, align 4
  store i32 %27, ptr %9, align 4
  br label %31

30:                                               ; preds = %14
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2080374701, i32 %18) #7, !srcloc !10
  br label %63

31:                                               ; preds = %25, %20
  %32 = phi { i32, i32, i32, i32 } [ %26, %25 ], [ %21, %20 ]
  %33 = extractvalue { i32, i32, i32, i32 } %32, 0
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %1, i32 %15
  %39 = lshr exact i32 %18, 3
  %40 = icmp eq i32 %18, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 4 %12, i32 %42, i1 false) #7
  %43 = icmp ugt i32 %18, 32
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = sub nuw nsw i32 %39, %42
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 4) #7
  %47 = getelementptr i8, ptr %38, i32 %42
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 4 %13, i32 %46, i1 false) #7
  %48 = add nuw nsw i32 %46, %42
  %49 = icmp ugt i32 %39, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = sub nsw i32 %39, %48
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 4) #7
  %53 = getelementptr i8, ptr %38, i32 %48
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr nonnull align 4 %5, i32 %52, i1 false) #7
  %54 = add nuw nsw i32 %52, %48
  br label %55

55:                                               ; preds = %50, %44, %41, %37
  %56 = phi i32 [ %54, %50 ], [ 0, %37 ], [ %42, %41 ], [ %48, %44 ]
  %57 = add i32 %56, %15
  br label %58

58:                                               ; preds = %55, %35
  %59 = phi i32 [ %15, %35 ], [ %57, %55 ]
  %60 = icmp ult i32 %59, %2
  br i1 %60, label %14, label %63

61:                                               ; preds = %31
  %62 = extractvalue { i32, i32, i32, i32 } %32, 0
  br label %63

63:                                               ; preds = %61, %58, %30, %4
  %64 = phi i32 [ -1, %30 ], [ 0, %4 ], [ %62, %61 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5)
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!8 = !{i64 2151126749, i64 2151126832}
!9 = !{i64 2151129494, i64 2151129557}
!10 = !{i64 2151130844}
