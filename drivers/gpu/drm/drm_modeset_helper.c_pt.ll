; ModuleID = '/llk/IR/drivers/gpu/drm/drm_modeset_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_modeset_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_move_panel_connectors_to_head:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_move_panel_connectors_to_head\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_move_panel_connectors_to_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_mode_fill_fb_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_mode_fill_fb_struct\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_mode_fill_fb_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_helper_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_helper_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_helper_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_helper_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_helper_resume\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_helper_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }

@__kstrtab_drm_helper_move_panel_connectors_to_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_move_panel_connectors_to_head = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_move_panel_connectors_to_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_move_panel_connectors_to_head to i32), ptr @__kstrtab_drm_helper_move_panel_connectors_to_head, ptr @__kstrtabns_drm_helper_move_panel_connectors_to_head }, section "___ksymtab+drm_helper_move_panel_connectors_to_head", align 4
@__kstrtab_drm_helper_mode_fill_fb_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_mode_fill_fb_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_mode_fill_fb_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_mode_fill_fb_struct to i32), ptr @__kstrtab_drm_helper_mode_fill_fb_struct, ptr @__kstrtabns_drm_helper_mode_fill_fb_struct }, section "___ksymtab+drm_helper_mode_fill_fb_struct", align 4
@__kstrtab_drm_crtc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_init to i32), ptr @__kstrtab_drm_crtc_init, ptr @__kstrtabns_drm_crtc_init }, section "___ksymtab+drm_crtc_init", align 4
@__kstrtab_drm_mode_config_helper_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_helper_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_helper_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_helper_suspend to i32), ptr @__kstrtab_drm_mode_config_helper_suspend, ptr @__kstrtabns_drm_mode_config_helper_suspend }, section "___ksymtab+drm_mode_config_helper_suspend", align 4
@.str = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/drm_modeset_helper.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to resume (%d)\0A\00", align 1
@__kstrtab_drm_mode_config_helper_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_helper_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_helper_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_helper_resume to i32), ptr @__kstrtab_drm_mode_config_helper_resume, ptr @__kstrtabns_drm_mode_config_helper_resume }, section "___ksymtab+drm_mode_config_helper_resume", align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate primary plane\0A\00", align 1
@drm_primary_helper_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@safe_modeset_formats = internal constant [2 x i32] [i32 875713112, i32 875713089], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_crtc_init, ptr @__ksymtab_drm_helper_mode_fill_fb_struct, ptr @__ksymtab_drm_helper_move_panel_connectors_to_head, ptr @__ksymtab_drm_mode_config_helper_resume, ptr @__ksymtab_drm_mode_config_helper_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_helper_move_panel_connectors_to_head(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store volatile ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 9
  call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %18, %1
  %9 = phi ptr [ %10, %18 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %9, i32 64
  %12 = load i32, ptr %11, align 8
  switch i32 %12, label %18 [
    i32 7, label %13
    i32 14, label %13
    i32 16, label %13
  ]

13:                                               ; preds = %8, %8, %8
  %14 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %10, ptr %15, align 4
  %17 = load ptr, ptr %3, align 4
  store ptr %9, ptr %3, align 4
  store ptr %2, ptr %9, align 4
  store ptr %17, ptr %14, align 4
  store volatile ptr %9, ptr %17, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = icmp eq ptr %10, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %1
  %21 = load volatile ptr, ptr %2, align 8
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %5, ptr %26, align 4
  store ptr %21, ptr %5, align 4
  store ptr %24, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %23, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %29 = load i16, ptr %4, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  store ptr %0, ptr %1, align 8
  %4 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %2) #4
  %5 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  store ptr %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 9
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 10
  store i32 %10, ptr %11, align 4
  %12 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 0
  store i32 %13, ptr %14, align 4
  %15 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 7, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 0
  store i32 %16, ptr %17, align 4
  %18 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 7, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 7, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 7, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 8
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 8
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 11
  store i32 %40, ptr %41, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 456) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #4
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 8
  store i8 1, ptr %9, align 8
  %10 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull @drm_primary_helper_funcs, ptr noundef nonnull @safe_modeset_formats, i32 noundef 2, ptr noundef null, i32 noundef 1, ptr noundef null) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %5) #4
  br label %13

13:                                               ; preds = %12, %8, %7
  %14 = phi ptr [ null, %7 ], [ null, %12 ], [ %5, %8 ]
  %15 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef null, ptr noundef %2, ptr noundef null) #4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_config_helper_suspend(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void @drm_kms_helper_poll_disable(ptr noundef nonnull %0) #4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  tail call void @drm_fb_helper_set_suspend_unlocked(ptr noundef %5, i1 noundef zeroext true) #4
  %6 = tail call ptr @drm_atomic_helper_suspend(ptr noundef nonnull %0) #4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  tail call void @drm_fb_helper_set_suspend_unlocked(ptr noundef %9, i1 noundef zeroext false) #4
  tail call void @drm_kms_helper_poll_enable(ptr noundef nonnull %0) #4
  %10 = ptrtoint ptr %6 to i32
  br label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 102
  store ptr %6, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %8, %1
  %14 = phi i32 [ %10, %8 ], [ 0, %11 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_set_suspend_unlocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_config_helper_resume(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 102
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !13

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %15

8:                                                ; preds = %3
  %9 = tail call i32 @drm_atomic_helper_resume(ptr noundef nonnull %0, ptr noundef nonnull %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %9) #4
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr %4, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 36
  %14 = load ptr, ptr %13, align 4
  tail call void @drm_fb_helper_set_suspend_unlocked(ptr noundef %14, i1 noundef zeroext false) #4
  tail call void @drm_kms_helper_poll_enable(ptr noundef nonnull %0) #4
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = phi i32 [ -22, %7 ], [ %9, %12 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 2149210334}
!9 = !{i64 2149206158}
!10 = !{i64 2149206233, i64 2149206260, i64 2149206307, i64 2149206329, i64 2149206357, i64 2149206377}
!11 = !{i64 500036}
!12 = !{i64 2149234478}
!13 = !{!"branch_weights", i32 1, i32 2000}
