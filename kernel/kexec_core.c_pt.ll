; ModuleID = '/llk/IR/kernel/kexec_core.c_pt.bc'
source_filename = "../kernel/kexec_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kexec_crash_loaded:\09\09\09\09\09"
module asm "\09.asciz \09\22kexec_crash_loaded\22\09\09\09\09\09"
module asm "__kstrtabns_kexec_crash_loaded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kimage = type { i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.kimage_arch, ptr, i32, i32 }
%struct.kexec_segment = type { %union.anon.98, i32, i32, i32 }
%union.anon.98 = type { ptr }
%struct.kimage_arch = type { i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.68, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.pt_regs = type { [18 x i32] }
%struct.elf_prstatus = type { %struct.elf_prstatus_common, [18 x i32], i32 }
%struct.elf_prstatus_common = type { %struct.elf_siginfo, i16, i32, i32, i32, i32, i32, i32, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.elf_siginfo = type { i32, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }

@kexec_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kexec_mutex, i64 12), ptr getelementptr (i8, ptr @kexec_mutex, i64 12) } }, align 4
@kexec_in_progress = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [13 x i8] c"Crash kernel\00", align 1
@crashk_res = dso_local global %struct.resource { i32 0, i32 0, ptr @.str, i32 -2130705920, i32 1, ptr null, ptr null, ptr null }, align 4
@crashk_low_res = dso_local local_unnamed_addr global %struct.resource { i32 0, i32 0, ptr @.str, i32 -2130705920, i32 1, ptr null, ptr null, ptr null }, align 4
@crash_kexec_post_notifiers = external dso_local local_unnamed_addr global i8, align 1
@panic_on_oops = external dso_local local_unnamed_addr global i32, align 4
@kexec_crash_image = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_kexec_crash_loaded = external dso_local constant [0 x i8], align 1
@__kstrtabns_kexec_crash_loaded = external dso_local constant [0 x i8], align 1
@__ksymtab_kexec_crash_loaded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kexec_crash_loaded to i32), ptr @__kstrtab_kexec_crash_loaded, ptr @__kstrtabns_kexec_crash_loaded }, section "___ksymtab_gpl+kexec_crash_loaded", align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"\014kexec_core: Could not allocate vmcoreinfo buffer\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"\014kexec_core: Could not vmap vmcoreinfo buffer\0A\00", align 1
@panic_cpu = external dso_local global %struct.atomic_t, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@crash_notes = dso_local local_unnamed_addr global ptr null, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@__initcall__kmod_kexec_core__269_1118_crash_notes_memory_init4 = internal global ptr @crash_notes_memory_init, section ".initcall4.init", align 4
@kexec_image = dso_local local_unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"kexec reboot\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\015kexec_core: Starting new kernel\0A\00", align 1
@kexec_load_disabled = dso_local local_unnamed_addr global i32 0, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [71 x i8] c"\014kexec_core: Memory allocation for saving cpu register states failed\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_kexec_core__269_1118_crash_notes_memory_init4, ptr @__ksymtab_kexec_crash_loaded], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @kexec_should_crash(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @crash_kexec_post_notifiers, align 1, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 15728640
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 983040
  %11 = or i32 %10, %8
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 65280
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = load i32, ptr @panic_on_oops, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %20, %16, %4, %1
  %29 = phi i32 [ 0, %1 ], [ 1, %16 ], [ 1, %4 ], [ %27, %20 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @kexec_crash_loaded() #1 {
  %1 = load ptr, ptr @kexec_crash_image, align 4
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sanity_check_segment_list(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = load volatile i32, ptr @_totalram_pages, align 4
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %104, label %10

6:                                                ; preds = %18
  %7 = add nuw i32 %11, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br i1 %5, label %104, label %27

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %12 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %11, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %11, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %104, label %18

18:                                               ; preds = %10
  %19 = and i32 %13, 4095
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %16, 4095
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = icmp ne i32 %16, -1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %6, label %104

26:                                               ; preds = %48
  br i1 %5, label %104, label %57

27:                                               ; preds = %48, %9
  %28 = phi i32 [ %49, %48 ], [ 0, %9 ]
  %29 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %28, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %28, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %45, %27
  %36 = phi i32 [ %46, %45 ], [ 0, %27 ]
  %37 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %36, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %33, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %36, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %38
  %44 = icmp ult i32 %30, %43
  br i1 %44, label %104, label %45

45:                                               ; preds = %40, %35
  %46 = add nuw i32 %36, 1
  %47 = icmp eq i32 %46, %28
  br i1 %47, label %48, label %35

48:                                               ; preds = %45, %27
  %49 = add nuw i32 %28, 1
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %26, label %27

51:                                               ; preds = %57
  %52 = add nuw i32 %58, 1
  %53 = icmp eq i32 %52, %3
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  br i1 %5, label %104, label %55

55:                                               ; preds = %54
  %56 = lshr i32 %4, 1
  br label %64

57:                                               ; preds = %51, %26
  %58 = phi i32 [ %52, %51 ], [ 0, %26 ]
  %59 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %58, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %58, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %104, label %51

64:                                               ; preds = %72, %55
  %65 = phi i32 [ 0, %55 ], [ %74, %72 ]
  %66 = phi i32 [ 0, %55 ], [ %73, %72 ]
  %67 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %65, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 4095
  %70 = lshr i32 %69, 12
  %71 = icmp ugt i32 %70, %56
  br i1 %71, label %104, label %72

72:                                               ; preds = %64
  %73 = add i32 %70, %66
  %74 = add nuw i32 %65, 1
  %75 = icmp eq i32 %74, %3
  br i1 %75, label %76, label %64

76:                                               ; preds = %72
  %77 = icmp ugt i32 %73, %56
  br i1 %77, label %104, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 13
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr @crashk_res, align 4
  %85 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %86 = trunc i64 %85 to i32
  %87 = add i32 %84, %86
  %88 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %89 = add i32 %88, %86
  br label %93

90:                                               ; preds = %98
  %91 = add nuw i32 %94, 1
  %92 = icmp eq i32 %91, %3
  br i1 %92, label %104, label %93

93:                                               ; preds = %90, %83
  %94 = phi i32 [ 0, %83 ], [ %91, %90 ]
  %95 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %94, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %96, %87
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %94, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %96, -1
  %102 = add i32 %101, %100
  %103 = icmp ugt i32 %102, %89
  br i1 %103, label %104, label %90

104:                                              ; preds = %98, %93, %90, %78, %76, %64, %57, %54, %40, %26, %18, %10, %9, %1
  %105 = phi i32 [ -22, %76 ], [ 0, %78 ], [ 0, %1 ], [ 0, %9 ], [ 0, %26 ], [ 0, %54 ], [ -99, %98 ], [ 0, %90 ], [ -99, %93 ], [ -22, %64 ], [ -22, %57 ], [ -22, %40 ], [ -99, %10 ], [ -99, %18 ]
  ret i32 %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @do_kimage_alloc_init() local_unnamed_addr #4 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 336) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %0
  store i32 0, ptr %2, align 8
  %5 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 2
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 12
  store i32 -1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 13
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 9
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 9, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 10
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 10, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 11
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 11, i32 1
  store ptr %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @kimage_is_destination_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %3
  %8 = phi i32 [ %18, %17 ], [ 0, %3 ]
  %9 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %8, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %2
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %8, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %10
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %7
  %18 = add nuw i32 %8, 1
  %19 = icmp eq i32 %18, %5
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %12, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %17 ], [ 1, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kimage_free_page_list(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %22, label %4

4:                                                ; preds = %20, %1
  %5 = phi ptr [ %7, %20 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr i8, ptr %5, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @page_address(ptr noundef %6) #16
  br label %14

14:                                               ; preds = %14, %4
  %15 = phi i32 [ 0, %4 ], [ %17, %14 ]
  %16 = getelementptr %struct.page, ptr %6, i32 %15
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %16) #16
  %17 = add i32 %15, 1
  %18 = lshr i32 %17, %12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %14
  tail call void @__free_pages(ptr noundef %6, i32 noundef %12) #16
  %21 = icmp eq ptr %7, %0
  br i1 %21, label %22, label %4

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kimage_alloc_control_pages(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 13
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %104

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %9 = shl nuw i32 1, %1
  store volatile ptr %3, ptr %3, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 98, i32 1
  %13 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 7
  br label %14

14:                                               ; preds = %71, %8
  %15 = load volatile i32, ptr %11, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %12, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %18, %14
  %23 = call ptr @__alloc_pages(i32 noundef 68800, i32 noundef %1, i32 noundef 0, ptr noundef null) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %81, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 3
  store i32 %1, ptr %27, align 4
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ 0, %25 ], [ %31, %28 ]
  %30 = getelementptr %struct.page, ptr %23, i32 %29
  call void @_set_bit(i32 noundef 12, ptr noundef %30) #16
  %31 = add nuw i32 %29, 1
  %32 = icmp eq i32 %31, %9
  br i1 %32, label %33, label %28

33:                                               ; preds = %28
  %34 = call ptr @page_address(ptr noundef nonnull %23) #16
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %23 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  %39 = ashr exact i32 %38, 5
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = add i32 %39, %40
  %42 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %43 = lshr i64 %42, 12
  %44 = trunc i64 %43 to i32
  %45 = add i32 %41, %44
  %46 = add i32 %45, %9
  %47 = icmp ugt i32 %46, 1048574
  br i1 %47, label %66, label %48

48:                                               ; preds = %33
  %49 = shl nuw i32 %46, 12
  %50 = shl i32 %45, 12
  %51 = load i32, ptr %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %63, %48
  %54 = phi i32 [ %64, %63 ], [ 0, %48 ]
  %55 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %54, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, %49
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %54, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %56
  %62 = icmp ugt i32 %61, %50
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53
  %64 = add nuw i32 %54, 1
  %65 = icmp eq i32 %64, %51
  br i1 %65, label %71, label %53

66:                                               ; preds = %58, %33
  %67 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store ptr %68, ptr %67, align 4
  %70 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %3, ptr %70, align 4
  store volatile ptr %67, ptr %3, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi ptr [ null, %66 ], [ %23, %63 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %14, label %74

74:                                               ; preds = %71, %48
  %75 = phi ptr [ %23, %48 ], [ %72, %71 ]
  %76 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %76, ptr %79, align 4
  store ptr %78, ptr %76, align 4
  %80 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store volatile ptr %76, ptr %77, align 4
  br label %81

81:                                               ; preds = %74, %22, %18
  %82 = phi ptr [ %75, %74 ], [ null, %18 ], [ null, %22 ]
  %83 = load ptr, ptr %3, align 8
  %84 = icmp eq ptr %83, %3
  br i1 %84, label %103, label %85

85:                                               ; preds = %101, %81
  %86 = phi ptr [ %88, %101 ], [ %83, %81 ]
  %87 = getelementptr i8, ptr %86, i32 -4
  %88 = load ptr, ptr %86, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %88, ptr %90, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %86, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %89, align 4
  %92 = getelementptr i8, ptr %86, i32 16
  %93 = load i32, ptr %92, align 4
  %94 = call ptr @page_address(ptr noundef %87) #16
  br label %95

95:                                               ; preds = %95, %85
  %96 = phi i32 [ 0, %85 ], [ %98, %95 ]
  %97 = getelementptr %struct.page, ptr %87, i32 %96
  call void @_clear_bit(i32 noundef 12, ptr noundef %97) #16
  %98 = add i32 %96, 1
  %99 = lshr i32 %98, %93
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %95, label %101

101:                                              ; preds = %95
  call void @__free_pages(ptr noundef %87, i32 noundef %93) #16
  %102 = icmp eq ptr %88, %3
  br i1 %102, label %103, label %85

103:                                              ; preds = %101, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %157

104:                                              ; preds = %2
  %105 = shl i32 4096, %1
  %106 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 12
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %105, -1
  %109 = add i32 %107, %108
  %110 = sub i32 0, %105
  %111 = and i32 %109, %110
  %112 = add i32 %111, %108
  %113 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 7
  br label %114

114:                                              ; preds = %141, %104
  %115 = phi i32 [ %112, %104 ], [ %143, %141 ]
  %116 = phi i32 [ %111, %104 ], [ %144, %141 ]
  %117 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %118 = icmp ugt i32 %115, %117
  br i1 %118, label %157, label %119

119:                                              ; preds = %114
  %120 = tail call i32 @__cond_resched() #16
  %121 = load i32, ptr %113, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %134, %119
  %124 = phi i32 [ %135, %134 ], [ 0, %119 ]
  %125 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %124, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %124, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %126, -1
  %130 = add i32 %129, %128
  %131 = icmp ult i32 %115, %126
  %132 = icmp ugt i32 %116, %130
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = add nuw i32 %124, 1
  %136 = icmp eq i32 %135, %121
  br i1 %136, label %146, label %123

137:                                              ; preds = %123
  %138 = add i32 %130, %108
  %139 = and i32 %138, %110
  %140 = add i32 %139, %108
  br label %141

141:                                              ; preds = %137, %119
  %142 = phi i32 [ %124, %137 ], [ 0, %119 ]
  %143 = phi i32 [ %140, %137 ], [ %115, %119 ]
  %144 = phi i32 [ %139, %137 ], [ %116, %119 ]
  %145 = icmp eq i32 %142, %121
  br i1 %145, label %146, label %114

146:                                              ; preds = %141, %134
  %147 = phi i32 [ %116, %134 ], [ %144, %141 ]
  %148 = phi i32 [ %115, %134 ], [ %143, %141 ]
  %149 = load ptr, ptr @mem_map, align 4
  %150 = lshr i32 %147, 12
  %151 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %152 = sub i32 %150, %151
  %153 = getelementptr %struct.page, ptr %149, i32 %152
  store i32 %148, ptr %106, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %146
  %156 = tail call ptr @page_address(ptr noundef nonnull %153) #16
  br label %157

157:                                              ; preds = %155, %146, %114, %103
  %158 = phi ptr [ %82, %103 ], [ %153, %155 ], [ null, %146 ], [ null, %114 ]
  ret ptr %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kimage_crash_copy_vmcoreinfo(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 13
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @kimage_alloc_control_pages(ptr noundef %0, i32 noundef 0)
  store ptr %8, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  br label %21

12:                                               ; preds = %7
  %13 = load i32, ptr @pgprot_kernel, align 4
  %14 = or i32 %13, 512
  %15 = call ptr @vmap(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 4, i32 noundef %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #18
  br label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 6
  store ptr %15, ptr %20, align 4
  call void @crash_update_vmcoreinfo_safecopy(ptr noundef nonnull %15) #16
  br label %21

21:                                               ; preds = %19, %17, %10, %1
  %22 = phi i32 [ 0, %19 ], [ -12, %17 ], [ -12, %10 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_update_vmcoreinfo_safecopy(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @machine_kexec_post_load(ptr noundef %0) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @kimage_terminate(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i32, ptr %3, i32 1
  store ptr %7, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %3, %1 ]
  store i32 4, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kimage_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %178, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  tail call void @crash_update_vmcoreinfo_safecopy(ptr noundef null) #16
  %8 = load ptr, ptr %4, align 4
  tail call void @vunmap(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %31, label %13

13:                                               ; preds = %29, %9
  %14 = phi ptr [ %16, %29 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %20 = getelementptr i8, ptr %14, i32 16
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @page_address(ptr noundef %15) #16
  br label %23

23:                                               ; preds = %23, %13
  %24 = phi i32 [ 0, %13 ], [ %26, %23 ]
  %25 = getelementptr %struct.page, ptr %15, i32 %24
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %25) #16
  %26 = add i32 %24, 1
  %27 = lshr i32 %26, %21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %23, label %29

29:                                               ; preds = %23
  tail call void @__free_pages(ptr noundef %15, i32 noundef %21) #16
  %30 = icmp eq ptr %16, %10
  br i1 %30, label %31, label %13

31:                                               ; preds = %29, %9
  %32 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %53, label %35

35:                                               ; preds = %51, %31
  %36 = phi ptr [ %38, %51 ], [ %33, %31 ]
  %37 = getelementptr i8, ptr %36, i32 -4
  %38 = load ptr, ptr %36, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %42 = getelementptr i8, ptr %36, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = tail call ptr @page_address(ptr noundef %37) #16
  br label %45

45:                                               ; preds = %45, %35
  %46 = phi i32 [ 0, %35 ], [ %48, %45 ]
  %47 = getelementptr %struct.page, ptr %37, i32 %46
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %47) #16
  %48 = add i32 %46, 1
  %49 = lshr i32 %48, %43
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %45, label %51

51:                                               ; preds = %45
  tail call void @__free_pages(ptr noundef %37, i32 noundef %43) #16
  %52 = icmp eq ptr %38, %32
  br i1 %52, label %53, label %35

53:                                               ; preds = %51, %31
  %54 = load i32, ptr %0, align 4
  %55 = icmp ne i32 %54, 0
  %56 = and i32 %54, 4
  %57 = icmp eq i32 %56, 0
  %58 = and i1 %55, %57
  br i1 %58, label %59, label %155

59:                                               ; preds = %124, %53
  %60 = phi i32 [ %127, %124 ], [ %54, %53 ]
  %61 = phi i32 [ %125, %124 ], [ 0, %53 ]
  %62 = phi ptr [ %126, %124 ], [ %0, %53 ]
  %63 = and i32 %60, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %59
  %66 = and i32 %61, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %113, label %68

68:                                               ; preds = %65
  %69 = lshr i32 %61, 12
  %70 = load ptr, ptr @mem_map, align 4
  %71 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %72 = lshr i64 %71, 12
  %73 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %74 = trunc i64 %72 to i32
  %75 = add i32 %73, %74
  %76 = sub i32 %69, %75
  %77 = getelementptr %struct.page, ptr %70, i32 %76
  %78 = getelementptr %struct.page, ptr %70, i32 %76, i32 1, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = tail call ptr @page_address(ptr noundef %77) #16
  br label %81

81:                                               ; preds = %81, %68
  %82 = phi i32 [ 0, %68 ], [ %84, %81 ]
  %83 = getelementptr %struct.page, ptr %77, i32 %82
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %83) #16
  %84 = add i32 %82, 1
  %85 = lshr i32 %84, %79
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %81, label %87

87:                                               ; preds = %81
  tail call void @__free_pages(ptr noundef %77, i32 noundef %79) #16
  br label %111

88:                                               ; preds = %59
  %89 = and i32 %60, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %88
  %92 = lshr i32 %60, 12
  %93 = load ptr, ptr @mem_map, align 4
  %94 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %95 = lshr i64 %94, 12
  %96 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %97 = trunc i64 %95 to i32
  %98 = add i32 %96, %97
  %99 = sub i32 %92, %98
  %100 = getelementptr %struct.page, ptr %93, i32 %99
  %101 = getelementptr %struct.page, ptr %93, i32 %99, i32 1, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = tail call ptr @page_address(ptr noundef %100) #16
  br label %104

104:                                              ; preds = %104, %91
  %105 = phi i32 [ 0, %91 ], [ %107, %104 ]
  %106 = getelementptr %struct.page, ptr %100, i32 %105
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %106) #16
  %107 = add i32 %105, 1
  %108 = lshr i32 %107, %102
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %104, label %110

110:                                              ; preds = %104
  tail call void @__free_pages(ptr noundef %100, i32 noundef %102) #16
  br label %111

111:                                              ; preds = %110, %87
  %112 = phi i32 [ %61, %110 ], [ %60, %87 ]
  br i1 %64, label %121, label %113

113:                                              ; preds = %111, %65
  %114 = phi i32 [ %112, %111 ], [ %60, %65 ]
  %115 = and i32 %60, -4096
  %116 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %117 = trunc i64 %116 to i32
  %118 = sub i32 %115, %117
  %119 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %118, i32 -2130706432, i32 8454144) #19, !srcloc !9
  %120 = inttoptr i32 %119 to ptr
  br label %124

121:                                              ; preds = %111, %88
  %122 = phi i32 [ %112, %111 ], [ %61, %88 ]
  %123 = getelementptr i32, ptr %62, i32 1
  br label %124

124:                                              ; preds = %121, %113
  %125 = phi i32 [ %114, %113 ], [ %122, %121 ]
  %126 = phi ptr [ %120, %113 ], [ %123, %121 ]
  %127 = load i32, ptr %126, align 4
  %128 = icmp ne i32 %127, 0
  %129 = and i32 %127, 4
  %130 = icmp eq i32 %129, 0
  %131 = and i1 %128, %130
  br i1 %131, label %59, label %132

132:                                              ; preds = %124
  %133 = and i32 %125, 2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %155, label %135

135:                                              ; preds = %132
  %136 = lshr i32 %125, 12
  %137 = load ptr, ptr @mem_map, align 4
  %138 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %139 = lshr i64 %138, 12
  %140 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %141 = trunc i64 %139 to i32
  %142 = add i32 %140, %141
  %143 = sub i32 %136, %142
  %144 = getelementptr %struct.page, ptr %137, i32 %143
  %145 = getelementptr %struct.page, ptr %137, i32 %143, i32 1, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = tail call ptr @page_address(ptr noundef %144) #16
  br label %148

148:                                              ; preds = %148, %135
  %149 = phi i32 [ 0, %135 ], [ %151, %148 ]
  %150 = getelementptr %struct.page, ptr %144, i32 %149
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %150) #16
  %151 = add i32 %149, 1
  %152 = lshr i32 %151, %146
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %148, label %154

154:                                              ; preds = %148
  tail call void @__free_pages(ptr noundef %144, i32 noundef %146) #16
  br label %155

155:                                              ; preds = %154, %132, %53
  tail call void @machine_kexec_cleanup(ptr noundef nonnull %0) #16
  %156 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 9
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %156
  br i1 %158, label %177, label %159

159:                                              ; preds = %175, %155
  %160 = phi ptr [ %162, %175 ], [ %157, %155 ]
  %161 = getelementptr i8, ptr %160, i32 -4
  %162 = load ptr, ptr %160, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %164, ptr %165, align 4
  store volatile ptr %162, ptr %164, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %160, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %163, align 4
  %166 = getelementptr i8, ptr %160, i32 16
  %167 = load i32, ptr %166, align 4
  %168 = tail call ptr @page_address(ptr noundef %161) #16
  br label %169

169:                                              ; preds = %169, %159
  %170 = phi i32 [ 0, %159 ], [ %172, %169 ]
  %171 = getelementptr %struct.page, ptr %161, i32 %170
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %171) #16
  %172 = add i32 %170, 1
  %173 = lshr i32 %172, %167
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %169, label %175

175:                                              ; preds = %169
  tail call void @__free_pages(ptr noundef %161, i32 noundef %167) #16
  %176 = icmp eq ptr %162, %156
  br i1 %176, label %177, label %159

177:                                              ; preds = %175, %155
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %178

178:                                              ; preds = %177, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_kexec_cleanup(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kimage_load_segment(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 13
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %163

7:                                                ; preds = %2
  %8 = and i8 %4, 4
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %1, align 4
  %11 = select i1 %9, ptr null, ptr %10
  %12 = select i1 %9, ptr %10, ptr null
  %13 = getelementptr inbounds %struct.kexec_segment, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.kexec_segment, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kexec_segment, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -4096
  %20 = or i32 %19, 1
  %21 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  %26 = getelementptr i32, ptr %22, i32 1
  store ptr %26, ptr %21, align 4
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi ptr [ %26, %25 ], [ %22, %7 ]
  %29 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @kimage_alloc_page(ptr noundef %0, i32 noundef 3264, i32 noundef -1) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %266, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @page_address(ptr noundef nonnull %33) #16
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %37, i32 -2130706432, i32 8454144) #19, !srcloc !10
  %39 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %40 = trunc i64 %39 to i32
  %41 = add i32 %38, %40
  %42 = or i32 %41, 2
  %43 = load ptr, ptr %21, align 4
  store i32 %42, ptr %43, align 4
  store ptr %36, ptr %21, align 4
  %44 = getelementptr i32, ptr %36, i32 1023
  store ptr %44, ptr %29, align 4
  br label %45

45:                                               ; preds = %35, %27
  %46 = phi ptr [ %36, %35 ], [ %28, %27 ]
  store i32 %20, ptr %46, align 4
  %47 = load ptr, ptr %21, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %21, align 4
  store i32 0, ptr %48, align 4
  %49 = icmp eq i32 %16, 0
  br i1 %49, label %266, label %50

50:                                               ; preds = %150, %45
  %51 = phi ptr [ %157, %150 ], [ %11, %45 ]
  %52 = phi ptr [ %159, %150 ], [ %12, %45 ]
  %53 = phi i32 [ %160, %150 ], [ %16, %45 ]
  %54 = phi i32 [ %151, %150 ], [ %14, %45 ]
  %55 = phi i32 [ %152, %150 ], [ %18, %45 ]
  %56 = tail call fastcc ptr @kimage_alloc_page(ptr noundef %0, i32 noundef 1051842, i32 noundef %55) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %266, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %56 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = lshr exact i32 %62, 5
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %65 = add i32 %63, %64
  %66 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %65, 12
  %69 = add i32 %68, %67
  %70 = and i32 %69, -4096
  %71 = or i32 %70, 8
  %72 = load ptr, ptr %21, align 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %58
  %76 = getelementptr i32, ptr %72, i32 1
  store ptr %76, ptr %21, align 4
  br label %77

77:                                               ; preds = %75, %58
  %78 = phi ptr [ %76, %75 ], [ %72, %58 ]
  %79 = load ptr, ptr %29, align 4
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = tail call fastcc ptr @kimage_alloc_page(ptr noundef %0, i32 noundef 3264, i32 noundef -1) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %266, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @page_address(ptr noundef nonnull %82) #16
  %86 = ptrtoint ptr %85 to i32
  %87 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %86, i32 -2130706432, i32 8454144) #19, !srcloc !10
  %88 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %89 = trunc i64 %88 to i32
  %90 = add i32 %87, %89
  %91 = or i32 %90, 2
  %92 = load ptr, ptr %21, align 4
  store i32 %91, ptr %92, align 4
  store ptr %85, ptr %21, align 4
  %93 = getelementptr i32, ptr %85, i32 1023
  store ptr %93, ptr %29, align 4
  br label %94

94:                                               ; preds = %84, %77
  %95 = phi ptr [ %85, %84 ], [ %78, %77 ]
  store i32 %71, ptr %95, align 4
  %96 = load ptr, ptr %21, align 4
  %97 = getelementptr i32, ptr %96, i32 1
  store ptr %97, ptr %21, align 4
  store i32 0, ptr %97, align 4
  %98 = load i32, ptr %56, align 4
  %99 = lshr i32 %98, 30
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = icmp ne i32 %99, 3
  %103 = load i32, ptr @movable_zone, align 4
  %104 = icmp ne i32 %103, 2
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = tail call ptr @page_address(ptr noundef nonnull %56) #16
  br label %110

108:                                              ; preds = %101, %94
  %109 = tail call ptr @kmap_high(ptr noundef nonnull %56) #16
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi ptr [ %109, %108 ], [ %107, %106 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %111, i8 0, i32 4096, i1 false) #16
  %112 = and i32 %55, 4095
  %113 = getelementptr i8, ptr %111, i32 %112
  %114 = sub nuw nsw i32 4096, %112
  %115 = tail call i32 @llvm.umin.i32(i32 %53, i32 %114) #16
  %116 = tail call i32 @llvm.umin.i32(i32 %54, i32 %115) #16
  %117 = load i8, ptr %3, align 4
  %118 = and i8 %117, 4
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %110
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %113, ptr align 1 %51, i32 %116, i1 false) #16
  br label %138

121:                                              ; preds = %110
  %122 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 %116, i32 -1090519040) #19, !srcloc !11
  %123 = extractvalue { i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132, !prof !12

125:                                              ; preds = %121
  %126 = tail call ptr @llvm.thread.pointer() #16
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 3
  %128 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %127) #20, !srcloc !13
  %129 = and i32 %128, -13
  %130 = or i32 %129, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #16, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !15
  %131 = tail call i32 @arm_copy_from_user(ptr noundef %113, ptr noundef %52, i32 noundef %116) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #16, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !15
  br label %132

132:                                              ; preds = %125, %121
  %133 = phi i32 [ %131, %125 ], [ %116, %121 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135, !prof !12

135:                                              ; preds = %132
  %136 = sub i32 %116, %133
  %137 = getelementptr i8, ptr %113, i32 %136
  tail call void @llvm.memset.p0.i32(ptr align 1 %137, i8 0, i32 %133, i1 false) #16
  br label %138

138:                                              ; preds = %135, %132, %120
  %139 = phi i1 [ false, %135 ], [ true, %132 ], [ true, %120 ]
  %140 = load i32, ptr %56, align 4
  %141 = lshr i32 %140, 30
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = icmp ne i32 %141, 3
  %145 = load i32, ptr @movable_zone, align 4
  %146 = icmp ne i32 %145, 2
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %149, label %148

148:                                              ; preds = %143, %138
  tail call void @kunmap_high(ptr noundef nonnull %56) #16
  br label %149

149:                                              ; preds = %148, %143
  br i1 %139, label %150, label %266

150:                                              ; preds = %149
  %151 = sub i32 %54, %116
  %152 = add i32 %115, %55
  %153 = load i8, ptr %3, align 4
  %154 = and i8 %153, 4
  %155 = icmp eq i8 %154, 0
  %156 = select i1 %155, i32 0, i32 %115
  %157 = getelementptr i8, ptr %51, i32 %156
  %158 = select i1 %155, i32 %115, i32 0
  %159 = getelementptr i8, ptr %52, i32 %158
  %160 = sub i32 %53, %115
  %161 = tail call i32 @__cond_resched() #16
  %162 = icmp eq i32 %160, 0
  br i1 %162, label %266, label %50

163:                                              ; preds = %2
  %164 = getelementptr inbounds %struct.kexec_segment, ptr %1, i32 0, i32 3
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %266, label %167

167:                                              ; preds = %163
  %168 = and i8 %4, 4
  %169 = icmp eq i8 %168, 0
  %170 = load ptr, ptr %1, align 4
  %171 = select i1 %169, ptr %170, ptr null
  %172 = select i1 %169, ptr null, ptr %170
  %173 = getelementptr inbounds %struct.kexec_segment, ptr %1, i32 0, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.kexec_segment, ptr %1, i32 0, i32 1
  %176 = load i32, ptr %175, align 4
  br label %177

177:                                              ; preds = %253, %167
  %178 = phi i32 [ %255, %253 ], [ %174, %167 ]
  %179 = phi i32 [ %254, %253 ], [ %176, %167 ]
  %180 = phi i32 [ %263, %253 ], [ %165, %167 ]
  %181 = phi ptr [ %262, %253 ], [ %171, %167 ]
  %182 = phi ptr [ %260, %253 ], [ %172, %167 ]
  %183 = lshr i32 %178, 12
  %184 = load ptr, ptr @mem_map, align 4
  %185 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %186 = lshr i64 %185, 12
  %187 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %188 = trunc i64 %186 to i32
  %189 = add i32 %187, %188
  %190 = sub i32 %183, %189
  %191 = getelementptr %struct.page, ptr %184, i32 %190
  %192 = icmp eq ptr %191, null
  br i1 %192, label %266, label %193

193:                                              ; preds = %177
  %194 = tail call ptr @page_address(ptr noundef nonnull %191) #16
  %195 = load i32, ptr %191, align 4
  %196 = lshr i32 %195, 30
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = icmp ne i32 %196, 3
  %200 = load i32, ptr @movable_zone, align 4
  %201 = icmp ne i32 %200, 2
  %202 = select i1 %199, i1 true, i1 %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = tail call ptr @page_address(ptr noundef nonnull %191) #16
  br label %207

205:                                              ; preds = %198, %193
  %206 = tail call ptr @kmap_high(ptr noundef nonnull %191) #16
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi ptr [ %206, %205 ], [ %204, %203 ]
  %209 = and i32 %178, 4095
  %210 = getelementptr i8, ptr %208, i32 %209
  %211 = sub nuw nsw i32 4096, %209
  %212 = tail call i32 @llvm.umin.i32(i32 %180, i32 %211) #16
  %213 = icmp ult i32 %179, %212
  %214 = tail call i32 @llvm.umin.i32(i32 %179, i32 %212) #16
  br i1 %213, label %215, label %218

215:                                              ; preds = %207
  %216 = getelementptr i8, ptr %210, i32 %214
  %217 = sub nsw i32 %212, %214
  tail call void @llvm.memset.p0.i32(ptr align 1 %216, i8 0, i32 %217, i1 false) #16
  br label %218

218:                                              ; preds = %215, %207
  %219 = load i8, ptr %3, align 4
  %220 = and i8 %219, 4
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %210, ptr align 1 %182, i32 %214, i1 false) #16
  br label %240

223:                                              ; preds = %218
  %224 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %181, i32 %214, i32 -1090519040) #19, !srcloc !11
  %225 = extractvalue { i32, i32 } %224, 0
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234, !prof !12

