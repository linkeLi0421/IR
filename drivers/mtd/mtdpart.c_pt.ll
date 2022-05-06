; ModuleID = '/llk/IR/drivers/mtd/mtdpart.c_pt.bc'
source_filename = "../drivers/mtd/mtdpart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_add_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_add_partition\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_add_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_del_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_del_partition\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_del_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_mtd_parser\22\09\09\09\09\09"
module asm "__kstrtabns___register_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deregister_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22deregister_mtd_parser\22\09\09\09\09\09"
module asm "__kstrtabns_deregister_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_get_device_size:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_get_device_size\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_get_device_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.mtd_partitions = type { ptr, i32, ptr }
%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__kstrtab_mtd_add_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_add_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_add_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_add_partition to i32), ptr @__kstrtab_mtd_add_partition, ptr @__kstrtabns_mtd_add_partition }, section "___ksymtab_gpl+mtd_add_partition", align 4
@.str = private unnamed_addr constant [36 x i8] c"\016Deleting MTD partitions on \22%s\22:\0A\00", align 1
@__kstrtab_mtd_del_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_del_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_del_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_del_partition to i32), ptr @__kstrtab_mtd_del_partition, ptr @__kstrtabns_mtd_del_partition }, section "___ksymtab_gpl+mtd_del_partition", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\015Creating %d MTD partitions on \22%s\22:\0A\00", align 1
@part_parser_lock = internal global %struct.spinlock zeroinitializer, align 4
@part_parsers = internal global %struct.list_head { ptr @part_parsers, ptr @part_parsers }, align 4
@__kstrtab___register_mtd_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_mtd_parser = external dso_local constant [0 x i8], align 1
@__ksymtab___register_mtd_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_mtd_parser to i32), ptr @__kstrtab___register_mtd_parser, ptr @__kstrtabns___register_mtd_parser }, section "___ksymtab_gpl+__register_mtd_parser", align 4
@__kstrtab_deregister_mtd_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns_deregister_mtd_parser = external dso_local constant [0 x i8], align 1
@__ksymtab_deregister_mtd_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deregister_mtd_parser to i32), ptr @__kstrtab_deregister_mtd_parser, ptr @__kstrtabns_deregister_mtd_parser }, section "___ksymtab_gpl+deregister_mtd_parser", align 4
@default_subpartition_types = internal unnamed_addr constant [2 x ptr] [ptr @.str.2, ptr null], align 4
@default_mtd_part_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.17, ptr @.str.2, ptr null], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ofpart\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_mtd_get_device_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_get_device_size = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_get_device_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_get_device_size to i32), ptr @__kstrtab_mtd_get_device_size, ptr @__kstrtabns_mtd_get_device_size }, section "___ksymtab_gpl+mtd_get_device_size", align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"\013memory allocation error while creating partitions for \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\015Moving partition %d: 0x%012llx -> 0x%012llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"\013mtd partition \22%s\22 doesn't have enough space: %#llx < %#llx, disabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\0150x%012llx-0x%012llx : \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\013mtd: partition \22%s\22 is out of reach -- disabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [88 x i8] c"\014mtd: partition \22%s\22 extends beyond the end of device \22%s\22 -- size truncated to %#llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"\014mtd: partition \22%s\22 doesn't start on an erase/write block boundary -- force read-only\0A\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"\014mtd: partition \22%s\22 doesn't end on an erase/write block -- force read-only\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mtd_partition_attrs = internal global [2 x ptr] [ptr @dev_attr_offset, ptr null], align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"\014mtd: failed to create partition attrs, err=%d\0A\00", align 1
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @offset_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\016Deleting %s MTD partition\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"\013Error when deleting partition \22%s\22 (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"cmdlinepart\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"fixed-partitions\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\015%d %s partitions found on MTD device %s\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___register_mtd_parser, ptr @__ksymtab_deregister_mtd_parser, ptr @__ksymtab_mtd_add_partition, ptr @__ksymtab_mtd_del_partition, ptr @__ksymtab_mtd_get_device_size], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_add_partition(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.mtd_partition, align 8
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 64, i32 0, i32 2
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load i64, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  %19 = icmp ugt i64 %2, -3
  br i1 %19, label %53, label %20

20:                                               ; preds = %11
  %21 = icmp eq i64 %3, 0
  %22 = sub i64 %18, %2
  %23 = select i1 %21, i64 %22, i64 %3
  %24 = icmp slt i64 %23, 1
  br i1 %24, label %53, label %25

