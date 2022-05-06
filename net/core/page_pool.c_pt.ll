; ModuleID = '/llk/IR/net/core/page_pool.c_pt.bc'
source_filename = "../net/core/page_pool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_alloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_release_page:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_release_page\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_release_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_put_page:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_put_page\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_put_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_put_page_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_put_page_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_put_page_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_alloc_frag:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_alloc_frag\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_alloc_frag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_update_nid:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_update_nid\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_update_nid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_pool_return_skb_page:\09\09\09\09\09"
module asm "\09.asciz \09\22page_pool_return_skb_page\22\09\09\09\09\09"
module asm "__kstrtabns_page_pool_return_skb_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.page_pool = type { %struct.page_pool_params, %struct.delayed_work, ptr, i32, i32, i32, i32, ptr, i32, i32, [12 x i8], %struct.pp_alloc_cache, [60 x i8], %struct.ptr_ring, %struct.atomic_t, %struct.refcount_struct, i64, [48 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.pp_alloc_cache = type { i32, [128 x ptr] }
%struct.ptr_ring = type { i32, %struct.spinlock, [56 x i8], i32, i32, %struct.spinlock, [52 x i8], i32, i32, ptr, [52 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_mem_info = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"\014%s() gave up with errno %d\0A\00", align 1
@__func__.page_pool_create = private unnamed_addr constant [17 x i8] c"page_pool_create\00", align 1
@__kstrtab_page_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_create to i32), ptr @__kstrtab_page_pool_create, ptr @__kstrtabns_page_pool_create }, section "___ksymtab+page_pool_create", align 4
@__kstrtab_page_pool_alloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_alloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_alloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_alloc_pages to i32), ptr @__kstrtab_page_pool_alloc_pages, ptr @__kstrtabns_page_pool_alloc_pages }, section "___ksymtab+page_pool_alloc_pages", align 4
@__kstrtab_page_pool_release_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_release_page = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_release_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_release_page to i32), ptr @__kstrtab_page_pool_release_page, ptr @__kstrtabns_page_pool_release_page }, section "___ksymtab+page_pool_release_page", align 4
@__kstrtab_page_pool_put_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_put_page = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_put_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_put_page to i32), ptr @__kstrtab_page_pool_put_page, ptr @__kstrtabns_page_pool_put_page }, section "___ksymtab+page_pool_put_page", align 4
@__kstrtab_page_pool_put_page_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_put_page_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_put_page_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_put_page_bulk to i32), ptr @__kstrtab_page_pool_put_page_bulk, ptr @__kstrtabns_page_pool_put_page_bulk }, section "___ksymtab+page_pool_put_page_bulk", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"net/core/page_pool.c\00", align 1
@__kstrtab_page_pool_alloc_frag = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_alloc_frag = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_alloc_frag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_alloc_frag to i32), ptr @__kstrtab_page_pool_alloc_frag, ptr @__kstrtabns_page_pool_alloc_frag }, section "___ksymtab+page_pool_alloc_frag", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_page_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_destroy to i32), ptr @__kstrtab_page_pool_destroy, ptr @__kstrtabns_page_pool_destroy }, section "___ksymtab+page_pool_destroy", align 4
@__kstrtab_page_pool_update_nid = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_update_nid = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_update_nid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_update_nid to i32), ptr @__kstrtab_page_pool_update_nid, ptr @__kstrtabns_page_pool_update_nid }, section "___ksymtab+page_pool_update_nid", align 4
@__kstrtab_page_pool_return_skb_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_pool_return_skb_page = external dso_local constant [0 x i8], align 1
@__ksymtab_page_pool_return_skb_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_pool_return_skb_page to i32), ptr @__kstrtab_page_pool_return_skb_page, ptr @__kstrtabns_page_pool_return_skb_page }, section "___ksymtab+page_pool_return_skb_page", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_page_pool_state_hold = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_page_pool_state_release = external dso_local global %struct.tracepoint, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"include/net/page_pool.h\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"\012%s() page_pool refcnt %d violation\0A\00", align 1
@__func__.page_pool_empty_ring = private unnamed_addr constant [21 x i8] c"page_pool_empty_ring\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Negative(%d) inflight packet-pages\00", align 1
@__tracepoint_page_pool_release = external dso_local global %struct.tracepoint, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"\014%s() stalled pool shutdown %d inflight %d sec\0A\00", align 1
@__func__.page_pool_release_retry = private unnamed_addr constant [24 x i8] c"page_pool_release_retry\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_page_pool_update_nid = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_page_pool_alloc_frag, ptr @__ksymtab_page_pool_alloc_pages, ptr @__ksymtab_page_pool_create, ptr @__ksymtab_page_pool_destroy, ptr @__ksymtab_page_pool_put_page, ptr @__ksymtab_page_pool_put_page_bulk, ptr @__ksymtab_page_pool_release_page, ptr @__ksymtab_page_pool_return_skb_page, ptr @__ksymtab_page_pool_update_nid], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_pool_create(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 960) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(40) %3, ptr noundef align 4 dereferenceable(40) %0, i32 40, i1 false) #13
  %6 = load i32, ptr %3, align 64
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %8, label %54

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1024, i32 %10
  %13 = icmp ugt i32 %12, 32768
  br i1 %13, label %54, label %14

