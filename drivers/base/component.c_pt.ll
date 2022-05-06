; ModuleID = '/llk/IR/drivers/base/component.c_pt.bc'
source_filename = "../drivers/base/component.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_match_add_release:\09\09\09\09\09"
module asm "\09.asciz \09\22component_match_add_release\22\09\09\09\09\09"
module asm "__kstrtabns_component_match_add_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_match_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22component_match_add_typed\22\09\09\09\09\09"
module asm "__kstrtabns_component_match_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_master_add_with_match:\09\09\09\09\09"
module asm "\09.asciz \09\22component_master_add_with_match\22\09\09\09\09\09"
module asm "__kstrtabns_component_master_add_with_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_master_del:\09\09\09\09\09"
module asm "\09.asciz \09\22component_master_del\22\09\09\09\09\09"
module asm "__kstrtabns_component_master_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_unbind_all:\09\09\09\09\09"
module asm "\09.asciz \09\22component_unbind_all\22\09\09\09\09\09"
module asm "__kstrtabns_component_unbind_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_bind_all:\09\09\09\09\09"
module asm "\09.asciz \09\22component_bind_all\22\09\09\09\09\09"
module asm "__kstrtabns_component_bind_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22component_add_typed\22\09\09\09\09\09"
module asm "__kstrtabns_component_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_add:\09\09\09\09\09"
module asm "\09.asciz \09\22component_add\22\09\09\09\09\09"
module asm "__kstrtabns_component_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_component_del:\09\09\09\09\09"
module asm "\09.asciz \09\22component_del\22\09\09\09\09\09"
module asm "__kstrtabns_component_del:\09\09\09\09\09"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_match = type { i32, i32, ptr }
%struct.component_match_array = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.master = type { %struct.list_head, i8, ptr, ptr, ptr }
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
%struct.component = type { %struct.list_head, ptr, i8, ptr, i32, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_component__206_122_component_debug_init1 = internal global ptr @component_debug_init, section ".initcall1.init", align 4
@__kstrtab_component_match_add_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_match_add_release = external dso_local constant [0 x i8], align 1
@__ksymtab_component_match_add_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_match_add_release to i32), ptr @__kstrtab_component_match_add_release, ptr @__kstrtabns_component_match_add_release }, section "___ksymtab+component_match_add_release", align 4
@__kstrtab_component_match_add_typed = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_match_add_typed = external dso_local constant [0 x i8], align 1
@__ksymtab_component_match_add_typed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_match_add_typed to i32), ptr @__kstrtab_component_match_add_typed, ptr @__kstrtabns_component_match_add_typed }, section "___ksymtab+component_match_add_typed", align 4
@component_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @component_mutex, i64 12), ptr getelementptr (i8, ptr @component_mutex, i64 12) } }, align 4
@masters = internal global %struct.list_head { ptr @masters, ptr @masters }, align 4
@__kstrtab_component_master_add_with_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_master_add_with_match = external dso_local constant [0 x i8], align 1
@__ksymtab_component_master_add_with_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_master_add_with_match to i32), ptr @__kstrtab_component_master_add_with_match, ptr @__kstrtabns_component_master_add_with_match }, section "___ksymtab_gpl+component_master_add_with_match", align 4
@__kstrtab_component_master_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_master_del = external dso_local constant [0 x i8], align 1
@__ksymtab_component_master_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_master_del to i32), ptr @__kstrtab_component_master_del, ptr @__kstrtabns_component_master_del }, section "___ksymtab_gpl+component_master_del", align 4
@.str = private unnamed_addr constant [25 x i8] c"drivers/base/component.c\00", align 1
@__kstrtab_component_unbind_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_unbind_all = external dso_local constant [0 x i8], align 1
@__ksymtab_component_unbind_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_unbind_all to i32), ptr @__kstrtab_component_unbind_all, ptr @__kstrtabns_component_unbind_all }, section "___ksymtab_gpl+component_unbind_all", align 4
@__kstrtab_component_bind_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_bind_all = external dso_local constant [0 x i8], align 1
@__ksymtab_component_bind_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_bind_all to i32), ptr @__kstrtab_component_bind_all, ptr @__kstrtabns_component_bind_all }, section "___ksymtab_gpl+component_bind_all", align 4
@__kstrtab_component_add_typed = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_add_typed = external dso_local constant [0 x i8], align 1
@__ksymtab_component_add_typed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_add_typed to i32), ptr @__kstrtab_component_add_typed, ptr @__kstrtabns_component_add_typed }, section "___ksymtab_gpl+component_add_typed", align 4
@__kstrtab_component_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_add = external dso_local constant [0 x i8], align 1
@__ksymtab_component_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_add to i32), ptr @__kstrtab_component_add, ptr @__kstrtabns_component_add }, section "___ksymtab_gpl+component_add", align 4
@component_list = internal global %struct.list_head { ptr @component_list, ptr @component_list }, align 4
@__kstrtab_component_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_component_del = external dso_local constant [0 x i8], align 1
@__ksymtab_component_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @component_del to i32), ptr @__kstrtab_component_del, ptr @__kstrtabns_component_del }, section "___ksymtab_gpl+component_del", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"device_component\00", align 1
@component_debugfs_dir = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"devm_component_match_release\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@component_devices_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @component_devices_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%-40s %20s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"master name\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"-------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%-40s %20s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"bound\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"not bound\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"device name\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"not registered\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"master bind failed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"bound %s (ops %ps)\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to bind %s (ops %ps): %d\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_component__206_122_component_debug_init1, ptr @__ksymtab_component_add, ptr @__ksymtab_component_add_typed, ptr @__ksymtab_component_bind_all, ptr @__ksymtab_component_del, ptr @__ksymtab_component_master_add_with_match, ptr @__ksymtab_component_master_del, ptr @__ksymtab_component_match_add_release, ptr @__ksymtab_component_match_add_typed, ptr @__ksymtab_component_unbind_all], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @component_debug_init() #0 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #8
  store ptr %1, ptr @component_debugfs_dir, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @component_match_add_release(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  tail call fastcc void @__component_match_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__component_match_add(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 {
  %7 = load ptr, ptr %1, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %64, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %7, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_component_match_release, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store ptr inttoptr (i32 -12 to ptr), ptr %1, align 4
  br label %64

15:                                               ; preds = %11
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %12) #8
  store ptr %12, ptr %1, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi ptr [ %7, %9 ], [ %12, %15 ]
  %18 = getelementptr inbounds %struct.component_match, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.component_match, ptr %17, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %45

25:                                               ; preds = %16
  %26 = add i32 %19, 16
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 24) #8
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %44, label %29, !prof !8

29:                                               ; preds = %25
  %30 = extractvalue { i32, i1 } %27, 0
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.component_match, ptr %17, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %18, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %26) #8
  %40 = mul nuw i32 %39, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %31, ptr nonnull align 4 %35, i32 %40, i1 false) #8
  %41 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %37, %33
  store ptr %31, ptr %34, align 4
  store i32 %26, ptr %17, align 4
  %43 = load i32, ptr %18, align 4
  br label %45

