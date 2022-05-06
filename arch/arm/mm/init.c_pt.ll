; ModuleID = '/llk/IR/arch/arm/mm/init.c_pt.bc'
source_filename = "../arch/arm/mm/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_dma_zone_size:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_dma_zone_size\22\09\09\09\09\09"
module asm "__kstrtabns_arm_dma_zone_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pfn_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22pfn_valid\22\09\09\09\09\09"
module asm "__kstrtabns_pfn_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tagtable = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.section_perm = type { ptr, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.tag = type { %struct.tag_header, %union.anon }
%struct.tag_header = type { i32, i32 }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.42, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.42 = type { %struct.atomic_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }

@cr_alignment = external dso_local local_unnamed_addr global i32, align 4
@__tagtable_parse_tag_initrd = internal constant %struct.tagtable { i32 1413545989, ptr @parse_tag_initrd }, section ".taglist.init", align 4
@__tagtable_parse_tag_initrd2 = internal constant %struct.tagtable { i32 1413611525, ptr @parse_tag_initrd2 }, section ".taglist.init", align 4
@arm_dma_zone_size = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_arm_dma_zone_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_dma_zone_size = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_dma_zone_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_dma_zone_size to i32), ptr @__kstrtab_arm_dma_zone_size, ptr @__kstrtabns_arm_dma_zone_size }, section "___ksymtab+arm_dma_zone_size", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@arm_dma_limit = dso_local local_unnamed_addr global i32 0, align 4
@arm_dma_pfn_limit = dso_local local_unnamed_addr global i32 0, align 4
@memblock = external dso_local global %struct.memblock, align 4
@__kstrtab_pfn_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pfn_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_pfn_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pfn_valid to i32), ptr @__kstrtab_pfn_valid, ptr @__kstrtabns_pfn_valid }, section "___ksymtab+pfn_valid", align 4
@arm_memblock_steal_permitted = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [34 x i8] c"Failed to steal %pa bytes at %pS\0A\00", align 1
@_stext = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"initrd\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\014ATAG_INITRD is deprecated; please update your bootloader.\0A\00", align 1
@phys_initrd_start = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_size = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"\013INITRD: 0x%08llx+0x%08lx is not a memory region - disabling initrd\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"\013INITRD: 0x%08llx+0x%08lx overlaps in-use memory region - disabling initrd\0A\00", align 1
@max_mapnr = external dso_local local_unnamed_addr global i32, align 4
@ro_perms = internal global [1 x %struct.section_perm] [%struct.section_perm { ptr @.str.6, i32 ptrtoint (ptr @_stext to i32), i32 ptrtoint (ptr @__init_begin to i32), i32 -33793, i32 33792, i32 1024 }], align 4
@init_task = external dso_local global %struct.task_struct, align 64
@init_mm = external dso_local global %struct.mm_struct, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"\013BUG: %s section %lx-%lx not aligned to %lx\0A\00", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"text/rodata RO\00", align 1
@nx_perms = internal global [3 x %struct.section_perm] [%struct.section_perm { ptr @.str.7, i32 -1073741824, i32 ptrtoint (ptr @_stext to i32), i32 -17, i32 16, i32 0 }, %struct.section_perm { ptr @.str.8, i32 ptrtoint (ptr @__init_begin to i32), i32 ptrtoint (ptr @_sdata to i32), i32 -17, i32 16, i32 0 }, %struct.section_perm { ptr @.str.9, i32 ptrtoint (ptr @__start_rodata_section_aligned to i32), i32 ptrtoint (ptr @__init_begin to i32), i32 -17, i32 16, i32 0 }], align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"pre-text NX\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"init NX\00", align 1
@_sdata = external dso_local global [0 x i8], align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rodata NX\00", align 1
@__start_rodata_section_aligned = external dso_local global [0 x i8], align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"unused kernel image (initmem)\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_arm_dma_zone_size, ptr @__ksymtab_pfn_valid, ptr @__tagtable_parse_tag_initrd, ptr @__tagtable_parse_tag_initrd2], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local i32 @__clear_cr(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr @cr_alignment, align 4
  %3 = xor i32 %0, -1
  %4 = and i32 %2, %3
  store i32 %4, ptr @cr_alignment, align 4
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @parse_tag_initrd(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  %3 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %4, i32 -2130706432, i32 8454144) #11, !srcloc !8
  store i32 %5, ptr @phys_initrd_start, align 4
  %6 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr @phys_initrd_size, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_initrd2(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr @phys_initrd_start, align 4
  %4 = getelementptr inbounds %struct.tag, ptr %0, i32 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr @phys_initrd_size, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @setup_dma_zone(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  store i32 %3, ptr @arm_dma_zone_size, align 4
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %7 = shl i32 %6, 12
  %8 = add i32 %3, -1
  %9 = add i32 %8, %7
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ -1, %1 ]
  store i32 %11, ptr @arm_dma_limit, align 4
  %12 = lshr i32 %11, 12
  store i32 %12, ptr @arm_dma_pfn_limit, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pfn_valid(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 1048576
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = shl nuw i32 %0, 12
  %5 = and i32 %4, -8388608
  %6 = tail call zeroext i1 @memblock_overlaps_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %5, i32 noundef 8388608) #12
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_overlaps_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @arm_memblock_steal(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i1, ptr @arm_memblock_steal_permitted, align 1
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

6:                                                ; preds = %2
  %7 = tail call i32 @memblock_phys_alloc_range(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.returnaddress(i32 0)
  call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef %10) #13
  unreachable

11:                                               ; preds = %6
  %12 = tail call i32 @memblock_phys_free(i32 noundef %7, i32 noundef %0) #12
  %13 = tail call i32 @memblock_remove(i32 noundef %7, i32 noundef %0) #12
  ret i32 %7
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_remove(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @arm_memblock_init(ptr nocapture noundef readonly %0) local_unnamed_addr #1 section ".init.text" {
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @_stext to i32), i32 -2130706432, i32 8454144) #11, !srcloc !8
  %3 = tail call i32 @memblock_reserve(i32 noundef %2, i32 noundef sub (i32 ptrtoint (ptr @_end to i32), i32 ptrtoint (ptr @_stext to i32))) #12
  tail call fastcc void @arm_initrd_init() #14
  tail call void @arm_mm_memblock_reserve() #12
  %4 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5() #12
  br label %8

8:                                                ; preds = %7, %1
  tail call void @early_init_fdt_scan_reserved_mem() #12
  %9 = load i32, ptr @arm_dma_limit, align 4
  tail call void @dma_contiguous_reserve(i32 noundef %9) #12
  store i1 true, ptr @arm_memblock_steal_permitted, align 1
  tail call void @memblock_dump_all() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @arm_initrd_init() unnamed_addr #1 section ".init.text" {
  store i32 0, ptr @initrd_end, align 4
  store i32 0, ptr @initrd_start, align 4
  %1 = load i32, ptr @phys_initrd_size, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @phys_initrd_start, align 4
  %5 = and i32 %4, -4096
  %6 = and i32 %4, 4095
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = or i32 %8, 4095
  %10 = add i32 %9, 1
  %11 = tail call zeroext i1 @memblock_is_region_memory(i32 noundef %5, i32 noundef %10) #12
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = zext i32 %5 to i64
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %13, i32 noundef %10) #10
  br label %26

