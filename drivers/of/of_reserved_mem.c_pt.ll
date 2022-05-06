; ModuleID = '/llk/IR/drivers/of/of_reserved_mem.c_pt.bc'
source_filename = "../drivers/of/of_reserved_mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_device_init_by_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_device_init_by_idx\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_device_init_by_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_device_init_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_device_init_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_device_init_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_device_release:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_device_release\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_device_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reserved_mem_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reserved_mem_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_of_reserved_mem_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rmem_assigned_device = type { ptr, ptr, %struct.list_head }
%struct.reserved_mem_ops = type { ptr, ptr }

@reserved_mem = internal global [64 x %struct.reserved_mem] zeroinitializer, align 4
@reserved_mem_count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"\013OF: reserved mem: not enough space for all defined regions.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\016OF: reserved mem: node %s compatible matching fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@of_rmem_assigned_device_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_rmem_assigned_device_mutex, i64 12), ptr getelementptr (i8, ptr @of_rmem_assigned_device_mutex, i64 12) } }, align 4
@of_rmem_assigned_device_list = internal global %struct.list_head { ptr @of_rmem_assigned_device_list, ptr @of_rmem_assigned_device_list }, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"assigned reserved memory node %s\0A\00", align 1
@__kstrtab_of_reserved_mem_device_init_by_idx = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_device_init_by_idx = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_device_init_by_idx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_device_init_by_idx to i32), ptr @__kstrtab_of_reserved_mem_device_init_by_idx, ptr @__kstrtabns_of_reserved_mem_device_init_by_idx }, section "___ksymtab_gpl+of_reserved_mem_device_init_by_idx", align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"memory-region-names\00", align 1
@__kstrtab_of_reserved_mem_device_init_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_device_init_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_device_init_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_device_init_by_name to i32), ptr @__kstrtab_of_reserved_mem_device_init_by_name, ptr @__kstrtabns_of_reserved_mem_device_init_by_name }, section "___ksymtab_gpl+of_reserved_mem_device_init_by_name", align 4
@__kstrtab_of_reserved_mem_device_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_device_release = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_device_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_device_release to i32), ptr @__kstrtab_of_reserved_mem_device_release, ptr @__kstrtabns_of_reserved_mem_device_release }, section "___ksymtab_gpl+of_reserved_mem_device_release", align 4
@__kstrtab_of_reserved_mem_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reserved_mem_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reserved_mem_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reserved_mem_lookup to i32), ptr @__kstrtab_of_reserved_mem_lookup, ptr @__kstrtabns_of_reserved_mem_lookup }, section "___ksymtab_gpl+of_reserved_mem_lookup", align 4
@__rmem_of_table_sentinel = internal constant %struct.of_device_id zeroinitializer, section "__reservedmem_of_table_end", align 4
@.str.8 = private unnamed_addr constant [81 x i8] c"\013OF: reserved mem: OVERLAP DETECTED!\0A%s (%pa--%pa) overlaps with %s (%pa--%pa)\0A\00", align 1
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"\013OF: reserved mem: invalid size property in '%s' node.\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"\013OF: reserved mem: invalid alignment property in '%s' node.\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"shared-dma-pool\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"reusable\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"alloc-ranges\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"\013OF: reserved mem: invalid alloc-ranges property in '%s', skipping node.\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"\016OF: reserved mem: failed to allocate memory for node '%s'\0A\00", align 1
@__reservedmem_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.18 = private unnamed_addr constant [59 x i8] c"\016OF: reserved mem: initialized node %s, compatible id %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_of_reserved_mem_device_init_by_idx, ptr @__ksymtab_of_reserved_mem_device_init_by_name, ptr @__ksymtab_of_reserved_mem_device_release, ptr @__ksymtab_of_reserved_mem_lookup, ptr @__rmem_of_table_sentinel], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fdt_reserved_mem_save_node(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = load i32, ptr @reserved_mem_count, align 4
  %6 = icmp eq i32 %5, 64
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5
  %11 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 1
  store i32 %0, ptr %11, align 4
  store ptr %1, ptr %10, align 4
  %12 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 4
  store i32 %2, ptr %12, align 4
  %13 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 5
  store i32 %3, ptr %13, align 4
  %14 = add i32 %5, 1
  store i32 %14, ptr @reserved_mem_count, align 4
  br label %15

15:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fdt_init_reserved_mem() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  tail call fastcc void @__rmem_check_for_overlap() #12
  %2 = load i32, ptr @reserved_mem_count, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %60

