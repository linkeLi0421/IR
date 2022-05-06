; ModuleID = '/llk/IR/mm/memblock.c_pt.bc'
source_filename = "../mm/memblock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_contig_page_data:\09\09\09\09\09"
module asm "\09.asciz \09\22contig_page_data\22\09\09\09\09\09"
module asm "__kstrtabns_contig_page_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.memblock_region = type { i32, i32, i32 }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }

@contig_page_data = dso_local global %struct.pglist_data zeroinitializer, section ".ref.data", align 64
@__kstrtab_contig_page_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_contig_page_data = external dso_local constant [0 x i8], align 1
@__ksymtab_contig_page_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @contig_page_data to i32), ptr @__kstrtab_contig_page_data, ptr @__kstrtabns_contig_page_data }, section "___ksymtab+contig_page_data", align 4
@memblock_memory_init_regions = internal global [128 x %struct.memblock_region] zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@memblock_reserved_init_regions = internal global [128 x %struct.memblock_region] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@memblock = dso_local global %struct.memblock { i8 0, i32 -1, %struct.memblock_type { i32 1, i32 128, i32 0, ptr @memblock_memory_init_regions, ptr @.str }, %struct.memblock_type { i32 1, i32 128, i32 0, ptr @memblock_reserved_init_regions, ptr @.str.1 } }, align 4
@memblock_debug = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\016%s: [%pa-%pa] nid=%d flags=%x %pS\0A\00", align 1
@__func__.memblock_add_node = private unnamed_addr constant [18 x i8] c"memblock_add_node\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\016%s: [%pa-%pa] %pS\0A\00", align 1
@__func__.memblock_add = private unnamed_addr constant [13 x i8] c"memblock_add\00", align 1
@__func__.memblock_remove = private unnamed_addr constant [16 x i8] c"memblock_remove\00", align 1
@__func__.memblock_phys_free = private unnamed_addr constant [19 x i8] c"memblock_phys_free\00", align 1
@__func__.memblock_reserve = private unnamed_addr constant [17 x i8] c"memblock_reserve\00", align 1
@system_has_some_mirror = internal unnamed_addr global i1 false, align 1
@__next_mem_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mm/memblock.c\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Usage of MAX_NUMNODES is deprecated. Use NUMA_NO_NODE instead\0A\00", align 1
@__next_mem_range_rev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@memblock_alloc_range_nid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\014Could not allocate %pap bytes of mirrored memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"\016%s: %llu bytes align=0x%llx from=%pa max_addr=%pa %pS\0A\00", align 1
@__func__.memblock_phys_alloc_range = private unnamed_addr constant [26 x i8] c"memblock_phys_alloc_range\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"\016%s: %llu bytes align=0x%llx nid=%d from=%pa max_addr=%pa %pS\0A\00", align 1
@__func__.memblock_alloc_exact_nid_raw = private unnamed_addr constant [29 x i8] c"memblock_alloc_exact_nid_raw\00", align 1
@__func__.memblock_alloc_try_nid_raw = private unnamed_addr constant [27 x i8] c"memblock_alloc_try_nid_raw\00", align 1
@__func__.memblock_alloc_try_nid = private unnamed_addr constant [23 x i8] c"memblock_alloc_try_nid\00", align 1
@__func__.memblock_free_late = private unnamed_addr constant [19 x i8] c"memblock_free_late\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\014%s: No memory registered yet\0A\00", align 1
@__func__.memblock_cap_memory_range = private unnamed_addr constant [26 x i8] c"memblock_cap_memory_range\00", align 1
@memblock_can_resize = internal unnamed_addr global i1 false, align 4
@__setup_str_early_memblock = internal constant [9 x i8] c"memblock\00", section ".init.rodata", align 1
@__setup_early_memblock = internal global %struct.obs_kernel_param { ptr @__setup_str_early_memblock, ptr @early_memblock, i32 1 }, section ".init.setup", align 4
@reset_managed_pages_done = internal unnamed_addr global i1 false, section ".init.data", align 4
@__initcall__kmod_memblock__266_2156_memblock_init_debugfs6 = internal global ptr @memblock_init_debugfs, section ".initcall6.init", align 4
@max_low_pfn = dso_local local_unnamed_addr global i32 0, align 4
@min_low_pfn = dso_local local_unnamed_addr global i32 0, align 4
@max_pfn = dso_local local_unnamed_addr global i32 0, align 4
@max_possible_pfn = dso_local local_unnamed_addr global i64 0, align 8
@memblock_memory_in_slab = internal unnamed_addr global i32 0, align 4
@memblock_reserved_in_slab = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [65 x i8] c"\013memblock: Failed to double %s array from %ld to %ld entries !\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\016memblock: %s is doubled to %ld at [%pa-%pa]\00", align 1
@memblock_alloc_internal.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"\016MEMBLOCK configuration:\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\016 memory size = %pa reserved size = %pa\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\016 %s.cnt  = 0x%lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"\016 %s[%#x]\09[%pa-%pa], %pa bytes%s flags: %#x\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"memblock\00", align 1
@memblock_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @memblock_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"%4d: \00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%pa..%pa\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_memblock__266_2156_memblock_init_debugfs6, ptr @__ksymtab_contig_page_data, ptr @__setup_early_memblock], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_overlaps_region(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 %1)
  %10 = load i32, ptr %8, align 4
  %11 = getelementptr %struct.memblock_region, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = icmp ule i32 %13, %1
  %15 = icmp ule i32 %9, %10
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %32

17:                                               ; preds = %21, %6
  %18 = phi i32 [ %19, %21 ], [ 0, %6 ]
  %19 = add nuw i32 %18, 1
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.memblock_region, ptr %8, i32 %19
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.memblock_region, ptr %8, i32 %19, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = icmp ule i32 %26, %1
  %28 = icmp ule i32 %9, %23
  %29 = or i1 %28, %27
  br i1 %29, label %17, label %30

30:                                               ; preds = %21, %17
  %31 = icmp ult i32 %19, %4
  br label %32

32:                                               ; preds = %30, %6, %3
  %33 = phi i1 [ false, %3 ], [ true, %6 ], [ %31, %30 ]
  ret i1 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_add_node(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %7 = add i32 %0, -1
  %8 = add i32 %7, %1
  store i32 %8, ptr %6, align 4
  %9 = load i1, ptr @memblock_debug, align 4
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.memblock_add_node, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3, ptr noundef %11) #21
  %13 = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %13, %10 ], [ %0, %4 ]
  %16 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %15, i32 noundef %1, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memblock_add_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = xor i32 %1, -1
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 %5) #20
  %7 = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 %1)
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %220, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.memblock_region, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %0, align 4
  %19 = icmp ugt i32 %7, %1
  br label %43

20:                                               ; preds = %9
  %21 = load i32, ptr %0, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !8

27:                                               ; preds = %23, %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 588, i32 noundef 9, ptr noundef null) #20
  %28 = load ptr, ptr %10, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %11, %23 ]
  store i32 %1, ptr %30, align 4
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.memblock_region, ptr %31, i32 0, i32 1
  store i32 %6, ptr %32, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.memblock_region, ptr %33, i32 0, i32 2
  store i32 %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 2
  store i32 %6, ptr %35, align 4
  br label %220

36:                                               ; preds = %174
  %37 = load ptr, ptr %10, align 4
  br label %38

38:                                               ; preds = %162, %36
  %39 = phi ptr [ %163, %162 ], [ %37, %36 ]
  %40 = phi i32 [ %164, %162 ], [ %175, %36 ]
  %41 = phi i32 [ %165, %162 ], [ %175, %36 ]
  %42 = phi i32 [ %166, %162 ], [ %175, %36 ]
  br label %43

43:                                               ; preds = %38, %15
  %44 = phi ptr [ %11, %15 ], [ %39, %38 ]
  %45 = phi i32 [ %18, %15 ], [ %40, %38 ]
  %46 = phi i32 [ %18, %15 ], [ %41, %38 ]
  %47 = phi i32 [ %18, %15 ], [ %42, %38 ]
  %48 = phi i1 [ false, %15 ], [ true, %38 ]
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %128, label %50

50:                                               ; preds = %104, %43
  %51 = phi ptr [ %105, %104 ], [ %44, %43 ]
  %52 = phi i32 [ %106, %104 ], [ %45, %43 ]
  %53 = phi i32 [ %107, %104 ], [ %46, %43 ]
  %54 = phi i32 [ %108, %104 ], [ %47, %43 ]
  %55 = phi i32 [ %109, %104 ], [ %47, %43 ]
  %56 = phi ptr [ %110, %104 ], [ %44, %43 ]
  %57 = phi i32 [ %113, %104 ], [ %1, %43 ]
  %58 = phi ptr [ %115, %104 ], [ %44, %43 ]
  %59 = phi i32 [ %112, %104 ], [ 0, %43 ]
  %60 = phi i32 [ %114, %104 ], [ 0, %43 ]
  %61 = load i32, ptr %58, align 4
  %62 = getelementptr inbounds %struct.memblock_region, ptr %58, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  %65 = icmp ult i32 %61, %7
  br i1 %65, label %66, label %117

66:                                               ; preds = %50
  %67 = icmp ugt i32 %64, %57
  br i1 %67, label %68, label %104

68:                                               ; preds = %66
  %69 = icmp ugt i32 %61, %57
  br i1 %69, label %70, label %97

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.memblock_region, ptr %58, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %3
  br i1 %73, label %76, label %74, !prof !8

74:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 621, i32 noundef 9, ptr noundef null) #20
  %75 = load i32, ptr %0, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %75, %74 ], [ %52, %70 ]
  %78 = add i32 %59, 1
  br i1 %48, label %79, label %97

79:                                               ; preds = %76
  %80 = load i32, ptr %16, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %83, label %82, !prof !8

82:                                               ; preds = %79
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #20, !srcloc !9
  unreachable

83:                                               ; preds = %79
  %84 = sub i32 %61, %57
  %85 = add nuw i32 %60, 1
  %86 = load ptr, ptr %10, align 4
  %87 = getelementptr %struct.memblock_region, ptr %86, i32 %60
  %88 = getelementptr %struct.memblock_region, ptr %87, i32 1
  %89 = sub i32 %77, %60
  %90 = mul i32 %89, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %88, ptr align 4 %87, i32 %90, i1 false) #20
  store i32 %57, ptr %87, align 4
  %91 = getelementptr %struct.memblock_region, ptr %86, i32 %60, i32 1
  store i32 %84, ptr %91, align 4
  %92 = getelementptr %struct.memblock_region, ptr %86, i32 %60, i32 2
  store i32 %3, ptr %92, align 4
  %93 = load i32, ptr %0, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %0, align 4
  %95 = load i32, ptr %17, align 4
  %96 = add i32 %95, %84
  store i32 %96, ptr %17, align 4
  br label %97

