; ModuleID = '/llk/IR/mm/swap_state.c_pt.bc'
source_filename = "../mm/swap_state.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.vm_event_state = type { [71 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.71, %struct.atomic_t }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.anon.5 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.78, [64 x ptr], %union.anon.79 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { [3 x [2 x i32]] }
%struct.percpu_ref = type { i32, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.10, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.vma_swap_readahead = type { i16, i16, i16, [8 x i32] }
%struct.anon.12 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.12, i32, ptr, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr }
%union.anon.13 = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [25 x i8] c"%lu pages in swap cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Swap cache stats: add %lu, delete %lu, find %lu/%lu\0A\00", align 1
@swap_cache_info.0 = internal unnamed_addr global i32 0, align 4
@swap_cache_info.1 = internal unnamed_addr global i32 0, align 4
@swap_cache_info.2 = internal unnamed_addr global i32 0, align 4
@swap_cache_info.3 = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Free swap  = %ldkB\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Total swap = %lukB\0A\00", align 1
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@swapper_spaces = dso_local local_unnamed_addr global [30 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@swapin_readahead_hits = internal global %struct.atomic_t { i32 4 }, align 4
@swap_slot_cache_enabled = external dso_local local_unnamed_addr global i8, align 1
@swap_aops = internal constant %struct.address_space_operations { ptr @swap_writepage, ptr null, ptr null, ptr @swap_set_page_dirty, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_swap_state__295_911_swap_init_sysfs4 = internal global ptr @swap_init_sysfs, section ".initcall4.init", align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@enable_vma_readahead = internal global i8 1, section ".data..read_mostly", align 1
@nr_rotate_swap = external dso_local global %struct.atomic_t, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@swapin_nr_pages.prev_offset = internal global i32 0, align 4
@swapin_nr_pages.last_readahead_pages = internal global %struct.atomic_t zeroinitializer, align 4
@page_cluster = external dso_local global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"\013failed to create swap kobject\0A\00", align 1
@swap_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @swap_attrs, ptr null }, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"\013failed to register swap group\0A\00", align 1
@swap_attrs = internal global [2 x ptr] [ptr @vma_ra_enabled_attr, ptr null], align 4
@vma_ra_enabled_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @vma_ra_enabled_show, ptr @vma_ra_enabled_store }, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"vma_ra_enabled\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_swap_state__295_911_swap_init_sysfs4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_swap_cache_info() local_unnamed_addr #0 {
  %1 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #13
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2) #14
  %4 = load i32, ptr @swap_cache_info.0, align 4
  %5 = load i32, ptr @swap_cache_info.1, align 4
  %6 = load i32, ptr @swap_cache_info.2, align 4
  %7 = load i32, ptr @swap_cache_info.3, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #14
  %9 = load volatile i32, ptr @nr_swap_pages, align 4
  %10 = shl i32 %9, 2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %10) #14
  %12 = load i32, ptr @total_swap_pages, align 4
  %13 = shl i32 %12, 2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_shadow_from_swap_cache([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = lshr i32 %2, 26
  %4 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %2, 67108863
  %7 = lshr i32 %6, 14
  %8 = getelementptr %struct.address_space, ptr %5, i32 %7, i32 1
  %9 = tail call ptr @xa_load(ptr noundef %8, i32 noundef %6) #13
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr null, ptr %9
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_to_swap_cache(ptr noundef %0, [1 x i32] %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.xa_state, align 4
  %6 = extractvalue [1 x i32] %1, 0
  %7 = lshr i32 %6, 26
  %8 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %6, 67108863
  %11 = lshr i32 %10, 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %12 = getelementptr %struct.address_space, ptr %9, i32 %11, i32 1
  store ptr %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %19 = getelementptr inbounds %struct.anon.5, ptr %18, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %17, %4
  %23 = phi i32 [ %21, %17 ], [ 0, %4 ]
  %24 = lshr i32 %10, %23
  %25 = load volatile i32, ptr %0, align 4
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %30 = getelementptr inbounds %struct.anon.5, ptr %29, i32 0, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i32 [ %32, %28 ], [ 0, %22 ]
  %35 = shl i32 %24, %34
  store i32 %35, ptr %13, align 4
  %36 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %37 = load volatile i32, ptr %0, align 4
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %42 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i8 [ %43, %40 ], [ 0, %33 ]
  %46 = load volatile i32, ptr %0, align 4
  %47 = and i32 %46, 65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %51 = getelementptr inbounds %struct.anon.5, ptr %50, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = urem i8 %52, 6
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i8 [ %53, %49 ], [ 0, %44 ]
  %56 = sub i8 %45, %55
  store i8 %56, ptr %36, align 4
  %57 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 3
  %58 = load volatile i32, ptr %0, align 4
  %59 = and i32 %58, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %63 = getelementptr inbounds %struct.anon.5, ptr %62, i32 0, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = urem i8 %64, 6
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %61, %54
  %68 = phi i32 [ %66, %61 ], [ 0, %54 ]
  %69 = shl nsw i32 -1, %68
  %70 = trunc i32 %69 to i8
  %71 = xor i8 %70, -1
  store i8 %71, ptr %57, align 1
  %72 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  store i8 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 5
  store i8 0, ptr %73, align 1
  %74 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store ptr inttoptr (i32 3 to ptr), ptr %74, align 4
  %75 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #13, !srcloc !9
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #13, !srcloc !10
  %79 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !11

83:                                               ; preds = %67
  %84 = add i32 %80, -1
  br label %87

85:                                               ; preds = %67
  %86 = ptrtoint ptr %0 to i32
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = inttoptr i32 %88 to ptr
  tail call void @_set_bit(i32 noundef 10, ptr noundef %89) #13
  %90 = icmp ne ptr %3, null
  %91 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %92 = getelementptr %struct.address_space, ptr %9, i32 %11, i32 7
  br label %93

93:                                               ; preds = %143, %87
  %94 = phi ptr [ %144, %143 ], [ %12, %87 ]
  call void @_raw_spin_lock_irq(ptr noundef %94) #13
  call void @xas_create_range(ptr noundef nonnull %5) #13
  %95 = load ptr, ptr %74, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 2
  %99 = icmp ult ptr %95, inttoptr (i32 -16378 to ptr)
  %100 = icmp ult ptr %95, inttoptr (i32 4 to ptr)
  %101 = or i1 %99, %98
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %93
  %104 = call ptr @xas_load(ptr noundef nonnull %5) #13
  %105 = ptrtoint ptr %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  %108 = and i1 %90, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store ptr %104, ptr %3, align 4
  br label %110

110:                                              ; preds = %109, %103
  store i32 %6, ptr %91, align 4
  %111 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef %0) #13
  %112 = load ptr, ptr %74, align 4
  %113 = ptrtoint ptr %112 to i32
  %114 = and i32 %113, 3
  %115 = icmp ne i32 %114, 0
  %116 = icmp eq ptr %112, null
  %117 = or i1 %116, %115
  br i1 %117, label %124, label %118, !prof !12

118:                                              ; preds = %110
  %119 = load i8, ptr %112, align 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %124, !prof !11

121:                                              ; preds = %118
  %122 = load i8, ptr %72, align 2
  %123 = icmp eq i8 %122, 63
  br i1 %123, label %124, label %126, !prof !12

124:                                              ; preds = %121, %118, %110
  %125 = call ptr @__xas_next(ptr noundef nonnull %5) #13
  br label %133

126:                                              ; preds = %121
  %127 = load i32, ptr %13, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %13, align 4
  %129 = add i8 %122, 1
  store i8 %129, ptr %72, align 2
  %130 = zext i8 %129 to i32
  %131 = getelementptr %struct.xa_node, ptr %112, i32 0, i32 7, i32 %130
  %132 = load volatile ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %126, %124
  %134 = load i32, ptr %92, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %92, align 4
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef 1) #13
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 39, i32 noundef 1) #13
  %136 = load i32, ptr @swap_cache_info.0, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr @swap_cache_info.0, align 4
  br label %138