4:                                                ; preds = %56, %0
  %5 = phi i32 [ %57, %56 ], [ 0, %0 ]
  %6 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5
  %7 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 1
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  store i32 0, ptr %1, align 4, !annotation !8
  %9 = call ptr @of_get_flat_dt_prop(i32 noundef %8, ptr noundef nonnull @.str.1, ptr noundef null) #13
  %10 = icmp eq ptr %9, null
  %11 = call ptr @of_get_flat_dt_prop(i32 noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = call ptr @of_get_flat_dt_prop(i32 noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %14, %13 ], [ %11, %4 ]
  %18 = load i32, ptr %1, align 4
  %19 = add i32 %18, 3
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = sdiv i32 %18, 4
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %26, %23 ], [ %22, %21 ]
  %25 = phi ptr [ %27, %23 ], [ %17, %21 ]
  %26 = add i32 %24, -1
  %27 = getelementptr i32, ptr %25, i32 1
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %23

29:                                               ; preds = %23
  %30 = load i32, ptr %25, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #13
  br label %32

32:                                               ; preds = %29, %16
  %33 = phi i32 [ 0, %16 ], [ %31, %29 ]
  %34 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 2
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %13
  %36 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 4
  %42 = call fastcc i32 @__reserved_mem_alloc_size(i32 noundef %8, ptr noundef %40, ptr noundef %41, ptr noundef %36) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39, %35
  %45 = call fastcc i32 @__reserved_mem_init_node(ptr noundef %6) #12
  switch i32 %45, label %46 [
    i32 -2, label %56
    i32 0, label %56
  ]

46:                                               ; preds = %44
  %47 = load ptr, ptr %6, align 4
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %47) #11
  %49 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %5, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %36, align 4
  br i1 %10, label %54, label %52

52:                                               ; preds = %46
  %53 = call i32 @memblock_clear_nomap(i32 noundef %50, i32 noundef %51) #13
  br label %56

54:                                               ; preds = %46
  %55 = call i32 @memblock_phys_free(i32 noundef %50, i32 noundef %51) #13
  br label %56

56:                                               ; preds = %54, %52, %44, %44, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  %57 = add nuw nsw i32 %5, 1
  %58 = load i32, ptr @reserved_mem_count, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %4, label %60

60:                                               ; preds = %56, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__rmem_check_for_overlap() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, ptr @reserved_mem_count, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %35, label %5

5:                                                ; preds = %0
  tail call void @sort(ptr noundef nonnull @reserved_mem, i32 noundef %3, i32 noundef 28, ptr noundef nonnull @__rmem_cmp, ptr noundef null) #13
  %6 = load i32, ptr @reserved_mem_count, align 4
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %31, %5
  %10 = phi i32 [ %32, %31 ], [ %6, %5 ]
  %11 = phi i32 [ %12, %31 ], [ 0, %5 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %11, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %11, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %12, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %9
  %22 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %12
  %23 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 %17, ptr %1, align 4
  %24 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %12, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %19
  store i32 %26, ptr %2, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = load ptr, ptr %22, align 4
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %27, ptr noundef %13, ptr noundef nonnull %1, ptr noundef %28, ptr noundef %18, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  %30 = load i32, ptr @reserved_mem_count, align 4
  br label %31

31:                                               ; preds = %21, %9
  %32 = phi i32 [ %30, %21 ], [ %10, %9 ]
  %33 = add i32 %32, -1
  %34 = icmp slt i32 %12, %33
  br i1 %34, label %9, label %35

35:                                               ; preds = %31, %5, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_alloc_size(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 section ".init.text" {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = load i32, ptr @dt_root_addr_cells, align 4
  %9 = load i32, ptr @dt_root_size_cells, align 4
  %10 = add i32 %9, %8
  %11 = shl i32 %10, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %12 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %6) #13
  store ptr %12, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %4
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr @dt_root_size_cells, align 4
  %17 = shl i32 %16, 2
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %1) #11
  br label %82

21:                                               ; preds = %14
  %22 = call i64 @dt_mem_next_cell(i32 noundef %16, ptr noundef nonnull %7) #13
  %23 = trunc i64 %22 to i32
  %24 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %6) #13
  store ptr %24, ptr %7, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr @dt_root_addr_cells, align 4
  %29 = shl i32 %28, 2
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %1) #11
  br label %82