14:                                               ; preds = %8
  %15 = and i32 %6, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %54 [
    i32 2, label %20
    i32 0, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = and i32 %6, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %26

23:                                               ; preds = %14
  %24 = and i32 %6, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %26, %23, %20
  %31 = shl nuw nsw i32 %12, 2
  %32 = tail call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 3520, i32 noundef -1) #14
  %33 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 9
  store ptr %32, ptr %33, align 8
  %34 = icmp eq ptr %32, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13
  %37 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 7
  store i32 %12, ptr %37, align 64
  %38 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 8
  %39 = icmp ult i32 %12, 64
  %40 = select i1 %39, i32 1, i32 32
  store i32 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 4
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 3
  store i32 0, ptr %42, align 64
  store i32 0, ptr %36, align 64
  %43 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 13, i32 5
  store i32 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 14
  store volatile i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.page_pool, ptr %3, i32 0, i32 15
  store volatile i32 1, ptr %46, align 4
  %47 = load i32, ptr %3, align 64
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 4
  %52 = load ptr, ptr %51, align 16
  %53 = tail call ptr @get_device(ptr noundef %52) #13
  br label %58

54:                                               ; preds = %30, %26, %23, %17, %8, %5
  %55 = phi i32 [ -12, %30 ], [ -22, %23 ], [ -22, %26 ], [ -22, %17 ], [ -7, %8 ], [ -22, %5 ]
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.page_pool_create, i32 noundef %55) #15
  tail call void @kfree(ptr noundef nonnull %3) #13
  %57 = inttoptr i32 %55 to ptr
  br label %58

58:                                               ; preds = %54, %50, %35, %1
  %59 = phi ptr [ %57, %54 ], [ inttoptr (i32 -12 to ptr), %1 ], [ %3, %35 ], [ %3, %50 ]
  ret ptr %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_pool_alloc_pages(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %2
  %7 = add i32 %4, -1
  store i32 %7, ptr %3, align 64
  %8 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %7
  %9 = load ptr, ptr %8, align 4
  br label %12

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @page_pool_refill_alloc_cache(ptr noundef %0) #13
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %9, %6 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @__page_pool_alloc_pages_slow(ptr noundef %0, i32 noundef %1)
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ %13, %12 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__page_pool_alloc_pages_slow(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 64
  %4 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !9

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @__page_pool_alloc_page_order(ptr noundef %0, i32 noundef %1)
  br label %96

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !9

13:                                               ; preds = %9
  %14 = add i32 %11, -1
  store i32 %14, ptr %10, align 64
  %15 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %14
  %16 = load ptr, ptr %15, align 4
  br label %96

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %18, i8 0, i32 256, i1 false)
  %19 = tail call i32 @__alloc_pages_bulk(i32 noundef %1, i32 noundef 0, ptr noundef null, i32 noundef 64, ptr noundef null, ptr noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %96, label %21, !prof !8

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %21
  %24 = and i32 %3, 1
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %27 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 5
  %28 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 7
  %30 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 8
  %31 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 9
  %32 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 5
  br label %33

33:                                               ; preds = %86, %23
  %34 = phi i32 [ 0, %23 ], [ %87, %86 ]
  %35 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %34
  %36 = load ptr, ptr %35, align 4
  br i1 %25, label %56, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 16
  %39 = load i32, ptr %4, align 4
  %40 = shl i32 4096, %39
  %41 = load i32, ptr %27, align 4
  %42 = tail call i32 @dma_map_page_attrs(ptr noundef %38, ptr noundef %36, i32 noundef 0, i32 noundef %40, i32 noundef %41, i32 noundef 32) #13
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1, i32 0, i32 2
  store i32 %42, ptr %45, align 4
  %46 = load i32, ptr %0, align 64
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %28, align 8
  %51 = load ptr, ptr %26, align 16
  %52 = load i32, ptr %29, align 4
  %53 = load i32, ptr %27, align 4
  %54 = add i32 %52, %42
  tail call void @dma_sync_single_for_device(ptr noundef %51, i32 noundef %54, i32 noundef %50, i32 noundef %53) #13
  br label %56

55:                                               ; preds = %37
  tail call fastcc void @put_page(ptr noundef %36)
  br label %86

56:                                               ; preds = %49, %44, %33
  %57 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %58 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %0, ptr %58, align 4
  %59 = load i32, ptr %57, align 4
  %60 = or i32 %59, 64
  store i32 %60, ptr %57, align 4
  %61 = load ptr, ptr %30, align 32
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %31, align 4
  tail call void %61(ptr noundef %36, ptr noundef %64) #13
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, ptr %10, align 64
  %67 = add i32 %66, 1
  store i32 %67, ptr %10, align 64
  %68 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %66
  store ptr %36, ptr %68, align 4
  %69 = load i32, ptr %32, align 32
  %70 = add i32 %69, 1
  store i32 %70, ptr %32, align 32
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_pool_state_hold, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = tail call ptr @llvm.thread.pointer() #13
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %85 = tail call i32 @__traceiter_page_pool_state_hold(ptr noundef null, ptr noundef %0, ptr noundef %36, i32 noundef %70) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %86

86:                                               ; preds = %84, %73, %65, %55
  %87 = add nuw nsw i32 %34, 1
  %88 = icmp eq i32 %87, %19
  br i1 %88, label %89, label %33

89:                                               ; preds = %86, %21
  %90 = load i32, ptr %10, align 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !8

92:                                               ; preds = %89
  %93 = add i32 %90, -1
  store i32 %93, ptr %10, align 64
  %94 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %93
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %92, %89, %17, %13, %7
  %97 = phi ptr [ %8, %7 ], [ %16, %13 ], [ null, %17 ], [ %95, %92 ], [ null, %89 ]
  ret ptr %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_pool_release_page(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 64
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 4096, %12
  %14 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %8, i32 noundef %13, i32 noundef %15, i32 noundef 32) #13
  store i32 0, ptr %7, align 4
  br label %16

16:                                               ; preds = %6, %2
  %17 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #13, !srcloc !12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #13, !srcloc !13
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_pool_state_release, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = tail call ptr @llvm.thread.pointer() #13
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %36 = tail call i32 @__traceiter_page_pool_state_release(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %21) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %37

37:                                               ; preds = %35, %24, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_pool_put_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = load i32, ptr %0, align 64
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #13, !srcloc !17
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 266, i32 noundef 9, ptr noundef null) #13
  br label %136

17:                                               ; preds = %12
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %136

19:                                               ; preds = %17, %8, %4
  %20 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %60, !prof !9

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %60, !prof !9

29:                                               ; preds = %23
  %30 = load i32, ptr %0, align 64
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %2) #13
  %39 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 16
  %41 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %42, %35
  tail call void @dma_sync_single_for_device(ptr noundef %40, i32 noundef %45, i32 noundef %38, i32 noundef %44) #13
  br label %46

