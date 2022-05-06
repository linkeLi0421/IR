; ModuleID = '/llk/IR/arch/arm/kernel/signal.c_pt.bc'
source_filename = "../arch/arm/kernel/signal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.12 }
%union.anon.12 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.89 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vfp_sigframe = type { i32, i32, %struct.user_vfp, %struct.user_vfp_exc }
%struct.user_vfp = type { [32 x i64], i32 }
%struct.user_vfp_exc = type { i32, i32, i32 }
%struct.sigcontext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucontext = type { i32, ptr, %struct.sigaltstack, %struct.sigcontext, %struct.sigset_t, [30 x i32], [128 x i32] }
%struct.sigaltstack = type { ptr, i32, i32 }
%struct.iwmmxt_sigframe = type { i32, i32, %struct.iwmmxt_struct }
%struct.rt_sigframe = type { %struct.siginfo, %struct.sigframe }
%struct.siginfo = type { %union.anon.97 }
%union.anon.97 = type { [32 x i32] }
%struct.sigframe = type { %struct.ucontext, [4 x i32] }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_siginfo = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32, i32, i32 }
%struct.anon.4 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@signal_return_offset = internal unnamed_addr global i32 0, align 4
@sigreturn_codes = external dso_local local_unnamed_addr constant [17 x i32], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@switch.table.do_signal = private unnamed_addr constant [5 x i32] [i32 -1, i32 -1, i32 1, i32 1, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_sigreturn(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #7
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 51, i32 1
  store ptr @do_no_restart_syscall, ptr %3, align 4
  %4 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = inttoptr i32 %5 to ptr
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 760, i32 -1090519040) #8, !srcloc !8
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @restore_sigframe(ptr noundef %0, ptr noundef %9)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, ptr %0, align 4
  br label %19

18:                                               ; preds = %13, %8, %1
  tail call void @force_sig(i32 noundef 11) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ 0, %18 ], [ %17, %16 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_no_restart_syscall(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @restore_sigframe(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.vfp_sigframe, align 8
  %4 = alloca [168 x i8], align 1
  %5 = alloca %struct.sigcontext, align 4
  %6 = alloca %struct.sigset_t, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !9
  %7 = getelementptr inbounds %struct.ucontext, ptr %1, i32 0, i32 4
  %8 = tail call ptr @llvm.thread.pointer() #7
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #9, !srcloc !10
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %7, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @set_current_blocked(ptr noundef nonnull %6) #7
  br label %16

16:                                               ; preds = %15, %2
  %17 = getelementptr inbounds %struct.ucontext, ptr %1, i32 0, i32 3
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #9, !srcloc !10
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %17, i32 noundef 84) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %22 = or i32 %21, %13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  br label %75

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr [18 x i32], ptr %0, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [18 x i32], ptr %0, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [18 x i32], ptr %0, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [18 x i32], ptr %0, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [18 x i32], ptr %0, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr [18 x i32], ptr %0, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [18 x i32], ptr %0, i32 0, i32 7
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr [18 x i32], ptr %0, i32 0, i32 8
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr [18 x i32], ptr %0, i32 0, i32 9
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 13
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr [18 x i32], ptr %0, i32 0, i32 10
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr [18 x i32], ptr %0, i32 0, i32 11
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr [18 x i32], ptr %0, i32 0, i32 12
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 17
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr [18 x i32], ptr %0, i32 0, i32 14
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 18
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.sigcontext, ptr %5, i32 0, i32 19
  br label %75

75:                                               ; preds = %26, %24
  %76 = phi ptr [ %25, %24 ], [ %74, %26 ]
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %79 = and i32 %77, 31
  %80 = and i32 %77, -321
  store i32 %80, ptr %78, align 4
  %81 = and i32 %77, 128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = icmp eq i32 %79, 16
  br i1 %84, label %98, label %85

85:                                               ; preds = %83
  %86 = load i32, ptr @elf_hwcap, align 4
  %87 = and i32 %86, 8
  %88 = icmp ne i32 %87, 0
  %89 = icmp eq i32 %79, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %98, label %91

91:                                               ; preds = %85, %75
  %92 = and i32 %77, -464
  store i32 %92, ptr %78, align 4
  %93 = load i32, ptr @elf_hwcap, align 4
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = or i32 %92, 16
  store i32 %97, ptr %78, align 4
  br label %98

98:                                               ; preds = %96, %91, %85, %83
  %99 = phi i32 [ 0, %83 ], [ 0, %85 ], [ 1, %91 ], [ 1, %96 ]
  %100 = or i32 %99, %22
  %101 = getelementptr inbounds %struct.ucontext, ptr %1, i32 0, i32 6
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %103, label %156

103:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(168) %4, i8 0, i32 168, i1 false) #7, !annotation !9
  %104 = getelementptr inbounds i8, ptr %4, i32 8
  %105 = ptrtoint ptr %104 to i32
  %106 = and i32 %105, -8
  %107 = inttoptr i32 %106 to ptr
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #9, !srcloc !10
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %111 = call i32 @arm_copy_from_user(ptr noundef %107, ptr noundef %101, i32 noundef 160) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %103
  %114 = load volatile i32, ptr %8, align 4
  %115 = and i32 %114, 131072
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, ptr %107, align 8
  %119 = icmp eq i32 %118, -1327895295
  br i1 %119, label %120, label %136

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %107, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 160
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load volatile i32, ptr %8, align 4
  %126 = and i32 %125, 131072
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %107, align 8
  %130 = icmp eq i32 %129, 317686826
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %107, i32 0, i32 2
  call void @iwmmxt_task_restore(ptr noundef %8, ptr noundef %132) #7
  br label %133

133:                                              ; preds = %131, %124
  %134 = getelementptr %struct.ucontext, ptr %1, i32 0, i32 6, i32 40
  br label %136

135:                                              ; preds = %128, %120, %103
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #7
  br label %156

136:                                              ; preds = %133, %117
  %137 = phi ptr [ %134, %133 ], [ %101, %117 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i32 288, i1 false) #7, !annotation !9
  %138 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #9, !srcloc !10
  %139 = and i32 %138, -13
  %140 = or i32 %139, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %141 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %137, i32 noundef 288) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load i32, ptr %3, align 8
  %145 = icmp ne i32 %144, 1447448577
  %146 = getelementptr inbounds %struct.vfp_sigframe, ptr %3, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp ne i32 %147, 288
  %149 = select i1 %145, i1 true, i1 %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.vfp_sigframe, ptr %3, i32 0, i32 2
  %152 = getelementptr inbounds %struct.vfp_sigframe, ptr %3, i32 0, i32 3
  %153 = call i32 @vfp_restore_user_hwstate(ptr noundef %151, ptr noundef %152) #7
  br label %154