227:                                              ; preds = %223
  %228 = tail call ptr @llvm.thread.pointer() #16
  %229 = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 3
  %230 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %229) #20, !srcloc !13
  %231 = and i32 %230, -13
  %232 = or i32 %231, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #16, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !15
  %233 = tail call i32 @arm_copy_from_user(ptr noundef %210, ptr noundef %181, i32 noundef %214) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %230) #16, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !15
  br label %234

234:                                              ; preds = %227, %223
  %235 = phi i32 [ %233, %227 ], [ %214, %223 ]
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237, !prof !12

237:                                              ; preds = %234
  %238 = sub i32 %214, %235
  %239 = getelementptr i8, ptr %210, i32 %238
  tail call void @llvm.memset.p0.i32(ptr align 1 %239, i8 0, i32 %235, i1 false) #16
  br label %240

240:                                              ; preds = %237, %234, %222
  %241 = phi i1 [ false, %237 ], [ true, %234 ], [ true, %222 ]
  %242 = load i32, ptr %191, align 4
  %243 = lshr i32 %242, 30
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = icmp ne i32 %243, 3
  %247 = load i32, ptr @movable_zone, align 4
  %248 = icmp ne i32 %247, 2
  %249 = select i1 %246, i1 true, i1 %248
  br i1 %249, label %251, label %250