46:                                               ; preds = %33, %29
  br i1 %3, label %47, label %61

47:                                               ; preds = %46
  %48 = tail call ptr @llvm.thread.pointer() #13
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  %55 = load i32, ptr %54, align 64
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %61, label %57, !prof !8

57:                                               ; preds = %53
  %58 = add i32 %55, 1
  store i32 %58, ptr %54, align 64
  %59 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %55
  store ptr %1, ptr %59, align 4
  br label %136

60:                                               ; preds = %23, %19
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef %1) #13
  tail call fastcc void @put_page(ptr noundef %1) #13
  br label %136

61:                                               ; preds = %53, %47, %46
  %62 = icmp eq ptr %1, null
  br i1 %62, label %136, label %63

63:                                               ; preds = %61
  %64 = tail call ptr @llvm.thread.pointer() #13
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13
  %70 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 1
  br i1 %68, label %95, label %71

71:                                               ; preds = %63
  tail call void @_raw_spin_lock(ptr noundef %70) #13
  %72 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 7
  %73 = load i32, ptr %72, align 64
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %91, label %75, !prof !8

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 9
  %77 = load ptr, ptr %76, align 8
  %78 = load i32, ptr %69, align 64
  %79 = getelementptr ptr, ptr %77, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !19
  %83 = load ptr, ptr %76, align 8
  %84 = load i32, ptr %69, align 64
  %85 = add i32 %84, 1
  store i32 %85, ptr %69, align 64
  %86 = getelementptr ptr, ptr %83, i32 %84
  store volatile ptr %1, ptr %86, align 4
  %87 = load i32, ptr %69, align 64
  %88 = load i32, ptr %72, align 64
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %91, label %90, !prof !9

90:                                               ; preds = %82
  store i32 0, ptr %69, align 64
  br label %91

