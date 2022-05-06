; ModuleID = '/llk/IR/arch/arm/vfp/vfpmodule.c_pt.bc'
source_filename = "../arch/arm/vfp/vfpmodule.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_neon_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_neon_begin\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_neon_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_neon_end:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_neon_end\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_neon_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.32, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_vfp = type { [32 x i64], i32 }
%struct.user_vfp_exc = type { i32, i32, i32 }

@vfp_vector = dso_local local_unnamed_addr global ptr @vfp_null_entry, align 4
@VFP_arch = internal unnamed_addr global i32 0, section ".init.data", align 4
@__initcall__kmod_vfpmodule__182_709_vfp_kmode_exception_hook_init4 = internal global ptr @vfp_kmode_exception_hook_init, section ".initcall4.init", align 4
@vfp_current_hw_state = dso_local local_unnamed_addr global [16 x ptr] zeroinitializer, align 4
@__kstrtab_kernel_neon_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_neon_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_neon_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_neon_begin to i32), ptr @__kstrtab_kernel_neon_begin, ptr @__kstrtabns_kernel_neon_begin }, section "___ksymtab+kernel_neon_begin", align 4
@__kstrtab_kernel_neon_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_neon_end = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_neon_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_neon_end to i32), ptr @__kstrtab_kernel_neon_end, ptr @__kstrtabns_kernel_neon_end }, section "___ksymtab+kernel_neon_end", align 4
@__initcall__kmod_vfpmodule__183_870_vfp_init1 = internal global ptr @vfp_init, section ".initcall1.init", align 4
@.str = private unnamed_addr constant [17 x i8] c"unhandled bounce\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\013VFP: Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013VFP: EXC 0x%08x SCR 0x%08x INST 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\013VFP: s%2u: 0x%08x s%2u: 0x%08x\0A\00", align 1
@vfp_kmode_exception_hook = internal global [5 x %struct.undef_hook] [%struct.undef_hook { %struct.list_head zeroinitializer, i32 -33554432, i32 -234881024, i32 63, i32 19, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 -15728640, i32 -201326592, i32 63, i32 19, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 -285212672, i32 -285212672, i32 63, i32 51, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 -15728640, i32 -117440512, i32 63, i32 51, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 201330176, i32 201329152, i32 31, i32 19, ptr @vfp_kmode_exception }], align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"\012BUG: unsupported FP instruction in kernel mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"\012BUG: FP instruction issued in kernel mode with FP unit disabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\012FPEXC == 0x%08x\0A\00", align 1
@vfp_detect_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 201330176, i32 201329152, i32 31, i32 19, ptr @vfp_detect }, section ".init.data", align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"\016VFP support v0.3: \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\01cnot present\0A\00", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"\01cno double precision support\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"arm/vfp:starting\00", align 1
@vfp_notifier_block = internal global %struct.notifier_block { ptr @vfp_notifier, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"\01cimplementor %02x architecture %d part %02x variant %x rev %x\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@thread_notify_head = external dso_local global %struct.atomic_notifier_head, align 4
@vfp_cpu_pm_notifier_block = internal global %struct.notifier_block { ptr @vfp_cpu_pm_notifier, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_vfpmodule__182_709_vfp_kmode_exception_hook_init4, ptr @__initcall__kmod_vfpmodule__183_870_vfp_init1, ptr @__ksymtab_kernel_neon_begin, ptr @__ksymtab_kernel_neon_end], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_null_entry() #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @VFP_bounce(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = and i32 %1, 1207959392
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %4) #10, !srcloc !8
  %5 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSID", "=r,~{cc}"() #11, !srcloc !9
  %6 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSCR", "=r,~{cc}"() #11, !srcloc !10
  %7 = and i32 %5, 983040
  %8 = icmp ne i32 %7, 65536
  %9 = and i32 %6, 4096
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %3
  %13 = icmp sgt i32 %1, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPINST", "=r,~{cc}"() #11, !srcloc !11
  %16 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -4
  store i32 %18, ptr %16, align 4
  br label %23

