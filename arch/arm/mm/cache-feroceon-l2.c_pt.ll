; ModuleID = '/llk/IR/arch/arm/mm/cache-feroceon-l2.c_pt.bc'
source_filename = "../arch/arm/mm/cache-feroceon-l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@l2_wt_override = internal unnamed_addr global i32 0, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str = private unnamed_addr constant [45 x i8] c"\016Feroceon L2: Cache support initialised%s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c", in WT override mode\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@feroceon_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,feroceon-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"marvell,kirkwood-cache\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\016Feroceon L2: Disabling L2 prefetch.\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"\016Feroceon L2: Enabling L2\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\013[Firmware Bug]: Feroceon L2: bootloader left the L2 cache on!\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @feroceon_l2_init(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  store i32 %0, ptr @l2_wt_override, align 4
  %2 = tail call i32 asm "mrc p15, 1, $0, c15, c1, 0", "=r"() #6, !srcloc !8
  %3 = and i32 %2, 16777216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  %7 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %7) #8, !srcloc !9
  br label %8

8:                                                ; preds = %5, %1
  store ptr @feroceon_l2_inv_range, ptr @outer_cache, align 4
  store ptr @feroceon_l2_clean_range, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  store ptr @feroceon_l2_flush_range, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  tail call fastcc void @enable_l2() #9
  %9 = load i32, ptr @l2_wt_override, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.2, ptr @.str.1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @feroceon_l2_inv_range(i32 noundef %0, i32 noundef %1) #1 {
  %3 = and i32 %0, 31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = and i32 %0, -32
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c10, 3", "r"(i32 %6) #8, !srcloc !10
  %7 = or i32 %0, 31
  %8 = add i32 %7, 1
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ %8, %5 ], [ %0, %2 ]
  %11 = icmp uge i32 %10, %1
  %12 = and i32 %1, 31
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %11
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = and i32 %1, -32
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c10, 3", "r"(i32 %16) #8, !srcloc !10
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %16, %15 ], [ %1, %9 ]
  %19 = icmp ult i32 %10, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = and i32 %18, 31
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %40, %20
  %24 = phi i32 [ %10, %20 ], [ %35, %40 ]
  %25 = and i32 %24, 31
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !11

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

28:                                               ; preds = %23
  br i1 %22, label %30, label %29, !prof !11

29:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

30:                                               ; preds = %28
  %31 = add i32 %24, 1024
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %18) #8
  %33 = or i32 %24, 4095
  %34 = add i32 %33, 1
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34) #8
  %36 = add i32 %35, -32
  %37 = xor i32 %36, %24
  %38 = icmp ult i32 %37, 4096
  br i1 %38, label %40, label %39, !prof !11

39:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

40:                                               ; preds = %30
  %41 = lshr i32 %24, 12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %42 = tail call ptr @llvm.thread.pointer() #8
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 149
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %46 = load i32, ptr @pgprot_kernel, align 4
  %47 = or i32 %46, 512
  %48 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %41, i32 noundef %47) #8
  %49 = ptrtoint ptr %48 to i32
  %50 = and i32 %24, 4095
  %51 = add i32 %50, %49
  %52 = sub i32 %36, %24
  %53 = add i32 %52, %51
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 4\0A\09mcr p15, 1, $1, c15, c11, 5", "r,r"(i32 %51, i32 %53) #8, !srcloc !18
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #8, !srcloc !19
  %55 = inttoptr i32 %51 to ptr
  tail call void @kunmap_local_indexed(ptr noundef %55) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %56 = load i32, ptr %43, align 8
  %57 = add i32 %56, -1
  store i32 %57, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %58 = icmp ult i32 %35, %18
  br i1 %58, label %23, label %59