97:                                               ; preds = %83, %76, %68
  %98 = phi i32 [ %94, %83 ], [ %52, %68 ], [ %77, %76 ]
  %99 = phi i32 [ %94, %83 ], [ %53, %68 ], [ %77, %76 ]
  %100 = phi i32 [ %85, %83 ], [ %60, %68 ], [ %60, %76 ]
  %101 = phi i32 [ %78, %83 ], [ %59, %68 ], [ %78, %76 ]
  %102 = tail call i32 @llvm.umin.i32(i32 %64, i32 %7)
  %103 = load ptr, ptr %10, align 4
  br label %104

104:                                              ; preds = %97, %66
  %105 = phi ptr [ %51, %66 ], [ %103, %97 ]
  %106 = phi i32 [ %52, %66 ], [ %98, %97 ]
  %107 = phi i32 [ %53, %66 ], [ %99, %97 ]
  %108 = phi i32 [ %54, %66 ], [ %99, %97 ]
  %109 = phi i32 [ %55, %66 ], [ %99, %97 ]
  %110 = phi ptr [ %56, %66 ], [ %103, %97 ]
  %111 = phi i32 [ %60, %66 ], [ %100, %97 ]
  %112 = phi i32 [ %59, %66 ], [ %101, %97 ]
  %113 = phi i32 [ %57, %66 ], [ %102, %97 ]
  %114 = add i32 %111, 1
  %115 = getelementptr %struct.memblock_region, ptr %110, i32 %114
  %116 = icmp ult i32 %114, %109
  br i1 %116, label %50, label %117

117:                                              ; preds = %104, %50
  %118 = phi ptr [ %105, %104 ], [ %51, %50 ]
  %119 = phi i32 [ %106, %104 ], [ %52, %50 ]
  %120 = phi i32 [ %107, %104 ], [ %53, %50 ]
  %121 = phi i32 [ %108, %104 ], [ %54, %50 ]
  %122 = phi ptr [ %110, %104 ], [ %56, %50 ]
  %123 = phi i32 [ %109, %104 ], [ %55, %50 ]
  %124 = phi i32 [ %114, %104 ], [ %60, %50 ]
  %125 = phi i32 [ %112, %104 ], [ %59, %50 ]
  %126 = phi i32 [ %113, %104 ], [ %57, %50 ]
  %127 = icmp ugt i32 %7, %126
  br i1 %127, label %129, label %144

128:                                              ; preds = %43
  br i1 %19, label %129, label %220

129:                                              ; preds = %128, %117
  %130 = phi ptr [ %44, %128 ], [ %118, %117 ]
  %131 = phi i32 [ %45, %128 ], [ %119, %117 ]
  %132 = phi i32 [ %1, %128 ], [ %126, %117 ]
  %133 = phi i32 [ 0, %128 ], [ %125, %117 ]
  %134 = phi i32 [ 0, %128 ], [ %124, %117 ]
  %135 = phi i32 [ 0, %128 ], [ %123, %117 ]
  %136 = phi ptr [ %44, %128 ], [ %122, %117 ]
  %137 = phi i32 [ 0, %128 ], [ %121, %117 ]
  %138 = phi i32 [ %46, %128 ], [ %120, %117 ]
  %139 = add i32 %133, 1
  br i1 %48, label %140, label %159

140:                                              ; preds = %129
  %141 = load i32, ptr %16, align 4
  %142 = icmp ult i32 %135, %141
  br i1 %142, label %146, label %143, !prof !8

143:                                              ; preds = %140
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #20, !srcloc !9
  unreachable

144:                                              ; preds = %117
  %145 = icmp eq i32 %125, 0
  br i1 %145, label %220, label %161

146:                                              ; preds = %140
  %147 = sub i32 %7, %132
  %148 = getelementptr %struct.memblock_region, ptr %136, i32 %134
  %149 = getelementptr %struct.memblock_region, ptr %148, i32 1
  %150 = sub i32 %135, %134
  %151 = mul i32 %150, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %149, ptr align 4 %148, i32 %151, i1 false) #20
  store i32 %132, ptr %148, align 4
  %152 = getelementptr %struct.memblock_region, ptr %136, i32 %134, i32 1
  store i32 %147, ptr %152, align 4
  %153 = getelementptr %struct.memblock_region, ptr %136, i32 %134, i32 2
  store i32 %3, ptr %153, align 4
  %154 = load i32, ptr %0, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %0, align 4
  %156 = load i32, ptr %17, align 4
  %157 = add i32 %156, %147
  store i32 %157, ptr %17, align 4
  %158 = icmp eq i32 %139, 0
  br i1 %158, label %220, label %179

159:                                              ; preds = %129
  %160 = icmp eq i32 %139, 0
  br i1 %160, label %220, label %162

161:                                              ; preds = %144
  br i1 %48, label %179, label %162

162:                                              ; preds = %161, %159
  %163 = phi ptr [ %118, %161 ], [ %130, %159 ]
  %164 = phi i32 [ %119, %161 ], [ %131, %159 ]
  %165 = phi i32 [ %120, %161 ], [ %138, %159 ]
  %166 = phi i32 [ %121, %161 ], [ %137, %159 ]
  %167 = phi i32 [ %125, %161 ], [ %139, %159 ]
  %168 = add i32 %166, %167
  %169 = load i32, ptr %16, align 4
  %170 = icmp ugt i32 %168, %169
  br i1 %170, label %171, label %38

171:                                              ; preds = %174, %162
  %172 = tail call fastcc i32 @memblock_double_array(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %220, label %174

174:                                              ; preds = %171
  %175 = load i32, ptr %0, align 4
  %176 = add i32 %175, %167
  %177 = load i32, ptr %16, align 4
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %171, label %36

179:                                              ; preds = %161, %146
  %180 = phi i32 [ %155, %146 ], [ %121, %161 ]
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %220, label %182

182:                                              ; preds = %215, %179
  %183 = phi i32 [ %216, %215 ], [ %180, %179 ]
  %184 = phi i32 [ %217, %215 ], [ 0, %179 ]
  %185 = load ptr, ptr %10, align 4
  %186 = getelementptr %struct.memblock_region, ptr %185, i32 %184
  %187 = add nuw i32 %184, 1
  %188 = getelementptr %struct.memblock_region, ptr %185, i32 %187
  %189 = load i32, ptr %186, align 4
  %190 = getelementptr %struct.memblock_region, ptr %185, i32 %184, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, %189
  %193 = load i32, ptr %188, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %182
  %196 = getelementptr %struct.memblock_region, ptr %185, i32 %184, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr %struct.memblock_region, ptr %185, i32 %187, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %204, label %201

201:                                              ; preds = %195, %182
  %202 = icmp ugt i32 %192, %193
  br i1 %202, label %203, label %215, !prof !10

203:                                              ; preds = %201
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #20, !srcloc !11
  unreachable

204:                                              ; preds = %195
  %205 = getelementptr %struct.memblock_region, ptr %185, i32 %187, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, %191
  store i32 %207, ptr %190, align 4
  %208 = getelementptr %struct.memblock_region, ptr %188, i32 1
  %209 = load i32, ptr %0, align 4
  %210 = sub nuw i32 -2, %184
  %211 = add i32 %210, %209
  %212 = mul i32 %211, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %188, ptr align 4 %208, i32 %212, i1 false) #20
  %213 = load i32, ptr %0, align 4
  %214 = add i32 %213, -1
  store i32 %214, ptr %0, align 4
  br label %215

215:                                              ; preds = %204, %201
  %216 = phi i32 [ %214, %204 ], [ %183, %201 ]
  %217 = phi i32 [ %184, %204 ], [ %187, %201 ]
  %218 = add i32 %216, -1
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %182, label %220

220:                                              ; preds = %215, %179, %171, %159, %146, %144, %128, %29, %4
  %221 = phi i32 [ 0, %29 ], [ 0, %4 ], [ 0, %179 ], [ 0, %146 ], [ 0, %215 ], [ -12, %171 ], [ 0, %159 ], [ 0, %144 ], [ 0, %128 ]
  ret i32 %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_add(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = add i32 %0, -1
  %6 = add i32 %5, %1
  store i32 %6, ptr %4, align 4
  %7 = load i1, ptr @memblock_debug, align 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_add, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %9) #21
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %0, %2 ]
  %14 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %13, i32 noundef %1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_remove(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = add i32 %0, -1
  %6 = add i32 %5, %1
  store i32 %6, ptr %4, align 4
  %7 = load i1, ptr @memblock_debug, align 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_remove, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %9) #21
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %0, %2 ]
  %14 = call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %13, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memblock_remove_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = call fastcc i32 @memblock_isolate_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %3
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %9, -1
  %12 = icmp slt i32 %11, %10
  br i1 %12, label %45, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 2
  br label %16

16:                                               ; preds = %42, %13
  %17 = phi i32 [ %11, %13 ], [ %43, %42 ]
  %18 = phi i32 [ %9, %13 ], [ %17, %42 ]
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.memblock_region, ptr %19, i32 %17, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %15, align 4
  %23 = sub i32 %22, %21
  store i32 %23, ptr %15, align 4
  %24 = getelementptr %struct.memblock_region, ptr %19, i32 %17
  %25 = getelementptr %struct.memblock_region, ptr %19, i32 %18
  %26 = load i32, ptr %0, align 4
  %27 = sub i32 %26, %18
  %28 = mul i32 %27, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %24, ptr align 4 %25, i32 %28, i1 false) #20
  %29 = load i32, ptr %0, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %0, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %16
  %33 = load i32, ptr %15, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #20
  br label %36

36:                                               ; preds = %35, %32
  store i32 1, ptr %0, align 4
  %37 = load ptr, ptr %14, align 4
  store i32 0, ptr %37, align 4
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr inbounds %struct.memblock_region, ptr %38, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr inbounds %struct.memblock_region, ptr %40, i32 0, i32 2
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %36, %16
  %43 = add i32 %17, -1
  %44 = icmp slt i32 %43, %10
  br i1 %44, label %45, label %16

45:                                               ; preds = %42, %8, %3
  %46 = phi i32 [ %6, %3 ], [ 0, %8 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @memblock_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = ptrtoint ptr %0 to i32
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %5, i32 -2130706432, i32 8454144) #22, !srcloc !13
  %7 = tail call i32 @memblock_phys_free(i32 noundef %6, i32 noundef %1)
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_phys_free(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %7 = add i32 %0, -1
  %8 = add i32 %7, %1
  store i32 %8, ptr %6, align 4
  %9 = load i1, ptr @memblock_debug, align 4
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_phys_free, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %11) #21
  %13 = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ %0, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !12
  %16 = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %15, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 4
  %20 = load i32, ptr %3, align 4
  %21 = add i32 %19, -1
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %56, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  br label %25