19:                                               ; preds = %12
  %20 = and i32 %1, 536870912
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call fastcc void @vfp_raise_exceptions(i32 noundef -257, i32 noundef %0, i32 noundef %6, ptr noundef %2)
  br label %70

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %15, %14 ], [ %0, %19 ]
  %25 = and i32 %1, -2013265920
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %6, -458753
  %28 = shl i32 %1, 8
  %29 = add i32 %28, 65536
  %30 = and i32 %29, 458752
  %31 = or i32 %27, %30
  %32 = select i1 %26, i32 %6, i32 %31
  %33 = and i32 %24, 251658256
  %34 = icmp eq i32 %33, 234881024
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = and i32 %24, 3840
  %37 = icmp eq i32 %36, 2560
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 @vfp_single_cpdo(i32 noundef %24, i32 noundef %32) #10
  br label %42

40:                                               ; preds = %35
  %41 = tail call i32 @vfp_double_cpdo(i32 noundef %24, i32 noundef %32) #10
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = and i32 %43, -257
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %23
  %47 = phi i32 [ %44, %42 ], [ -257, %23 ]
  tail call fastcc void @vfp_raise_exceptions(i32 noundef %47, i32 noundef %24, i32 noundef %6, ptr noundef %2)
  br label %48

48:                                               ; preds = %46, %42
  %49 = and i32 %1, -1879048192
  %50 = icmp eq i32 %49, -1879048192
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %52 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPINST2", "=r,~{cc}"() #11, !srcloc !13
  br label %53

53:                                               ; preds = %51, %3
  %54 = phi i32 [ %52, %51 ], [ %0, %3 ]
  %55 = and i32 %54, 251658256
  %56 = icmp eq i32 %55, 234881024
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = and i32 %54, 3840
  %59 = icmp eq i32 %58, 2560
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 @vfp_single_cpdo(i32 noundef %54, i32 noundef %6) #10
  br label %64

62:                                               ; preds = %57
  %63 = tail call i32 @vfp_double_cpdo(i32 noundef %54, i32 noundef %6) #10
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = and i32 %65, -257
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64, %53
  %69 = phi i32 [ %66, %64 ], [ -257, %53 ]
  tail call fastcc void @vfp_raise_exceptions(i32 noundef %69, i32 noundef %54, i32 noundef %6, ptr noundef %2)
  br label %70