59:                                               ; preds = %40, %17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @feroceon_l2_clean_range(i32 noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr @l2_wt_override, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %2
  %6 = and i32 %0, -32
  %7 = add i32 %1, 31
  %8 = and i32 %7, -32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %44, label %10

10:                                               ; preds = %25, %5
  %11 = phi i32 [ %20, %25 ], [ %6, %5 ]
  %12 = and i32 %11, 31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

15:                                               ; preds = %10
  %16 = add i32 %11, 1024
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %8) #8
  %18 = or i32 %11, 4095
  %19 = add i32 %18, 1
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19) #8
  %21 = add i32 %20, -32
  %22 = xor i32 %21, %11
  %23 = icmp ult i32 %22, 4096
  br i1 %23, label %25, label %24, !prof !11

24:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

25:                                               ; preds = %15
  %26 = lshr i32 %11, 12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %27 = tail call ptr @llvm.thread.pointer() #8
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 149
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = or i32 %31, 512
  %33 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %26, i32 noundef %32) #8
  %34 = ptrtoint ptr %33 to i32
  %35 = and i32 %11, 4095
  %36 = add i32 %35, %34
  %37 = sub i32 %21, %11
  %38 = add i32 %37, %36
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c9, 4\0A\09mcr p15, 1, $1, c15, c9, 5", "r,r"(i32 %36, i32 %38) #8, !srcloc !24
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #8, !srcloc !19
  %40 = inttoptr i32 %36 to ptr
  tail call void @kunmap_local_indexed(ptr noundef %40) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %41 = load i32, ptr %28, align 8
  %42 = add i32 %41, -1
  store i32 %42, ptr %28, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %43 = icmp eq i32 %20, %8
  br i1 %43, label %44, label %10

44:                                               ; preds = %25, %5, %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @feroceon_l2_flush_range(i32 noundef %0, i32 noundef %1) #1 {
  %3 = and i32 %0, -32
  %4 = add i32 %1, 31
  %5 = and i32 %4, -32
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %64, label %7

7:                                                ; preds = %45, %2
  %8 = phi i32 [ %17, %45 ], [ %3, %2 ]
  %9 = and i32 %8, 31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

12:                                               ; preds = %7
  %13 = add i32 %8, 1024
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %5) #8
  %15 = or i32 %8, 4095
  %16 = add i32 %15, 1
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16) #8
  %18 = load i32, ptr @l2_wt_override, align 4
  %19 = icmp eq i32 %18, 0
  %20 = add i32 %17, -32
  %21 = xor i32 %20, %8
  %22 = icmp ult i32 %21, 4096
  br i1 %19, label %23, label %43

23:                                               ; preds = %12
  br i1 %22, label %25, label %24, !prof !11

24:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

25:                                               ; preds = %23
  %26 = lshr i32 %8, 12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %27 = tail call ptr @llvm.thread.pointer() #8
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 149
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = or i32 %31, 512
  %33 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %26, i32 noundef %32) #8
  %34 = ptrtoint ptr %33 to i32
  %35 = and i32 %8, 4095
  %36 = add i32 %35, %34
  %37 = sub i32 %20, %8
  %38 = add i32 %37, %36
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c9, 4\0A\09mcr p15, 1, $1, c15, c9, 5", "r,r"(i32 %36, i32 %38) #8, !srcloc !24
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #8, !srcloc !19
  %40 = inttoptr i32 %36 to ptr
  tail call void @kunmap_local_indexed(ptr noundef %40) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %41 = load i32, ptr %28, align 8
  %42 = add i32 %41, -1
  store i32 %42, ptr %28, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  br label %45

43:                                               ; preds = %12
  br i1 %22, label %45, label %44, !prof !11

44:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

