; ModuleID = '/llk/IR/arch/arm/mach-mmp/devices.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/devices.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pxa_device_desc = type { ptr, ptr, i32, i32, i32, i32, [2 x i32] }
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @pxa_register_device(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca [4 x %struct.resource], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.pxa_device_desc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pxa_device_desc, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @platform_device_alloc(ptr noundef %6, i32 noundef %8) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %64, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 17
  store i64 4294967295, ptr %12, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false)
  %13 = getelementptr inbounds %struct.pxa_device_desc, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pxa_device_desc, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  store i32 %14, ptr %4, align 4
  %21 = add i32 %14, -1
  %22 = add i32 %21, %18
  %23 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  store i32 512, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %16, %11
  %26 = phi i32 [ 1, %20 ], [ 0, %16 ], [ 0, %11 ]
  %27 = getelementptr inbounds %struct.pxa_device_desc, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr [4 x %struct.resource], ptr %4, i32 0, i32 %26
  store i32 %28, ptr %31, align 4
  %32 = getelementptr [4 x %struct.resource], ptr %4, i32 0, i32 %26, i32 1
  store i32 %28, ptr %32, align 4
  %33 = getelementptr [4 x %struct.resource], ptr %4, i32 0, i32 %26, i32 3
  store i32 1024, ptr %33, align 4
  %34 = add nuw nsw i32 %26, 1
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %26, %25 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %44, %35
  %38 = phi i32 [ %48, %44 ], [ %36, %35 ]
  %39 = phi i1 [ false, %44 ], [ true, %35 ]
  %40 = phi i32 [ 1, %44 ], [ 0, %35 ]
  %41 = getelementptr %struct.pxa_device_desc, ptr %0, i32 0, i32 6, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = getelementptr [4 x %struct.resource], ptr %4, i32 0, i32 %38
  store i32 %42, ptr %45, align 4
  %46 = getelementptr [4 x %struct.resource], ptr %4, i32 0, i32 %38, i32 1
  store i32 %42, ptr %46, align 4
  %47 = getelementptr [4 x %struct.resource], ptr %4, i32 0, i32 %38, i32 3
  store i32 2048, ptr %47, align 4
  %48 = add nuw nsw i32 %38, 1
  br i1 %39, label %37, label %49

49:                                               ; preds = %44, %37
  %50 = phi i32 [ %38, %37 ], [ %48, %44 ]
  %51 = call i32 @platform_device_add_resources(ptr noundef nonnull %9, ptr noundef nonnull %4, i32 noundef %50) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @platform_device_put(ptr noundef nonnull %9) #4
  br label %64

54:                                               ; preds = %49
  %55 = icmp ne ptr %1, null
  %56 = icmp ne i32 %2, 0
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 @platform_device_add_data(ptr noundef nonnull %9, ptr noundef nonnull %1, i32 noundef %2) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @platform_device_put(ptr noundef nonnull %9) #4
  br label %64

62:                                               ; preds = %58, %54
  %63 = call i32 @platform_device_add(ptr noundef nonnull %9) #4
  br label %64

64:                                               ; preds = %62, %61, %53, %3
  %65 = phi i32 [ %51, %53 ], [ %59, %61 ], [ %63, %62 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #4
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