15:                                               ; preds = %3
  %16 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %5, i32 noundef %10) #12
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = zext i32 %5 to i64
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %18, i32 noundef %10) #10
  br label %26

20:                                               ; preds = %15
  %21 = tail call i32 @memblock_reserve(i32 noundef %5, i32 noundef %10) #12
  %22 = load i32, ptr @phys_initrd_start, align 4
  %23 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %22, i32 -2130706432, i32 8454144) #11, !srcloc !11
  store i32 %23, ptr @initrd_start, align 4
  %24 = load i32, ptr @phys_initrd_size, align 4
  %25 = add i32 %24, %23
  store i32 %25, ptr @initrd_end, align 4
  br label %26

26:                                               ; preds = %20, %17, %12, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_mm_memblock_reserve() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_init_fdt_scan_reserved_mem() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_contiguous_reserve(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_dump_all() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @bootmem_init() local_unnamed_addr #1 section ".init.text" {
  %1 = alloca [4 x i32], align 4
  tail call void @memblock_allow_resize() #12
  tail call fastcc void @find_limits() #14
  %2 = load i32, ptr @max_low_pfn, align 4
  %3 = load i32, ptr @max_pfn, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #12
  %4 = getelementptr inbounds i8, ptr %1, i32 12
  store i32 0, ptr %4, align 4
  %5 = load i32, ptr @arm_dma_pfn_limit, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %2) #12
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds [4 x i32], ptr %1, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds [4 x i32], ptr %1, i32 0, i32 2
  store i32 %3, ptr %8, align 4
  call void @free_area_init(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_allow_resize() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @find_limits() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @memblock_get_current_limit() #12
  %2 = lshr i32 %1, 12
  store i32 %2, ptr @max_low_pfn, align 4
  %3 = tail call i32 @memblock_start_of_DRAM() #12
  %4 = add i32 %3, 4095
  %5 = lshr i32 %4, 12
  store i32 %5, ptr @min_low_pfn, align 4
  %6 = tail call i32 @memblock_end_of_DRAM() #12
  %7 = lshr i32 %6, 12
  store i32 %7, ptr @max_pfn, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mem_init() local_unnamed_addr #1 section ".init.text" {
  %1 = load i32, ptr @max_pfn, align 4
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %3 = sub i32 %1, %2
  %4 = shl i32 %3, 5
  %5 = ashr exact i32 %4, 5
  store i32 %5, ptr @max_mapnr, align 4
  tail call void @memblock_free_all() #12
  tail call fastcc void @free_highpages() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_all() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @free_highpages() unnamed_addr #1 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, ptr @max_low_pfn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  store i32 0, ptr %1, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #12
  %5 = load i64, ptr %3, align 8
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %29, label %7

7:                                                ; preds = %26, %0
  %8 = load i32, ptr %2, align 4
  %9 = lshr i32 %8, 12
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 4
  %13 = add i32 %12, 4095
  %14 = lshr i32 %13, 12
  %15 = call i32 @llvm.umax.i32(i32 %14, i32 %4)
  %16 = icmp ult i32 %15, %9
  br i1 %16, label %17, label %26

17:                                               ; preds = %17, %11
  %18 = phi i32 [ %24, %17 ], [ %15, %11 ]
  %19 = load ptr, ptr @mem_map, align 4
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %21 = sub i32 %18, %20
  %22 = getelementptr %struct.page, ptr %19, i32 %21
  call void @_clear_bit(i32 noundef 12, ptr noundef %22) #12
  %23 = getelementptr %struct.page, ptr %19, i32 %21, i32 3
  store volatile i32 1, ptr %23, align 4
  call void @__free_pages(ptr noundef %22, i32 noundef 0) #12
  call void @adjust_managed_page_count(ptr noundef %22, i32 noundef 1) #12
  %24 = add nuw nsw i32 %18, 1
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %11, %7
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #12
  %27 = load i64, ptr %3, align 8
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %29, label %7

29:                                               ; preds = %26, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_rodata_ro() local_unnamed_addr #2 {
  %1 = tail call i32 @stop_machine(ptr noundef nonnull @__mark_rodata_ro, ptr noundef null, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__mark_rodata_ro(ptr nocapture noundef readnone %0) #2 {
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %34, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -568
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %29, %15, %5
  %12 = load volatile ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 -1116
  %14 = icmp eq ptr %13, @init_task
  br i1 %14, label %34, label %5

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %6, i32 500
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %11, label %21

21:                                               ; preds = %29, %15
  %22 = phi ptr [ %30, %29 ], [ %17, %15 ]
  %23 = phi ptr [ %31, %29 ], [ %19, %15 ]
  %24 = getelementptr i8, ptr %23, i32 -232
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  tail call fastcc void @set_section_perms(ptr noundef nonnull @ro_perms, i32 noundef 1, ptr noundef nonnull %25) #12
  %28 = load ptr, ptr %16, align 16
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %22, %21 ], [ %28, %27 ]
  %31 = load volatile ptr, ptr %23, align 4
  %32 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 3
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %11, label %21

34:                                               ; preds = %11, %1
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 38
  %37 = load ptr, ptr %36, align 8
  tail call fastcc void @set_section_perms(ptr noundef nonnull @ro_perms, i32 noundef 1, ptr noundef %37) #12
  tail call fastcc void @set_section_perms(ptr noundef nonnull @ro_perms, i32 noundef 1, ptr noundef nonnull @init_mm) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_initmem() local_unnamed_addr #2 {
  %1 = tail call i32 @stop_machine(ptr noundef nonnull @__fix_kernmem_perms, ptr noundef null, ptr noundef null) #12
  br i1 icmp eq (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 0), label %8, label %2

2:                                                ; preds = %2, %0
  %3 = phi ptr [ %5, %2 ], [ @__init_begin, %0 ]
  %4 = phi i32 [ %6, %2 ], [ sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), %0 ]
  %5 = getelementptr i32, ptr %3, i32 1
  store i32 -402792720, ptr %3, align 4
  %6 = add i32 %4, -4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %2