250:                                              ; preds = %245, %240
  tail call void @kunmap_high(ptr noundef nonnull %191) #16
  br label %251

251:                                              ; preds = %250, %245
  %252 = tail call ptr @page_address(ptr noundef nonnull %191) #16
  br i1 %241, label %253, label %266

253:                                              ; preds = %251
  %254 = sub i32 %179, %214
  %255 = add i32 %212, %178
  %256 = load i8, ptr %3, align 4
  %257 = and i8 %256, 4
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, i32 0, i32 %212
  %260 = getelementptr i8, ptr %182, i32 %259
  %261 = select i1 %258, i32 %212, i32 0
  %262 = getelementptr i8, ptr %181, i32 %261
  %263 = sub i32 %180, %212
  %264 = tail call i32 @__cond_resched() #16
  %265 = icmp eq i32 %263, 0
  br i1 %265, label %266, label %177

266:                                              ; preds = %253, %251, %177, %163, %150, %149, %81, %50, %45, %32
  %267 = phi i32 [ 0, %45 ], [ -12, %32 ], [ 0, %163 ], [ 0, %150 ], [ -14, %149 ], [ -12, %50 ], [ -12, %81 ], [ 0, %253 ], [ -12, %177 ], [ -14, %251 ]
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__crash_kexec(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca %struct.pt_regs, align 4
  %3 = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @kexec_crash_image, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !16
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %0, i32 72, i1 false) #16
  br label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 15
  %13 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 16
  %14 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 13
  %15 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 14
  %16 = call { i32, i32, i32 } asm sideeffect "stmia\09$4, {r0-r12}\0A\09mov\09$2, sp\0A\09str\09lr, $3\0A\09adr\09$0, 1f\0A\09mrs\09$1, cpsr\0A\091:", "=r,=r,=r,=*o,r,~{memory}"(ptr elementtype(i32) %15, ptr nonnull %2) #16, !srcloc !17
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32 } %16, 1
  %19 = extractvalue { i32, i32, i32 } %16, 2
  store i32 %17, ptr %12, align 4
  store i32 %18, ptr %13, align 4
  store i32 %19, ptr %14, align 4
  br label %20

