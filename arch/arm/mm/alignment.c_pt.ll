; ModuleID = '/llk/IR/arch/arm/mm/alignment.c_pt.bc'
source_filename = "../arch/arm/mm/alignment.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon }
%union.anon = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_alignment = internal constant [10 x i8] c"alignment\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ai_usermode = internal global i32 0, align 4
@__param_alignment = internal constant %struct.kernel_param { ptr @__param_str_alignment, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon { ptr @ai_usermode } }, section "__param", align 4
@__setup_str_noalign_setup = internal constant [8 x i8] c"noalign\00", section ".init.rodata", align 1
@__setup_noalign_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_noalign_setup, ptr @noalign_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_alignment__194_1049_alignment_init5 = internal global ptr @alignment_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [14 x i8] c"cpu/alignment\00", align 1
@alignment_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @alignment_proc_open, ptr @seq_read, ptr null, ptr @alignment_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@cr_no_alignment = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"alignment exception\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"User:\09\09%lu\0A\00", align 1
@ai_user = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"System:\09\09%lu (%pS)\0A\00", align 1
@ai_sys = internal unnamed_addr global i32 0, align 4
@ai_sys_last_pc = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Skipped:\09%lu\0A\00", align 1
@ai_skipped = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Half:\09\09%lu\0A\00", align 1
@ai_half = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Word:\09\09%lu\0A\00", align 1
@ai_word = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"DWord:\09\09%lu\0A\00", align 1
@ai_dword = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Multi:\09\09%lu\0A\00", align 1
@ai_multi = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"User faults:\09%i (%s)\0A\00", align 1
@usermode_action = internal unnamed_addr constant [6 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fixup\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"fixup+warn\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"signal+warn\00", align 1
@.str.16 = private unnamed_addr constant [80 x i8] c"\014alignment: ignoring faults is unsafe on this CPU.  Defaulting to fixup mode.\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"\013Alignment trap: not handling swp instruction\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"\013Alignment trap: not handling instruction %0*x at [<%08lx>]\0A\00", align 1
@.str.19 = private unnamed_addr constant [76 x i8] c"Alignment trap: %s (%d) PC=0x%08lx Instr=0x%0*x Address=0x%08lx FSR 0x%03x\0A\00", align 1
@thumb2arm.subset = internal unnamed_addr constant [8 x i32] [i32 -411041792, i32 -511704912, i32 -406847488, i32 -510656304, i32 -409993216, i32 -510656336, i32 -405798912, i32 -510656272], align 4
@thumb2arm.subset.20 = internal unnamed_addr constant [4 x i32] [i32 -382926848, i32 -382910464, i32 -390266880, i32 -390234112], align 4
@__const.do_alignment_t32_to_handler.subset = private unnamed_addr constant [2 x i32] [i32 -382926848, i32 -390266880], align 4
@.str.21 = private unnamed_addr constant [65 x i8] c"\013LDMSTM: PC = %08lx, instr = %08x, addr = %08lx, eaddr = %08lx\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\013Alignment trap: not handling ldm with s-bit set\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_alignment__194_1049_alignment_init5, ptr @__param_alignment, ptr @__setup_noalign_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @noalign_setup(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  %2 = tail call i32 @__clear_cr(i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %2) #8, !srcloc !8
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !9
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @alignment_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef null, ptr noundef nonnull @alignment_proc_ops) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @cpu_architecture() #9
  %5 = icmp sgt i32 %4, 7
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #10
  %8 = and i32 %7, 4194304
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @__clear_cr(i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %11) #8, !srcloc !8
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !9
  %12 = load i32, ptr @ai_usermode, align 4
  %13 = tail call i32 @cpu_architecture() #9
  %14 = icmp sgt i32 %13, 7
  %15 = and i32 %12, 6
  %16 = icmp eq i32 %15, 0
  %17 = or i32 %12, 2
  %18 = select i1 %14, i1 %16, i1 false
  %19 = select i1 %18, i32 %17, i32 %12
  store i32 %19, ptr @ai_usermode, align 4
  br label %20

