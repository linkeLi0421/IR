; ModuleID = '/llk/IR/drivers/base/devcoredump.c_pt.bc'
source_filename = "../drivers/base/devcoredump.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_coredumpv:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_coredumpv\22\09\09\09\09\09"
module asm "__kstrtabns_dev_coredumpv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_coredumpm:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_coredumpm\22\09\09\09\09\09"
module asm "__kstrtabns_dev_coredumpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_coredumpsg:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_coredumpsg\22\09\09\09\09\09"
module asm "__kstrtabns_dev_coredumpsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.devcd_entry = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_dev_coredumpv = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_coredumpv = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_coredumpv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_coredumpv to i32), ptr @__kstrtab_dev_coredumpv, ptr @__kstrtabns_dev_coredumpv }, section "___ksymtab_gpl+dev_coredumpv", align 4
@dev_coredumpm.devcd_count = internal global %struct.atomic_t zeroinitializer, align 4
@devcd_disabled = internal unnamed_addr global i1 false, align 1
@devcd_class = internal global %struct.class { ptr @.str.2, ptr null, ptr @devcd_class_groups, ptr @devcd_dev_groups, ptr null, ptr null, ptr null, ptr null, ptr @devcd_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [8 x i8] c"devcd%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"failing_device\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"devcoredump\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"devcoredump create_link failed\0A\00", align 1
@__kstrtab_dev_coredumpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_coredumpm = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_coredumpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_coredumpm to i32), ptr @__kstrtab_dev_coredumpm, ptr @__kstrtabns_dev_coredumpm }, section "___ksymtab_gpl+dev_coredumpm", align 4
@__kstrtab_dev_coredumpsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_coredumpsg = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_coredumpsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_coredumpsg to i32), ptr @__kstrtab_dev_coredumpsg, ptr @__kstrtabns_dev_coredumpsg }, section "___ksymtab_gpl+dev_coredumpsg", align 4
@__initcall__kmod_devcoredump__220_340_devcoredump_init6 = internal global ptr @devcoredump_init, section ".initcall6.init", align 4
@__exitcall_devcoredump_exit = internal global ptr @devcoredump_exit, section ".exitcall.exit", align 4
@devcd_class_groups = internal global [2 x ptr] [ptr @devcd_class_group, ptr null], align 4
@devcd_dev_groups = internal global [2 x ptr] [ptr @devcd_dev_group, ptr null], align 4
@devcd_class_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devcd_class_attrs, ptr null }, align 4
@devcd_class_attrs = internal global [2 x ptr] [ptr @class_attr_disabled, ptr null], align 4
@class_attr_disabled = internal global %struct.class_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @disabled_show, ptr @disabled_store }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@devcd_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @devcd_dev_bin_attrs }, align 4
@devcd_dev_bin_attrs = internal global [2 x ptr] [ptr @devcd_attr_data, ptr null], align 4
@devcd_attr_data = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.6, i16 384 }, i32 0, ptr null, ptr null, ptr @devcd_data_read, ptr @devcd_data_write, ptr null }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@devcoredump_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__exitcall_devcoredump_exit, ptr @__initcall__kmod_devcoredump__220_340_devcoredump_init6, ptr @__ksymtab_dev_coredumpm, ptr @__ksymtab_dev_coredumpsg, ptr @__ksymtab_dev_coredumpv, ptr @devcoredump_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_coredumpv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  tail call void @dev_coredumpm(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @devcd_readv, ptr noundef nonnull @devcd_freev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_coredumpm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = load i1, ptr @devcd_disabled, align 1
  br i1 %8, label %60, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @class_find_device(ptr noundef nonnull @devcd_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @devcd_match_failing) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @put_device(ptr noundef nonnull %10) #6
  br label %60

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %1) #6
  br i1 %14, label %15, label %60

15:                                               ; preds = %13
  %16 = and i32 %4, 17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !8

18:                                               ; preds = %15
  %19 = and i32 %4, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 2
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ 0, %15 ], [ %21, %18 ]
  %24 = or i32 %4, 256
  %25 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %23, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef %24, i32 noundef 544) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %59, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 3
  store ptr %1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 1
  store ptr %2, ptr %31, align 8
  %32 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 2
  store i32 %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 4
  store ptr %5, ptr %33, align 4
  %34 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 5
  store ptr %6, ptr %34, align 8
  %35 = tail call ptr @get_device(ptr noundef %0) #6
  %36 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 7
  store ptr %35, ptr %36, align 8
  tail call void @device_initialize(ptr noundef nonnull %27) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @dev_coredumpm.devcd_count) #6, !srcloc !10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dev_coredumpm.devcd_count, ptr nonnull @dev_coredumpm.devcd_count, i32 1, ptr nonnull elementtype(i32) @dev_coredumpm.devcd_count) #6, !srcloc !11
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %39 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %27, ptr noundef nonnull @.str, i32 noundef %38) #6
  %40 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 31
  store ptr @devcd_class, ptr %40, align 4
  %41 = tail call i32 @device_add(ptr noundef nonnull %27) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %29
  %44 = tail call i32 @sysfs_create_link(ptr noundef nonnull %27, ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull @.str.2) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %43
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  br label %50