20:                                               ; preds = %11, %10
  call void @crash_save_vmcoreinfo() #16
  call void @machine_crash_shutdown(ptr noundef nonnull %2) #16
  %21 = load ptr, ptr @kexec_crash_image, align 4
  call void @machine_kexec(ptr noundef %21) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #16
  br label %22

22:                                               ; preds = %20, %5
  call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #16
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_save_vmcoreinfo() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_crash_shutdown(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_kexec(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crash_kexec(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca %struct.pt_regs, align 4
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @panic_cpu) #16, !srcloc !19
  br label %6

6:                                                ; preds = %6, %1
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_cpu, ptr nonnull @panic_cpu, i32 -1, i32 %5, ptr nonnull elementtype(i32) @panic_cpu) #16, !srcloc !20
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @kexec_crash_image, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #16, !annotation !16
  %20 = icmp eq ptr %0, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %0, i32 72, i1 false) #16
  br label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 15
  %24 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 16
  %25 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 13
  %26 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 14
  %27 = call { i32, i32, i32 } asm sideeffect "stmia\09$4, {r0-r12}\0A\09mov\09$2, sp\0A\09str\09lr, $3\0A\09adr\09$0, 1f\0A\09mrs\09$1, cpsr\0A\091:", "=r,=r,=r,=*o,r,~{memory}"(ptr elementtype(i32) %26, ptr nonnull %2) #16, !srcloc !17
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = extractvalue { i32, i32, i32 } %27, 1
  %30 = extractvalue { i32, i32, i32 } %27, 2
  store i32 %28, ptr %23, align 4
  store i32 %29, ptr %24, align 4
  store i32 %30, ptr %25, align 4
  br label %31