25:                                               ; preds = %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  store ptr %1, ptr %5, align 8
  %26 = getelementptr inbounds %struct.mtd_partition, ptr %5, i32 0, i32 2
  store i64 %23, ptr %26, align 8
  %27 = getelementptr inbounds %struct.mtd_partition, ptr %5, i32 0, i32 3
  store i64 %2, ptr %27, align 8
  %28 = call fastcc ptr @allocate_partition(ptr noundef %0, ptr noundef nonnull %5, i32 noundef -1, i64 noundef %2)
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = ptrtoint ptr %28 to i32
  br label %53

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %33) #8
  %34 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 64
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %34, ptr %36, align 4
  store ptr %35, ptr %34, align 4
  %38 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 64, i32 0, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %34, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef %33) #8
  %39 = tail call i32 @add_mtd_device(ptr noundef %28) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 56
  %43 = tail call i32 @sysfs_create_files(ptr noundef %42, ptr noundef nonnull @mtd_partition_attrs) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %43) #9
  br label %53

47:                                               ; preds = %32
  tail call void @mutex_lock(ptr noundef %33) #8
  %48 = load ptr, ptr %38, align 4
  %49 = load ptr, ptr %34, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  tail call void @mutex_unlock(ptr noundef %33) #8
  %51 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 13
  %52 = load ptr, ptr %51, align 8
  tail call void @kfree(ptr noundef %52) #8
  tail call void @kfree(ptr noundef %28) #8
  br label %53

53:                                               ; preds = %47, %45, %41, %30, %20, %11
  %54 = phi i32 [ %31, %30 ], [ %39, %47 ], [ -22, %11 ], [ -22, %20 ], [ 0, %41 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @allocate_partition(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 64, i32 0, i32 2
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 808) #10
  %28 = load ptr, ptr %1, align 8
  %29 = tail call noalias ptr @kstrdup(ptr noundef %28, i32 noundef 3264) #8
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %27, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %37, label %33

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %35) #9
  tail call void @kfree(ptr noundef %29) #8
  tail call void @kfree(ptr noundef %27) #8
  br label %324

37:                                               ; preds = %10
  %38 = load i8, ptr %0, align 8
  store i8 %38, ptr %27, align 8
  %39 = load i32, ptr %11, align 4
  %40 = getelementptr inbounds %struct.mtd_partition, ptr %1, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 64, i32 0, i32 3
  %45 = getelementptr inbounds %struct.mtd_partition, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, ptr %44, align 8
  %48 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mtd_partition, ptr %1, i32 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 64, i32 0, i32 2
  store i64 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 5
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 7
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 53
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 53
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 13
  store ptr %29, ptr %67, align 8
  %68 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 55
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 55
  store ptr %69, ptr %70, align 4
  %71 = load ptr, ptr %19, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %37
  %74 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  br label %78

75:                                               ; preds = %37
  %76 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 1
  %77 = load ptr, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi ptr [ %74, %73 ], [ %77, %75 ]
  %80 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 56, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.mtd_partition, ptr %1, i32 0, i32 6
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 56, i32 25
  store ptr %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 62
  store ptr %0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mtd_partition, ptr %1, i32 0, i32 3
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 64, i32 0, i32 1
  store i64 %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 63
  store volatile ptr %88, ptr %88, align 8
  %89 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 63, i32 1
  store ptr %88, ptr %89, align 4
  %90 = icmp eq i64 %86, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  store i64 %3, ptr %87, align 8
  br label %92

92:                                               ; preds = %91, %78
  %93 = phi i64 [ %3, %91 ], [ %86, %78 ]
  %94 = icmp eq i64 %93, -2
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  store i64 %3, ptr %87, align 8
  %96 = icmp ult i64 %3, 4294967296
  br i1 %96, label %97, label %100, !prof !8

97:                                               ; preds = %95
  %98 = trunc i64 %3 to i32
  %99 = urem i32 %98, %18
  br label %105

100:                                              ; preds = %95
  %101 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %3) #11, !srcloc !9
  %102 = extractvalue { i64, i64 } %101, 0
  %103 = lshr i64 %102, 32
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi i32 [ %99, %97 ], [ %104, %100 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = sub i32 %18, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %110, %3
  store i64 %111, ptr %87, align 8
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %2, i64 noundef %3, i64 noundef %111) #9
  %113 = load i64, ptr %87, align 8
  br label %114

114:                                              ; preds = %108, %105, %92
  %115 = phi i64 [ %3, %105 ], [ %113, %108 ], [ %93, %92 ]
  %116 = icmp eq i64 %115, -3
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  store i64 %3, ptr %87, align 8
  %118 = sub i64 %25, %3
  %119 = load i64, ptr %51, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = sub i64 %118, %119
  store i64 %122, ptr %51, align 8
  br label %128

