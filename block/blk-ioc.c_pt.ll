; ModuleID = '/llk/IR/block/blk-ioc.c_pt.bc'
source_filename = "../block/blk-ioc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_io_context:\09\09\09\09\09"
module asm "\09.asciz \09\22put_io_context\22\09\09\09\09\09"
module asm "__kstrtabns_put_io_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_task_ioprio:\09\09\09\09\09"
module asm "\09.asciz \09\22set_task_ioprio\22\09\09\09\09\09"
module asm "__kstrtabns_set_task_ioprio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.53 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }

@iocontext_cachep = internal unnamed_addr global ptr null, align 4
@__kstrtab_put_io_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_io_context = external dso_local constant [0 x i8], align 1
@__ksymtab_put_io_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_io_context to i32), ptr @__kstrtab_put_io_context, ptr @__kstrtabns_put_io_context }, section "___ksymtab_gpl+put_io_context", align 4
@__kstrtab_set_task_ioprio = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_task_ioprio = external dso_local constant [0 x i8], align 1
@__ksymtab_set_task_ioprio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_task_ioprio to i32), ptr @__kstrtab_set_task_ioprio, ptr @__kstrtabns_set_task_ioprio }, section "___ksymtab_gpl+set_task_ioprio", align 4
@__initcall__kmod_blk_ioc__274_456_blk_ioc_init4 = internal global ptr @blk_ioc_init, section ".initcall4.init", align 4
@.str = private unnamed_addr constant [11 x i8] c"blkdev_ioc\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_blk_ioc__274_456_blk_ioc_init4, ptr @__ksymtab_put_io_context, ptr @__ksymtab_set_task_ioprio], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_io_context(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #4, !srcloc !12
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef %0) #4
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_io_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 118
  %4 = load ptr, ptr %3, align 32
  store ptr null, ptr %3, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %7 = getelementptr inbounds %struct.io_context, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !12
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load volatile i32, ptr %4, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #4, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #4, !srcloc !12
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %4) #4
  br label %21

21:                                               ; preds = %19, %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_task_ioprio(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #4
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @capable(i32 noundef 23) #4
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  br label %57

20:                                               ; preds = %17, %13, %2
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  %21 = tail call i32 @cap_task_setioprio(ptr noundef %0, i32 noundef %1) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %24) #4
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 118
  %26 = load ptr, ptr %25, align 32
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %49, !prof !8

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %29 = load i16, ptr %24, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %31 = load ptr, ptr @iocontext_cachep, align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %31, i32 noundef 2848) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34, !prof !8

34:                                               ; preds = %28
  store volatile i32 1, ptr %32, align 8
  %35 = getelementptr inbounds %struct.io_context, ptr %32, i32 0, i32 1
  store volatile i32 1, ptr %35, align 4
  tail call void @_raw_spin_lock(ptr noundef %24) #4
  %36 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load ptr, ptr %25, align 32
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %32) #4
  %45 = load ptr, ptr %25, align 32
  br label %49

46:                                               ; preds = %40
  store ptr %32, ptr %25, align 32
  br label %49

47:                                               ; preds = %34
  %48 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %48, ptr noundef nonnull %32) #4
  br label %53

49:                                               ; preds = %46, %43, %23
  %50 = phi ptr [ %45, %43 ], [ %32, %46 ], [ %26, %23 ]
  %51 = trunc i32 %1 to i16
  %52 = getelementptr inbounds %struct.io_context, ptr %50, i32 0, i32 2
  store i16 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i32 [ -3, %47 ], [ 0, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %55 = load i16, ptr %24, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  br label %57

57:                                               ; preds = %53, %28, %20, %19
  %58 = phi i32 [ %54, %53 ], [ -1, %19 ], [ %21, %20 ], [ -12, %28 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__copy_io(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #4
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 118
  %5 = load ptr, ptr %4, align 32
  %6 = icmp sgt i32 %0, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #4, !srcloc !11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #4, !srcloc !20
  %10 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 118
  store ptr %5, ptr %10, align 32
  br label %26

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = icmp sgt i16 %13, 8191
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load ptr, ptr @iocontext_cachep, align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %16, i32 noundef 3520) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !8

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 118
  store ptr null, ptr %20, align 32
  br label %26

21:                                               ; preds = %15
  store volatile i32 1, ptr %17, align 8
  %22 = getelementptr inbounds %struct.io_context, ptr %17, i32 0, i32 1
  store volatile i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 118
  store ptr %17, ptr %23, align 32
  %24 = load i16, ptr %12, align 4
  %25 = getelementptr inbounds %struct.io_context, ptr %17, i32 0, i32 2
  store i16 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %21, %19, %11, %7
  %27 = phi i32 [ 0, %11 ], [ 0, %21 ], [ 0, %7 ], [ -12, %19 ]
  ret i32 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @blk_ioc_init() #2 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 12, i32 noundef 0, i32 noundef 262144, ptr noundef null) #4
  store ptr %1, ptr @iocontext_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setioprio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }

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
!9 = !{i64 2153325814, i64 2153326294, i64 2153325851, i64 2153325907, i64 2153325941, i64 2153325965, i64 2153326006, i64 2153326027, i64 2153326055, i64 2153326089}
!10 = !{i64 2148021942}
!11 = !{i64 419104, i64 2147909075, i64 2147909101, i64 2147909148, i64 2147909170, i64 2147909198, i64 2147909218}
!12 = !{i64 2147924328, i64 2147924360, i64 2147924389, i64 2147924423, i64 2147924454, i64 2147924477}
!13 = !{i64 2148022145}
!14 = !{i64 2148935022}
!15 = !{i64 2148930846}
!16 = !{i64 2148930921, i64 2148930948, i64 2148930995, i64 2148931017, i64 2148931045, i64 2148931065}
!17 = !{i64 2148958025}
!18 = !{i64 2149053377}
!19 = !{i64 2149053594}
!20 = !{i64 2147921287, i64 2147921313, i64 2147921342, i64 2147921376, i64 2147921407, i64 2147921430}