44:                                               ; preds = %29, %25
  store ptr inttoptr (i32 -12 to ptr), ptr %1, align 4
  br label %64

45:                                               ; preds = %42, %22
  %46 = phi i32 [ %19, %22 ], [ %43, %42 ]
  %47 = phi ptr [ %24, %22 ], [ %31, %42 ]
  %48 = getelementptr inbounds %struct.component_match, ptr %17, i32 0, i32 2
  %49 = getelementptr %struct.component_match_array, ptr %47, i32 %46, i32 1
  store ptr %3, ptr %49, align 4
  %50 = load ptr, ptr %48, align 4
  %51 = load i32, ptr %18, align 4
  %52 = getelementptr %struct.component_match_array, ptr %50, i32 %51, i32 2
  store ptr %4, ptr %52, align 4
  %53 = load ptr, ptr %48, align 4
  %54 = load i32, ptr %18, align 4
  %55 = getelementptr %struct.component_match_array, ptr %53, i32 %54, i32 3
  store ptr %2, ptr %55, align 4
  %56 = load ptr, ptr %48, align 4
  %57 = load i32, ptr %18, align 4
  %58 = getelementptr %struct.component_match_array, ptr %56, i32 %57
  store ptr %5, ptr %58, align 4
  %59 = load ptr, ptr %48, align 4
  %60 = load i32, ptr %18, align 4
  %61 = getelementptr %struct.component_match_array, ptr %59, i32 %60, i32 4
  store ptr null, ptr %61, align 4
  %62 = load i32, ptr %18, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %18, align 4
  br label %64

