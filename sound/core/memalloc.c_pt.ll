; ModuleID = '/llk/IR/sound/core/memalloc.c_pt.bc'
source_filename = "../sound/core/memalloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dma_alloc_dir_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dma_alloc_dir_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dma_alloc_dir_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dma_alloc_pages_fallback:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dma_alloc_pages_fallback\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dma_alloc_pages_fallback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dma_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dma_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dma_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_devm_alloc_dir_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_devm_alloc_dir_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_devm_alloc_dir_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dma_buffer_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dma_buffer_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dma_buffer_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dma_buffer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dma_buffer_sync\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dma_buffer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sgbuf_get_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sgbuf_get_addr\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sgbuf_get_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sgbuf_get_page:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sgbuf_get_page\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sgbuf_get_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sgbuf_get_chunk_size:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sgbuf_get_chunk_size\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sgbuf_get_chunk_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_malloc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.58 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"sound/core/memalloc.c\00", align 1
@__kstrtab_snd_dma_alloc_dir_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dma_alloc_dir_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dma_alloc_dir_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dma_alloc_dir_pages to i32), ptr @__kstrtab_snd_dma_alloc_dir_pages, ptr @__kstrtabns_snd_dma_alloc_dir_pages }, section "___ksymtab+snd_dma_alloc_dir_pages", align 4
@__kstrtab_snd_dma_alloc_pages_fallback = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dma_alloc_pages_fallback = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dma_alloc_pages_fallback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dma_alloc_pages_fallback to i32), ptr @__kstrtab_snd_dma_alloc_pages_fallback, ptr @__kstrtabns_snd_dma_alloc_pages_fallback }, section "___ksymtab+snd_dma_alloc_pages_fallback", align 4
@__kstrtab_snd_dma_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dma_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dma_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dma_free_pages to i32), ptr @__kstrtab_snd_dma_free_pages, ptr @__kstrtabns_snd_dma_free_pages }, section "___ksymtab+snd_dma_free_pages", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"__snd_release_pages\00", align 1
@__kstrtab_snd_devm_alloc_dir_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_devm_alloc_dir_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_devm_alloc_dir_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_devm_alloc_dir_pages to i32), ptr @__kstrtab_snd_devm_alloc_dir_pages, ptr @__kstrtabns_snd_devm_alloc_dir_pages }, section "___ksymtab_gpl+snd_devm_alloc_dir_pages", align 4
@__kstrtab_snd_dma_buffer_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dma_buffer_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dma_buffer_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dma_buffer_mmap to i32), ptr @__kstrtab_snd_dma_buffer_mmap, ptr @__kstrtabns_snd_dma_buffer_mmap }, section "___ksymtab+snd_dma_buffer_mmap", align 4
@__kstrtab_snd_dma_buffer_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dma_buffer_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dma_buffer_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dma_buffer_sync to i32), ptr @__kstrtab_snd_dma_buffer_sync, ptr @__kstrtabns_snd_dma_buffer_sync }, section "___ksymtab_gpl+snd_dma_buffer_sync", align 4
@__kstrtab_snd_sgbuf_get_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sgbuf_get_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sgbuf_get_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sgbuf_get_addr to i32), ptr @__kstrtab_snd_sgbuf_get_addr, ptr @__kstrtabns_snd_sgbuf_get_addr }, section "___ksymtab+snd_sgbuf_get_addr", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_snd_sgbuf_get_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sgbuf_get_page = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sgbuf_get_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sgbuf_get_page to i32), ptr @__kstrtab_snd_sgbuf_get_page, ptr @__kstrtabns_snd_sgbuf_get_page }, section "___ksymtab+snd_sgbuf_get_page", align 4
@__kstrtab_snd_sgbuf_get_chunk_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sgbuf_get_chunk_size = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sgbuf_get_chunk_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sgbuf_get_chunk_size to i32), ptr @__kstrtab_snd_sgbuf_get_chunk_size, ptr @__kstrtabns_snd_sgbuf_get_chunk_size }, section "___ksymtab+snd_sgbuf_get_chunk_size", align 4
@__snd_dma_alloc_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snd_dma_get_ops.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snd_dma_get_ops.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_ops = internal unnamed_addr constant [10 x ptr] [ptr null, ptr @snd_dma_continuous_ops, ptr @snd_dma_dev_ops, ptr null, ptr @snd_dma_iram_ops, ptr @snd_dma_wc_ops, ptr null, ptr @snd_dma_vmalloc_ops, ptr @snd_dma_noncontig_ops, ptr @snd_dma_noncoherent_ops], align 4
@snd_dma_continuous_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_continuous_alloc, ptr @snd_dma_continuous_free, ptr null, ptr null, ptr null, ptr @snd_dma_continuous_mmap, ptr null }, align 4
@snd_dma_dev_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_dev_alloc, ptr @snd_dma_dev_free, ptr null, ptr null, ptr null, ptr @snd_dma_dev_mmap, ptr null }, align 4
@snd_dma_iram_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_iram_alloc, ptr @snd_dma_iram_free, ptr null, ptr null, ptr null, ptr @snd_dma_iram_mmap, ptr null }, align 4
@snd_dma_wc_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_wc_alloc, ptr @snd_dma_wc_free, ptr null, ptr null, ptr null, ptr @snd_dma_wc_mmap, ptr null }, align 4
@snd_dma_vmalloc_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_vmalloc_alloc, ptr @snd_dma_vmalloc_free, ptr @snd_dma_vmalloc_get_addr, ptr @snd_dma_vmalloc_get_page, ptr @snd_dma_vmalloc_get_chunk_size, ptr @snd_dma_vmalloc_mmap, ptr null }, align 4
@snd_dma_noncontig_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_noncontig_alloc, ptr @snd_dma_noncontig_free, ptr @snd_dma_noncontig_get_addr, ptr @snd_dma_noncontig_get_page, ptr @snd_dma_noncontig_get_chunk_size, ptr @snd_dma_noncontig_mmap, ptr @snd_dma_noncontig_sync }, align 4
@snd_dma_noncoherent_ops = internal constant %struct.snd_malloc_ops { ptr @snd_dma_noncoherent_alloc, ptr @snd_dma_noncoherent_free, ptr null, ptr null, ptr null, ptr @snd_dma_noncoherent_mmap, ptr @snd_dma_noncoherent_sync }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"iram\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_snd_devm_alloc_dir_pages, ptr @__ksymtab_snd_dma_alloc_dir_pages, ptr @__ksymtab_snd_dma_alloc_pages_fallback, ptr @__ksymtab_snd_dma_buffer_mmap, ptr @__ksymtab_snd_dma_buffer_sync, ptr @__ksymtab_snd_dma_free_pages, ptr @__ksymtab_snd_sgbuf_get_addr, ptr @__ksymtab_snd_sgbuf_get_chunk_size, ptr @__ksymtab_snd_sgbuf_get_page], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #6
  br label %53