20:                                               ; preds = %10, %6, %3
  %21 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #10, !srcloc !10
  %22 = and i32 %21, -3
  store i32 %22, ptr @cr_no_alignment, align 4
  tail call void @hook_fault_code(i32 noundef 1, ptr noundef nonnull @do_alignment, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.1) #8
  %23 = tail call i32 @cpu_architecture() #9
  %24 = icmp slt i32 %23, 9
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @hook_fault_code(i32 noundef 3, ptr noundef nonnull @do_alignment, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %26

26:                                               ; preds = %25, %20, %0
  %27 = phi i32 [ -12, %0 ], [ 0, %25 ], [ 0, %20 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_cr(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_alignment(i32 noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  %12 = load i32, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ %8, %3 ]
  %15 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %14, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %165, label %19

19:                                               ; preds = %13
  %20 = and i32 %16, -2
  %21 = inttoptr i32 %20 to ptr
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2
  %22 = and i32 %14, 15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = tail call ptr @llvm.thread.pointer() #8
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #11, !srcloc !12
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #8, !srcloc !15
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %33 = trunc i32 %32 to i16
  br label %37

34:                                               ; preds = %19
  %35 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %6, ptr noundef %21, i32 noundef 2) #8
  %36 = load i16, ptr %6, align 2
  br label %37

37:                                               ; preds = %34, %24
  %38 = phi i16 [ %33, %24 ], [ %36, %34 ]
  %39 = phi i32 [ %31, %24 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %313

41:                                               ; preds = %37
  %42 = call i32 @cpu_architecture() #9
  %43 = icmp sgt i32 %42, 8
  %44 = zext i16 %38 to i32
  br i1 %43, label %45, label %75

45:                                               ; preds = %41
  %46 = and i32 %44, 57344
  %47 = icmp ne i32 %46, 57344
  %48 = and i32 %44, 6144
  %49 = icmp eq i32 %48, 0
  %50 = or i1 %47, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %45
  %52 = getelementptr i16, ptr %21, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2
  %53 = load i32, ptr %7, align 4
  %54 = and i32 %53, 15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = tail call ptr @llvm.thread.pointer() #8
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #11, !srcloc !12
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #8, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %62 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %52, i32 -1090519041) #8, !srcloc !15
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = extractvalue { i32, i32 } %62, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #8, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %65 = trunc i32 %64 to i16
  br label %69

66:                                               ; preds = %51
  %67 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %5, ptr noundef %52, i32 noundef 2) #8
  %68 = load i16, ptr %5, align 2
  br label %69

69:                                               ; preds = %66, %56
  %70 = phi i16 [ %65, %56 ], [ %68, %66 ]
  %71 = phi i32 [ %63, %56 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  %72 = shl nuw i32 %44, 16
  %73 = zext i16 %70 to i32
  %74 = or i32 %72, %73
  br label %184

75:                                               ; preds = %45, %41
  %76 = lshr i32 %44, 11
  %77 = and i32 %76, 1
  switch i32 %76, label %190 [
    i32 12, label %78
    i32 13, label %78
    i32 14, label %78
    i32 15, label %78
    i32 16, label %95
    i32 17, label %95
    i32 10, label %110
    i32 11, label %110
    i32 9, label %124
    i32 18, label %131
    i32 19, label %131
    i32 24, label %140
    i32 25, label %140
    i32 22, label %153
    i32 23, label %153
  ]

78:                                               ; preds = %75, %75, %75, %75
  %79 = and i32 %44, 4096
  %80 = shl nuw nsw i32 %79, 10
  %81 = shl nuw nsw i32 %77, 20
  %82 = or i32 %81, %80
  %83 = shl nuw nsw i32 %44, 12
  %84 = and i32 %83, 28672
  %85 = or i32 %82, %84
  %86 = shl nuw nsw i32 %44, 13
  %87 = and i32 %86, 458752
  %88 = or i32 %85, %87
  %89 = and i32 %44, 1984
  %90 = lshr exact i32 %79, 11
  %91 = or i32 %90, 4
  %92 = lshr i32 %89, %91
  %93 = or i32 %88, %92
  %94 = or i32 %93, -444596224
  br label %190

95:                                               ; preds = %75, %75
  %96 = shl nuw nsw i32 %77, 20
  %97 = shl nuw nsw i32 %44, 12
  %98 = and i32 %97, 28672
  %99 = or i32 %96, %98
  %100 = shl nuw nsw i32 %44, 13
  %101 = and i32 %100, 458752
  %102 = or i32 %99, %101
  %103 = lshr i32 %44, 5
  %104 = and i32 %103, 14
  %105 = or i32 %102, %104
  %106 = lshr i32 %44, 1
  %107 = and i32 %106, 768
  %108 = or i32 %105, %107
  %109 = or i32 %108, -507510608
  br label %190

110:                                              ; preds = %75, %75
  %111 = lshr i32 %44, 9
  %112 = and i32 %111, 7
  %113 = getelementptr [8 x i32], ptr @thumb2arm.subset, i32 0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = shl nuw nsw i32 %44, 12
  %116 = and i32 %115, 28672
  %117 = shl nuw nsw i32 %44, 13
  %118 = and i32 %117, 458752
  %119 = lshr i32 %44, 6
  %120 = and i32 %119, 7
  %121 = or i32 %118, %116
  %122 = or i32 %121, %120
  %123 = or i32 %122, %114
  br label %190

124:                                              ; preds = %75
  %125 = shl nuw nsw i32 %44, 4
  %126 = and i32 %125, 28672
  %127 = shl nuw nsw i32 %44, 2
  %128 = and i32 %127, 1020
  %129 = or i32 %126, %128
  %130 = or i32 %129, -442564608
  br label %190

131:                                              ; preds = %75, %75
  %132 = shl nuw nsw i32 %77, 20
  %133 = shl nuw nsw i32 %44, 4
  %134 = and i32 %133, 28672
  %135 = or i32 %132, %134
  %136 = shl nuw nsw i32 %44, 2
  %137 = and i32 %136, 1020
  %138 = or i32 %135, %137
  %139 = or i32 %138, -443744256
  br label %190

140:                                              ; preds = %75, %75
  %141 = lshr i32 %44, 8
  %142 = and i32 %141, 7
  %143 = shl nuw nsw i32 %77, %142
  %144 = and i32 %44, 255
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 -392167424, i32 -394264576
  %148 = shl nuw nsw i32 %77, 20
  %149 = or i32 %147, %148
  %150 = shl nuw nsw i32 %142, 16
  %151 = or i32 %149, %150
  %152 = or i32 %151, %144
  br label %190

153:                                              ; preds = %75, %75
  %154 = and i32 %44, 1536
  %155 = icmp eq i32 %154, 1024
  br i1 %155, label %156, label %190

156:                                              ; preds = %153
  %157 = shl nuw nsw i32 %77, 1
  %158 = lshr i32 %44, 8
  %159 = and i32 %158, 1
  %160 = or i32 %157, %159
  %161 = getelementptr [4 x i32], ptr @thumb2arm.subset.20, i32 0, i32 %160
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %44, 255
  %164 = or i32 %162, %163
  br label %190

165:                                              ; preds = %13
  %166 = inttoptr i32 %16 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %167 = and i32 %14, 15
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = tail call ptr @llvm.thread.pointer() #8
  %171 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 3
  %172 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %171) #11, !srcloc !12
  %173 = and i32 %172, -13
  %174 = or i32 %173, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %174) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %175 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %166, i32 -1090519041) #8, !srcloc !16
  %176 = extractvalue { i32, i32 } %175, 0
  %177 = extractvalue { i32, i32 } %175, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %181

178:                                              ; preds = %165
  %179 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %4, ptr noundef %166, i32 noundef 4) #8
  %180 = load i32, ptr %4, align 4
  br label %181

