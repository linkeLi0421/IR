; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-fh.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-fh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_init:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_init\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_add:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_add\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_open:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_open\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_del:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_del\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_exit\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_release:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_release\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fh_is_singular:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fh_is_singular\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fh_is_singular:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@v4l2_fh_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"&fh->wait\00", align 1
@v4l2_fh_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"&fh->subscribe_lock\00", align 1
@__kstrtab_v4l2_fh_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_init = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_init to i32), ptr @__kstrtab_v4l2_fh_init, ptr @__kstrtabns_v4l2_fh_init }, section "___ksymtab_gpl+v4l2_fh_init", align 4
@__kstrtab_v4l2_fh_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_add = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_add to i32), ptr @__kstrtab_v4l2_fh_add, ptr @__kstrtabns_v4l2_fh_add }, section "___ksymtab_gpl+v4l2_fh_add", align 4
@__kstrtab_v4l2_fh_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_open = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_open to i32), ptr @__kstrtab_v4l2_fh_open, ptr @__kstrtabns_v4l2_fh_open }, section "___ksymtab_gpl+v4l2_fh_open", align 4
@__kstrtab_v4l2_fh_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_del = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_del to i32), ptr @__kstrtab_v4l2_fh_del, ptr @__kstrtabns_v4l2_fh_del }, section "___ksymtab_gpl+v4l2_fh_del", align 4
@__kstrtab_v4l2_fh_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_exit to i32), ptr @__kstrtab_v4l2_fh_exit, ptr @__kstrtabns_v4l2_fh_exit }, section "___ksymtab_gpl+v4l2_fh_exit", align 4
@__kstrtab_v4l2_fh_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_release = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_release to i32), ptr @__kstrtab_v4l2_fh_release, ptr @__kstrtabns_v4l2_fh_release }, section "___ksymtab_gpl+v4l2_fh_release", align 4
@__kstrtab_v4l2_fh_is_singular = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fh_is_singular = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fh_is_singular = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fh_is_singular to i32), ptr @__kstrtab_v4l2_fh_is_singular, ptr @__kstrtabns_v4l2_fh_is_singular }, section "___ksymtab_gpl+v4l2_fh_is_singular", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_v4l2_fh_add, ptr @__ksymtab_v4l2_fh_del, ptr @__ksymtab_v4l2_fh_exit, ptr @__ksymtab_v4l2_fh_init, ptr @__ksymtab_v4l2_fh_is_singular, ptr @__ksymtab_v4l2_fh_open, ptr @__ksymtab_v4l2_fh_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_fh_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  store volatile ptr %0, ptr %0, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %8) #3
  %9 = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 67, ptr noundef %9) #3
  tail call void @_set_bit(i32 noundef 68, ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @v4l2_fh_init.__key) #3
  %12 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 7
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 7, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 6
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 6, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 9
  store i32 -1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @v4l2_fh_init.__key.1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_fh_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 3
  tail call void @v4l2_prio_open(ptr noundef %5, ptr noundef %6) #3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 19
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #3
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.video_device, ptr %10, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  store ptr %12, ptr %0, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store volatile ptr %0, ptr %11, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.video_device, ptr %15, i32 0, i32 19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %9) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_prio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_fh_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #3
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 80) #4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %4, ptr %5, align 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 1
  store ptr %2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  store volatile ptr %4, ptr %4, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %13) #3
  %14 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 67, ptr noundef %14) #3
  tail call void @_set_bit(i32 noundef 68, ptr noundef %14) #3
  %15 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 3
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @v4l2_fh_init.__key) #3
  %17 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 7
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 7, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 6
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 6, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 9
  store i32 -1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @v4l2_fh_init.__key.1) #3
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.video_device, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  tail call void @v4l2_prio_open(ptr noundef %25, ptr noundef %15) #3
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.video_device, ptr %26, i32 0, i32 19
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #3
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.video_device, ptr %29, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %4, ptr %32, align 4
  store ptr %31, ptr %4, align 8
  store ptr %30, ptr %12, align 4
  store volatile ptr %4, ptr %30, align 4
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds %struct.video_device, ptr %33, i32 0, i32 19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %28) #3
  br label %35

35:                                               ; preds = %7, %1
  %36 = phi i32 [ 0, %7 ], [ -12, %1 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_fh_del(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #3
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %6, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.video_device, ptr %10, i32 0, i32 19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %5) #3
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.video_device, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @v4l2_prio_close(ptr noundef %14, i32 noundef %16) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_prio_close(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_fh_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @v4l_disable_media_source(ptr noundef nonnull %3) #3
  tail call void @v4l2_event_unsubscribe_all(ptr noundef %0) #3
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_disable_media_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_unsubscribe_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_fh_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 19
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #3
  %10 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %10, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.video_device, ptr %14, i32 0, i32 19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %9) #3
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.video_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  tail call void @v4l2_prio_close(ptr noundef %18, i32 noundef %20) #3
  %21 = load ptr, ptr %6, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  tail call void @v4l_disable_media_source(ptr noundef nonnull %21) #3
  tail call void @v4l2_event_unsubscribe_all(ptr noundef nonnull %3) #3
  store ptr null, ptr %6, align 4
  br label %24

24:                                               ; preds = %23, %5
  tail call void @kfree(ptr noundef nonnull %3) #3
  store ptr null, ptr %2, align 8
  br label %25

25:                                               ; preds = %24, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_fh_is_singular(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 19
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #3
  %10 = load volatile ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %10, %14
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ 0, %7 ], [ %16, %12 ]
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %9) #3
  br label %21

21:                                               ; preds = %17, %3, %1
  %22 = phi i32 [ %18, %17 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