31:                                               ; preds = %22, %21
  call void @crash_save_vmcoreinfo() #16
  call void @machine_crash_shutdown(ptr noundef nonnull %2) #16
  %32 = load ptr, ptr @kexec_crash_image, align 4
  call void @machine_kexec(ptr noundef %32) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #16
  br label %33

33:                                               ; preds = %31, %16
  call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #16
  br label %34

34:                                               ; preds = %33, %13
  store volatile i32 -1, ptr @panic_cpu, align 4
  br label %35

35:                                               ; preds = %34, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crash_get_memory_size() local_unnamed_addr #4 {
  tail call void @mutex_lock(ptr noundef nonnull @kexec_mutex) #16
  %1 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %2 = load i32, ptr @crashk_res, align 4
  %3 = icmp eq i32 %1, %2
  %4 = add i32 %1, 1
  %5 = sub i32 %4, %2
  %6 = select i1 %3, i32 0, i32 %5
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #16
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @crash_free_reserved_phys_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp ult i32 %0, %1
  br i1 %3, label %4, label %18

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %16, %4 ], [ %0, %2 ]
  %6 = lshr i32 %5, 12
  %7 = load ptr, ptr @mem_map, align 4
  %8 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %9 = lshr i64 %8, 12
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %11 = trunc i64 %9 to i32
  %12 = add i32 %10, %11
  %13 = sub i32 %6, %12
  %14 = getelementptr %struct.page, ptr %7, i32 %13
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %14) #16
  %15 = getelementptr %struct.page, ptr %7, i32 %13, i32 3
  store volatile i32 1, ptr %15, align 4
  tail call void @__free_pages(ptr noundef %14, i32 noundef 0) #16
  tail call void @adjust_managed_page_count(ptr noundef %14, i32 noundef 1) #16
  %16 = add i32 %5, 4096
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %4, label %18

18:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crash_shrink_memory(i32 noundef %0) local_unnamed_addr #4 {
  tail call void @mutex_lock(ptr noundef nonnull @kexec_mutex) #16
  %2 = load ptr, ptr @kexec_crash_image, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %39

4:                                                ; preds = %1
  %5 = load i32, ptr @crashk_res, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %7 = icmp eq i32 %6, 0
  %8 = sub i32 1, %5
  %9 = add i32 %8, %6
  %10 = select i1 %7, i32 0, i32 %9
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %10, %0
  %14 = select i1 %13, i32 0, i32 -22
  br label %39

15:                                               ; preds = %4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 32) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = add i32 %5, 4095
  %21 = and i32 %20, -4096
  %22 = add i32 %0, 4095
  %23 = add i32 %22, %21
  %24 = and i32 %23, -4096
  %25 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  tail call void @crash_free_reserved_phys_range(i32 noundef %24, i32 noundef %25)
  %26 = icmp eq i32 %21, %24
  %27 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 5), align 4
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = tail call i32 @release_resource(ptr noundef nonnull @crashk_res) #16
  br label %32

32:                                               ; preds = %30, %19
  store i32 %24, ptr %17, align 8
  %33 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %34 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3
  store i32 -2130705920, ptr %35, align 4
  %36 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 2
  store ptr @.str.3, ptr %36, align 8
  %37 = add i32 %24, -1
  store i32 %37, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %38 = tail call i32 @insert_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %17) #16
  br label %39

