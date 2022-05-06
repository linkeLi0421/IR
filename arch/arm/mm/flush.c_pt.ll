; ModuleID = '/llk/IR/arch/arm/mm/flush.c_pt.bc'
source_filename = "../arch/arm/mm/flush.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_heavy_mb:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_heavy_mb\22\09\09\09\09\09"
module asm "__kstrtabns_arm_heavy_mb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_dcache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_dcache_page\22\09\09\09\09\09"
module asm "__kstrtabns_flush_dcache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.64, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.anon.58 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@soc_mb = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_arm_heavy_mb = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_heavy_mb = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_heavy_mb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_heavy_mb to i32), ptr @__kstrtab_arm_heavy_mb, ptr @__kstrtabns_arm_heavy_mb }, section "___ksymtab+arm_heavy_mb", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_flush_dcache_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_dcache_page = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_dcache_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_dcache_page to i32), ptr @__kstrtab_flush_dcache_page, ptr @__kstrtabns_flush_dcache_page }, section "___ksymtab+flush_dcache_page", align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@top_pmd = external dso_local local_unnamed_addr global ptr, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_arm_heavy_mb, ptr @__ksymtab_flush_dcache_page], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_heavy_mb() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 5), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #4
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @soc_mb, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5() #4
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_cache_mm(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_cache_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @cpu_cache, align 4
  tail call void %9() #4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !8
  br label %10

10:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_cache_page(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @cacheid, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @cpu_cache, align 4
  tail call void %13() #4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !8
  br label %14

14:                                               ; preds = %12, %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_uprobe_xol_access(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @cacheid, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %0 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = lshr exact i32 %12, 5
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = add i32 %13, %14
  %16 = and i32 %1, 12288
  %17 = or i32 %16, -49152
  %18 = and i32 %1, 4095
  %19 = shl i32 %15, 12
  %20 = load i32, ptr @pgprot_kernel, align 4
  %21 = or i32 %20, %19
  %22 = or i32 %21, 512
  %23 = load ptr, ptr @top_pmd, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -4096
  %26 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %25, i32 -2130706432, i32 8454144) #5, !srcloc !9
  %27 = inttoptr i32 %26 to ptr
  %28 = lshr exact i32 %17, 12
  %29 = and i32 %28, 503
  %30 = getelementptr i32, ptr %27, i32 %29
  %31 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %31(ptr noundef %30, i32 noundef %22, i32 noundef 0) #4
  %32 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #4, !srcloc !10
  %33 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %17, i32 %33, i32 16) #4, !srcloc !11
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %17, i32 %32, i32 1048576) #4, !srcloc !12
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !14
  %34 = or i32 %17, %18
  br label %37

35:                                               ; preds = %4
  %36 = ptrtoint ptr %2 to i32
  br label %37

37:                                               ; preds = %35, %8
  %38 = phi i32 [ %34, %8 ], [ %36, %35 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %40 = add i32 %38, %3
  tail call void %39(i32 noundef %38, i32 noundef %40) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @copy_to_user_page(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %4, i32 %5, i1 false)
  %7 = tail call ptr @llvm.thread.pointer() #4
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mm_struct, ptr %11, i32 0, i32 1
  %13 = lshr i32 %9, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %6
  %21 = load i32, ptr @cacheid, align 4
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %1 to i32
  %27 = ptrtoint ptr %25 to i32
  %28 = sub i32 %26, %27
  %29 = lshr exact i32 %28, 5
  %30 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %31 = add i32 %29, %30
  %32 = and i32 %2, 12288
  %33 = or i32 %32, -49152
  %34 = and i32 %2, 4095
  %35 = shl i32 %31, 12
  %36 = load i32, ptr @pgprot_kernel, align 4
  %37 = or i32 %36, %35
  %38 = or i32 %37, 512
  %39 = load ptr, ptr @top_pmd, align 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -4096
  %42 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %41, i32 -2130706432, i32 8454144) #5, !srcloc !9
  %43 = inttoptr i32 %42 to ptr
  %44 = lshr exact i32 %33, 12
  %45 = and i32 %44, 503
  %46 = getelementptr i32, ptr %43, i32 %45
  %47 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %47(ptr noundef %46, i32 noundef %38, i32 noundef 0) #4
  %48 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #4, !srcloc !10
  %49 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %33, i32 %49, i32 16) #4, !srcloc !11
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %33, i32 %48, i32 1048576) #4, !srcloc !12
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !14
  %50 = or i32 %33, %34
  br label %53

51:                                               ; preds = %20
  %52 = ptrtoint ptr %3 to i32
  br label %53

53:                                               ; preds = %51, %24
  %54 = phi i32 [ %50, %24 ], [ %52, %51 ]
  %55 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %56 = add i32 %54, %5
  tail call void %55(i32 noundef %54, i32 noundef %56) #4
  br label %57

57:                                               ; preds = %53, %6
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__flush_dcache_page(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = lshr i32 %3, 30
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = icmp ne i32 %4, 3
  %8 = load i32, ptr @movable_zone, align 4
  %9 = icmp ne i32 %8, 2
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %13 = tail call ptr @page_address(ptr noundef %1) #4
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %19 = getelementptr inbounds %struct.anon.58, ptr %18, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %21, %17 ], [ 0, %11 ]
  %24 = shl i32 4096, %23
  tail call void %12(ptr noundef %13, i32 noundef %24) #4
  br label %64

25:                                               ; preds = %6, %2
  %26 = load i32, ptr @cacheid, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  br i1 %28, label %53, label %30