181:                                              ; preds = %178, %169
  %182 = phi i32 [ %177, %169 ], [ %180, %178 ]
  %183 = phi i32 [ %176, %169 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %184

184:                                              ; preds = %181, %69
  %185 = phi i32 [ %182, %181 ], [ %74, %69 ]
  %186 = phi i16 [ 0, %181 ], [ %38, %69 ]
  %187 = phi i32 [ 0, %181 ], [ 1, %69 ]
  %188 = phi i32 [ %183, %181 ], [ %71, %69 ]
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %313

190:                                              ; preds = %184, %156, %153, %140, %131, %124, %110, %95, %78, %75
  %191 = phi i32 [ %187, %184 ], [ 0, %75 ], [ 0, %78 ], [ 0, %95 ], [ 0, %110 ], [ 0, %124 ], [ 0, %131 ], [ 0, %140 ], [ 0, %153 ], [ 0, %156 ]
  %192 = phi i1 [ false, %184 ], [ true, %75 ], [ true, %78 ], [ true, %95 ], [ true, %110 ], [ true, %124 ], [ true, %131 ], [ true, %140 ], [ true, %153 ], [ true, %156 ]
  %193 = phi i32 [ 4, %184 ], [ 2, %75 ], [ 2, %78 ], [ 2, %95 ], [ 2, %110 ], [ 2, %124 ], [ 2, %131 ], [ 2, %140 ], [ 2, %153 ], [ 2, %156 ]
  %194 = phi i16 [ %186, %184 ], [ %38, %75 ], [ %38, %78 ], [ %38, %95 ], [ %38, %110 ], [ %38, %124 ], [ %38, %131 ], [ %38, %140 ], [ %38, %153 ], [ %38, %156 ]
  %195 = phi i32 [ %185, %184 ], [ -559038242, %75 ], [ %94, %78 ], [ %109, %95 ], [ %123, %110 ], [ %130, %124 ], [ %139, %131 ], [ %152, %140 ], [ -559038242, %153 ], [ %164, %156 ]
  %196 = load i32, ptr %7, align 4
  %197 = and i32 %196, 15
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %324, label %199

199:                                              ; preds = %190
  %200 = load i32, ptr @ai_sys, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr @ai_sys, align 4
  %202 = load i32, ptr %15, align 4
  %203 = inttoptr i32 %202 to ptr
  store ptr %203, ptr @ai_sys_last_pc, align 4
  br label %204

204:                                              ; preds = %344, %199
  %205 = phi i32 [ %345, %344 ], [ %202, %199 ]
  %206 = add i32 %205, %193
  store i32 %206, ptr %15, align 4
  %207 = lshr i32 %195, 25
  %208 = and i32 %207, 7
  switch i32 %208, label %316 [
    i32 0, label %209
    i32 2, label %231
    i32 3, label %235
    i32 4, label %263
  ]

209:                                              ; preds = %204
  %210 = and i32 %195, 4194304
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = lshr i32 %195, 4
  %214 = and i32 %213, 240
  %215 = and i32 %195, 15
  %216 = or i32 %214, %215
  br label %221

217:                                              ; preds = %209
  %218 = and i32 %195, 15
  %219 = getelementptr [18 x i32], ptr %2, i32 0, i32 %218
  %220 = load i32, ptr %219, align 4
  br label %221

221:                                              ; preds = %217, %212
  %222 = phi i32 [ %220, %217 ], [ %216, %212 ]
  %223 = and i32 %195, 240
  %224 = icmp eq i32 %223, 176
  br i1 %224, label %286, label %225

225:                                              ; preds = %221
  %226 = and i32 %195, 1048816
  switch i32 %226, label %228 [
    i32 1048816, label %286
    i32 208, label %227
    i32 240, label %227
  ]

227:                                              ; preds = %225, %225
  br label %286

228:                                              ; preds = %225
  %229 = and i32 %195, 32509936
  %230 = icmp eq i32 %229, 16777360
  br i1 %230, label %314, label %316

231:                                              ; preds = %204
  %232 = icmp ugt i32 %195, -268435457
  br i1 %232, label %316, label %233

233:                                              ; preds = %231
  %234 = and i32 %195, 4095
  br label %286

235:                                              ; preds = %204
  %236 = and i32 %195, 15
  %237 = getelementptr [18 x i32], ptr %2, i32 0, i32 %236
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %195, 4080
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %286, label %241

241:                                              ; preds = %235
  %242 = lshr i32 %195, 7
  %243 = and i32 %242, 31
  %244 = lshr i32 %195, 5
  %245 = and i32 %244, 3
  switch i32 %245, label %262 [
    i32 0, label %246
    i32 1, label %248
    i32 2, label %250
    i32 3, label %252
  ]

246:                                              ; preds = %241
  %247 = shl i32 %238, %243
  br label %286

248:                                              ; preds = %241
  %249 = lshr i32 %238, %243
  br label %286

250:                                              ; preds = %241
  %251 = ashr i32 %238, %243
  br label %286

252:                                              ; preds = %241
  %253 = icmp eq i32 %243, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %252
  %255 = lshr i32 %238, 1
  %256 = load i32, ptr %7, align 4
  %257 = shl i32 %256, 2
  %258 = and i32 %257, -2147483648
  %259 = or i32 %258, %255
  br label %286

260:                                              ; preds = %252
  %261 = call i32 @llvm.fshr.i32(i32 %238, i32 %238, i32 %243)
  br label %286

262:                                              ; preds = %241
  unreachable

263:                                              ; preds = %204
  %264 = icmp eq i32 %191, 0
  br i1 %264, label %286, label %265

265:                                              ; preds = %263
  %266 = lshr i32 %195, 16
  %267 = trunc i32 %266 to i16
  %268 = and i16 %267, -32
  switch i16 %268, label %316 [
    i16 -6016, label %286
    i16 -5984, label %286
    i16 -5888, label %286
    i16 -5856, label %286
    i16 -1984, label %269
    i16 -6048, label %281
    i16 -5792, label %281
    i16 -5920, label %281
    i16 -5664, label %281
    i16 -5824, label %284
    i16 -5696, label %284
  ]

269:                                              ; preds = %265
  %270 = and i32 %195, 985599
  %271 = icmp eq i32 %270, 854276
  br i1 %271, label %272, label %316

272:                                              ; preds = %269
  %273 = lshr i32 %195, 20
  %274 = and i32 %273, 1
  %275 = getelementptr [2 x i32], ptr @__const.do_alignment_t32_to_handler.subset, i32 0, i32 %274
  %276 = load i32, ptr %275, align 4
  %277 = lshr i32 %195, 12
  %278 = and i32 %277, 15
  %279 = shl nuw nsw i32 1, %278
  %280 = or i32 %276, %279
  br label %286

281:                                              ; preds = %265, %265, %265, %265
  %282 = shl i32 %195, 2
  %283 = and i32 %282, 1020
  br label %284

284:                                              ; preds = %281, %265, %265
  %285 = phi i32 [ 0, %265 ], [ 0, %265 ], [ %283, %281 ]
  br label %286

286:                                              ; preds = %284, %272, %265, %265, %265, %265, %263, %260, %254, %250, %248, %246, %235, %233, %227, %225, %221
  %287 = phi i32 [ 0, %263 ], [ 0, %265 ], [ 0, %265 ], [ 0, %265 ], [ 0, %265 ], [ 0, %272 ], [ %285, %284 ], [ %222, %225 ], [ %222, %227 ], [ %222, %221 ], [ %234, %233 ], [ %247, %246 ], [ %249, %248 ], [ %251, %250 ], [ %261, %260 ], [ %238, %235 ], [ %259, %254 ]
  %288 = phi i32 [ %195, %263 ], [ %195, %265 ], [ %195, %265 ], [ %195, %265 ], [ %195, %265 ], [ %280, %272 ], [ %195, %284 ], [ %195, %225 ], [ %195, %227 ], [ %195, %221 ], [ %195, %233 ], [ %195, %246 ], [ %195, %248 ], [ %195, %250 ], [ %195, %260 ], [ %195, %235 ], [ %195, %254 ]
  %289 = phi ptr [ @do_alignment_ldmstm, %263 ], [ @do_alignment_ldmstm, %265 ], [ @do_alignment_ldmstm, %265 ], [ @do_alignment_ldmstm, %265 ], [ @do_alignment_ldmstm, %265 ], [ @do_alignment_ldmstm, %272 ], [ @do_alignment_ldrdstrd, %284 ], [ @do_alignment_ldrhstrh, %225 ], [ @do_alignment_ldrdstrd, %227 ], [ @do_alignment_ldrhstrh, %221 ], [ @do_alignment_ldrstr, %233 ], [ @do_alignment_ldrstr, %246 ], [ @do_alignment_ldrstr, %248 ], [ @do_alignment_ldrstr, %250 ], [ @do_alignment_ldrstr, %260 ], [ @do_alignment_ldrstr, %235 ], [ @do_alignment_ldrstr, %254 ]
  %290 = call i32 %289(i32 noundef %0, i32 noundef %288, ptr noundef %2) #8, !callees !17
  %291 = icmp ult i32 %290, 2
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load i32, ptr %15, align 4
  %294 = sub i32 %293, %193
  store i32 %294, ptr %15, align 4
  %295 = icmp eq i32 %290, 0
  br i1 %295, label %316, label %313

296:                                              ; preds = %286
  %297 = icmp ne i32 %290, 2
  %298 = and i32 %288, 18874368
  %299 = icmp eq i32 %298, 16777216
  %300 = or i1 %299, %297
  br i1 %300, label %359, label %301

301:                                              ; preds = %296
  %302 = and i32 %288, 16777216
  %303 = icmp eq i32 %302, 0
  %304 = and i32 %288, 8388608
  %305 = icmp eq i32 %304, 0
  %306 = sub i32 0, %287
  %307 = select i1 %305, i32 %306, i32 %287
  %308 = select i1 %303, i32 %307, i32 0
  %309 = add i32 %308, %0
  %310 = lshr i32 %288, 16
  %311 = and i32 %310, 15
  %312 = getelementptr [18 x i32], ptr %2, i32 0, i32 %311
  store i32 %309, ptr %312, align 4
  br label %359

313:                                              ; preds = %292, %184, %37
  call void @do_bad_area(i32 noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %359

314:                                              ; preds = %228
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %316

316:                                              ; preds = %314, %292, %269, %265, %231, %228, %204
  %317 = phi i32 [ %195, %204 ], [ %288, %292 ], [ %195, %231 ], [ %195, %314 ], [ %195, %228 ], [ %195, %269 ], [ %195, %265 ]
  %318 = shl nuw nsw i32 %193, 1
  %319 = zext i16 %194 to i32
  %320 = select i1 %192, i32 %319, i32 %317
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %318, i32 noundef %320, i32 noundef %16) #12
  %322 = load i32, ptr @ai_skipped, align 4
  %323 = add i32 %322, 1
  store i32 %323, ptr @ai_skipped, align 4
  br label %359

324:                                              ; preds = %190
  %325 = load i32, ptr @ai_user, align 4
  %326 = add i32 %325, 1
  store i32 %326, ptr @ai_user, align 4
  %327 = load i32, ptr @ai_usermode, align 4
  %328 = and i32 %327, 1
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %340, label %330

330:                                              ; preds = %324
  %331 = tail call ptr @llvm.thread.pointer() #8
  %332 = getelementptr inbounds %struct.task_struct, ptr %331, i32 0, i32 85
  %333 = getelementptr inbounds %struct.task_struct, ptr %331, i32 0, i32 52
  %334 = load i32, ptr %333, align 8
  %335 = shl nuw nsw i32 %193, 1
  %336 = zext i16 %194 to i32
  %337 = select i1 %192, i32 %336, i32 %195
  %338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %332, i32 noundef %334, i32 noundef %16, i32 noundef %335, i32 noundef %337, i32 noundef %0, i32 noundef %1) #12
  %339 = load i32, ptr @ai_usermode, align 4
  br label %340

