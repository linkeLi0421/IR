; ModuleID = '/llk/IR/drivers/gpu/drm/drm_panel.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_panel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_add:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_add\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_remove\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_unprepare\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_enable\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_disable\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_get_modes:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_get_modes\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_get_modes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_drm_find_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22of_drm_find_panel\22\09\09\09\09\09"
module asm "__kstrtabns_of_drm_find_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_drm_get_panel_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22of_drm_get_panel_orientation\22\09\09\09\09\09"
module asm "__kstrtabns_of_drm_get_panel_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_of_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_of_backlight\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_of_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.backlight_ops = type { i32, ptr, ptr, ptr }

@__kstrtab_drm_panel_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_init to i32), ptr @__kstrtab_drm_panel_init, ptr @__kstrtabns_drm_panel_init }, section "___ksymtab+drm_panel_init", align 4
@panel_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @panel_lock, i64 12), ptr getelementptr (i8, ptr @panel_lock, i64 12) } }, align 4
@panel_list = internal global %struct.list_head { ptr @panel_list, ptr @panel_list }, align 4
@__kstrtab_drm_panel_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_add = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_add to i32), ptr @__kstrtab_drm_panel_add, ptr @__kstrtabns_drm_panel_add }, section "___ksymtab+drm_panel_add", align 4
@__kstrtab_drm_panel_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_remove to i32), ptr @__kstrtab_drm_panel_remove, ptr @__kstrtabns_drm_panel_remove }, section "___ksymtab+drm_panel_remove", align 4
@__kstrtab_drm_panel_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_prepare to i32), ptr @__kstrtab_drm_panel_prepare, ptr @__kstrtabns_drm_panel_prepare }, section "___ksymtab+drm_panel_prepare", align 4
@__kstrtab_drm_panel_unprepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_unprepare = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_unprepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_unprepare to i32), ptr @__kstrtab_drm_panel_unprepare, ptr @__kstrtabns_drm_panel_unprepare }, section "___ksymtab+drm_panel_unprepare", align 4
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable backlight: %d\0A\00", align 1
@__kstrtab_drm_panel_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_enable to i32), ptr @__kstrtab_drm_panel_enable, ptr @__kstrtabns_drm_panel_enable }, section "___ksymtab+drm_panel_enable", align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to disable backlight: %d\0A\00", align 1
@__kstrtab_drm_panel_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_disable to i32), ptr @__kstrtab_drm_panel_disable, ptr @__kstrtabns_drm_panel_disable }, section "___ksymtab+drm_panel_disable", align 4
@__kstrtab_drm_panel_get_modes = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_get_modes = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_get_modes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_get_modes to i32), ptr @__kstrtab_drm_panel_get_modes, ptr @__kstrtabns_drm_panel_get_modes }, section "___ksymtab+drm_panel_get_modes", align 4
@__kstrtab_of_drm_find_panel = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_drm_find_panel = external dso_local constant [0 x i8], align 1
@__ksymtab_of_drm_find_panel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_drm_find_panel to i32), ptr @__kstrtab_of_drm_find_panel, ptr @__kstrtabns_of_drm_find_panel }, section "___ksymtab+of_drm_find_panel", align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@__kstrtab_of_drm_get_panel_orientation = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_drm_get_panel_orientation = external dso_local constant [0 x i8], align 1
@__ksymtab_of_drm_get_panel_orientation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_drm_get_panel_orientation to i32), ptr @__kstrtab_of_drm_get_panel_orientation, ptr @__kstrtabns_of_drm_get_panel_orientation }, section "___ksymtab+of_drm_get_panel_orientation", align 4
@__kstrtab_drm_panel_of_backlight = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_of_backlight = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_of_backlight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_of_backlight to i32), ptr @__kstrtab_drm_panel_of_backlight, ptr @__kstrtabns_drm_panel_of_backlight }, section "___ksymtab+drm_panel_of_backlight", align 4
@__UNIQUE_ID_author264 = internal constant [47 x i8] c"drm.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [41 x i8] c"drm.description=DRM panel infrastructure\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [29 x i8] c"drm.file=drivers/gpu/drm/drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [38 x i8] c"drm.license=GPL and additional rights\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__ksymtab_drm_panel_add, ptr @__ksymtab_drm_panel_disable, ptr @__ksymtab_drm_panel_enable, ptr @__ksymtab_drm_panel_get_modes, ptr @__ksymtab_drm_panel_init, ptr @__ksymtab_drm_panel_of_backlight, ptr @__ksymtab_drm_panel_prepare, ptr @__ksymtab_drm_panel_remove, ptr @__ksymtab_drm_panel_unprepare, ptr @__ksymtab_of_drm_find_panel, ptr @__ksymtab_of_drm_get_panel_orientation], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_panel_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 4
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 4, i32 1
  store ptr %5, ptr %6, align 4
  store ptr %1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 2
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 3
  store i32 %3, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_panel_add(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @panel_lock) #5
  %2 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @panel_list, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @panel_list, i32 0, i32 1), align 4
  store ptr @panel_list, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 4, i32 1
  store ptr %3, ptr %4, align 4
  store volatile ptr %2, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @panel_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_panel_remove(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @panel_lock) #5
  %2 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @panel_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_prepare(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 %8(ptr noundef nonnull %0) #5
  br label %12

12:                                               ; preds = %10, %7, %3, %1
  %13 = phi i32 [ %11, %10 ], [ -22, %1 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_unprepare(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_panel_funcs, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef nonnull %0) #5
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi i32 [ %12, %11 ], [ -22, %1 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_enable(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_panel_funcs, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef nonnull %0) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %11, %7, %3
  %15 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.backlight_properties, ptr %16, i32 0, i32 2
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.backlight_properties, ptr %16, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.backlight_properties, ptr %16, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -3
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.backlight_device, ptr %16, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %24) #5
  %25 = getelementptr inbounds %struct.backlight_device, ptr %16, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.backlight_ops, ptr %26, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %18
  tail call void @mutex_unlock(ptr noundef %24) #5
  br label %36

33:                                               ; preds = %28
  %34 = tail call i32 %30(ptr noundef nonnull %16) #5
  tail call void @mutex_unlock(ptr noundef %24) #5
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %32
  %37 = phi i32 [ -2, %32 ], [ %34, %33 ]
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %37) #5
  br label %39

39:                                               ; preds = %36, %33, %14, %11, %1
  %40 = phi i32 [ -22, %1 ], [ %12, %11 ], [ 0, %36 ], [ 0, %33 ], [ 0, %14 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_disable(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 2
  store i32 4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 3
  store i32 4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 2
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.backlight_ops, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %7
  tail call void @mutex_unlock(ptr noundef %13) #5
  br label %25

22:                                               ; preds = %17
  %23 = tail call i32 %19(ptr noundef nonnull %5) #5
  tail call void @mutex_unlock(ptr noundef %13) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %21
  %26 = phi i32 [ -2, %21 ], [ %23, %22 ]
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %26) #5
  br label %28

28:                                               ; preds = %25, %22, %3
  %29 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.drm_panel_funcs, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %34(ptr noundef nonnull %0) #5
  br label %38

38:                                               ; preds = %36, %32, %28, %1
  %39 = phi i32 [ %37, %36 ], [ -22, %1 ], [ 0, %32 ], [ 0, %28 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_get_modes(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.drm_panel_funcs, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %14

14:                                               ; preds = %12, %8, %4, %2
  %15 = phi i32 [ %13, %12 ], [ -22, %2 ], [ -95, %8 ], [ -95, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_drm_find_panel(ptr noundef %0) #1 {
  %2 = tail call zeroext i1 @of_device_is_available(ptr noundef %0) #5
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @panel_lock) #5
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @panel_list, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @panel_list
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %4

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %6, i32 -16
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi ptr [ %15, %14 ], [ inttoptr (i32 -517 to ptr), %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @panel_lock) #5
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ inttoptr (i32 -19 to ptr), %1 ], [ %17, %16 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_drm_get_panel_orientation(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %5 = call i32 @llvm.smin.i32(i32 %4, i32 0) #5
  %6 = icmp eq i32 %5, -22
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp slt i32 %4, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  switch i32 %10, label %16 [
    i32 0, label %14
    i32 90, label %11
    i32 180, label %12
    i32 270, label %13
  ]

11:                                               ; preds = %9
  br label %14

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %12, %11, %9, %2
  %15 = phi i32 [ 1, %12 ], [ 2, %13 ], [ 3, %11 ], [ -1, %2 ], [ %10, %9 ]
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %14, %9, %7
  %17 = phi i32 [ %5, %7 ], [ -22, %9 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_of_backlight(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @devm_of_find_backlight(ptr noundef nonnull %4) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 1
  store ptr %7, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %9, %3, %1
  %14 = phi i32 [ %10, %9 ], [ 0, %11 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_find_backlight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