91:                                               ; preds = %90, %82, %75, %71
  %92 = phi i32 [ -28, %75 ], [ -28, %71 ], [ 0, %90 ], [ 0, %82 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %93 = load i16, ptr %70, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  br label %117

95:                                               ; preds = %63
  tail call void @_raw_spin_lock_bh(ptr noundef %70) #13
  %96 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 7
  %97 = load i32, ptr %96, align 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %115, label %99, !prof !8

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 9
  %101 = load ptr, ptr %100, align 8
  %102 = load i32, ptr %69, align 64
  %103 = getelementptr ptr, ptr %101, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !19
  %107 = load ptr, ptr %100, align 8
  %108 = load i32, ptr %69, align 64
  %109 = add i32 %108, 1
  store i32 %109, ptr %69, align 64
  %110 = getelementptr ptr, ptr %107, i32 %108
  store volatile ptr %1, ptr %110, align 4
  %111 = load i32, ptr %69, align 64
  %112 = load i32, ptr %96, align 64
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %115, label %114, !prof !9

114:                                              ; preds = %106
  store i32 0, ptr %69, align 64
  br label %115

115:                                              ; preds = %114, %106, %99, %95
  %116 = phi i32 [ -28, %99 ], [ -28, %95 ], [ 0, %114 ], [ 0, %106 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %70) #13
  br label %117

117:                                              ; preds = %115, %91
  %118 = phi i32 [ %92, %91 ], [ %116, %115 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef nonnull %1) #13
  %121 = load volatile i32, ptr %24, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !9

124:                                              ; preds = %120
  %125 = add i32 %121, -1
  br label %128

126:                                              ; preds = %120
  %127 = ptrtoint ptr %1 to i32
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = inttoptr i32 %129 to ptr
  %131 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #13, !srcloc !12
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #13, !srcloc !17
  %133 = extractvalue { i32, i32 } %132, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  tail call void @__put_page(ptr noundef %130) #13
  br label %136

136:                                              ; preds = %135, %128, %117, %61, %60, %57, %17, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @page_pool_return_page(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !9

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %1 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #13, !srcloc !12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #13, !srcloc !17
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @__put_page(ptr noundef %13) #13
  br label %19

19:                                               ; preds = %18, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_pool_put_page_bulk(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %152

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 5
  br label %10

10:                                               ; preds = %87, %5
  %11 = phi i32 [ 0, %5 ], [ %88, %87 ]
  %12 = phi i32 [ 0, %5 ], [ %89, %87 ]
  %13 = getelementptr ptr, ptr %1, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %14 to i32
  %17 = add i32 %16, 1073741824
  %18 = lshr i32 %17, 12
  %19 = getelementptr %struct.page, ptr %15, i32 %18, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !9

23:                                               ; preds = %10
  %24 = add i32 %20, -1
  br label %28

25:                                               ; preds = %10
  %26 = getelementptr %struct.page, ptr %15, i32 %18
  %27 = ptrtoint ptr %26 to i32
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %0, align 64
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 3
  %36 = load volatile i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #13, !srcloc !12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #13, !srcloc !17
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 266, i32 noundef 9, ptr noundef null) #13
  br label %87

43:                                               ; preds = %38
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %43, %34, %28
  %46 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %47 = load volatile i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %67, !prof !9

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67, !prof !9

55:                                               ; preds = %49
  %56 = load i32, ptr %0, align 64
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %6, align 8
  %63 = load ptr, ptr %7, align 16
  %64 = load i32, ptr %8, align 4
  %65 = load i32, ptr %9, align 4
  %66 = add i32 %64, %61
  tail call void @dma_sync_single_for_device(ptr noundef %63, i32 noundef %66, i32 noundef %62, i32 noundef %65) #13
  br label %82

67:                                               ; preds = %49, %45
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef %30) #13
  %68 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72, !prof !9

72:                                               ; preds = %67
  %73 = add i32 %69, -1
  %74 = inttoptr i32 %73 to ptr
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi ptr [ %30, %67 ], [ %74, %72 ]
  %77 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #13, !srcloc !12
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #13, !srcloc !17
  %79 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  tail call void @__put_page(ptr noundef %76) #13
  br label %87

82:                                               ; preds = %59, %55
  %83 = icmp eq i32 %29, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = add i32 %11, 1
  %86 = getelementptr ptr, ptr %1, i32 %11
  store ptr %30, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %82, %81, %75, %43, %42
  %88 = phi i32 [ %85, %84 ], [ %11, %82 ], [ %11, %43 ], [ %11, %42 ], [ %11, %75 ], [ %11, %81 ]
  %89 = add nuw nsw i32 %12, 1
  %90 = icmp eq i32 %89, %2
  br i1 %90, label %91, label %10

91:                                               ; preds = %87
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %152, label %93, !prof !8

93:                                               ; preds = %91
  %94 = tail call ptr @llvm.thread.pointer() #13
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 256
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 1
  br i1 %98, label %101, label %100

100:                                              ; preds = %93
  tail call void @_raw_spin_lock(ptr noundef %99) #13
  br label %102

101:                                              ; preds = %93
  tail call void @_raw_spin_lock_bh(ptr noundef %99) #13
  br label %102

102:                                              ; preds = %101, %100
  %103 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13
  %104 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 9
  %105 = icmp sgt i32 %88, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 7
  %108 = load i32, ptr %107, align 64
  br label %109

109:                                              ; preds = %130, %106
  %110 = phi i32 [ %108, %106 ], [ %127, %130 ]
  %111 = phi i32 [ 0, %106 ], [ %131, %130 ]
  %112 = getelementptr ptr, ptr %1, i32 %111
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq i32 %110, 0
  br i1 %114, label %133, label %115, !prof !8

115:                                              ; preds = %109
  %116 = load ptr, ptr %104, align 8
  %117 = load i32, ptr %103, align 64
  %118 = getelementptr ptr, ptr %116, i32 %117
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !19
  %122 = load ptr, ptr %104, align 8
  %123 = load i32, ptr %103, align 64
  %124 = add i32 %123, 1
  store i32 %124, ptr %103, align 64
  %125 = getelementptr ptr, ptr %122, i32 %123
  store volatile ptr %113, ptr %125, align 4
  %126 = load i32, ptr %103, align 64
  %127 = load i32, ptr %107, align 64
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %130, label %129, !prof !9

129:                                              ; preds = %121
  store i32 0, ptr %103, align 64
  br label %130

130:                                              ; preds = %129, %121
  %131 = add nuw nsw i32 %111, 1
  %132 = icmp eq i32 %131, %88
  br i1 %132, label %133, label %109

133:                                              ; preds = %130, %115, %109, %102
  %134 = phi i32 [ 0, %102 ], [ %111, %115 ], [ %111, %109 ], [ %88, %130 ]
  %135 = load volatile i32, ptr %95, align 4
  %136 = and i32 %135, 256
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %139 = load i16, ptr %99, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  br label %142

141:                                              ; preds = %133
  tail call void @_raw_spin_unlock_bh(ptr noundef %99) #13
  br label %142

142:                                              ; preds = %141, %138
  %143 = icmp eq i32 %134, %88
  br i1 %143, label %152, label %144, !prof !9

144:                                              ; preds = %142
  %145 = icmp slt i32 %134, %88
  br i1 %145, label %146, label %152

146:                                              ; preds = %146, %144
  %147 = phi i32 [ %150, %146 ], [ %134, %144 ]
  %148 = getelementptr ptr, ptr %1, i32 %147
  %149 = load ptr, ptr %148, align 4
  tail call fastcc void @page_pool_return_page(ptr noundef %0, ptr noundef %149)
  %150 = add i32 %147, 1
  %151 = icmp eq i32 %150, %88
  br i1 %151, label %152, label %146

152:                                              ; preds = %146, %144, %142, %91, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_pool_alloc_frag(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 4096, %6
  %8 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %0, align 64
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  %13 = icmp ult i32 %7, %2
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 566, i32 noundef 9, ptr noundef null) #13
  br label %106

16:                                               ; preds = %4
  %17 = add i32 %2, 63
  %18 = and i32 %17, -64
  %19 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %1, align 4
  %21 = icmp eq ptr %9, null
  br i1 %21, label %79, label %22

22:                                               ; preds = %16
  %23 = add i32 %20, %18
  %24 = icmp ugt i32 %23, %7
  %25 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  br i1 %24, label %27, label %102

27:                                               ; preds = %22
  %28 = sub i32 2147483647, %26
  %29 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #13, !srcloc !12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %28, ptr elementtype(i32) %29) #13, !srcloc !17
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 266, i32 noundef 9, ptr noundef null) #13
  br label %79