25:                                               ; preds = %52, %23
  %26 = phi i32 [ %53, %52 ], [ %24, %23 ]
  %27 = phi i32 [ %54, %52 ], [ %21, %23 ]
  %28 = phi i32 [ %27, %52 ], [ %19, %23 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %30 = getelementptr %struct.memblock_region, ptr %29, i32 %27, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %33 = sub i32 %32, %31
  store i32 %33, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %34 = getelementptr %struct.memblock_region, ptr %29, i32 %27
  %35 = getelementptr %struct.memblock_region, ptr %29, i32 %28
  %36 = sub i32 %26, %28
  %37 = mul i32 %36, 12
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %34, ptr align 4 %35, i32 %37, i1 false) #20
  %38 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %25
  %42 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !8

44:                                               ; preds = %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #20
  br label %45

45:                                               ; preds = %44, %41
  store i32 1, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  store i32 0, ptr %46, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %48 = getelementptr inbounds %struct.memblock_region, ptr %47, i32 0, i32 1
  store i32 0, ptr %48, align 4
  %49 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %50 = getelementptr inbounds %struct.memblock_region, ptr %49, i32 0, i32 2
  store i32 0, ptr %50, align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  br label %52

52:                                               ; preds = %45, %25
  %53 = phi i32 [ %39, %25 ], [ %51, %45 ]
  %54 = add i32 %27, -1
  %55 = icmp slt i32 %54, %20
  br i1 %55, label %56, label %25

56:                                               ; preds = %52, %18, %14
  %57 = phi i32 [ %16, %14 ], [ 0, %18 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_reserve(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = add i32 %0, -1
  %6 = add i32 %5, %1
  store i32 %6, ptr %4, align 4
  %7 = load i1, ptr @memblock_debug, align 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_reserve, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %9) #21
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %0, %2 ]
  %14 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %13, i32 noundef %1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_mark_hotplug(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memblock_setclr_flag(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !12
  %7 = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  %15 = xor i32 %3, -1
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %10, %13 ], [ %24, %16 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %19 = getelementptr %struct.memblock_region, ptr %18, i32 %17, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %15
  %22 = or i32 %20, %3
  %23 = select i1 %14, i32 %21, i32 %22
  store i32 %23, ptr %19, align 4
  %24 = add nsw i32 %17, 1
  %25 = icmp eq i32 %24, %11
  br i1 %25, label %26, label %16

26:                                               ; preds = %16, %9
  %27 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %71, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %31

31:                                               ; preds = %65, %29
  %32 = phi ptr [ %66, %65 ], [ %30, %29 ]
  %33 = phi i32 [ %67, %65 ], [ %27, %29 ]
  %34 = phi i32 [ %68, %65 ], [ 0, %29 ]
  %35 = getelementptr %struct.memblock_region, ptr %32, i32 %34
  %36 = add nuw i32 %34, 1
  %37 = getelementptr %struct.memblock_region, ptr %32, i32 %36
  %38 = load i32, ptr %35, align 4
  %39 = getelementptr %struct.memblock_region, ptr %32, i32 %34, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = load i32, ptr %37, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = getelementptr %struct.memblock_region, ptr %32, i32 %34, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.memblock_region, ptr %32, i32 %36, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %31
  %51 = icmp ugt i32 %41, %42
  br i1 %51, label %52, label %65, !prof !10

52:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #20, !srcloc !11
  unreachable

53:                                               ; preds = %44
  %54 = getelementptr %struct.memblock_region, ptr %32, i32 %36, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %40
  store i32 %56, ptr %39, align 4
  %57 = getelementptr %struct.memblock_region, ptr %37, i32 1
  %58 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %59 = sub nuw i32 -2, %34
  %60 = add i32 %59, %58
  %61 = mul i32 %60, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %37, ptr align 4 %57, i32 %61, i1 false) #20
  %62 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %64 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %65

65:                                               ; preds = %53, %50
  %66 = phi ptr [ %64, %53 ], [ %32, %50 ]
  %67 = phi i32 [ %63, %53 ], [ %33, %50 ]
  %68 = phi i32 [ %34, %53 ], [ %36, %50 ]
  %69 = add i32 %67, -1
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %31, label %71

71:                                               ; preds = %65, %26, %4
  %72 = phi i32 [ %7, %4 ], [ 0, %26 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_clear_hotplug(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_mark_mirror(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  store i1 true, ptr @system_has_some_mirror, align 1
  %3 = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_mark_nomap(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 4)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_clear_nomap(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @memblock_setclr_flag(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 4)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__next_mem_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #2 {
  %9 = load i64, ptr %0, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %1, 1
  %14 = load i1, ptr @__next_mem_range.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %8
  store i1 true, ptr @__next_mem_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1033, i32 noundef 9, ptr noundef nonnull @.str.5) #20
  br label %18

18:                                               ; preds = %17, %8
  %19 = select i1 %13, i32 -1, i32 %1
  %20 = load i32, ptr %3, align 4
  %21 = icmp ugt i32 %20, %10
  br i1 %21, label %22, label %132

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.memblock_type, ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %3, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 0)
  %26 = and i32 %2, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %2, 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %2, 8
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq ptr %4, null
  %33 = getelementptr inbounds %struct.memblock_type, ptr %4, i32 0, i32 3
  br label %34

34:                                               ; preds = %128, %22
  %35 = phi i32 [ %10, %22 ], [ %130, %128 ]
  %36 = phi i32 [ %12, %22 ], [ %129, %128 ]
  %37 = getelementptr %struct.memblock_region, ptr %24, i32 %35
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.memblock_region, ptr %24, i32 %35, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  br i1 %25, label %42, label %61

42:                                               ; preds = %34
  switch i32 %19, label %128 [
    i32 -1, label %43
    i32 0, label %43
  ]

43:                                               ; preds = %42, %42
  br i1 %27, label %49, label %44

44:                                               ; preds = %43
  %45 = getelementptr %struct.memblock_region, ptr %24, i32 %35, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %128, label %49

49:                                               ; preds = %44, %43
  br i1 %29, label %50, label %55

50:                                               ; preds = %49
  %51 = getelementptr %struct.memblock_region, ptr %24, i32 %35, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %128

55:                                               ; preds = %50, %49
  br i1 %31, label %56, label %61

56:                                               ; preds = %55
  %57 = getelementptr %struct.memblock_region, ptr %24, i32 %35, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %56, %55, %34
  br i1 %32, label %68, label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %4, align 4
  %64 = add i32 %63, 1
  %65 = icmp ult i32 %36, %64
  br i1 %65, label %66, label %128

66:                                               ; preds = %62
  %67 = load ptr, ptr %33, align 4
  br label %83

68:                                               ; preds = %61
  %69 = icmp eq ptr %5, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  store i32 %38, ptr %5, align 4
  br label %71

71:                                               ; preds = %70, %68
  %72 = icmp eq ptr %6, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  store i32 %41, ptr %6, align 4
  br label %74

74:                                               ; preds = %73, %71
  %75 = icmp eq ptr %7, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  store i32 0, ptr %7, align 4
  br label %77

77:                                               ; preds = %76, %74
  %78 = add nuw i32 %35, 1
  %79 = zext i32 %78 to i64
  %80 = zext i32 %36 to i64
  %81 = shl nuw i64 %80, 32
  %82 = or i64 %81, %79
  br label %132

83:                                               ; preds = %125, %66
  %84 = phi i32 [ %36, %66 ], [ %126, %125 ]
  %85 = getelementptr %struct.memblock_region, ptr %67, i32 %84
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr %struct.memblock_region, ptr %85, i32 -1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.memblock_region, ptr %88, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %89
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i32 [ %92, %87 ], [ 0, %83 ]
  %95 = icmp ult i32 %84, %63
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, ptr %85, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %97, %96 ], [ -1, %93 ]
  %100 = icmp ult i32 %94, %41
  br i1 %100, label %101, label %128

101:                                              ; preds = %98
  %102 = icmp ult i32 %38, %99
  br i1 %102, label %103, label %125

103:                                              ; preds = %101
  %104 = icmp eq ptr %5, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = tail call i32 @llvm.umax.i32(i32 %38, i32 %94)
  store i32 %106, ptr %5, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = icmp eq ptr %6, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = tail call i32 @llvm.umin.i32(i32 %41, i32 %99)
  store i32 %110, ptr %6, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = icmp eq ptr %7, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %111
  store i32 0, ptr %7, align 4
  br label %114

114:                                              ; preds = %113, %111
  %115 = icmp ugt i32 %41, %99
  %116 = zext i1 %115 to i32
  %117 = add nuw i32 %84, %116
  %118 = xor i1 %115, true
  %119 = zext i1 %118 to i32
  %120 = add i32 %35, %119
  %121 = zext i32 %120 to i64
  %122 = zext i32 %117 to i64
  %123 = shl nuw i64 %122, 32
  %124 = or i64 %123, %121
  br label %132

125:                                              ; preds = %101
  %126 = add i32 %84, 1
  %127 = icmp eq i32 %84, %63
  br i1 %127, label %128, label %83

128:                                              ; preds = %125, %98, %62, %56, %50, %44, %42
  %129 = phi i32 [ %36, %42 ], [ %36, %44 ], [ %36, %50 ], [ %36, %56 ], [ %36, %62 ], [ %64, %125 ], [ %84, %98 ]
  %130 = add nuw i32 %35, 1
  %131 = icmp eq i32 %130, %20
  br i1 %131, label %132, label %34

132:                                              ; preds = %128, %114, %77, %18
  %133 = phi i64 [ %82, %77 ], [ %124, %114 ], [ -1, %18 ], [ -1, %128 ]
  store i64 %133, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__next_mem_range_rev(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #2 {
  %9 = load i64, ptr %0, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %1, 1
  %14 = load i1, ptr @__next_mem_range_rev.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19, !prof !10

17:                                               ; preds = %8
  store i1 true, ptr @__next_mem_range_rev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1129, i32 noundef 9, ptr noundef nonnull @.str.5) #20
  %18 = load i64, ptr %0, align 8
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i64 [ %18, %17 ], [ %9, %8 ]
  %21 = select i1 %13, i32 -1, i32 %1
  %22 = icmp eq i64 %20, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, -1
  %26 = icmp eq ptr %4, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %4, align 4
  br label %29

29:                                               ; preds = %27, %23, %19
  %30 = phi i32 [ %28, %27 ], [ %12, %19 ], [ 0, %23 ]
  %31 = phi i32 [ %25, %27 ], [ %10, %19 ], [ %25, %23 ]
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %142

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.memblock_type, ptr %3, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %3, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 0)
  %37 = and i32 %2, 2
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %2, 4
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %2, 8
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq ptr %4, null
  %44 = getelementptr inbounds %struct.memblock_type, ptr %4, i32 0, i32 3
  br label %45

45:                                               ; preds = %138, %33
  %46 = phi i32 [ %31, %33 ], [ %140, %138 ]
  %47 = phi i32 [ %30, %33 ], [ %139, %138 ]
  %48 = getelementptr %struct.memblock_region, ptr %35, i32 %46
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.memblock_region, ptr %35, i32 %46, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  br i1 %36, label %53, label %72

53:                                               ; preds = %45
  switch i32 %21, label %138 [
    i32 -1, label %54
    i32 0, label %54
  ]

54:                                               ; preds = %53, %53
  br i1 %38, label %60, label %55

55:                                               ; preds = %54
  %56 = getelementptr %struct.memblock_region, ptr %35, i32 %46, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %138, label %60

60:                                               ; preds = %55, %54
  br i1 %40, label %61, label %66

61:                                               ; preds = %60
  %62 = getelementptr %struct.memblock_region, ptr %35, i32 %46, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %138

66:                                               ; preds = %61, %60
  br i1 %42, label %67, label %72

67:                                               ; preds = %66
  %68 = getelementptr %struct.memblock_region, ptr %35, i32 %46, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %138

72:                                               ; preds = %67, %66, %45
  br i1 %43, label %78, label %73

73:                                               ; preds = %72
  %74 = icmp sgt i32 %47, -1
  br i1 %74, label %75, label %138

75:                                               ; preds = %73
  %76 = load ptr, ptr %44, align 4
  %77 = load i32, ptr %4, align 4
  br label %93

78:                                               ; preds = %72
  %79 = icmp eq ptr %5, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  store i32 %49, ptr %5, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = icmp eq ptr %6, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  store i32 %52, ptr %6, align 4
  br label %84

84:                                               ; preds = %83, %81
  %85 = icmp eq ptr %7, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  store i32 0, ptr %7, align 4
  br label %87

87:                                               ; preds = %86, %84
  %88 = add nsw i32 %46, -1
  %89 = zext i32 %88 to i64
  %90 = zext i32 %47 to i64
  %91 = shl nuw i64 %90, 32
  %92 = or i64 %91, %89
  br label %142

93:                                               ; preds = %135, %75
  %94 = phi i32 [ %47, %75 ], [ %136, %135 ]
  %95 = getelementptr %struct.memblock_region, ptr %76, i32 %94
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr %struct.memblock_region, ptr %95, i32 -1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.memblock_region, ptr %98, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %99
  br label %103

103:                                              ; preds = %97, %93
  %104 = phi i32 [ %102, %97 ], [ 0, %93 ]
  %105 = icmp ult i32 %94, %77
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, ptr %95, align 4
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i32 [ %107, %106 ], [ -1, %103 ]
  %110 = icmp ugt i32 %109, %49
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = icmp ugt i32 %52, %104
  br i1 %112, label %113, label %135

113:                                              ; preds = %111
  %114 = icmp eq ptr %5, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %113
  %116 = tail call i32 @llvm.umax.i32(i32 %49, i32 %104)
  store i32 %116, ptr %5, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = icmp eq ptr %6, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %117
  %120 = tail call i32 @llvm.umin.i32(i32 %52, i32 %109)
  store i32 %120, ptr %6, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = icmp eq ptr %7, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  store i32 0, ptr %7, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = icmp ult i32 %49, %104
  %126 = sext i1 %125 to i32
  %127 = add nsw i32 %94, %126
  %128 = xor i1 %125, true
  %129 = sext i1 %128 to i32
  %130 = add i32 %46, %129
  %131 = zext i32 %130 to i64
  %132 = zext i32 %127 to i64
  %133 = shl nuw i64 %132, 32
  %134 = or i64 %133, %131
  br label %142

135:                                              ; preds = %111
  %136 = add nsw i32 %94, -1
  %137 = icmp sgt i32 %94, 0
  br i1 %137, label %93, label %138

138:                                              ; preds = %135, %108, %73, %67, %61, %55, %53
  %139 = phi i32 [ %47, %53 ], [ %47, %55 ], [ %47, %61 ], [ %47, %67 ], [ %47, %73 ], [ -1, %135 ], [ %94, %108 ]
  %140 = add nsw i32 %46, -1
  %141 = icmp sgt i32 %46, 0
  br i1 %141, label %45, label %142

142:                                              ; preds = %138, %124, %87, %29
  %143 = phi i64 [ %92, %87 ], [ %134, %124 ], [ -1, %29 ], [ -1, %138 ]
  store i64 %143, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__next_mem_pfn_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #6 {
  %6 = icmp ult i32 %1, 2
  %7 = load i32, ptr %0, align 4
  br label %8

8:                                                ; preds = %13, %5
  %9 = phi i32 [ %10, %13 ], [ %7, %5 ]
  %10 = add i32 %9, 1
  store i32 %10, ptr %0, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %15 = getelementptr %struct.memblock_region, ptr %14, i32 %10
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 4095
  %18 = lshr i32 %17, 12
  %19 = getelementptr %struct.memblock_region, ptr %14, i32 %10, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %16
  %22 = lshr i32 %21, 12
  %23 = icmp ult i32 %18, %22
  %24 = and i1 %6, %23
  br i1 %24, label %26, label %8

25:                                               ; preds = %8
  store i32 -1, ptr %0, align 4
  br label %39

26:                                               ; preds = %13
  %27 = icmp eq ptr %2, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  store i32 %18, ptr %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = icmp eq ptr %3, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %15, align 4
  %33 = load i32, ptr %19, align 4
  %34 = add i32 %33, %32
  %35 = lshr i32 %34, 12
  store i32 %35, ptr %3, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = icmp eq ptr %4, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  store i32 0, ptr %4, align 4
  br label %39

39:                                               ; preds = %38, %36, %25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_set_node(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @memblock_alloc_range_nid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #8 section ".init.text" {
  %7 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  %8 = load i1, ptr @system_has_some_mirror, align 1
  %9 = select i1 %8, i32 2, i32 0
  %10 = icmp eq i32 %4, 1
  %11 = load i1, ptr @memblock_alloc_range_nid.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %6
  store i1 true, ptr @memblock_alloc_range_nid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1363, i32 noundef 9, ptr noundef nonnull @.str.5) #20
  br label %15

15:                                               ; preds = %14, %6
  %16 = select i1 %10, i32 -1, i32 %4
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @dump_stack() #21
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %1, %15 ], [ 64, %18 ]
  %21 = icmp eq i32 %16, -1
  %22 = or i1 %21, %5
  br label %23