70:                                               ; preds = %68, %64, %48, %22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vfp_raise_exceptions(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = icmp eq i32 %0, -257
  br i1 %5, label %6, label %67

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #12
  %8 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !15
  %9 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSCR", "=r,~{cc}"() #11, !srcloc !16
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %8, i32 noundef %9, i32 noundef %1) #12
  %11 = tail call i32 @vfp_get_float(i32 noundef 0) #10
  %12 = tail call i32 @vfp_get_float(i32 noundef 1) #10
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef %11, i32 noundef 1, i32 noundef %12) #12
  %14 = tail call i32 @vfp_get_float(i32 noundef 2) #10
  %15 = tail call i32 @vfp_get_float(i32 noundef 3) #10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef %14, i32 noundef 3, i32 noundef %15) #12
  %17 = tail call i32 @vfp_get_float(i32 noundef 4) #10
  %18 = tail call i32 @vfp_get_float(i32 noundef 5) #10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef %17, i32 noundef 5, i32 noundef %18) #12
  %20 = tail call i32 @vfp_get_float(i32 noundef 6) #10
  %21 = tail call i32 @vfp_get_float(i32 noundef 7) #10
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 6, i32 noundef %20, i32 noundef 7, i32 noundef %21) #12
  %23 = tail call i32 @vfp_get_float(i32 noundef 8) #10
  %24 = tail call i32 @vfp_get_float(i32 noundef 9) #10
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef %23, i32 noundef 9, i32 noundef %24) #12
  %26 = tail call i32 @vfp_get_float(i32 noundef 10) #10
  %27 = tail call i32 @vfp_get_float(i32 noundef 11) #10
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 10, i32 noundef %26, i32 noundef 11, i32 noundef %27) #12
  %29 = tail call i32 @vfp_get_float(i32 noundef 12) #10
  %30 = tail call i32 @vfp_get_float(i32 noundef 13) #10
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 12, i32 noundef %29, i32 noundef 13, i32 noundef %30) #12
  %32 = tail call i32 @vfp_get_float(i32 noundef 14) #10
  %33 = tail call i32 @vfp_get_float(i32 noundef 15) #10
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 14, i32 noundef %32, i32 noundef 15, i32 noundef %33) #12
  %35 = tail call i32 @vfp_get_float(i32 noundef 16) #10
  %36 = tail call i32 @vfp_get_float(i32 noundef 17) #10
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef %35, i32 noundef 17, i32 noundef %36) #12
  %38 = tail call i32 @vfp_get_float(i32 noundef 18) #10
  %39 = tail call i32 @vfp_get_float(i32 noundef 19) #10
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 18, i32 noundef %38, i32 noundef 19, i32 noundef %39) #12
  %41 = tail call i32 @vfp_get_float(i32 noundef 20) #10
  %42 = tail call i32 @vfp_get_float(i32 noundef 21) #10
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef %41, i32 noundef 21, i32 noundef %42) #12
  %44 = tail call i32 @vfp_get_float(i32 noundef 22) #10
  %45 = tail call i32 @vfp_get_float(i32 noundef 23) #10
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 22, i32 noundef %44, i32 noundef 23, i32 noundef %45) #12
  %47 = tail call i32 @vfp_get_float(i32 noundef 24) #10
  %48 = tail call i32 @vfp_get_float(i32 noundef 25) #10
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 24, i32 noundef %47, i32 noundef 25, i32 noundef %48) #12
  %50 = tail call i32 @vfp_get_float(i32 noundef 26) #10
  %51 = tail call i32 @vfp_get_float(i32 noundef 27) #10
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 26, i32 noundef %50, i32 noundef 27, i32 noundef %51) #12
  %53 = tail call i32 @vfp_get_float(i32 noundef 28) #10
  %54 = tail call i32 @vfp_get_float(i32 noundef 29) #10
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 28, i32 noundef %53, i32 noundef 29, i32 noundef %54) #12
  %56 = tail call i32 @vfp_get_float(i32 noundef 30) #10
  %57 = tail call i32 @vfp_get_float(i32 noundef 31) #10
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 30, i32 noundef %56, i32 noundef 31, i32 noundef %57) #12
  %59 = tail call ptr @llvm.thread.pointer() #10
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 152, i32 2
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 152, i32 1
  store i32 6, ptr %61, align 4
  %62 = getelementptr [18 x i32], ptr %3, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -4
  %65 = inttoptr i32 %64 to ptr
  %66 = tail call i32 @send_sig_fault(i32 noundef 8, i32 noundef 7, ptr noundef %65, ptr noundef %59) #10
  br label %112

67:                                               ; preds = %4
  %68 = icmp ult i32 %0, 268435456
  %69 = and i32 %2, 268435455
  %70 = select i1 %68, i32 %2, i32 %69
  %71 = or i32 %70, %0
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPSCR, $0", "r,~{cc}"(i32 %71) #10, !srcloc !17
  %72 = and i32 %0, 2
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %71, 512
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %73, %75
  %77 = select i1 %76, i32 0, i32 3
  %78 = and i32 %0, 16
  %79 = icmp eq i32 %78, 0
  %80 = and i32 %71, 4096
  %81 = icmp eq i32 %80, 0
  %82 = or i1 %79, %81
  %83 = select i1 %82, i32 %77, i32 6
  %84 = and i32 %0, 8
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %71, 2048
  %87 = icmp eq i32 %86, 0
  %88 = or i1 %85, %87
  %89 = select i1 %88, i32 %83, i32 5
  %90 = and i32 %0, 4
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %71, 1024
  %93 = icmp eq i32 %92, 0
  %94 = or i1 %91, %93
  %95 = select i1 %94, i32 %89, i32 4
  %96 = and i32 %0, 1
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %71, 256
  %99 = icmp eq i32 %98, 0
  %100 = or i1 %97, %99
  %101 = select i1 %100, i32 %95, i32 7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %67
  %104 = tail call ptr @llvm.thread.pointer() #10
  %105 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 152, i32 2
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 152, i32 1
  store i32 6, ptr %106, align 4
  %107 = getelementptr [18 x i32], ptr %3, i32 0, i32 15
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -4
  %110 = inttoptr i32 %109 to ptr
  %111 = tail call i32 @send_sig_fault(i32 noundef 8, i32 noundef %101, ptr noundef %110, ptr noundef %104) #10
  br label %112

