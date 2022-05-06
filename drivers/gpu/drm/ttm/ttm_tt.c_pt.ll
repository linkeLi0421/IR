; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_tt.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_tt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_tt_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_tt_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_tt_fini\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_tt_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_sg_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_sg_tt_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_sg_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_tt_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_tt_populate\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_tt_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_kmap_iter_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_kmap_iter_tt_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_kmap_iter_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_kmap_iter_ops = type { ptr, ptr, i8 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.75] }
%struct.anon.75 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.1, %union.anon.65, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.ttm_kmap_iter_tt = type { %struct.ttm_kmap_iter, ptr, i32 }
%struct.ttm_kmap_iter = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.dma_buf_map = type { %union.anon.74, i8 }
%union.anon.74 = type { ptr }

@__UNIQUE_ID_pages_limit261 = internal constant [47 x i8] c"parm=pages_limit:Limit for the allocated pages\00", section ".modinfo", align 1
@__param_str_pages_limit = internal constant [12 x i8] c"pages_limit\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@ttm_pages_limit = internal global i32 0, align 4
@__param_pages_limit = internal constant %struct.kernel_param { ptr @__param_str_pages_limit, ptr @__this_module, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @ttm_pages_limit } }, section "__param", align 4
@__UNIQUE_ID_pages_limittype262 = internal constant [27 x i8] c"parmtype=pages_limit:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_dma32_pages_limit263 = internal constant [59 x i8] c"parm=dma32_pages_limit:Limit for the allocated DMA32 pages\00", section ".modinfo", align 1
@__param_str_dma32_pages_limit = internal constant [18 x i8] c"dma32_pages_limit\00", align 1
@ttm_dma32_pages_limit = internal global i32 0, align 4
@__param_dma32_pages_limit = internal constant %struct.kernel_param { ptr @__param_str_dma32_pages_limit, ptr @__this_module, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @ttm_dma32_pages_limit } }, section "__param", align 4
@__UNIQUE_ID_dma32_pages_limittype264 = internal constant [33 x i8] c"parmtype=dma32_pages_limit:ulong\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"\013[TTM] Illegal buffer object type\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/ttm/ttm_tt.c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013[TTM] Failed allocating page table\0A\00", align 1
@__kstrtab_ttm_tt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_tt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_tt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_tt_init to i32), ptr @__kstrtab_ttm_tt_init, ptr @__kstrtabns_ttm_tt_init }, section "___ksymtab+ttm_tt_init", align 4
@__kstrtab_ttm_tt_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_tt_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_tt_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_tt_fini to i32), ptr @__kstrtab_ttm_tt_fini, ptr @__kstrtabns_ttm_tt_fini }, section "___ksymtab+ttm_tt_fini", align 4
@__kstrtab_ttm_sg_tt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_sg_tt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_sg_tt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_sg_tt_init to i32), ptr @__kstrtab_ttm_sg_tt_init, ptr @__kstrtabns_ttm_sg_tt_init }, section "___ksymtab+ttm_sg_tt_init", align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ttm swap\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013[TTM] Failed allocating swap storage\0A\00", align 1
@ttm_pages_allocated = internal global %struct.atomic_t zeroinitializer, align 4
@ttm_dma32_pages_allocated = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_ttm_tt_populate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_tt_populate = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_tt_populate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_tt_populate to i32), ptr @__kstrtab_ttm_tt_populate, ptr @__kstrtabns_ttm_tt_populate }, section "___ksymtab+ttm_tt_populate", align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"tt_shrink\00", align 1
@ttm_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@ttm_tt_debugfs_shrink_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ttm_tt_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ttm_kmap_iter_tt_ops = internal constant %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_tt_map_local, ptr @ttm_kmap_iter_tt_unmap_local, i8 1 }, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_ttm_kmap_iter_tt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_kmap_iter_tt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_kmap_iter_tt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_kmap_iter_tt_init to i32), ptr @__kstrtab_ttm_kmap_iter_tt_init, ptr @__kstrtabns_ttm_kmap_iter_tt_init }, section "___ksymtab+ttm_kmap_iter_tt_init", align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_dma32_pages_limit263, ptr @__UNIQUE_ID_dma32_pages_limittype264, ptr @__UNIQUE_ID_pages_limit261, ptr @__UNIQUE_ID_pages_limittype262, ptr @__ksymtab_ttm_kmap_iter_tt_init, ptr @__ksymtab_ttm_sg_tt_init, ptr @__ksymtab_ttm_tt_fini, ptr @__ksymtab_ttm_tt_init, ptr @__ksymtab_ttm_tt_populate, ptr @__param_dma32_pages_limit, ptr @__param_pages_limit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_create(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %14 [
    i32 0, label %11
    i32 1, label %16
    i32 2, label %13
  ]

11:                                               ; preds = %8
  %12 = select i1 %1, i32 2, i32 0
  br label %16

13:                                               ; preds = %8
  br label %16

14:                                               ; preds = %8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %29

16:                                               ; preds = %13, %11, %8
  %17 = phi i32 [ 4, %13 ], [ 0, %8 ], [ %12, %11 ]
  %18 = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef %17) #7
  store ptr %21, ptr %5, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !8

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ttm_tt, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 12
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 9, ptr noundef null) #7
  br label %29