340:                                              ; preds = %330, %324
  %341 = phi i32 [ %339, %330 ], [ %327, %324 ]
  %342 = and i32 %341, 2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %340
  %345 = load i32, ptr %15, align 4
  br label %204

346:                                              ; preds = %340
  %347 = and i32 %341, 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = inttoptr i32 %0 to ptr
  %351 = call i32 @force_sig_fault(i32 noundef 7, i32 noundef 1, ptr noundef %350) #8
  br label %359

352:                                              ; preds = %346
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !18
  %353 = tail call ptr @llvm.thread.pointer() #8
  %354 = load volatile i32, ptr %353, align 8
  %355 = and i32 %354, 271
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = load i32, ptr @cr_no_alignment, align 4
  call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %358) #8, !srcloc !8
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !9
  br label %359

359:                                              ; preds = %357, %352, %349, %316, %313, %301, %296
  %360 = phi i32 [ 1, %316 ], [ 0, %313 ], [ 0, %296 ], [ 0, %352 ], [ 0, %357 ], [ 0, %349 ], [ 0, %301 ]
  ret i32 %360
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alignment_proc_open(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @alignment_proc_show, ptr noundef null) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alignment_proc_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #11, !srcloc !12
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #8, !srcloc !19
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %6
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -48
  %19 = icmp ult i32 %18, 6
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = tail call i32 @cpu_architecture() #9
  %22 = icmp sgt i32 %21, 7
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #10, !srcloc !10
  %25 = and i32 %24, 4194304
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %16, 6
  %28 = icmp eq i32 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = or i32 %18, 2
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %33

33:                                               ; preds = %30, %23, %20
  %34 = phi i32 [ %31, %30 ], [ %18, %23 ], [ %18, %20 ]
  store i32 %34, ptr @ai_usermode, align 4
  br label %35

35:                                               ; preds = %33, %15, %6, %4
  %36 = phi i32 [ -14, %6 ], [ %2, %15 ], [ %2, %33 ], [ 0, %4 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alignment_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load i32, ptr @ai_user, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %3) #8
  %4 = load i32, ptr @ai_sys, align 4
  %5 = load ptr, ptr @ai_sys_last_pc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %4, ptr noundef %5) #8
  %6 = load i32, ptr @ai_skipped, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %6) #8
  %7 = load i32, ptr @ai_half, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %7) #8
  %8 = load i32, ptr @ai_word, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %8) #8
  %9 = tail call i32 @cpu_architecture() #9
  %10 = icmp sgt i32 %9, 5
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, ptr @ai_dword, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %12) #8
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, ptr @ai_multi, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %14) #8
  %15 = load i32, ptr @ai_usermode, align 4
  %16 = getelementptr [6 x ptr], ptr @usermode_action, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %15, ptr noundef %17) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_alignment_ldrhstrh(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = lshr i32 %1, 12
  %5 = and i32 %4, 15
  %6 = load i32, ptr @ai_half, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr @ai_half, align 4
  %8 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %1, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %11, label %40, label %14

14:                                               ; preds = %3
  br i1 %13, label %33, label %15

15:                                               ; preds = %14
  %16 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %0) #10, !srcloc !20
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32 } %16, 2
  %19 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %17, i32 %18) #10, !srcloc !21
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %15
  %23 = extractvalue { i32, i32, i32 } %16, 1
  %24 = extractvalue { i32, i32, i32 } %19, 1
  %25 = shl i32 %24, 8
  %26 = or i32 %25, %23
  %27 = and i32 %1, 64
  %28 = icmp eq i32 %27, 0
  %29 = shl i32 %26, 16
  %30 = ashr exact i32 %29, 16
  %31 = select i1 %28, i32 %26, i32 %30
  %32 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %31, ptr %32, align 4
  br label %71

33:                                               ; preds = %14
  %34 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %35 = load i32, ptr %34, align 4
  %36 = tail call { i32, i32, i32 } asm "1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strb\09$1, [$2]\0A3:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, #1\0A\09b\093b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4b\0A\09.long\092b, 4b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %35, i32 %0) #10, !srcloc !22
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 2, i32 1
  br label %71

40:                                               ; preds = %3
  %41 = tail call ptr @llvm.thread.pointer() #8
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %42) #11
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #8
  tail call void asm sideeffect "isb ", "~{memory}"() #8
  br i1 %13, label %64, label %46

46:                                               ; preds = %40
  %47 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %0) #10, !srcloc !23
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = extractvalue { i32, i32, i32 } %47, 2
  %50 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %48, i32 %49) #10, !srcloc !24
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = extractvalue { i32, i32, i32 } %47, 1
  %55 = extractvalue { i32, i32, i32 } %50, 1
  %56 = shl i32 %55, 8
  %57 = or i32 %56, %54
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %58 = and i32 %1, 64
  %59 = icmp eq i32 %58, 0
  %60 = shl i32 %57, 16
  %61 = ashr exact i32 %60, 16
  %62 = select i1 %59, i32 %57, i32 %61
  %63 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %62, ptr %63, align 4
  br label %71

64:                                               ; preds = %40
  %65 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %66 = load i32, ptr %65, align 4
  %67 = tail call { i32, i32, i32 } asm "1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strbt\09$1, [$2]\0A3:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, #1\0A\09b\093b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4b\0A\09.long\092b, 4b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %66, i32 %0) #10, !srcloc !25
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %71

71:                                               ; preds = %70, %64, %53, %46, %33, %22, %15
  %72 = phi i32 [ %39, %33 ], [ 2, %22 ], [ 2, %53 ], [ 2, %70 ], [ 1, %15 ], [ 1, %46 ], [ 1, %64 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_alignment_ldrdstrd(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = lshr i32 %1, 12
  %5 = and i32 %4, 15
  %6 = and i32 %1, -33554432
  %7 = icmp eq i32 %6, -402653184
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = lshr i32 %1, 8
  %10 = and i32 %9, 15
  %11 = and i32 %1, 1048576
  %12 = icmp ne i32 %11, 0
  br label %22

13:                                               ; preds = %3
  %14 = and i32 %1, 4096
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq i32 %5, 14
  %17 = or i1 %15, %16
  br i1 %17, label %166, label %18

18:                                               ; preds = %13
  %19 = and i32 %1, 240
  %20 = icmp eq i32 %19, 208
  %21 = add nuw nsw i32 %5, 1
  br label %22

22:                                               ; preds = %18, %8
  %23 = phi i1 [ %12, %8 ], [ %20, %18 ]
  %24 = phi i32 [ %10, %8 ], [ %21, %18 ]
  %25 = load i32, ptr @ai_dword, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr @ai_dword, align 4
  %27 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %95, label %31

31:                                               ; preds = %22
  br i1 %23, label %32, label %82

32:                                               ; preds = %31
  %33 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %0) #10, !srcloc !26
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = extractvalue { i32, i32, i32 } %33, 2
  %36 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %34, i32 %35) #10, !srcloc !27
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = extractvalue { i32, i32, i32 } %36, 2
  %39 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %37, i32 %38) #10, !srcloc !28
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = extractvalue { i32, i32, i32 } %39, 2
  %42 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %40, i32 %41) #10, !srcloc !29
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %166

