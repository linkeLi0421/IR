; ModuleID = '/llk/IR/fs/fs_struct.c_pt.bc'
source_filename = "../fs/fs_struct.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unshare_fs_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22unshare_fs_struct\22\09\09\09\09\09"
module asm "__kstrtabns_unshare_fs_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_umask:\09\09\09\09\09"
module asm "\09.asciz \09\22current_umask\22\09\09\09\09\09"
module asm "__kstrtabns_current_umask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.path = type { ptr, ptr }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@fs_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_unshare_fs_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_unshare_fs_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_unshare_fs_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unshare_fs_struct to i32), ptr @__kstrtab_unshare_fs_struct, ptr @__kstrtabns_unshare_fs_struct }, section "___ksymtab_gpl+unshare_fs_struct", align 4
@__kstrtab_current_umask = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_umask = external dso_local constant [0 x i8], align 1
@__ksymtab_current_umask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_umask to i32), ptr @__kstrtab_current_umask, ptr @__kstrtabns_current_umask }, section "___ksymtab+current_umask", align 4
@init_fs = dso_local local_unnamed_addr global %struct.fs_struct { i32 1, %struct.spinlock zeroinitializer, %struct.seqcount_spinlock zeroinitializer, i32 18, i32 0, %struct.path zeroinitializer, %struct.path zeroinitializer }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_current_umask, ptr @__ksymtab_unshare_fs_struct], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_fs_root(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  tail call void @path_get(ptr noundef %1) #5
  %4 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !8
  %8 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 5
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %1, align 4
  store i64 %10, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !9
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %15 = icmp ult i64 %9, 4294967296
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void @path_put(ptr noundef nonnull %3) #5
  br label %17

17:                                               ; preds = %16, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_fs_pwd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  tail call void @path_get(ptr noundef %1) #5
  %4 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !8
  %8 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 6
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %1, align 4
  store i64 %10, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !9
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %15 = icmp ult i64 %9, 4294967296
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void @path_put(ptr noundef nonnull %3) #5
  br label %17

17:                                               ; preds = %16, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @chroot_fs_refs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %4 = getelementptr i8, ptr %3, i32 -1116
  %5 = icmp eq ptr %4, @init_task
  br i1 %5, label %76, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  br label %13

8:                                                ; preds = %68
  %9 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 34
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -1116
  %12 = icmp eq ptr %11, @init_task
  br i1 %12, label %76, label %13

13:                                               ; preds = %8, %6
  %14 = phi ptr [ %4, %6 ], [ %11, %8 ]
  %15 = phi i32 [ 0, %6 ], [ %69, %8 ]
  br label %16

16:                                               ; preds = %68, %13
  %17 = phi i32 [ %69, %68 ], [ %15, %13 ]
  %18 = phi ptr [ %74, %68 ], [ %14, %13 ]
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %19) #5
  %20 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 89
  %21 = load ptr, ptr %20, align 64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %68, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %24) #5
  %25 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !8
  %28 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 5
  %29 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 5, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load ptr, ptr %28, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %40, !prof !14

37:                                               ; preds = %33
  %38 = load i64, ptr %1, align 4
  store i64 %38, ptr %28, align 4
  %39 = load ptr, ptr %7, align 4
  br label %40

40:                                               ; preds = %37, %33, %23
  %41 = phi ptr [ %39, %37 ], [ %30, %33 ], [ %31, %23 ]
  %42 = phi i32 [ 1, %37 ], [ 0, %33 ], [ 0, %23 ]
  %43 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 6
  %44 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 6, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %41
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load ptr, ptr %43, align 4
  %49 = load ptr, ptr %0, align 4
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %53, !prof !14

51:                                               ; preds = %47
  %52 = load i64, ptr %1, align 4
  store i64 %52, ptr %43, align 4
  br label %53

