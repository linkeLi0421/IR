; ModuleID = '/llk/IR/arch/arm/kernel/vdso.c_pt.bc'
source_filename = "../arch/arm/kernel/vdso.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.vdso_data_store = type { [2 x %struct.vdso_data], [3616 x i8] }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.59, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.59 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.elfinfo = type { ptr, ptr, i32, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.43 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@vdso_data_store = internal global %union.vdso_data_store zeroinitializer, section ".data..page_aligned", align 4096
@vdso_data = dso_local local_unnamed_addr global ptr @vdso_data_store, align 4
@__initcall__kmod_vdso__226_222_vdso_init3 = internal global ptr @vdso_init, section ".initcall3.init", align 4
@vdso_text_pagelist = internal unnamed_addr global ptr null, align 4
@vdso_total_pages = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@vdso_text_mapping = internal global %struct.vm_special_mapping { ptr @.str.11, ptr null, ptr null, ptr @vdso_mremap }, section ".data..ro_after_init", align 4
@cntvct_ok = dso_local local_unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@vdso_start = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\013VDSO is not a valid ELF object!\0A\00", align 1
@vdso_end = external dso_local global [0 x i8], align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@vdso_data_page = internal global ptr null, section ".data..ro_after_init", align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"arm,armv7-timer\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"arm,armv8-timer\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"arm,cpu-registers-not-fw-configured\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"__vdso_gettimeofday\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"__vdso_clock_gettime\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"__vdso_clock_gettime64\00", align 1
@vdso_data_mapping = internal constant %struct.vm_special_mapping { ptr @.str.10, ptr @vdso_data_page, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"[vvar]\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_vdso__226_222_vdso_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vdso_init() #0 section ".init.text" {
  %1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @vdso_start, ptr noundef nonnull dereferenceable(4) @.str, i32 4)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %42

5:                                                ; preds = %0
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 4) #16
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5
  store ptr null, ptr @vdso_text_pagelist, align 4
  br label %42

9:                                                ; preds = %5
  %10 = extractvalue { i32, i1 } %6, 0
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #17
  store ptr %11, ptr @vdso_text_pagelist, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @mem_map, align 4
  %15 = load ptr, ptr @vdso_data, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = add i32 %16, 1073741824
  %18 = lshr i32 %17, 12
  %19 = getelementptr %struct.page, ptr %14, i32 %18
  store ptr %19, ptr @vdso_data_page, align 4
  br i1 icmp ugt (i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 0), label %20, label %38

20:                                               ; preds = %13
  %21 = call i32 @llvm.umax.i32(i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 1)
  %22 = getelementptr %struct.page, ptr %14, i32 lshr (i32 add (i32 ptrtoint (ptr @vdso_start to i32), i32 1073741824), i32 12)
  store ptr %22, ptr %11, align 64
  br i1 icmp ule (i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 1), label %36, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @mem_map, align 4
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ %34, %25 ], [ 1, %23 ]
  %27 = shl i32 %26, 12
  %28 = getelementptr i8, ptr @vdso_start, i32 %27
  %29 = ptrtoint ptr %28 to i32
  %30 = add i32 %29, 1073741824
  %31 = lshr i32 %30, 12
  %32 = getelementptr %struct.page, ptr %24, i32 %31
  %33 = getelementptr ptr, ptr %11, i32 %26
  store ptr %32, ptr %33, align 4
  %34 = add nuw i32 %26, 1
  %35 = icmp eq i32 %34, %21
  br i1 %35, label %36, label %25

36:                                               ; preds = %25, %20
  %37 = load ptr, ptr @vdso_text_pagelist, align 4
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi ptr [ %37, %36 ], [ %11, %13 ]
  store ptr %39, ptr getelementptr inbounds (%struct.vm_special_mapping, ptr @vdso_text_mapping, i32 0, i32 1), align 4
  store i32 add (i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 1), ptr @vdso_total_pages, align 4
  %40 = tail call fastcc zeroext i1 @cntvct_functional() #18
  %41 = zext i1 %40 to i8
  store i8 %41, ptr @cntvct_ok, align 1
  tail call fastcc void @patch_vdso() #18
  br label %42

