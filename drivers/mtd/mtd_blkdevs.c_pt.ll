; ModuleID = '/llk/IR/drivers/mtd/mtd_blkdevs.c_pt.bc'
source_filename = "../drivers/mtd/mtd_blkdevs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_blktrans_cease_background:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_blktrans_cease_background\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_blktrans_cease_background:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mtd_blktrans\22\09\09\09\09\09"
module asm "__kstrtabns_register_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deregister_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22deregister_mtd_blktrans\22\09\09\09\09\09"
module asm "__kstrtabns_deregister_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22add_mtd_blktrans_dev\22\09\09\09\09\09"
module asm "__kstrtabns_add_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22del_mtd_blktrans_dev\22\09\09\09\09\09"
module asm "__kstrtabns_del_mtd_blktrans_dev:\09\09\09\09\09"
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
%struct.lock_class_key = type {}
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_notifier = type { ptr, ptr, %struct.list_head }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.79, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.79 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%union.anon.37 = type { %struct.rb_node }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.34 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.71, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }

@__kstrtab_mtd_blktrans_cease_background = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_blktrans_cease_background = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_blktrans_cease_background = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_blktrans_cease_background to i32), ptr @__kstrtab_mtd_blktrans_cease_background, ptr @__kstrtabns_mtd_blktrans_cease_background }, section "___ksymtab_gpl+mtd_blktrans_cease_background", align 4
@mtd_table_mutex = external dso_local global %struct.mutex, align 4
@add_mtd_blktrans_dev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&new->lock\00", align 1
@mtd_mq_ops = internal constant %struct.blk_mq_ops { ptr @mtd_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@add_mtd_blktrans_dev.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@mtd_block_ops = internal constant %struct.block_device_operations { ptr null, ptr @blktrans_open, ptr @blktrans_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blktrans_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%c%c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"drivers/mtd/mtd_blkdevs.c\00", align 1
@blktrans_notifier = internal global %struct.mtd_notifier { ptr @blktrans_notify_add, ptr @blktrans_notify_remove, %struct.list_head zeroinitializer }, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"\014Unable to register %s block device on major %d: %d\0A\00", align 1
@blktrans_majors = internal global %struct.list_head { ptr @blktrans_majors, ptr @blktrans_majors }, align 4
@__exitcall_mtd_blktrans_exit = internal global ptr @mtd_blktrans_exit, section ".exitcall.exit", align 4
@__kstrtab_register_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mtd_blktrans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mtd_blktrans to i32), ptr @__kstrtab_register_mtd_blktrans, ptr @__kstrtabns_register_mtd_blktrans }, section "___ksymtab_gpl+register_mtd_blktrans", align 4
@__kstrtab_deregister_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__kstrtabns_deregister_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__ksymtab_deregister_mtd_blktrans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deregister_mtd_blktrans to i32), ptr @__kstrtab_deregister_mtd_blktrans, ptr @__kstrtabns_deregister_mtd_blktrans }, section "___ksymtab_gpl+deregister_mtd_blktrans", align 4
@__kstrtab_add_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_add_mtd_blktrans_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_mtd_blktrans_dev to i32), ptr @__kstrtab_add_mtd_blktrans_dev, ptr @__kstrtabns_add_mtd_blktrans_dev }, section "___ksymtab_gpl+add_mtd_blktrans_dev", align 4
@__kstrtab_del_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_del_mtd_blktrans_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_mtd_blktrans_dev to i32), ptr @__kstrtab_del_mtd_blktrans_dev, ptr @__kstrtabns_del_mtd_blktrans_dev }, section "___ksymtab_gpl+del_mtd_blktrans_dev", align 4
@__UNIQUE_ID_author279 = internal constant [57 x i8] c"mtd_blkdevs.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [41 x i8] c"mtd_blkdevs.file=drivers/mtd/mtd_blkdevs\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [24 x i8] c"mtd_blkdevs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description282 = internal constant [85 x i8] c"mtd_blkdevs.description=Common interface to block layer for MTD 'translation layers'\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_mtd_blktrans_exit, ptr @__ksymtab_add_mtd_blktrans_dev, ptr @__ksymtab_del_mtd_blktrans_dev, ptr @__ksymtab_deregister_mtd_blktrans, ptr @__ksymtab_mtd_blktrans_cease_background, ptr @__ksymtab_register_mtd_blktrans, ptr @mtd_blktrans_exit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mtd_blktrans_cease_background(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_mtd_blktrans_dev(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %36, label %8

8:                                                ; preds = %1
  %9 = icmp eq i32 %7, -1
  br label %10

10:                                               ; preds = %31, %8
  %11 = phi ptr [ %4, %8 ], [ %34, %31 ]
  %12 = phi i32 [ 0, %8 ], [ %33, %31 ]
  %13 = getelementptr i8, ptr %11, i32 32
  %14 = load i32, ptr %13, align 4
  br i1 %9, label %15, label %22

15:                                               ; preds = %10
  %16 = icmp eq i32 %14, %12
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  store i32 %12, ptr %6, align 4
  %18 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %18, ptr %19, align 4
  store ptr %11, ptr %18, align 4
  %21 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  br label %56

22:                                               ; preds = %10
  %23 = icmp eq i32 %14, %7
  br i1 %23, label %191, label %24

24:                                               ; preds = %22
  %25 = icmp sgt i32 %14, %7
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %27, ptr %28, align 4
  store ptr %11, ptr %27, align 4
  %30 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %27, ptr %29, align 4
  br label %56

31:                                               ; preds = %24, %15
  %32 = phi i32 [ %14, %24 ], [ %12, %15 ]
  %33 = add i32 %32, 1
  %34 = load ptr, ptr %11, align 4
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %36, label %10

36:                                               ; preds = %31, %1
  %37 = phi i32 [ 0, %1 ], [ %33, %31 ]
  %38 = icmp eq i32 %7, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 4
  store i32 %37, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %37, %39 ], [ %7, %36 ]
  %43 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 1048575, %44
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %191, label %47

47:                                               ; preds = %41
  %48 = icmp ne i32 %44, 0
  %49 = icmp sgt i32 %42, 701
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %191, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1
  %53 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 15, i32 1
  %54 = load ptr, ptr %53, align 4
  store ptr %52, ptr %53, align 4
  store ptr %3, ptr %52, align 4
  %55 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %52, ptr %54, align 4
  br label %56

56:                                               ; preds = %51, %26, %17
  %57 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef nonnull @add_mtd_blktrans_dev.__key) #8
  %58 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 9
  store volatile i32 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 7
  store i32 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 112) #9
  %67 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 14
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %184, label %69