154:                                              ; preds = %150, %143, %136
  %155 = phi i32 [ %153, %150 ], [ %141, %136 ], [ -22, %143 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %3) #7
  br label %156

156:                                              ; preds = %154, %135, %98
  %157 = phi i32 [ %155, %154 ], [ -1, %135 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #7
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_rt_sigreturn(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #7
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 51, i32 1
  store ptr @do_no_restart_syscall, ptr %3, align 4
  %4 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = inttoptr i32 %5 to ptr
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 888, i32 -1090519040) #8, !srcloc !13
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rt_sigframe, ptr %9, i32 0, i32 1
  %15 = tail call fastcc i32 @restore_sigframe(ptr noundef %0, ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rt_sigframe, ptr %9, i32 0, i32 1, i32 0, i32 2
  %19 = tail call i32 @restore_altstack(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, ptr %0, align 4
  br label %24

23:                                               ; preds = %17, %13, %8, %1
  tail call void @force_sig(i32 noundef 11) #7
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ 0, %23 ], [ %22, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_altstack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_work_pending(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  br label %5

5:                                                ; preds = %26, %3
  %6 = phi i32 [ %1, %3 ], [ %29, %26 ]
  %7 = phi i32 [ %2, %3 ], [ %27, %26 ]
  %8 = and i32 %6, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !14

10:                                               ; preds = %5
  tail call void @schedule() #7
  br label %26

11:                                               ; preds = %5
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32, !prof !15

15:                                               ; preds = %11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  %16 = and i32 %6, 257
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @do_signal(ptr noundef %0, i32 noundef %7)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %32

21:                                               ; preds = %15
  %22 = and i32 %6, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @uprobe_notify_resume(ptr noundef %0) #7
  br label %26

25:                                               ; preds = %21
  tail call fastcc void @tracehook_notify_resume(ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %24, %18, %10
  %27 = phi i32 [ %7, %10 ], [ 0, %18 ], [ %7, %24 ], [ %7, %25 ]
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #7, !srcloc !17
  %28 = tail call ptr @llvm.thread.pointer() #7
  %29 = load volatile i32, ptr %28, align 8
  %30 = and i32 %29, 271
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %5

32:                                               ; preds = %26, %18, %11
  %33 = phi i32 [ %19, %18 ], [ 0, %11 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_signal(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ksignal, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !9
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 -4, i32 -2
  %13 = add i32 %12, %7
  %14 = load i32, ptr %0, align 4
  %15 = add i32 %14, 516
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = trunc i32 %15 to i8
  %19 = lshr i8 29, %18
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [5 x i32], ptr @switch.table.do_signal, i32 0, i32 %15
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [18 x i32], ptr %0, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %0, align 4
  store i32 %13, ptr %6, align 4
  br label %27

27:                                               ; preds = %22, %17, %5, %2
  %28 = phi i32 [ %14, %5 ], [ %14, %22 ], [ 0, %2 ], [ %14, %17 ]
  %29 = phi i32 [ %7, %5 ], [ %7, %22 ], [ 0, %2 ], [ %7, %17 ]
  %30 = phi i32 [ %13, %5 ], [ %13, %22 ], [ 0, %2 ], [ %13, %17 ]
  %31 = phi i32 [ 0, %5 ], [ %24, %22 ], [ 0, %2 ], [ 0, %17 ]
  %32 = call zeroext i1 @get_signal(ptr noundef nonnull %3) #7
  br i1 %32, label %33, label %201

33:                                               ; preds = %27
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %50, label %35, !prof !15

35:                                               ; preds = %33
  %36 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %30
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = and i32 %28, -3
  %41 = icmp eq i32 %40, -516
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = icmp eq i32 %28, -512
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.sigaction, ptr %3, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 268435456
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 -4, ptr %0, align 4
  store i32 %29, ptr %36, align 4
  br label %50

50:                                               ; preds = %49, %44, %42, %35, %33
  %51 = tail call ptr @llvm.thread.pointer() #7
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 95
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !15

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 97
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %57, %56 ], [ %52, %50 ]
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %60 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 135
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 2
  store i32 %62, ptr %60, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %63 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 133
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  call void @__rseq_handle_notify_resume(ptr noundef nonnull %3, ptr noundef %0) #7
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds %struct.sigaction, ptr %3, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %69, 134217728
  %75 = icmp eq i32 %74, 0
  br i1 %71, label %135, label %76

76:                                               ; preds = %67
  br i1 %75, label %94, label %77, !prof !15

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 100
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  %83 = load i32, ptr %82, align 8
  %84 = icmp sgt i32 %83, -1
  %85 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 99
  %86 = load i32, ptr %85, align 64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = icmp ule i32 %73, %86
  %89 = sub i32 %73, %86
  %90 = icmp ugt i32 %89, %79
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %81
  %93 = add i32 %86, %79
  br label %94

94:                                               ; preds = %92, %87, %77, %76
  %95 = phi i32 [ %93, %92 ], [ %73, %76 ], [ %73, %77 ], [ %73, %87 ]
  %96 = add i32 %95, -888
  %97 = and i32 %96, -8
  %98 = inttoptr i32 %97 to ptr
  %99 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %98, i32 888, i32 -1090519040) #8, !srcloc !20
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp ne i32 %100, 0
  %102 = icmp eq i32 %97, 0
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %175, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.ksignal, ptr %3, i32 0, i32 1
  %106 = call i32 @copy_siginfo_to_user(ptr noundef nonnull %98, ptr noundef %105) #7
  %107 = getelementptr inbounds %struct.rt_sigframe, ptr %98, i32 0, i32 1
  %108 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %109 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %108) #9, !srcloc !10
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %112 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %107, i32 0, i32 -1090519041) #7, !srcloc !21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %113 = or i32 %112, %106
  %114 = getelementptr inbounds %struct.rt_sigframe, ptr %98, i32 0, i32 1, i32 0, i32 1
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %108) #9, !srcloc !10
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %118 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %114, ptr null, i32 -1090519041) #7, !srcloc !22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %119 = or i32 %113, %118
  %120 = getelementptr inbounds %struct.rt_sigframe, ptr %98, i32 0, i32 1, i32 0, i32 2
  %121 = load i32, ptr %72, align 4
  %122 = call i32 @__save_altstack(ptr noundef %120, i32 noundef %121) #7
  %123 = or i32 %119, %122
  %124 = call fastcc i32 @setup_sigframe(ptr noundef %107, ptr noundef %0, ptr noundef %59) #7
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %175

127:                                              ; preds = %104
  %128 = getelementptr inbounds %struct.rt_sigframe, ptr %98, i32 0, i32 1, i32 1
  %129 = call fastcc i32 @setup_return(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %128, ptr noundef nonnull %98) #7
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %175

131:                                              ; preds = %127
  %132 = getelementptr [18 x i32], ptr %0, i32 0, i32 1
  store i32 %97, ptr %132, align 4
  %133 = ptrtoint ptr %107 to i32
  %134 = getelementptr [18 x i32], ptr %0, i32 0, i32 2
  store i32 %133, ptr %134, align 4
  br label %175

135:                                              ; preds = %67
  br i1 %75, label %153, label %136, !prof !15

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 100
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  %142 = load i32, ptr %141, align 8
  %143 = icmp sgt i32 %142, -1
  %144 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 99
  %145 = load i32, ptr %144, align 64
  br i1 %143, label %146, label %151

146:                                              ; preds = %140
  %147 = icmp ule i32 %73, %145
  %148 = sub i32 %73, %145
  %149 = icmp ugt i32 %148, %138
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %140
  %152 = add i32 %145, %138
  br label %153

153:                                              ; preds = %151, %146, %136, %135
  %154 = phi i32 [ %152, %151 ], [ %73, %135 ], [ %73, %136 ], [ %73, %146 ]
  %155 = add i32 %154, -760
  %156 = and i32 %155, -8
  %157 = inttoptr i32 %156 to ptr
  %158 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %157, i32 760, i32 -1090519040) #8, !srcloc !20
  %159 = extractvalue { i32, i32 } %158, 0
  %160 = icmp ne i32 %159, 0
  %161 = icmp eq i32 %156, 0
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %175, label %163

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %165 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %164) #9, !srcloc !10
  %166 = and i32 %165, -13
  %167 = or i32 %166, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %167) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %168 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %157, i32 1522778970, i32 -1090519041) #7, !srcloc !23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %169 = call fastcc i32 @setup_sigframe(ptr noundef nonnull %157, ptr noundef %0, ptr noundef %59) #7
  %170 = or i32 %169, %168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.sigframe, ptr %157, i32 0, i32 1
  %174 = call fastcc i32 @setup_return(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %173, ptr noundef nonnull %157) #7
  br label %175