23:                                               ; preds = %43, %19
  %24 = phi i32 [ %0, %19 ], [ %45, %43 ]
  %25 = phi i32 [ %9, %19 ], [ 0, %43 ]
  %26 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %24, i32 noundef %20, i32 noundef %2, i32 noundef %3, i32 noundef %16, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %7, align 4
  %30 = call i32 @memblock_reserve(i32 noundef %26, i32 noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %28, %23
  br i1 %22, label %41, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %7, align 4
  %35 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %34, i32 noundef %20, i32 noundef %2, i32 noundef %3, i32 noundef -1, i32 noundef %25)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %7, align 4
  %39 = call i32 @memblock_reserve(i32 noundef %35, i32 noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %33, %32
  %42 = icmp eq i32 %25, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #21
  %45 = load i32, ptr %7, align 4
  br label %23

46:                                               ; preds = %41, %37, %28
  %47 = phi i32 [ 0, %41 ], [ %35, %37 ], [ %26, %28 ]
  ret i32 %47
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memblock_find_in_range_node(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = icmp ult i32 %3, 2
  %14 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  %15 = select i1 %13, i32 %14, i32 %3
  %16 = tail call i32 @llvm.umax.i32(i32 %2, i32 4096)
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %15)
  %18 = load i8, ptr @memblock, align 4, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  store i64 0, ptr %12, align 8
  call void @__next_mem_range(ptr noundef nonnull %12, i32 noundef %4, i32 noundef %5, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null) #20
  %21 = load i64, ptr %12, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = add i32 %1, -1
  br label %25

25:                                               ; preds = %39, %23
  %26 = load i32, ptr %10, align 4
  %27 = call i32 @llvm.umax.i32(i32 %26, i32 %16) #20
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 %17) #20
  store i32 %28, ptr %10, align 4
  %29 = load i32, ptr %11, align 4
  %30 = call i32 @llvm.umax.i32(i32 %29, i32 %16) #20
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 %17) #20
  store i32 %31, ptr %11, align 4
  %32 = add i32 %28, -1
  %33 = or i32 %32, %24
  %34 = add i32 %33, 1
  %35 = icmp ule i32 %31, %34
  %36 = sub i32 %31, %34
  %37 = icmp ult i32 %36, %0
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  call void @__next_mem_range(ptr noundef nonnull %12, i32 noundef %4, i32 noundef %5, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null) #20
  %40 = load i64, ptr %12, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %25