69:                                               ; preds = %64
  %70 = tail call i32 @blk_mq_alloc_sq_tag_set(ptr noundef nonnull %66, ptr noundef nonnull @mtd_mq_ops, i32 noundef 2, i32 noundef 33) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %181

72:                                               ; preds = %69
  %73 = load ptr, ptr %67, align 4
  %74 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %73, ptr noundef %0, ptr noundef nonnull @add_mtd_blktrans_dev.__key.1) #8
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = ptrtoint ptr %74 to i32
  br label %178

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 10
  store ptr %74, ptr %79, align 4
  %80 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 9
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 12
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 10
  store ptr %0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %74, align 8
  %86 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 %87, %89
  %91 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 1
  store i32 %90, ptr %91, align 4
  %92 = load i32, ptr %88, align 4
  %93 = shl nuw i32 1, %92
  %94 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 2
  store i32 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 8
  store ptr @mtd_block_ops, ptr %95, align 8
  %96 = load i32, ptr %88, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %78
  %99 = load i32, ptr %86, align 4
  %100 = icmp slt i32 %99, 26
  %101 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 3
  %102 = load ptr, ptr %2, align 4
  br i1 %100, label %103, label %106

103:                                              ; preds = %98
  %104 = add nsw i32 %99, 97
  %105 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %101, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %102, i32 noundef %104)
  br label %122

106:                                              ; preds = %98
  %107 = freeze i32 %99
  %108 = udiv i32 %107, 26
  %109 = add nuw nsw i32 %108, 96
  %110 = mul i32 %108, 26
  %111 = sub i32 %107, %110
  %112 = add nuw nsw i32 %111, 97
  %113 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %101, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %102, i32 noundef %109, i32 noundef %112)
  br label %122

114:                                              ; preds = %78
  %115 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 3
  %116 = load ptr, ptr %2, align 4
  %117 = load i32, ptr %86, align 4
  %118 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %115, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %116, i32 noundef %117)
  %119 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 11
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %120, 4
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %114, %106, %103
  %123 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, %125
  %130 = lshr i64 %129, 9
  tail call void @set_capacity(ptr noundef %74, i64 noundef %130) #8
  %131 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 15
  store i32 0, ptr %131, align 4
  %132 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 13
  store volatile ptr %132, ptr %132, align 4
  %133 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 13, i32 1
  store ptr %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 10
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %122
  %138 = load ptr, ptr %82, align 4
  tail call void @blk_queue_write_cache(ptr noundef %138, i1 noundef zeroext true, i1 noundef zeroext false) #8
  br label %139

139:                                              ; preds = %137, %122
  %140 = load ptr, ptr %82, align 4
  %141 = load i32, ptr %126, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %140, i32 noundef %141) #8
  %142 = load ptr, ptr %82, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %142) #8
  %143 = load ptr, ptr %82, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %143) #8
  %144 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %2, i32 0, i32 7
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %139
  %148 = load ptr, ptr %82, align 4
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %148) #8
  %149 = load ptr, ptr %82, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %149, i32 noundef -1) #8
  %150 = load i32, ptr %126, align 4
  %151 = load ptr, ptr %82, align 4
  %152 = getelementptr inbounds %struct.request_queue, ptr %151, i32 0, i32 32, i32 18
  store i32 %150, ptr %152, align 4
  br label %153

153:                                              ; preds = %147, %139
  %154 = load ptr, ptr %82, align 4
  store ptr %154, ptr %80, align 4
  %155 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 7
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  tail call void @set_disk_ro(ptr noundef %74, i1 noundef zeroext true) #8
  br label %159