175:                                              ; preds = %172, %163, %153, %131, %127, %104, %94
  %176 = phi i32 [ 1, %94 ], [ 0, %131 ], [ %129, %127 ], [ %125, %104 ], [ 1, %153 ], [ %174, %172 ], [ %170, %163 ]
  %177 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %178 = load i32, ptr %177, align 4
  %179 = and i32 %178, 31
  %180 = and i32 %178, -321
  store i32 %180, ptr %177, align 4
  %181 = and i32 %178, 128
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = icmp eq i32 %179, 16
  br i1 %184, label %198, label %185

185:                                              ; preds = %183
  %186 = load i32, ptr @elf_hwcap, align 4
  %187 = and i32 %186, 8
  %188 = icmp ne i32 %187, 0
  %189 = icmp eq i32 %179, 0
  %190 = select i1 %188, i1 %189, i1 false
  br i1 %190, label %198, label %191

191:                                              ; preds = %185, %175
  %192 = and i32 %178, -464
  store i32 %192, ptr %177, align 4
  %193 = load i32, ptr @elf_hwcap, align 4
  %194 = and i32 %193, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = or i32 %192, 16
  store i32 %197, ptr %177, align 4
  br label %198

198:                                              ; preds = %196, %191, %185, %183
  %199 = phi i32 [ 0, %183 ], [ 0, %185 ], [ 1, %191 ], [ 1, %196 ]
  %200 = or i32 %199, %176
  call void @signal_setup_done(i32 noundef %200, ptr noundef nonnull %3, i32 noundef 0) #7
  br label %214