138:                                              ; preds = %133, %93
  %139 = load ptr, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %140 = load i16, ptr %139, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %139, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %142 = call zeroext i1 @xas_nomem(ptr noundef nonnull %5, i32 noundef %2) #13
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load ptr, ptr %5, align 4
  br label %93

145:                                              ; preds = %138
  %146 = load ptr, ptr %74, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = and i32 %147, 3
  %149 = icmp ne i32 %148, 2
  %150 = icmp ult ptr %146, inttoptr (i32 -16378 to ptr)
  %151 = icmp ult ptr %146, inttoptr (i32 4 to ptr)
  %152 = or i1 %150, %149
  %153 = or i1 %151, %152
  br i1 %153, label %174, label %154

154:                                              ; preds = %145
  %155 = load volatile i32, ptr %79, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158, !prof !11

158:                                              ; preds = %154
  %159 = add i32 %155, -1
  br label %162

160:                                              ; preds = %154
  %161 = ptrtoint ptr %0 to i32
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  %164 = inttoptr i32 %163 to ptr
  call void @_clear_bit(i32 noundef 10, ptr noundef %164) #13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #13, !srcloc !9
  %165 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #13, !srcloc !18
  %166 = load ptr, ptr %74, align 4
  %167 = ptrtoint ptr %166 to i32
  %168 = and i32 %167, 3
  %169 = icmp eq i32 %168, 2
  %170 = icmp uge ptr %166, inttoptr (i32 -16378 to ptr)
  %171 = and i1 %170, %169
  %172 = ashr i32 %167, 2
  %173 = select i1 %171, i32 %172, i32 0
  br label %174

