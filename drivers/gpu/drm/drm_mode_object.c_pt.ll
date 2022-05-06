; ModuleID = '/llk/IR/drivers/gpu/drm/drm_mode_object.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_mode_object.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_object_find:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_object_find\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_object_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_object_put:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_object_put\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_object_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_object_get:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_object_get\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_object_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_object_attach_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_object_attach_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_object_attach_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_object_property_set_value:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_object_property_set_value\22\09\09\09\09\09"
module asm "__kstrtabns_drm_object_property_set_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_object_property_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_object_property_get_value\22\09\09\09\09\09"
module asm "__kstrtabns_drm_object_property_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.72 = type { i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_mode_obj_get_properties = type { i64, i64, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_mode_obj_set_property = type { i64, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }

@.str = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_mode_object.c\00", align 1
@__kstrtab_drm_mode_object_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_object_find = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_object_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_object_find to i32), ptr @__kstrtab_drm_mode_object_find, ptr @__kstrtabns_drm_mode_object_find }, section "___ksymtab+drm_mode_object_find", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"OBJ ID: %d (%d)\0A\00", align 1
@__kstrtab_drm_mode_object_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_object_put = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_object_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_object_put to i32), ptr @__kstrtab_drm_mode_object_put, ptr @__kstrtabns_drm_mode_object_put }, section "___ksymtab+drm_mode_object_put", align 4
@__kstrtab_drm_mode_object_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_object_get = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_object_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_object_get to i32), ptr @__kstrtab_drm_mode_object_get, ptr @__kstrtabns_drm_mode_object_get }, section "___ksymtab+drm_mode_object_get", align 4
@.str.2 = private unnamed_addr constant [153 x i8] c"Failed to attach object property (type: 0x%x). Please increase DRM_OBJECT_MAX_PROPERTY by 1 for each time you see this message on the same object type.\0A\00", align 1
@__kstrtab_drm_object_attach_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_object_attach_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_object_attach_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_object_attach_property to i32), ptr @__kstrtab_drm_object_attach_property, ptr @__kstrtabns_drm_object_attach_property }, section "___ksymtab+drm_object_attach_property", align 4
@__kstrtab_drm_object_property_set_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_object_property_set_value = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_object_property_set_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_object_property_set_value to i32), ptr @__kstrtab_drm_object_property_set_value, ptr @__kstrtabns_drm_object_property_set_value }, section "___ksymtab+drm_object_property_set_value", align 4
@__kstrtab_drm_object_property_get_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_object_property_get_value = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_object_property_get_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_object_property_get_value to i32), ptr @__kstrtab_drm_object_property_get_value, ptr @__kstrtabns_drm_object_property_get_value }, section "___ksymtab+drm_object_property_get_value", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_mode_object_find, ptr @__ksymtab_drm_mode_object_get, ptr @__ksymtab_drm_mode_object_put, ptr @__ksymtab_drm_object_attach_property, ptr @__ksymtab_drm_object_property_get_value, ptr @__ksymtab_drm_object_property_set_value], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__drm_mode_object_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq ptr %4, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #8
  br label %17