201:                                              ; preds = %27
  %202 = tail call ptr @llvm.thread.pointer() #7
  %203 = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %202) #7
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 97
  call void @__set_current_blocked(ptr noundef %206) #7
  br label %207

207:                                              ; preds = %205, %201
  %208 = icmp eq i32 %31, 0
  br i1 %208, label %214, label %209, !prof !15

209:                                              ; preds = %207
  %210 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, %30
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 %29, ptr %210, align 4
  br label %214

214:                                              ; preds = %213, %209, %207, %198
  %215 = phi i32 [ %31, %213 ], [ 0, %207 ], [ 0, %209 ], [ 0, %198 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret i32 %215
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_notify_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tracehook_notify_resume(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @llvm.thread.pointer() #7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 102
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !15

6:                                                ; preds = %1
  tail call void @task_work_run() #7
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 133
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @__rseq_handle_notify_resume(ptr noundef null, ptr noundef %0) #7
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_signal_page() local_unnamed_addr #0 {
  %1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @page_address(ptr noundef nonnull %1) #7
  %5 = tail call ptr @__memset32(ptr noundef %4, i32 noundef -402792719, i32 noundef 4096) #7
  %6 = tail call i32 @get_random_u32() #7
  %7 = and i32 %6, 2044
  %8 = add nuw nsw i32 %7, 512
  store i32 %8, ptr @signal_return_offset, align 4
  %9 = getelementptr i8, ptr %4, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(68) %9, ptr noundef nonnull align 4 dereferenceable(68) @sigreturn_codes, i32 68, i1 false)
  %10 = ptrtoint ptr %4 to i32
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %12 = add i32 %10, 4096
  tail call void %11(i32 noundef %10, i32 noundef %12) #7
  br label %13

13:                                               ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_restore_user_hwstate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_setup_done(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rseq_handle_notify_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_to_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__save_altstack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @setup_sigframe(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.vfp_sigframe, align 8
  %5 = alloca [168 x i8], align 1
  %6 = alloca %struct.sigcontext, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %6) #7
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 152, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 152, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %2, align 4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr [18 x i32], ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [18 x i32], ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [18 x i32], ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [18 x i32], ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [18 x i32], ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [18 x i32], ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [18 x i32], ptr %1, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr [18 x i32], ptr %1, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [18 x i32], ptr %1, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [18 x i32], ptr %1, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [18 x i32], ptr %1, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [18 x i32], ptr %1, i32 0, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [18 x i32], ptr %1, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [18 x i32], ptr %1, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 152
  %47 = load i32, ptr %46, align 4
  store i32 %9, ptr %6, align 4
  %48 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 %11, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %6, i32 8
  store i32 %12, ptr %49, align 4
  %50 = getelementptr inbounds i8, ptr %6, i32 12
  store i32 %13, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %6, i32 16
  store i32 %15, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %6, i32 20
  store i32 %17, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %6, i32 24
  store i32 %19, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %6, i32 28
  store i32 %21, ptr %54, align 4
  %55 = getelementptr inbounds i8, ptr %6, i32 32
  store i32 %23, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %6, i32 36
  store i32 %25, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %6, i32 40
  store i32 %27, ptr %57, align 4
  %58 = getelementptr inbounds i8, ptr %6, i32 44
  store i32 %29, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %6, i32 48
  store i32 %31, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %6, i32 52
  store i32 %33, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %6, i32 56
  store i32 %35, ptr %61, align 4
  %62 = getelementptr inbounds i8, ptr %6, i32 60
  store i32 %37, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %6, i32 64
  store i32 %39, ptr %63, align 4
  %64 = getelementptr inbounds i8, ptr %6, i32 68
  store i32 %41, ptr %64, align 4
  %65 = getelementptr inbounds i8, ptr %6, i32 72
  store i32 %43, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %6, i32 76
  store i32 %45, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %6, i32 80
  store i32 %47, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ucontext, ptr %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #9, !srcloc !10
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %73 = call i32 @arm_copy_to_user(ptr noundef %68, ptr noundef nonnull %6, i32 noundef 84) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %74 = getelementptr inbounds %struct.ucontext, ptr %0, i32 0, i32 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #9, !srcloc !10
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %78 = call i32 @arm_copy_to_user(ptr noundef %74, ptr noundef %2, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %79 = or i32 %78, %73
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.ucontext, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(168) %5, i8 0, i32 168, i1 false) #7, !annotation !9
  %83 = getelementptr inbounds i8, ptr %5, i32 8
  %84 = ptrtoint ptr %83 to i32
  %85 = and i32 %84, -8
  %86 = inttoptr i32 %85 to ptr
  %87 = load volatile i32, ptr %7, align 4
  %88 = and i32 %87, 131072
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  store i32 317686826, ptr %86, align 8
  %91 = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %86, i32 0, i32 1
  store i32 160, ptr %91, align 4
  %92 = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %86, i32 0, i32 2
  call void @iwmmxt_task_copy(ptr noundef %7, ptr noundef %92) #7
  br label %96

93:                                               ; preds = %81
  store i32 -1327895295, ptr %86, align 8
  %94 = getelementptr inbounds i8, ptr %86, i32 4
  store i32 160, ptr %94, align 4
  %95 = getelementptr inbounds i8, ptr %86, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(152) %95, i8 0, i32 152, i1 false) #7
  br label %96

96:                                               ; preds = %93, %90
  %97 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #9, !srcloc !10
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %100 = call i32 @arm_copy_to_user(ptr noundef %82, ptr noundef %86, i32 noundef 160) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %5) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %4) #7
  %103 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(280) %103, i8 0, i64 280, i1 false) #7
  store i32 1447448577, ptr %4, align 8
  %104 = getelementptr inbounds %struct.vfp_sigframe, ptr %4, i32 0, i32 1
  store i32 288, ptr %104, align 4
  %105 = getelementptr inbounds %struct.vfp_sigframe, ptr %4, i32 0, i32 3
  %106 = call i32 @vfp_preserve_user_clear_hwstate(ptr noundef %103, ptr noundef %105) #7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ucontext, ptr %0, i32 0, i32 6, i32 40
  %110 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #9, !srcloc !10
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %113 = call i32 @arm_copy_to_user(ptr noundef %109, ptr noundef nonnull %4, i32 noundef 288) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %114