33:                                               ; preds = %26
  %34 = call i64 @dt_mem_next_cell(i32 noundef %28, ptr noundef nonnull %7) #13
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi i32 [ %35, %33 ], [ 0, %21 ]
  %38 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #13
  %39 = icmp ne ptr %38, null
  %40 = call i32 @of_flat_dt_is_compatible(i32 noundef %0, ptr noundef nonnull @.str.13) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.14, ptr noundef null) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = call i32 @llvm.umax.i32(i32 %37, i32 8388608)
  %47 = select i1 %39, i32 %37, i32 %46
  br label %48

48:                                               ; preds = %45, %42, %36
  %49 = phi i32 [ %37, %42 ], [ %37, %36 ], [ %47, %45 ]
  %50 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %6) #13
  store ptr %50, ptr %7, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %6, align 4
  %54 = srem i32 %53, %11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %1) #11
  br label %82

58:                                               ; preds = %52
  store i32 0, ptr %5, align 4
  %59 = icmp sgt i32 %53, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %70, %58
  %61 = load i32, ptr @dt_root_addr_cells, align 4
  %62 = call i64 @dt_mem_next_cell(i32 noundef %61, ptr noundef nonnull %7) #13
  %63 = trunc i64 %62 to i32
  %64 = load i32, ptr @dt_root_size_cells, align 4
  %65 = call i64 @dt_mem_next_cell(i32 noundef %64, ptr noundef nonnull %7) #13
  %66 = add i64 %65, %62
  %67 = trunc i64 %66 to i32
  %68 = call fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i32 noundef %23, i32 noundef %49, i32 noundef %63, i32 noundef %67, i1 noundef zeroext %39, ptr noundef nonnull %5) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = load i32, ptr %6, align 4
  %72 = sub i32 %71, %11
  store i32 %72, ptr %6, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %60, label %76

74:                                               ; preds = %48
  %75 = call fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i32 noundef %23, i32 noundef %49, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %39, ptr noundef nonnull %5) #12
  br label %76

76:                                               ; preds = %74, %70, %60
  %77 = load i32, ptr %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %58
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1) #11
  br label %82

81:                                               ; preds = %76
  store i32 %77, ptr %2, align 4
  store i32 %23, ptr %3, align 4
  br label %82

82:                                               ; preds = %81, %79, %56, %31, %19, %4
  %83 = phi i32 [ -22, %19 ], [ -22, %31 ], [ -22, %56 ], [ -12, %79 ], [ 0, %81 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %83
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_init_node(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  br i1 icmp ult (ptr @__reservedmem_of_table, ptr @__rmem_of_table_sentinel), label %2, label %23

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %19, %2
  %5 = phi ptr [ @__reservedmem_of_table, %2 ], [ %21, %19 ]
  %6 = phi i32 [ -2, %2 ], [ %20, %19 ]
  %7 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %3, align 4
  %11 = tail call i32 @of_flat_dt_is_compatible(i32 noundef %10, ptr noundef %9) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = tail call i32 %8(ptr noundef %0) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %17, ptr noundef %9) #11
  br label %23

19:                                               ; preds = %13, %4
  %20 = phi i32 [ %14, %13 ], [ %6, %4 ]
  %21 = getelementptr %struct.of_device_id, ptr %5, i32 1
  %22 = icmp ult ptr %21, @__rmem_of_table_sentinel
  br i1 %22, label %4, label %23

23:                                               ; preds = %19, %16, %1
  %24 = phi i32 [ 0, %16 ], [ -2, %1 ], [ %20, %19 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_clear_nomap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %60

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #13, !annotation !8
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #13
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #13
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %60, label %14

14:                                               ; preds = %8
  %15 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %11) #13
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call void @of_node_put(ptr noundef nonnull %11) #13
  br label %60

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr @reserved_mem_count, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %29, %21
  %25 = phi i32 [ %30, %29 ], [ 0, %21 ]
  %26 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %25, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %19
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = add nuw i32 %25, 1
  %31 = icmp eq i32 %30, %22
  br i1 %31, label %32, label %24

32:                                               ; preds = %29, %21, %17
  call void @of_node_put(ptr noundef nonnull %11) #13
  br label %60

33:                                               ; preds = %24
  %34 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %25
  call void @of_node_put(ptr noundef nonnull %11) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %25, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %45 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 16) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %37, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef nonnull %34, ptr noundef nonnull %0) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  store ptr %0, ptr %45, align 8
  %53 = getelementptr inbounds %struct.rmem_assigned_device, ptr %45, i32 0, i32 1
  store ptr %34, ptr %53, align 4
  call void @mutex_lock(ptr noundef nonnull @of_rmem_assigned_device_mutex) #13
  %54 = getelementptr inbounds %struct.rmem_assigned_device, ptr %45, i32 0, i32 2
  %55 = load ptr, ptr @of_rmem_assigned_device_list, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store ptr %55, ptr %54, align 8
  %57 = getelementptr inbounds %struct.rmem_assigned_device, ptr %45, i32 0, i32 2, i32 1
  store ptr @of_rmem_assigned_device_list, ptr %57, align 4
  store volatile ptr %54, ptr @of_rmem_assigned_device_list, align 4
  call void @mutex_unlock(ptr noundef nonnull @of_rmem_assigned_device_mutex) #13
  %58 = load ptr, ptr %34, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %58) #11
  br label %60