29:                                               ; preds = %28, %23, %16, %14, %2
  %30 = phi i32 [ -22, %14 ], [ 0, %2 ], [ -12, %16 ], [ 0, %28 ], [ 0, %23 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_tt_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ttm_device_funcs, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 4095
  %8 = lshr i32 %7, 12
  %9 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 6
  store i32 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 4
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 5
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  store i32 %3, ptr %10, align 4
  %17 = shl nuw nsw i32 %8, 2
  %18 = tail call noalias ptr @kvmalloc_node(i32 noundef %17, i32 noundef 3520, i32 noundef -1) #8
  store ptr %18, ptr %0, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi i32 [ -12, %20 ], [ 0, %4 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_tt_fini(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 163, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fput(ptr noundef nonnull %8) #7
  br label %11

11:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @kvfree(ptr noundef nonnull %12) #7
  br label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @kvfree(ptr noundef %17) #7
  br label %18

18:                                               ; preds = %15, %14
  store ptr null, ptr %0, align 4
  %19 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 4
  store ptr null, ptr %19, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_sg_tt_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 4095
  %8 = lshr i32 %7, 12
  %9 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 6
  store i32 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 4
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 5
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  store i32 %3, ptr %10, align 4
  %17 = and i32 %2, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = shl nuw nsw i32 %8, 2
  %21 = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 3520, i32 noundef -1) #8
  store ptr %21, ptr %12, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %32

23:                                               ; preds = %4
  %24 = shl nuw nsw i32 %8, 3
  %25 = tail call noalias ptr @kvmalloc_node(i32 noundef %24, i32 noundef 3520, i32 noundef -1) #8
  store ptr %25, ptr %0, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr ptr, ptr %25, i32 %28
  store ptr %29, ptr %12, align 4
  br label %32

30:                                               ; preds = %23, %19
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %32

32:                                               ; preds = %30, %27, %19
  %33 = phi i32 [ -12, %30 ], [ 0, %19 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_swapin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/ttm/ttm_tt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %48, %6
  %15 = phi i32 [ %49, %48 ], [ 0, %6 ]
  %16 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %8, i32 noundef %15, i32 noundef %10) #7
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %16 to i32
  br label %56

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr ptr, ptr %21, i32 %15
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25, !prof !8

25:                                               ; preds = %20
  %26 = load i32, ptr @pgprot_kernel, align 4
  %27 = or i32 %26, 512
  %28 = tail call ptr @__kmap_local_page_prot(ptr noundef %16, i32 noundef %27) #7
  %29 = load i32, ptr @pgprot_kernel, align 4
  %30 = or i32 %29, 512
  %31 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %23, i32 noundef %30) #7
  tail call void @copy_page(ptr noundef %31, ptr noundef %28) #7
  tail call void @kunmap_local_indexed(ptr noundef %31) #7
  tail call void @kunmap_local_indexed(ptr noundef %28) #7
  %32 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !9

36:                                               ; preds = %25
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %25
  %39 = ptrtoint ptr %16 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #7, !srcloc !12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #7, !srcloc !13
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void @__put_page(ptr noundef %42) #7
  br label %48

48:                                               ; preds = %47, %40
  %49 = add nuw i32 %15, 1
  %50 = load i32, ptr %11, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %14, label %52

52:                                               ; preds = %48, %6
  tail call void @fput(ptr noundef nonnull %3) #7
  store ptr null, ptr %2, align 4
  %53 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -2
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %52, %20, %18
  %57 = phi i32 [ 0, %52 ], [ %19, %18 ], [ -12, %20 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_swapout(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 12
  %8 = tail call ptr @shmem_file_setup(ptr noundef nonnull @.str.3, i64 noundef %7, i32 noundef 0) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  %12 = ptrtoint ptr %8 to i32
  br label %96

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 17
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %2
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %56, %13
  %22 = phi i32 [ %57, %56 ], [ 0, %13 ]
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr ptr, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27, !prof !8

27:                                               ; preds = %21
  %28 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %15, i32 noundef %22, i32 noundef %18) #7
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  tail call void @fput(ptr noundef %8) #7
  br label %96

32:                                               ; preds = %27
  %33 = load i32, ptr @pgprot_kernel, align 4
  %34 = or i32 %33, 512
  %35 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %25, i32 noundef %34) #7
  %36 = load i32, ptr @pgprot_kernel, align 4
  %37 = or i32 %36, 512
  %38 = tail call ptr @__kmap_local_page_prot(ptr noundef %28, i32 noundef %37) #7
  tail call void @copy_page(ptr noundef %38, ptr noundef %35) #7
  tail call void @kunmap_local_indexed(ptr noundef %38) #7
  tail call void @kunmap_local_indexed(ptr noundef %35) #7
  %39 = tail call zeroext i1 @set_page_dirty(ptr noundef %28) #7
  tail call void @mark_page_accessed(ptr noundef %28) #7
  %40 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !9

44:                                               ; preds = %32
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %32
  %47 = ptrtoint ptr %28 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #7, !srcloc !12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #7, !srcloc !13
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  tail call void @__put_page(ptr noundef %50) #7
  br label %56

56:                                               ; preds = %55, %48, %21
  %57 = add nuw i32 %22, 1
  %58 = load i32, ptr %4, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %21, label %60

60:                                               ; preds = %56, %13
  %61 = phi i32 [ 0, %13 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.ttm_device_funcs, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void %69(ptr noundef %0, ptr noundef %1) #7
  br label %74

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5
  tail call void @ttm_pool_free(ptr noundef %73, ptr noundef %1) #7
  br label %74

74:                                               ; preds = %72, %71
  %75 = load i32, ptr %62, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, ptr %4, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_pages_allocated) #7, !srcloc !12
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %79, ptr nonnull elementtype(i32) @ttm_pages_allocated) #7, !srcloc !15
  %81 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5, i32 2
  %82 = load i8, ptr %81, align 1, !range !16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %4, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_dma32_pages_allocated) #7, !srcloc !12
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %85, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #7, !srcloc !15
  br label %87