17:                                               ; preds = %16, %10, %5
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  %20 = select i1 %3, ptr %1, ptr null
  %21 = tail call i32 @idr_alloc(ptr noundef %19, ptr noundef %20, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #8
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  store i32 %21, ptr %1, align 4
  %24 = getelementptr inbounds %struct.drm_mode_object, ptr %1, i32 0, i32 1
  store i32 %2, ptr %24, align 4
  %25 = icmp eq ptr %4, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.drm_mode_object, ptr %1, i32 0, i32 4
  store ptr %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_mode_object, ptr %1, i32 0, i32 3
  store volatile i32 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %23, %17
  tail call void @mutex_unlock(ptr noundef %18) #8
  %30 = tail call i32 @llvm.smin.i32(i32 %21, i32 0)
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_object_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 8
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #8
  br label %13

13:                                               ; preds = %12, %8, %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  %16 = tail call i32 @idr_alloc(ptr noundef %15, ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #8
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store i32 %16, ptr %1, align 4
  %19 = getelementptr inbounds %struct.drm_mode_object, ptr %1, i32 0, i32 1
  store i32 %2, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %13
  tail call void @mutex_unlock(ptr noundef %14) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %16, i32 0) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_object_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  %5 = load i32, ptr %1, align 4
  %6 = tail call ptr @idr_replace(ptr noundef %4, ptr noundef %1, i32 noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_object_unregister(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 8
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_mode_object, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %11, %7, %2
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %17) #8
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  %22 = tail call ptr @idr_remove(ptr noundef %21, i32 noundef %18) #8
  store i32 0, ptr %1, align 4
  br label %23

23:                                               ; preds = %20, %16
  tail call void @mutex_unlock(ptr noundef %17) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_mode_object_lease_required(i32 noundef %0) local_unnamed_addr #3 {
  switch i32 %0, label %2 [
    i32 -858993460, label %3
    i32 -1061109568, label %3
    i32 -286331154, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1, %1, %1
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  %7 = tail call ptr @idr_find(ptr noundef %6, i32 noundef %2) #8
  %8 = icmp ne ptr %7, null
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.drm_mode_object, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %17, label %54

15:                                               ; preds = %4
  %16 = icmp eq ptr %7, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %15, %11
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.drm_mode_object, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %25 [
    i32 -858993460, label %23
    i32 -1061109568, label %23
    i32 -286331154, label %23
  ]

23:                                               ; preds = %20, %20, %20
  %24 = tail call zeroext i1 @_drm_lease_held(ptr noundef %1, i32 noundef %2) #8
  br i1 %24, label %25, label %54

25:                                               ; preds = %23, %20
  %26 = getelementptr inbounds %struct.drm_mode_object, ptr %7, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_mode_object, ptr %7, i32 0, i32 3
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %43, %29
  %34 = phi i32 [ %41, %43 ], [ %31, %29 ]
  %35 = add i32 %34, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #8, !srcloc !11
  br label %36

36:                                               ; preds = %36, %33
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %34, i32 %35, ptr elementtype(i32) %30) #8, !srcloc !12
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %36

40:                                               ; preds = %36
  %41 = extractvalue { i32, i32 } %37, 1
  %42 = icmp eq i32 %41, %34
  br i1 %42, label %45, label %43, !prof !10

43:                                               ; preds = %40
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %45, label %33

45:                                               ; preds = %43, %40, %29
  %46 = phi i32 [ 0, %29 ], [ %34, %40 ], [ 0, %43 ]
  %47 = add i32 %46, 1
  %48 = or i32 %47, %46
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50, !prof !10

50:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 0) #8
  br label %51

51:                                               ; preds = %50, %45
  %52 = icmp eq i32 %46, 0
  %53 = select i1 %52, ptr null, ptr %7
  br label %54

54:                                               ; preds = %51, %25, %23, %17, %15, %11
  %55 = phi ptr [ %7, %25 ], [ %53, %51 ], [ null, %23 ], [ null, %17 ], [ null, %15 ], [ null, %11 ]
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_object_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef %8) #8
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !14
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #8
  br label %17

16:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void %9(ptr noundef %7) #8
  br label %17

17:                                               ; preds = %16, %15, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_object_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef %8) #8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !16
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !9

12:                                               ; preds = %5
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !10

16:                                               ; preds = %12, %5
  %17 = phi i32 [ 2, %5 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %17) #8
  br label %18

18:                                               ; preds = %16, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_object_attach_property(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1061109568
  %12 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %11, label %16, label %21

16:                                               ; preds = %3
  br i1 %15, label %17, label %28

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %0, i32 60
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %28, !prof !9

21:                                               ; preds = %3
  br i1 %15, label %22, label %28

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 8
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26, !prof !10

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 243, %17 ], [ 245, %22 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %27, i32 noundef 9, ptr noundef null) #8
  br label %28