123:                                              ; preds = %117
  %124 = load ptr, ptr %1, align 8
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %124, i64 noundef %118, i64 noundef %119) #9
  br label %324

126:                                              ; preds = %114
  %127 = load i64, ptr %51, align 8
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i64 [ %115, %126 ], [ %3, %121 ]
  %130 = phi i64 [ %127, %126 ], [ %122, %121 ]
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = sub i64 %25, %129
  store i64 %133, ptr %51, align 8
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi i64 [ %130, %128 ], [ %133, %132 ]
  %136 = add i64 %135, %129
  %137 = load ptr, ptr %67, align 8
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %129, i64 noundef %136, ptr noundef %137) #9
  %139 = load i64, ptr %87, align 8
  %140 = icmp ugt i64 %25, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %87, i8 0, i64 16, i1 false)
  %143 = load i32, ptr %142, align 8
  %144 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 3
  store i32 %143, ptr %144, align 8
  %145 = load ptr, ptr %1, align 8
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %145) #9
  br label %324

147:                                              ; preds = %134
  %148 = load i64, ptr %51, align 8
  %149 = add i64 %148, %139
  %150 = load i64, ptr %23, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = sub i64 %25, %139
  store i64 %153, ptr %51, align 8
  %154 = load ptr, ptr %1, align 8
  %155 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %156 = load ptr, ptr %155, align 8
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %154, ptr noundef %156, i64 noundef %153) #9
  br label %158

158:                                              ; preds = %152, %147
  %159 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %160 = load i32, ptr %159, align 8
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %203

162:                                              ; preds = %158
  %163 = load i64, ptr %87, align 8
  %164 = load i64, ptr %51, align 8
  %165 = add i64 %164, %163
  %166 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %173, %162
  %169 = phi i32 [ %174, %173 ], [ 0, %162 ]
  %170 = getelementptr %struct.mtd_erase_region_info, ptr %167, i32 %169
  %171 = load i64, ptr %170, align 8
  %172 = icmp ugt i64 %171, %163
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = add nuw nsw i32 %169, 1
  %175 = icmp eq i32 %174, %160
  br i1 %175, label %176, label %168

176:                                              ; preds = %173, %168
  %177 = phi i32 [ %169, %168 ], [ %160, %173 ]
  %178 = icmp eq i32 %177, 0
  %179 = add nsw i32 %177, -1
  %180 = select i1 %178, i32 0, i32 %179
  %181 = icmp slt i32 %180, %160
  br i1 %181, label %182, label %198

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 3
  br label %184

184:                                              ; preds = %195, %182
  %185 = phi i32 [ %180, %182 ], [ %196, %195 ]
  %186 = getelementptr %struct.mtd_erase_region_info, ptr %167, i32 %185
  %187 = load i64, ptr %186, align 8
  %188 = icmp ult i64 %187, %165
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i32, ptr %183, align 8
  %191 = getelementptr %struct.mtd_erase_region_info, ptr %167, i32 %185, i32 1
  %192 = load i32, ptr %191, align 8
  %193 = icmp ult i32 %190, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 %192, ptr %183, align 8
  br label %195

195:                                              ; preds = %194, %189
  %196 = add i32 %185, 1
  %197 = icmp eq i32 %196, %160
  br i1 %197, label %198, label %184

198:                                              ; preds = %195, %184, %176
  %199 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 3
  %200 = load i32, ptr %199, align 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206, !prof !10

202:                                              ; preds = %198
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdpart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

203:                                              ; preds = %158
  %204 = load i32, ptr %16, align 8
  %205 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 3
  store i32 %204, ptr %205, align 8
  br label %206

206:                                              ; preds = %203, %198
  %207 = phi i32 [ %200, %198 ], [ %204, %203 ]
  %208 = load i32, ptr %48, align 4
  %209 = and i32 %208, 4096
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 %207, i32 %18
  %212 = load ptr, ptr %84, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %224, label %214

214:                                              ; preds = %214, %206
  %215 = phi ptr [ %222, %214 ], [ %212, %206 ]
  %216 = phi i64 [ %220, %214 ], [ 0, %206 ]
  %217 = phi ptr [ %215, %214 ], [ %27, %206 ]
  %218 = getelementptr inbounds %struct.mtd_info, ptr %217, i32 0, i32 64, i32 0, i32 1
  %219 = load i64, ptr %218, align 8
  %220 = add i64 %219, %216
  %221 = getelementptr inbounds %struct.mtd_info, ptr %215, i32 0, i32 62
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %214

224:                                              ; preds = %214, %206
  %225 = phi i64 [ 0, %206 ], [ %220, %214 ]
  %226 = icmp ult i64 %225, 4294967296
  br i1 %226, label %227, label %230, !prof !8