114:                                              ; preds = %108, %102
  %115 = phi i32 [ %113, %108 ], [ %106, %102 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %4) #7
  br label %116

116:                                              ; preds = %114, %96, %3
  %117 = phi i32 [ %115, %114 ], [ %100, %96 ], [ %79, %3 ]
  %118 = getelementptr inbounds %struct.ucontext, ptr %0, i32 0, i32 6, i32 112
  %119 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #9, !srcloc !10
  %120 = and i32 %119, -13
  %121 = or i32 %120, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %122 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %118, i32 0, i32 -1090519041) #7, !srcloc !25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #7, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %123 = or i32 %122, %117
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %6) #7
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @setup_return(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16776703
  %10 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %8, 16776672
  %15 = or i32 %14, 16
  %16 = select i1 %13, i32 %9, i32 %15
  %17 = load i32, ptr @elf_hwcap, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %6, 1
  %21 = and i32 %16, 16712159
  %22 = shl nuw nsw i32 %20, 5
  %23 = or i32 %22, %21
  %24 = select i1 %19, i32 %16, i32 %23
  %25 = select i1 %19, i32 0, i32 %20
  %26 = and i32 %11, 67108864
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %76

32:                                               ; preds = %4
  %33 = shl nuw nsw i32 %25, 1
  %34 = and i32 %11, 4
  %35 = icmp eq i32 %34, 0
  %36 = add nuw nsw i32 %33, 3
  %37 = select i1 %35, i32 %33, i32 %36
  %38 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = tail call ptr @llvm.thread.pointer() #7
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #9, !srcloc !10
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %39, i32 -1090519041) #7, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %32
  %48 = getelementptr i32, ptr %2, i32 1
  %49 = add nuw nsw i32 %37, 1
  %50 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #9, !srcloc !10
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %55 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %48, i32 %51, i32 -1090519041) #7, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %47
  %58 = and i32 %24, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 37
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.anon.4, ptr %62, i32 0, i32 42, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr @signal_return_offset, align 4
  %66 = shl nuw nsw i32 %37, 2
  %67 = or i32 %66, %25
  %68 = add i32 %67, %64
  %69 = add i32 %68, %65
  br label %76

