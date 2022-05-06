; ModuleID = '/llk/IR/drivers/gpu/drm/drm_fb_cma_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_fb_cma_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_cma_get_gem_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_cma_get_gem_obj\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_cma_get_gem_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_cma_get_gem_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_cma_get_gem_addr\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_cma_get_gem_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_cma_sync_non_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_cma_sync_non_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_cma_sync_non_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, ptr, i32, i32, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.71 = type { i32, ptr }

@__kstrtab_drm_fb_cma_get_gem_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_cma_get_gem_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_cma_get_gem_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_cma_get_gem_obj to i32), ptr @__kstrtab_drm_fb_cma_get_gem_obj, ptr @__kstrtabns_drm_fb_cma_get_gem_obj }, section "___ksymtab_gpl+drm_fb_cma_get_gem_obj", align 4
@__kstrtab_drm_fb_cma_get_gem_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_cma_get_gem_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_cma_get_gem_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_cma_get_gem_addr to i32), ptr @__kstrtab_drm_fb_cma_get_gem_addr, ptr @__kstrtabns_drm_fb_cma_get_gem_addr }, section "___ksymtab_gpl+drm_fb_cma_get_gem_addr", align 4
@__kstrtab_drm_fb_cma_sync_non_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_cma_sync_non_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_cma_sync_non_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_cma_sync_non_coherent to i32), ptr @__kstrtab_drm_fb_cma_sync_non_coherent, ptr @__kstrtabns_drm_fb_cma_sync_non_coherent }, section "___ksymtab_gpl+drm_fb_cma_sync_non_coherent", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_fb_cma_get_gem_addr, ptr @__ksymtab_drm_fb_cma_get_gem_obj, ptr @__ksymtab_drm_fb_cma_sync_non_coherent], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @drm_gem_fb_get_obj(ptr noundef %0, i32 noundef %1) #4
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @drm_format_info_block_width(ptr noundef %5, i32 noundef %2) #4
  %7 = load ptr, ptr %4, align 8
  %8 = tail call i32 @drm_format_info_block_height(ptr noundef %7, i32 noundef %2) #4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 3
  %11 = getelementptr [4 x i8], ptr %10, i32 0, i32 %2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = tail call ptr @drm_gem_fb_get_obj(ptr noundef %0, i32 noundef %2) #4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 7, i32 %2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %26 to i16
  %30 = zext i8 %28 to i16
  br label %31

31:                                               ; preds = %23, %16
  %32 = phi i16 [ %29, %23 ], [ 1, %16 ]
  %33 = phi i16 [ %30, %23 ], [ 1, %16 ]
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 16
  %37 = trunc i32 %36 to i16
  %38 = udiv i16 %37, %32
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = trunc i32 %42 to i16
  %44 = udiv i16 %43, %33
  %45 = zext i16 %44 to i32
  %46 = urem i32 %45, %8
  %47 = sub nsw i32 %45, %46
  %48 = udiv i32 %39, %6
  %49 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 6, i32 %2
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, %47
  %52 = mul nuw nsw i32 %48, %13
  %53 = add i32 %21, %52
  %54 = add i32 %53, %51
  br label %55

55:                                               ; preds = %31, %3
  %56 = phi i32 [ %54, %31 ], [ 0, %3 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_cma_sync_non_coherent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %5 = alloca %struct.drm_rect, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 3
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %17

17:                                               ; preds = %45, %13
  %18 = phi ptr [ %7, %13 ], [ %46, %45 ]
  %19 = phi i32 [ 0, %13 ], [ %41, %45 ]
  %20 = call ptr @drm_gem_fb_get_obj(ptr noundef %18, i32 noundef %19) #4
  %21 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %20, i32 0, i32 4
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %6, align 4
  %26 = call i32 @drm_fb_cma_get_gem_addr(ptr noundef %25, ptr noundef %2, i32 noundef %19)
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #4
  %27 = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  br i1 %27, label %28, label %40

28:                                               ; preds = %28, %24
  %29 = load i32, ptr %14, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr %struct.drm_framebuffer, ptr %30, i32 0, i32 6, i32 %19
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %29
  %34 = load i32, ptr %15, align 4
  %35 = sub i32 %34, %29
  %36 = mul i32 %35, %32
  %37 = load ptr, ptr %16, align 4
  %38 = add i32 %33, %26
  call void @dma_sync_single_for_device(ptr noundef %37, i32 noundef %38, i32 noundef %36, i32 noundef 1) #4
  %39 = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  br i1 %39, label %28, label %40

40:                                               ; preds = %28, %24, %17
  %41 = add nuw nsw i32 %19, 1
  %42 = load i8, ptr %10, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr %6, align 4
  br label %17

47:                                               ; preds = %40, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_damage_iter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