227:                                              ; preds = %224
  %228 = trunc i64 %225 to i32
  %229 = urem i32 %228, %211
  br label %235

230:                                              ; preds = %224
  %231 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %211, i64 %225) #11, !srcloc !9
  %232 = extractvalue { i64, i64 } %231, 0
  %233 = lshr i64 %232, 32
  %234 = trunc i64 %233 to i32
  br label %235

235:                                              ; preds = %230, %227
  %236 = phi i32 [ %229, %227 ], [ %234, %230 ]
  %237 = and i32 %208, 1024
  %238 = icmp ne i32 %237, 0
  %239 = icmp ne i32 %236, 0
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %241, label %246

241:                                              ; preds = %235
  %242 = and i32 %208, -1025
  store i32 %242, ptr %48, align 4
  %243 = load ptr, ptr %1, align 8
  %244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %243) #9
  %245 = load ptr, ptr %84, align 4
  br label %246

246:                                              ; preds = %241, %235
  %247 = phi ptr [ %245, %241 ], [ %212, %235 ]
  %248 = icmp eq ptr %247, null
  br i1 %248, label %259, label %249

249:                                              ; preds = %249, %246
  %250 = phi ptr [ %257, %249 ], [ %247, %246 ]
  %251 = phi i64 [ %255, %249 ], [ 0, %246 ]
  %252 = phi ptr [ %250, %249 ], [ %27, %246 ]
  %253 = getelementptr inbounds %struct.mtd_info, ptr %252, i32 0, i32 64, i32 0, i32 1
  %254 = load i64, ptr %253, align 8
  %255 = add i64 %254, %251
  %256 = getelementptr inbounds %struct.mtd_info, ptr %250, i32 0, i32 62
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %249

259:                                              ; preds = %249, %246
  %260 = phi i64 [ 0, %246 ], [ %255, %249 ]
  %261 = load i64, ptr %51, align 8
  %262 = add i64 %261, %260
  %263 = icmp ult i64 %262, 4294967296
  br i1 %263, label %264, label %267, !prof !8

264:                                              ; preds = %259
  %265 = trunc i64 %262 to i32
  %266 = urem i32 %265, %211
  br label %272

267:                                              ; preds = %259
  %268 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %211, i64 %262) #11, !srcloc !9
  %269 = extractvalue { i64, i64 } %268, 0
  %270 = lshr i64 %269, 32
  %271 = trunc i64 %270 to i32
  br label %272

272:                                              ; preds = %267, %264
  %273 = phi i32 [ %266, %264 ], [ %271, %267 ]
  %274 = load i32, ptr %48, align 4
  %275 = and i32 %274, 1024
  %276 = icmp ne i32 %275, 0
  %277 = icmp ne i32 %273, 0
  %278 = select i1 %276, i1 %277, i1 false
  br i1 %278, label %279, label %284

279:                                              ; preds = %272
  %280 = and i32 %274, -1025
  store i32 %280, ptr %48, align 4
  %281 = load ptr, ptr %1, align 8
  %282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %281) #9
  %283 = load i64, ptr %51, align 8
  br label %284

284:                                              ; preds = %279, %272
  %285 = phi i64 [ %283, %279 ], [ %261, %272 ]
  %286 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 2
  store i64 %285, ptr %286, align 8
  %287 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 17
  %288 = load i32, ptr %287, align 8
  %289 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 17
  store i32 %288, ptr %289, align 8
  %290 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 18
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 18
  store i32 %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 12
  store i32 %294, ptr %295, align 4
  %296 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 42
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  %299 = icmp eq i64 %285, 0
  %300 = select i1 %298, i1 true, i1 %299
  br i1 %300, label %324, label %301

301:                                              ; preds = %284
  %302 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 52, i32 3
  %303 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 52, i32 2
  %304 = getelementptr inbounds %struct.mtd_info, ptr %27, i32 0, i32 3
  br label %305

305:                                              ; preds = %318, %301
  %306 = phi i64 [ 0, %301 ], [ %321, %318 ]
  %307 = tail call i32 @mtd_block_isreserved(ptr noundef nonnull %27, i64 noundef %306) #8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %302, align 8
  %311 = add i32 %310, 1
  store i32 %311, ptr %302, align 8
  br label %318

312:                                              ; preds = %305
  %313 = tail call i32 @mtd_block_isbad(ptr noundef nonnull %27, i64 noundef %306) #8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %303, align 4
  %317 = add i32 %316, 1
  store i32 %317, ptr %303, align 4
  br label %318