174:                                              ; preds = %162, %145
  %175 = phi i32 [ %173, %162 ], [ 0, %145 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %175
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_create_range(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__delete_from_swap_cache(ptr noundef %0, [1 x i32] %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = extractvalue [1 x i32] %1, 0
  %6 = lshr i32 %5, 26
  %7 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %5, 67108863
  %10 = lshr i32 %9, 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %11 = getelementptr %struct.address_space, ptr %8, i32 %10, i32 1
  store ptr %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %14 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %15 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %13, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %15, align 4
  %16 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %17, align 4
  %18 = call ptr @xas_store(ptr noundef nonnull %4, ptr noundef %2) #13
  %19 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %19, align 4
  %20 = load ptr, ptr %15, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq ptr %20, null
  %25 = or i1 %24, %23
  br i1 %25, label %32, label %26, !prof !12

26:                                               ; preds = %3
  %27 = load i8, ptr %20, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32, !prof !11

29:                                               ; preds = %26
  %30 = load i8, ptr %14, align 2
  %31 = icmp eq i8 %30, 63
  br i1 %31, label %32, label %34, !prof !12

32:                                               ; preds = %29, %26, %3
  %33 = call ptr @__xas_next(ptr noundef nonnull %4) #13
  br label %41

34:                                               ; preds = %29
  %35 = load i32, ptr %12, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %12, align 4
  %37 = add i8 %30, 1
  store i8 %37, ptr %14, align 2
  %38 = zext i8 %37 to i32
  %39 = getelementptr %struct.xa_node, ptr %20, i32 0, i32 7, i32 %38
  %40 = load volatile ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %34, %32
  %42 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !11

46:                                               ; preds = %41
  %47 = add i32 %43, -1
  br label %50

48:                                               ; preds = %41
  %49 = ptrtoint ptr %0 to i32
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = inttoptr i32 %51 to ptr
  call void @_clear_bit(i32 noundef 10, ptr noundef %52) #13
  %53 = getelementptr %struct.address_space, ptr %8, i32 %10, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 4
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef -1) #13
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 39, i32 noundef -1) #13
  %56 = load i32, ptr @swap_cache_info.1, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr @swap_cache_info.1, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_to_swap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @get_swap_page(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = insertvalue [1 x i32] poison, i32 %2, 0
  %6 = tail call i32 @add_to_swap_cache(ptr noundef %0, [1 x i32] %5, i32 noundef 532512, ptr noundef null)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @set_page_dirty(ptr noundef %0) #13
  br label %11

10:                                               ; preds = %4
  tail call void @put_swap_page(ptr noundef %0, [1 x i32] %5) #13
  br label %11

11:                                               ; preds = %10, %8, %1
  %12 = phi i32 [ 0, %10 ], [ 1, %8 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_swap_page(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delete_from_swap_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = insertvalue [1 x i32] poison, i32 %3, 0
  %5 = lshr i32 %3, 26
  %6 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %3, 14
  %9 = and i32 %8, 4095
  %10 = getelementptr %struct.address_space, ptr %7, i32 %9, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #13
  tail call void @__delete_from_swap_cache(ptr noundef %0, [1 x i32] %4, ptr noundef null)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  tail call void @put_swap_page(ptr noundef %0, [1 x i32] %4) #13
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_shadow_from_swap_cache(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = and i32 %0, 63
  %6 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %5
  %7 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  %12 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  br label %13

13:                                               ; preds = %67, %3
  %14 = phi i32 [ %1, %3 ], [ %71, %67 ]
  %15 = load ptr, ptr %6, align 4
  %16 = lshr i32 %14, 14
  %17 = and i32 %16, 4095
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %18 = getelementptr %struct.address_space, ptr %15, i32 %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 %14, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  store ptr null, ptr %11, align 4
  store ptr null, ptr %12, align 4
  call void @_raw_spin_lock_irq(ptr noundef %18) #13
  %19 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %2) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21

21:                                               ; preds = %64, %13
  %22 = phi ptr [ %65, %64 ], [ %19, %13 ]
  %23 = ptrtoint ptr %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call ptr @xas_store(ptr noundef nonnull %4, ptr noundef null) #13
  br label %28

28:                                               ; preds = %26, %21
  %29 = load ptr, ptr %10, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq ptr %29, null
  %34 = or i1 %33, %32
  br i1 %34, label %62, label %35, !prof !12

35:                                               ; preds = %28
  %36 = load i8, ptr %29, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %62, !prof !11

38:                                               ; preds = %35
  %39 = load i8, ptr %9, align 2
  %40 = zext i8 %39 to i32
  %41 = load i32, ptr %7, align 4
  %42 = and i32 %41, 63
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %44, label %62, !prof !11

44:                                               ; preds = %58, %38
  %45 = phi i8 [ %59, %58 ], [ %39, %38 ]
  %46 = phi i32 [ %60, %58 ], [ %41, %38 ]
  %47 = icmp uge i32 %46, %2
  %48 = icmp eq i8 %45, 63
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %62, label %50, !prof !19

50:                                               ; preds = %44
  %51 = zext i8 %45 to i32
  %52 = add nuw nsw i32 %51, 1
  %53 = getelementptr %struct.xa_node, ptr %29, i32 0, i32 7, i32 %52
  %54 = load volatile ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %62, label %58, !prof !12

58:                                               ; preds = %50
  %59 = add i8 %45, 1
  store i8 %59, ptr %9, align 2
  %60 = add nuw i32 %46, 1
  store i32 %60, ptr %7, align 4
  %61 = icmp eq ptr %54, null
  br i1 %61, label %44, label %64

62:                                               ; preds = %50, %44, %38, %35, %28
  %63 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %2) #13
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %54, %58 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %21

67:                                               ; preds = %64, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %68 = load i16, ptr %18, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %70 = add i32 %14, 16384
  %71 = and i32 %70, -16384
  %72 = icmp ugt i32 %71, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br i1 %72, label %73, label %13

73:                                               ; preds = %67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_swap_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !11

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i1 @page_mapped(ptr noundef %0) #13
  br i1 %21, label %43, label %22

22:                                               ; preds = %20
  %23 = load volatile i32, ptr %2, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %22
  %27 = add i32 %23, -1
  br label %30

28:                                               ; preds = %22
  %29 = ptrtoint ptr %0 to i32
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = inttoptr i32 %31 to ptr
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #13, !srcloc !9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #13, !srcloc !20
  %38 = extractvalue { i32, i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 @try_to_free_swap(ptr noundef %0) #13
  tail call void @unlock_page(ptr noundef %0) #13
  br label %43

43:                                               ; preds = %41, %36, %30, %20, %16, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_page_and_swap_cache(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @free_swap_cache(ptr noundef %0)
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !11

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
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !23
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pages_and_swap_cache(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @lru_add_drain() #13
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call void @free_swap_cache(ptr noundef %7)
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  tail call void @release_pages(ptr noundef %0, i32 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_swap_cache([1 x i32] %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @get_swap_device([1 x i32] %0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %3
  %7 = extractvalue [1 x i32] %0, 0
  %8 = lshr i32 %7, 26
  %9 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = and i32 %7, 67108863
  %12 = lshr i32 %11, 14
  %13 = getelementptr %struct.address_space, ptr %10, i32 %12
  %14 = tail call ptr @pagecache_get_page(ptr noundef %13, i32 noundef %11, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %15 = load volatile i32, ptr %4, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27, !prof !11

18:                                               ; preds = %6
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !26
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #6, !srcloc !27
  %23 = add i32 %22, %15
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #13, !srcloc !28
  br label %37

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.percpu_ref, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #13, !srcloc !9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #13, !srcloc !23
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !12

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr inbounds %struct.percpu_ref_data, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef nonnull %4) #13
  br label %37

37:                                               ; preds = %33, %27, %18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %38 = load i32, ptr @swap_cache_info.3, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr @swap_cache_info.3, align 4
  %40 = icmp eq ptr %14, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %37
  %42 = load volatile i8, ptr @enable_vma_readahead, align 1, !range !30
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load volatile i32, ptr @nr_rotate_swap, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ true, %41 ], [ %46, %44 ]
  %49 = load i32, ptr @swap_cache_info.2, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr @swap_cache_info.2, align 4
  %51 = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef nonnull %14) #13
  %52 = icmp eq i32 %51, 0
  %53 = icmp eq ptr %1, null
  %54 = select i1 %53, i1 true, i1 %48
  br i1 %54, label %68, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 16
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 4, i32 %57
  %60 = and i32 %59, 4032
  %61 = and i32 %59, 63
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 62)
  %63 = add nuw nsw i32 %62, 1
  %64 = select i1 %52, i32 %61, i32 %63
  %65 = and i32 %2, -4096
  %66 = or i32 %60, %65
  %67 = or i32 %66, %64
  store volatile i32 %67, ptr %56, align 4
  br label %68

68:                                               ; preds = %55, %47
  br i1 %52, label %80, label %69

69:                                               ; preds = %68
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !26
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #6, !srcloc !27
  %74 = add i32 %73, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 70) to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #13, !srcloc !28
  br i1 %54, label %78, label %80

78:                                               ; preds = %69
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @swapin_readahead_hits) #13, !srcloc !9
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @swapin_readahead_hits, ptr nonnull @swapin_readahead_hits, i32 1, ptr nonnull elementtype(i32) @swapin_readahead_hits) #13, !srcloc !10
  br label %80

80:                                               ; preds = %78, %69, %68, %37, %3
  %81 = phi ptr [ null, %3 ], [ %14, %69 ], [ %14, %78 ], [ %14, %68 ], [ null, %37 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_swap_device([1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_get_incore_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @pagecache_get_page(ptr noundef %0, i32 noundef %1, i32 noundef 384, i32 noundef 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @shmem_aops
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = lshr i32 %6, 1
  %15 = insertvalue [1 x i32] poison, i32 %14, 0
  %16 = tail call ptr @get_swap_device([1 x i32] %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %13
  %19 = lshr i32 %6, 27
  %20 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = and i32 %14, 67108863
  %23 = lshr i32 %22, 14
  %24 = getelementptr %struct.address_space, ptr %21, i32 %23
  %25 = tail call ptr @pagecache_get_page(ptr noundef %24, i32 noundef %22, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %26 = load volatile i32, ptr %16, align 4
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38, !prof !11

29:                                               ; preds = %18
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !26
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #6, !srcloc !27
  %34 = add i32 %33, %26
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #13, !srcloc !28
  br label %48

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.percpu_ref, ptr %16, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #13, !srcloc !9
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #13, !srcloc !23
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48, !prof !12

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.percpu_ref_data, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef nonnull %16) #13
  br label %48

48:                                               ; preds = %44, %38, %29
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  br label %49

49:                                               ; preds = %48, %13, %9, %5, %2
  %50 = phi ptr [ %25, %48 ], [ null, %2 ], [ null, %9 ], [ null, %13 ], [ %3, %5 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__read_swap_cache_async([1 x i32] %0, i32 noundef %1, ptr nocapture readnone %2, i32 %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4
  store i8 0, ptr %4, align 1
  %7 = tail call ptr @get_swap_device([1 x i32] %0) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %135, label %9

9:                                                ; preds = %5
  %10 = extractvalue [1 x i32] %0, 0
  %11 = lshr i32 %10, 26
  %12 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %11
  %13 = and i32 %10, 67108863
  %14 = lshr i32 %13, 14
  br label %15

15:                                               ; preds = %75, %9
  %16 = phi ptr [ %7, %9 ], [ %77, %75 ]
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr %struct.address_space, ptr %17, i32 %14
  %19 = tail call ptr @pagecache_get_page(ptr noundef %18, i32 noundef %13, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %20 = load volatile i32, ptr %16, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32, !prof !11

23:                                               ; preds = %15
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !26
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #6, !srcloc !27
  %28 = add i32 %27, %20
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #13, !srcloc !28
  br label %42

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.percpu_ref, ptr %16, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #13, !srcloc !9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #13, !srcloc !23
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42, !prof !12

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr inbounds %struct.percpu_ref_data, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef nonnull %16) #13
  br label %42

42:                                               ; preds = %38, %32, %23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %43 = icmp eq ptr %19, null
  br i1 %43, label %44, label %135

44:                                               ; preds = %42
  %45 = tail call i32 @__swp_swapcount([1 x i32] %0) #13
  %46 = icmp ne i32 %45, 0
  %47 = load i8, ptr @swap_slot_cache_enabled, align 1
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %135

50:                                               ; preds = %44
  %51 = tail call ptr @__alloc_pages(i32 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %135, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @swapcache_prepare([1 x i32] %0) #13
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %55, label %79, label %60

60:                                               ; preds = %53
  br i1 %59, label %63, label %61, !prof !11

61:                                               ; preds = %60
  %62 = add i32 %57, -1
  br label %65

63:                                               ; preds = %60
  %64 = ptrtoint ptr %51 to i32
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = inttoptr i32 %66 to ptr
  %68 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #13, !srcloc !9
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #13, !srcloc !23
  %70 = extractvalue { i32, i32 } %69, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  tail call void @__put_page(ptr noundef %67) #13
  br label %73

73:                                               ; preds = %72, %65
  %74 = icmp eq i32 %54, -17
  br i1 %74, label %75, label %135

75:                                               ; preds = %73
  %76 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  %77 = tail call ptr @get_swap_device([1 x i32] %0) #13
  %78 = icmp eq ptr %77, null
  br i1 %78, label %135, label %15

79:                                               ; preds = %53
  br i1 %59, label %82, label %80, !prof !11

80:                                               ; preds = %79
  %81 = add i32 %57, -1
  br label %84

82:                                               ; preds = %79
  %83 = ptrtoint ptr %51 to i32
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 1
  store i32 %88, ptr %86, align 4
  %89 = load volatile i32, ptr %56, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !11

92:                                               ; preds = %84
  %93 = add i32 %89, -1
  br label %96

94:                                               ; preds = %84
  %95 = ptrtoint ptr %51 to i32
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = inttoptr i32 %97 to ptr
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %99, 524288
  store i32 %100, ptr %98, align 4
  %101 = and i32 %1, 782048
  %102 = call i32 @add_to_swap_cache(ptr noundef nonnull %51, [1 x i32] %0, i32 noundef %101, ptr noundef nonnull %6)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %96
  %105 = load ptr, ptr %6, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load volatile i32, ptr %56, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !11

111:                                              ; preds = %107
  %112 = add i32 %108, -1
  br label %115

113:                                              ; preds = %107
  %114 = ptrtoint ptr %51 to i32
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = inttoptr i32 %116 to ptr
  call void @workingset_refault(ptr noundef %117, ptr noundef nonnull %105) #13
  br label %118

118:                                              ; preds = %115, %104
  call void @lru_cache_add(ptr noundef nonnull %51) #13
  store i8 1, ptr %4, align 1
  br label %135

119:                                              ; preds = %96
  call void @put_swap_page(ptr noundef nonnull %51, [1 x i32] %0) #13
  call void @unlock_page(ptr noundef nonnull %51) #13
  %120 = load volatile i32, ptr %56, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123, !prof !11

123:                                              ; preds = %119
  %124 = add i32 %120, -1
  br label %127

125:                                              ; preds = %119
  %126 = ptrtoint ptr %51 to i32
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = inttoptr i32 %128 to ptr
  %130 = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #13, !srcloc !9
  %131 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %130, ptr %130, i32 1, ptr elementtype(i32) %130) #13, !srcloc !23
  %132 = extractvalue { i32, i32 } %131, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  call void @__put_page(ptr noundef %129) #13
  br label %135

135:                                              ; preds = %134, %127, %118, %75, %73, %50, %44, %42, %5
  %136 = phi ptr [ %51, %118 ], [ null, %127 ], [ null, %134 ], [ null, %5 ], [ null, %75 ], [ %19, %42 ], [ null, %44 ], [ null, %50 ], [ null, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret ptr %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__swp_swapcount([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swapcache_prepare([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_refault(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @read_swap_cache_async([1 x i32] %0, i32 noundef %1, ptr nocapture readnone %2, i32 %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !31
  %7 = call ptr @__read_swap_cache_async([1 x i32] %0, i32 noundef %1, ptr undef, i32 undef, ptr noundef nonnull %6)
  %8 = load i8, ptr %6, align 1, !range !30
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @swap_readpage(ptr noundef %7, i1 noundef zeroext %4) #13
  br label %12

12:                                               ; preds = %10, %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_readpage(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @swap_cluster_readahead([1 x i32] %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.blk_plug, align 4
  %6 = alloca i8, align 1
  %7 = extractvalue [1 x i32] %0, 0
  %8 = and i32 %7, 67108863
  %9 = tail call ptr @swp_swap_info([1 x i32] %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !31
  %10 = load volatile i32, ptr @page_cluster, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %99, label %12

12:                                               ; preds = %3
  %13 = shl nuw i32 1, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @swapin_readahead_hits) #13, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @swapin_readahead_hits) #13, !srcloc !33
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !34
  %16 = load volatile i32, ptr @swapin_nr_pages.prev_offset, align 4
  %17 = load volatile i32, ptr @swapin_nr_pages.last_readahead_pages, align 4
  %18 = add i32 %15, 2
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %12
  %21 = phi i32 [ %23, %20 ], [ 4, %12 ]
  %22 = icmp ult i32 %21, %18
  %23 = shl i32 %21, 1
  br i1 %22, label %20, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @llvm.umin.i32(i32 %21, i32 %13) #13
  %26 = sdiv i32 %17, 2
  %27 = tail call i32 @llvm.umax.i32(i32 %25, i32 %26) #13
  br label %38

28:                                               ; preds = %12
  %29 = add i32 %16, 1
  %30 = icmp eq i32 %29, %8
  %31 = add i32 %16, -1
  %32 = icmp eq i32 %31, %8
  %33 = or i1 %30, %32
  %34 = select i1 %33, i32 2, i32 1
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %13) #13
  %36 = sdiv i32 %17, 2
  %37 = tail call i32 @llvm.umax.i32(i32 %35, i32 %36) #13
  store volatile i32 %8, ptr @swapin_nr_pages.prev_offset, align 4
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i32 [ %37, %28 ], [ %27, %24 ]
  store volatile i32 %39, ptr @swapin_nr_pages.last_readahead_pages, align 4
  %40 = add i32 %39, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %99, label %42

42:                                               ; preds = %38
  %43 = sub i32 0, %39
  %44 = and i32 %8, %43
  %45 = or i32 %40, %8
  %46 = icmp eq i32 %44, 0
  %47 = select i1 %46, i32 1, i32 %44
  %48 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %45, %49
  %51 = add i32 %49, -1
  %52 = select i1 %50, i32 %45, i32 %51
  call void @blk_start_plug(ptr noundef nonnull %5) #13
  %53 = icmp ugt i32 %47, %52
  br i1 %53, label %98, label %54

54:                                               ; preds = %42
  %55 = and i32 %7, -67108864
  br label %56

56:                                               ; preds = %95, %54
  %57 = phi i32 [ %47, %54 ], [ %96, %95 ]
  %58 = and i32 %57, 67108863
  %59 = or i32 %58, %55
  %60 = insertvalue [1 x i32] poison, i32 %59, 0
  %61 = call ptr @__read_swap_cache_async([1 x i32] %60, i32 noundef %1, ptr undef, i32 undef, ptr noundef nonnull %6)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %95, label %63

63:                                               ; preds = %56
  %64 = load i8, ptr %6, align 1, !range !30
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = call i32 @swap_readpage(ptr noundef nonnull %61, i1 noundef zeroext false) #13
  %68 = icmp eq i32 %57, %8
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %61) #13
  %70 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !26
  %71 = call i32 @llvm.read_register.i32(metadata !0) #13
  %72 = inttoptr i32 %71 to ptr
  %73 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #6, !srcloc !27
  %74 = add i32 %73, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 69) to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #13, !srcloc !28
  br label %78

78:                                               ; preds = %69, %66, %63
  %79 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !11

83:                                               ; preds = %78
  %84 = add i32 %80, -1
  br label %87

85:                                               ; preds = %78
  %86 = ptrtoint ptr %61 to i32
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #13, !srcloc !9
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #13, !srcloc !23
  %92 = extractvalue { i32, i32 } %91, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  call void @__put_page(ptr noundef %89) #13
  br label %95

95:                                               ; preds = %94, %87, %56
  %96 = add i32 %57, 1
  %97 = icmp ugt i32 %96, %52
  br i1 %97, label %98, label %56

98:                                               ; preds = %95, %42
  call void @blk_finish_plug(ptr noundef nonnull %5) #13
  call void @lru_add_drain() #13
  br label %99

99:                                               ; preds = %98, %38, %3
  %100 = phi i1 [ true, %38 ], [ false, %98 ], [ true, %3 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !31
  %101 = call ptr @__read_swap_cache_async([1 x i32] %0, i32 noundef %1, ptr undef, i32 undef, ptr noundef nonnull %4) #13
  %102 = load i8, ptr %4, align 1, !range !30
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = call i32 @swap_readpage(ptr noundef %101, i1 noundef zeroext %100) #13
  br label %106

106:                                              ; preds = %104, %99
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret ptr %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swp_swap_info([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_swap_address_space(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 16383
  %4 = lshr i32 %3, 14
  %5 = mul nuw nsw i32 %4, 116
  %6 = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3520, i32 noundef -1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %3, 16384
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %20, %12 ], [ 0, %10 ]
  %14 = getelementptr %struct.address_space, ptr %6, i32 %13, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.address_space, ptr %6, i32 %13, i32 1, i32 1
  store i32 1, ptr %15, align 4
  %16 = getelementptr %struct.address_space, ptr %6, i32 %13, i32 1, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr %struct.address_space, ptr %6, i32 %13, i32 4
  store volatile i32 0, ptr %17, align 4
  %18 = getelementptr %struct.address_space, ptr %6, i32 %13, i32 9
  store ptr @swap_aops, ptr %18, align 4
  %19 = getelementptr %struct.address_space, ptr %6, i32 %13, i32 10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %19) #13
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %22, label %12

22:                                               ; preds = %12, %8
  %23 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %0
  store ptr %6, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ 0, %22 ], [ -12, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_swap_address_space(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %3) #13
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @swapin_readahead([1 x i32] %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.blk_plug, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.vma_swap_readahead, align 4
  %8 = load volatile i8, ptr @enable_vma_readahead, align 1, !range !30
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %193, label %10

10:                                               ; preds = %3
  %11 = load volatile i32, ptr @nr_rotate_swap, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %193

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #13, !annotation !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #13
  %14 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %14, i8 0, i32 36, i1 false) #13
  %15 = load ptr, ptr %2, align 4
  %16 = load volatile i32, ptr @page_cluster, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 3) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %185, label %19

19:                                               ; preds = %13
  %20 = shl nuw nsw i32 1, %17
  %21 = getelementptr inbounds %struct.anon.12, ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr @mem_map, align 4
  %24 = getelementptr inbounds %struct.vm_fault, ptr %2, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 12
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = sub i32 %27, %28
  %30 = getelementptr %struct.page, ptr %23, i32 %29
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = or i32 %31, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  %33 = tail call ptr @llvm.thread.pointer() #13
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 149
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %37 = tail call ptr @__kmap_local_page_prot(ptr noundef %30, i32 noundef %32) #13
  %38 = lshr i32 %22, 12
  %39 = and i32 %38, 511
  %40 = getelementptr i32, ptr %37, i32 %39
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 16
  %42 = load volatile i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 4, i32 %42
  %45 = lshr i32 %44, 12
  %46 = lshr i32 %44, 7
  %47 = and i32 %46, 31
  %48 = and i32 %44, 63
  %49 = add nuw nsw i32 %48, 2
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %19
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp eq i32 %52, %38
  %54 = add nsw i32 %45, -1
  %55 = icmp eq i32 %54, %38
  %56 = or i1 %53, %55
  %57 = select i1 %56, i32 2, i32 1
  br label %62

58:                                               ; preds = %58, %19
  %59 = phi i32 [ %61, %58 ], [ 4, %19 ]
  %60 = icmp ult i32 %59, %49
  %61 = shl i32 %59, 1
  br i1 %60, label %58, label %62

62:                                               ; preds = %58, %51
  %63 = phi i32 [ %57, %51 ], [ %59, %58 ]
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %20) #13
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 %47) #13
  %66 = trunc i32 %65 to i16
  store i16 %66, ptr %7, align 4
  %67 = and i32 %22, -4096
  %68 = shl nuw nsw i32 %65, 6
  %69 = or i32 %68, %67
  store volatile i32 %69, ptr %41, align 4
  %70 = icmp eq i32 %65, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  tail call void @kunmap_local_indexed(ptr noundef %40) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %72 = load i32, ptr %34, align 8
  %73 = add i32 %72, -1
  store i32 %73, ptr %34, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  br label %185

74:                                               ; preds = %62
  %75 = add nuw nsw i32 %45, 1
  %76 = icmp eq i32 %38, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = add nuw nsw i32 %65, %38
  br label %90

79:                                               ; preds = %74
  %80 = add nuw nsw i32 %38, 1
  %81 = icmp eq i32 %45, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = sub nsw i32 %45, %65
  br label %90

84:                                               ; preds = %79
  %85 = add nsw i32 %65, -1
  %86 = lshr i32 %85, 1
  %87 = sub nsw i32 %38, %86
  %88 = add nuw nsw i32 %65, %38
  %89 = sub nsw i32 %88, %86
  br label %90

90:                                               ; preds = %84, %82, %77
  %91 = phi i32 [ %83, %82 ], [ %87, %84 ], [ %38, %77 ]
  %92 = phi i32 [ %45, %82 ], [ %89, %84 ], [ %78, %77 ]
  %93 = load i32, ptr %15, align 4
  %94 = lshr i32 %93, 12
  %95 = tail call i32 @llvm.umax.i32(i32 %94, i32 %91) #13
  %96 = and i32 %22, -2097152
  %97 = lshr exact i32 %96, 12
  %98 = tail call i32 @llvm.umax.i32(i32 %95, i32 %97) #13
  %99 = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = lshr i32 %100, 12
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 %92) #13
  %103 = add i32 %96, 2097152
  %104 = lshr exact i32 %103, 12
  %105 = tail call i32 @llvm.umin.i32(i32 %102, i32 %104) #13
  %106 = sub i32 %105, %98
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %14, align 4
  %108 = sub i32 %38, %98
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.vma_swap_readahead, ptr %7, i32 0, i32 1
  store i16 %109, ptr %110, align 2
  %111 = icmp eq i32 %105, %98
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = and i32 %108, 65535
  br label %120

114:                                              ; preds = %90
  %115 = getelementptr inbounds %struct.vma_swap_readahead, ptr %7, i32 0, i32 3
  %116 = and i32 %108, 65535
  %117 = sub nsw i32 0, %116
  %118 = getelementptr i32, ptr %40, i32 %117
  %119 = shl i32 %106, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %115, ptr align 4 %118, i32 %119, i1 false) #13
  br label %120

120:                                              ; preds = %114, %112
  %121 = phi i32 [ %113, %112 ], [ %116, %114 ]
  tail call void @kunmap_local_indexed(ptr noundef %40) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %122 = load i32, ptr %34, align 8
  %123 = add i32 %122, -1
  store i32 %123, ptr %34, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %124 = icmp eq i16 %66, 1
  br i1 %124, label %185, label %125

125:                                              ; preds = %120
  call void @blk_start_plug(ptr noundef nonnull %5) #13
  %126 = and i32 %106, 65535
  %127 = icmp eq i16 %107, 0
  br i1 %127, label %184, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.vma_swap_readahead, ptr %7, i32 0, i32 3
  br label %130

130:                                              ; preds = %180, %128
  %131 = phi i32 [ 0, %128 ], [ %181, %180 ]
  %132 = phi ptr [ %129, %128 ], [ %182, %180 ]
  %133 = load i32, ptr %132, align 4
  %134 = icmp ne i32 %133, 0
  %135 = and i32 %133, 1
  %136 = icmp eq i32 %135, 0
  %137 = and i1 %134, %136
  br i1 %137, label %138, label %180

138:                                              ; preds = %130
  %139 = lshr i32 %133, 7
  %140 = shl i32 %133, 24
  %141 = and i32 %140, 2080374784
  %142 = or i32 %141, %139
  %143 = icmp ult i32 %142, 2013265920
  br i1 %143, label %144, label %180, !prof !11

144:                                              ; preds = %138
  %145 = insertvalue [1 x i32] poison, i32 %142, 0
  %146 = call ptr @__read_swap_cache_async([1 x i32] %145, i32 noundef %1, ptr undef, i32 undef, ptr noundef nonnull %6) #13
  %147 = icmp eq ptr %146, null
  br i1 %147, label %180, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr %6, align 1, !range !30
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %148
  %152 = call i32 @swap_readpage(ptr noundef nonnull %146, i1 noundef zeroext false) #13
  %153 = icmp eq i32 %131, %121
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %146) #13
  %155 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !26
  %156 = call i32 @llvm.read_register.i32(metadata !0) #13
  %157 = inttoptr i32 %156 to ptr
  %158 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %157) #6, !srcloc !27
  %159 = add i32 %158, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 69) to i32)
  %160 = inttoptr i32 %159 to ptr
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %155) #13, !srcloc !28
  br label %163

163:                                              ; preds = %154, %151, %148
  %164 = getelementptr inbounds %struct.page, ptr %146, i32 0, i32 1
  %165 = load volatile i32, ptr %164, align 4
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168, !prof !11

168:                                              ; preds = %163
  %169 = add i32 %165, -1
  br label %172

170:                                              ; preds = %163
  %171 = ptrtoint ptr %146 to i32
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %174 = inttoptr i32 %173 to ptr
  %175 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %175) #13, !srcloc !9
  %176 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %175, ptr %175, i32 1, ptr elementtype(i32) %175) #13, !srcloc !23
  %177 = extractvalue { i32, i32 } %176, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  call void @__put_page(ptr noundef %174) #13
  br label %180

180:                                              ; preds = %179, %172, %144, %138, %130
  %181 = add nuw nsw i32 %131, 1
  %182 = getelementptr i32, ptr %132, i32 1
  %183 = icmp eq i32 %181, %126
  br i1 %183, label %184, label %130

184:                                              ; preds = %180, %125
  call void @blk_finish_plug(ptr noundef nonnull %5) #13
  call void @lru_add_drain() #13
  br label %185

185:                                              ; preds = %184, %120, %71, %13
  %186 = phi i1 [ true, %120 ], [ false, %184 ], [ true, %71 ], [ true, %13 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !31
  %187 = call ptr @__read_swap_cache_async([1 x i32] %0, i32 noundef %1, ptr undef, i32 undef, ptr noundef nonnull %4) #13
  %188 = load i8, ptr %4, align 1, !range !30
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %185
  %191 = call i32 @swap_readpage(ptr noundef %187, i1 noundef zeroext %186) #13
  br label %192

192:                                              ; preds = %190, %185
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %195

193:                                              ; preds = %10, %3
  %194 = tail call ptr @swap_cluster_readahead([1 x i32] %0, i32 noundef %1, ptr noundef %2)
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi ptr [ %187, %192 ], [ %194, %193 ]
  ret ptr %196
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @swap_init_sysfs() #5 section ".init.text" {
  %1 = load ptr, ptr @mm_kobj, align 4
  %2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.4, ptr noundef %1) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %11

6:                                                ; preds = %0
  %7 = tail call i32 @sysfs_create_group(ptr noundef nonnull %2, ptr noundef nonnull @swap_attr_group) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  tail call void @kobject_put(ptr noundef nonnull %2) #13
  br label %11

11:                                               ; preds = %9, %6, %4
  %12 = phi i32 [ %7, %9 ], [ -12, %4 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_writepage(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_set_page_dirty(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vma_ra_enabled_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i8, ptr @enable_vma_readahead, align 1, !range !30
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str.10, ptr @.str.9
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #13
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vma_ra_enabled_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #9 {
  %5 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.9, i32 noundef 4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %2, align 1
  %9 = icmp eq i8 %8, 49
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.10, i32 noundef 5)
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i8 %8, 48
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %7, %4
  %16 = phi i8 [ 1, %7 ], [ 1, %4 ], [ 0, %10 ]
  store i8 %16, ptr @enable_vma_readahead, align 1
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %3, %15 ], [ -22, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 863018, i64 2148352989, i64 2148353015, i64 2148353062, i64 2148353084, i64 2148353112, i64 2148353132}
!10 = !{i64 2148364404, i64 2148364430, i64 2148364459, i64 2148364493, i64 2148364524, i64 2148364547}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2149030084}
!14 = !{i64 2149025908}
!15 = !{i64 2149025983, i64 2149026010, i64 2149026057, i64 2149026079, i64 2149026107, i64 2149026127}
!16 = !{i64 768941}
!17 = !{i64 2149054228}
!18 = !{i64 2148366761, i64 2148366787, i64 2148366816, i64 2148366850, i64 2148366881, i64 2148366904}
!19 = !{!"branch_weights", i32 4001, i32 4000000}
!20 = !{i64 2148372866, i64 2148372898, i64 2148372927, i64 2148372961, i64 2148372992, i64 2148373015}
!21 = !{i64 2148474206}
!22 = !{i64 2148465083}
!23 = !{i64 2148367445, i64 2148367477, i64 2148367506, i64 2148367540, i64 2148367571, i64 2148367594}
!24 = !{i64 2148465286}
!25 = !{i64 2149428856}
!26 = !{i64 768696, i64 768757}
!27 = !{i64 787396}
!28 = !{i64 771713}
!29 = !{i64 2149429073}
!30 = !{i8 0, i8 2}
!31 = !{!"auto-init"}
!32 = !{i64 2148652539}
!33 = !{i64 871668, i64 871685, i64 871709, i64 871735, i64 871753}
!34 = !{i64 2148652883}
!35 = !{i64 2152859127}
!36 = !{i64 2151526753}
!37 = !{i64 2151526960}
!38 = !{i64 2152861752}