8:                                                ; preds = %5
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef null) #6
  br label %53

11:                                               ; preds = %8
  %12 = add i32 %3, 4095
  %13 = and i32 %12, -4096
  store i32 %0, ptr %4, align 4
  %14 = getelementptr inbounds %struct.snd_dma_device, ptr %4, i32 0, i32 3
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_dma_device, ptr %4, i32 0, i32 1
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 4
  store ptr null, ptr %18, align 4
  %19 = add i32 %0, -10
  %20 = icmp ult i32 %19, -9
  %21 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %11
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %25

25:                                               ; preds = %24, %11
  br i1 %20, label %37, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %4, align 4
  %28 = and i32 %27, 1073741823
  %29 = lshr i32 73, %28
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %27
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br label %37

37:                                               ; preds = %32, %26, %25
  %38 = phi ptr [ null, %26 ], [ %34, %32 ], [ null, %25 ]
  %39 = phi i1 [ true, %26 ], [ %36, %32 ], [ true, %25 ]
  %40 = load i1, ptr @__snd_dma_alloc_pages.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %37
  store i1 true, ptr @__snd_dma_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  br label %44

44:                                               ; preds = %43, %37
  br i1 %39, label %45, label %47

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 1
  store ptr null, ptr %46, align 4
  br label %53

47:                                               ; preds = %44
  %48 = load ptr, ptr %38, align 4
  %49 = tail call ptr %48(ptr noundef nonnull %4, i32 noundef %13) #6
  %50 = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 %13, ptr %16, align 4
  br label %53