42:                                               ; preds = %39, %25, %20
  %43 = phi i32 [ 0, %20 ], [ %34, %25 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  br label %66

44:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  store i64 -1, ptr %9, align 8
  call void @__next_mem_range_rev(ptr noundef nonnull %9, i32 noundef %4, i32 noundef %5, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #20
  %45 = load i64, ptr %9, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %64, label %47

47:                                               ; preds = %44
  %48 = sub i32 0, %1
  br label %49

49:                                               ; preds = %61, %47
  %50 = load i32, ptr %7, align 4
  %51 = call i32 @llvm.umax.i32(i32 %50, i32 %16) #20
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 %17) #20
  store i32 %52, ptr %7, align 4
  %53 = load i32, ptr %8, align 4
  %54 = call i32 @llvm.umax.i32(i32 %53, i32 %16) #20
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 %17) #20
  store i32 %55, ptr %8, align 4
  %56 = icmp ult i32 %55, %0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = sub i32 %55, %0
  %59 = and i32 %58, %48
  %60 = icmp ult i32 %59, %52
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %49
  call void @__next_mem_range_rev(ptr noundef nonnull %9, i32 noundef %4, i32 noundef %5, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #20
  %62 = load i64, ptr %9, align 8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %64, label %49

64:                                               ; preds = %61, %57, %44
  %65 = phi i32 [ 0, %44 ], [ %59, %57 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  br label %66

66:                                               ; preds = %64, %42
  %67 = phi i32 [ %43, %42 ], [ %65, %64 ]
  ret i32 %67
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @memblock_phys_alloc_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 section ".init.text" {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %2, ptr %5, align 4
  store i32 %3, ptr %6, align 4
  %7 = load i1, ptr @memblock_debug, align 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = zext i32 %0 to i64
  %10 = zext i32 %1 to i64
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.memblock_phys_alloc_range, i64 noundef %9, i64 noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %11) #21
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %6, align 4
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i32 [ %3, %4 ], [ %14, %8 ]
  %17 = phi i32 [ %2, %4 ], [ %13, %8 ]
  %18 = call i32 @memblock_alloc_range_nid(i32 noundef %0, i32 noundef %1, i32 noundef %17, i32 noundef %16, i32 noundef -1, i1 noundef zeroext false) #23
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @memblock_phys_alloc_try_nid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 section ".init.text" {
  %4 = tail call i32 @memblock_alloc_range_nid(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %2, i1 noundef zeroext false) #23
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @memblock_alloc_exact_nid_raw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 section ".init.text" {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = load i1, ptr @memblock_debug, align 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = zext i32 %0 to i64
  %11 = zext i32 %1 to i64
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.memblock_alloc_exact_nid_raw, i64 noundef %10, i64 noundef %11, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %12) #21
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %7, align 4
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ %3, %5 ], [ %15, %9 ]
  %18 = phi i32 [ %2, %5 ], [ %14, %9 ]
  %19 = call fastcc ptr @memblock_alloc_internal(i32 noundef %0, i32 noundef %1, i32 noundef %18, i32 noundef %17, i32 noundef %4, i1 noundef zeroext true) #23
  ret ptr %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @memblock_alloc_internal(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #8 section ".init.text" {
  %7 = tail call zeroext i1 @slab_is_available() #20
  %8 = load i1, ptr @memblock_alloc_internal.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %6
  store i1 true, ptr @memblock_alloc_internal.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1487, i32 noundef 9, ptr noundef null) #20
  br label %12

12:                                               ; preds = %11, %6
  br i1 %7, label %13, label %15

13:                                               ; preds = %12
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %0, i32 noundef 2304) #24
  br label %30

15:                                               ; preds = %12
  %16 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %3)
  %18 = tail call i32 @memblock_alloc_range_nid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %17, i32 noundef %4, i1 noundef zeroext %5) #23
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %2, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 @memblock_alloc_range_nid(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %17, i32 noundef %4, i1 noundef zeroext %5) #23
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i32 [ %23, %22 ], [ %18, %15 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %25, i32 -2130706432, i32 8454144) #22, !srcloc !15
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %27, %24, %13
  %31 = phi ptr [ %29, %27 ], [ null, %24 ], [ %14, %13 ]
  ret ptr %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @memblock_alloc_try_nid_raw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 section ".init.text" {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = load i1, ptr @memblock_debug, align 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = zext i32 %0 to i64
  %11 = zext i32 %1 to i64
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.memblock_alloc_try_nid_raw, i64 noundef %10, i64 noundef %11, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %12) #21
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %7, align 4
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ %3, %5 ], [ %15, %9 ]
  %18 = phi i32 [ %2, %5 ], [ %14, %9 ]
  %19 = call fastcc ptr @memblock_alloc_internal(i32 noundef %0, i32 noundef %1, i32 noundef %18, i32 noundef %17, i32 noundef %4, i1 noundef zeroext false) #23
  ret ptr %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @memblock_alloc_try_nid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 section ".init.text" {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = load i1, ptr @memblock_debug, align 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = zext i32 %0 to i64
  %11 = zext i32 %1 to i64
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.memblock_alloc_try_nid, i64 noundef %10, i64 noundef %11, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %12) #21
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %7, align 4
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ %15, %9 ], [ %3, %5 ]
  %18 = phi i32 [ %14, %9 ], [ %2, %5 ]
  %19 = call fastcc ptr @memblock_alloc_internal(i32 noundef %0, i32 noundef %1, i32 noundef %18, i32 noundef %17, i32 noundef %4, i1 noundef zeroext false) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %19, i8 0, i32 %0, i1 false)
  br label %22

22:                                               ; preds = %21, %16
  ret ptr %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memblock_free_late(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = add i32 %0, -1
  %6 = add i32 %5, %1
  store i32 %6, ptr %4, align 4
  %7 = load i1, ptr @memblock_debug, align 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_free_late, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %9) #21
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %0, %2 ]
  %14 = add i32 %13, 4095
  %15 = lshr i32 %14, 12
  %16 = add i32 %13, %1
  %17 = lshr i32 %16, 12
  store i32 %17, ptr %4, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %19, %12
  %20 = phi i32 [ %26, %19 ], [ %15, %12 ]
  %21 = load ptr, ptr @mem_map, align 4
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %23 = sub i32 %20, %22
  %24 = getelementptr %struct.page, ptr %21, i32 %23
  call void @memblock_free_pages(ptr noundef %24, i32 noundef %20, i32 noundef 0) #20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @_totalram_pages) #20, !srcloc !16
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalram_pages, ptr nonnull @_totalram_pages, i32 1, ptr nonnull elementtype(i32) @_totalram_pages) #20, !srcloc !17
  %26 = add nuw i32 %20, 1
  %27 = load i32, ptr %4, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %19, label %29

29:                                               ; preds = %19, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_phys_mem_size() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_reserved_size() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #10 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %2 = add i32 %1, -1
  %3 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %4 = getelementptr %struct.memblock_region, ptr %3, i32 %2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.memblock_region, ptr %3, i32 %2, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memblock_enforce_memory_limit(i32 noundef %0) local_unnamed_addr #8 section ".init.text" {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %6 = getelementptr %struct.memblock_region, ptr %4, i32 %5
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %16, %14 ], [ %4, %3 ]
  %10 = phi i32 [ %15, %14 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.memblock_region, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = sub i32 %10, %12
  %16 = getelementptr %struct.memblock_region, ptr %9, i32 1
  %17 = icmp ult ptr %16, %6
  br i1 %17, label %8, label %25

18:                                               ; preds = %8
  %19 = load i32, ptr %9, align 4
  %20 = add i32 %19, %10
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %20, i32 noundef -1)
  %24 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %20, i32 noundef -1)
  br label %25

25:                                               ; preds = %22, %18, %14, %3, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memblock_cap_memory_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !12
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.memblock_cap_memory_range) #21
  br label %57

11:                                               ; preds = %6
  %12 = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %11
  %15 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %16 = load i32, ptr %4, align 4
  %17 = add i32 %15, -1
  %18 = icmp slt i32 %17, %16
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %21

21:                                               ; preds = %30, %19
  %22 = phi ptr [ %31, %30 ], [ %20, %19 ]
  %23 = phi i32 [ %32, %30 ], [ %17, %19 ]
  %24 = getelementptr %struct.memblock_region, ptr %22, i32 %23, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  tail call fastcc void @memblock_remove_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %23)
  %29 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %22, %21 ], [ %29, %28 ]
  %32 = add i32 %23, -1
  %33 = icmp slt i32 %32, %16
  br i1 %33, label %34, label %21

34:                                               ; preds = %30, %14
  %35 = load i32, ptr %3, align 4
  %36 = add i32 %35, -1
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %40

40:                                               ; preds = %49, %38
  %41 = phi ptr [ %50, %49 ], [ %39, %38 ]
  %42 = phi i32 [ %51, %49 ], [ %36, %38 ]
  %43 = getelementptr %struct.memblock_region, ptr %41, i32 %42, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  tail call fastcc void @memblock_remove_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %42)
  %48 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi ptr [ %41, %40 ], [ %48, %47 ]
  %51 = add i32 %42, -1
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %40, label %53

53:                                               ; preds = %49, %34
  %54 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef 0, i32 noundef %0)
  %55 = add i32 %1, %0
  %56 = tail call fastcc i32 @memblock_remove_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %55, i32 noundef -1)
  br label %57

57:                                               ; preds = %53, %11, %9, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memblock_isolate_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = xor i32 %1, -1
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 %6) #20
  %8 = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 %1)
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %102, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %17, %10
  %13 = load i32, ptr %0, align 4
  %14 = add i32 %13, 2
  %15 = load i32, ptr %11, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @memblock_double_array(ptr noundef %0, i32 noundef %1, i32 noundef %7)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %102, label %12

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %102, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 2
  br label %26

26:                                               ; preds = %95, %23
  %27 = phi i32 [ %13, %23 ], [ %96, %95 ]
  %28 = phi ptr [ %24, %23 ], [ %100, %95 ]
  %29 = phi i32 [ 0, %23 ], [ %98, %95 ]
  %30 = load i32, ptr %28, align 4
  %31 = getelementptr inbounds %struct.memblock_region, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = icmp ugt i32 %8, %30
  br i1 %34, label %35, label %102

35:                                               ; preds = %26
  %36 = icmp ugt i32 %33, %1
  br i1 %36, label %37, label %95

37:                                               ; preds = %35
  %38 = icmp ult i32 %30, %1
  br i1 %38, label %39, label %62

39:                                               ; preds = %37
  store i32 %1, ptr %28, align 4
  %40 = sub i32 %1, %30
  %41 = sub i32 %32, %40
  store i32 %41, ptr %31, align 4
  %42 = load i32, ptr %25, align 4
  %43 = sub i32 %42, %40
  store i32 %43, ptr %25, align 4
  %44 = load i32, ptr %0, align 4
  %45 = load i32, ptr %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %48, label %47, !prof !8

47:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #20, !srcloc !9
  unreachable

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.memblock_region, ptr %28, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr %struct.memblock_region, ptr %51, i32 %29
  %53 = getelementptr %struct.memblock_region, ptr %52, i32 1
  %54 = sub i32 %44, %29
  %55 = mul i32 %54, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %53, ptr align 4 %52, i32 %55, i1 false) #20
  store i32 %30, ptr %52, align 4
  %56 = getelementptr %struct.memblock_region, ptr %51, i32 %29, i32 1
  store i32 %40, ptr %56, align 4
  %57 = getelementptr %struct.memblock_region, ptr %51, i32 %29, i32 2
  store i32 %50, ptr %57, align 4
  %58 = load i32, ptr %0, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %0, align 4
  %60 = load i32, ptr %25, align 4
  %61 = add i32 %60, %40
  store i32 %61, ptr %25, align 4
  br label %95

62:                                               ; preds = %37
  %63 = icmp ugt i32 %33, %8
  br i1 %63, label %64, label %88

64:                                               ; preds = %62
  store i32 %8, ptr %28, align 4
  %65 = sub i32 %8, %30
  %66 = sub i32 %32, %65
  store i32 %66, ptr %31, align 4
  %67 = load i32, ptr %25, align 4
  %68 = sub i32 %67, %65
  store i32 %68, ptr %25, align 4
  %69 = load i32, ptr %0, align 4
  %70 = load i32, ptr %11, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %73, label %72, !prof !8

72:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #20, !srcloc !9
  unreachable

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.memblock_region, ptr %28, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %29, -1
  %77 = load ptr, ptr %21, align 4
  %78 = getelementptr %struct.memblock_region, ptr %77, i32 %29
  %79 = getelementptr %struct.memblock_region, ptr %78, i32 1
  %80 = sub i32 %69, %29
  %81 = mul i32 %80, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %79, ptr align 4 %78, i32 %81, i1 false) #20
  store i32 %30, ptr %78, align 4
  %82 = getelementptr %struct.memblock_region, ptr %77, i32 %29, i32 1
  store i32 %65, ptr %82, align 4
  %83 = getelementptr %struct.memblock_region, ptr %77, i32 %29, i32 2
  store i32 %75, ptr %83, align 4
  %84 = load i32, ptr %0, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %0, align 4
  %86 = load i32, ptr %25, align 4
  %87 = add i32 %86, %65
  store i32 %87, ptr %25, align 4
  br label %95

88:                                               ; preds = %62
  %89 = load i32, ptr %4, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 %29, ptr %3, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = add nuw i32 %29, 1
  store i32 %93, ptr %4, align 4
  %94 = load i32, ptr %0, align 4
  br label %95

95:                                               ; preds = %92, %73, %48, %35
  %96 = phi i32 [ %94, %92 ], [ %85, %73 ], [ %59, %48 ], [ %27, %35 ]
  %97 = phi i32 [ %29, %92 ], [ %76, %73 ], [ %29, %48 ], [ %29, %35 ]
  %98 = add i32 %97, 1
  %99 = load ptr, ptr %21, align 4
  %100 = getelementptr %struct.memblock_region, ptr %99, i32 %98
  %101 = icmp ult i32 %98, %96
  br i1 %101, label %26, label %102

102:                                              ; preds = %95, %26, %20, %17, %5
  %103 = phi i32 [ 0, %5 ], [ 0, %20 ], [ 0, %26 ], [ 0, %95 ], [ -12, %17 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @memblock_remove_region(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.memblock_region, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %8, %6
  store i32 %9, ptr %7, align 4
  %10 = getelementptr %struct.memblock_region, ptr %4, i32 %1
  %11 = add i32 %1, 1
  %12 = getelementptr %struct.memblock_region, ptr %4, i32 %11
  %13 = load i32, ptr %0, align 4
  %14 = sub i32 %13, %11
  %15 = mul i32 %14, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %10, ptr align 4 %12, i32 %15, i1 false)
  %16 = load i32, ptr %0, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %0, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #20
  br label %23

23:                                               ; preds = %22, %19
  store i32 1, ptr %0, align 4
  %24 = load ptr, ptr %3, align 4
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.memblock_region, ptr %25, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.memblock_region, ptr %27, i32 0, i32 2
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memblock_mem_limit_remove_map(i32 noundef %0) local_unnamed_addr #8 section ".init.text" {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %6 = getelementptr %struct.memblock_region, ptr %4, i32 %5
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %16, %14 ], [ %4, %3 ]
  %10 = phi i32 [ %15, %14 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.memblock_region, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = sub i32 %10, %12
  %16 = getelementptr %struct.memblock_region, ptr %9, i32 1
  %17 = icmp ult ptr %16, %6
  br i1 %17, label %8, label %23

18:                                               ; preds = %8
  %19 = load i32, ptr %9, align 4
  %20 = add i32 %19, %10
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @memblock_cap_memory_range(i32 noundef 0, i32 noundef %20) #23
  br label %23

23:                                               ; preds = %22, %18, %14, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_reserved(i32 noundef %0) local_unnamed_addr #11 {
  %2 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %6 = phi i32 [ %2, %1 ], [ %21, %19 ]
  %7 = add i32 %6, %5
  %8 = lshr i32 %7, 1
  %9 = getelementptr %struct.memblock_region, ptr %3, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.memblock_region, ptr %3, i32 %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %10
  %16 = icmp ugt i32 %15, %0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %8, 1
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi i32 [ %5, %4 ], [ %18, %17 ]
  %21 = phi i32 [ %8, %4 ], [ %6, %17 ]
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %19, %12
  %24 = phi i32 [ -1, %19 ], [ %8, %12 ]
  %25 = icmp ne i32 %24, -1
  ret i1 %25
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_memory(i32 noundef %0) local_unnamed_addr #11 {
  %2 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %6 = phi i32 [ %2, %1 ], [ %21, %19 ]
  %7 = add i32 %6, %5
  %8 = lshr i32 %7, 1
  %9 = getelementptr %struct.memblock_region, ptr %3, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.memblock_region, ptr %3, i32 %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %10
  %16 = icmp ugt i32 %15, %0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %8, 1
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi i32 [ %5, %4 ], [ %18, %17 ]
  %21 = phi i32 [ %8, %4 ], [ %6, %17 ]
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %19, %12
  %24 = phi i32 [ -1, %19 ], [ %8, %12 ]
  %25 = icmp ne i32 %24, -1
  ret i1 %25
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_map_memory(i32 noundef %0) local_unnamed_addr #11 {
  %2 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %6 = phi i32 [ %2, %1 ], [ %21, %19 ]
  %7 = add i32 %6, %5
  %8 = lshr i32 %7, 1
  %9 = getelementptr %struct.memblock_region, ptr %3, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.memblock_region, ptr %3, i32 %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %10
  %16 = icmp ugt i32 %15, %0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %8, 1
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi i32 [ %5, %4 ], [ %18, %17 ]
  %21 = phi i32 [ %8, %4 ], [ %6, %17 ]
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %28

23:                                               ; preds = %12
  %24 = getelementptr %struct.memblock_region, ptr %3, i32 %8, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ %27, %23 ], [ false, %19 ]
  ret i1 %29
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memblock_search_pfn_nid(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = shl i32 %0, 12
  %5 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %7

7:                                                ; preds = %22, %3
  %8 = phi i32 [ 0, %3 ], [ %23, %22 ]
  %9 = phi i32 [ %5, %3 ], [ %24, %22 ]
  %10 = add i32 %9, %8
  %11 = lshr i32 %10, 1
  %12 = getelementptr %struct.memblock_region, ptr %6, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %4
  br i1 %14, label %22, label %15

15:                                               ; preds = %7
  %16 = getelementptr %struct.memblock_region, ptr %6, i32 %11, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %13
  %19 = icmp ugt i32 %18, %4
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %11, 1
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi i32 [ %8, %7 ], [ %21, %20 ]
  %24 = phi i32 [ %11, %7 ], [ %9, %20 ]
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %7, label %35

26:                                               ; preds = %15
  %27 = lshr i32 %13, 12
  store i32 %27, ptr %1, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %29 = getelementptr %struct.memblock_region, ptr %28, i32 %11
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.memblock_region, ptr %28, i32 %11, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = lshr i32 %33, 12
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %26, %22
  %36 = phi i32 [ 0, %26 ], [ -1, %22 ]
  ret i32 %36
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_region_memory(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %5

5:                                                ; preds = %20, %2
  %6 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %7 = phi i32 [ %3, %2 ], [ %22, %20 ]
  %8 = add i32 %7, %6
  %9 = lshr i32 %8, 1
  %10 = getelementptr %struct.memblock_region, ptr %4, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %0
  br i1 %12, label %20, label %13

13:                                               ; preds = %5
  %14 = getelementptr %struct.memblock_region, ptr %4, i32 %9, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %11
  %17 = icmp ugt i32 %16, %0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = add nuw i32 %9, 1
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi i32 [ %6, %5 ], [ %19, %18 ]
  %22 = phi i32 [ %9, %5 ], [ %7, %18 ]
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %5, label %27

24:                                               ; preds = %13
  %25 = tail call i32 @llvm.uadd.sat.i32(i32 %1, i32 %0)
  %26 = icmp uge i32 %16, %25
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ %26, %24 ], [ false, %20 ]
  ret i1 %28
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %7 = tail call i32 @llvm.uadd.sat.i32(i32 %1, i32 %0) #20
  %8 = load i32, ptr %6, align 4
  %9 = getelementptr %struct.memblock_region, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = icmp ule i32 %11, %0
  %13 = icmp ule i32 %7, %8
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %30

15:                                               ; preds = %19, %5
  %16 = phi i32 [ %17, %19 ], [ 0, %5 ]
  %17 = add nuw i32 %16, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.memblock_region, ptr %6, i32 %17
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.memblock_region, ptr %6, i32 %17, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = icmp ule i32 %24, %0
  %26 = icmp ule i32 %7, %21
  %27 = or i1 %26, %25
  br i1 %27, label %15, label %28

28:                                               ; preds = %19, %15
  %29 = icmp ult i32 %17, %3
  br label %30

30:                                               ; preds = %28, %5, %2
  %31 = phi i1 [ false, %2 ], [ true, %5 ], [ %29, %28 ]
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @memblock_trim_memory(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %4 = getelementptr %struct.memblock_region, ptr %2, i32 %3
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %6, label %64

6:                                                ; preds = %1
  %7 = add i32 %0, -1
  %8 = sub i32 0, %0
  br label %9

9:                                                ; preds = %57, %6
  %10 = phi i32 [ %3, %6 ], [ %61, %57 ]
  %11 = phi ptr [ %2, %6 ], [ %60, %57 ]
  %12 = phi ptr [ %2, %6 ], [ %59, %57 ]
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.memblock_region, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = add i32 %13, -1
  %18 = or i32 %17, %7
  %19 = add i32 %18, 1
  %20 = and i32 %16, %8
  %21 = icmp eq i32 %19, %13
  %22 = icmp eq i32 %20, %16
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %57, label %24

24:                                               ; preds = %9
  %25 = icmp ugt i32 %20, %19
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  store i32 %19, ptr %12, align 4
  %27 = sub i32 %20, %19
  store i32 %27, ptr %14, align 4
  br label %57

28:                                               ; preds = %24
  %29 = ptrtoint ptr %12 to i32
  %30 = ptrtoint ptr %11 to i32
  %31 = sub i32 %29, %30
  %32 = sdiv exact i32 %31, 12
  %33 = getelementptr %struct.memblock_region, ptr %11, i32 %32, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  %36 = sub i32 %35, %34
  store i32 %36, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  %37 = getelementptr %struct.memblock_region, ptr %11, i32 %32
  %38 = add nsw i32 %32, 1
  %39 = getelementptr %struct.memblock_region, ptr %11, i32 %38
  %40 = sub i32 %10, %38
  %41 = mul i32 %40, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %37, ptr align 4 %39, i32 %41, i1 false) #20
  %42 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %43 = add i32 %42, -1
  store i32 %43, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %28
  %46 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !8

48:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #20
  br label %49

49:                                               ; preds = %48, %45
  store i32 1, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %50 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  store i32 0, ptr %50, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %52 = getelementptr inbounds %struct.memblock_region, ptr %51, i32 0, i32 1
  store i32 0, ptr %52, align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %54 = getelementptr inbounds %struct.memblock_region, ptr %53, i32 0, i32 2
  store i32 0, ptr %54, align 4
  br label %55

55:                                               ; preds = %49, %28
  %56 = getelementptr %struct.memblock_region, ptr %12, i32 -1
  br label %57

57:                                               ; preds = %55, %26, %9
  %58 = phi ptr [ %12, %26 ], [ %56, %55 ], [ %12, %9 ]
  %59 = getelementptr %struct.memblock_region, ptr %58, i32 1
  %60 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %61 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %62 = getelementptr %struct.memblock_region, ptr %60, i32 %61
  %63 = icmp ult ptr %59, %62
  br i1 %63, label %9, label %64

64:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @memblock_set_current_limit(i32 noundef %0) local_unnamed_addr #12 {
  store i32 %0, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @memblock_get_current_limit() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @memblock_dump_all() local_unnamed_addr #2 {
  %1 = load i1, ptr @memblock_debug, align 4
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2)) #21
  tail call fastcc void @memblock_dump(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2)) #20
  tail call fastcc void @memblock_dump(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3)) #20
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @memblock_allow_resize() local_unnamed_addr #13 section ".init.text" {
  store i1 true, ptr @memblock_can_resize, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @early_memblock(ptr noundef readonly %0) #14 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @strstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.16)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i1 true, ptr @memblock_debug, align 4
  br label %7