318:                                              ; preds = %315, %312, %309
  %319 = load i32, ptr %304, align 8
  %320 = zext i32 %319 to i64
  %321 = add i64 %306, %320
  %322 = load i64, ptr %51, align 8
  %323 = icmp ult i64 %321, %322
  br i1 %323, label %305, label %324

324:                                              ; preds = %318, %284, %141, %123, %33
  %325 = phi ptr [ inttoptr (i32 -12 to ptr), %33 ], [ %27, %284 ], [ %27, %141 ], [ %27, %123 ], [ %27, %318 ]
  ret ptr %325
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @del_mtd_partitions(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = tail call fastcc i32 @__del_mtd_partitions(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %11) #8
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__del_mtd_partitions(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %35, label %7

7:                                                ; preds = %32, %1
  %8 = phi ptr [ %11, %32 ], [ %5, %1 ]
  %9 = phi i32 [ %33, %32 ], [ 0, %1 ]
  %10 = getelementptr i8, ptr %8, i32 -760
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr i8, ptr %8, i32 -8
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = call fastcc i32 @__del_mtd_partitions(ptr noundef %10)
  br label %17

17:                                               ; preds = %15, %7
  %18 = getelementptr i8, ptr %8, i32 -704
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %19) #9
  %21 = call i32 @del_mtd_device(ptr noundef %10) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %24, i32 noundef %21) #9
  br label %32

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %31 = load ptr, ptr %18, align 8
  call void @kfree(ptr noundef %31) #8
  call void @kfree(ptr noundef %10) #8
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i32 [ %21, %23 ], [ %9, %26 ]
  %34 = icmp eq ptr %11, %4
  br i1 %34, label %35, label %7

35:                                               ; preds = %32, %1
  %36 = phi i32 [ 0, %1 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_del_partition(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -700
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %13, i32 -760
  %21 = tail call fastcc i32 @__mtd_del_partition(ptr noundef %20)
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %21, %19 ], [ -22, %11 ]
  tail call void @mutex_unlock(ptr noundef %9) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mtd_del_partition(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63
  %3 = load ptr, ptr %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %3, %1 ], [ %8, %7 ]
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr i8, ptr %5, i32 -760
  %10 = tail call fastcc i32 @__mtd_del_partition(ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void @sysfs_remove_files(ptr noundef %13, ptr noundef nonnull @mtd_partition_attrs) #8
  %14 = tail call i32 @del_mtd_device(ptr noundef %0) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 64
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 64, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %23 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %23) #8
  tail call void @kfree(ptr noundef %0) #8
  br label %24

24:                                               ; preds = %16, %12, %7
  %25 = phi i32 [ 0, %16 ], [ %14, %12 ], [ %10, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_mtd_partitions(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef %11) #9
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 64
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63, i32 1
  br label %18

18:                                               ; preds = %45, %14
  %19 = phi i32 [ 0, %14 ], [ %54, %45 ]
  %20 = phi i64 [ 0, %14 ], [ %53, %45 ]
  %21 = getelementptr %struct.mtd_partition, ptr %1, i32 %19
  %22 = tail call fastcc ptr @allocate_partition(ptr noundef %0, ptr noundef %21, i32 noundef %19, i64 noundef %20)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = ptrtoint ptr %22 to i32
  br label %56

26:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef %15) #8
  %27 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 64
  %28 = load ptr, ptr %17, align 4
  store ptr %27, ptr %17, align 4
  store ptr %16, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 64, i32 0, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %27, ptr %28, align 4
  tail call void @mutex_unlock(ptr noundef %15) #8
  %30 = tail call i32 @add_mtd_device(ptr noundef %22) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 64, i32 0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #8
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef %15) #8
  %37 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 13
  %38 = load ptr, ptr %37, align 8
  tail call void @kfree(ptr noundef %38) #8
  tail call void @kfree(ptr noundef %22) #8
  br label %56

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 56
  %41 = tail call i32 @sysfs_create_files(ptr noundef %40, ptr noundef nonnull @mtd_partition_attrs) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %41) #9
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr %struct.mtd_partition, ptr %1, i32 %19, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @parse_mtd_partitions(ptr noundef %22, ptr noundef %47, ptr noundef null)
  %49 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 64, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 64, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, %50
  %54 = add nuw nsw i32 %19, 1
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %69, label %18

56:                                               ; preds = %32, %24
  %57 = phi i32 [ %25, %24 ], [ %30, %32 ]
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi ptr [ %5, %56 ], [ %61, %58 ]
  %60 = getelementptr inbounds %struct.mtd_info, ptr %59, i32 0, i32 62
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 13
  %65 = load ptr, ptr %64, align 8
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %65) #9
  %67 = getelementptr inbounds %struct.mtd_info, ptr %59, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %67) #8
  %68 = tail call fastcc i32 @__del_mtd_partitions(ptr noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %67) #8
  br label %69