45:                                               ; preds = %32
  %46 = extractvalue { i32, i32, i32 } %33, 1
  %47 = extractvalue { i32, i32, i32 } %36, 1
  %48 = shl i32 %47, 8
  %49 = or i32 %48, %46
  %50 = extractvalue { i32, i32, i32 } %39, 1
  %51 = shl i32 %50, 16
  %52 = or i32 %49, %51
  %53 = extractvalue { i32, i32, i32 } %42, 1
  %54 = shl i32 %53, 24
  %55 = or i32 %52, %54
  %56 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %55, ptr %56, align 4
  %57 = add i32 %0, 4
  %58 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %57) #10, !srcloc !30
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = extractvalue { i32, i32, i32 } %58, 2
  %61 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %59, i32 %60) #10, !srcloc !31
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = extractvalue { i32, i32, i32 } %61, 2
  %64 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %62, i32 %63) #10, !srcloc !32
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = extractvalue { i32, i32, i32 } %64, 2
  %67 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %65, i32 %66) #10, !srcloc !33
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %166

70:                                               ; preds = %45
  %71 = extractvalue { i32, i32, i32 } %58, 1
  %72 = extractvalue { i32, i32, i32 } %61, 1
  %73 = shl i32 %72, 8
  %74 = or i32 %73, %71
  %75 = extractvalue { i32, i32, i32 } %64, 1
  %76 = shl i32 %75, 16
  %77 = or i32 %74, %76
  %78 = extractvalue { i32, i32, i32 } %67, 1
  %79 = shl i32 %78, 24
  %80 = or i32 %77, %79
  %81 = getelementptr [18 x i32], ptr %2, i32 0, i32 %24
  store i32 %80, ptr %81, align 4
  br label %166

82:                                               ; preds = %31
  %83 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %84 = load i32, ptr %83, align 4
  %85 = tail call { i32, i32, i32 } asm "1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %84, i32 %0) #10, !srcloc !34
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %165

88:                                               ; preds = %82
  %89 = getelementptr [18 x i32], ptr %2, i32 0, i32 %24
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %0, 4
  %92 = tail call { i32, i32, i32 } asm "1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %90, i32 %91) #10, !srcloc !35
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %166, label %165

95:                                               ; preds = %22
  %96 = tail call ptr @llvm.thread.pointer() #8
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %97) #11
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #8
  tail call void asm sideeffect "isb ", "~{memory}"() #8
  br i1 %23, label %101, label %151

101:                                              ; preds = %95
  %102 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %0) #10, !srcloc !36
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = extractvalue { i32, i32, i32 } %102, 1
  %105 = extractvalue { i32, i32, i32 } %102, 2
  %106 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %103, i32 %105) #10, !srcloc !37
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = extractvalue { i32, i32, i32 } %106, 1
  %109 = extractvalue { i32, i32, i32 } %106, 2
  %110 = shl i32 %108, 8
  %111 = or i32 %110, %104
  %112 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %107, i32 %109) #10, !srcloc !38
  %113 = extractvalue { i32, i32, i32 } %112, 0
  %114 = extractvalue { i32, i32, i32 } %112, 1
  %115 = extractvalue { i32, i32, i32 } %112, 2
  %116 = shl i32 %114, 16
  %117 = or i32 %111, %116
  %118 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %113, i32 %115) #10, !srcloc !39
  %119 = extractvalue { i32, i32, i32 } %118, 0
  %120 = extractvalue { i32, i32, i32 } %118, 1
  %121 = shl i32 %120, 24
  %122 = or i32 %117, %121
  %123 = icmp eq i32 %119, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %101
  %125 = add i32 %0, 4
  %126 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %125) #10, !srcloc !40
  %127 = extractvalue { i32, i32, i32 } %126, 0
  %128 = extractvalue { i32, i32, i32 } %126, 2
  %129 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %127, i32 %128) #10, !srcloc !41
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = extractvalue { i32, i32, i32 } %129, 2
  %132 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %130, i32 %131) #10, !srcloc !42
  %133 = extractvalue { i32, i32, i32 } %132, 0
  %134 = extractvalue { i32, i32, i32 } %132, 2
  %135 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %133, i32 %134) #10, !srcloc !43
  %136 = extractvalue { i32, i32, i32 } %135, 0
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %124
  %139 = extractvalue { i32, i32, i32 } %126, 1
  %140 = extractvalue { i32, i32, i32 } %129, 1
  %141 = shl i32 %140, 8
  %142 = or i32 %141, %139
  %143 = extractvalue { i32, i32, i32 } %132, 1
  %144 = shl i32 %143, 16
  %145 = or i32 %142, %144
  %146 = extractvalue { i32, i32, i32 } %135, 1
  %147 = shl i32 %146, 24
  %148 = or i32 %145, %147
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %149 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %122, ptr %149, align 4
  %150 = getelementptr [18 x i32], ptr %2, i32 0, i32 %24
  store i32 %148, ptr %150, align 4
  br label %166

151:                                              ; preds = %95
  %152 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %153 = load i32, ptr %152, align 4
  %154 = tail call { i32, i32, i32 } asm "1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %153, i32 %0) #10, !srcloc !44
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = getelementptr [18 x i32], ptr %2, i32 0, i32 %24
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %0, 4
  %161 = tail call { i32, i32, i32 } asm "1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %159, i32 %160) #10, !srcloc !45
  %162 = extractvalue { i32, i32, i32 } %161, 0
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %166

165:                                              ; preds = %88, %82
  br label %166

166:                                              ; preds = %165, %164, %157, %151, %138, %124, %101, %88, %70, %45, %32, %13
  %167 = phi i32 [ 1, %165 ], [ 2, %88 ], [ 0, %13 ], [ 2, %70 ], [ 2, %138 ], [ 2, %164 ], [ 1, %45 ], [ 1, %32 ], [ 1, %124 ], [ 1, %101 ], [ 1, %157 ], [ 1, %151 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_alignment_ldrstr(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = lshr i32 %1, 12
  %5 = and i32 %4, 15
  %6 = load i32, ptr @ai_word, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr @ai_word, align 4
  %8 = and i32 %1, 18874368
  %9 = icmp eq i32 %8, 2097152
  br i1 %9, label %50, label %10

10:                                               ; preds = %3
  %11 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %50, label %15

15:                                               ; preds = %10
  %16 = and i32 %1, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %0) #10, !srcloc !46
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = extractvalue { i32, i32, i32 } %19, 2
  %22 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %20, i32 %21) #10, !srcloc !47
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = extractvalue { i32, i32, i32 } %22, 2
  %25 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %23, i32 %24) #10, !srcloc !48
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = extractvalue { i32, i32, i32 } %25, 2
  %28 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %26, i32 %27) #10, !srcloc !49
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %18
  %32 = extractvalue { i32, i32, i32 } %19, 1
  %33 = extractvalue { i32, i32, i32 } %22, 1
  %34 = shl i32 %33, 8
  %35 = or i32 %34, %32
  %36 = extractvalue { i32, i32, i32 } %25, 1
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = extractvalue { i32, i32, i32 } %28, 1
  %40 = shl i32 %39, 24
  %41 = or i32 %38, %40
  %42 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %41, ptr %42, align 4
  br label %90