159:                                              ; preds = %158, %153
  %160 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.mtd_info, ptr %161, i32 0, i32 56
  %163 = tail call i32 @device_add_disk(ptr noundef %162, ptr noundef %74, ptr noundef null) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 11
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %191, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 7
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.block_device, ptr %171, i32 0, i32 10
  %173 = tail call i32 @sysfs_create_group(ptr noundef %172, ptr noundef nonnull %167) #8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %191, label %175, !prof !9

175:                                              ; preds = %169
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 396, i32 noundef 9, ptr noundef null) #8
  br label %191

176:                                              ; preds = %159
  %177 = load ptr, ptr %79, align 4
  tail call void @blk_cleanup_disk(ptr noundef %177) #8
  br label %178

178:                                              ; preds = %176, %76
  %179 = phi i32 [ %77, %76 ], [ %163, %176 ]
  %180 = load ptr, ptr %67, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %180) #8
  br label %181

181:                                              ; preds = %178, %69
  %182 = phi i32 [ %70, %69 ], [ %179, %178 ]
  %183 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %183) #8
  br label %184

184:                                              ; preds = %181, %64
  %185 = phi i32 [ %182, %181 ], [ -12, %64 ]
  %186 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1
  %187 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = load ptr, ptr %186, align 4
  %190 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %188, ptr %190, align 4
  store volatile ptr %189, ptr %188, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %186, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %187, align 4
  br label %191

191:                                              ; preds = %184, %175, %169, %165, %47, %41, %22
  %192 = phi i32 [ %185, %184 ], [ -16, %47 ], [ -16, %41 ], [ 0, %169 ], [ 0, %175 ], [ 0, %165 ], [ -16, %22 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_sq_tag_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @del_mtd_blktrans_dev(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  tail call void @sysfs_remove_group(ptr noundef %10, ptr noundef nonnull %3) #8
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  tail call void @del_gendisk(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 15
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 10
  store ptr null, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  %19 = load ptr, ptr %16, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %19) #8
  %20 = load ptr, ptr %16, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %20) #8
  %21 = load ptr, ptr %16, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %21) #8
  %22 = load ptr, ptr %16, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %22) #8
  %23 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %23) #8
  %24 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef %0) #8
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  tail call void @__put_mtd_device(ptr noundef %35) #8
  br label %36

36:                                               ; preds = %33, %11
  %37 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  store ptr null, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef %23) #8
  tail call fastcc void @blktrans_dev_put(ptr noundef %0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blktrans_dev_put(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !12
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %20, label %8, !prof !9

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #8
  br label %20

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %10 = getelementptr %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  tail call void @blk_cleanup_disk(ptr noundef %11) #8
  %12 = getelementptr %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %13) #8
  %14 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %14) #8
  %15 = getelementptr %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1
  %16 = getelementptr %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %0) #8
  br label %20

20:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_mtd_blktrans(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.mtd_notifier, ptr @blktrans_notifier, i32 0, i32 2), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @register_mtd_user(ptr noundef nonnull @blktrans_notifier) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @__register_blkdev(i32 noundef %7, ptr noundef %8, ptr noundef null) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  %13 = load i32, ptr %6, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %12, i32 noundef %13, i32 noundef %9) #10
  br label %48

15:                                               ; preds = %5
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store i32 %9, ptr %6, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true), !range !14
  %22 = icmp eq i32 %20, 0
  %23 = select i1 %22, i32 -1, i32 %21
  %24 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 15
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 15, i32 1
  store ptr %25, ptr %26, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #8
  %27 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr @blktrans_majors, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store ptr %28, ptr %27, align 4
  %30 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 16, i32 1
  store ptr @blktrans_majors, ptr %30, align 4
  store volatile ptr %27, ptr @blktrans_majors, align 4
  %31 = tail call ptr @__mtd_next_device(i32 noundef 0) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 13
  br label %35

35:                                               ; preds = %41, %33
  %36 = phi ptr [ %31, %33 ], [ %45, %41 ]
  %37 = load i8, ptr %36, align 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %34, align 4
  tail call void %40(ptr noundef %0, ptr noundef nonnull %36) #8
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 14
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  %45 = tail call ptr @__mtd_next_device(i32 noundef %44) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %35

47:                                               ; preds = %41, %18
  tail call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #8
  br label %48