53:                                               ; preds = %52, %47, %45, %10, %7
  %54 = phi i32 [ -6, %7 ], [ -6, %10 ], [ 0, %52 ], [ -12, %47 ], [ -12, %45 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__snd_dma_alloc_pages(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load i1, ptr @snd_dma_get_ops.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @snd_dma_get_ops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %29, label %9

9:                                                ; preds = %8
  %10 = load i32, ptr %0, align 4
  %11 = add i32 %10, -10
  %12 = icmp ult i32 %11, -9
  %13 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %9
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %9
  br i1 %12, label %29, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %0, align 4
  %20 = and i32 %19, 1073741823
  %21 = lshr i32 73, %20
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %19
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br label %29

29:                                               ; preds = %24, %18, %17, %8
  %30 = phi ptr [ null, %18 ], [ %26, %24 ], [ null, %8 ], [ null, %17 ]
  %31 = phi i1 [ true, %18 ], [ %28, %24 ], [ true, %8 ], [ true, %17 ]
  %32 = load i1, ptr @__snd_dma_alloc_pages.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %29
  store i1 true, ptr @__snd_dma_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  br label %36

36:                                               ; preds = %35, %29
  br i1 %31, label %40, label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %30, align 4
  %39 = tail call ptr %38(ptr noundef %0, i32 noundef %1) #6
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi ptr [ %39, %37 ], [ null, %36 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dma_alloc_pages_fallback(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, ptr noundef %3) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %13, %4
  %8 = phi i32 [ %22, %13 ], [ %5, %4 ]
  %9 = phi i32 [ %21, %13 ], [ %2, %4 ]
  %10 = icmp eq i32 %8, -12
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = icmp ult i32 %9, 4097
  br i1 %12, label %29, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %9, 1
  %15 = add nsw i32 %14, -1
  %16 = icmp ult i32 %15, 4096
  %17 = lshr i32 %15, 12
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #6, !range !9
  %19 = sub nuw nsw i32 32, %18
  %20 = shl i32 4096, %19
  %21 = select i1 %16, i32 4096, i32 %20
  %22 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %21, ptr noundef %3) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %7, label %24

24:                                               ; preds = %13, %4
  %25 = getelementptr inbounds %struct.snd_dma_buffer, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i32 -12, i32 0
  br label %29

29:                                               ; preds = %24, %11, %7
  %30 = phi i32 [ %28, %24 ], [ -12, %11 ], [ %8, %7 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_dma_free_pages(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = load i1, ptr @snd_dma_get_ops.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  store i1 true, ptr @snd_dma_get_ops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #6
  br label %7

7:                                                ; preds = %6, %1
  br i1 %2, label %30, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr %0, align 4
  %10 = add i32 %9, -10
  %11 = icmp ult i32 %10, -9
  %12 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %8
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %16

16:                                               ; preds = %15, %8
  br i1 %11, label %30, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %0, align 4
  %19 = and i32 %18, 1073741823
  %20 = lshr i32 73, %19
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %18
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_malloc_ops, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void %27(ptr noundef nonnull %0) #6
  br label %30

30:                                               ; preds = %29, %23, %17, %16, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %1, label %6 [
    i32 7, label %5
    i32 1, label %5
  ]

5:                                                ; preds = %4, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 9, ptr noundef null) #6
  switch i32 %1, label %6 [
    i32 7, label %14
    i32 1, label %14
  ]

6:                                                ; preds = %5, %4
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @__snd_release_pages, i32 noundef 32, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @devres_free(ptr noundef nonnull %7) #6
  br label %14

13:                                               ; preds = %9
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #6
  br label %14

14:                                               ; preds = %13, %12, %6, %5, %5
  %15 = phi ptr [ null, %12 ], [ %7, %13 ], [ null, %5 ], [ null, %5 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__snd_release_pages(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = load i1, ptr @snd_dma_get_ops.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @snd_dma_get_ops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %31, label %9

9:                                                ; preds = %8
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, -10
  %12 = icmp ult i32 %11, -9
  %13 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %9
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %9
  br i1 %12, label %31, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %1, align 4
  %20 = and i32 %19, 1073741823
  %21 = lshr i32 73, %20
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %19
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_malloc_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef nonnull %1) #6
  br label %31

31:                                               ; preds = %30, %24, %18, %17, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dma_buffer_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4
  %6 = add i32 %5, -10
  %7 = icmp ult i32 %6, -9
  %8 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %12

12:                                               ; preds = %11, %4
  br i1 %7, label %27, label %13

13:                                               ; preds = %12
  %14 = load i32, ptr %0, align 4
  %15 = and i32 %14, 1073741823
  %16 = lshr i32 73, %15
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %14
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_malloc_ops, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %27

27:                                               ; preds = %25, %19, %13, %12, %2
  %28 = phi i32 [ %26, %25 ], [ -2, %2 ], [ -2, %19 ], [ -2, %13 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_dma_buffer_sync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 4
  %10 = add i32 %9, -10
  %11 = icmp ult i32 %10, -9
  %12 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %8
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %16

16:                                               ; preds = %15, %8
  br i1 %11, label %30, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %0, align 4
  %19 = and i32 %18, 1073741823
  %20 = lshr i32 73, %19
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %18
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_malloc_ops, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void %27(ptr noundef nonnull %0, i32 noundef %1) #6
  br label %30

30:                                               ; preds = %29, %23, %17, %16, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_sgbuf_get_addr(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = load i1, ptr @snd_dma_get_ops.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @snd_dma_get_ops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %32, label %9

9:                                                ; preds = %8
  %10 = load i32, ptr %0, align 4
  %11 = add i32 %10, -10
  %12 = icmp ult i32 %11, -9
  %13 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %9
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %9
  br i1 %12, label %32, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %0, align 4
  %20 = and i32 %19, 1073741823
  %21 = lshr i32 73, %20
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %19
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_malloc_ops, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 %28(ptr noundef nonnull %0, i32 noundef %1) #6
  br label %36

32:                                               ; preds = %24, %18, %17, %8
  %33 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %1
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_sgbuf_get_page(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = load i1, ptr @snd_dma_get_ops.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @snd_dma_get_ops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #6
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %32, label %9

9:                                                ; preds = %8
  %10 = load i32, ptr %0, align 4
  %11 = add i32 %10, -10
  %12 = icmp ult i32 %11, -9
  %13 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %9
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %9
  br i1 %12, label %32, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %0, align 4
  %20 = and i32 %19, 1073741823
  %21 = lshr i32 73, %20
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %19
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_malloc_ops, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call ptr %28(ptr noundef nonnull %0, i32 noundef %1) #6
  br label %41

32:                                               ; preds = %24, %18, %17, %8
  %33 = load ptr, ptr @mem_map, align 4
  %34 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %1
  %37 = ptrtoint ptr %36 to i32
  %38 = add i32 %37, 1073741824
  %39 = lshr i32 %38, 12
  %40 = getelementptr %struct.page, ptr %33, i32 %39
  br label %41

41:                                               ; preds = %32, %30
  %42 = phi ptr [ %31, %30 ], [ %40, %32 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_sgbuf_get_chunk_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = load i1, ptr @snd_dma_get_ops.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  store i1 true, ptr @snd_dma_get_ops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %33, label %10

10:                                               ; preds = %9
  %11 = load i32, ptr %0, align 4
  %12 = add i32 %11, -10
  %13 = icmp ult i32 %12, -9
  %14 = load i1, ptr @snd_dma_get_ops.__already_done.2, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %10
  store i1 true, ptr @snd_dma_get_ops.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #6
  br label %18

18:                                               ; preds = %17, %10
  br i1 %13, label %33, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %0, align 4
  %21 = and i32 %20, 1073741823
  %22 = lshr i32 73, %21
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr [10 x ptr], ptr @dma_ops, i32 0, i32 %20
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_malloc_ops, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 %29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #6
  br label %33

33:                                               ; preds = %31, %25, %19, %18, %9
  %34 = phi i32 [ %32, %31 ], [ %2, %25 ], [ %2, %19 ], [ %2, %9 ], [ %2, %18 ]
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_continuous_alloc(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = ptrtoint ptr %4 to i32
  %7 = select i1 %5, i32 3264, i32 %6
  %8 = tail call noalias ptr @alloc_pages_exact(i32 noundef %1, i32 noundef %7) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = ptrtoint ptr %8 to i32
  %12 = add i32 %11, 1073741824
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = shl i32 %13, 12
  %15 = add i32 %12, %14
  %16 = and i32 %15, -4096
  %17 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %10, %2
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_continuous_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  tail call void @free_pages_exact(ptr noundef %3, i32 noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_continuous_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 12
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %8, %3
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %3, i32 noundef %6, i32 noundef %9, i32 noundef %11) #6
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_dev_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %6 = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %1, ptr noundef %5, i32 noundef 339136, i32 noundef 256) #6
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_dev_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @dma_mmap_attrs(ptr noundef %4, ptr noundef %1, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0) #6
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_iram_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @of_gen_pool_get(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %12 = tail call ptr @gen_pool_dma_alloc_align(ptr noundef %9, i32 noundef %1, ptr noundef %11, i32 noundef 4096) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %2
  store i32 2, ptr %0, align 4
  %15 = tail call fastcc ptr @__snd_dma_alloc_pages(ptr noundef %0, i32 noundef %1)
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %12, %8 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_iram_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  %11 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void @gen_pool_free_owner(ptr noundef nonnull %3, i32 noundef %10, i32 noundef %12, ptr noundef null) #6
  br label %13

13:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_iram_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -61
  %6 = or i32 %5, 4
  store i32 %6, ptr %3, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 12
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %7
  %14 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %6) #6
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc_align(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_wc_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %6 = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %1, ptr noundef %5, i32 noundef 339136, i32 noundef 260) #6
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_wc_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_wc_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @dma_mmap_attrs(ptr noundef %4, ptr noundef %1, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 4) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @snd_dma_vmalloc_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = ptrtoint ptr %4 to i32
  %7 = select i1 %5, i32 3266, i32 %6
  %8 = tail call noalias ptr @__vmalloc(i32 noundef %1, i32 noundef %7) #7
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_vmalloc_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @vfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_vmalloc_get_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call ptr @vmalloc_to_page(ptr noundef %5) #6
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %6 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = lshr exact i32 %10, 5
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = add i32 %11, %12
  %14 = shl i32 %13, 12
  %15 = and i32 %1, 4095
  %16 = or i32 %14, %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_vmalloc_get_page(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call ptr @vmalloc_to_page(ptr noundef %5) #6
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_vmalloc_get_chunk_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, -4096
  %5 = add i32 %1, -1
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %4
  %10 = tail call ptr @vmalloc_to_page(ptr noundef %9) #6
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %10 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = lshr exact i32 %14, 5
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %15, %16
  %18 = shl i32 %17, 12
  br label %19

19:                                               ; preds = %24, %3
  %20 = phi i32 [ %4, %3 ], [ %22, %24 ]
  %21 = phi i32 [ %18, %3 ], [ %25, %24 ]
  %22 = add i32 %20, 4096
  %23 = icmp ugt i32 %22, %6
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = add i32 %21, 4096
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 %22
  %28 = tail call ptr @vmalloc_to_page(ptr noundef %27) #6
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %28 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = lshr exact i32 %32, 5
  %34 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %35 = add i32 %33, %34
  %36 = shl i32 %35, 12
  %37 = icmp eq i32 %36, %25
  br i1 %37, label %19, label %38

38:                                               ; preds = %24
  %39 = sub i32 %22, %1
  br label %40

40:                                               ; preds = %38, %19
  %41 = phi i32 [ %39, %38 ], [ %2, %19 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_vmalloc_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @remap_vmalloc_range(ptr noundef %1, ptr noundef %4, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_noncontig_alloc(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @dma_alloc_noncontiguous(ptr noundef %4, i32 noundef %1, i32 noundef %6, i32 noundef 339136, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i1 @dma_need_sync(ptr noundef %10, i32 noundef %13) #6
  %15 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 2
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = tail call ptr @dma_vmap_noncontiguous(ptr noundef %17, i32 noundef %1, ptr noundef nonnull %7) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  store ptr %7, ptr %21, align 4
  br label %25

22:                                               ; preds = %9
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %5, align 4
  tail call void @dma_free_noncontiguous(ptr noundef %23, i32 noundef %1, ptr noundef nonnull %7, i32 noundef %24) #6
  br label %25

25:                                               ; preds = %22, %20, %2
  %26 = phi ptr [ null, %2 ], [ null, %22 ], [ %18, %20 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_noncontig_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @dma_vunmap_noncontiguous(ptr noundef %3, ptr noundef %5) #6
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @dma_free_noncontiguous(ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_noncontig_get_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sg_dma_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %1, 12
  call void @__sg_page_iter_start(ptr noundef nonnull %3, ptr noundef %6, i32 noundef %8, i32 noundef %9) #6
  %10 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sg_page_iter, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 12
  %17 = and i32 %1, 4095
  %18 = add i32 %13, %17
  %19 = add i32 %18, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_noncontig_get_page(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sg_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %1, 12
  call void @__sg_page_iter_start(ptr noundef nonnull %3, ptr noundef %6, i32 noundef %8, i32 noundef %9) #6
  %10 = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -4
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.sg_page_iter, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.page, ptr %14, i32 %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_noncontig_get_chunk_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sg_dma_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %5 = add i32 %1, -1
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sg_table, ptr %8, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %1, 12
  call void @__sg_page_iter_start(ptr noundef nonnull %4, ptr noundef %9, i32 noundef %11, i32 noundef %12) #6
  %13 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #6
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = and i32 %1, -4096
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sg_page_iter, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 12
  %22 = add i32 %21, %18
  br label %23

23:                                               ; preds = %30, %14
  %24 = phi i32 [ %15, %14 ], [ %26, %30 ]
  %25 = phi i32 [ %22, %14 ], [ %31, %30 ]
  %26 = add i32 %24, 4096
  %27 = icmp ugt i32 %26, %6
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #6
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = add i32 %25, 4096
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %19, align 4
  %36 = shl i32 %35, 12
  %37 = add i32 %36, %34
  %38 = icmp eq i32 %37, %31
  br i1 %38, label %23, label %39

39:                                               ; preds = %30, %28
  %40 = sub i32 %26, %1
  br label %41

41:                                               ; preds = %39, %23, %3
  %42 = phi i32 [ %40, %39 ], [ 0, %3 ], [ %2, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_noncontig_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @dma_mmap_noncontiguous(ptr noundef %4, ptr noundef %1, i32 noundef %6, ptr noundef %8) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_noncontig_sync(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  br i1 %3, label %6, label %16

6:                                                ; preds = %2
  %7 = icmp eq i32 %5, 1
  br i1 %7, label %26, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sg_table, ptr %12, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %10, ptr noundef %13, i32 noundef %15, i32 noundef %5) #6
  br label %26

16:                                               ; preds = %2
  %17 = icmp eq i32 %5, 2
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sg_table, ptr %22, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %20, ptr noundef %23, i32 noundef %25, i32 noundef %5) #6
  br label %26

26:                                               ; preds = %18, %16, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_noncontiguous(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_need_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_vmap_noncontiguous(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_noncontiguous(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_vunmap_noncontiguous(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_noncontiguous(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @snd_dma_noncoherent_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @dma_alloc_pages(ptr noundef %4, i32 noundef %1, ptr noundef %5, i32 noundef %7, i32 noundef 339136) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @page_address(ptr noundef nonnull %8) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = load i32, ptr %5, align 4
  %16 = tail call zeroext i1 @dma_need_sync(ptr noundef %14, i32 noundef %15) #6
  %17 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 2
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 4
  br label %19

19:                                               ; preds = %13, %10, %2
  %20 = phi ptr [ %11, %13 ], [ null, %10 ], [ null, %2 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_noncoherent_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %7 to i32
  %14 = add i32 %13, 1073741824
  %15 = lshr i32 %14, 12
  %16 = getelementptr %struct.page, ptr %12, i32 %15
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef %5, ptr noundef %16, i32 noundef %9, i32 noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_dma_noncoherent_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @vm_get_page_prot(i32 noundef %4) #6
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %1, align 4
  %12 = sub i32 %10, %11
  %13 = load ptr, ptr @mem_map, align 4
  %14 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = add i32 %16, 1073741824
  %18 = lshr i32 %17, 12
  %19 = getelementptr %struct.page, ptr %13, i32 %18
  %20 = tail call i32 @dma_mmap_pages(ptr noundef %8, ptr noundef %1, i32 noundef %12, ptr noundef %19) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_dma_noncoherent_sync(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  br i1 %3, label %6, label %15

6:                                                ; preds = %2
  %7 = icmp eq i32 %5, 1
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %5) #6
  br label %24

15:                                               ; preds = %2
  %16 = icmp eq i32 %5, 2
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.snd_dma_device, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %5) #6
  br label %24

24:                                               ; preds = %17, %15, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