28:                                               ; preds = %26, %22, %21, %17, %16
  %29 = icmp eq i32 %6, 24
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i32, ptr %9, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %31) #8
  br label %40

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr %struct.drm_object_properties, ptr %33, i32 0, i32 1, i32 %6
  store ptr %1, ptr %34, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr %struct.drm_object_properties, ptr %35, i32 0, i32 2, i32 %6
  store i64 %2, ptr %36, align 8
  %37 = load ptr, ptr %4, align 4
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_object_property_set_value(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 16
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19, %3
  %24 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #8
  br label %29

29:                                               ; preds = %28, %23, %19, %15
  %30 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %41, %29
  %35 = phi i32 [ %42, %41 ], [ 0, %29 ]
  %36 = getelementptr %struct.drm_object_properties, ptr %31, i32 0, i32 1, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr %struct.drm_object_properties, ptr %31, i32 0, i32 2, i32 %35
  store i64 %2, ptr %40, align 8
  br label %44

41:                                               ; preds = %34
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, %32
  br i1 %43, label %44, label %34

44:                                               ; preds = %41, %39, %29
  %45 = phi i32 [ 0, %39 ], [ -22, %29 ], [ -22, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_object_property_get_value(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 16
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %23, label %15, !prof !17

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23, !prof !10

23:                                               ; preds = %19, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 345, i32 noundef 9, ptr noundef null) #8
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_driver, ptr %26, i32 0, i32 24
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %28, 16
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %43, label %34

34:                                               ; preds = %23, %19, %15
  %35 = phi ptr [ %24, %23 ], [ %5, %15 ], [ %5, %19 ]
  %36 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 30, i32 27
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %37, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %23
  %44 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call i32 @drm_atomic_get_property(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %66

50:                                               ; preds = %43, %39, %34
  %51 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 8
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %63, %50
  %56 = phi i32 [ %64, %63 ], [ 0, %50 ]
  %57 = getelementptr %struct.drm_object_properties, ptr %52, i32 0, i32 1, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr %struct.drm_object_properties, ptr %52, i32 0, i32 2, i32 %56
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %2, align 8
  br label %66

63:                                               ; preds = %55
  %64 = add nuw nsw i32 %56, 1
  %65 = icmp eq i32 %64, %53
  br i1 %65, label %66, label %55

66:                                               ; preds = %63, %60, %50, %48
  %67 = phi i32 [ 0, %60 ], [ %49, %48 ], [ -22, %50 ], [ -22, %63 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_object_get_properties(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %101

11:                                               ; preds = %94, %5
  %12 = phi ptr [ %95, %94 ], [ %8, %5 ]
  %13 = phi ptr [ %96, %94 ], [ %8, %5 ]
  %14 = phi i32 [ %98, %94 ], [ 0, %5 ]
  %15 = phi i32 [ %97, %94 ], [ 0, %5 ]
  %16 = getelementptr %struct.drm_object_properties, ptr %13, i32 0, i32 1, i32 %14
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !18
  %18 = getelementptr inbounds %struct.drm_property, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  %21 = or i1 %20, %1
  br i1 %21, label %22, label %94

22:                                               ; preds = %11
  %23 = load i32, ptr %4, align 4
  %24 = icmp ugt i32 %23, %15
  br i1 %24, label %25, label %89

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_property, ptr %17, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_driver, ptr %29, i32 0, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %31, 16
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %48, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 30, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %39, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ne ptr %43, null
  %45 = and i32 %19, 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %65, label %51

48:                                               ; preds = %25
  %49 = and i32 %19, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48, %41, %37
  %52 = load i32, ptr %13, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %62, %51
  %55 = phi i32 [ %63, %62 ], [ 0, %51 ]
  %56 = getelementptr %struct.drm_object_properties, ptr %13, i32 0, i32 1, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %17
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr %struct.drm_object_properties, ptr %13, i32 0, i32 2, i32 %55
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %6, align 8
  br label %68

62:                                               ; preds = %54
  %63 = add nuw nsw i32 %55, 1
  %64 = icmp eq i32 %63, %52
  br i1 %64, label %92, label %54

65:                                               ; preds = %48, %41
  %66 = call i32 @drm_atomic_get_property(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %6) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %65, %59
  %69 = getelementptr i32, ptr %2, i32 %15
  %70 = getelementptr inbounds %struct.drm_property, ptr %17, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call ptr @llvm.thread.pointer() #8
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %74 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #9, !srcloc !19
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %77 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %69, i32 %71, i32 -1090519041) #8, !srcloc !22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %68
  %80 = getelementptr i64, ptr %3, i32 %15
  %81 = load i64, ptr %6, align 8
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #9, !srcloc !19
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %85 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %80, i64 %81, i32 -1090519041) #8, !srcloc !23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load ptr, ptr %7, align 4
  br label %89

89:                                               ; preds = %87, %22
  %90 = phi ptr [ %88, %87 ], [ %12, %22 ]
  %91 = add i32 %15, 1
  br label %94

92:                                               ; preds = %79, %68, %65, %62, %51
  %93 = phi i32 [ -22, %62 ], [ -22, %51 ], [ %66, %65 ], [ -14, %68 ], [ -14, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %103

94:                                               ; preds = %89, %11
  %95 = phi ptr [ %90, %89 ], [ %12, %11 ]
  %96 = phi ptr [ %90, %89 ], [ %13, %11 ]
  %97 = phi i32 [ %91, %89 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %98 = add nuw nsw i32 %14, 1
  %99 = load i32, ptr %96, align 8
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %11, label %101

101:                                              ; preds = %94, %5
  %102 = phi i32 [ 0, %5 ], [ %97, %94 ]
  store i32 %102, ptr %4, align 4
  br label %103

103:                                              ; preds = %101, %92
  %104 = phi i32 [ 0, %101 ], [ %93, %92 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_obj_get_properties_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !18
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %97, label %14

14:                                               ; preds = %3
  %15 = and i32 %11, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %26) #8
  br label %27

27:                                               ; preds = %25, %21, %14
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %1, i32 0, i32 4
  %30 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 3
  %31 = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %1, i32 0, i32 2
  br label %33

33:                                               ; preds = %75, %27
  %34 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %0, ptr noundef nonnull %4) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load i32, ptr %28, align 4
  %38 = load i32, ptr %29, align 8
  %39 = call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %37, i32 noundef %38) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.drm_mode_object, ptr %39, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %30, align 1, !range !8
  %47 = icmp ne i8 %46, 0
  %48 = load i64, ptr %1, align 8
  %49 = trunc i64 %48 to i32
  %50 = inttoptr i32 %49 to ptr
  %51 = load i64, ptr %31, align 8
  %52 = trunc i64 %51 to i32
  %53 = inttoptr i32 %52 to ptr
  %54 = call i32 @drm_mode_object_get_properties(ptr noundef nonnull %39, i1 noundef zeroext %47, ptr noundef %50, ptr noundef %53, ptr noundef %32)
  br label %55

55:                                               ; preds = %45, %41
  %56 = phi i32 [ %54, %45 ], [ -22, %41 ]
  %57 = getelementptr inbounds %struct.drm_mode_object, ptr %39, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %39, align 4
  %62 = getelementptr inbounds %struct.drm_mode_object, ptr %39, i32 0, i32 3
  %63 = load volatile i32, ptr %62, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %61, i32 noundef %63) #8
  %64 = load ptr, ptr %57, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #8, !srcloc !11
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #8, !srcloc !14
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !10

70:                                               ; preds = %68
  call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #8
  br label %72

71:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void %64(ptr noundef %62) #8
  br label %72

72:                                               ; preds = %71, %70, %68, %55, %33
  %73 = phi i32 [ %34, %33 ], [ %56, %55 ], [ %56, %68 ], [ %56, %70 ], [ %56, %71 ]
  %74 = icmp eq i32 %73, -35
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %33, label %78

78:                                               ; preds = %75, %72, %36
  %79 = phi i32 [ %76, %75 ], [ %73, %72 ], [ -2, %36 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #8
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.drm_driver, ptr %80, i32 0, i32 24
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %9, align 4
  %84 = and i32 %82, 16
  %85 = and i32 %84, %83
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %97, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %89, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %96) #8
  br label %97

97:                                               ; preds = %95, %91, %78, %3
  %98 = phi i32 [ -95, %3 ], [ %79, %95 ], [ %79, %91 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  ret i32 %98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_mode_obj_find_prop_id(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %10, label %17

7:                                                ; preds = %10
  %8 = add nuw nsw i32 %11, 1
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %12 = getelementptr %struct.drm_object_properties, ptr %4, i32 0, i32 1, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_property, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %7

17:                                               ; preds = %10, %7, %2
  %18 = phi ptr [ null, %2 ], [ null, %7 ], [ %13, %10 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_obj_set_property_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %6 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, 2
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %186

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.drm_mode_obj_set_property, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_mode_obj_set_property, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %18, i32 noundef %20) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %186, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.drm_mode_object, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %169, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_mode_obj_set_property, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = load i32, ptr %25, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %35, label %169

32:                                               ; preds = %35
  %33 = add nuw nsw i32 %36, 1
  %34 = icmp eq i32 %33, %30
  br i1 %34, label %169, label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ %33, %32 ], [ 0, %27 ]
  %37 = getelementptr %struct.drm_object_properties, ptr %25, i32 0, i32 1, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_property, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %29
  br i1 %41, label %42, label %32

42:                                               ; preds = %35
  %43 = icmp eq ptr %38, null
  br i1 %43, label %169, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.drm_property, ptr %38, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %50, 16
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %64, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 30, i32 27
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %58, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %106, label %64

64:                                               ; preds = %60, %44
  %65 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false) #8, !annotation !18
  %66 = tail call ptr @drm_atomic_state_alloc(ptr noundef %46) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %104, label %68

68:                                               ; preds = %64
  call void @drm_modeset_acquire_init(ptr noundef nonnull %6, i32 noundef 0) #8
  %69 = getelementptr inbounds %struct.drm_atomic_state, ptr %66, i32 0, i32 9
  store ptr %6, ptr %69, align 4
  %70 = getelementptr inbounds %struct.drm_mode_object, ptr %21, i32 0, i32 1
  %71 = getelementptr inbounds %struct.drm_atomic_state, ptr %66, i32 0, i32 1
  %72 = getelementptr i8, ptr %21, i32 -32
  %73 = trunc i64 %65 to i32
  br label %74

74:                                               ; preds = %92, %68
  %75 = load ptr, ptr %71, align 4
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 30, i32 36
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %38
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, ptr %70, align 4
  %81 = icmp eq i32 %80, -1061109568
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = call i32 @drm_atomic_connector_commit_dpms(ptr noundef nonnull %66, ptr noundef %72, i32 noundef %73) #8
  br label %89

84:                                               ; preds = %74
  %85 = call i32 @drm_atomic_set_property(ptr noundef nonnull %66, ptr noundef %2, ptr noundef nonnull %21, ptr noundef nonnull %38, i64 noundef %65) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @drm_atomic_commit(ptr noundef nonnull %66) #8
  br label %89

89:                                               ; preds = %87, %84, %82
  %90 = phi i32 [ %83, %82 ], [ %85, %84 ], [ %88, %87 ]
  %91 = icmp eq i32 %90, -35
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  call void @drm_atomic_state_clear(ptr noundef nonnull %66) #8
  %93 = call i32 @drm_modeset_backoff(ptr noundef nonnull %6) #8
  br label %74

94:                                               ; preds = %89, %79
  %95 = phi i32 [ %90, %89 ], [ -22, %79 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %66) #8, !srcloc !11
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %66, ptr nonnull %66, i32 1, ptr nonnull elementtype(i32) %66) #8, !srcloc !14
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = icmp sgt i32 %97, 0
  br i1 %100, label %103, label %101, !prof !10

101:                                              ; preds = %99
  call void @refcount_warn_saturate(ptr noundef nonnull %66, i32 noundef 3) #8
  br label %103

102:                                              ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void @__drm_atomic_state_free(ptr noundef nonnull %66) #8
  br label %103

103:                                              ; preds = %102, %101, %99
  call void @drm_modeset_drop_locks(ptr noundef nonnull %6) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %6) #8
  br label %104

