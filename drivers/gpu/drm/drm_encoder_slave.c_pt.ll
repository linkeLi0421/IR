; ModuleID = '/llk/IR/drivers/gpu/drm/drm_encoder_slave.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_encoder_slave.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_dpms\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_mode_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_mode_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_mode_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_commit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_mode_set\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_detect\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_save:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_save\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_save:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_i2c_encoder_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_i2c_encoder_restore\22\09\09\09\09\09"
module asm "__kstrtabns_drm_i2c_encoder_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i2c:\00", align 1
@__kstrtab_drm_i2c_encoder_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_init to i32), ptr @__kstrtab_drm_i2c_encoder_init, ptr @__kstrtabns_drm_i2c_encoder_init }, section "___ksymtab+drm_i2c_encoder_init", align 4
@__kstrtab_drm_i2c_encoder_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_destroy to i32), ptr @__kstrtab_drm_i2c_encoder_destroy, ptr @__kstrtabns_drm_i2c_encoder_destroy }, section "___ksymtab+drm_i2c_encoder_destroy", align 4
@__kstrtab_drm_i2c_encoder_dpms = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_dpms = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_dpms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_dpms to i32), ptr @__kstrtab_drm_i2c_encoder_dpms, ptr @__kstrtabns_drm_i2c_encoder_dpms }, section "___ksymtab+drm_i2c_encoder_dpms", align 4
@__kstrtab_drm_i2c_encoder_mode_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_mode_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_mode_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_mode_fixup to i32), ptr @__kstrtab_drm_i2c_encoder_mode_fixup, ptr @__kstrtabns_drm_i2c_encoder_mode_fixup }, section "___ksymtab+drm_i2c_encoder_mode_fixup", align 4
@__kstrtab_drm_i2c_encoder_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_prepare to i32), ptr @__kstrtab_drm_i2c_encoder_prepare, ptr @__kstrtabns_drm_i2c_encoder_prepare }, section "___ksymtab+drm_i2c_encoder_prepare", align 4
@__kstrtab_drm_i2c_encoder_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_commit to i32), ptr @__kstrtab_drm_i2c_encoder_commit, ptr @__kstrtabns_drm_i2c_encoder_commit }, section "___ksymtab+drm_i2c_encoder_commit", align 4
@__kstrtab_drm_i2c_encoder_mode_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_mode_set = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_mode_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_mode_set to i32), ptr @__kstrtab_drm_i2c_encoder_mode_set, ptr @__kstrtabns_drm_i2c_encoder_mode_set }, section "___ksymtab+drm_i2c_encoder_mode_set", align 4
@__kstrtab_drm_i2c_encoder_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_detect to i32), ptr @__kstrtab_drm_i2c_encoder_detect, ptr @__kstrtabns_drm_i2c_encoder_detect }, section "___ksymtab+drm_i2c_encoder_detect", align 4
@__kstrtab_drm_i2c_encoder_save = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_save = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_save to i32), ptr @__kstrtab_drm_i2c_encoder_save, ptr @__kstrtabns_drm_i2c_encoder_save }, section "___ksymtab+drm_i2c_encoder_save", align 4
@__kstrtab_drm_i2c_encoder_restore = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_i2c_encoder_restore = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_i2c_encoder_restore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_i2c_encoder_restore to i32), ptr @__kstrtab_drm_i2c_encoder_restore, ptr @__kstrtabns_drm_i2c_encoder_restore }, section "___ksymtab+drm_i2c_encoder_restore", align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_drm_i2c_encoder_commit, ptr @__ksymtab_drm_i2c_encoder_destroy, ptr @__ksymtab_drm_i2c_encoder_detect, ptr @__ksymtab_drm_i2c_encoder_dpms, ptr @__ksymtab_drm_i2c_encoder_init, ptr @__ksymtab_drm_i2c_encoder_mode_fixup, ptr @__ksymtab_drm_i2c_encoder_mode_set, ptr @__ksymtab_drm_i2c_encoder_prepare, ptr @__ksymtab_drm_i2c_encoder_restore, ptr @__ksymtab_drm_i2c_encoder_save], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_i2c_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %3) #2
  %6 = tail call ptr @i2c_new_client_device(ptr noundef %2, ptr noundef %3) #2
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %34, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device_driver, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @try_module_get(ptr noundef %16) #2
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_encoder_slave, ptr %1, i32 0, i32 3
  store ptr %6, ptr %19, align 4
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr i8, ptr %20, i32 100
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_encoder_slave, ptr %1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %1, ptr noundef nonnull %27) #2
  br label %36

33:                                               ; preds = %18
  tail call void @module_put(ptr noundef %16) #2
  br label %34

34:                                               ; preds = %33, %14, %10, %4
  %35 = phi i32 [ %23, %33 ], [ -19, %10 ], [ -19, %14 ], [ -19, %4 ]
  tail call void @i2c_unregister_device(ptr noundef %6) #2
  br label %36

36:                                               ; preds = %34, %29, %25
  %37 = phi i32 [ %35, %34 ], [ 0, %29 ], [ 0, %25 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #2
  store ptr null, ptr %2, align 4
  tail call void @module_put(ptr noundef %7) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_dpms(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i32 noundef %1) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_i2c_encoder_mode_fixup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i1 %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ %10, %9 ], [ true, %3 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef 3) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_commit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_mode_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_i2c_encoder_detect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #2
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_save(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_i2c_encoder_restore(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #2
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
