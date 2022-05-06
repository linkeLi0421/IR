; ModuleID = '/llk/IR/drivers/gpu/drm/drm_dumb_buffers.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dumb_buffers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.67, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.67 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_mode_map_dumb = type { i32, i32, i64 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_create_dumb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 8
  %20 = icmp ult i32 %19, 9
  br i1 %20, label %40, label %21

21:                                               ; preds = %16
  %22 = add nuw i32 %18, 7
  %23 = lshr i32 %22, 3
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 %23)
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = mul i32 %23, %11
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 %14)
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = mul i32 %27, %14
  %32 = add i32 %31, 4095
  %33 = icmp ult i32 %32, 4096
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.drm_driver, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %2, ptr noundef %0, ptr noundef %1) #4
  br label %40

40:                                               ; preds = %34, %30, %26, %21, %16, %13, %9, %3
  %41 = phi i32 [ %39, %34 ], [ -38, %3 ], [ -22, %13 ], [ -22, %9 ], [ -22, %21 ], [ -22, %26 ], [ -22, %30 ], [ -22, %16 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_create_dumb_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 8
  %20 = icmp ult i32 %19, 9
  br i1 %20, label %40, label %21

21:                                               ; preds = %16
  %22 = add nuw i32 %18, 7
  %23 = lshr i32 %22, 3
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 %23) #4
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = mul i32 %23, %11
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 %14) #4
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = mul i32 %27, %14
  %32 = add i32 %31, 4095
  %33 = icmp ult i32 %32, 4096
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %1, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false) #4
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.drm_driver, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %2, ptr noundef %0, ptr noundef %1) #4
  br label %40

40:                                               ; preds = %34, %30, %26, %21, %16, %13, %9, %3
  %41 = phi i32 [ %39, %34 ], [ -38, %3 ], [ -22, %13 ], [ -22, %9 ], [ -22, %21 ], [ -22, %26 ], [ -22, %30 ], [ -22, %16 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_mmap_dumb_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = load i32, ptr %1, align 8
  %14 = getelementptr inbounds %struct.drm_mode_map_dumb, ptr %1, i32 0, i32 2
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %11(ptr noundef %2, ptr noundef %0, i32 noundef %13, ptr noundef %14) #4
  br label %19

17:                                               ; preds = %9
  %18 = tail call i32 @drm_gem_dumb_map_offset(ptr noundef %2, ptr noundef %0, i32 noundef %13, ptr noundef %14) #4
  br label %19

19:                                               ; preds = %17, %15, %3
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], [ -38, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_destroy_dumb(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %2, ptr noundef %0, i32 noundef %1) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 @drm_gem_dumb_destroy(ptr noundef %2, ptr noundef %0, i32 noundef %1) #4
  br label %17

17:                                               ; preds = %15, %13, %3
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ], [ -38, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dumb_destroy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_destroy_dumb_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %2, ptr noundef %0, i32 noundef %4) #4
  br label %18

16:                                               ; preds = %10
  %17 = tail call i32 @drm_gem_dumb_destroy(ptr noundef %2, ptr noundef %0, i32 noundef %4) #4
  br label %18

18:                                               ; preds = %16, %14, %3
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ -38, %3 ]
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