53:                                               ; preds = %51, %47, %40
  %54 = phi i32 [ 1, %51 ], [ 0, %47 ], [ 0, %40 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !9
  %55 = load i32, ptr %25, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %25, align 4
  %57 = add nuw nsw i32 %54, %42
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  tail call void @path_get(ptr noundef %1) #5
  %60 = icmp eq i32 %57, 1
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @path_get(ptr noundef %1) #5
  br label %62

62:                                               ; preds = %61, %59
  %63 = add i32 %57, %17
  br label %64

64:                                               ; preds = %62, %53
  %65 = phi i32 [ %17, %53 ], [ %63, %62 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %66 = load i16, ptr %24, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %68

68:                                               ; preds = %64, %16
  %69 = phi i32 [ %65, %64 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %70 = load i16, ptr %19, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %72 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 64
  %73 = load volatile ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 -1380
  %75 = icmp eq ptr %74, %14
  br i1 %75, label %8, label %16

76:                                               ; preds = %8, %2
  %77 = phi i32 [ 0, %2 ], [ %69, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !16
  %78 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !17
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  br label %82

82:                                               ; preds = %81, %76
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %83 = icmp eq i32 %77, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %84, %82
  %85 = phi i32 [ %86, %84 ], [ %77, %82 ]
  %86 = add i32 %85, -1
  tail call void @path_put(ptr noundef %0) #5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %84

88:                                               ; preds = %84, %82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_fs_struct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 5
  tail call void @path_put(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 6
  tail call void @path_put(ptr noundef %3) #5
  %4 = load ptr, ptr @fs_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_fs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 89
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %7) #5
  store ptr null, ptr %2, align 64
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %3, align 4
  %10 = icmp eq i32 %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %11 = load i16, ptr %7, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %13 = load i16, ptr %6, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br i1 %10, label %15, label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 5
  tail call void @path_put(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 6
  tail call void @path_put(ptr noundef %17) #5
  %18 = load ptr, ptr @fs_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %3) #5
  br label %19

19:                                               ; preds = %15, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @copy_fs_struct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @fs_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  store i32 1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 4
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 5
  %14 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 5
  %15 = load i64, ptr %14, align 4
  store i64 %15, ptr %13, align 4
  tail call void @path_get(ptr noundef %13) #5
  %16 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 6
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %16, align 4
  tail call void @path_get(ptr noundef %16) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %19 = load i16, ptr %12, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %21

21:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unshare_fs_struct() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 89
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr @fs_cachep, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %0
  store i32 1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 4
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 2
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %14) #5
  %15 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 5
  %16 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 5
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %15, align 4
  tail call void @path_get(ptr noundef %15) #5
  %18 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 6
  %19 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 6
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %18, align 4
  tail call void @path_get(ptr noundef %18) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %21 = load i16, ptr %14, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %23) #5
  tail call void @_raw_spin_lock(ptr noundef %14) #5
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %3, align 4
  %26 = icmp eq i32 %25, 0
  store ptr %5, ptr %2, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %27 = load i16, ptr %14, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %29 = load i16, ptr %23, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br i1 %26, label %31, label %33

31:                                               ; preds = %7
  tail call void @path_put(ptr noundef %16) #5
  tail call void @path_put(ptr noundef %19) #5
  %32 = load ptr, ptr @fs_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef %3) #5
  br label %33

33:                                               ; preds = %31, %7, %0
  %34 = phi i32 [ 0, %31 ], [ 0, %7 ], [ -12, %0 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @current_umask() #3 {
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 89
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 2149653425}
!9 = !{i64 2149653726}
!10 = !{i64 2149234027}
!11 = !{i64 2149229851}
!12 = !{i64 2149229926, i64 2149229953, i64 2149230000, i64 2149230022, i64 2149230050, i64 2149230070}
!13 = !{i64 2149257030}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149241909}
!16 = !{i64 462465, i64 2147964031, i64 2147964057, i64 2147964104, i64 2147964126, i64 2147964154, i64 2147964174}
!17 = !{i64 1745333, i64 1745356, i64 1745376, i64 1745400, i64 1745416}
!18 = !{i64 2149279512}