87:                                               ; preds = %84, %78, %74
  %88 = load i32, ptr %62, align 4
  %89 = and i32 %88, 2147483647
  %90 = load i32, ptr %4, align 4
  br label %91

91:                                               ; preds = %87, %60
  %92 = phi i32 [ %61, %60 ], [ %90, %87 ]
  %93 = phi i32 [ %63, %60 ], [ %89, %87 ]
  %94 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 5
  store ptr %8, ptr %94, align 4
  %95 = or i32 %93, 1
  store i32 %95, ptr %62, align 4
  br label %96

96:                                               ; preds = %91, %30, %10
  %97 = phi i32 [ %12, %10 ], [ %31, %30 ], [ %92, %91 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_tt_unpopulate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ttm_device_funcs, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0, ptr noundef %1) #7
  br label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5
  tail call void @ttm_pool_free(ptr noundef %14, ptr noundef %1) #7
  br label %15

15:                                               ; preds = %13, %12
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_pages_allocated) #7, !srcloc !12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %21, ptr nonnull elementtype(i32) @ttm_pages_allocated) #7, !srcloc !15
  %23 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5, i32 2
  %24 = load i8, ptr %23, align 1, !range !16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %20, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_dma32_pages_allocated) #7, !srcloc !12
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %27, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #7, !srcloc !15
  br label %29

29:                                               ; preds = %26, %19, %15
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, 2147483647
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_populate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %74, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %74, label %9

9:                                                ; preds = %5
  %10 = and i32 %7, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_pages_allocated) #7, !srcloc !12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %14, ptr nonnull elementtype(i32) @ttm_pages_allocated) #7, !srcloc !17
  %16 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5, i32 2
  %17 = load i8, ptr %16, align 1, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %13, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_dma32_pages_allocated) #7, !srcloc !12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %20, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #7, !srcloc !17
  br label %22

22:                                               ; preds = %19, %12, %9
  br label %23