104:                                              ; preds = %103, %64
  %105 = phi i32 [ %95, %103 ], [ -12, %64 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #8
  br label %169

106:                                              ; preds = %60, %56
  %107 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #8, !annotation !18
  %108 = call zeroext i1 @drm_property_change_valid_get(ptr noundef nonnull %38, i64 noundef %107, ptr noundef nonnull %4) #8
  br i1 %108, label %109, label %167

109:                                              ; preds = %106
  %110 = load ptr, ptr %47, align 4
  %111 = getelementptr inbounds %struct.drm_driver, ptr %110, i32 0, i32 24
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %51, align 4
  %114 = and i32 %112, 16
  %115 = and i32 %114, %113
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %126, label %117

117:                                              ; preds = %109
  %118 = load ptr, ptr %57, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %118, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %117
  %125 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 30
  call void @mutex_lock(ptr noundef %125) #8
  br label %126

126:                                              ; preds = %124, %120, %109
  call void @drm_modeset_acquire_init(ptr noundef nonnull %5, i32 noundef 0) #8
  %127 = getelementptr inbounds %struct.drm_mode_object, ptr %21, i32 0, i32 1
  %128 = getelementptr i8, ptr %21, i32 -48
  br label %129

129:                                              ; preds = %146, %126
  %130 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %46, ptr noundef nonnull %5) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i32, ptr %127, align 4
  switch i32 %133, label %140 [
    i32 -1061109568, label %134
    i32 -858993460, label %136
    i32 -286331154, label %138
  ]