45:                                               ; preds = %43, %25
  %46 = lshr i32 %8, 12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %47 = tail call ptr @llvm.thread.pointer() #8
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 149
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %51 = load i32, ptr @pgprot_kernel, align 4
  %52 = or i32 %51, 512
  %53 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %46, i32 noundef %52) #8
  %54 = ptrtoint ptr %53 to i32
  %55 = and i32 %8, 4095
  %56 = add i32 %55, %54
  %57 = sub i32 %20, %8
  %58 = add i32 %57, %56
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !17
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 4\0A\09mcr p15, 1, $1, c15, c11, 5", "r,r"(i32 %56, i32 %58) #8, !srcloc !18
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #8, !srcloc !19
  %60 = inttoptr i32 %56 to ptr
  tail call void @kunmap_local_indexed(ptr noundef %60) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %61 = load i32, ptr %48, align 8
  %62 = add i32 %61, -1
  store i32 %62, ptr %48, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %63 = icmp eq i32 %17, %5
  br i1 %63, label %64, label %7

64:                                               ; preds = %45, %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @enable_l2() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc p15, 1, $0, c15, c1, 0", "=r"() #6, !srcloc !8
  %2 = and i32 %1, 4194304
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  %6 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #6, !srcloc !27
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !17
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %11() #8
  %12 = and i32 %6, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %12) #8, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #8, !srcloc !19
  br label %13

13:                                               ; preds = %9, %4
  %14 = and i32 %6, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = and i32 %6, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %17) #8, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 0", "r"(i32 0) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 0", "r"(i32 0) #8, !srcloc !31
  %18 = or i32 %1, 4194304
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %18) #8, !srcloc !9
  %19 = or i32 %6, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %19) #8, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !29
  br label %22

20:                                               ; preds = %13
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 0", "r"(i32 0) #8, !srcloc !31
  %21 = or i32 %1, 4194304
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %21) #8, !srcloc !9
  br label %22

22:                                               ; preds = %20, %16
  br i1 %8, label %27, label %23

23:                                               ; preds = %22
  %24 = or i32 %6, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %24) #8, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !29
  br label %27

25:                                               ; preds = %0
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %27

27:                                               ; preds = %25, %23, %22
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @feroceon_of_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @feroceon_ids, ptr noundef null) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #8, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  %11 = and i32 %10, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %11) #8, !srcloc !35
  br label %12

12:                                               ; preds = %9, %3, %0
  tail call void @feroceon_l2_init(i32 noundef 0) #9
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i32 [ 0, %12 ], [ -12, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_pfn_prot(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readnone }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
!8 = !{i64 7173}
!9 = !{i64 7288}
!10 = !{i64 2777}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152526771, i64 2152527267, i64 2152526808, i64 2152526864, i64 2152526898, i64 2152526922, i64 2152526963, i64 2152526984, i64 2152527012, i64 2152527046}
!13 = !{i64 2152527832, i64 2152528328, i64 2152527869, i64 2152527925, i64 2152527959, i64 2152527983, i64 2152528024, i64 2152528045, i64 2152528073, i64 2152528107}
!14 = !{i64 2152525007, i64 2152525503, i64 2152525044, i64 2152525100, i64 2152525134, i64 2152525158, i64 2152525199, i64 2152525220, i64 2152525248, i64 2152525282}
!15 = !{i64 2152482940}
!16 = !{i64 2151287709}
!17 = !{i64 324660, i64 324721}
!18 = !{i64 3349, i64 3379}
!19 = !{i64 327677}
!20 = !{i64 2151287916}
!21 = !{i64 2152488229}
!22 = !{i64 2152528760}
!23 = !{i64 2152522902, i64 2152523397, i64 2152522939, i64 2152522995, i64 2152523029, i64 2152523053, i64 2152523094, i64 2152523115, i64 2152523143, i64 2152523177}
!24 = !{i64 2554, i64 2583}
!25 = !{i64 2152528828}
!26 = !{i64 2152528899}
!27 = !{i64 5032139}
!28 = !{i64 5032277}
!29 = !{i64 2152518450}
!30 = !{i64 6798}
!31 = !{i64 3555}
!32 = !{i64 2152535827}
!33 = !{i64 2813378}
!34 = !{i64 2152536291}
!35 = !{i64 2812960}