7:                                                ; preds = %6, %3, %1
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_node_managed_pages(ptr noundef %0) local_unnamed_addr #15 {
  %2 = getelementptr %struct.zone, ptr %0, i32 4
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %4, label %9

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.zone, ptr %5, i32 0, i32 11
  store volatile i32 0, ptr %6, align 4
  %7 = getelementptr %struct.zone, ptr %5, i32 1
  %8 = icmp ult ptr %7, %2
  br i1 %8, label %4, label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @reset_all_zones_managed_pages() local_unnamed_addr #8 section ".init.text" {
  %1 = load i1, ptr @reset_managed_pages_done, align 4
  br i1 %1, label %18, label %2

2:                                                ; preds = %0
  %3 = tail call ptr @first_online_pgdat() #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = getelementptr %struct.zone, ptr %6, i32 4
  %8 = icmp ugt ptr %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %12, %9 ], [ %6, %5 ]
  %11 = getelementptr inbounds %struct.zone, ptr %10, i32 0, i32 11
  store volatile i32 0, ptr %11, align 4
  %12 = getelementptr %struct.zone, ptr %10, i32 1
  %13 = icmp ult ptr %12, %7
  br i1 %13, label %9, label %14

14:                                               ; preds = %9, %5
  %15 = tail call ptr @next_online_pgdat(ptr noundef nonnull %6) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %2
  store i1 true, ptr @reset_managed_pages_done, align 4
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memblock_free_all() local_unnamed_addr #8 section ".init.text" {
  tail call fastcc void @free_unused_memmap() #23
  tail call void @reset_all_zones_managed_pages() #23
  %1 = tail call fastcc i32 @free_low_memory_core_early() #23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @_totalram_pages) #20, !srcloc !16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalram_pages, ptr nonnull @_totalram_pages, i32 %1, ptr nonnull elementtype(i32) @_totalram_pages) #20, !srcloc !17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @free_unused_memmap() unnamed_addr #8 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %3 = add i32 %1, -1
  br label %4

4:                                                ; preds = %7, %0
  %5 = phi i32 [ %8, %7 ], [ -1, %0 ]
  %6 = icmp eq i32 %5, %3
  br i1 %6, label %55, label %7

7:                                                ; preds = %4
  %8 = add i32 %5, 1
  %9 = getelementptr %struct.memblock_region, ptr %2, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 4095
  %12 = lshr i32 %11, 12
  %13 = getelementptr %struct.memblock_region, ptr %2, i32 %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %10
  %16 = lshr i32 %15, 12
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %4

18:                                               ; preds = %7
  %19 = icmp sgt i32 %8, -1
  br i1 %19, label %20, label %55

20:                                               ; preds = %53, %18
  %21 = phi ptr [ %35, %53 ], [ %2, %18 ]
  %22 = phi i32 [ %36, %53 ], [ %1, %18 ]
  %23 = phi i32 [ %38, %53 ], [ 0, %18 ]
  %24 = phi i32 [ %41, %53 ], [ %8, %18 ]
  %25 = phi i32 [ %51, %53 ], [ %16, %18 ]
  %26 = phi i32 [ %47, %53 ], [ %12, %18 ]
  %27 = and i32 %26, 1046528
  %28 = icmp ne i32 %23, 0
  %29 = icmp ult i32 %23, %27
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  tail call fastcc void @free_memmap(i32 noundef %23, i32 noundef %27) #23
  %32 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  br label %34

34:                                               ; preds = %31, %20
  %35 = phi ptr [ %33, %31 ], [ %21, %20 ]
  %36 = phi i32 [ %32, %31 ], [ %22, %20 ]
  %37 = add nuw nsw i32 %25, 2047
  %38 = and i32 %37, 2095104
  br label %39

39:                                               ; preds = %43, %34
  %40 = phi i32 [ %41, %43 ], [ %24, %34 ]
  %41 = add i32 %40, 1
  %42 = icmp ult i32 %41, %36
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = getelementptr %struct.memblock_region, ptr %35, i32 %41
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 4095
  %47 = lshr i32 %46, 12
  %48 = getelementptr %struct.memblock_region, ptr %35, i32 %41, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %45
  %51 = lshr i32 %50, 12
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %39

53:                                               ; preds = %43
  %54 = icmp sgt i32 %41, -1
  br i1 %54, label %20, label %55

55:                                               ; preds = %53, %39, %18, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @free_low_memory_core_early() unnamed_addr #8 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  store i32 0, ptr %1, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call fastcc i32 @memblock_setclr_flag(i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  tail call fastcc void @memmap_init_reserved_pages() #23
  store i64 0, ptr %3, align 8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null)
  %5 = load i64, ptr %3, align 8
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %24, label %7

7:                                                ; preds = %19, %0
  %8 = phi i32 [ %21, %19 ], [ 0, %0 ]
  %9 = load i32, ptr %1, align 4
  %10 = load i32, ptr %2, align 4
  %11 = add i32 %9, 4095
  %12 = lshr i32 %11, 12
  %13 = lshr i32 %10, 12
  %14 = load i32, ptr @max_low_pfn, align 4
  %15 = call i32 @llvm.umin.i32(i32 %13, i32 %14) #20
  %16 = icmp ugt i32 %15, %12
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  call fastcc void @__free_pages_memory(i32 noundef %12, i32 noundef %15) #21
  %18 = sub nsw i32 %15, %12
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %21 = add i32 %20, %8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null)
  %22 = load i64, ptr %3, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %7

24:                                               ; preds = %19, %0
  %25 = phi i32 [ 0, %0 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @memblock_init_debugfs() #8 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.17, ptr noundef null) #20
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef nonnull @memblock_debug_fops) #20
  %3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %1, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull @memblock_debug_fops) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memblock_double_array(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #20
  %14 = tail call zeroext i1 @slab_is_available() #20
  %15 = zext i1 %14 to i32
  %16 = load i1, ptr @memblock_can_resize, align 4
  br i1 %16, label %17, label %179

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, 12
  %21 = mul i32 %19, 24
  %22 = add i32 %20, 4095
  %23 = and i32 %22, -4096
  %24 = add i32 %21, 4095
  %25 = and i32 %24, -4096
  %26 = icmp eq ptr %0, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2)
  %27 = select i1 %26, ptr @memblock_memory_in_slab, ptr @memblock_reserved_in_slab
  br i1 %14, label %28, label %31

28:                                               ; preds = %17
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %71

31:                                               ; preds = %17
  %32 = icmp eq ptr %0, getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3)
  %33 = select i1 %32, i32 %2, i32 0
  %34 = select i1 %32, i32 %1, i32 0
  %35 = add i32 %33, %34
  %36 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11)
  store i32 %25, ptr %11, align 4
  %37 = load i1, ptr @system_has_some_mirror, align 1
  %38 = select i1 %37, i32 2, i32 0
  %39 = tail call fastcc i32 @memblock_find_in_range_node(i32 noundef %25, i32 noundef 4096, i32 noundef %35, i32 noundef %36, i32 noundef -1, i32 noundef %38) #20
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %11) #21
  %44 = load i32, ptr %11, align 4
  %45 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %44, i32 noundef 4096, i32 noundef %35, i32 noundef %36, i32 noundef -1, i32 noundef 0) #20
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi i32 [ %39, %31 ], [ %45, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11)
  store i32 %47, ptr %12, align 4
  %48 = icmp eq i32 %47, 0
  %49 = icmp ne i32 %33, 0
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 1), align 4
  %53 = call i32 @llvm.umin.i32(i32 %34, i32 %52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  store i32 %25, ptr %10, align 4
  %54 = load i1, ptr @system_has_some_mirror, align 1
  %55 = select i1 %54, i32 2, i32 0
  %56 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %25, i32 noundef 4096, i32 noundef 0, i32 noundef %53, i32 noundef -1, i32 noundef %55) #20
  %57 = icmp eq i32 %56, 0
  %58 = and i1 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #21
  %61 = load i32, ptr %10, align 4
  %62 = call fastcc i32 @memblock_find_in_range_node(i32 noundef %61, i32 noundef 4096, i32 noundef 0, i32 noundef %53, i32 noundef -1, i32 noundef 0) #20
  br label %63

63:                                               ; preds = %59, %51
  %64 = phi i32 [ %56, %51 ], [ %62, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  store i32 %64, ptr %12, align 4
  br label %65

65:                                               ; preds = %63, %46
  %66 = phi i32 [ %64, %63 ], [ %47, %46 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %66, i32 -2130706432, i32 8454144) #22, !srcloc !15
  %70 = inttoptr i32 %69 to ptr
  br label %81

71:                                               ; preds = %28
  %72 = ptrtoint ptr %29 to i32
  %73 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %72, i32 -2130706432, i32 8454144) #22, !srcloc !13
  store i32 %73, ptr %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71, %65, %28
  %76 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %18, align 4
  %79 = shl i32 %78, 1
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %77, i32 noundef %78, i32 noundef %79) #21
  br label %179

81:                                               ; preds = %71, %68
  %82 = phi ptr [ %70, %68 ], [ %29, %71 ]
  %83 = phi i32 [ %66, %68 ], [ %73, %71 ]
  %84 = add i32 %21, -1
  %85 = add i32 %84, %83
  store i32 %85, ptr %13, align 4
  %86 = load i1, ptr @memblock_debug, align 4
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %18, align 4
  %91 = shl i32 %90, 1
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %89, i32 noundef %91, ptr noundef nonnull %12, ptr noundef nonnull %13) #21
  br label %93