34:                                               ; preds = %27
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %36, label %79, !prof !8

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32, ptr %0, align 64
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %98, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %56 = load ptr, ptr %55, align 16
  %57 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %58, %52
  tail call void @dma_sync_single_for_device(ptr noundef %56, i32 noundef %61, i32 noundef %54, i32 noundef %60) #13
  br label %98

62:                                               ; preds = %40, %36
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef nonnull %9) #13
  %63 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67, !prof !9

67:                                               ; preds = %62
  %68 = add i32 %64, -1
  br label %71

69:                                               ; preds = %62
  %70 = ptrtoint ptr %9 to i32
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #13, !srcloc !12
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #13, !srcloc !17
  %76 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  tail call void @__put_page(ptr noundef %73) #13
  br label %79

79:                                               ; preds = %78, %71, %34, %33, %16
  %80 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  %81 = load i32, ptr %80, align 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !8

83:                                               ; preds = %79
  %84 = add i32 %81, -1
  store i32 %84, ptr %80, align 64
  %85 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %84
  %86 = load ptr, ptr %85, align 4
  br label %89

87:                                               ; preds = %79
  %88 = tail call fastcc ptr @page_pool_refill_alloc_cache(ptr noundef %0) #13
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %86, %83 ], [ %88, %87 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = tail call fastcc ptr @__page_pool_alloc_pages_slow(ptr noundef %0, i32 noundef %3) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96, !prof !8

95:                                               ; preds = %92
  store ptr null, ptr %8, align 8
  br label %106

96:                                               ; preds = %92, %89
  %97 = phi ptr [ %93, %92 ], [ %90, %89 ]
  store ptr %97, ptr %8, align 8
  br label %98

98:                                               ; preds = %96, %50, %46
  %99 = phi ptr [ %97, %96 ], [ %9, %50 ], [ %9, %46 ]
  %100 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 8
  store i32 1, ptr %100, align 4
  store i32 0, ptr %1, align 4
  store i32 %18, ptr %19, align 4
  %101 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1, i32 0, i32 3
  store volatile i32 2147483647, ptr %101, align 4
  br label %106

102:                                              ; preds = %22
  %103 = add i32 %26, 1
  store i32 %103, ptr %25, align 4
  %104 = load i32, ptr %1, align 4
  %105 = add i32 %104, %18
  store i32 %105, ptr %19, align 4
  br label %106

106:                                              ; preds = %102, %98, %95, %15
  %107 = phi ptr [ null, %15 ], [ %99, %98 ], [ %9, %102 ], [ null, %95 ]
  ret ptr %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_pool_use_xdp_mem(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !24
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !8

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !9

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #13
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 2
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xdp_mem_info, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 9
  store i32 %17, ptr %18, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_pool_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %59, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !26
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %59, label %10, !prof !9

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #13
  br label %59

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %12 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  store ptr null, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = sub i32 2147483647, %13
  %19 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #13, !srcloc !12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 %18, ptr elementtype(i32) %19) #13, !srcloc !17
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 266, i32 noundef 9, ptr noundef null) #13
  br label %43

24:                                               ; preds = %17
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  tail call void @page_pool_release_page(ptr noundef nonnull %0, ptr noundef nonnull %15) #13
  %27 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !9

31:                                               ; preds = %26
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %26
  %34 = ptrtoint ptr %15 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #13, !srcloc !12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #13, !srcloc !17
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @__put_page(ptr noundef %37) #13
  br label %43

43:                                               ; preds = %42, %35, %24, %23, %11
  %44 = tail call fastcc i32 @page_pool_release(ptr noundef nonnull %0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 3
  store i32 %47, ptr %48, align 8
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %49, 6000
  %51 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 1
  store i32 -32, ptr %52, align 8
  %53 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %53, ptr %53, align 4
  %54 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 1, i32 0, i32 2
  store ptr @page_pool_release_retry, ptr %55, align 4
  %56 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %56, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %57 = load ptr, ptr @system_wq, align 4
  %58 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %57, ptr noundef %52, i32 noundef 100) #13
  br label %59

59:                                               ; preds = %46, %43, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @page_pool_release(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 16
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %30, %5
  %10 = phi i32 [ %31, %30 ], [ %7, %5 ]
  %11 = add i32 %10, -1
  store i32 %11, ptr %6, align 64
  %12 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !9

18:                                               ; preds = %9
  %19 = add i32 %15, -1
  br label %22

20:                                               ; preds = %9
  %21 = ptrtoint ptr %13 to i32
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #13, !srcloc !12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #13, !srcloc !17
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @__put_page(ptr noundef %24) #13
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, ptr %6, align 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %9

33:                                               ; preds = %30
  %34 = load i64, ptr %2, align 8
  br label %35

35:                                               ; preds = %33, %5, %1
  %36 = phi i64 [ %34, %33 ], [ %3, %1 ], [ 0, %5 ]
  %37 = add i64 %36, 1
  store i64 %37, ptr %2, align 8
  %38 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 9
  %39 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %39) #13
  %40 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 7
  %41 = load i32, ptr %40, align 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %111, label %43, !prof !8

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 3
  %45 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 4
  %46 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 8
  br label %47

47:                                               ; preds = %108, %43
  %48 = phi i32 [ %41, %43 ], [ %109, %108 ]
  %49 = load ptr, ptr %38, align 8
  %50 = load i32, ptr %44, align 64
  %51 = getelementptr ptr, ptr %49, i32 %50
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %111, label %54

54:                                               ; preds = %47
  %55 = add i32 %50, 1
  %56 = load i32, ptr %45, align 4
  %57 = sub i32 %55, %56
  %58 = load i32, ptr %46, align 4
  %59 = icmp slt i32 %57, %58
  %60 = icmp slt i32 %55, %48
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %79, label %62, !prof !28

62:                                               ; preds = %54
  %63 = icmp slt i32 %50, %56
  br i1 %63, label %77, label %64, !prof !8

64:                                               ; preds = %62
  %65 = add i32 %50, -1
  store ptr null, ptr %51, align 4
  %66 = load i32, ptr %45, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %75, label %68, !prof !8

68:                                               ; preds = %68, %64
  %69 = phi i32 [ %71, %68 ], [ %65, %64 ]
  %70 = load ptr, ptr %38, align 8
  %71 = add i32 %69, -1
  %72 = getelementptr ptr, ptr %70, i32 %69
  store ptr null, ptr %72, align 4
  %73 = load i32, ptr %45, align 4
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %68, !prof !8

75:                                               ; preds = %68, %64
  %76 = load i32, ptr %40, align 64
  br label %77

77:                                               ; preds = %75, %62
  %78 = phi i32 [ %76, %75 ], [ %48, %62 ]
  store i32 %55, ptr %45, align 4
  br label %79

79:                                               ; preds = %77, %54
  %80 = phi i32 [ %78, %77 ], [ %48, %54 ]
  %81 = icmp slt i32 %55, %80
  br i1 %81, label %83, label %82, !prof !9

82:                                               ; preds = %79
  store i32 0, ptr %45, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i32 [ 0, %82 ], [ %55, %79 ]
  store volatile i32 %84, ptr %44, align 64
  tail call void @_raw_spin_unlock_bh(ptr noundef %39) #13
  %85 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 3
  %86 = load volatile i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load volatile i32, ptr %85, align 4
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.page_pool_empty_ring, i32 noundef %89) #15
  br label %91