42:                                               ; preds = %38, %9, %8, %3
  %43 = phi i32 [ -8, %3 ], [ 0, %38 ], [ -12, %9 ], [ -12, %8 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_install_vdso(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 42, i32 3
  store i32 0, ptr %3, align 8
  %4 = load ptr, ptr @vdso_text_pagelist, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @_install_special_mapping(ptr noundef %0, i32 noundef %1, i32 noundef 4096, i32 noundef 17, ptr noundef nonnull @vdso_data_mapping) #16
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = add i32 %1, 4096
  %11 = load i32, ptr @vdso_total_pages, align 4
  %12 = shl i32 %11, 12
  %13 = add i32 %12, -4096
  %14 = tail call ptr @_install_special_mapping(ptr noundef %0, i32 noundef %10, i32 noundef %13, i32 noundef 117, ptr noundef nonnull @vdso_text_mapping) #16
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 %10, ptr %3, align 8
  br label %17

17:                                               ; preds = %16, %9, %6, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_install_special_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cntvct_functional() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef null) #16
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ null, %3 ], [ %7, %6 ]
  %12 = phi i1 [ false, %3 ], [ %9, %6 ]
  tail call void @of_node_put(ptr noundef %11) #16
  ret i1 %12
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @patch_vdso() unnamed_addr #5 section ".init.text" {
  %1 = alloca %struct.elfinfo, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  store ptr @vdso_start, ptr %1, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 4
  %3 = getelementptr inbounds i8, ptr %1, i32 8
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 12
  store ptr null, ptr %4, align 4
  %5 = call fastcc ptr @find_section(ptr noundef nonnull @vdso_start, ptr noundef nonnull @.str.5, ptr noundef %3) #18
  store ptr %5, ptr %2, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = call fastcc ptr @find_section(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef null) #18
  store ptr %7, ptr %4, align 4
  %8 = load i8, ptr @cntvct_ok, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %0
  %11 = call fastcc ptr @find_symbol(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = call fastcc ptr @find_symbol(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, ptr %15, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = call fastcc ptr @find_symbol(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, ptr %19, align 4
  br label %22

22:                                               ; preds = %21, %18, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @find_section(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #9 section ".init.text" {
  %4 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 13
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr %struct.elf32_shdr, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.elf32_shdr, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 %12
  %14 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 12
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp ugt i16 %15, 1
  br i1 %17, label %21, label %37

18:                                               ; preds = %21
  %19 = add nuw nsw i32 %22, 1
  %20 = icmp eq i32 %19, %16
  br i1 %20, label %37, label %21

21:                                               ; preds = %18, %3
  %22 = phi i32 [ %19, %18 ], [ 1, %3 ]
  %23 = getelementptr %struct.elf32_shdr, ptr %6, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %13, i32 %24
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18

28:                                               ; preds = %21
  %29 = icmp eq ptr %2, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.elf32_shdr, ptr %23, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = getelementptr inbounds %struct.elf32_shdr, ptr %23, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %0, i32 %35
  br label %40

37:                                               ; preds = %18, %3
  %38 = icmp eq ptr %2, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  store i32 0, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %33
  %41 = phi ptr [ %36, %33 ], [ null, %39 ], [ null, %37 ]
  ret ptr %41
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @find_symbol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 section ".init.text" {
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr inbounds %struct.elfinfo, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.elfinfo, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.elfinfo, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %32, %7
  %11 = phi i32 [ %5, %7 ], [ %33, %32 ]
  %12 = phi i32 [ 0, %7 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !10
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.elf32_sym, ptr %13, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 %15
  %20 = call i32 @strlcpy(ptr noundef nonnull %3, ptr noundef %19, i32 noundef 64) #16
  %21 = call ptr @strchr(ptr noundef nonnull %3, i32 noundef 64)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i8 0, ptr %21, align 1
  br label %24

24:                                               ; preds = %23, %17
  %25 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 4
  br label %32

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr %struct.elf32_sym, ptr %30, i32 %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  br label %37

32:                                               ; preds = %27, %10
  %33 = phi i32 [ %28, %27 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  %34 = add nuw nsw i32 %12, 1
  %35 = lshr i32 %33, 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %10, label %37

37:                                               ; preds = %32, %29, %2
  %38 = phi ptr [ %31, %29 ], [ null, %2 ], [ null, %32 ]
  ret ptr %38
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vdso_mremap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 42, i32 3
  store i32 %3, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold }

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
!10 = !{!"auto-init"}