43:                                               ; preds = %15
  %44 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %45 = load i32, ptr %44, align 4
  %46 = tail call { i32, i32, i32 } asm "1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %45, i32 %0) #10, !srcloc !50
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 2, i32 1
  br label %90

50:                                               ; preds = %10, %3
  %51 = and i32 %1, 1048576
  %52 = icmp eq i32 %51, 0
  %53 = tail call ptr @llvm.thread.pointer() #8
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #11
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #8
  tail call void asm sideeffect "isb ", "~{memory}"() #8
  br i1 %52, label %83, label %58

58:                                               ; preds = %50
  %59 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %0) #10, !srcloc !51
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = extractvalue { i32, i32, i32 } %59, 2
  %62 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %60, i32 %61) #10, !srcloc !52
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = extractvalue { i32, i32, i32 } %62, 2
  %65 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %63, i32 %64) #10, !srcloc !53
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = extractvalue { i32, i32, i32 } %65, 2
  %68 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %66, i32 %67) #10, !srcloc !54
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %58
  %72 = extractvalue { i32, i32, i32 } %59, 1
  %73 = extractvalue { i32, i32, i32 } %62, 1
  %74 = shl i32 %73, 8
  %75 = or i32 %74, %72
  %76 = extractvalue { i32, i32, i32 } %65, 1
  %77 = shl i32 %76, 16
  %78 = or i32 %75, %77
  %79 = extractvalue { i32, i32, i32 } %68, 1
  %80 = shl i32 %79, 24
  %81 = or i32 %78, %80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %82 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  store i32 %81, ptr %82, align 4
  br label %90

83:                                               ; preds = %50
  %84 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %85 = load i32, ptr %84, align 4
  %86 = tail call { i32, i32, i32 } asm "1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %85, i32 %0) #10, !srcloc !55
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %90

90:                                               ; preds = %89, %83, %71, %58, %43, %31, %18
  %91 = phi i32 [ %49, %43 ], [ 2, %31 ], [ 2, %71 ], [ 2, %89 ], [ 1, %18 ], [ 1, %58 ], [ 1, %83 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_alignment_ldmstm(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = and i32 %1, 4194304
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %159

6:                                                ; preds = %3
  %7 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 4
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr @ai_multi, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr @ai_multi, align 4
  %12 = and i32 %1, 65535
  %13 = tail call i32 @__sw_hweight16(i32 noundef %12) #8
  %14 = lshr i32 %1, 1
  %15 = shl i32 %13, 2
  %16 = lshr i32 %1, 16
  %17 = and i32 %16, 15
  %18 = getelementptr [18 x i32], ptr %2, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %1, 8388608
  %21 = icmp eq i32 %20, 0
  %22 = sub i32 0, %15
  %23 = select i1 %21, i32 %22, i32 %15
  %24 = add i32 %23, %19
  %25 = select i1 %21, i32 %24, i32 %19
  %26 = xor i32 %14, %1
  %27 = and i32 %26, 8388608
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %25, 4
  %30 = select i1 %28, i32 %29, i32 %25
  %31 = icmp eq i32 %30, %0
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, ptr %7, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %33, i32 noundef %1, i32 noundef %0, i32 noundef %30) #12
  tail call void @show_regs(ptr noundef %2) #8
  br label %35

35:                                               ; preds = %32, %6
  %36 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %12, 0
  br i1 %41, label %146, label %42

42:                                               ; preds = %40
  %43 = and i32 %1, 1048576
  %44 = icmp eq i32 %43, 0
  br label %101

45:                                               ; preds = %35
  %46 = tail call ptr @llvm.thread.pointer() #8
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #11, !srcloc !12
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %51 = icmp eq i32 %12, 0
  br i1 %51, label %100, label %52

52:                                               ; preds = %45
  %53 = and i32 %1, 1048576
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %95, %52
  %56 = phi i32 [ 0, %52 ], [ %98, %95 ]
  %57 = phi i32 [ %12, %52 ], [ %97, %95 ]
  %58 = phi i32 [ %30, %52 ], [ %96, %95 ]
  %59 = and i32 %57, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %55
  br i1 %54, label %87, label %62

62:                                               ; preds = %61
  %63 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %58) #10, !srcloc !56
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = extractvalue { i32, i32, i32 } %63, 2
  %66 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %64, i32 %65) #10, !srcloc !57
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = extractvalue { i32, i32, i32 } %66, 2
  %69 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %67, i32 %68) #10, !srcloc !58
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = extractvalue { i32, i32, i32 } %69, 2
  %72 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %70, i32 %71) #10, !srcloc !59
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %156

75:                                               ; preds = %62
  %76 = extractvalue { i32, i32, i32 } %63, 1
  %77 = extractvalue { i32, i32, i32 } %66, 1
  %78 = shl i32 %77, 8
  %79 = or i32 %78, %76
  %80 = extractvalue { i32, i32, i32 } %69, 1
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  %83 = extractvalue { i32, i32, i32 } %72, 1
  %84 = shl i32 %83, 24
  %85 = or i32 %82, %84
  %86 = getelementptr [18 x i32], ptr %2, i32 0, i32 %56
  store i32 %85, ptr %86, align 4
  br label %93

87:                                               ; preds = %61
  %88 = getelementptr [18 x i32], ptr %2, i32 0, i32 %56
  %89 = load i32, ptr %88, align 4
  %90 = tail call { i32, i32, i32 } asm "1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %89, i32 %58) #10, !srcloc !60
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %156

93:                                               ; preds = %87, %75
  %94 = add i32 %58, 4
  br label %95

95:                                               ; preds = %93, %55
  %96 = phi i32 [ %94, %93 ], [ %58, %55 ]
  %97 = lshr i32 %57, 1
  %98 = add nuw nsw i32 %56, 1
  %99 = icmp ult i32 %57, 2
  br i1 %99, label %100, label %55

100:                                              ; preds = %95, %45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %146

101:                                              ; preds = %141, %42
  %102 = phi i32 [ 0, %42 ], [ %144, %141 ]
  %103 = phi i32 [ %12, %42 ], [ %143, %141 ]
  %104 = phi i32 [ %30, %42 ], [ %142, %141 ]
  %105 = and i32 %103, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %141, label %107

107:                                              ; preds = %101
  br i1 %44, label %133, label %108