91:                                               ; preds = %88, %83
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef nonnull %52) #13
  %92 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !9

96:                                               ; preds = %91
  %97 = add i32 %93, -1
  br label %100

98:                                               ; preds = %91
  %99 = ptrtoint ptr %52 to i32
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #13, !srcloc !12
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #13, !srcloc !17
  %105 = extractvalue { i32, i32 } %104, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  tail call void @__put_page(ptr noundef %102) #13
  br label %108

108:                                              ; preds = %107, %100
  tail call void @_raw_spin_lock_bh(ptr noundef %39) #13
  %109 = load i32, ptr %40, align 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %47, !prof !8

111:                                              ; preds = %108, %47, %35
  tail call void @_raw_spin_unlock_bh(ptr noundef %39) #13
  %112 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 14
  %113 = load volatile i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 5
  %115 = load volatile i32, ptr %114, align 32
  %116 = sub i32 %115, %113
  %117 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_pool_release, i32 0, i32 1), align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %111
  %120 = tail call ptr @llvm.thread.pointer() #13
  %121 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 5
  %124 = getelementptr i32, ptr @__cpu_online_mask, i32 %123
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %122, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %131 = tail call i32 @__traceiter_page_pool_release(ptr noundef null, ptr noundef %0, i32 noundef %116, i32 noundef %115, i32 noundef %113) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %132