30:                                               ; preds = %40, %25
  %31 = phi i32 [ %52, %40 ], [ 0, %25 ]
  %32 = load volatile i32, ptr %1, align 4
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %29, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %36, %35 ], [ 1, %30 ]
  %39 = icmp ult i32 %31, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = getelementptr %struct.page, ptr %1, i32 %31
  %42 = load i32, ptr @pgprot_kernel, align 4
  %43 = or i32 %42, 512
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %44 = tail call ptr @llvm.thread.pointer() #4
  %45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 149
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %48 = tail call ptr @__kmap_local_page_prot(ptr noundef %41, i32 noundef %43) #4
  %49 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %49(ptr noundef %48, i32 noundef 4096) #4
  tail call void @kunmap_local_indexed(ptr noundef %48) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  %50 = load i32, ptr %45, align 8
  %51 = add i32 %50, -1
  store i32 %51, ptr %45, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %52 = add nuw i32 %31, 1
  br label %30

53:                                               ; preds = %60, %25
  %54 = phi i32 [ %63, %60 ], [ 0, %25 ]
  %55 = load volatile i32, ptr %1, align 4
  %56 = and i32 %55, 65536
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %29, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi i32 [ %59, %58 ], [ 1, %53 ]
  %62 = icmp ult i32 %54, %61
  %63 = add nuw i32 %54, 1
  br i1 %62, label %53, label %64

64:                                               ; preds = %60, %37, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sync_icache_dcache(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @cacheid, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %0, 512
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %6, %4
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = lshr i32 %0, 12
  %10 = tail call i32 @pfn_valid(i32 noundef %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @mem_map, align 4
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = sub i32 %9, %14
  %16 = getelementptr %struct.page, ptr %13, i32 %15
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @__flush_dcache_page(ptr noundef null, ptr noundef %16)
  br label %20

20:                                               ; preds = %19, %12
  br i1 %6, label %21, label %23

21:                                               ; preds = %20
  %22 = load ptr, ptr @cpu_cache, align 4
  tail call void %22() #4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !8
  br label %23

23:                                               ; preds = %21, %20, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_dcache_page(ptr noundef %0) #0 {
  %2 = load ptr, ptr @empty_zero_page, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %57, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @cacheid, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load volatile i32, ptr %0, align 4
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %8
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %0) #4
  br label %57

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !21

18:                                               ; preds = %13
  %19 = add i32 %15, -1
  br label %22

20:                                               ; preds = %13
  %21 = ptrtoint ptr %0 to i32
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = inttoptr i32 %23 to ptr
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 524288
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53, !prof !21

32:                                               ; preds = %28, %22
  %33 = tail call ptr @folio_mapping(ptr noundef %24) #4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load volatile i32, ptr %0, align 4
  %37 = and i32 %36, 65536
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load volatile i32, ptr %14, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !21

43:                                               ; preds = %39, %35
  %44 = tail call i32 @__page_mapcount(ptr noundef %0) #4
  br label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %47 = load volatile i32, ptr %46, align 4
  %48 = add i32 %47, 1
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %0) #4
  br label %57

53:                                               ; preds = %32, %28
  tail call void @__flush_dcache_page(ptr noundef null, ptr noundef %0)
  br label %56

54:                                               ; preds = %49
  tail call void @__flush_dcache_page(ptr noundef nonnull %33, ptr noundef %0)
  %55 = load ptr, ptr @cpu_cache, align 4
  tail call void %55() #4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !8
  br label %56

56:                                               ; preds = %54, %53
  tail call void @_set_bit(i32 noundef 11, ptr noundef %0) #4
  br label %57

57:                                               ; preds = %56, %52, %12, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__flush_anon_page(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @cacheid, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %1 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = lshr exact i32 %11, 5
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = add i32 %12, %13
  %15 = and i32 %2, 12288
  %16 = or i32 %15, -49152
  %17 = shl i32 %14, 12
  %18 = load i32, ptr @pgprot_kernel, align 4
  %19 = or i32 %18, %17
  %20 = or i32 %19, 512
  %21 = load ptr, ptr @top_pmd, align 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -4096
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %23, i32 -2130706432, i32 8454144) #5, !srcloc !9
  %25 = inttoptr i32 %24 to ptr
  %26 = lshr exact i32 %16, 12
  %27 = and i32 %26, 503
  %28 = getelementptr i32, ptr %25, i32 %27
  %29 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %29(ptr noundef %28, i32 noundef %20, i32 noundef 0) #4
  %30 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #4, !srcloc !10
  %31 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %16, i32 %31, i32 16) #4, !srcloc !11
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %16, i32 %30, i32 1048576) #4, !srcloc !12
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !14
  %32 = or i32 %15, -45057
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c14\0A\09mcr\09p15, 0, $2, c7, c10, 4", "r,r,r,~{cc}"(i32 %16, i32 %32, i32 0) #4, !srcloc !22
  %33 = load ptr, ptr @cpu_cache, align 4
  tail call void %33() #4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !8
  %34 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %35 = tail call ptr @page_address(ptr noundef %1) #4
  tail call void %34(ptr noundef %35, i32 noundef 4096) #4
  br label %36

36:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{i64 2152278610}
!9 = !{i64 2148790919, i64 2148790942, i64 2148790974, i64 2148791006, i64 2148791044, i64 2148791074}
!10 = !{i64 2151254410}
!11 = !{i64 2151248101, i64 2151248114}
!12 = !{i64 2151254683, i64 2151254696}
!13 = !{i64 2151257446}
!14 = !{i64 2151257505}
!15 = !{i64 2153267435}
!16 = !{i64 2153267483}
!17 = !{i64 2152541200}
!18 = !{i64 2151753968}
!19 = !{i64 2151754175}
!20 = !{i64 2152543825}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 878, i64 909}