23:                                               ; preds = %34, %22
  %24 = load volatile i32, ptr @ttm_pages_allocated, align 4
  %25 = load i32, ptr @ttm_pages_limit, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr @ttm_dma32_pages_allocated, align 4
  %29 = load i32, ptr @ttm_dma32_pages_limit, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23
  %32 = tail call i32 @ttm_global_swapout(ptr noundef %2, i32 noundef 3264) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = icmp slt i32 %32, 0
  br i1 %35, label %59, label %23

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.ttm_device_funcs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = tail call i32 %40(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #7
  br label %47

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5
  %46 = tail call i32 @ttm_pool_alloc(ptr noundef %45, ptr noundef nonnull %1, ptr noundef %2) #7
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, ptr %6, align 4
  %52 = or i32 %51, -2147483648
  store i32 %52, ptr %6, align 4
  %53 = and i32 %51, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %74, label %55, !prof !9

55:                                               ; preds = %50
  %56 = tail call i32 @ttm_tt_swapin(ptr noundef nonnull %1)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58, !prof !9

58:                                               ; preds = %55
  tail call void @ttm_tt_unpopulate(ptr noundef %0, ptr noundef nonnull %1)
  br label %74

59:                                               ; preds = %47, %34
  %60 = phi i32 [ %48, %47 ], [ %32, %34 ]
  %61 = load i32, ptr %6, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_pages_allocated) #7, !srcloc !12
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %66, ptr nonnull elementtype(i32) @ttm_pages_allocated) #7, !srcloc !15
  %68 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5, i32 2
  %69 = load i8, ptr %68, align 1, !range !16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %65, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ttm_dma32_pages_allocated) #7, !srcloc !12
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %72, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #7, !srcloc !15
  br label %74

74:                                               ; preds = %71, %64, %59, %58, %55, %50, %5, %3
  %75 = phi i32 [ %56, %58 ], [ -22, %3 ], [ 0, %5 ], [ 0, %55 ], [ 0, %50 ], [ %60, %64 ], [ %60, %71 ], [ %60, %59 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_global_swapout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_tt_mgr_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ttm_debugfs_root, align 4
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %3, ptr noundef null, ptr noundef nonnull @ttm_tt_debugfs_shrink_fops) #7
  %5 = load i32, ptr @ttm_pages_limit, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 %0, ptr @ttm_pages_limit, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, ptr @ttm_dma32_pages_limit, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 %1, ptr @ttm_dma32_pages_limit, align 4
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ttm_kmap_iter_tt_init(ptr noundef returned writeonly %0, ptr noundef %1) #0 {
  store ptr @ttm_kmap_iter_tt_ops, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %0, i32 0, i32 1
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @pgprot_kernel, align 4
  %9 = or i32 %8, 512
  %10 = tail call i32 @ttm_prot_from_caching(i32 noundef %7, i32 noundef %9) #7
  br label %14

11:                                               ; preds = %2
  %12 = load i32, ptr @pgprot_kernel, align 4
  %13 = or i32 %12, 512
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %13, %11 ], [ %10, %5 ]
  %16 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %0, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_prot_from_caching(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_tt_debugfs_shrink_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ttm_tt_debugfs_shrink_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_tt_debugfs_shrink_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.ttm_operation_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %4 = call i32 @ttm_global_swapout(ptr noundef nonnull %3, i32 noundef 3264) #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_kmap_iter_tt_map_local(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @__kmap_local_page_prot(ptr noundef %8, i32 noundef %10) #7
  store ptr %11, ptr %1, align 4
  %12 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_kmap_iter_tt_unmap_local(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @kunmap_local_indexed(ptr noundef %3) #7
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153867788, i64 2153868281, i64 2153867825, i64 2153867881, i64 2153867915, i64 2153867939, i64 2153867980, i64 2153868001, i64 2153868029, i64 2153868063}
!11 = !{i64 2148191599}
!12 = !{i64 526092, i64 2148027658, i64 2148027684, i64 2148027731, i64 2148027753, i64 2148027781, i64 2148027801}
!13 = !{i64 2148093961, i64 2148093993, i64 2148094022, i64 2148094056, i64 2148094087, i64 2148094110}
!14 = !{i64 2148191802}
!15 = !{i64 2148093277, i64 2148093303, i64 2148093332, i64 2148093366, i64 2148093397, i64 2148093420}
!16 = !{i8 0, i8 2}
!17 = !{i64 2148090920, i64 2148090946, i64 2148090975, i64 2148091009, i64 2148091040, i64 2148091063}