69:                                               ; preds = %63, %45, %9
  %70 = phi i32 [ %57, %63 ], [ 0, %9 ], [ 0, %45 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @parse_mtd_partitions(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mtd_partitions, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @default_mtd_part_types, ptr @default_subpartition_types
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi ptr [ %1, %3 ], [ %10, %6 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %265, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  br label %18

18:                                               ; preds = %260, %15
  %19 = phi ptr [ %13, %15 ], [ %263, %260 ]
  %20 = phi ptr [ %12, %15 ], [ %262, %260 ]
  %21 = phi i32 [ 0, %15 ], [ %261, %260 ]
  %22 = call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull dereferenceable(7) @.str.2)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %166

24:                                               ; preds = %18
  %25 = load ptr, ptr %16, align 8
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call ptr @of_node_get(ptr noundef %25) #8
  br label %32

30:                                               ; preds = %24
  %31 = call ptr @of_get_child_by_name(ptr noundef %25, ptr noundef nonnull @.str.19) #8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %25, %28 ], [ %31, %30 ]
  %34 = call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %35 = call ptr @of_prop_next_string(ptr noundef %34, ptr noundef null) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %100, label %37

37:                                               ; preds = %96, %32
  %38 = phi i32 [ %97, %96 ], [ 0, %32 ]
  %39 = phi ptr [ %98, %96 ], [ %35, %32 ]
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %40 = load ptr, ptr @part_parsers, align 4
  %41 = icmp eq ptr %40, @part_parsers
  br i1 %41, label %71, label %42

42:                                               ; preds = %68, %37
  %43 = phi ptr [ %69, %68 ], [ %40, %37 ]
  %44 = getelementptr inbounds %struct.mtd_part_parser, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.of_device_id, ptr %45, i32 0, i32 2
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mtd_part_parser, ptr %43, i32 0, i32 1
  br label %53

53:                                               ; preds = %61, %51
  %54 = phi ptr [ %48, %51 ], [ %63, %61 ]
  %55 = phi ptr [ %45, %51 ], [ %62, %61 ]
  %56 = call i32 @strcmp(ptr noundef %54, ptr noundef nonnull %39) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr %52, align 4
  %60 = call zeroext i1 @try_module_get(ptr noundef %59) #8
  br i1 %60, label %66, label %61

61:                                               ; preds = %58, %53
  %62 = getelementptr %struct.of_device_id, ptr %55, i32 1
  %63 = getelementptr %struct.of_device_id, ptr %55, i32 1, i32 2
  %64 = load i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %53

66:                                               ; preds = %58
  %67 = icmp eq ptr %43, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %66, %61, %47, %42
  %69 = load ptr, ptr %43, align 4
  %70 = icmp eq ptr %69, @part_parsers
  br i1 %70, label %71, label %42

71:                                               ; preds = %68, %66, %37
  %72 = phi ptr [ null, %37 ], [ %43, %66 ], [ null, %68 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %73 = load i16, ptr @part_parser_lock, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr @part_parser_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %75 = icmp eq ptr %72, null
  br i1 %75, label %96, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.mtd_part_parser, ptr %72, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null) #8
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.mtd_part_parser, ptr %72, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %85 = load ptr, ptr %84, align 8
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %79, ptr noundef %83, ptr noundef %85) #9
  %87 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 1
  store i32 %79, ptr %87, align 4
  %88 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 2
  store ptr %72, ptr %88, align 4
  call void @of_node_put(ptr noundef %33) #8
  br label %232

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.mtd_part_parser, ptr %72, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  call void @module_put(ptr noundef %91) #8
  %92 = icmp eq i32 %79, 0
  %93 = icmp ne i32 %38, 0
  %94 = select i1 %92, i1 true, i1 %93
  %95 = select i1 %94, i32 %38, i32 %79
  br label %96

96:                                               ; preds = %89, %71
  %97 = phi i32 [ %38, %71 ], [ %95, %89 ]
  %98 = call ptr @of_prop_next_string(ptr noundef %34, ptr noundef nonnull %39) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %37

100:                                              ; preds = %96, %32
  %101 = phi i32 [ 0, %32 ], [ %97, %96 ]
  call void @of_node_put(ptr noundef %33) #8
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %102 = load ptr, ptr @part_parsers, align 4
  %103 = icmp eq ptr %102, @part_parsers
  br i1 %103, label %117, label %104

104:                                              ; preds = %114, %100
  %105 = phi ptr [ %115, %114 ], [ %102, %100 ]
  %106 = getelementptr inbounds %struct.mtd_part_parser, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 @strcmp(ptr noundef %107, ptr noundef nonnull dereferenceable(17) @.str.18) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.mtd_part_parser, ptr %105, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = call zeroext i1 @try_module_get(ptr noundef %112) #8
  br i1 %113, label %117, label %114

114:                                              ; preds = %110, %104
  %115 = load ptr, ptr %105, align 4
  %116 = icmp eq ptr %115, @part_parsers
  br i1 %116, label %117, label %104

117:                                              ; preds = %114, %110, %100
  %118 = phi ptr [ null, %100 ], [ %105, %110 ], [ null, %114 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %119 = load i16, ptr @part_parser_lock, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr @part_parser_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %121 = icmp eq ptr %118, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %117
  %123 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %230

125:                                              ; preds = %122
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %126 = load ptr, ptr @part_parsers, align 4
  %127 = icmp eq ptr %126, @part_parsers
  br i1 %127, label %141, label %128

128:                                              ; preds = %138, %125
  %129 = phi ptr [ %139, %138 ], [ %126, %125 ]
  %130 = getelementptr inbounds %struct.mtd_part_parser, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 @strcmp(ptr noundef %131, ptr noundef nonnull dereferenceable(17) @.str.18) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.mtd_part_parser, ptr %129, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = call zeroext i1 @try_module_get(ptr noundef %136) #8
  br i1 %137, label %141, label %138

138:                                              ; preds = %134, %128
  %139 = load ptr, ptr %129, align 4
  %140 = icmp eq ptr %139, @part_parsers
  br i1 %140, label %141, label %128

141:                                              ; preds = %138, %134, %125
  %142 = phi ptr [ null, %125 ], [ %129, %134 ], [ null, %138 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %143 = load i16, ptr @part_parser_lock, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr @part_parser_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %145 = icmp eq ptr %142, null
  br i1 %145, label %230, label %146

146:                                              ; preds = %141, %117
  %147 = phi ptr [ %142, %141 ], [ %118, %117 ]
  %148 = getelementptr inbounds %struct.mtd_part_parser, ptr %147, i32 0, i32 4
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 %149(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null) #8
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %160, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.mtd_part_parser, ptr %147, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %156 = load ptr, ptr %155, align 8
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %150, ptr noundef %154, ptr noundef %156) #9
  %158 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 1
  store i32 %150, ptr %158, align 4
  %159 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 2
  store ptr %147, ptr %159, align 4
  br label %232

160:                                              ; preds = %146
  %161 = getelementptr inbounds %struct.mtd_part_parser, ptr %147, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  call void @module_put(ptr noundef %162) #8
  %163 = icmp eq i32 %150, 0
  %164 = icmp ne i32 %101, 0
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %230, label %254

166:                                              ; preds = %18
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %167 = load ptr, ptr @part_parsers, align 4
  %168 = icmp eq ptr %167, @part_parsers
  br i1 %168, label %182, label %169

169:                                              ; preds = %179, %166
  %170 = phi ptr [ %180, %179 ], [ %167, %166 ]
  %171 = getelementptr inbounds %struct.mtd_part_parser, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = call i32 @strcmp(ptr noundef %172, ptr noundef nonnull %19) #8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.mtd_part_parser, ptr %170, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = call zeroext i1 @try_module_get(ptr noundef %177) #8
  br i1 %178, label %182, label %179

179:                                              ; preds = %175, %169
  %180 = load ptr, ptr %170, align 4
  %181 = icmp eq ptr %180, @part_parsers
  br i1 %181, label %182, label %169

182:                                              ; preds = %179, %175, %166
  %183 = phi ptr [ null, %166 ], [ null, %179 ], [ %170, %175 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %184 = load i16, ptr @part_parser_lock, align 4
  %185 = add i16 %184, 1
  store i16 %185, ptr @part_parser_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %186 = icmp eq ptr %183, null
  br i1 %186, label %187, label %213

187:                                              ; preds = %182
  %188 = load ptr, ptr %20, align 4
  %189 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %188) #8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %260

191:                                              ; preds = %187
  %192 = load ptr, ptr %20, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %193 = load ptr, ptr @part_parsers, align 4
  %194 = icmp eq ptr %193, @part_parsers
  br i1 %194, label %208, label %195

195:                                              ; preds = %205, %191
  %196 = phi ptr [ %206, %205 ], [ %193, %191 ]
  %197 = getelementptr inbounds %struct.mtd_part_parser, ptr %196, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 @strcmp(ptr noundef %198, ptr noundef %192) #8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.mtd_part_parser, ptr %196, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = call zeroext i1 @try_module_get(ptr noundef %203) #8
  br i1 %204, label %208, label %205

205:                                              ; preds = %201, %195
  %206 = load ptr, ptr %196, align 4
  %207 = icmp eq ptr %206, @part_parsers
  br i1 %207, label %208, label %195

208:                                              ; preds = %205, %201, %191
  %209 = phi ptr [ null, %191 ], [ null, %205 ], [ %196, %201 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %210 = load i16, ptr @part_parser_lock, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr @part_parser_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %212 = icmp eq ptr %209, null
  br i1 %212, label %260, label %213

213:                                              ; preds = %208, %182
  %214 = phi ptr [ %209, %208 ], [ %183, %182 ]
  %215 = getelementptr inbounds %struct.mtd_part_parser, ptr %214, i32 0, i32 4
  %216 = load ptr, ptr %215, align 4
  %217 = call i32 %216(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #8
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %227, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.mtd_part_parser, ptr %214, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %223 = load ptr, ptr %222, align 8
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %217, ptr noundef %221, ptr noundef %223) #9
  %225 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 1
  store i32 %217, ptr %225, align 4
  %226 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 2
  store ptr %214, ptr %226, align 4
  br label %232

227:                                              ; preds = %213
  %228 = getelementptr inbounds %struct.mtd_part_parser, ptr %214, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  call void @module_put(ptr noundef %229) #8
  br label %254

230:                                              ; preds = %160, %141, %122
  %231 = icmp sgt i32 %101, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %230, %219, %152, %81
  %233 = load ptr, ptr %4, align 4
  %234 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 1
  %235 = load i32, ptr %234, align 4
  %236 = call i32 @add_mtd_partitions(ptr noundef %0, ptr noundef %233, i32 noundef %235)
  %237 = getelementptr inbounds %struct.mtd_partitions, ptr %4, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %250, label %240

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct.mtd_part_parser, ptr %238, i32 0, i32 5
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %4, align 4
  %246 = load i32, ptr %234, align 4
  call void %242(ptr noundef %245, i32 noundef %246) #8
  br label %247

247:                                              ; preds = %244, %240
  %248 = getelementptr inbounds %struct.mtd_part_parser, ptr %238, i32 0, i32 1
  %249 = load ptr, ptr %248, align 4
  call void @module_put(ptr noundef %249) #8
  br label %250

250:                                              ; preds = %247, %232
  %251 = icmp eq i32 %236, 0
  %252 = load i32, ptr %234, align 4
  %253 = select i1 %251, i32 %252, i32 %236
  br label %265

254:                                              ; preds = %230, %227, %160
  %255 = phi i32 [ %101, %230 ], [ %150, %160 ], [ %217, %227 ]
  %256 = icmp eq i32 %255, 0
  %257 = icmp ne i32 %21, 0
  %258 = select i1 %256, i1 true, i1 %257
  %259 = select i1 %258, i32 %21, i32 %255
  br label %260

260:                                              ; preds = %254, %208, %187
  %261 = phi i32 [ %21, %208 ], [ %259, %254 ], [ %21, %187 ]
  %262 = getelementptr ptr, ptr %20, i32 1
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %18

265:                                              ; preds = %260, %250, %11
  %266 = phi i32 [ %253, %250 ], [ 0, %11 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__register_mtd_parser(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mtd_part_parser, ptr %0, i32 0, i32 1
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mtd_part_parser, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr @mtd_part_parser_cleanup_default, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %9 = load ptr, ptr @part_parsers, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %9, ptr %0, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @part_parsers, ptr %11, align 4
  store volatile ptr %0, ptr @part_parsers, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %12 = load i16, ptr @part_parser_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @part_parser_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtd_part_parser_cleanup_default(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @deregister_mtd_parser(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %6 = load i16, ptr @part_parser_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @part_parser_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtd_part_parser_cleanup(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mtd_partitions, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_part_parser, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.mtd_partitions, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void %9(ptr noundef %12, i32 noundef %14) #8
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.mtd_part_parser, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @module_put(ptr noundef %17) #8
  br label %18

18:                                               ; preds = %15, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @mtd_get_device_size(ptr nocapture noundef readonly %0) #6 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  ret i64 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isreserved(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @offset_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 64, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i64 noundef %7) #8
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_files(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 2147907256, i64 2147907536, i64 2147907870, i64 2147908204}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151447850, i64 2151448336, i64 2151447887, i64 2151447943, i64 2151447977, i64 2151448001, i64 2151448042, i64 2151448063, i64 2151448091, i64 2151448125}
!12 = !{i64 2148943379}
!13 = !{i64 2148939203}
!14 = !{i64 2148939278, i64 2148939305, i64 2148939352, i64 2148939374, i64 2148939402, i64 2148939422}
!15 = !{i64 2148966382}