134:                                              ; preds = %132
  %135 = call i32 @drm_connector_set_obj_prop(ptr noundef nonnull %21, ptr noundef nonnull %38, i64 noundef %107) #8
  br label %140

136:                                              ; preds = %132
  %137 = call i32 @drm_mode_crtc_set_obj_prop(ptr noundef nonnull %21, ptr noundef nonnull %38, i64 noundef %107) #8
  br label %140

138:                                              ; preds = %132
  %139 = call i32 @drm_mode_plane_set_obj_prop(ptr noundef %128, ptr noundef nonnull %38, i64 noundef %107) #8
  br label %140

140:                                              ; preds = %138, %136, %134, %132
  %141 = phi i32 [ 0, %132 ], [ %139, %138 ], [ %137, %136 ], [ %135, %134 ]
  %142 = load ptr, ptr %4, align 4
  call void @drm_property_change_valid_put(ptr noundef nonnull %38, ptr noundef %142) #8
  br label %143

143:                                              ; preds = %140, %129
  %144 = phi i32 [ %130, %129 ], [ %141, %140 ]
  %145 = icmp eq i32 %144, -35
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = call i32 @drm_modeset_backoff(ptr noundef nonnull %5) #8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %129, label %149

149:                                              ; preds = %146, %143
  %150 = phi i32 [ %147, %146 ], [ %144, %143 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %5) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %5) #8
  %151 = load ptr, ptr %47, align 4
  %152 = getelementptr inbounds %struct.drm_driver, ptr %151, i32 0, i32 24
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr %51, align 4
  %155 = and i32 %153, 16
  %156 = and i32 %155, %154
  %157 = icmp eq i32 %156, 16
  br i1 %157, label %167, label %158