8:                                                ; preds = %2, %0
  %9 = tail call i32 @free_reserved_area(ptr noundef nonnull @__init_begin, ptr noundef nonnull @__init_end, i32 noundef -1, ptr noundef nonnull @.str.10) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_initrd_mem(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @initrd_start, align 4
  %4 = icmp eq i32 %3, %0
  %5 = and i32 %0, -4096
  %6 = select i1 %4, i32 %5, i32 %0
  %7 = load i32, ptr @initrd_end, align 4
  %8 = icmp eq i32 %7, %1
  %9 = add i32 %1, -1
  %10 = or i32 %9, 4095
  %11 = add i32 %10, 1
  %12 = select i1 %8, i32 %11, i32 %1
  %13 = inttoptr i32 %6 to ptr
  %14 = add i32 %12, 4095
  %15 = and i32 %14, -4096
  %16 = sub i32 %15, %6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %2
  %19 = phi ptr [ %21, %18 ], [ %13, %2 ]
  %20 = phi i32 [ %22, %18 ], [ %16, %2 ]
  %21 = getelementptr i32, ptr %19, i32 1
  store i32 -402792720, ptr %19, align 4
  %22 = add i32 %20, -4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %2
  %25 = inttoptr i32 %12 to ptr
  %26 = tail call i32 @free_reserved_area(ptr noundef %13, ptr noundef %25, i32 noundef -1, ptr noundef nonnull @.str.1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_get_current_limit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_area_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_section_perms(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = tail call i32 @cpu_architecture() #15
  %5 = icmp slt i32 %4, 8
  br i1 %5, label %55, label %6

6:                                                ; preds = %3
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #11, !srcloc !13
  %8 = and i32 %7, 8388608
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne i32 %1, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 8
  br label %14

14:                                               ; preds = %52, %12
  %15 = phi i32 [ 0, %12 ], [ %53, %52 ]
  %16 = getelementptr %struct.section_perm, ptr %0, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1048575
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr %struct.section_perm, ptr %0, i32 %15, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1048575
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %19, i1 %23, i1 false
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = icmp ult i32 %17, %21
  br i1 %26, label %27, label %52

27:                                               ; preds = %25
  %28 = getelementptr %struct.section_perm, ptr %0, i32 %15, i32 3
  %29 = getelementptr %struct.section_perm, ptr %0, i32 %15, i32 4
  br label %34

30:                                               ; preds = %14
  %31 = getelementptr %struct.section_perm, ptr %0, i32 %15
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %32, i32 noundef %17, i32 noundef %21, i32 noundef 1048576) #10
  br label %52

34:                                               ; preds = %34, %27
  %35 = phi i32 [ %17, %27 ], [ %49, %34 ]
  %36 = load i32, ptr %28, align 4
  %37 = load i32, ptr %29, align 4
  %38 = load ptr, ptr %13, align 4
  %39 = lshr i32 %35, 21
  %40 = getelementptr [2 x i32], ptr %38, i32 %39
  %41 = lshr i32 %35, 20
  %42 = and i32 %41, 1
  %43 = getelementptr i32, ptr %40, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %36
  %46 = or i32 %45, %37
  store i32 %46, ptr %43, align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %40, i32 %47, i32 1073741824) #12, !srcloc !14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  %48 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  %49 = add i32 %35, 1048576
  tail call void %48(i32 noundef %35, i32 noundef %49) #12
  %50 = load i32, ptr %20, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %34, label %52

52:                                               ; preds = %34, %30, %25
  %53 = add nuw i32 %15, 1
  %54 = icmp eq i32 %53, %1
  br i1 %54, label %55, label %14

55:                                               ; preds = %52, %6, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__fix_kernmem_perms(ptr nocapture noundef readnone %0) #2 {
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %34, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -568
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %29, %15, %5
  %12 = load volatile ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 -1116
  %14 = icmp eq ptr %13, @init_task
  br i1 %14, label %34, label %5

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %6, i32 500
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %11, label %21

21:                                               ; preds = %29, %15
  %22 = phi ptr [ %30, %29 ], [ %17, %15 ]
  %23 = phi ptr [ %31, %29 ], [ %19, %15 ]
  %24 = getelementptr i8, ptr %23, i32 -232
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  tail call fastcc void @set_section_perms(ptr noundef nonnull @nx_perms, i32 noundef 3, ptr noundef nonnull %25) #12
  %28 = load ptr, ptr %16, align 16
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %22, %21 ], [ %28, %27 ]
  %31 = load volatile ptr, ptr %23, align 4
  %32 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 3
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %11, label %21

34:                                               ; preds = %11, %1
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 38
  %37 = load ptr, ptr %36, align 8
  tail call fastcc void @set_section_perms(ptr noundef nonnull @nx_perms, i32 noundef 3, ptr noundef %37) #12
  tail call fastcc void @set_section_perms(ptr noundef nonnull @nx_perms, i32 noundef 3, ptr noundef nonnull @init_mm) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind readonly willreturn }

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
!8 = !{i64 2148662136, i64 2148662159, i64 2148662191, i64 2148662223, i64 2148662261, i64 2148662291}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153793772, i64 2153794255, i64 2153793809, i64 2153793865, i64 2153793899, i64 2153793923, i64 2153793964, i64 2153793985, i64 2153794013, i64 2153794047}
!11 = !{i64 2148662922, i64 2148662945, i64 2148662977, i64 2148663009, i64 2148663047, i64 2148663077}
!12 = !{!"auto-init"}
!13 = !{i64 6015147}
!14 = !{i64 2152526310, i64 2152526323}
!15 = !{i64 2152530811}