112:                                              ; preds = %103, %67, %6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @vfp_disable() local_unnamed_addr #2 section ".init.text" {
  %1 = load i32, ptr @VFP_arch, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 1, ptr @VFP_arch, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vfp_sync_hwstate(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, %4
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10
  %10 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !19
  %15 = or i32 %14, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %15) #10, !srcloc !20
  tail call void @vfp_save_state(ptr noundef %9, i32 noundef %15) #10
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %14) #10, !srcloc !21
  br label %16

16:                                               ; preds = %13, %8, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_save_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vfp_flush_hwstate(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, %4
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10
  %10 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !24
  %15 = and i32 %14, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %15) #10, !srcloc !25
  store ptr null, ptr %10, align 4
  br label %16

16:                                               ; preds = %13, %8, %1
  store i32 16, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfp_preserve_user_clear_hwstate(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %5 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, %6
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !19
  %16 = or i32 %15, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %16) #10, !srcloc !20
  tail call void @vfp_save_state(ptr noundef %4, i32 noundef %16) #10
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %15) #10, !srcloc !21
  br label %17

17:                                               ; preds = %14, %10, %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(256) %0, ptr noundef align 8 dereferenceable(256) %4, i32 256, i1 false)
  %18 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.user_vfp, ptr %0, i32 0, i32 1
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.user_vfp_exc, ptr %1, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.user_vfp_exc, ptr %1, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %29 = load i32, ptr %5, align 8
  %30 = load i32, ptr %7, align 8
  %31 = icmp eq i32 %30, %29
  br i1 %31, label %32, label %39

32:                                               ; preds = %17
  %33 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %29
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %4
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !24
  %38 = and i32 %37, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %38) #10, !srcloc !25
  store ptr null, ptr %33, align 4
  br label %39

39:                                               ; preds = %36, %32, %17
  store i32 16, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  %40 = load i32, ptr %18, align 4
  %41 = and i32 %40, -3604481
  store i32 %41, ptr %18, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfp_restore_user_hwstate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %5 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, %6
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !24
  %16 = and i32 %15, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %16) #10, !srcloc !25
  store ptr null, ptr %11, align 4
  br label %17

17:                                               ; preds = %14, %10, %2
  store i32 16, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(256) %4, ptr noundef align 8 dereferenceable(256) %0, i32 256, i1 false)
  %18 = getelementptr inbounds %struct.user_vfp, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %1, align 4
  %22 = and i32 %21, 805306367
  %23 = or i32 %22, 1073741824
  %24 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.user_vfp_exc, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 3
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.user_vfp_exc, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10, i32 0, i32 4
  store i32 %29, ptr %30, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vfp_kmode_exception_hook_init() #4 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr [5 x %struct.undef_hook], ptr @vfp_kmode_exception_hook, i32 0, i32 %2
  tail call void @register_undef_hook(ptr noundef %3) #10
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %1

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_neon_begin() #1 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 15728640
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 983040
  %7 = or i32 %6, %4
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 65280
  %10 = or i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !27

12:                                               ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/vfp/vfpmodule.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 725, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

13:                                               ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %14 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !30
  %17 = or i32 %16, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %17) #10, !srcloc !31
  %18 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, %15
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10
  %23 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %15
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @vfp_save_state(ptr noundef %22, i32 noundef %17) #10
  br label %27

27:                                               ; preds = %26, %21, %13
  %28 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %15
  store ptr null, ptr %28, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_neon_end() #1 {
  %1 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !32
  %2 = and i32 %1, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %2) #10, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vfp_init() #4 section ".init.text" {
  %1 = tail call i32 @cpu_architecture() #13
  %2 = icmp ugt i32 %1, 7
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @vfp_enable, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #10
  br label %4

4:                                                ; preds = %3, %0
  tail call void @register_undef_hook(ptr noundef nonnull @vfp_detect_hook) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %5 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSID", "=r,~{cc}"() #11, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  tail call void @unregister_undef_hook(ptr noundef nonnull @vfp_detect_hook) #10
  store ptr @vfp_null_entry, ptr @vfp_vector, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  %7 = load i32, ptr @VFP_arch, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %65

