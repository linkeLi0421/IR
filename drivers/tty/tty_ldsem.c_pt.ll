; ModuleID = '/llk/IR/drivers/tty/tty_ldsem.c_pt.bc'
source_filename = "../drivers/tty/tty_ldsem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ldsem_waiter = type { %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__init_ldsem(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  store volatile i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4, i32 1
  store ptr %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_read(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".sched.text" {
  %3 = alloca %struct.ldsem_waiter, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #5, !srcloc !10
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %104

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %8 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #5
  br label %9

9:                                                ; preds = %43, %7
  %10 = phi i32 [ %5, %7 ], [ %17, %43 ]
  %11 = add i32 %10, -65537
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  br label %12

12:                                               ; preds = %12, %9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %10, i32 %11, ptr elementtype(i32) %0) #5, !srcloc !13
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %19, label %43, !prof !15

19:                                               ; preds = %16
  %20 = add i32 %10, 65535
  %21 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %3, ptr %22, align 4
  store ptr %21, ptr %3, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %3, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = tail call ptr @llvm.thread.pointer() #5
  %29 = getelementptr inbounds %struct.ldsem_waiter, ptr %3, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #5, !srcloc !9
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #5, !srcloc !16
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !17

34:                                               ; preds = %19
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !15

38:                                               ; preds = %34, %19
  %39 = phi i32 [ 2, %19 ], [ 1, %34 ]
  call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #5
  br label %40

40:                                               ; preds = %38, %34
  %41 = and i32 %20, 65535
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %60

43:                                               ; preds = %16
  %44 = icmp sgt i32 %17, 0
  br i1 %44, label %45, label %9

45:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %46 = load i16, ptr %8, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  br label %102

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ldsem_waiter, ptr %50, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @wake_up_process(ptr noundef %54) #5
  br label %60

56:                                               ; preds = %48
  %57 = load volatile ptr, ptr %21, align 4
  %58 = icmp eq ptr %57, %21
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call fastcc void @__ldsem_wake_readers(ptr noundef %0) #5
  br label %60

60:                                               ; preds = %59, %56, %52, %40
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %61 = load i16, ptr %8, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %63 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  store volatile i32 2, ptr %63, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %64 = load volatile ptr, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !24
  %65 = icmp ne ptr %64, null
  %66 = icmp ne i32 %1, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %75

68:                                               ; preds = %68, %60
  %69 = phi i32 [ %70, %68 ], [ %1, %60 ]
  %70 = call i32 @schedule_timeout(i32 noundef %69) #5
  store volatile i32 2, ptr %63, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %71 = load volatile ptr, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !24
  %72 = icmp ne ptr %71, null
  %73 = icmp ne i32 %70, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %68, label %75

75:                                               ; preds = %68, %60
  %76 = phi i1 [ %66, %60 ], [ %73, %68 ]
  store volatile i32 0, ptr %63, align 8
  br i1 %76, label %102, label %77

77:                                               ; preds = %75
  call void @_raw_spin_lock_irq(ptr noundef %8) #5
  %78 = load ptr, ptr %29, align 4
  %79 = icmp eq ptr %78, null
  call void asm sideeffect "dmb ish", "~{memory}"() #5
  br i1 %79, label %98, label %80

80:                                               ; preds = %77
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 65536, ptr elementtype(i32) %0) #5, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %82 = load i32, ptr %25, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %25, align 4
  %84 = load ptr, ptr %24, align 4
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %84, ptr %86, align 4
  store volatile ptr %85, ptr %84, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %87 = load i16, ptr %8, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %89 = load ptr, ptr %29, align 4
  %90 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #5, !srcloc !9
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #5, !srcloc !26
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %80
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %101, label %96, !prof !15

96:                                               ; preds = %94
  call void @refcount_warn_saturate(ptr noundef %90, i32 noundef 3) #5
  br label %101

97:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !27
  call void @__put_task_struct(ptr noundef %89) #5
  br label %101

98:                                               ; preds = %77
  %99 = load i16, ptr %8, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  br label %102

101:                                              ; preds = %97, %96, %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  br label %105

102:                                              ; preds = %98, %75, %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  %103 = icmp eq ptr %0, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %102, %2
  br label %105

105:                                              ; preds = %104, %102, %101
  %106 = phi i32 [ 1, %104 ], [ 0, %102 ], [ 0, %101 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_read_trylock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load volatile i32, ptr %0, align 4
  br label %3

3:                                                ; preds = %12, %1
  %4 = phi i32 [ %2, %1 ], [ %13, %12 ]
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = add nuw i32 %4, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  br label %8

8:                                                ; preds = %8, %6
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %4, i32 %7, ptr elementtype(i32) %0) #5, !srcloc !13
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %3, !prof !15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %12 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_write(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".sched.text" {
  %3 = alloca %struct.ldsem_waiter, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 -65535, ptr elementtype(i32) %0) #5, !srcloc !10
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %76, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %9 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #5
  br label %10

10:                                               ; preds = %20, %8
  %11 = phi i32 [ %5, %8 ], [ %18, %20 ]
  %12 = add i32 %11, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  br label %13

13:                                               ; preds = %13, %10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %11, i32 %12, ptr elementtype(i32) %0) #5, !srcloc !13
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %26, label %20, !prof !15

20:                                               ; preds = %17
  %21 = and i32 %18, 65535
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %10

23:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %24 = load i16, ptr %9, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  br label %73

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4
  %28 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %3, ptr %28, align 4
  store ptr %27, ptr %3, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %3, ptr %29, align 4
  %31 = tail call ptr @llvm.thread.pointer() #5
  %32 = getelementptr inbounds %struct.ldsem_waiter, ptr %3, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  store volatile i32 2, ptr %33, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %55, %26
  %36 = phi i32 [ %39, %55 ], [ %1, %26 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %37 = load i16, ptr %9, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %39 = call i32 @schedule_timeout(i32 noundef %36) #5
  call void @_raw_spin_lock_irq(ptr noundef %9) #5
  store volatile i32 2, ptr %33, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !29
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #5, !srcloc !10
  %41 = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %42

42:                                               ; preds = %52, %35
  %43 = phi i32 [ %41, %35 ], [ %53, %52 ]
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = add i32 %43, -1
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  br label %48

48:                                               ; preds = %48, %46
  %49 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %43, i32 %47, ptr elementtype(i32) %0) #5, !srcloc !13
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %48

52:                                               ; preds = %48
  %53 = extractvalue { i32, i32 } %49, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %54 = icmp eq i32 %53, %43
  br i1 %54, label %55, label %42, !prof !15

55:                                               ; preds = %52
  %56 = icmp eq i32 %39, 0
  br i1 %56, label %57, label %35

57:                                               ; preds = %55, %26
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 65536, ptr elementtype(i32) %0) #5, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %59 = load ptr, ptr %30, align 4
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %62 = load volatile ptr, ptr %27, align 4
  %63 = icmp eq ptr %62, %27
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  call fastcc void @__ldsem_wake_readers(ptr noundef %0) #5
  br label %69

65:                                               ; preds = %42
  %66 = load ptr, ptr %30, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %67, ptr %66, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  br label %69

69:                                               ; preds = %65, %64, %57
  %70 = phi ptr [ %0, %65 ], [ null, %64 ], [ null, %57 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %71 = load i16, ptr %9, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  store volatile i32 0, ptr %33, align 8
  br label %73

73:                                               ; preds = %69, %23
  %74 = phi ptr [ %0, %23 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73, %2
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ 1, %76 ], [ 0, %73 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_write_trylock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load volatile i32, ptr %0, align 4
  br label %3

3:                                                ; preds = %13, %1
  %4 = phi i32 [ %2, %1 ], [ %14, %13 ]
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = add i32 %4, -65535
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %4, i32 %8, ptr elementtype(i32) %0) #5, !srcloc !13
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %3, !prof !15

16:                                               ; preds = %13, %3
  %17 = phi i32 [ 0, %3 ], [ 1, %13 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ldsem_up_read(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 -1, ptr elementtype(i32) %0) #5, !srcloc !10
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %4 = and i32 %3, -2147418113
  %5 = icmp eq i32 %4, -2147483648
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ldsem_waiter, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @wake_up_process(ptr noundef %14) #5
  br label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call fastcc void @__ldsem_wake_readers(ptr noundef %0) #5
  br label %21

21:                                               ; preds = %20, %16, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ldsem_up_write(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 65535, ptr elementtype(i32) %0) #5, !srcloc !10
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ldsem_waiter, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @wake_up_process(ptr noundef %13) #5
  br label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @__ldsem_wake_readers(ptr noundef %0) #5
  br label %20

20:                                               ; preds = %19, %15, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #5
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ldsem_wake_readers(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, 65537
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %4, ptr elementtype(i32) %0) #5, !srcloc !10
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %7

7:                                                ; preds = %16, %1
  %8 = phi i32 [ %6, %1 ], [ %17, %16 ]
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = sub i32 %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  br label %12

12:                                               ; preds = %12, %10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %8, i32 %11, ptr elementtype(i32) %0) #5, !srcloc !13
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %41, label %7, !prof !15

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %39, label %23

23:                                               ; preds = %37, %19
  %24 = phi ptr [ %25, %37 ], [ %21, %19 ]
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ldsem_waiter, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !30
  store volatile ptr null, ptr %26, align 4
  %28 = tail call i32 @wake_up_process(ptr noundef %27) #5
  %29 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #5, !srcloc !9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #5, !srcloc !26
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %37, label %35, !prof !15

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #5
  br label %37

36:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !27
  tail call void @__put_task_struct(ptr noundef %27) #5
  br label %37

37:                                               ; preds = %36, %35, %33
  %38 = icmp eq ptr %25, %20
  br i1 %38, label %39, label %23

39:                                               ; preds = %37, %19
  store volatile ptr %20, ptr %20, align 4
  %40 = getelementptr inbounds %struct.ld_semaphore, ptr %0, i32 0, i32 3, i32 1
  store ptr %20, ptr %40, align 4
  store i32 0, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148260513}
!9 = !{i64 661281, i64 2148151252, i64 2148151278, i64 2148151325, i64 2148151347, i64 2148151375, i64 2148151395}
!10 = !{i64 2148163351, i64 2148163383, i64 2148163412, i64 2148163446, i64 2148163477, i64 2148163500}
!11 = !{i64 2148260716}
!12 = !{i64 2148276093}
!13 = !{i64 647344, i64 647368, i64 647389, i64 647406, i64 647423}
!14 = !{i64 2148276293}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148164125, i64 2148164157, i64 2148164186, i64 2148164220, i64 2148164251, i64 2148164274}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148829885}
!19 = !{i64 2148825709}
!20 = !{i64 2148825784, i64 2148825811, i64 2148825858, i64 2148825880, i64 2148825908, i64 2148825928}
!21 = !{i64 567204}
!22 = !{i64 2148854029}
!23 = !{i64 2152027219}
!24 = !{i64 2152032909}
!25 = !{i64 2148264347}
!26 = !{i64 2148166482, i64 2148166514, i64 2148166543, i64 2148166577, i64 2148166608, i64 2148166631}
!27 = !{i64 2149782988}
!28 = !{i64 2152038789}
!29 = !{i64 2152041741}
!30 = !{i64 2152019739}