132:                                              ; preds = %130, %119, %111
  %133 = icmp slt i32 %116, 0
  br i1 %133, label %134, label %135, !prof !8

134:                                              ; preds = %132
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %116) #13
  br label %151

135:                                              ; preds = %132
  %136 = icmp eq i32 %115, %113
  br i1 %136, label %137, label %151

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  tail call void %139(ptr noundef %0) #13
  br label %142

142:                                              ; preds = %141, %137
  %143 = load ptr, ptr %38, align 8
  tail call void @kvfree(ptr noundef %143) #13
  %144 = load i32, ptr %0, align 64
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %149 = load ptr, ptr %148, align 16
  tail call void @put_device(ptr noundef %149) #13
  br label %150

150:                                              ; preds = %147, %142
  tail call void @kfree(ptr noundef %0) #13
  br label %151

151:                                              ; preds = %150, %135, %134
  ret i32 %116
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @page_pool_release_retry(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = tail call fastcc i32 @page_pool_release(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr i8, ptr %0, i32 52
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr i8, ptr %0, i32 48
  %14 = load i32, ptr %13, align 8
  %15 = sub i32 %12, %14
  %16 = sdiv i32 %15, 100
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.page_pool_release_retry, i32 noundef %3, i32 noundef %16) #15
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = add i32 %18, 6000
  store i32 %19, ptr %7, align 4
  br label %20

20:                                               ; preds = %11, %5
  %21 = load ptr, ptr @system_wq, align 4
  %22 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %0, i32 noundef 100) #13
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_pool_update_nid(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_pool_update_nid, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %17 = tail call i32 @__traceiter_page_pool_update_nid(ptr noundef null, ptr noundef %0, i32 noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 3
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %44, %18
  %24 = phi i32 [ %45, %44 ], [ %21, %18 ]
  %25 = add i32 %24, -1
  store i32 %25, ptr %20, align 64
  %26 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call void @page_pool_release_page(ptr noundef %0, ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !9

32:                                               ; preds = %23
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %23
  %35 = ptrtoint ptr %27 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #13, !srcloc !17
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  tail call void @__put_page(ptr noundef %38) #13
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, ptr %20, align 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %23

47:                                               ; preds = %44, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @page_pool_return_skb_page(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -4
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @page_pool_put_page(ptr noundef %19, ptr noundef %12, i32 noundef -1, i1 noundef zeroext false) #13
  br label %20

20:                                               ; preds = %17, %10
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @page_pool_refill_alloc_cache(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %71, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 3
  %9 = load volatile i32, ptr %8, align 64
  %10 = getelementptr ptr, ptr %7, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 4
  %15 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 13, i32 8
  %16 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 11
  br label %17

17:                                               ; preds = %60, %13
  %18 = phi i32 [ %3, %13 ], [ %61, %60 ]
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %8, align 64
  %21 = getelementptr ptr, ptr %19, i32 %20
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %17
  %25 = add i32 %20, 1
  %26 = load i32, ptr %14, align 4
  %27 = sub i32 %25, %26
  %28 = load i32, ptr %15, align 4
  %29 = icmp slt i32 %27, %28
  %30 = icmp slt i32 %25, %18
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %49, label %32, !prof !28

32:                                               ; preds = %24
  %33 = icmp slt i32 %20, %26
  br i1 %33, label %47, label %34, !prof !8

34:                                               ; preds = %32
  %35 = add i32 %20, -1
  store ptr null, ptr %21, align 4
  %36 = load i32, ptr %14, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %45, label %38, !prof !8

38:                                               ; preds = %38, %34
  %39 = phi i32 [ %41, %38 ], [ %35, %34 ]
  %40 = load ptr, ptr %6, align 8
  %41 = add i32 %39, -1
  %42 = getelementptr ptr, ptr %40, i32 %39
  store ptr null, ptr %42, align 4
  %43 = load i32, ptr %14, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %38, !prof !8

45:                                               ; preds = %38, %34
  %46 = load i32, ptr %2, align 64
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %46, %45 ], [ %18, %32 ]
  store i32 %25, ptr %14, align 4
  br label %49

49:                                               ; preds = %47, %24
  %50 = phi i32 [ %48, %47 ], [ %18, %24 ]
  %51 = icmp slt i32 %25, %50
  br i1 %51, label %53, label %52, !prof !9

52:                                               ; preds = %49
  store i32 0, ptr %14, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ 0, %52 ], [ %25, %49 ]
  store volatile i32 %54, ptr %8, align 64
  %55 = load i32, ptr %16, align 64
  %56 = add i32 %55, 1
  store i32 %56, ptr %16, align 64
  %57 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %55
  store ptr %22, ptr %57, align 4
  %58 = load i32, ptr %16, align 64
  %59 = icmp ult i32 %58, 64
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, ptr %2, align 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %17, !prof !8

63:                                               ; preds = %60, %17
  %64 = load i32, ptr %16, align 64
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66, !prof !8

66:                                               ; preds = %63, %53
  %67 = phi i32 [ %64, %63 ], [ %58, %53 ]
  %68 = add i32 %67, -1
  store i32 %68, ptr %16, align 64
  %69 = getelementptr %struct.page_pool, ptr %0, i32 0, i32 11, i32 1, i32 %68
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %66, %63, %5, %1
  %72 = phi ptr [ null, %5 ], [ %70, %66 ], [ null, %63 ], [ null, %1 ]
  ret ptr %72
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__page_pool_alloc_page_order(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = or i32 %1, 262144
  %4 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, -1
  %9 = select i1 %8, i32 0, i32 %5
  %10 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef %7, i32 noundef %9, ptr noundef null) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %69, label %12, !prof !8

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 16
  %19 = load i32, ptr %6, align 4
  %20 = shl i32 4096, %19
  %21 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %20, i32 noundef %22, i32 noundef 32) #13
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %38, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 2
  store i32 %23, ptr %26, align 4
  %27 = load i32, ptr %0, align 64
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = load ptr, ptr %17, align 16
  %34 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %21, align 4
  %37 = add i32 %35, %23
  tail call void @dma_sync_single_for_device(ptr noundef %33, i32 noundef %37, i32 noundef %32, i32 noundef %36) #13
  br label %39

38:                                               ; preds = %16
  tail call fastcc void @put_page(ptr noundef nonnull %10)
  br label %69

39:                                               ; preds = %30, %25, %12
  %40 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %0, ptr %41, align 4
  %42 = load i32, ptr %40, align 4
  %43 = or i32 %42, 64
  store i32 %43, ptr %40, align 4
  %44 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 32
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.page_pool_params, ptr %0, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  tail call void %45(ptr noundef nonnull %10, ptr noundef %49) #13
  br label %50

50:                                               ; preds = %47, %39
  %51 = getelementptr inbounds %struct.page_pool, ptr %0, i32 0, i32 5
  %52 = load i32, ptr %51, align 32
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 32
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_pool_state_hold, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = tail call ptr @llvm.thread.pointer() #13
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %68 = tail call i32 @__traceiter_page_pool_state_hold(ptr noundef null, ptr noundef %0, ptr noundef nonnull %10, i32 noundef %53) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %69

69:                                               ; preds = %67, %56, %50, %38, %2
  %70 = phi ptr [ null, %38 ], [ null, %2 ], [ %10, %50 ], [ %10, %56 ], [ %10, %67 ]
  ret ptr %70
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !17
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__alloc_pages_bulk(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_page_pool_state_hold(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_page_pool_state_release(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_page_pool_release(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_page_pool_update_nid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

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
!10 = !{i64 2153500645}
!11 = !{i64 2153500829}
!12 = !{i64 428814, i64 2147918785, i64 2147918811, i64 2147918858, i64 2147918880, i64 2147918908, i64 2147918928}
!13 = !{i64 2147931681, i64 2147931713, i64 2147931742, i64 2147931776, i64 2147931807, i64 2147931830}
!14 = !{i64 2153483240}
!15 = !{i64 2153483436}
!16 = !{i64 2148031652}
!17 = !{i64 2147934038, i64 2147934070, i64 2147934099, i64 2147934133, i64 2147934164, i64 2147934187}
!18 = !{i64 2148031855}
!19 = !{i64 2152485915}
!20 = !{i64 2148942765}
!21 = !{i64 2148938589}
!22 = !{i64 2148938664, i64 2148938691, i64 2148938738, i64 2148938760, i64 2148938788, i64 2148938808}
!23 = !{i64 2148965768}
!24 = !{i64 2147932455, i64 2147932487, i64 2147932516, i64 2147932550, i64 2147932581, i64 2147932604}
!25 = !{i64 2148032653}
!26 = !{i64 2147934812, i64 2147934844, i64 2147934873, i64 2147934907, i64 2147934938, i64 2147934961}
!27 = !{i64 2149292117}
!28 = !{!"branch_weights", i32 4000000, i32 4001}
!29 = !{i64 2153465898}
!30 = !{i64 2153466102}
!31 = !{i64 2153521543}
!32 = !{i64 2153521721}