11:                                               ; preds = %4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !38
  %13 = and i32 %12, 983040
  %14 = icmp eq i32 %13, 983040
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = lshr i32 %5, 16
  %17 = and i32 %16, 127
  store i32 %17, ptr @VFP_arch, align 4
  %18 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, MVFR1", "=r,~{cc}"() #11, !srcloc !39
  %19 = and i32 %18, 1048320
  %20 = icmp eq i32 %19, 69888
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, ptr @elf_hwcap, align 4
  %23 = or i32 %22, 4096
  store i32 %23, ptr @elf_hwcap, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, MVFR0", "=r,~{cc}"() #11, !srcloc !40
  %26 = and i32 %25, 3840
  %27 = icmp eq i32 %26, 512
  %28 = and i32 %25, 240
  %29 = icmp eq i32 %28, 32
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, ptr @elf_hwcap, align 4
  %33 = and i32 %25, 15
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 24576, i32 532480
  %36 = or i32 %32, %35
  store i32 %36, ptr @elf_hwcap, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = and i32 %18, -268435456
  %39 = icmp eq i32 %38, 268435456
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, ptr @elf_hwcap, align 4
  %42 = or i32 %41, 65536
  store i32 %42, ptr @elf_hwcap, align 4
  br label %51

43:                                               ; preds = %11
  %44 = and i32 %5, 1048576
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %65

48:                                               ; preds = %43
  %49 = lshr i32 %5, 16
  %50 = and i32 %49, 15
  store i32 %50, ptr @VFP_arch, align 4
  br label %51

51:                                               ; preds = %48, %40, %37
  %52 = tail call i32 @__cpuhp_setup_state(i32 noundef 115, ptr noundef nonnull @.str.10, i1 noundef zeroext false, ptr noundef nonnull @vfp_starting_cpu, ptr noundef nonnull @vfp_dying_cpu, i1 noundef zeroext false) #10
  store ptr @vfp_support_entry, ptr @vfp_vector, align 4
  %53 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @thread_notify_head, ptr noundef nonnull @vfp_notifier_block) #10
  %54 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @vfp_cpu_pm_notifier_block) #10
  %55 = load i32, ptr @elf_hwcap, align 4
  %56 = or i32 %55, 64
  store i32 %56, ptr @elf_hwcap, align 4
  %57 = lshr i32 %5, 24
  %58 = load i32, ptr @VFP_arch, align 4
  %59 = lshr i32 %5, 8
  %60 = and i32 %59, 255
  %61 = lshr i32 %5, 4
  %62 = and i32 %61, 15
  %63 = and i32 %5, 15
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %57, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %63) #12
  br label %65

65:                                               ; preds = %51, %46, %9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_get_float(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_fault(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_single_cpdo(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_double_cpdo(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_kmode_exception(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !41
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr @.str.5, ptr @.str.4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %6) #12
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vfp_enable(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #11, !srcloc !42
  %3 = or i32 %2, 15728640
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %3) #10, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_undef_hook(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_starting_cpu(i32 noundef %0) #1 {
  %2 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #11, !srcloc !42
  %3 = or i32 %2, 15728640
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %3) #10, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !44
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vfp_dying_cpu(i32 noundef %0) #8 {
  %2 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %0
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_support_entry() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @vfp_detect(ptr nocapture noundef %0, i32 noundef %1) #2 section ".init.text" {
  store i32 -1, ptr @VFP_arch, align 4
  %3 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 4
  store i32 %5, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  switch i32 %1, label %60 [
    i32 2, label %4
    i32 0, label %17
    i32 1, label %31
    i32 3, label %41
  ]

4:                                                ; preds = %3
  %5 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !45
  %6 = and i32 %5, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @vfp_save_state(ptr noundef nonnull %12, i32 noundef %5) #10
  br label %15

15:                                               ; preds = %14, %8, %4
  %16 = and i32 %5, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %16) #10, !srcloc !46
  br label %60

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  %19 = tail call ptr @llvm.thread.pointer() #10
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %18
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store ptr null, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !48
  %28 = and i32 %27, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %28) #10, !srcloc !49
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(280) %18, i8 0, i32 280, i1 false) #10
  %29 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10, i32 0, i32 1
  store i32 1073741824, ptr %29, align 8
  %30 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10, i32 0, i32 5
  store i32 16, ptr %30, align 8
  br label %60

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  %33 = tail call ptr @llvm.thread.pointer() #10
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store ptr null, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  br label %60