93:                                               ; preds = %87, %81
  %94 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %82, ptr align 4 %95, i32 %20, i1 false)
  %96 = load i32, ptr %18, align 4
  %97 = getelementptr %struct.memblock_region, ptr %82, i32 %96
  call void @llvm.memset.p0.i32(ptr align 4 %97, i8 0, i32 %20, i1 false)
  %98 = load ptr, ptr %94, align 4
  store ptr %82, ptr %94, align 4
  %99 = load i32, ptr %18, align 4
  %100 = shl i32 %99, 1
  store i32 %100, ptr %18, align 4
  %101 = load i32, ptr %27, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  call void @kfree(ptr noundef %98) #20
  br label %163

104:                                              ; preds = %93
  %105 = icmp eq ptr %98, @memblock_memory_init_regions
  %106 = icmp eq ptr %98, @memblock_reserved_init_regions
  %107 = or i1 %105, %106
  %108 = icmp eq ptr %98, null
  %109 = or i1 %108, %107
  br i1 %109, label %163, label %110

110:                                              ; preds = %104
  %111 = ptrtoint ptr %98 to i32
  %112 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %111, i32 -2130706432, i32 8454144) #22, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %112, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  %113 = add i32 %23, -1
  %114 = add i32 %113, %112
  store i32 %114, ptr %7, align 4
  %115 = load i1, ptr @memblock_debug, align 4
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = call ptr @llvm.returnaddress(i32 0) #20
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_phys_free, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %117) #21
  %119 = load i32, ptr %6, align 4
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi i32 [ %119, %116 ], [ %112, %110 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !12
  %122 = call fastcc i32 @memblock_isolate_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %121, i32 noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %120
  %125 = load i32, ptr %5, align 4
  %126 = load i32, ptr %4, align 4
  %127 = add i32 %125, -1
  %128 = icmp slt i32 %127, %126
  br i1 %128, label %162, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  br label %131

131:                                              ; preds = %158, %129
  %132 = phi i32 [ %159, %158 ], [ %130, %129 ]
  %133 = phi i32 [ %160, %158 ], [ %127, %129 ]
  %134 = phi i32 [ %133, %158 ], [ %125, %129 ]
  %135 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %136 = getelementptr %struct.memblock_region, ptr %135, i32 %133, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %139 = sub i32 %138, %137
  store i32 %139, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %140 = getelementptr %struct.memblock_region, ptr %135, i32 %133
  %141 = getelementptr %struct.memblock_region, ptr %135, i32 %134
  %142 = sub i32 %132, %134
  %143 = mul i32 %142, 12
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %140, ptr align 4 %141, i32 %143, i1 false) #20
  %144 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %145 = add i32 %144, -1
  store i32 %145, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %131
  %148 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 2), align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150, !prof !8

150:                                              ; preds = %147
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 348, i32 noundef 9, ptr noundef null) #20
  br label %151

151:                                              ; preds = %150, %147
  store i32 1, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  %152 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  store i32 0, ptr %152, align 4
  %153 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %154 = getelementptr inbounds %struct.memblock_region, ptr %153, i32 0, i32 1
  store i32 0, ptr %154, align 4
  %155 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3, i32 3), align 4
  %156 = getelementptr inbounds %struct.memblock_region, ptr %155, i32 0, i32 2
  store i32 0, ptr %156, align 4
  %157 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), align 4
  br label %158

158:                                              ; preds = %151, %131
  %159 = phi i32 [ %145, %131 ], [ %157, %151 ]
  %160 = add i32 %133, -1
  %161 = icmp slt i32 %160, %126
  br i1 %161, label %162, label %131

162:                                              ; preds = %158, %124, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %163

163:                                              ; preds = %162, %104, %103
  br i1 %14, label %178, label %164

164:                                              ; preds = %163
  %165 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 %165, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %166 = add i32 %25, -1
  %167 = add i32 %166, %165
  store i32 %167, ptr %9, align 4
  %168 = load i1, ptr @memblock_debug, align 4
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = call ptr @llvm.returnaddress(i32 0) #20
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.memblock_reserve, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %170) #21
  %172 = load i32, ptr %8, align 4
  br label %173

173:                                              ; preds = %169, %164
  %174 = phi i32 [ %165, %164 ], [ %172, %169 ]
  %175 = call fastcc i32 @memblock_add_range(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), i32 noundef %174, i32 noundef %25, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177, !prof !8

177:                                              ; preds = %173
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memblock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #20, !srcloc !18
  unreachable

178:                                              ; preds = %173, %163
  store i32 %15, ptr %27, align 4
  br label %179

179:                                              ; preds = %178, %75, %3
  %180 = phi i32 [ 0, %178 ], [ -1, %75 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  ret i32 %180
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @memblock_dump(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !12
  %6 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %7, i32 noundef %8) #21
  %10 = getelementptr inbounds %struct.memblock_type, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %0, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %10, align 4
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ %27, %15 ], [ 0, %13 ]
  %17 = phi ptr [ %29, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.memblock_region, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %4, align 4
  %21 = add i32 %18, -1
  %22 = add i32 %21, %20
  store i32 %22, ptr %3, align 4
  %23 = getelementptr inbounds %struct.memblock_region, ptr %17, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %25, i32 noundef %16, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %24) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  %27 = add nuw i32 %16, 1
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr %struct.memblock_region, ptr %28, i32 %27
  %30 = load i32, ptr %0, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %15, label %32

32:                                               ; preds = %15, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @free_memmap(i32 noundef %0, i32 noundef %1) unnamed_addr #8 section ".init.text" {
  %3 = load ptr, ptr @mem_map, align 4
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %5 = xor i32 %4, -1
  %6 = add i32 %5, %0
  %7 = getelementptr %struct.page, ptr %3, i32 %6
  %8 = getelementptr %struct.page, ptr %7, i32 1
  %9 = add i32 %5, %1
  %10 = getelementptr %struct.page, ptr %3, i32 %9
  %11 = getelementptr %struct.page, ptr %10, i32 1
  %12 = ptrtoint ptr %8 to i32
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %12, i32 -2130706432, i32 8454144) #22, !srcloc !13
  %14 = add i32 %13, 4095
  %15 = and i32 %14, -4096
  %16 = ptrtoint ptr %11 to i32
  %17 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %16, i32 -2130706432, i32 8454144) #22, !srcloc !13
  %18 = and i32 %17, -4096
  %19 = icmp ugt i32 %18, %15
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = sub i32 %18, %15
  %22 = tail call i32 @memblock_phys_free(i32 noundef %15, i32 noundef %21)
  br label %23

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @memmap_init_reserved_pages() unnamed_addr #8 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  store i32 0, ptr %1, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null)
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %0
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %2, align 4
  call void @reserve_bootmem_region(i32 noundef %7, i32 noundef %8) #20
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null)
  %9 = load i64, ptr %3, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %0
  %12 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %14 = getelementptr %struct.memblock_region, ptr %12, i32 %13
  %15 = icmp ult ptr %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %31, %11
  %17 = phi i32 [ %32, %31 ], [ %13, %11 ]
  %18 = phi ptr [ %33, %31 ], [ %12, %11 ]
  %19 = phi ptr [ %34, %31 ], [ %12, %11 ]
  %20 = getelementptr inbounds %struct.memblock_region, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %19, align 4
  store i32 %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.memblock_region, ptr %19, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  store i32 %28, ptr %2, align 4
  call void @reserve_bootmem_region(i32 noundef %25, i32 noundef %28) #20
  %29 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  br label %31

31:                                               ; preds = %24, %16
  %32 = phi i32 [ %17, %16 ], [ %30, %24 ]
  %33 = phi ptr [ %18, %16 ], [ %29, %24 ]
  %34 = getelementptr %struct.memblock_region, ptr %19, i32 1
  %35 = getelementptr %struct.memblock_region, ptr %33, i32 %32
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %16, label %37

37:                                               ; preds = %31, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reserve_bootmem_region(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__free_pages_memory(i32 noundef %0, i32 noundef %1) unnamed_addr #8 section ".init.text" {
  %3 = icmp ult i32 %0, %1
  br i1 %3, label %4, label %20

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %11, %14 ], [ %0, %2 ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #20, !range !19
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 11)
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %7, %4 ], [ %13, %8 ]
  %10 = shl nuw i32 1, %9
  %11 = add i32 %10, %5
  %12 = icmp ugt i32 %11, %1
  %13 = add i32 %9, -1
  br i1 %12, label %8, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @mem_map, align 4
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = sub i32 %5, %16
  %18 = getelementptr %struct.page, ptr %15, i32 %17
  tail call void @memblock_free_pages(ptr noundef %18, i32 noundef %5, i32 noundef %9) #20
  %19 = icmp ult i32 %11, %1
  br i1 %19, label %4, label %20

20:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @memblock_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @memblock_debug_show, ptr noundef %4) #20
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @memblock_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.memblock_type, ptr %5, i32 0, i32 3
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %19, %10 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr %struct.memblock_region, ptr %12, i32 %11
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.memblock_region, ptr %12, i32 %11, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, -1
  %18 = add i32 %17, %16
  store i32 %18, ptr %3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %11) #20
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %13, ptr noundef nonnull %3) #20
  %19 = add nuw i32 %11, 1
  %20 = load i32, ptr %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %10, label %22

22:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #19

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold }
attributes #24 = { nounwind allocsize(0) }

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
!9 = !{i64 2152695249, i64 2152695727, i64 2152695286, i64 2152695342, i64 2152695376, i64 2152695400, i64 2152695441, i64 2152695462, i64 2152695490, i64 2152695524}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152694231, i64 2152694709, i64 2152694268, i64 2152694324, i64 2152694358, i64 2152694382, i64 2152694423, i64 2152694444, i64 2152694472, i64 2152694506}
!12 = !{!"auto-init"}
!13 = !{i64 2148790011, i64 2148790034, i64 2148790066, i64 2148790098, i64 2148790136, i64 2148790166}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148790797, i64 2148790820, i64 2148790852, i64 2148790884, i64 2148790922, i64 2148790952}
!16 = !{i64 470466, i64 2147960437, i64 2147960463, i64 2147960510, i64 2147960532, i64 2147960560, i64 2147960580}
!17 = !{i64 2147972649, i64 2147972675, i64 2147972704, i64 2147972738, i64 2147972769, i64 2147972792}
!18 = !{i64 2152693185, i64 2152693663, i64 2152693222, i64 2152693278, i64 2152693312, i64 2152693336, i64 2152693377, i64 2152693398, i64 2152693426, i64 2152693460}
!19 = !{i32 0, i32 33}