70:                                               ; preds = %57
  %71 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %72 = ptrtoint ptr %2 to i32
  %73 = getelementptr i32, ptr %2, i32 3
  %74 = ptrtoint ptr %73 to i32
  tail call void %71(i32 noundef %72, i32 noundef %74) #7
  %75 = add i32 %25, %72
  br label %76

76:                                               ; preds = %70, %60, %28
  %77 = phi i32 [ %69, %60 ], [ %75, %70 ], [ %31, %28 ]
  %78 = getelementptr inbounds %struct.ksignal, ptr %1, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %0, align 4
  %80 = ptrtoint ptr %3 to i32
  %81 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  store i32 %80, ptr %81, align 4
  %82 = getelementptr [18 x i32], ptr %0, i32 0, i32 14
  store i32 %77, ptr %82, align 4
  %83 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  store i32 %6, ptr %83, align 4
  store i32 %24, ptr %7, align 4
  br label %84

84:                                               ; preds = %76, %47, %32
  %85 = phi i32 [ 0, %76 ], [ 1, %47 ], [ 1, %32 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_preserve_user_clear_hwstate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

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
!8 = !{i64 2154100820, i64 2154100845}
!9 = !{!"auto-init"}
!10 = !{i64 2502914}
!11 = !{i64 2503111}
!12 = !{i64 2149988390}
!13 = !{i64 2154101485, i64 2154101510}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 419880}
!17 = !{i64 420070}
!18 = !{i64 2149965062}
!19 = !{i64 2149965139}
!20 = !{i64 2154110682, i64 2154110707}
!21 = !{i64 2154203480, i64 2154203760, i64 2154204094, i64 2154204428}
!22 = !{i64 2154211770, i64 2154212050, i64 2154212384, i64 2154212718}
!23 = !{i64 2154195226, i64 2154195506, i64 2154195840, i64 2154196174}
!24 = !{i64 2153643109}
!25 = !{i64 2154107571, i64 2154107851, i64 2154108185, i64 2154108519}
!26 = !{i64 2154178579, i64 2154178859, i64 2154179193, i64 2154179527}
!27 = !{i64 2154186782, i64 2154187062, i64 2154187396, i64 2154187730}