50:                                               ; preds = %49, %46
  %51 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 6
  store i32 -32, ptr %51, align 4
  %52 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 6, i32 0, i32 1
  store volatile ptr %52, ptr %52, align 8
  %53 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 6, i32 0, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 6, i32 0, i32 2
  store ptr @devcd_del, ptr %54, align 8
  %55 = getelementptr inbounds %struct.devcd_entry, ptr %27, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %55, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %56 = load ptr, ptr @system_wq, align 4
  %57 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %56, ptr noundef %51, i32 noundef 30000) #6
  br label %61

58:                                               ; preds = %29
  tail call void @put_device(ptr noundef nonnull %27) #6
  br label %59

59:                                               ; preds = %58, %22
  tail call void @module_put(ptr noundef %1) #6
  br label %60

60:                                               ; preds = %59, %13, %12, %7
  tail call void %6(ptr noundef %2) #6
  br label %61

61:                                               ; preds = %60, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devcd_readv(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca i64, align 8
  store i64 %1, ptr %6, align 8
  %7 = call i32 @memory_read_from_buffer(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4) #6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devcd_freev(ptr noundef %0) #0 {
  tail call void @vfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devcd_match_failing(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.devcd_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devcd_del(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -492
  tail call void @device_del(ptr noundef %2) #6
  tail call void @put_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_coredumpsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  tail call void @dev_coredumpm(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @devcd_read_from_sgtable, ptr noundef nonnull @devcd_free_sgtable)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devcd_read_from_sgtable(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = zext i32 %4 to i64
  %7 = icmp slt i64 %6, %1
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  %10 = add i64 %9, %1
  %11 = icmp sgt i64 %10, %6
  %12 = trunc i64 %1 to i32
  %13 = sub i32 %4, %12
  %14 = select i1 %11, i32 %13, i32 %2
  %15 = tail call i32 @sg_nents(ptr noundef %3) #6
  %16 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %3, i32 noundef %15, ptr noundef %0, i32 noundef %14, i32 noundef %12) #6
  br label %17

17:                                               ; preds = %8, %5
  %18 = phi i32 [ %16, %8 ], [ -22, %5 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devcd_free_sgtable(ptr noundef %0) #0 {
  %2 = tail call i32 @sg_nents(ptr noundef %0) #6
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %16, %1
  %5 = load i32, ptr %0, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %38

8:                                                ; preds = %16, %1
  %9 = phi ptr [ %18, %16 ], [ %0, %1 ]
  %10 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, -4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = inttoptr i32 %12 to ptr
  tail call void @__free_pages(ptr noundef nonnull %15, i32 noundef 0) #6
  br label %16

16:                                               ; preds = %14, %8
  %17 = add nuw nsw i32 %10, 1
  %18 = tail call ptr @sg_next(ptr noundef %9) #6
  %19 = tail call i32 @sg_nents(ptr noundef %0) #6
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %8, label %4

21:                                               ; preds = %32, %4
  %22 = phi ptr [ %35, %32 ], [ %0, %4 ]
  %23 = phi ptr [ %34, %32 ], [ %0, %4 ]
  %24 = getelementptr %struct.scatterlist, ptr %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = and i32 %25, -4
  %30 = inttoptr i32 %29 to ptr
  tail call void @kfree(ptr noundef %22) #6
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i32 [ %31, %28 ], [ %25, %21 ]
  %34 = phi ptr [ %30, %28 ], [ %24, %21 ]
  %35 = phi ptr [ %30, %28 ], [ %22, %21 ]
  %36 = and i32 %33, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %21, label %38

38:                                               ; preds = %32, %4
  %39 = phi ptr [ %0, %4 ], [ %35, %32 ]
  tail call void @kfree(ptr noundef %39) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @devcoredump_init() #4 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @devcd_class, ptr noundef nonnull @devcoredump_init.__key) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @devcoredump_exit() #4 section ".exit.text" {
  %1 = tail call i32 @class_for_each_device(ptr noundef nonnull @devcd_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @devcd_free) #6
  tail call void @class_unregister(ptr noundef nonnull @devcd_class) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devcd_free(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.devcd_entry, ptr %0, i32 0, i32 6
  %4 = tail call zeroext i1 @flush_delayed_work(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devcd_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.devcd_entry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.devcd_entry, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  tail call void %3(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.devcd_entry, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  tail call void @module_put(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.devcd_entry, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  tail call void @sysfs_delete_link(ptr noundef %9, ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %14 = load ptr, ptr %8, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %9, %1 ]
  tail call void @put_device(ptr noundef %16) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disabled_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i1, ptr @devcd_disabled, align 1
  %5 = zext i1 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %5) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disabled_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @simple_strtol(ptr noundef %2, ptr noundef null, i32 noundef 10) #6
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store i1 true, ptr @devcd_disabled, align 1
  %8 = tail call i32 @class_for_each_device(ptr noundef nonnull @devcd_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @devcd_free) #6
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %3, %7 ], [ -22, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devcd_data_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.devcd_entry, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.devcd_entry, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.devcd_entry, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %10, i32 noundef %12) #6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devcd_data_write(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i64 noundef %4, i32 noundef returned %5) #0 {
  %7 = load ptr, ptr @system_wq, align 4
  %8 = getelementptr inbounds %struct.devcd_entry, ptr %1, i32 0, i32 6
  %9 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %8, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_delete_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148148394}
!10 = !{i64 549162, i64 2148039133, i64 2148039159, i64 2148039206, i64 2148039228, i64 2148039256, i64 2148039276}
!11 = !{i64 2148051232, i64 2148051264, i64 2148051293, i64 2148051327, i64 2148051358, i64 2148051381}
!12 = !{i64 2148148597}