48:                                               ; preds = %47, %11
  %49 = phi i32 [ %9, %11 ], [ 0, %47 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__mtd_next_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @deregister_mtd_blktrans(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #8
  %2 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 16, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  %7 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 14
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %8, %10 ], [ %15, %12 ]
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = load ptr, ptr %13, align 4
  %16 = load ptr, ptr %11, align 4
  tail call void %16(ptr noundef %14) #8
  %17 = icmp eq ptr %15, %7
  br i1 %17, label %18, label %12

18:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #8
  %19 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %0, align 4
  tail call void @unregister_blkdev(i32 noundef %20, ptr noundef %21) #8
  %22 = load volatile ptr, ptr %7, align 4
  %23 = icmp eq ptr %22, %7
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtd_blkdevs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

25:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtd_blktrans_exit() #6 section ".exit.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.mtd_notifier, ptr @blktrans_notifier, i32 0, i32 2), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @unregister_mtd_user(ptr noundef nonnull @blktrans_notifier) #8
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_mtd_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mtd_queue_rq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  tail call void @blk_mq_start_request(ptr noundef %9) #8
  br label %473

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #8
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 12
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 13
  %15 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 13, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 12, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 5
  %20 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 3
  %21 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %18, i32 0, i32 8
  br label %22

22:                                               ; preds = %470, %10
  %23 = phi ptr [ null, %10 ], [ %471, %470 ]
  %24 = phi i32 [ 0, %10 ], [ %472, %470 ]
  store i8 0, ptr %19, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load volatile ptr, ptr %14, align 4
  %28 = icmp eq ptr %27, %14
  %29 = getelementptr i8, ptr %27, i32 -56
  %30 = icmp eq ptr %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %33, align 4
  tail call void @blk_mq_start_request(ptr noundef nonnull %29) #8
  br label %49

37:                                               ; preds = %26
  %38 = load ptr, ptr %21, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp ne i32 %24, 0
  %41 = select i1 %39, i1 true, i1 %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8
  %42 = load i16, ptr %11, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8
  tail call void asm sideeffect "", "~{memory}"() #8
  br i1 %41, label %473, label %44

44:                                               ; preds = %37
  tail call void @mutex_lock(ptr noundef %20) #8
  %45 = load ptr, ptr %21, align 4
  tail call void %45(ptr noundef nonnull %6) #8
  tail call void @mutex_unlock(ptr noundef %20) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #8
  %46 = load i8, ptr %19, align 4, !range !8
  %47 = xor i8 %46, 1
  %48 = zext i8 %47 to i32
  br label %470

49:                                               ; preds = %32, %22
  %50 = phi ptr [ %23, %22 ], [ %29, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %51 = load i16, ptr %11, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  tail call void @mutex_lock(ptr noundef %20) #8
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.request, ptr %50, i32 0, i32 9
  %55 = load i64, ptr %54, align 8
  %56 = shl i64 %55, 9
  %57 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  %60 = lshr i64 %56, %59
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.request, ptr %50, i32 0, i32 10
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %90, label %65

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 8, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = trunc i32 %71 to i8
  switch i8 %72, label %73 [
    i8 3, label %90
    i8 5, label %90
    i8 9, label %90
  ]

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 8, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.bio_vec, ptr %75, i32 %77, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 8, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  %83 = getelementptr %struct.bio_vec, ptr %75, i32 %77, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = sub i32 %84, %81
  %86 = tail call i32 @llvm.umin.i32(i32 %67, i32 %85) #8
  %87 = and i32 %82, 4095
  %88 = sub nuw nsw i32 4096, %87
  %89 = tail call i32 @llvm.umin.i32(i32 %86, i32 %88) #8
  br label %90

90:                                               ; preds = %73, %69, %69, %69, %65, %49
  %91 = phi i32 [ %89, %73 ], [ 0, %49 ], [ %67, %69 ], [ %67, %69 ], [ %67, %69 ], [ 0, %65 ]
  %92 = ashr i32 %91, %58
  %93 = getelementptr inbounds %struct.request, ptr %50, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = trunc i32 %94 to i8
  switch i8 %95, label %435 [
    i8 2, label %96
    i8 3, label %102
    i8 0, label %108
    i8 1, label %270
  ]

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 10
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 %98(ptr noundef nonnull %6) #8
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i8 0, i8 10
  br label %435

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 %104(ptr noundef nonnull %6, i32 noundef %61, i32 noundef %92) #8
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i8 0, i8 10
  br label %435

108:                                              ; preds = %90
  %109 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 16
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 8, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr %struct.bio_vec, ptr %110, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr %struct.bio_vec, ptr %110, i32 %112, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.bio, ptr %63, i32 0, i32 8, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %116
  %120 = lshr i32 %119, 12
  %121 = getelementptr %struct.page, ptr %114, i32 %120
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 30
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %132, label %125

125:                                              ; preds = %108
  %126 = icmp ne i32 %123, 3
  %127 = load i32, ptr @movable_zone, align 4
  %128 = icmp ne i32 %127, 2
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = tail call ptr @page_address(ptr noundef %121) #8
  br label %134

132:                                              ; preds = %125, %108
  %133 = tail call ptr @kmap_high(ptr noundef %121) #8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi ptr [ %133, %132 ], [ %131, %130 ]
  %136 = icmp eq i32 %92, 0
  br i1 %136, label %189, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %62, align 8
  %139 = getelementptr inbounds %struct.bio, ptr %138, i32 0, i32 8, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.bio, ptr %138, i32 0, i32 16
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.bio, ptr %138, i32 0, i32 8, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr %struct.bio_vec, ptr %142, i32 %144, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, %140
  %148 = and i32 %147, 4095
  %149 = getelementptr i8, ptr %135, i32 %148
  %150 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 5
  %151 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 3
  br label %152

152:                                              ; preds = %183, %137
  %153 = phi i32 [ %61, %137 ], [ %185, %183 ]
  %154 = phi i32 [ %92, %137 ], [ %184, %183 ]
  %155 = phi ptr [ %149, %137 ], [ %187, %183 ]
  %156 = load ptr, ptr %150, align 4
  %157 = tail call i32 %156(ptr noundef nonnull %6, i32 noundef %153, ptr noundef %155) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %152
  %160 = load ptr, ptr %62, align 8
  %161 = getelementptr inbounds %struct.bio, ptr %160, i32 0, i32 16
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.bio, ptr %160, i32 0, i32 8, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.bio_vec, ptr %162, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr %struct.bio_vec, ptr %162, i32 %164, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.bio, ptr %160, i32 0, i32 8, i32 3
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %168
  %172 = lshr i32 %171, 12
  %173 = getelementptr %struct.page, ptr %166, i32 %172
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 30
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %182, label %177

177:                                              ; preds = %159
  %178 = icmp ne i32 %175, 3
  %179 = load i32, ptr @movable_zone, align 4
  %180 = icmp ne i32 %179, 2
  %181 = select i1 %178, i1 true, i1 %180
  br i1 %181, label %435, label %182

182:                                              ; preds = %177, %159
  tail call void @kunmap_high(ptr noundef %173) #8
  br label %435

183:                                              ; preds = %152
  %184 = add i32 %154, -1
  %185 = add i32 %153, 1
  %186 = load i32, ptr %151, align 4
  %187 = getelementptr i8, ptr %155, i32 %186
  %188 = icmp eq i32 %184, 0
  br i1 %188, label %189, label %152

189:                                              ; preds = %183, %134
  %190 = load ptr, ptr %62, align 8
  %191 = getelementptr inbounds %struct.bio, ptr %190, i32 0, i32 16
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.bio, ptr %190, i32 0, i32 8, i32 2
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr %struct.bio_vec, ptr %192, i32 %194
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr %struct.bio_vec, ptr %192, i32 %194, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds %struct.bio, ptr %190, i32 0, i32 8, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, %198
  %202 = lshr i32 %201, 12
  %203 = getelementptr %struct.page, ptr %196, i32 %202
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 30
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %212, label %207

207:                                              ; preds = %189
  %208 = icmp ne i32 %205, 3
  %209 = load i32, ptr @movable_zone, align 4
  %210 = icmp ne i32 %209, 2
  %211 = select i1 %208, i1 true, i1 %210
  br i1 %211, label %214, label %212

212:                                              ; preds = %207, %189
  tail call void @kunmap_high(ptr noundef %203) #8
  %213 = load ptr, ptr %62, align 8
  br label %214

214:                                              ; preds = %212, %207
  %215 = phi ptr [ %190, %207 ], [ %213, %212 ]
  %216 = icmp eq ptr %215, null
  br i1 %216, label %435, label %217

217:                                              ; preds = %267, %214
  %218 = phi ptr [ %268, %267 ], [ %215, %214 ]
  %219 = getelementptr inbounds %struct.bio, ptr %218, i32 0, i32 8, i32 1
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %267, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.bio, ptr %218, i32 0, i32 8, i32 3
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.bio, ptr %218, i32 0, i32 8, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds %struct.bio, ptr %218, i32 0, i32 16
  %228 = getelementptr inbounds %struct.bio, ptr %218, i32 0, i32 2
  br label %229

229:                                              ; preds = %262, %222
  %230 = phi i32 [ %224, %222 ], [ %264, %262 ]
  %231 = phi i32 [ %226, %222 ], [ %263, %262 ]
  %232 = phi i32 [ %220, %222 ], [ %265, %262 ]
  %233 = load ptr, ptr %227, align 4
  %234 = getelementptr %struct.bio_vec, ptr %233, i32 %231
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr %struct.bio_vec, ptr %233, i32 %231, i32 2
  %237 = load i32, ptr %236, align 4
  %238 = add i32 %237, %230
  %239 = lshr i32 %238, 12
  %240 = getelementptr %struct.page, ptr %235, i32 %239
  %241 = getelementptr %struct.bio_vec, ptr %233, i32 %231, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = sub i32 %242, %230
  %244 = tail call i32 @llvm.umin.i32(i32 %232, i32 %243) #8
  %245 = and i32 %238, 4095
  %246 = sub nuw nsw i32 4096, %245
  %247 = tail call i32 @llvm.umin.i32(i32 %244, i32 %246) #8
  tail call void @flush_dcache_page(ptr noundef %240) #8
  %248 = load i32, ptr %228, align 4
  %249 = and i32 %248, 255
  %250 = add nsw i32 %249, -3
  %251 = and i32 %250, -7
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %229
  %254 = load ptr, ptr %227, align 4
  %255 = add i32 %247, %230
  %256 = getelementptr %struct.bio_vec, ptr %254, i32 %231, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %255, %257
  %259 = zext i1 %258 to i32
  %260 = add i32 %231, %259
  %261 = select i1 %258, i32 0, i32 %255
  br label %262

262:                                              ; preds = %253, %229
  %263 = phi i32 [ %231, %229 ], [ %260, %253 ]
  %264 = phi i32 [ %230, %229 ], [ %261, %253 ]
  %265 = sub i32 %232, %247
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %229

267:                                              ; preds = %262, %217
  %268 = load ptr, ptr %218, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %435, label %217

270:                                              ; preds = %90
  %271 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 6
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %435, label %274

274:                                              ; preds = %270
  br i1 %64, label %330, label %275

275:                                              ; preds = %325, %274
  %276 = phi ptr [ %326, %325 ], [ %63, %274 ]
  %277 = getelementptr inbounds %struct.bio, ptr %276, i32 0, i32 8, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %325, label %280

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.bio, ptr %276, i32 0, i32 8, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.bio, ptr %276, i32 0, i32 8, i32 2
  %284 = load i32, ptr %283, align 4
  %285 = getelementptr inbounds %struct.bio, ptr %276, i32 0, i32 16
  %286 = getelementptr inbounds %struct.bio, ptr %276, i32 0, i32 2
  br label %287

287:                                              ; preds = %320, %280
  %288 = phi i32 [ %282, %280 ], [ %322, %320 ]
  %289 = phi i32 [ %284, %280 ], [ %321, %320 ]
  %290 = phi i32 [ %278, %280 ], [ %323, %320 ]
  %291 = load ptr, ptr %285, align 4
  %292 = getelementptr %struct.bio_vec, ptr %291, i32 %289
  %293 = load ptr, ptr %292, align 4
  %294 = getelementptr %struct.bio_vec, ptr %291, i32 %289, i32 2
  %295 = load i32, ptr %294, align 4
  %296 = add i32 %295, %288
  %297 = lshr i32 %296, 12
  %298 = getelementptr %struct.page, ptr %293, i32 %297
  %299 = getelementptr %struct.bio_vec, ptr %291, i32 %289, i32 1
  %300 = load i32, ptr %299, align 4
  %301 = sub i32 %300, %288
  %302 = tail call i32 @llvm.umin.i32(i32 %290, i32 %301) #8
  %303 = and i32 %296, 4095
  %304 = sub nuw nsw i32 4096, %303
  %305 = tail call i32 @llvm.umin.i32(i32 %302, i32 %304) #8
  tail call void @flush_dcache_page(ptr noundef %298) #8
  %306 = load i32, ptr %286, align 4
  %307 = and i32 %306, 255
  %308 = add nsw i32 %307, -3
  %309 = and i32 %308, -7
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %320, label %311

311:                                              ; preds = %287
  %312 = load ptr, ptr %285, align 4
  %313 = add i32 %305, %288
  %314 = getelementptr %struct.bio_vec, ptr %312, i32 %289, i32 1
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %313, %315
  %317 = zext i1 %316 to i32
  %318 = add i32 %289, %317
  %319 = select i1 %316, i32 0, i32 %313
  br label %320

320:                                              ; preds = %311, %287
  %321 = phi i32 [ %289, %287 ], [ %318, %311 ]
  %322 = phi i32 [ %288, %287 ], [ %319, %311 ]
  %323 = sub i32 %290, %305
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %287

325:                                              ; preds = %320, %275
  %326 = load ptr, ptr %276, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %275

328:                                              ; preds = %325
  %329 = load ptr, ptr %62, align 8
  br label %330

330:                                              ; preds = %328, %274
  %331 = phi ptr [ %329, %328 ], [ null, %274 ]
  %332 = getelementptr inbounds %struct.bio, ptr %331, i32 0, i32 16
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.bio, ptr %331, i32 0, i32 8, i32 2
  %335 = load i32, ptr %334, align 4
  %336 = getelementptr %struct.bio_vec, ptr %333, i32 %335
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr %struct.bio_vec, ptr %333, i32 %335, i32 2
  %339 = load i32, ptr %338, align 4
  %340 = getelementptr inbounds %struct.bio, ptr %331, i32 0, i32 8, i32 3
  %341 = load i32, ptr %340, align 4
  %342 = add i32 %341, %339
  %343 = lshr i32 %342, 12
  %344 = getelementptr %struct.page, ptr %337, i32 %343
  %345 = load i32, ptr %344, align 4
  %346 = lshr i32 %345, 30
  %347 = icmp eq i32 %346, 2
  br i1 %347, label %355, label %348

348:                                              ; preds = %330
  %349 = icmp ne i32 %346, 3
  %350 = load i32, ptr @movable_zone, align 4
  %351 = icmp ne i32 %350, 2
  %352 = select i1 %349, i1 true, i1 %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = tail call ptr @page_address(ptr noundef %344) #8
  br label %357

355:                                              ; preds = %348, %330
  %356 = tail call ptr @kmap_high(ptr noundef %344) #8
  br label %357

357:                                              ; preds = %355, %353
  %358 = phi ptr [ %356, %355 ], [ %354, %353 ]
  %359 = icmp eq i32 %92, 0
  br i1 %359, label %411, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr %62, align 8
  %362 = getelementptr inbounds %struct.bio, ptr %361, i32 0, i32 8, i32 3
  %363 = load i32, ptr %362, align 4
  %364 = getelementptr inbounds %struct.bio, ptr %361, i32 0, i32 16
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.bio, ptr %361, i32 0, i32 8, i32 2
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr %struct.bio_vec, ptr %365, i32 %367, i32 2
  %369 = load i32, ptr %368, align 4
  %370 = add i32 %369, %363
  %371 = and i32 %370, 4095
  %372 = getelementptr i8, ptr %358, i32 %371
  %373 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %53, i32 0, i32 3
  br label %374

374:                                              ; preds = %405, %360
  %375 = phi i32 [ %61, %360 ], [ %407, %405 ]
  %376 = phi i32 [ %92, %360 ], [ %406, %405 ]
  %377 = phi ptr [ %372, %360 ], [ %409, %405 ]
  %378 = load ptr, ptr %271, align 4
  %379 = tail call i32 %378(ptr noundef nonnull %6, i32 noundef %375, ptr noundef %377) #8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %405, label %381

381:                                              ; preds = %374
  %382 = load ptr, ptr %62, align 8
  %383 = getelementptr inbounds %struct.bio, ptr %382, i32 0, i32 16
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr inbounds %struct.bio, ptr %382, i32 0, i32 8, i32 2
  %386 = load i32, ptr %385, align 4
  %387 = getelementptr %struct.bio_vec, ptr %384, i32 %386
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr %struct.bio_vec, ptr %384, i32 %386, i32 2
  %390 = load i32, ptr %389, align 4
  %391 = getelementptr inbounds %struct.bio, ptr %382, i32 0, i32 8, i32 3
  %392 = load i32, ptr %391, align 4
  %393 = add i32 %392, %390
  %394 = lshr i32 %393, 12
  %395 = getelementptr %struct.page, ptr %388, i32 %394
  %396 = load i32, ptr %395, align 4
  %397 = lshr i32 %396, 30
  %398 = icmp eq i32 %397, 2
  br i1 %398, label %404, label %399

399:                                              ; preds = %381
  %400 = icmp ne i32 %397, 3
  %401 = load i32, ptr @movable_zone, align 4
  %402 = icmp ne i32 %401, 2
  %403 = select i1 %400, i1 true, i1 %402
  br i1 %403, label %435, label %404

404:                                              ; preds = %399, %381
  tail call void @kunmap_high(ptr noundef %395) #8
  br label %435

405:                                              ; preds = %374
  %406 = add i32 %376, -1
  %407 = add i32 %375, 1
  %408 = load i32, ptr %373, align 4
  %409 = getelementptr i8, ptr %377, i32 %408
  %410 = icmp eq i32 %406, 0
  br i1 %410, label %411, label %374

411:                                              ; preds = %405, %357
  %412 = load ptr, ptr %62, align 8
  %413 = getelementptr inbounds %struct.bio, ptr %412, i32 0, i32 16
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr inbounds %struct.bio, ptr %412, i32 0, i32 8, i32 2
  %416 = load i32, ptr %415, align 4
  %417 = getelementptr %struct.bio_vec, ptr %414, i32 %416
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr %struct.bio_vec, ptr %414, i32 %416, i32 2
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr inbounds %struct.bio, ptr %412, i32 0, i32 8, i32 3
  %422 = load i32, ptr %421, align 4
  %423 = add i32 %422, %420
  %424 = lshr i32 %423, 12
  %425 = getelementptr %struct.page, ptr %418, i32 %424
  %426 = load i32, ptr %425, align 4
  %427 = lshr i32 %426, 30
  %428 = icmp eq i32 %427, 2
  br i1 %428, label %434, label %429

429:                                              ; preds = %411
  %430 = icmp ne i32 %427, 3
  %431 = load i32, ptr @movable_zone, align 4
  %432 = icmp ne i32 %431, 2
  %433 = select i1 %430, i1 true, i1 %432
  br i1 %433, label %435, label %434

434:                                              ; preds = %429, %411
  tail call void @kunmap_high(ptr noundef %425) #8
  br label %435

435:                                              ; preds = %434, %429, %404, %399, %270, %267, %214, %182, %177, %102, %96, %90
  %436 = phi i8 [ %101, %96 ], [ %107, %102 ], [ 0, %214 ], [ 10, %270 ], [ 10, %90 ], [ 10, %177 ], [ 10, %182 ], [ 10, %399 ], [ 10, %404 ], [ 0, %429 ], [ 0, %434 ], [ 0, %267 ]
  tail call void @mutex_unlock(ptr noundef %20) #8
  %437 = load ptr, ptr %62, align 8
  %438 = icmp eq ptr %437, null
  br i1 %438, label %464, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.bio, ptr %437, i32 0, i32 8, i32 1
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %464, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.bio, ptr %437, i32 0, i32 2
  %445 = load i32, ptr %444, align 4
  %446 = trunc i32 %445 to i8
  switch i8 %446, label %447 [
    i8 3, label %464
    i8 5, label %464
    i8 9, label %464
  ]

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.bio, ptr %437, i32 0, i32 16
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr inbounds %struct.bio, ptr %437, i32 0, i32 8, i32 2
  %451 = load i32, ptr %450, align 4
  %452 = getelementptr %struct.bio_vec, ptr %449, i32 %451, i32 2
  %453 = load i32, ptr %452, align 4
  %454 = getelementptr inbounds %struct.bio, ptr %437, i32 0, i32 8, i32 3
  %455 = load i32, ptr %454, align 4
  %456 = add i32 %455, %453
  %457 = getelementptr %struct.bio_vec, ptr %449, i32 %451, i32 1
  %458 = load i32, ptr %457, align 4
  %459 = sub i32 %458, %455
  %460 = tail call i32 @llvm.umin.i32(i32 %441, i32 %459) #8
  %461 = and i32 %456, 4095
  %462 = sub nuw nsw i32 4096, %461
  %463 = tail call i32 @llvm.umin.i32(i32 %460, i32 %462) #8
  br label %464

464:                                              ; preds = %447, %443, %443, %443, %439, %435
  %465 = phi i32 [ %463, %447 ], [ 0, %435 ], [ %441, %443 ], [ %441, %443 ], [ %441, %443 ], [ 0, %439 ]
  %466 = tail call zeroext i1 @blk_update_request(ptr noundef %50, i8 noundef zeroext %436, i32 noundef %465) #8
  br i1 %466, label %468, label %467

467:                                              ; preds = %464
  tail call void @__blk_mq_end_request(ptr noundef %50, i8 noundef zeroext %436) #8
  br label %468

468:                                              ; preds = %467, %464
  %469 = phi ptr [ %50, %464 ], [ null, %467 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #8
  br label %470

470:                                              ; preds = %468, %44
  %471 = phi ptr [ %469, %468 ], [ null, %44 ]
  %472 = phi i32 [ 0, %468 ], [ %48, %44 ]
  br label %22

473:                                              ; preds = %37, %8
  %474 = phi i8 [ 10, %8 ], [ 0, %37 ]
  ret i8 %474
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blktrans_open(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !21
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !22

11:                                               ; preds = %2
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !9

15:                                               ; preds = %11, %2
  %16 = phi i32 [ 2, %2 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %23, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  tail call void @__module_get(ptr noundef %25) #8
  %26 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %30, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef %6) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load ptr, ptr %26, align 4
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi ptr [ %38, %37 ], [ %27, %29 ]
  %41 = tail call i32 @__get_mtd_device(ptr noundef %40) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 17
  store i32 %1, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %22, %17
  %46 = load i32, ptr %19, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef %18) #8
  br label %59

48:                                               ; preds = %39
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %49, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void %51(ptr noundef %6) #8
  br label %54

54:                                               ; preds = %53, %48, %34
  %55 = phi i32 [ %35, %34 ], [ %41, %53 ], [ %41, %48 ]
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %56, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  tail call void @module_put(ptr noundef %58) #8
  tail call void @mutex_unlock(ptr noundef %18) #8
  tail call fastcc void @blktrans_dev_put(ptr noundef %6)
  br label %59

59:                                               ; preds = %54, %45
  %60 = phi i32 [ 0, %45 ], [ %55, %54 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blktrans_release(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  tail call void @module_put(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  tail call void %20(ptr noundef %4) #8
  %23 = load ptr, ptr %14, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %15, %17 ]
  tail call void @__put_mtd_device(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %24, %10, %2
  tail call void @mutex_unlock(ptr noundef %5) #8
  tail call fastcc void @blktrans_dev_put(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blktrans_getgeo(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 %14(ptr noundef %6, ptr noundef %1) #8
  br label %18

18:                                               ; preds = %16, %11, %2
  %19 = phi i32 [ -6, %2 ], [ %17, %16 ], [ -25, %11 ]
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blktrans_notify_add(ptr noundef %0) #1 {
  %2 = load i8, ptr %0, align 8
  %3 = icmp eq i8 %2, 0
  %4 = load ptr, ptr @blktrans_majors, align 4
  %5 = icmp eq ptr %4, @blktrans_majors
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %12, %7 ], [ %4, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -68
  %10 = getelementptr i8, ptr %8, i32 -16
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %9, ptr noundef %0) #8
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, @blktrans_majors
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blktrans_notify_remove(ptr noundef readnone %0) #1 {
  %2 = load ptr, ptr @blktrans_majors, align 4
  %3 = icmp eq ptr %2, @blktrans_majors
  br i1 %3, label %25, label %7

4:                                                ; preds = %23, %7
  %5 = load ptr, ptr %8, align 4
  %6 = icmp eq ptr %5, @blktrans_majors
  br i1 %6, label %25, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %4, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -12
  br label %14

14:                                               ; preds = %23, %12
  %15 = phi ptr [ %10, %12 ], [ %16, %23 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %15, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %15, i32 -4
  %22 = load ptr, ptr %13, align 4
  tail call void %22(ptr noundef %21) #8
  br label %23

23:                                               ; preds = %20, %14
  %24 = icmp eq ptr %16, %9
  br i1 %24, label %4, label %14

25:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148024731}
!11 = !{i64 420892, i64 2147910863, i64 2147910889, i64 2147910936, i64 2147910958, i64 2147910986, i64 2147911006}
!12 = !{i64 2147926890, i64 2147926922, i64 2147926951, i64 2147926985, i64 2147927016, i64 2147927039}
!13 = !{i64 2149284195}
!14 = !{i32 0, i32 33}
!15 = !{i64 2153509929, i64 2153510419, i64 2153509966, i64 2153510022, i64 2153510056, i64 2153510080, i64 2153510121, i64 2153510142, i64 2153510170, i64 2153510204}
!16 = !{i64 2148934843}
!17 = !{i64 2148930667}
!18 = !{i64 2148930742, i64 2148930769, i64 2148930816, i64 2148930838, i64 2148930866, i64 2148930886}
!19 = !{i64 316376}
!20 = !{i64 2148958987}
!21 = !{i64 2147924533, i64 2147924565, i64 2147924594, i64 2147924628, i64 2147924659, i64 2147924682}
!22 = !{!"branch_weights", i32 1, i32 2000}