158:                                              ; preds = %149
  %159 = load ptr, ptr %57, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %159, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %161, %158
  %166 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %166) #8
  br label %167

167:                                              ; preds = %165, %161, %149, %106
  %168 = phi i32 [ -22, %106 ], [ %150, %165 ], [ %150, %161 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %169

169:                                              ; preds = %167, %104, %42, %32, %27, %23
  %170 = phi i32 [ %105, %104 ], [ %168, %167 ], [ -22, %42 ], [ -22, %23 ], [ -22, %27 ], [ -22, %32 ]
  %171 = getelementptr inbounds %struct.drm_mode_object, ptr %21, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %186, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %21, align 4
  %176 = getelementptr inbounds %struct.drm_mode_object, ptr %21, i32 0, i32 3
  %177 = load volatile i32, ptr %176, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %175, i32 noundef %177) #8
  %178 = load ptr, ptr %171, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %176) #8, !srcloc !11
  %179 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %176, ptr %176, i32 1, ptr elementtype(i32) %176) #8, !srcloc !14
  %180 = extractvalue { i32, i32, i32 } %179, 0
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %174
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %186, label %184, !prof !10

184:                                              ; preds = %182
  call void @refcount_warn_saturate(ptr noundef %176, i32 noundef 3) #8
  br label %186

185:                                              ; preds = %174
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void %178(ptr noundef %176) #8
  br label %186

186:                                              ; preds = %185, %184, %182, %169, %16, %3
  %187 = phi i32 [ -95, %3 ], [ -2, %16 ], [ %170, %169 ], [ %170, %182 ], [ %170, %184 ], [ %170, %185 ]
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_connector_commit_dpms(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_set_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_change_valid_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_plane_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_change_valid_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 560038, i64 2148061604, i64 2148061630, i64 2148061677, i64 2148061699, i64 2148061727, i64 2148061747}
!12 = !{i64 546101, i64 546125, i64 546146, i64 546163, i64 546180}
!13 = !{i64 2148226546}
!14 = !{i64 2148128681, i64 2148128713, i64 2148128742, i64 2148128776, i64 2148128807, i64 2148128830}
!15 = !{i64 2149266706}
!16 = !{i64 2148126324, i64 2148126356, i64 2148126385, i64 2148126419, i64 2148126450, i64 2148126473}
!17 = !{!"branch_weights", i32 1073205, i32 2146410443}
!18 = !{!"auto-init"}
!19 = !{i64 2415061}
!20 = !{i64 2415258}
!21 = !{i64 2149900537}
!22 = !{i64 2155008722, i64 2155009002, i64 2155009336, i64 2155009670}
!23 = !{i64 2155018734, i64 2155019014, i64 2155019348, i64 2155019682}