41:                                               ; preds = %3
  %42 = tail call ptr @llvm.thread.pointer() #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 10, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, %44
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 10
  %50 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %44
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !19
  %55 = or i32 %54, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %55) #10, !srcloc !20
  tail call void @vfp_save_state(ptr noundef %49, i32 noundef %55) #10
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %54) #10, !srcloc !21
  br label %56

56:                                               ; preds = %53, %48, %41
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %57 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10
  %58 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(280) %57, ptr noundef align 8 dereferenceable(280) %58, i32 280, i1 false) #10
  %59 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10, i32 0, i32 5
  store i32 16, ptr %59, align 8
  br label %60

60:                                               ; preds = %56, %40, %26, %15, %3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_cpu_pm_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  switch i32 %1, label %21 [
    i32 0, label %4
    i32 1, label %16
    i32 2, label %16
  ]

4:                                                ; preds = %3
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !53
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 10
  tail call void @vfp_save_state(ptr noundef %10, i32 noundef %6) #10
  %11 = and i32 %6, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %11) #10, !srcloc !54
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr [16 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %14
  store ptr null, ptr %15, align 4
  br label %21

16:                                               ; preds = %3, %3
  %17 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #11, !srcloc !42
  %18 = or i32 %17, 15728640
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %18) #10, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !44
  %19 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !55
  %20 = and i32 %19, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %20) #10, !srcloc !56
  br label %21

21:                                               ; preds = %16, %12, %3
  ret i32 1
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

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
!8 = !{i64 2151736443, i64 2151736466}
!9 = !{i64 2151736836, i64 2151736859}
!10 = !{i64 2151736959, i64 2151736982}
!11 = !{i64 2151737135, i64 2151737158}
!12 = !{i64 2151737436}
!13 = !{i64 2151737479, i64 2151737502}
!14 = !{i64 2151737609}
!15 = !{i64 2151732914, i64 2151732937}
!16 = !{i64 2151733037, i64 2151733060}
!17 = !{i64 2151734435, i64 2151734458}
!18 = !{i64 2151741039}
!19 = !{i64 2151741181, i64 2151741204}
!20 = !{i64 2151741282, i64 2151741305}
!21 = !{i64 2151741406, i64 2151741429}
!22 = !{i64 2151741542}
!23 = !{i64 2151741637}
!24 = !{i64 2151730475, i64 2151730498}
!25 = !{i64 2151730234, i64 2151730257}
!26 = !{i64 2151741801}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2151748924, i64 2151749413, i64 2151748961, i64 2151749017, i64 2151749051, i64 2151749075, i64 2151749116, i64 2151749137, i64 2151749165, i64 2151749199}
!29 = !{i64 2151749750}
!30 = !{i64 2151749892, i64 2151749915}
!31 = !{i64 2151750003, i64 2151750026}
!32 = !{i64 2151751593, i64 2151751616}
!33 = !{i64 2151751352, i64 2151751375}
!34 = !{i64 2151751738}
!35 = !{i64 2151753488}
!36 = !{i64 2151753531, i64 2151753554}
!37 = !{i64 2151753649}
!38 = !{i64 2151694453}
!39 = !{i64 2151754967, i64 2151754990}
!40 = !{i64 2151755640, i64 2151755663}
!41 = !{i64 2151742048, i64 2151742071}
!42 = !{i64 4199943}
!43 = !{i64 4200103}
!44 = !{i64 2151685410}
!45 = !{i64 2151731614, i64 2151731637}
!46 = !{i64 2151731725, i64 2151731748}
!47 = !{i64 2151730680}
!48 = !{i64 2151731053, i64 2151731076}
!49 = !{i64 2151730812, i64 2151730835}
!50 = !{i64 2151731198}
!51 = !{i64 2151731329}
!52 = !{i64 2151731505}
!53 = !{i64 2151739592, i64 2151739615}
!54 = !{i64 2151740250, i64 2151740273}
!55 = !{i64 2151740857, i64 2151740880}
!56 = !{i64 2151740616, i64 2151740639}