59:                                               ; preds = %47
  call void @kfree(ptr noundef nonnull %45) #13
  br label %60

60:                                               ; preds = %59, %52, %43, %40, %36, %33, %32, %16, %8, %3
  %61 = phi i32 [ 0, %16 ], [ -22, %3 ], [ -19, %8 ], [ -22, %40 ], [ -22, %36 ], [ -22, %33 ], [ -12, %43 ], [ %50, %59 ], [ 0, %52 ], [ -22, %32 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_reserved_mem_device_init_by_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %2) #13
  %5 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_reserved_mem_device_release(ptr noundef %0) #4 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @mutex_lock(ptr noundef nonnull @of_rmem_assigned_device_mutex) #13
  %4 = load ptr, ptr @of_rmem_assigned_device_list, align 4
  %5 = icmp eq ptr %4, @of_rmem_assigned_device_list
  br i1 %5, label %19, label %6

6:                                                ; preds = %17, %1
  %7 = phi ptr [ %8, %17 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %7, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %8, ptr %14, align 4
  %16 = load ptr, ptr %3, align 4
  store ptr %7, ptr %3, align 4
  store ptr %2, ptr %7, align 4
  store ptr %16, ptr %13, align 4
  store volatile ptr %7, ptr %16, align 4
  br label %17

17:                                               ; preds = %12, %6
  %18 = icmp eq ptr %8, @of_rmem_assigned_device_list
  br i1 %18, label %19, label %6

19:                                               ; preds = %17, %1
  call void @mutex_unlock(ptr noundef nonnull @of_rmem_assigned_device_mutex) #13
  %20 = load ptr, ptr %2, align 8
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %40, label %22

22:                                               ; preds = %38, %19
  %23 = phi ptr [ %25, %38 ], [ %20, %19 ]
  %24 = getelementptr i8, ptr %23, i32 -8
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %23, i32 -4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.reserved_mem, ptr %27, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.reserved_mem_ops, ptr %31, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void %35(ptr noundef nonnull %27, ptr noundef %0) #13
  br label %38

38:                                               ; preds = %37, %33, %29, %22
  call void @kfree(ptr noundef %24) #13
  %39 = icmp eq ptr %25, %2
  br i1 %39, label %40, label %22

40:                                               ; preds = %38, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @of_reserved_mem_lookup(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @strrchr(ptr noundef nonnull %3, i32 noundef 47) #13
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 1
  %9 = select i1 %7, ptr %3, ptr %8
  %10 = load i32, ptr @reserved_mem_count, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %21

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %21, label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %17 = getelementptr [64 x %struct.reserved_mem], ptr @reserved_mem, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %9)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %15, %12, %5, %1
  %22 = phi ptr [ null, %1 ], [ null, %5 ], [ %17, %15 ], [ null, %12 ]
  ret ptr %22
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define internal i32 @__rmem_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 section ".init.text" {
  %3 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.reserved_mem, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i32 %4, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.reserved_mem, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %12, %14
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %10, %8, %2
  %20 = phi i32 [ -1, %2 ], [ 1, %8 ], [ -1, %10 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dt_mem_next_cell(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flat_dt_is_compatible(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 section ".init.text" {
  %7 = icmp eq i32 %3, 0
  %8 = select i1 %7, i32 -1, i32 %3
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 64, i32 %1
  %11 = tail call i32 @memblock_phys_alloc_range(i32 noundef %0, i32 noundef %10, i32 noundef %2, i32 noundef %8) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  store i32 %11, ptr %5, align 4
  br i1 %4, label %14, label %19

14:                                               ; preds = %13
  %15 = tail call i32 @memblock_mark_nomap(i32 noundef %11, i32 noundef %0) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @memblock_phys_free(i32 noundef %11, i32 noundef %0) #13
  br label %19

19:                                               ; preds = %17, %14, %13, %6
  %20 = phi i32 [ -12, %6 ], [ 0, %13 ], [ %15, %17 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }

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