39:                                               ; preds = %32, %15, %12, %1
  %40 = phi i32 [ %14, %12 ], [ 0, %32 ], [ -2, %1 ], [ -12, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #16
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_resource(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crash_save_cpu(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.elf_prstatus, align 4
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %3) #16
  %4 = icmp sgt i32 %1, -1
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load ptr, ptr @crash_notes, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = inttoptr i32 %13 to ptr
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(148) %3, i8 0, i32 148, i1 false)
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.elf_prstatus_common, ptr %3, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.elf_prstatus, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(72) %21, ptr noundef align 4 dereferenceable(72) %0, i32 72, i1 false) #16
  %22 = call ptr @append_elf_note(ptr noundef nonnull %16, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 148) #16
  call void @final_note(ptr noundef %22) #16
  br label %23

23:                                               ; preds = %15, %8, %2
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @append_elf_note(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @final_note(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @crash_notes_memory_init() #10 section ".init.text" {
  %1 = tail call noalias ptr @__alloc_percpu(i32 noundef 180, i32 noundef 256) #21
  store ptr %1, ptr @crash_notes, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #18
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ -12, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_kexec() local_unnamed_addr #4 {
  %1 = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #16
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @kexec_image, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  store i8 1, ptr @kexec_in_progress, align 1
  tail call void @kernel_restart_prepare(ptr noundef nonnull @.str.5) #16
  tail call void @migrate_to_reboot_cpu() #16
  tail call void @cpu_hotplug_enable() #16
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #18
  tail call void @machine_shutdown() #16
  tail call void @kmsg_dump(i32 noundef 4) #16
  %8 = load ptr, ptr @kexec_image, align 4
  tail call void @machine_kexec(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #16
  br label %11

11:                                               ; preds = %9, %0
  %12 = phi i32 [ %10, %9 ], [ -16, %0 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_to_reboot_cpu() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_enable() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_shutdown() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_kexec_protect_crashkres() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_kexec_unprotect_crashkres() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kimage_alloc_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %8 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %24, %3
  %11 = phi ptr [ %4, %3 ], [ %12, %24 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #16
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 98, i32 1
  %17 = and i32 %1, -257
  %18 = and i32 %1, 256
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 7
  %21 = and i32 %1, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 11
  br label %39

24:                                               ; preds = %10
  %25 = getelementptr i8, ptr %12, i32 -4
  %26 = ptrtoint ptr %25 to i32
  %27 = sub i32 %26, %6
  %28 = lshr exact i32 %27, 5
  %29 = add i32 %28, %7
  %30 = shl i32 %29, 12
  %31 = add i32 %30, %9
  %32 = and i32 %31, -4096
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %10

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  br label %178

39:                                               ; preds = %172, %14
  %40 = load volatile i32, ptr %15, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %16, align 4
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %178

47:                                               ; preds = %43, %39
  %48 = tail call ptr @__alloc_pages(i32 noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %178, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %52, align 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef nonnull %48) #16
  %53 = tail call ptr @page_address(ptr noundef nonnull %48) #16
  br i1 %19, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr @pgprot_kernel, align 4
  %56 = or i32 %55, 512
  %57 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %48, i32 noundef %56) #16
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %57, i8 0, i32 4096, i1 false) #16
  tail call void @kunmap_local_indexed(ptr noundef %57) #16
  br label %58

58:                                               ; preds = %54, %50
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %48 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = ashr exact i32 %62, 5
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %65 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %66 = lshr i64 %65, 12
  %67 = trunc i64 %66 to i32
  %68 = add i32 %64, %67
  %69 = add i32 %68, %63
  %70 = icmp ugt i32 %69, 1048575
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %73 = load ptr, ptr %23, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store ptr %73, ptr %72, align 4
  %75 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %23, ptr %75, align 4
  store volatile ptr %72, ptr %23, align 4
  br label %172

76:                                               ; preds = %58
  %77 = shl nuw i32 %69, 12
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %178, label %79

79:                                               ; preds = %76
  %80 = add i32 %77, 4096
  %81 = load i32, ptr %20, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %178, label %83

83:                                               ; preds = %93, %79
  %84 = phi i32 [ %94, %93 ], [ 0, %79 ]
  %85 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %84, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp ult i32 %86, %80
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %84, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %86
  %92 = icmp ugt i32 %91, %77
  br i1 %92, label %96, label %93

93:                                               ; preds = %88, %83
  %94 = add nuw i32 %84, 1
  %95 = icmp eq i32 %94, %81
  br i1 %95, label %178, label %83

96:                                               ; preds = %88
  %97 = load i32, ptr %0, align 4
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %97, 4
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %173

102:                                              ; preds = %96
  %103 = trunc i64 %65 to i32
  br label %104

104:                                              ; preds = %130, %102
  %105 = phi i32 [ %97, %102 ], [ %132, %130 ]
  %106 = phi i32 [ 0, %102 ], [ %120, %130 ]
  %107 = phi ptr [ %0, %102 ], [ %131, %130 ]
  %108 = and i32 %105, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = and i32 %105, -4096
  br label %119

112:                                              ; preds = %104
  %113 = and i32 %105, 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = icmp eq i32 %106, %77
  br i1 %116, label %137, label %117

117:                                              ; preds = %115
  %118 = add i32 %106, 4096
  br label %119

119:                                              ; preds = %117, %112, %110
  %120 = phi i32 [ %111, %110 ], [ %118, %117 ], [ %106, %112 ]
  %121 = and i32 %105, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = and i32 %105, -4096
  %125 = sub i32 %124, %103
  %126 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %125, i32 -2130706432, i32 8454144) #19, !srcloc !9
  %127 = inttoptr i32 %126 to ptr
  br label %130

128:                                              ; preds = %119
  %129 = getelementptr i32, ptr %107, i32 1
  br label %130

130:                                              ; preds = %128, %123
  %131 = phi ptr [ %127, %123 ], [ %129, %128 ]
  %132 = load i32, ptr %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = and i32 %132, 4
  %135 = icmp eq i32 %134, 0
  %136 = and i1 %133, %135
  br i1 %136, label %104, label %173

137:                                              ; preds = %115
  %138 = icmp eq ptr %107, null
  br i1 %138, label %173, label %139

139:                                              ; preds = %137
  %140 = lshr i32 %105, 12
  %141 = sub i32 %140, %68
  %142 = getelementptr %struct.page, ptr %59, i32 %141
  %143 = load i32, ptr @pgprot_kernel, align 4
  %144 = or i32 %143, 512
  %145 = tail call ptr @__kmap_local_page_prot(ptr noundef %142, i32 noundef %144) #16
  %146 = load i32, ptr @pgprot_kernel, align 4
  %147 = or i32 %146, 512
  %148 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %48, i32 noundef %147) #16
  tail call void @copy_page(ptr noundef %148, ptr noundef %145) #16
  tail call void @kunmap_local_indexed(ptr noundef %148) #16
  tail call void @kunmap_local_indexed(ptr noundef %145) #16
  %149 = load i32, ptr %107, align 4
  %150 = and i32 %149, 4095
  %151 = or i32 %150, %77
  store i32 %151, ptr %107, align 4
  br i1 %22, label %152, label %178

152:                                              ; preds = %139
  %153 = load i32, ptr %142, align 4
  %154 = lshr i32 %153, 30
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = icmp ne i32 %154, 3
  %158 = load i32, ptr @movable_zone, align 4
  %159 = icmp ne i32 %158, 2
  %160 = select i1 %157, i1 true, i1 %159
  br i1 %160, label %178, label %161

161:                                              ; preds = %156, %152
  %162 = getelementptr %struct.page, ptr %59, i32 %141, i32 1, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = tail call ptr @page_address(ptr noundef %142) #16
  br label %165

165:                                              ; preds = %165, %161
  %166 = phi i32 [ 0, %161 ], [ %168, %165 ]
  %167 = getelementptr %struct.page, ptr %142, i32 %166
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %167) #16
  %168 = add i32 %166, 1
  %169 = lshr i32 %168, %163
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %165, label %171