64:                                               ; preds = %45, %44, %14, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @component_match_add_typed(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  tail call fastcc void @__component_match_add(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @component_master_add_with_match(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.component_match, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, %5
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 24) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %86, label %11, !prof !8

11:                                               ; preds = %8
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %86, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.component_match, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %4, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %5) #8
  %22 = mul nuw i32 %21, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %13, ptr nonnull align 4 %17, i32 %22, i1 false) #8
  %23 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %19, %15
  store ptr %13, ptr %16, align 4
  store i32 %5, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 24) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %86, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.master, ptr %27, i32 0, i32 3
  store ptr %0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.master, ptr %27, i32 0, i32 2
  store ptr %1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.master, ptr %27, i32 0, i32 4
  store ptr %2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %37, %36 ], [ %34, %29 ]
  %40 = load ptr, ptr @component_debugfs_dir, align 4
  %41 = tail call ptr @debugfs_create_file(ptr noundef %39, i16 noundef zeroext 292, ptr noundef %40, ptr noundef nonnull %27, ptr noundef nonnull @component_devices_fops) #8
  tail call void @mutex_lock(ptr noundef nonnull @component_mutex) #8
  %42 = load ptr, ptr @masters, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %27, ptr %43, align 4
  store ptr %42, ptr %27, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr @masters, ptr %44, align 4
  store volatile ptr %27, ptr @masters, align 4
  %45 = tail call fastcc i32 @try_to_bring_up_master(ptr noundef nonnull %27, ptr noundef null)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %38
  %48 = load ptr, ptr %32, align 4
  %49 = load ptr, ptr %30, align 8
  %50 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load ptr, ptr %49, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi ptr [ %54, %53 ], [ %51, %47 ]
  %57 = load ptr, ptr @component_debugfs_dir, align 4
  %58 = tail call ptr @debugfs_lookup(ptr noundef %56, ptr noundef %57) #8
  tail call void @debugfs_remove(ptr noundef %58) #8
  %59 = load ptr, ptr %44, align 4
  %60 = load ptr, ptr %27, align 8
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  %62 = icmp eq ptr %48, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.component_match, ptr %48, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.component_match, ptr %48, i32 0, i32 2
  br label %69

69:                                               ; preds = %79, %67
  %70 = phi i32 [ %65, %67 ], [ %80, %79 ]
  %71 = phi i32 [ 0, %67 ], [ %81, %79 ]
  %72 = load ptr, ptr %68, align 4
  %73 = getelementptr %struct.component_match_array, ptr %72, i32 %71, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.component, ptr %74, i32 0, i32 1
  store ptr null, ptr %77, align 4
  %78 = load i32, ptr %64, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i32 [ %78, %76 ], [ %70, %69 ]
  %81 = add nuw i32 %71, 1
  %82 = icmp ult i32 %81, %80
  br i1 %82, label %69, label %83

83:                                               ; preds = %79, %63, %55
  tail call void @kfree(ptr noundef nonnull %27) #8
  br label %84

84:                                               ; preds = %83, %38
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  %85 = tail call i32 @llvm.smin.i32(i32 %45, i32 0)
  br label %86