108:                                              ; preds = %107
  %109 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %104) #10, !srcloc !61
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = extractvalue { i32, i32, i32 } %109, 2
  %112 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %110, i32 %111) #10, !srcloc !62
  %113 = extractvalue { i32, i32, i32 } %112, 0
  %114 = extractvalue { i32, i32, i32 } %112, 2
  %115 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %113, i32 %114) #10, !srcloc !63
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = extractvalue { i32, i32, i32 } %115, 2
  %118 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %116, i32 %117) #10, !srcloc !64
  %119 = extractvalue { i32, i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %108
  %122 = extractvalue { i32, i32, i32 } %109, 1
  %123 = extractvalue { i32, i32, i32 } %112, 1
  %124 = shl i32 %123, 8
  %125 = or i32 %124, %122
  %126 = extractvalue { i32, i32, i32 } %115, 1
  %127 = shl i32 %126, 16
  %128 = or i32 %125, %127
  %129 = extractvalue { i32, i32, i32 } %118, 1
  %130 = shl i32 %129, 24
  %131 = or i32 %128, %130
  %132 = getelementptr [18 x i32], ptr %2, i32 0, i32 %102
  store i32 %131, ptr %132, align 4
  br label %139

133:                                              ; preds = %107
  %134 = getelementptr [18 x i32], ptr %2, i32 0, i32 %102
  %135 = load i32, ptr %134, align 4
  %136 = tail call { i32, i32, i32 } asm "1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, lsr #8\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %135, i32 %104) #10, !srcloc !65
  %137 = extractvalue { i32, i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %133, %121
  %140 = add i32 %104, 4
  br label %141

141:                                              ; preds = %139, %101
  %142 = phi i32 [ %140, %139 ], [ %104, %101 ]
  %143 = lshr i32 %103, 1
  %144 = add nuw nsw i32 %102, 1
  %145 = icmp ult i32 %103, 2
  br i1 %145, label %146, label %101

146:                                              ; preds = %141, %100, %40
  %147 = and i32 %1, 2097152
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  store i32 %24, ptr %18, align 4
  br label %150

150:                                              ; preds = %149, %146
  %151 = and i32 %1, 1081344
  %152 = icmp eq i32 %151, 1081344
  br i1 %152, label %161, label %153

153:                                              ; preds = %150
  %154 = load i32, ptr %7, align 4
  %155 = add i32 %154, -4
  store i32 %155, ptr %7, align 4
  br label %161

156:                                              ; preds = %133, %108, %87, %62
  %157 = load i32, ptr %7, align 4
  %158 = add i32 %157, -4
  store i32 %158, ptr %7, align 4
  br label %161

159:                                              ; preds = %3
  %160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %161

161:                                              ; preds = %159, %156, %153, %150
  %162 = phi i32 [ 0, %159 ], [ 1, %156 ], [ 3, %150 ], [ 3, %153 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_bad_area(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { cold nounwind }

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
!8 = !{i64 3922118}
!9 = !{i64 2151408291}
!10 = !{i64 3921980}
!11 = !{i64 366522}
!12 = !{i64 3515939}
!13 = !{i64 3516136}
!14 = !{i64 2151001415}
!15 = !{i64 2151744086, i64 2151744366, i64 2151744700, i64 2151745034}
!16 = !{i64 2151734467, i64 2151734747, i64 2151735081, i64 2151735415}
!17 = !{ptr @do_alignment_ldmstm, ptr @do_alignment_ldrdstrd, ptr @do_alignment_ldrhstrh, ptr @do_alignment_ldrstr}
!18 = !{i64 366712}
!19 = !{i64 2151679551, i64 2151679831, i64 2151680165, i64 2151680499}
!20 = !{i64 2151689261, i64 2151688923, i64 2151688938, i64 2151688978, i64 2151688998, i64 2151689021, i64 2151689037, i64 2151689060, i64 2151689098, i64 2151689118, i64 2151689141}
!21 = !{i64 2151689754, i64 2151689416, i64 2151689431, i64 2151689471, i64 2151689491, i64 2151689514, i64 2151689530, i64 2151689553, i64 2151689591, i64 2151689611, i64 2151689634}
!22 = !{i64 2151690554, i64 2151690048, i64 2151690082, i64 2151690110, i64 2151690126, i64 2151690167, i64 2151690188, i64 2151690212, i64 2151690229, i64 2151690253, i64 2151690292, i64 2151690313, i64 2151690337, i64 2151690361}
!23 = !{i64 2151691415, i64 2151691075, i64 2151691090, i64 2151691130, i64 2151691150, i64 2151691173, i64 2151691189, i64 2151691212, i64 2151691250, i64 2151691270, i64 2151691293}
!24 = !{i64 2151691911, i64 2151691571, i64 2151691586, i64 2151691626, i64 2151691646, i64 2151691669, i64 2151691685, i64 2151691708, i64 2151691746, i64 2151691766, i64 2151691789}
!25 = !{i64 2151692716, i64 2151692207, i64 2151692241, i64 2151692269, i64 2151692285, i64 2151692326, i64 2151692347, i64 2151692371, i64 2151692388, i64 2151692412, i64 2151692451, i64 2151692472, i64 2151692496, i64 2151692520}
!26 = !{i64 2151693827, i64 2151693489, i64 2151693504, i64 2151693544, i64 2151693564, i64 2151693587, i64 2151693603, i64 2151693626, i64 2151693664, i64 2151693684, i64 2151693707}
!27 = !{i64 2151694320, i64 2151693982, i64 2151693997, i64 2151694037, i64 2151694057, i64 2151694080, i64 2151694096, i64 2151694119, i64 2151694157, i64 2151694177, i64 2151694200}
!28 = !{i64 2151694813, i64 2151694475, i64 2151694490, i64 2151694530, i64 2151694550, i64 2151694573, i64 2151694589, i64 2151694612, i64 2151694650, i64 2151694670, i64 2151694693}
!29 = !{i64 2151695306, i64 2151694968, i64 2151694983, i64 2151695023, i64 2151695043, i64 2151695066, i64 2151695082, i64 2151695105, i64 2151695143, i64 2151695163, i64 2151695186}
!30 = !{i64 2151696321, i64 2151695983, i64 2151695998, i64 2151696038, i64 2151696058, i64 2151696081, i64 2151696097, i64 2151696120, i64 2151696158, i64 2151696178, i64 2151696201}
!31 = !{i64 2151696814, i64 2151696476, i64 2151696491, i64 2151696531, i64 2151696551, i64 2151696574, i64 2151696590, i64 2151696613, i64 2151696651, i64 2151696671, i64 2151696694}
!32 = !{i64 2151697307, i64 2151696969, i64 2151696984, i64 2151697024, i64 2151697044, i64 2151697067, i64 2151697083, i64 2151697106, i64 2151697144, i64 2151697164, i64 2151697187}
!33 = !{i64 2151697800, i64 2151697462, i64 2151697477, i64 2151697517, i64 2151697537, i64 2151697560, i64 2151697576, i64 2151697599, i64 2151697637, i64 2151697657, i64 2151697680}
!34 = !{i64 2151698962, i64 2151698096, i64 2151699005, i64 2151698238, i64 2151699047, i64 2151698380, i64 2151698414, i64 2151698442, i64 2151698458, i64 2151698499, i64 2151698520, i64 2151698544, i64 2151698561, i64 2151698585, i64 2151698624, i64 2151698645, i64 2151698669, i64 2151698693, i64 2151698717, i64 2151698741}
!35 = !{i64 2151700225, i64 2151699354, i64 2151700268, i64 2151699496, i64 2151700310, i64 2151699638, i64 2151699672, i64 2151699700, i64 2151699716, i64 2151699757, i64 2151699778, i64 2151699802, i64 2151699819, i64 2151699843, i64 2151699882, i64 2151699903, i64 2151699927, i64 2151699951, i64 2151699975, i64 2151699999}
!36 = !{i64 2151701332, i64 2151700992, i64 2151701007, i64 2151701047, i64 2151701067, i64 2151701090, i64 2151701106, i64 2151701129, i64 2151701167, i64 2151701187, i64 2151701210}
!37 = !{i64 2151701828, i64 2151701488, i64 2151701503, i64 2151701543, i64 2151701563, i64 2151701586, i64 2151701602, i64 2151701625, i64 2151701663, i64 2151701683, i64 2151701706}
!38 = !{i64 2151702324, i64 2151701984, i64 2151701999, i64 2151702039, i64 2151702059, i64 2151702082, i64 2151702098, i64 2151702121, i64 2151702159, i64 2151702179, i64 2151702202}
!39 = !{i64 2151702820, i64 2151702480, i64 2151702495, i64 2151702535, i64 2151702555, i64 2151702578, i64 2151702594, i64 2151702617, i64 2151702655, i64 2151702675, i64 2151702698}
!40 = !{i64 2151703848, i64 2151703508, i64 2151703523, i64 2151703563, i64 2151703583, i64 2151703606, i64 2151703622, i64 2151703645, i64 2151703683, i64 2151703703, i64 2151703726}
!41 = !{i64 2151704344, i64 2151704004, i64 2151704019, i64 2151704059, i64 2151704079, i64 2151704102, i64 2151704118, i64 2151704141, i64 2151704179, i64 2151704199, i64 2151704222}
!42 = !{i64 2151704840, i64 2151704500, i64 2151704515, i64 2151704555, i64 2151704575, i64 2151704598, i64 2151704614, i64 2151704637, i64 2151704675, i64 2151704695, i64 2151704718}
!43 = !{i64 2151705336, i64 2151704996, i64 2151705011, i64 2151705051, i64 2151705071, i64 2151705094, i64 2151705110, i64 2151705133, i64 2151705171, i64 2151705191, i64 2151705214}
!44 = !{i64 2151706507, i64 2151705634, i64 2151706551, i64 2151705776, i64 2151706594, i64 2151705918, i64 2151705952, i64 2151705980, i64 2151705996, i64 2151706037, i64 2151706058, i64 2151706082, i64 2151706099, i64 2151706123, i64 2151706162, i64 2151706183, i64 2151706207, i64 2151706231, i64 2151706255, i64 2151706279}
!45 = !{i64 2151707781, i64 2151706903, i64 2151707825, i64 2151707045, i64 2151707868, i64 2151707187, i64 2151707221, i64 2151707249, i64 2151707265, i64 2151707306, i64 2151707327, i64 2151707351, i64 2151707368, i64 2151707392, i64 2151707431, i64 2151707452, i64 2151707476, i64 2151707500, i64 2151707524, i64 2151707548}
!46 = !{i64 2151709024, i64 2151708686, i64 2151708701, i64 2151708741, i64 2151708761, i64 2151708784, i64 2151708800, i64 2151708823, i64 2151708861, i64 2151708881, i64 2151708904}
!47 = !{i64 2151709517, i64 2151709179, i64 2151709194, i64 2151709234, i64 2151709254, i64 2151709277, i64 2151709293, i64 2151709316, i64 2151709354, i64 2151709374, i64 2151709397}
!48 = !{i64 2151710010, i64 2151709672, i64 2151709687, i64 2151709727, i64 2151709747, i64 2151709770, i64 2151709786, i64 2151709809, i64 2151709847, i64 2151709867, i64 2151709890}
!49 = !{i64 2151710503, i64 2151710165, i64 2151710180, i64 2151710220, i64 2151710240, i64 2151710263, i64 2151710279, i64 2151710302, i64 2151710340, i64 2151710360, i64 2151710383}
!50 = !{i64 2151711665, i64 2151710799, i64 2151711708, i64 2151710941, i64 2151711750, i64 2151711083, i64 2151711117, i64 2151711145, i64 2151711161, i64 2151711202, i64 2151711223, i64 2151711247, i64 2151711264, i64 2151711288, i64 2151711327, i64 2151711348, i64 2151711372, i64 2151711396, i64 2151711420, i64 2151711444}
!51 = !{i64 2151712794, i64 2151712454, i64 2151712469, i64 2151712509, i64 2151712529, i64 2151712552, i64 2151712568, i64 2151712591, i64 2151712629, i64 2151712649, i64 2151712672}
!52 = !{i64 2151713290, i64 2151712950, i64 2151712965, i64 2151713005, i64 2151713025, i64 2151713048, i64 2151713064, i64 2151713087, i64 2151713125, i64 2151713145, i64 2151713168}
!53 = !{i64 2151713786, i64 2151713446, i64 2151713461, i64 2151713501, i64 2151713521, i64 2151713544, i64 2151713560, i64 2151713583, i64 2151713621, i64 2151713641, i64 2151713664}
!54 = !{i64 2151714282, i64 2151713942, i64 2151713957, i64 2151713997, i64 2151714017, i64 2151714040, i64 2151714056, i64 2151714079, i64 2151714117, i64 2151714137, i64 2151714160}
!55 = !{i64 2151715453, i64 2151714580, i64 2151715497, i64 2151714722, i64 2151715540, i64 2151714864, i64 2151714898, i64 2151714926, i64 2151714942, i64 2151714983, i64 2151715004, i64 2151715028, i64 2151715045, i64 2151715069, i64 2151715108, i64 2151715129, i64 2151715153, i64 2151715177, i64 2151715201, i64 2151715225}
!56 = !{i64 2151718738, i64 2151718398, i64 2151718413, i64 2151718453, i64 2151718473, i64 2151718496, i64 2151718512, i64 2151718535, i64 2151718573, i64 2151718593, i64 2151718616}
!57 = !{i64 2151719234, i64 2151718894, i64 2151718909, i64 2151718949, i64 2151718969, i64 2151718992, i64 2151719008, i64 2151719031, i64 2151719069, i64 2151719089, i64 2151719112}
!58 = !{i64 2151719730, i64 2151719390, i64 2151719405, i64 2151719445, i64 2151719465, i64 2151719488, i64 2151719504, i64 2151719527, i64 2151719565, i64 2151719585, i64 2151719608}
!59 = !{i64 2151720226, i64 2151719886, i64 2151719901, i64 2151719941, i64 2151719961, i64 2151719984, i64 2151720000, i64 2151720023, i64 2151720061, i64 2151720081, i64 2151720104}
!60 = !{i64 2151721399, i64 2151720525, i64 2151721443, i64 2151720667, i64 2151721486, i64 2151720809, i64 2151720843, i64 2151720871, i64 2151720887, i64 2151720928, i64 2151720949, i64 2151720973, i64 2151720990, i64 2151721014, i64 2151721053, i64 2151721074, i64 2151721098, i64 2151721122, i64 2151721146, i64 2151721170}
!61 = !{i64 2151722543, i64 2151722205, i64 2151722220, i64 2151722260, i64 2151722280, i64 2151722303, i64 2151722319, i64 2151722342, i64 2151722380, i64 2151722400, i64 2151722423}
!62 = !{i64 2151723036, i64 2151722698, i64 2151722713, i64 2151722753, i64 2151722773, i64 2151722796, i64 2151722812, i64 2151722835, i64 2151722873, i64 2151722893, i64 2151722916}
!63 = !{i64 2151723529, i64 2151723191, i64 2151723206, i64 2151723246, i64 2151723266, i64 2151723289, i64 2151723305, i64 2151723328, i64 2151723366, i64 2151723386, i64 2151723409}
!64 = !{i64 2151724022, i64 2151723684, i64 2151723699, i64 2151723739, i64 2151723759, i64 2151723782, i64 2151723798, i64 2151723821, i64 2151723859, i64 2151723879, i64 2151723902}
!65 = !{i64 2151725186, i64 2151724319, i64 2151725229, i64 2151724461, i64 2151725271, i64 2151724603, i64 2151724637, i64 2151724665, i64 2151724681, i64 2151724722, i64 2151724743, i64 2151724767, i64 2151724784, i64 2151724808, i64 2151724847, i64 2151724868, i64 2151724892, i64 2151724916, i64 2151724940, i64 2151724964}