171:                                              ; preds = %165
  tail call void @__free_pages(ptr noundef %142, i32 noundef %163) #16
  br label %172

172:                                              ; preds = %173, %171, %71
  br label %39

173:                                              ; preds = %137, %130, %96
  %174 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %175 = load ptr, ptr %4, align 4
  %176 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  store ptr %174, ptr %176, align 4
  store ptr %175, ptr %174, align 4
  %177 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %4, ptr %177, align 4
  store volatile ptr %174, ptr %4, align 4
  br label %172

178:                                              ; preds = %156, %139, %93, %79, %76, %47, %43, %34
  %179 = phi ptr [ %25, %34 ], [ %48, %93 ], [ null, %47 ], [ null, %43 ], [ %48, %79 ], [ %48, %76 ], [ %142, %156 ], [ %142, %139 ]
  ret ptr %179
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind allocsize(0) }

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
!9 = !{i64 2148847281, i64 2148847304, i64 2148847336, i64 2148847368, i64 2148847406, i64 2148847436}
!10 = !{i64 2148846495, i64 2148846518, i64 2148846550, i64 2148846582, i64 2148846620, i64 2148846650}
!11 = !{i64 2151531641, i64 2151531666}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 4027753}
!14 = !{i64 4027950}
!15 = !{i64 2151513229}
!16 = !{!"auto-init"}
!17 = !{i64 5044641, i64 5044672, i64 5044700, i64 5044728, i64 5044756, i64 5044788}
!18 = !{i64 2148524745}
!19 = !{i64 909933, i64 2148399904, i64 2148399930, i64 2148399977, i64 2148399999, i64 2148400027, i64 2148400047}
!20 = !{i64 895996, i64 896020, i64 896041, i64 896058, i64 896075}
!21 = !{i64 2148524945}