86:                                               ; preds = %84, %25, %11, %8
  %87 = phi i32 [ %85, %84 ], [ -12, %25 ], [ -12, %11 ], [ -12, %8 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_to_bring_up_master(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.master, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.component_match, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.component_match, ptr %4, i32 0, i32 2
  br label %10

10:                                               ; preds = %66, %8
  %11 = phi i32 [ %6, %8 ], [ %67, %66 ]
  %12 = phi i32 [ 0, %8 ], [ %68, %66 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr %struct.component_match_array, ptr %13, i32 %12, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %10
  %18 = getelementptr %struct.component_match_array, ptr %13, i32 %12
  %19 = load ptr, ptr @component_list, align 4
  %20 = icmp eq ptr %19, @component_list
  br i1 %20, label %96, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.component_match_array, ptr %13, i32 %12, i32 1
  %23 = getelementptr %struct.component_match_array, ptr %13, i32 %12, i32 2
  br label %24

24:                                               ; preds = %51, %21
  %25 = phi ptr [ %19, %21 ], [ %52, %51 ]
  %26 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %0
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load ptr, ptr %22, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %18, align 4
  %38 = tail call i32 %32(ptr noundef %36, ptr noundef %37) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %34, %31
  %41 = load ptr, ptr %23, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %18, align 4
  %49 = tail call i32 %41(ptr noundef %45, i32 noundef %47, ptr noundef %48) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %40, %24
  %52 = load ptr, ptr %25, align 4
  %53 = icmp eq ptr %52, @component_list
  br i1 %53, label %96, label %24

54:                                               ; preds = %43, %34
  %55 = icmp eq ptr %25, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp ne ptr %58, null
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr %struct.component_match_array, ptr %60, i32 %12, i32 5
  %62 = zext i1 %59 to i8
  store i8 %62, ptr %61, align 4
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr %struct.component_match_array, ptr %63, i32 %12, i32 4
  store ptr %25, ptr %64, align 4
  store ptr %0, ptr %57, align 4
  %65 = load i32, ptr %5, align 4
  br label %66

66:                                               ; preds = %56, %10
  %67 = phi i32 [ %65, %56 ], [ %11, %10 ]
  %68 = add nuw i32 %12, 1
  %69 = icmp ult i32 %68, %67
  br i1 %69, label %10, label %70

70:                                               ; preds = %66, %2
  %71 = icmp eq ptr %1, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.component, ptr %1, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %96

76:                                               ; preds = %72, %70
  %77 = getelementptr inbounds %struct.master, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = tail call ptr @devres_open_group(ptr noundef %78, ptr noundef %0, i32 noundef 3264) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.master, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %77, align 4
  %86 = tail call i32 %84(ptr noundef %85) #8
  %87 = icmp slt i32 %86, 0
  %88 = load ptr, ptr %77, align 4
  br i1 %87, label %89, label %94

89:                                               ; preds = %81
  %90 = tail call i32 @devres_release_group(ptr noundef %88, ptr noundef null) #8
  %91 = icmp eq i32 %86, -517
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.13, i32 noundef %86) #11
  br label %96

94:                                               ; preds = %81
  tail call void @devres_close_group(ptr noundef %88, ptr noundef null) #8
  %95 = getelementptr inbounds %struct.master, ptr %0, i32 0, i32 1
  store i8 1, ptr %95, align 4
  br label %96

96:                                               ; preds = %94, %92, %89, %76, %72, %54, %51, %17
  %97 = phi i32 [ 1, %94 ], [ 0, %72 ], [ -12, %76 ], [ %86, %92 ], [ -517, %89 ], [ 0, %51 ], [ 0, %54 ], [ 0, %17 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @component_master_del(ptr noundef readnone %0, ptr noundef readnone %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @component_mutex) #8
  %3 = load ptr, ptr @masters, align 4
  %4 = icmp eq ptr %3, @masters
  br i1 %4, label %74, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi ptr [ %3, %5 ], [ %18, %17 ]
  %9 = getelementptr inbounds %struct.master, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  br i1 %6, label %20, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.master, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %7
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, @masters
  br i1 %19, label %74, label %7

20:                                               ; preds = %13, %12
  %21 = getelementptr inbounds %struct.master, ptr %8, i32 0, i32 3
  %22 = icmp eq ptr %8, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.master, ptr %8, i32 0, i32 1
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.master, ptr %8, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.component_master_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0) #8
  %32 = load ptr, ptr %21, align 4
  %33 = tail call i32 @devres_release_group(ptr noundef %32, ptr noundef nonnull %8) #8
  store i8 0, ptr %24, align 4
  %34 = load ptr, ptr %21, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi ptr [ %0, %23 ], [ %34, %27 ]
  %37 = getelementptr inbounds %struct.master, ptr %8, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi ptr [ %43, %42 ], [ %40, %35 ]
  %46 = load ptr, ptr @component_debugfs_dir, align 4
  %47 = tail call ptr @debugfs_lookup(ptr noundef %45, ptr noundef %46) #8
  tail call void @debugfs_remove(ptr noundef %47) #8
  %48 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  %52 = icmp eq ptr %38, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.component_match, ptr %38, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.component_match, ptr %38, i32 0, i32 2
  br label %59

59:                                               ; preds = %69, %57
  %60 = phi i32 [ %55, %57 ], [ %70, %69 ]
  %61 = phi i32 [ 0, %57 ], [ %71, %69 ]
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr %struct.component_match_array, ptr %62, i32 %61, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.component, ptr %64, i32 0, i32 1
  store ptr null, ptr %67, align 4
  %68 = load i32, ptr %54, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi i32 [ %68, %66 ], [ %60, %59 ]
  %71 = add nuw i32 %61, 1
  %72 = icmp ult i32 %71, %70
  br i1 %72, label %59, label %73

73:                                               ; preds = %69, %53, %44
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %74

74:                                               ; preds = %73, %20, %17, %2
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @component_unbind_all(ptr noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @component_mutex) #8
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef null) #8
  br label %5

5:                                                ; preds = %4, %2
  %6 = load ptr, ptr @masters, align 4
  %7 = icmp eq ptr %6, @masters
  br i1 %7, label %61, label %8

8:                                                ; preds = %13, %5
  %9 = phi ptr [ %14, %13 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.master, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, @masters
  br i1 %15, label %61, label %8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.master, ptr %9, i32 0, i32 3
  %18 = icmp eq ptr %9, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.master, ptr %9, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.component_match, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %59, %19
  %26 = phi ptr [ %60, %59 ], [ %21, %19 ]
  %27 = phi i32 [ %28, %59 ], [ %23, %19 ]
  %28 = add i32 %27, -1
  %29 = getelementptr inbounds %struct.component_match, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.component_match_array, ptr %30, i32 %28, i32 5
  %32 = load i8, ptr %31, align 4, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %25
  %35 = getelementptr %struct.component_match_array, ptr %30, i32 %28, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.component, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #8
  br label %41

41:                                               ; preds = %40, %34
  %42 = getelementptr inbounds %struct.component, ptr %36, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.component_ops, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.component, ptr %36, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %17, align 4
  tail call void %47(ptr noundef %51, ptr noundef %52, ptr noundef %1) #8
  br label %53

53:                                               ; preds = %49, %45, %41
  store i8 0, ptr %37, align 4
  %54 = getelementptr inbounds %struct.component, ptr %36, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @devres_release_group(ptr noundef %55, ptr noundef %36) #8
  br label %57

57:                                               ; preds = %53, %25
  %58 = icmp eq i32 %28, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %20, align 4
  br label %25

61:                                               ; preds = %57, %19, %16, %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @component_bind_all(ptr noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @component_mutex) #8
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #8
  br label %5

5:                                                ; preds = %4, %2
  %6 = load ptr, ptr @masters, align 4
  %7 = icmp eq ptr %6, @masters
  br i1 %7, label %130, label %8

8:                                                ; preds = %13, %5
  %9 = phi ptr [ %14, %13 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.master, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, @masters
  br i1 %15, label %130, label %8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.master, ptr %9, i32 0, i32 3
  %18 = icmp eq ptr %9, null
  br i1 %18, label %130, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.master, ptr %9, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.component_match, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %130, label %25

25:                                               ; preds = %87, %19
  %26 = phi ptr [ %88, %87 ], [ %21, %19 ]
  %27 = phi i32 [ %89, %87 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.component_match, ptr %26, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.component_match_array, ptr %29, i32 %27, i32 5
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %25
  %34 = getelementptr %struct.component_match_array, ptr %29, i32 %27, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %17, align 4
  %37 = tail call ptr @devres_open_group(ptr noundef %36, ptr noundef null, i32 noundef 3264) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %93, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.component, ptr %35, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @devres_open_group(ptr noundef %41, ptr noundef %35, i32 noundef 3264) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load ptr, ptr %17, align 4
  %46 = tail call i32 @devres_release_group(ptr noundef %45, ptr noundef null) #8
  br label %93

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.component, ptr %35, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %40, align 4
  %52 = load ptr, ptr %17, align 4
  %53 = tail call i32 %50(ptr noundef %51, ptr noundef %52, ptr noundef %1) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.component, ptr %35, i32 0, i32 2
  store i8 1, ptr %56, align 4
  %57 = load ptr, ptr %40, align 4
  tail call void @devres_close_group(ptr noundef %57, ptr noundef null) #8
  %58 = load ptr, ptr %17, align 4
  tail call void @devres_remove_group(ptr noundef %58, ptr noundef null) #8
  %59 = load ptr, ptr %17, align 4
  %60 = load ptr, ptr %40, align 4
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %55
  %65 = load ptr, ptr %60, align 4
  br label %83

66:                                               ; preds = %47
  %67 = load ptr, ptr %40, align 4
  %68 = tail call i32 @devres_release_group(ptr noundef %67, ptr noundef null) #8
  %69 = load ptr, ptr %17, align 4
  %70 = tail call i32 @devres_release_group(ptr noundef %69, ptr noundef null) #8
  %71 = icmp eq i32 %53, -517
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %17, align 4
  %74 = load ptr, ptr %40, align 4
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load ptr, ptr %74, align 4
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %79, %78 ], [ %76, %72 ]
  %82 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.15, ptr noundef %81, ptr noundef %82, i32 noundef %53) #11
  br label %93

83:                                               ; preds = %64, %55
  %84 = phi ptr [ %65, %64 ], [ %62, %55 ]
  %85 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.14, ptr noundef %84, ptr noundef %85) #11
  %86 = load ptr, ptr %20, align 4
  br label %87

87:                                               ; preds = %83, %25
  %88 = phi ptr [ %86, %83 ], [ %26, %25 ]
  %89 = add nuw i32 %27, 1
  %90 = getelementptr inbounds %struct.component_match, ptr %88, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %25, label %130

93:                                               ; preds = %80, %66, %44, %33
  %94 = phi i32 [ %53, %80 ], [ -517, %66 ], [ -12, %44 ], [ -12, %33 ]
  %95 = icmp eq i32 %27, 0
  br i1 %95, label %130, label %96

96:                                               ; preds = %128, %93
  %97 = phi i32 [ %101, %128 ], [ %27, %93 ]
  %98 = load ptr, ptr %20, align 4
  %99 = getelementptr inbounds %struct.component_match, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = add i32 %97, -1
  %102 = getelementptr %struct.component_match_array, ptr %100, i32 %101, i32 5
  %103 = load i8, ptr %102, align 4, !range !9
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %96
  %106 = getelementptr %struct.component_match_array, ptr %100, i32 %101, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.component, ptr %107, i32 0, i32 2
  %109 = load i8, ptr %108, align 4, !range !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112, !prof !8

111:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #8
  br label %112

112:                                              ; preds = %111, %105
  %113 = getelementptr inbounds %struct.component, ptr %107, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.component_ops, ptr %114, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.component, ptr %107, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %17, align 4
  tail call void %118(ptr noundef %122, ptr noundef %123, ptr noundef %1) #8
  br label %124

124:                                              ; preds = %120, %116, %112
  store i8 0, ptr %108, align 4
  %125 = getelementptr inbounds %struct.component, ptr %107, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 @devres_release_group(ptr noundef %126, ptr noundef %107) #8
  br label %128

128:                                              ; preds = %124, %96
  %129 = icmp eq i32 %101, 0
  br i1 %129, label %130, label %96

130:                                              ; preds = %128, %93, %87, %19, %16, %13, %5
  %131 = phi i32 [ -22, %16 ], [ %94, %93 ], [ -22, %5 ], [ 0, %19 ], [ %94, %128 ], [ 0, %87 ], [ -22, %13 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @component_add_typed(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 711, i32 noundef 9, ptr noundef null) #8
  br label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @__component_add(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ -22, %5 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__component_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.component, ptr %5, i32 0, i32 3
  store ptr %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.component, ptr %5, i32 0, i32 5
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.component, ptr %5, i32 0, i32 4
  store i32 %2, ptr %10, align 4
  tail call void @mutex_lock(ptr noundef nonnull @component_mutex) #8
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @component_list, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.list_head, ptr @component_list, i32 0, i32 1), align 4
  store ptr @component_list, ptr %5, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %5, ptr %11, align 4
  %13 = load ptr, ptr @masters, align 4
  %14 = icmp eq ptr %13, @masters
  br i1 %14, label %58, label %15

15:                                               ; preds = %23, %7
  %16 = phi ptr [ %24, %23 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.master, ptr %16, i32 0, i32 1
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @try_to_bring_up_master(ptr noundef %16, ptr noundef nonnull %5) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %15
  %24 = load ptr, ptr %16, align 4
  %25 = icmp eq ptr %24, @masters
  br i1 %25, label %58, label %15

26:                                               ; preds = %20
  %27 = icmp slt i32 %21, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.component, ptr %5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.master, ptr %30, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.component_match, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %48, %32
  %39 = phi ptr [ %49, %48 ], [ %34, %32 ]
  %40 = phi i32 [ %50, %48 ], [ 0, %32 ]
  %41 = getelementptr inbounds %struct.component_match, ptr %39, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.component_match_array, ptr %42, i32 %40, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %5
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  store ptr null, ptr %43, align 4
  %47 = load ptr, ptr %33, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi ptr [ %39, %38 ], [ %47, %46 ]
  %50 = add nuw i32 %40, 1
  %51 = getelementptr inbounds %struct.component_match, ptr %49, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %38, label %54

54:                                               ; preds = %48, %32, %28
  %55 = load ptr, ptr %12, align 4
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %58

58:                                               ; preds = %54, %26, %23, %7
  %59 = phi i32 [ %21, %54 ], [ %21, %26 ], [ 0, %7 ], [ 0, %23 ]
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 0)
  br label %61

61:                                               ; preds = %58, %3
  %62 = phi i32 [ %60, %58 ], [ -12, %3 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @component_add(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @__component_add(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @component_del(ptr noundef readnone %0, ptr noundef readnone %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @component_mutex) #8
  %3 = load ptr, ptr @component_list, align 4
  %4 = icmp eq ptr %3, @component_list
  br i1 %4, label %65, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.component, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.component, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, @component_list
  br i1 %16, label %65, label %5

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = icmp eq ptr %6, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.component, ptr %6, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %66, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.master, ptr %25, i32 0, i32 1
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.master, ptr %25, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.component_master_ops, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.master, ptr %25, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37) #8
  %38 = load ptr, ptr %36, align 4
  %39 = tail call i32 @devres_release_group(ptr noundef %38, ptr noundef nonnull %25) #8
  store i8 0, ptr %28, align 4
  %40 = load ptr, ptr %24, align 4
  br label %41

41:                                               ; preds = %31, %27
  %42 = phi ptr [ %25, %27 ], [ %40, %31 ]
  %43 = getelementptr inbounds %struct.master, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.component_match, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %58, %41
  %49 = phi ptr [ %59, %58 ], [ %44, %41 ]
  %50 = phi i32 [ %60, %58 ], [ 0, %41 ]
  %51 = getelementptr inbounds %struct.component_match, ptr %49, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.component_match_array, ptr %52, i32 %50, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %6
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  store ptr null, ptr %53, align 4
  %57 = load ptr, ptr %43, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = phi ptr [ %49, %48 ], [ %57, %56 ]
  %60 = add nuw i32 %50, 1
  %61 = getelementptr inbounds %struct.component_match, ptr %59, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %48, label %64

64:                                               ; preds = %58, %41
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  br label %67

65:                                               ; preds = %17, %14, %2
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 767, i32 noundef 9, ptr noundef null) #8
  br label %67

66:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  br label %67

67:                                               ; preds = %66, %65, %64
  %68 = phi ptr [ %6, %66 ], [ %6, %64 ], [ null, %65 ]
  tail call void @kfree(ptr noundef %68) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_component_match_release(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.component_match, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.component_match, ptr %1, i32 0, i32 2
  br label %8

8:                                                ; preds = %19, %6
  %9 = phi i32 [ %4, %6 ], [ %20, %19 ]
  %10 = phi i32 [ 0, %6 ], [ %21, %19 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.component_match_array, ptr %11, i32 %10, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr %struct.component_match_array, ptr %11, i32 %10
  %17 = load ptr, ptr %16, align 4
  tail call void %13(ptr noundef %0, ptr noundef %17) #8
  %18 = load i32, ptr %3, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i32 [ %18, %15 ], [ %9, %8 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %8, label %23

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds %struct.component_match, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @component_devices_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @component_devices_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @component_devices_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.master, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @component_mutex) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %7 = getelementptr inbounds %struct.master, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %10, %2 ]
  %16 = getelementptr inbounds %struct.master, ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %15, ptr noundef nonnull %19) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %20 = getelementptr inbounds %struct.component_match, ptr %6, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.component_match, ptr %6, i32 0, i32 2
  br label %25

25:                                               ; preds = %45, %23
  %26 = phi i32 [ 0, %23 ], [ %48, %45 ]
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr %struct.component_match_array, ptr %27, i32 %26, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.component, ptr %29, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load ptr, ptr %33, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %35, %31 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.component, ptr %29, i32 0, i32 2
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr @.str.9, ptr @.str.8
  br label %45

45:                                               ; preds = %39, %25
  %46 = phi ptr [ %40, %39 ], [ @.str.11, %25 ]
  %47 = phi ptr [ %44, %39 ], [ @.str.12, %25 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %46, ptr noundef nonnull %47) #8
  %48 = add nuw i32 %26, 1
  %49 = load i32, ptr %20, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %25, label %51

51:                                               ; preds = %45, %14
  tail call void @mutex_unlock(ptr noundef nonnull @component_mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
