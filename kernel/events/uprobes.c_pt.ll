; ModuleID = '/llk/IR/kernel/events/uprobes.c_pt.bc'
source_filename = "../kernel/events/uprobes.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uprobe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22uprobe_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_uprobe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uprobe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22uprobe_register\22\09\09\09\09\09"
module asm "__kstrtabns_uprobe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uprobe_register_refctr:\09\09\09\09\09"
module asm "\09.asciz \09\22uprobe_register_refctr\22\09\09\09\09\09"
module asm "__kstrtabns_uprobe_register_refctr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.4, %union.anon.66, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.anon.72 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.70 = type { ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.uprobe = type { %struct.rb_node, %struct.refcount_struct, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, ptr, ptr, i64, i64, i32, %struct.arch_uprobe }
%struct.arch_uprobe = type { [4 x i8], [2 x i32], i32, i8, i32, ptr, ptr, %struct.arch_probes_insn }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.delayed_uprobe = type { %struct.list_head, ptr, ptr }
%struct.uprobe_consumer = type { ptr, ptr, ptr, ptr }
%struct.map_info = type { ptr, ptr, i32 }
%struct.xol_area = type { %struct.wait_queue_head, %struct.atomic_t, ptr, %struct.vm_special_mapping, [2 x ptr], i32 }
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.uprobe_task = type { i32, %union.anon.51, ptr, i32, ptr, i32 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { %struct.arch_uprobe_task, i32 }
%struct.arch_uprobe_task = type { i32, i32 }
%struct.return_instance = type { ptr, i32, i32, i32, i8, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [24 x i8] c"kernel/events/uprobes.c\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"uprobe unregister should never work on compound page\0A\00", align 1
@__kstrtab_uprobe_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_uprobe_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_uprobe_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uprobe_unregister to i32), ptr @__kstrtab_uprobe_unregister, ptr @__kstrtabns_uprobe_unregister }, section "___ksymtab_gpl+uprobe_unregister", align 4
@__kstrtab_uprobe_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_uprobe_register = external dso_local constant [0 x i8], align 1
@__ksymtab_uprobe_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uprobe_register to i32), ptr @__kstrtab_uprobe_register, ptr @__kstrtabns_uprobe_register }, section "___ksymtab_gpl+uprobe_register", align 4
@__kstrtab_uprobe_register_refctr = external dso_local constant [0 x i8], align 1
@__kstrtabns_uprobe_register_refctr = external dso_local constant [0 x i8], align 1
@__ksymtab_uprobe_register_refctr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uprobe_register_refctr to i32), ptr @__kstrtab_uprobe_register_refctr, ptr @__kstrtabns_uprobe_register_refctr }, section "___ksymtab_gpl+uprobe_register_refctr", align 4
@uprobes_tree = internal global %struct.rb_root zeroinitializer, align 4
@uprobes_mmap_mutex = internal global [13 x %struct.mutex] zeroinitializer, align 4
@delayed_uprobe_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @delayed_uprobe_lock, i64 12), ptr getelementptr (i8, ptr @delayed_uprobe_lock, i64 12) } }, align 4
@dup_mmap_sem = internal global %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dup_mmap_sem, i64 12), ptr getelementptr (i8, ptr @dup_mmap_sem, i64 12) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_dup_mmap_sem, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dup_mmap_sem, i64 40), ptr getelementptr (i8, ptr @dup_mmap_sem, i64 40) } }, %struct.atomic_t zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"dup ret instances\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dup xol area\00", align 1
@uprobe_deny_signal.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobes_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"&uprobes_mmap_mutex[i]\00", align 1
@uprobe_exception_nb = internal global %struct.notifier_block { ptr @arch_uprobe_exception_notify, ptr null, i32 2147483646 }, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"\014ref_ctr going negative. vaddr: 0x%lx, curr val: %d, delta: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"\014ref_ctr %s failed for inode: 0x%lx offset: 0x%llx ref_ctr_offset: 0x%llx of mm: 0x%pK\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"decrement\00", align 1
@delayed_uprobe_list = internal global %struct.list_head { ptr @delayed_uprobe_list, ptr @delayed_uprobe_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@uprobes_treelock = internal global %struct.spinlock zeroinitializer, align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@alloc_uprobe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"&uprobe->register_rwsem\00", align 1
@alloc_uprobe.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"&uprobe->consumer_rwsem\00", align 1
@.str.12 = private unnamed_addr constant [112 x i8] c"\014ref_ctr_offset mismatch. inode: 0x%lx offset: 0x%llx ref_ctr_offset(old): 0x%llx ref_ctr_offset(new): 0x%llx\0A\00", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__percpu_rwsem_rc_dup_mmap_sem = internal global i32 0, section ".data..percpu", align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"\014uprobe: %s:%d failed to %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"[uprobes]\00", align 1
@__create_xol_area.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"&area->wq\00", align 1
@handle_singlestep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"execute the probed insn, sending SIGILL.\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"handle uretprobe, sending SIGILL.\00", align 1
@is_trap_at_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"bad rc=0x%x from %ps()\0A\00", align 1
@prepare_uretprobe._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.prepare_uretprobe = private unnamed_addr constant [18 x i8] c"prepare_uretprobe\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"\016uprobe: omit uretprobe due to nestedness limit pid/tgid=%d/%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"handle tail call\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_uprobe_register, ptr @__ksymtab_uprobe_register_refctr, ptr @__ksymtab_uprobe_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @is_swbp_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, -403701255
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @is_trap_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @is_swbp_insn(ptr noundef %0)
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_write_opcode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store i32 %3, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !9
  %10 = call zeroext i1 @is_swbp_insn(ptr noundef nonnull %7)
  %11 = getelementptr i8, ptr %0, i32 -100
  %12 = and i32 %2, 4095
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = select i1 %10, i16 1, i16 -1
  %15 = and i32 %2, -4096
  %16 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  %19 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  %20 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  br label %21

21:                                               ; preds = %378, %4
  %22 = phi i32 [ 0, %4 ], [ %359, %378 ]
  %23 = phi i32 [ 16, %4 ], [ %25, %378 ]
  %24 = or i32 %23, 131072
  %25 = select i1 %10, i32 %24, i32 %23
  %26 = call i32 @get_user_pages_remote(ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %25, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #13
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %387, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %30 = load i32, ptr @pgprot_kernel, align 4
  %31 = or i32 %30, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %32 = tail call ptr @llvm.thread.pointer() #13
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 149
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %36 = call ptr @__kmap_local_page_prot(ptr noundef %29, i32 noundef %31) #13
  %37 = getelementptr i8, ptr %36, i32 %12
  %38 = load i32, ptr %37, align 1
  store i32 %38, ptr %6, align 4
  call void @kunmap_local_indexed(ptr noundef %36) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %39 = load i32, ptr %33, align 8
  %40 = add i32 %39, -1
  store i32 %40, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %41 = call zeroext i1 @is_swbp_insn(ptr noundef nonnull %6) #13
  %42 = call zeroext i1 @is_swbp_insn(ptr noundef nonnull %7) #13
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br i1 %41, label %45, label %46

44:                                               ; preds = %28
  br i1 %41, label %46, label %45

45:                                               ; preds = %44, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %358

46:                                               ; preds = %44, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br i1 %10, label %58, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %8, align 4
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !14

57:                                               ; preds = %52, %47
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef nonnull @.str.1) #13
  br label %358

58:                                               ; preds = %52, %46
  %59 = icmp eq i32 %22, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load i64, ptr %13, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = call fastcc i32 @update_ref_ctr(ptr noundef %11, ptr noundef %1, i16 noundef signext %14)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %358

66:                                               ; preds = %63, %60, %58
  %67 = phi i32 [ 1, %58 ], [ 0, %60 ], [ 1, %63 ]
  br i1 %10, label %86, label %68

68:                                               ; preds = %66
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !14

74:                                               ; preds = %68
  %75 = add i32 %71, -1
  br label %78

76:                                               ; preds = %68
  %77 = ptrtoint ptr %69 to i32
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.anon.72, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %358, label %86

86:                                               ; preds = %78, %66
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 11
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94, !prof !15

91:                                               ; preds = %86
  %92 = call i32 @__anon_vma_prepare(ptr noundef %87) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %358

94:                                               ; preds = %91, %86
  %95 = call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %96 = icmp eq ptr %95, null
  br i1 %96, label %358, label %97

97:                                               ; preds = %94
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !16
  %98 = load i32, ptr %95, align 4
  %99 = or i32 %98, 4
  store i32 %99, ptr %95, align 4
  %100 = load ptr, ptr %8, align 4
  %101 = load i32, ptr @pgprot_kernel, align 4
  %102 = or i32 %101, 512
  %103 = call ptr @__kmap_local_page_prot(ptr noundef %100, i32 noundef %102) #13
  %104 = load i32, ptr @pgprot_kernel, align 4
  %105 = or i32 %104, 512
  %106 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %95, i32 noundef %105) #13
  call void @copy_page(ptr noundef %106, ptr noundef %103) #13
  call void @kunmap_local_indexed(ptr noundef %106) #13
  call void @kunmap_local_indexed(ptr noundef %103) #13
  %107 = load i32, ptr @pgprot_kernel, align 4
  %108 = or i32 %107, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %109 = load i32, ptr %33, align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %111 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %95, i32 noundef %108) #13
  %112 = getelementptr i8, ptr %111, i32 %12
  %113 = load i32, ptr %7, align 4
  store i32 %113, ptr %112, align 1
  call void @kunmap_local_indexed(ptr noundef %111) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %114 = load i32, ptr %33, align 8
  %115 = add i32 %114, -1
  store i32 %115, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br i1 %10, label %173, label %116

116:                                              ; preds = %97
  %117 = load ptr, ptr %9, align 4
  %118 = getelementptr inbounds %struct.vm_area_struct, ptr %117, i32 0, i32 13
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %117, align 4
  %121 = sub i32 %15, %120
  %122 = lshr i32 %121, 12
  %123 = add i32 %122, %119
  %124 = getelementptr inbounds %struct.vm_area_struct, ptr %117, i32 0, i32 14
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.file, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.inode, ptr %127, i32 0, i32 9
  %129 = load ptr, ptr %128, align 8
  %130 = call ptr @pagecache_get_page(ptr noundef %129, i32 noundef %123, i32 noundef 0, i32 noundef 0) #13
  %131 = icmp eq ptr %130, null
  br i1 %131, label %173, label %132

132:                                              ; preds = %116
  %133 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 1
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137, !prof !14

137:                                              ; preds = %132
  %138 = add i32 %134, -1
  br label %141

139:                                              ; preds = %132
  %140 = ptrtoint ptr %130 to i32
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = inttoptr i32 %142 to ptr
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %141
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %148 = call i32 @memcmp_pages(ptr noundef nonnull %95, ptr noundef nonnull %130) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  call fastcc void @put_page(ptr noundef nonnull %95)
  %151 = load volatile i32, ptr %130, align 4
  %152 = and i32 %151, 65536
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load volatile i32, ptr %133, align 4
  br label %156

156:                                              ; preds = %154, %150, %147, %141
  %157 = phi ptr [ %95, %147 ], [ %95, %141 ], [ null, %150 ], [ null, %154 ]
  %158 = load volatile i32, ptr %133, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161, !prof !14

161:                                              ; preds = %156
  %162 = add i32 %158, -1
  br label %165

163:                                              ; preds = %156
  %164 = ptrtoint ptr %130 to i32
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = inttoptr i32 %166 to ptr
  %168 = getelementptr inbounds %struct.page, ptr %167, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #13, !srcloc !19
  %169 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #13, !srcloc !20
  %170 = extractvalue { i32, i32 } %169, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  call void @__put_page(ptr noundef %167) #13
  br label %173

173:                                              ; preds = %172, %165, %116, %97
  %174 = phi ptr [ %95, %97 ], [ %95, %116 ], [ %157, %165 ], [ %157, %172 ]
  %175 = load ptr, ptr %9, align 4
  %176 = load ptr, ptr %8, align 4
  %177 = getelementptr inbounds %struct.vm_area_struct, ptr %175, i32 0, i32 6
  %178 = load ptr, ptr %177, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  %179 = getelementptr inbounds %struct.page, ptr %176, i32 0, i32 1
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183, !prof !14

183:                                              ; preds = %173
  %184 = add i32 %180, -1
  br label %187

185:                                              ; preds = %173
  %186 = ptrtoint ptr %176 to i32
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = inttoptr i32 %188 to ptr
  store ptr %189, ptr %5, align 4
  store ptr %175, ptr %16, align 4
  store i32 %2, ptr %17, align 4
  %190 = icmp eq ptr %174, null
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false) #13
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 1
  %193 = load volatile i32, ptr %192, align 4
  br label %194

194:                                              ; preds = %191, %187
  %195 = load volatile i32, ptr %179, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198, !prof !14

198:                                              ; preds = %194
  %199 = add i32 %195, -1
  br label %202

200:                                              ; preds = %194
  %201 = ptrtoint ptr %176 to i32
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = inttoptr i32 %203 to ptr
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %204) #13, !srcloc !19
  %209 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %204, ptr %204, i32 1, ptr elementtype(i32) %204) #13, !srcloc !22
  %210 = extractvalue { i32, i32, i32 } %209, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208, %202
  call void @__folio_lock(ptr noundef %204) #13
  br label %214

214:                                              ; preds = %213, %208
  %215 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #13
  br i1 %215, label %216, label %339

216:                                              ; preds = %214
  br i1 %190, label %231, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 1
  %219 = load volatile i32, ptr %218, align 4
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222, !prof !14

222:                                              ; preds = %217
  %223 = add i32 %219, -1
  br label %226

224:                                              ; preds = %217
  %225 = ptrtoint ptr %174 to i32
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  %228 = inttoptr i32 %227 to ptr
  %229 = getelementptr inbounds %struct.page, ptr %228, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %229) #13, !srcloc !19
  %230 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %229, ptr %229, i32 1, ptr elementtype(i32) %229) #13, !srcloc !24
  call void @page_add_new_anon_rmap(ptr noundef nonnull %174, ptr noundef %175, i32 noundef %2, i1 noundef zeroext false) #13
  call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %174, ptr noundef %175) #13
  br label %235

231:                                              ; preds = %216
  %232 = getelementptr %struct.anon, ptr %178, i32 0, i32 40, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %232) #13, !srcloc !19
  %233 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %232, ptr %232, i32 1, ptr elementtype(i32) %232) #13, !srcloc !20
  %234 = extractvalue { i32, i32 } %233, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  call void @mm_trace_rss_stat(ptr noundef %178, i32 noundef 1, i32 noundef %234) #13
  br label %235

235:                                              ; preds = %231, %226
  %236 = load volatile i32, ptr %179, align 4
  %237 = and i32 %236, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239, !prof !14

239:                                              ; preds = %235
  %240 = add i32 %236, -1
  br label %243

241:                                              ; preds = %235
  %242 = ptrtoint ptr %176 to i32
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  %245 = inttoptr i32 %244 to ptr
  %246 = getelementptr inbounds %struct.anon.72, ptr %245, i32 0, i32 2
  %247 = load ptr, ptr %246, align 4
  %248 = ptrtoint ptr %247 to i32
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %273

251:                                              ; preds = %243
  %252 = load volatile i32, ptr %179, align 4
  %253 = and i32 %252, 1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255, !prof !14

255:                                              ; preds = %251
  %256 = add i32 %252, -1
  br label %259

257:                                              ; preds = %251
  %258 = ptrtoint ptr %176 to i32
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  %261 = inttoptr i32 %260 to ptr
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %262, 524288
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.anon, ptr %178, i32 0, i32 40
  %267 = getelementptr [4 x %struct.atomic_t], ptr %266, i32 0, i32 %265
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %267) #13, !srcloc !19
  %268 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %267, ptr %267, i32 1, ptr elementtype(i32) %267) #13, !srcloc !20
  %269 = extractvalue { i32, i32 } %268, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  call void @mm_trace_rss_stat(ptr noundef %178, i32 noundef %265, i32 noundef %269) #13
  %270 = getelementptr %struct.anon, ptr %178, i32 0, i32 40, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %270) #13, !srcloc !19
  %271 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %270, ptr %270, i32 1, ptr elementtype(i32) %270) #13, !srcloc !26
  %272 = extractvalue { i32, i32 } %271, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  call void @mm_trace_rss_stat(ptr noundef %178, i32 noundef 1, i32 noundef %272) #13
  br label %273

273:                                              ; preds = %259, %243
  %274 = load ptr, ptr %19, align 4
  %275 = load i32, ptr %274, align 4
  %276 = lshr i32 %275, 12
  call void @flush_cache_page(ptr noundef %175, i32 noundef %2, i32 noundef %276) #13
  %277 = load ptr, ptr %19, align 4
  %278 = call i32 @ptep_clear_flush(ptr noundef %175, i32 noundef %2, ptr noundef %277) #13
  br i1 %190, label %292, label %279

279:                                              ; preds = %273
  %280 = load ptr, ptr %19, align 4
  %281 = load ptr, ptr @mem_map, align 4
  %282 = ptrtoint ptr %174 to i32
  %283 = ptrtoint ptr %281 to i32
  %284 = sub i32 %282, %283
  %285 = lshr exact i32 %284, 5
  %286 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %287 = add i32 %285, %286
  %288 = shl i32 %287, 12
  %289 = getelementptr inbounds %struct.vm_area_struct, ptr %175, i32 0, i32 7
  %290 = load i32, ptr %289, align 4
  %291 = or i32 %288, %290
  call void @set_pte_at(ptr noundef %178, i32 noundef %2, ptr noundef %280, i32 noundef %291) #13
  br label %292

292:                                              ; preds = %279, %273
  call void @page_remove_rmap(ptr noundef %176, i1 noundef zeroext false) #13
  %293 = call zeroext i1 @page_mapped(ptr noundef %176) #13
  br i1 %293, label %296, label %294

294:                                              ; preds = %292
  %295 = call i32 @try_to_free_swap(ptr noundef %176) #13
  br label %296

296:                                              ; preds = %294, %292
  %297 = load ptr, ptr %19, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  call void @kunmap_local_indexed(ptr noundef nonnull %297) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %300 = load i32, ptr %33, align 8
  %301 = add i32 %300, -1
  store i32 %301, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %302

302:                                              ; preds = %299, %296
  %303 = load ptr, ptr %20, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %306 = load i16, ptr %303, align 4
  %307 = add i16 %306, 1
  store i16 %307, ptr %303, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %308

308:                                              ; preds = %305, %302
  %309 = getelementptr inbounds %struct.vm_area_struct, ptr %175, i32 0, i32 8
  %310 = load i32, ptr %309, align 4
  %311 = and i32 %310, 8192
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %323, label %313

313:                                              ; preds = %308
  %314 = load volatile i32, ptr %176, align 4
  %315 = and i32 %314, 65536
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %313
  %318 = load volatile i32, ptr %179, align 4
  %319 = and i32 %318, 1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = call i32 @munlock_vma_page(ptr noundef %176) #13
  br label %323

323:                                              ; preds = %321, %317, %313, %308
  %324 = load volatile i32, ptr %179, align 4
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %329, label %327, !prof !14

327:                                              ; preds = %323
  %328 = add i32 %324, -1
  br label %331

329:                                              ; preds = %323
  %330 = ptrtoint ptr %176 to i32
  br label %331

331:                                              ; preds = %329, %327
  %332 = phi i32 [ %328, %327 ], [ %330, %329 ]
  %333 = inttoptr i32 %332 to ptr
  %334 = getelementptr inbounds %struct.page, ptr %333, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %334) #13, !srcloc !19
  %335 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %334, ptr %334, i32 1, ptr elementtype(i32) %334) #13, !srcloc !20
  %336 = extractvalue { i32, i32 } %335, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %331
  call void @__put_page(ptr noundef %333) #13
  br label %339

339:                                              ; preds = %338, %331, %214
  %340 = phi i32 [ -11, %214 ], [ 0, %331 ], [ 0, %338 ]
  call void @unlock_page(ptr noundef %176) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  br i1 %190, label %358, label %341

341:                                              ; preds = %339
  %342 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 1
  %343 = load volatile i32, ptr %342, align 4
  %344 = and i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346, !prof !14

346:                                              ; preds = %341
  %347 = add i32 %343, -1
  br label %350

348:                                              ; preds = %341
  %349 = ptrtoint ptr %174 to i32
  br label %350

350:                                              ; preds = %348, %346
  %351 = phi i32 [ %347, %346 ], [ %349, %348 ]
  %352 = inttoptr i32 %351 to ptr
  %353 = getelementptr inbounds %struct.page, ptr %352, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %353) #13, !srcloc !19
  %354 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %353, ptr %353, i32 1, ptr elementtype(i32) %353) #13, !srcloc !20
  %355 = extractvalue { i32, i32 } %354, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %350
  call void @__put_page(ptr noundef %352) #13
  br label %358

358:                                              ; preds = %357, %350, %339, %94, %91, %78, %63, %57, %45
  %359 = phi i32 [ %22, %57 ], [ %67, %91 ], [ %67, %339 ], [ %67, %94 ], [ %67, %78 ], [ 0, %63 ], [ %22, %45 ], [ %67, %350 ], [ %67, %357 ]
  %360 = phi i32 [ -22, %57 ], [ %92, %91 ], [ %340, %339 ], [ -12, %94 ], [ 0, %78 ], [ %64, %63 ], [ 0, %45 ], [ %340, %350 ], [ %340, %357 ]
  %361 = load ptr, ptr %8, align 4
  %362 = getelementptr inbounds %struct.page, ptr %361, i32 0, i32 1
  %363 = load volatile i32, ptr %362, align 4
  %364 = and i32 %363, 1
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %368, label %366, !prof !14

366:                                              ; preds = %358
  %367 = add i32 %363, -1
  br label %370

368:                                              ; preds = %358
  %369 = ptrtoint ptr %361 to i32
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %367, %366 ], [ %369, %368 ]
  %372 = inttoptr i32 %371 to ptr
  %373 = getelementptr inbounds %struct.page, ptr %372, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %373) #13, !srcloc !19
  %374 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %373, ptr %373, i32 1, ptr elementtype(i32) %373) #13, !srcloc !20
  %375 = extractvalue { i32, i32 } %374, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  call void @__put_page(ptr noundef %372) #13
  br label %378

378:                                              ; preds = %377, %370
  %379 = icmp eq i32 %360, -11
  br i1 %379, label %21, label %380, !prof !15

380:                                              ; preds = %378
  %381 = icmp ne i32 %360, 0
  %382 = select i1 %381, i1 %10, i1 false
  %383 = icmp ne i32 %359, 0
  %384 = select i1 %382, i1 %383, i1 false
  br i1 %384, label %385, label %387

385:                                              ; preds = %380
  %386 = call fastcc i32 @update_ref_ctr(ptr noundef %11, ptr noundef %1, i16 noundef signext -1)
  br label %387

387:                                              ; preds = %385, %380, %21
  %388 = phi i32 [ %360, %385 ], [ %360, %380 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %388
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_ref_ctr(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %42, %6
  %12 = phi ptr [ %4, %6 ], [ %44, %42 ]
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %8, %14
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = mul nuw i64 %18, 4294963200
  %20 = add i64 %15, %19
  %21 = trunc i64 %20 to i32
  br i1 %9, label %42, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %10, align 4
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 10
  %35 = icmp ne i32 %34, 2
  %36 = icmp ugt i32 %13, %21
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, %21
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %31, %26, %22, %11
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %63, label %11

46:                                               ; preds = %38
  %47 = trunc i64 %20 to i32
  %48 = tail call fastcc i32 @__update_ref_ctr(ptr noundef %1, i32 noundef %47, i16 noundef signext %2)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = icmp sgt i16 %2, 0
  %52 = select i1 %51, ptr @.str.7, ptr @.str.8
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 7
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %7, align 8
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %52, i32 noundef %55, i64 noundef %57, i64 noundef %58, ptr noundef %1) #14
  br label %60

60:                                               ; preds = %50, %46
  %61 = icmp sgt i16 %2, 0
  br i1 %61, label %124, label %62

62:                                               ; preds = %60
  tail call void @mutex_lock(ptr noundef nonnull @delayed_uprobe_lock) #13
  br label %92

63:                                               ; preds = %42, %3
  tail call void @mutex_lock(ptr noundef nonnull @delayed_uprobe_lock) #13
  %64 = icmp sgt i16 %2, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %63
  %66 = load ptr, ptr @delayed_uprobe_list, align 4
  %67 = icmp eq ptr %66, @delayed_uprobe_list
  br i1 %67, label %82, label %68

68:                                               ; preds = %77, %65
  %69 = phi ptr [ %78, %77 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.delayed_uprobe, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.delayed_uprobe, ptr %69, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %80, label %77

77:                                               ; preds = %73, %68
  %78 = load ptr, ptr %69, align 4
  %79 = icmp eq ptr %78, @delayed_uprobe_list
  br i1 %79, label %82, label %68

80:                                               ; preds = %73
  %81 = icmp eq ptr %69, null
  br i1 %81, label %82, label %122

82:                                               ; preds = %80, %77, %65
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 16) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %122, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.delayed_uprobe, ptr %84, i32 0, i32 1
  store ptr %0, ptr %87, align 8
  %88 = getelementptr inbounds %struct.delayed_uprobe, ptr %84, i32 0, i32 2
  store ptr %1, ptr %88, align 4
  %89 = load ptr, ptr @delayed_uprobe_list, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %84, ptr %90, align 4
  store ptr %89, ptr %84, align 8
  %91 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr @delayed_uprobe_list, ptr %91, align 4
  store volatile ptr %84, ptr @delayed_uprobe_list, align 4
  br label %122

92:                                               ; preds = %63, %62
  %93 = phi i32 [ %48, %62 ], [ 0, %63 ]
  %94 = icmp ne ptr %0, null
  %95 = icmp ne ptr %1, null
  %96 = or i1 %94, %95
  %97 = xor i1 %96, true
  %98 = load ptr, ptr @delayed_uprobe_list, align 4
  %99 = icmp eq ptr %98, @delayed_uprobe_list
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %122, label %101

101:                                              ; preds = %120, %92
  %102 = phi ptr [ %103, %120 ], [ %98, %92 ]
  %103 = load ptr, ptr %102, align 4
  br i1 %94, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.delayed_uprobe, ptr %102, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %0
  br i1 %107, label %108, label %120

108:                                              ; preds = %104, %101
  br i1 %95, label %109, label %113

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.delayed_uprobe, ptr %102, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %1
  br i1 %112, label %113, label %120

113:                                              ; preds = %109, %108
  %114 = icmp eq ptr %102, null
  br i1 %114, label %115, label %116, !prof !15

115:                                              ; preds = %113
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #13
  br label %120

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  store volatile ptr %103, ptr %118, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %102, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %117, align 4
  tail call void @kfree(ptr noundef nonnull %102) #13
  br label %120

120:                                              ; preds = %116, %115, %109, %104
  %121 = icmp eq ptr %103, @delayed_uprobe_list
  br i1 %121, label %122, label %101

122:                                              ; preds = %120, %92, %86, %82, %80
  %123 = phi i32 [ 0, %86 ], [ 0, %80 ], [ -12, %82 ], [ %93, %92 ], [ %93, %120 ]
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #13
  br label %124

124:                                              ; preds = %122, %60
  %125 = phi i32 [ %123, %122 ], [ %48, %60 ]
  ret i32 %125
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !14

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !19
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !20
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @set_swbp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @uprobe_write_opcode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef -403701255)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @set_orig_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = tail call i32 @uprobe_write_opcode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_unregister(ptr noundef readnone %0, i64 noundef %1, ptr noundef %2) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %4 = load ptr, ptr @uprobes_tree, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %23, %3
  %7 = phi ptr [ %25, %23 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.uprobe, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = icmp ult ptr %9, %0
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.uprobe, ptr %7, i32 0, i32 7
  %15 = load i64, ptr %14, align 8
  %16 = icmp sgt i64 %15, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %6
  %18 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %23

19:                                               ; preds = %13
  %20 = icmp slt i64 %15, %1
  br i1 %20, label %21, label %27

21:                                               ; preds = %19, %11
  %22 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %18, %17 ], [ %22, %21 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %6

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.uprobe, ptr %7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #13, !srcloc !19
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #13, !srcloc !32
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !15

32:                                               ; preds = %27
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %38, label %36, !prof !14

36:                                               ; preds = %32, %27
  %37 = phi i32 [ 2, %27 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef %37) #13
  br label %38

38:                                               ; preds = %36, %32, %23, %3
  %39 = phi ptr [ %7, %32 ], [ %7, %36 ], [ null, %3 ], [ null, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %40 = load i16, ptr @uprobes_treelock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @uprobes_treelock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %42 = icmp eq ptr %39, null
  br i1 %42, label %43, label %44, !prof !15

43:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 9, ptr noundef null) #13
  br label %46

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.uprobe, ptr %39, i32 0, i32 2
  tail call void @down_write(ptr noundef %45) #13
  tail call fastcc void @__uprobe_unregister(ptr noundef nonnull %39, ptr noundef %2)
  tail call void @up_write(ptr noundef %45) #13
  tail call fastcc void @put_uprobe(ptr noundef nonnull %39)
  br label %46

46:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__uprobe_unregister(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !33

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, %1
  br i1 %8, label %19, label %9

9:                                                ; preds = %14, %7
  %10 = phi ptr [ %12, %14 ], [ %5, %7 ]
  %11 = getelementptr inbounds %struct.uprobe_consumer, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !33

14:                                               ; preds = %9
  %15 = icmp eq ptr %12, %1
  br i1 %15, label %17, label %9

16:                                               ; preds = %9, %2
  tail call void @up_write(ptr noundef %3) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1094, i32 noundef 9, ptr noundef null) #13
  br label %36

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.uprobe_consumer, ptr %10, i32 0, i32 3
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %4, %7 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.uprobe_consumer, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  store ptr %22, ptr %20, align 4
  tail call void @up_write(ptr noundef %3) #13
  %23 = tail call fastcc i32 @register_for_each_vma(ptr noundef %0, ptr noundef null)
  %24 = load ptr, ptr %4, align 8
  %25 = icmp ne ptr %24, null
  %26 = icmp ne i32 %23, 0
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load i32, ptr %0, align 8
  %30 = ptrtoint ptr %0 to i32
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33, !prof !15

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 942, i32 noundef 9, ptr noundef null) #13
  br label %36

33:                                               ; preds = %28
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  tail call void @rb_erase(ptr noundef %0, ptr noundef nonnull @uprobes_tree) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %34 = load i16, ptr @uprobes_treelock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @uprobes_treelock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  store i32 %30, ptr %0, align 8
  tail call fastcc void @put_uprobe(ptr noundef %0) #13
  br label %36

36:                                               ; preds = %33, %32, %19, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_uprobe(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !19
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !35
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %30, label %8, !prof !14

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #13
  br label %30

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  tail call void @mutex_lock(ptr noundef nonnull @delayed_uprobe_lock) #13
  %10 = icmp eq ptr %0, null
  %11 = load ptr, ptr @delayed_uprobe_list, align 4
  %12 = icmp eq ptr %11, @delayed_uprobe_list
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %27, %9
  %15 = phi ptr [ %16, %27 ], [ %11, %9 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.delayed_uprobe, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = icmp eq ptr %15, null
  br i1 %21, label %22, label %23, !prof !15

22:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #13
  br label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %16, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef nonnull %15) #13
  br label %27

27:                                               ; preds = %23, %22, %14
  %28 = icmp eq ptr %16, @delayed_uprobe_list
  br i1 %28, label %29, label %14

29:                                               ; preds = %27, %9
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #13
  tail call void @kfree(ptr noundef %0) #13
  br label %30

30:                                               ; preds = %29, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_register(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @__uprobe_register(ptr noundef %0, i64 noundef %1, i64 noundef 0, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uprobe_register(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.uprobe_consumer, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %139, label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.address_space_operations, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %15, @shmem_aops
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %139

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %24

24:                                               ; preds = %32, %21
  %25 = load volatile i32, ptr %22, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !38
  %29 = load volatile i32, ptr %22, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %25, %24 ], [ %29, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %34 = load i64, ptr %23, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  %35 = load volatile i32, ptr %22, align 4
  %36 = icmp eq i32 %35, %33
  br i1 %36, label %37, label %24

37:                                               ; preds = %32
  %38 = icmp sge i64 %34, %1
  %39 = and i64 %1, 3
  %40 = and i64 %2, 1
  %41 = or i64 %40, %39
  %42 = icmp eq i64 %41, 0
  %43 = and i1 %42, %38
  br i1 %43, label %44, label %139

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.uprobe_consumer, ptr %3, i32 0, i32 3
  br label %46

46:                                               ; preds = %136, %44
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 168) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %139, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.uprobe, ptr %48, i32 0, i32 6
  store ptr %0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uprobe, ptr %48, i32 0, i32 7
  store i64 %1, ptr %52, align 8
  %53 = getelementptr inbounds %struct.uprobe, ptr %48, i32 0, i32 8
  store i64 %2, ptr %53, align 8
  %54 = getelementptr inbounds %struct.uprobe, ptr %48, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %54, ptr noundef nonnull @.str.9, ptr noundef nonnull @alloc_uprobe.__key) #13
  %55 = getelementptr inbounds %struct.uprobe, ptr %48, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %55, ptr noundef nonnull @.str.11, ptr noundef nonnull @alloc_uprobe.__key.10) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %56 = load ptr, ptr @uprobes_tree, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %51, align 4
  %60 = load i64, ptr %52, align 8
  br label %61

61:                                               ; preds = %78, %58
  %62 = phi ptr [ %56, %58 ], [ %80, %78 ]
  %63 = getelementptr inbounds %struct.uprobe, ptr %62, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = icmp ugt ptr %64, %59
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = icmp ult ptr %64, %59
  br i1 %67, label %76, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.uprobe, ptr %62, i32 0, i32 7
  %70 = load i64, ptr %69, align 8
  %71 = icmp sgt i64 %70, %60
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %61
  %73 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2
  br label %78

74:                                               ; preds = %68
  %75 = icmp slt i64 %70, %60
  br i1 %75, label %76, label %84

76:                                               ; preds = %74, %66
  %77 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 1
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi ptr [ %73, %72 ], [ %77, %76 ]
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %61

82:                                               ; preds = %78
  %83 = ptrtoint ptr %62 to i32
  br label %95

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.uprobe, ptr %62, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #13, !srcloc !19
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #13, !srcloc !32
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89, !prof !15

89:                                               ; preds = %84
  %90 = add i32 %87, 1
  %91 = or i32 %90, %87
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %101, label %93, !prof !14

93:                                               ; preds = %89, %84
  %94 = phi i32 [ 2, %84 ], [ 1, %89 ]
  tail call void @refcount_warn_saturate(ptr noundef %85, i32 noundef %94) #13
  br label %101

95:                                               ; preds = %82, %50
  %96 = phi ptr [ %79, %82 ], [ @uprobes_tree, %50 ]
  %97 = phi i32 [ %83, %82 ], [ 0, %50 ]
  store i32 %97, ptr %48, align 8
  %98 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 1
  store ptr null, ptr %98, align 4
  %99 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 2
  store ptr null, ptr %99, align 8
  store ptr %48, ptr %96, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %48, ptr noundef nonnull @uprobes_tree) #13
  %100 = getelementptr inbounds %struct.uprobe, ptr %48, i32 0, i32 1
  store volatile i32 2, ptr %100, align 4
  br label %101

101:                                              ; preds = %95, %93, %89
  %102 = phi ptr [ null, %95 ], [ %62, %89 ], [ %62, %93 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %103 = load i16, ptr @uprobes_treelock, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr @uprobes_treelock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %105 = icmp eq ptr %102, null
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.uprobe, ptr %102, i32 0, i32 8
  %108 = load i64, ptr %107, align 8
  %109 = load i64, ptr %53, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %51, align 4
  %113 = getelementptr inbounds %struct.inode, ptr %112, i32 0, i32 10
  %114 = load i32, ptr %113, align 4
  %115 = load i64, ptr %52, align 8
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %114, i64 noundef %115, i64 noundef %108, i64 noundef %109) #14
  tail call fastcc void @put_uprobe(ptr noundef nonnull %102) #13
  br label %117

117:                                              ; preds = %111, %106
  %118 = phi ptr [ inttoptr (i32 -22 to ptr), %111 ], [ %102, %106 ]
  tail call void @kfree(ptr noundef nonnull %48) #13
  br label %119

119:                                              ; preds = %117, %101
  %120 = phi ptr [ %48, %101 ], [ %118, %117 ]
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = ptrtoint ptr %120 to i32
  br label %139

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.uprobe, ptr %120, i32 0, i32 2
  tail call void @down_write(ptr noundef %125) #13
  %126 = load i32, ptr %120, align 8
  %127 = ptrtoint ptr %120 to i32
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %136, label %129, !prof !15

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.uprobe, ptr %120, i32 0, i32 3
  tail call void @down_write(ptr noundef %130) #13
  %131 = getelementptr inbounds %struct.uprobe, ptr %120, i32 0, i32 5
  %132 = load ptr, ptr %131, align 8
  store ptr %132, ptr %45, align 4
  store ptr %3, ptr %131, align 8
  tail call void @up_write(ptr noundef %130) #13
  %133 = tail call fastcc i32 @register_for_each_vma(ptr noundef nonnull %120, ptr noundef %3)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  tail call fastcc void @__uprobe_unregister(ptr noundef nonnull %120, ptr noundef %3)
  br label %136

136:                                              ; preds = %135, %129, %124
  %137 = phi i32 [ %133, %135 ], [ 0, %129 ], [ -11, %124 ]
  tail call void @up_write(ptr noundef %125) #13
  tail call fastcc void @put_uprobe(ptr noundef nonnull %120)
  %138 = icmp eq i32 %137, -11
  br i1 %138, label %46, label %139, !prof !15

139:                                              ; preds = %136, %122, %46, %37, %11, %7
  %140 = phi i32 [ %123, %122 ], [ -22, %7 ], [ -22, %37 ], [ -5, %11 ], [ -12, %46 ], [ %137, %136 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_register_refctr(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc i32 @__uprobe_register(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_apply(ptr noundef readnone %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %5 = load ptr, ptr @uprobes_tree, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %24, %4
  %8 = phi ptr [ %26, %24 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.uprobe, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, %0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = icmp ult ptr %10, %0
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.uprobe, ptr %8, i32 0, i32 7
  %16 = load i64, ptr %15, align 8
  %17 = icmp sgt i64 %16, %1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %7
  %19 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %24

20:                                               ; preds = %14
  %21 = icmp slt i64 %16, %1
  br i1 %21, label %22, label %28

22:                                               ; preds = %20, %12
  %23 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %19, %18 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %7

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.uprobe, ptr %8, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #13, !srcloc !19
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #13, !srcloc !32
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !15

33:                                               ; preds = %28
  %34 = add i32 %31, 1
  %35 = or i32 %34, %31
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %39, label %37, !prof !14

37:                                               ; preds = %33, %28
  %38 = phi i32 [ 2, %28 ], [ 1, %33 ]
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef %38) #13
  br label %39

39:                                               ; preds = %37, %33, %24, %4
  %40 = phi ptr [ %8, %33 ], [ %8, %37 ], [ null, %4 ], [ null, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %41 = load i16, ptr @uprobes_treelock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @uprobes_treelock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %43 = icmp eq ptr %40, null
  br i1 %43, label %44, label %45, !prof !15

44:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1224, i32 noundef 9, ptr noundef null) #13
  br label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.uprobe, ptr %40, i32 0, i32 2
  tail call void @down_write(ptr noundef %46) #13
  %47 = getelementptr inbounds %struct.uprobe, ptr %40, i32 0, i32 5
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %47, %45 ], [ %54, %48 ]
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = icmp ne ptr %50, %2
  %53 = and i1 %51, %52
  %54 = getelementptr inbounds %struct.uprobe_consumer, ptr %50, i32 0, i32 3
  br i1 %53, label %48, label %55

55:                                               ; preds = %48
  br i1 %51, label %56, label %59

56:                                               ; preds = %55
  %57 = select i1 %3, ptr %2, ptr null
  %58 = tail call fastcc i32 @register_for_each_vma(ptr noundef nonnull %40, ptr noundef %57)
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ %58, %56 ], [ -2, %55 ]
  tail call void @up_write(ptr noundef %46) #13
  tail call fastcc void @put_uprobe(ptr noundef nonnull %40)
  br label %61

61:                                               ; preds = %59, %44
  %62 = phi i32 [ -2, %44 ], [ %60, %59 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @register_for_each_vma(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  tail call void @percpu_down_write(ptr noundef nonnull @dup_mmap_sem) #13
  %4 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 7
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 12
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 6
  %13 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 5
  %14 = select i1 %3, i32 4194496, i32 4194498
  tail call void @down_read(ptr noundef %12) #13
  %15 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %13, i32 noundef %11, i32 noundef %11) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %22

17:                                               ; preds = %98
  tail call void @down_read(ptr noundef %12) #13
  %18 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %13, i32 noundef %11, i32 noundef %11) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %76

20:                                               ; preds = %17, %2
  %21 = phi ptr [ null, %2 ], [ %96, %17 ]
  tail call void @up_read(ptr noundef %12) #13
  br label %101

22:                                               ; preds = %76, %2
  %23 = phi i32 [ %77, %76 ], [ 0, %2 ]
  %24 = phi ptr [ %78, %76 ], [ null, %2 ]
  %25 = phi ptr [ %79, %76 ], [ null, %2 ]
  %26 = phi ptr [ %80, %76 ], [ %15, %2 ]
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %14
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = icmp ne ptr %24, null
  %37 = icmp ne i32 %23, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 534528, i32 noundef 12) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  store ptr null, ptr %41, align 8
  br label %48

44:                                               ; preds = %35
  %45 = icmp eq ptr %24, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %44, %39
  %47 = add i32 %23, 1
  br label %70

48:                                               ; preds = %44, %43
  %49 = phi ptr [ %41, %43 ], [ %24, %44 ]
  %50 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #13, !srcloc !19
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 0, i32 1, ptr elementtype(i32) %52) #13, !srcloc !42
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !43
  %57 = load ptr, ptr %49, align 4
  store ptr %25, ptr %49, align 4
  %58 = load ptr, ptr %50, align 4
  %59 = getelementptr inbounds %struct.map_info, ptr %49, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = load i32, ptr %26, align 4
  %61 = zext i32 %60 to i64
  %62 = add i64 %9, %61
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = zext i32 %64 to i64
  %66 = mul nuw i64 %65, 4294963200
  %67 = add i64 %62, %66
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.map_info, ptr %49, i32 0, i32 2
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %56, %48, %46, %30, %22
  %71 = phi ptr [ %49, %56 ], [ %25, %46 ], [ %25, %30 ], [ %25, %48 ], [ %25, %22 ]
  %72 = phi ptr [ %57, %56 ], [ null, %46 ], [ %24, %30 ], [ %49, %48 ], [ %24, %22 ]
  %73 = phi i32 [ %23, %56 ], [ %47, %46 ], [ %23, %30 ], [ %23, %48 ], [ %23, %22 ]
  %74 = tail call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %26, i32 noundef %11, i32 noundef %11) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %70, %17
  %77 = phi i32 [ %73, %70 ], [ 0, %17 ]
  %78 = phi ptr [ %72, %70 ], [ %96, %17 ]
  %79 = phi ptr [ %71, %70 ], [ null, %17 ]
  %80 = phi ptr [ %74, %70 ], [ %18, %17 ]
  br label %22

81:                                               ; preds = %70
  tail call void @up_read(ptr noundef %12) #13
  %82 = icmp eq i32 %73, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %81
  %84 = icmp eq ptr %71, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %85, %83
  %86 = phi ptr [ %89, %85 ], [ %71, %83 ]
  %87 = getelementptr inbounds %struct.map_info, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  tail call void @mmput(ptr noundef %88) #13
  %89 = load ptr, ptr %86, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %85

91:                                               ; preds = %85, %83
  br label %92

92:                                               ; preds = %98, %91
  %93 = phi ptr [ %96, %98 ], [ %71, %91 ]
  %94 = phi i32 [ %99, %98 ], [ %73, %91 ]
  %95 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %96 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3264, i32 noundef 12) #15
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  store ptr %93, ptr %96, align 8
  %99 = add i32 %94, -1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %17, label %92

101:                                              ; preds = %92, %81, %20
  %102 = phi ptr [ null, %20 ], [ inttoptr (i32 -12 to ptr), %92 ], [ %71, %81 ]
  %103 = phi ptr [ %21, %20 ], [ %93, %92 ], [ %72, %81 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %105, %101
  %106 = phi ptr [ %107, %105 ], [ %103, %101 ]
  %107 = load ptr, ptr %106, align 4
  tail call void @kfree(ptr noundef nonnull %106) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %105

109:                                              ; preds = %105, %101
  %110 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %118, label %111

111:                                              ; preds = %109
  %112 = icmp eq ptr %102, null
  br i1 %112, label %214, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.uprobe_consumer, ptr %1, i32 0, i32 2
  %115 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 3
  %116 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 5
  %117 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 10
  br label %120

118:                                              ; preds = %109
  %119 = ptrtoint ptr %102 to i32
  br label %214

120:                                              ; preds = %210, %113
  %121 = phi i32 [ 0, %113 ], [ %211, %210 ]
  %122 = phi ptr [ %102, %113 ], [ %212, %210 ]
  %123 = getelementptr inbounds %struct.map_info, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq i32 %121, 0
  %126 = or i1 %3, %125
  br i1 %126, label %127, label %210

127:                                              ; preds = %120
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %124, i1 noundef zeroext true) #13
  br label %131

131:                                              ; preds = %130, %127
  %132 = getelementptr inbounds %struct.anon, ptr %124, i32 0, i32 15
  tail call void @down_write(ptr noundef %132) #13
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %124, i1 noundef zeroext true, i1 noundef zeroext true) #13
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds %struct.map_info, ptr %122, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = tail call ptr @find_vma(ptr noundef %124, i32 noundef %138) #13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %204, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.vm_area_struct, ptr %139, i32 0, i32 14
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %204, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.vm_area_struct, ptr %139, i32 0, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, %14
  %149 = icmp eq i32 %148, 64
  br i1 %149, label %150, label %204

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.file, ptr %143, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = load ptr, ptr %4, align 4
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %204

155:                                              ; preds = %150
  %156 = load i32, ptr %139, align 4
  %157 = load i32, ptr %137, align 4
  %158 = icmp ult i32 %157, %156
  br i1 %158, label %204, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.vm_area_struct, ptr %139, i32 0, i32 13
  %161 = load i32, ptr %160, align 4
  %162 = zext i32 %161 to i64
  %163 = shl nuw nsw i64 %162, 12
  %164 = sub i32 %157, %156
  %165 = zext i32 %164 to i64
  %166 = add nuw nsw i64 %163, %165
  %167 = load i64, ptr %8, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %204

169:                                              ; preds = %159
  br i1 %3, label %180, label %170

170:                                              ; preds = %169
  %171 = load ptr, ptr %114, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = tail call zeroext i1 %171(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %124) #13
  br i1 %174, label %175, label %204

175:                                              ; preds = %173
  %176 = load i32, ptr %137, align 4
  br label %177

177:                                              ; preds = %175, %170
  %178 = phi i32 [ %176, %175 ], [ %157, %170 ]
  %179 = tail call fastcc i32 @install_breakpoint(ptr noundef %0, ptr noundef %124, ptr noundef nonnull %139, i32 noundef %178)
  br label %204

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.anon, ptr %124, i32 0, i32 43
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 524288
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %180
  tail call void @down_read(ptr noundef %115) #13
  %186 = load ptr, ptr %116, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %200, label %192

188:                                              ; preds = %197
  %189 = getelementptr inbounds %struct.uprobe_consumer, ptr %193, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %188, %185
  %193 = phi ptr [ %190, %188 ], [ %186, %185 ]
  %194 = getelementptr inbounds %struct.uprobe_consumer, ptr %193, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = tail call zeroext i1 %195(ptr noundef nonnull %193, i32 noundef 1, ptr noundef %124) #13
  br i1 %198, label %199, label %188

199:                                              ; preds = %197, %192
  tail call void @up_read(ptr noundef %115) #13
  br label %204

200:                                              ; preds = %188, %185
  tail call void @up_read(ptr noundef %115) #13
  %201 = load i32, ptr %137, align 4
  tail call void @_set_bit(i32 noundef 20, ptr noundef %181) #13
  %202 = tail call i32 @set_orig_insn(ptr noundef %117, ptr noundef %124, i32 noundef %201) #13
  %203 = or i32 %202, %121
  br label %204

204:                                              ; preds = %200, %199, %180, %177, %173, %159, %155, %150, %145, %141, %136
  %205 = phi i32 [ %121, %150 ], [ %121, %155 ], [ %121, %159 ], [ %179, %177 ], [ %121, %173 ], [ %203, %200 ], [ %121, %180 ], [ %121, %145 ], [ %121, %136 ], [ %121, %199 ], [ %121, %141 ]
  %206 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  tail call void @__mmap_lock_do_trace_released(ptr noundef %124, i1 noundef zeroext true) #13
  br label %209

209:                                              ; preds = %208, %204
  tail call void @up_write(ptr noundef %132) #13
  br label %210

210:                                              ; preds = %209, %120
  %211 = phi i32 [ %205, %209 ], [ %121, %120 ]
  tail call void @mmput(ptr noundef %124) #13
  %212 = load ptr, ptr %122, align 4
  tail call void @kfree(ptr noundef nonnull %122) #13
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %120

214:                                              ; preds = %210, %118, %111
  %215 = phi i32 [ %119, %118 ], [ 0, %111 ], [ %211, %210 ]
  tail call void @percpu_up_write(ptr noundef nonnull @dup_mmap_sem) #13
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_mmap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = load volatile ptr, ptr @uprobes_tree, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %258, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %258, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 10
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %94

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 43
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 524288
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %94, label %21

21:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef nonnull @delayed_uprobe_lock) #13
  %22 = load ptr, ptr @delayed_uprobe_list, align 4
  %23 = icmp eq ptr %22, @delayed_uprobe_list
  br i1 %23, label %91, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  br label %27

27:                                               ; preds = %89, %24
  %28 = phi ptr [ %22, %24 ], [ %29, %89 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.delayed_uprobe, ptr %28, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %15, align 4
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.delayed_uprobe, ptr %28, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uprobe, ptr %36, i32 0, i32 8
  %38 = load i64, ptr %37, align 8
  %39 = load i32, ptr %0, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = load i32, ptr %25, align 4
  %43 = zext i32 %42 to i64
  %44 = mul nuw i64 %43, 4294963200
  %45 = add i64 %41, %44
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i64 %38, 0
  br i1 %47, label %89, label %48

48:                                               ; preds = %34
  %49 = load ptr, ptr %6, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %89, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.uprobe, ptr %36, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load i32, ptr %10, align 4
  %59 = and i32 %58, 10
  %60 = icmp ne i32 %59, 2
  %61 = icmp ugt i32 %39, %46
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %89, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %26, align 4
  %65 = icmp ugt i32 %64, %46
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = tail call fastcc i32 @__update_ref_ctr(ptr noundef %31, i32 noundef %46, i16 noundef signext 1) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %35, align 4
  %71 = load ptr, ptr %15, align 4
  %72 = getelementptr inbounds %struct.uprobe, ptr %70, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.uprobe, ptr %70, i32 0, i32 7
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.uprobe, ptr %70, i32 0, i32 8
  %79 = load i64, ptr %78, align 8
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %75, i64 noundef %77, i64 noundef %79, ptr noundef %71) #14
  br label %81

81:                                               ; preds = %69, %66
  %82 = icmp eq ptr %28, null
  br i1 %82, label %83, label %84, !prof !15

83:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #13
  br label %89

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %28, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %86, ptr %88, align 4
  store volatile ptr %87, ptr %86, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %85, align 4
  tail call void @kfree(ptr noundef nonnull %28) #13
  br label %89

89:                                               ; preds = %84, %83, %63, %57, %51, %48, %34, %27
  %90 = icmp eq ptr %29, @delayed_uprobe_list
  br i1 %90, label %91, label %27

91:                                               ; preds = %89, %21
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #13
  %92 = load ptr, ptr %6, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %258, label %94

94:                                               ; preds = %91, %14, %9
  %95 = phi ptr [ %92, %91 ], [ %7, %14 ], [ %7, %9 ]
  %96 = load i32, ptr %10, align 4
  %97 = and i32 %96, 4194498
  %98 = icmp eq i32 %97, 64
  br i1 %98, label %99, label %258

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %258, label %103

103:                                              ; preds = %99
  %104 = ptrtoint ptr %101 to i32
  %105 = urem i32 %104, 13
  %106 = getelementptr [13 x %struct.mutex], ptr @uprobes_mmap_mutex, i32 0, i32 %105
  tail call void @mutex_lock(ptr noundef %106) #13
  %107 = load i32, ptr %0, align 4
  %108 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  store volatile ptr %2, ptr %2, align 8
  %110 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %110, align 4
  %111 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %112 = load i32, ptr %111, align 4
  %113 = zext i32 %112 to i64
  %114 = shl nuw nsw i64 %113, 12
  %115 = sub i32 %109, %107
  %116 = zext i32 %115 to i64
  %117 = add nuw nsw i64 %114, %116
  call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %118 = load ptr, ptr @uprobes_tree, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %204, label %120

120:                                              ; preds = %143, %103
  %121 = phi ptr [ %145, %143 ], [ %118, %103 ]
  %122 = getelementptr inbounds %struct.uprobe, ptr %121, i32 0, i32 6
  %123 = load ptr, ptr %122, align 4
  %124 = icmp ugt ptr %123, %101
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rb_node, ptr %121, i32 0, i32 2
  br label %143

127:                                              ; preds = %120
  %128 = icmp ult ptr %123, %101
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.rb_node, ptr %121, i32 0, i32 1
  br label %143

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.uprobe, ptr %121, i32 0, i32 7
  %133 = load i64, ptr %132, align 8
  %134 = icmp slt i64 %133, %117
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.rb_node, ptr %121, i32 0, i32 2
  br label %143

137:                                              ; preds = %131
  %138 = icmp slt i64 %133, %114
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %140 = icmp eq ptr %123, %101
  br i1 %140, label %147, label %174

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.rb_node, ptr %121, i32 0, i32 1
  br label %143

143:                                              ; preds = %141, %135, %129, %125
  %144 = phi ptr [ %126, %125 ], [ %130, %129 ], [ %136, %135 ], [ %142, %141 ]
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %204, label %120

147:                                              ; preds = %170, %139
  %148 = phi ptr [ %164, %170 ], [ %121, %139 ]
  %149 = getelementptr inbounds %struct.uprobe, ptr %148, i32 0, i32 4
  %150 = load ptr, ptr %2, align 8
  %151 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  store ptr %149, ptr %151, align 4
  store ptr %150, ptr %149, align 4
  %152 = getelementptr inbounds %struct.uprobe, ptr %148, i32 0, i32 4, i32 1
  store ptr %2, ptr %152, align 4
  store volatile ptr %149, ptr %2, align 8
  %153 = getelementptr inbounds %struct.uprobe, ptr %148, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #13, !srcloc !19
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #13, !srcloc !32
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157, !prof !15

157:                                              ; preds = %147
  %158 = add i32 %155, 1
  %159 = or i32 %158, %155
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %163, label %161, !prof !14

161:                                              ; preds = %157, %147
  %162 = phi i32 [ 2, %147 ], [ 1, %157 ]
  call void @refcount_warn_saturate(ptr noundef %153, i32 noundef %162) #13
  br label %163

163:                                              ; preds = %161, %157
  %164 = call ptr @rb_prev(ptr noundef nonnull %148) #13
  %165 = icmp eq ptr %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.uprobe, ptr %164, i32 0, i32 6
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, %101
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.uprobe, ptr %164, i32 0, i32 7
  %172 = load i64, ptr %171, align 8
  %173 = icmp slt i64 %172, %114
  br i1 %173, label %174, label %147

174:                                              ; preds = %170, %166, %163, %139
  %175 = call ptr @rb_next(ptr noundef nonnull %121) #13
  %176 = icmp eq ptr %175, null
  br i1 %176, label %204, label %177

177:                                              ; preds = %201, %174
  %178 = phi ptr [ %202, %201 ], [ %175, %174 ]
  %179 = getelementptr inbounds %struct.uprobe, ptr %178, i32 0, i32 6
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, %101
  br i1 %181, label %182, label %204

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.uprobe, ptr %178, i32 0, i32 7
  %184 = load i64, ptr %183, align 8
  %185 = icmp slt i64 %184, %117
  br i1 %185, label %186, label %204

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.uprobe, ptr %178, i32 0, i32 4
  %188 = load ptr, ptr %2, align 8
  %189 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  store ptr %187, ptr %189, align 4
  store ptr %188, ptr %187, align 4
  %190 = getelementptr inbounds %struct.uprobe, ptr %178, i32 0, i32 4, i32 1
  store ptr %2, ptr %190, align 4
  store volatile ptr %187, ptr %2, align 8
  %191 = getelementptr inbounds %struct.uprobe, ptr %178, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %191) #13, !srcloc !19
  %192 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %191, ptr %191, i32 1, ptr elementtype(i32) %191) #13, !srcloc !32
  %193 = extractvalue { i32, i32, i32 } %192, 0
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195, !prof !15

195:                                              ; preds = %186
  %196 = add i32 %193, 1
  %197 = or i32 %196, %193
  %198 = icmp sgt i32 %197, -1
  br i1 %198, label %201, label %199, !prof !14

199:                                              ; preds = %195, %186
  %200 = phi i32 [ 2, %186 ], [ 1, %195 ]
  call void @refcount_warn_saturate(ptr noundef %191, i32 noundef %200) #13
  br label %201

201:                                              ; preds = %199, %195
  %202 = call ptr @rb_next(ptr noundef nonnull %178) #13
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %177

204:                                              ; preds = %201, %182, %177, %174, %143, %103
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %205 = load i16, ptr @uprobes_treelock, align 4
  %206 = add i16 %205, 1
  store i16 %206, ptr @uprobes_treelock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %207 = load ptr, ptr %2, align 8
  %208 = icmp eq ptr %207, %2
  br i1 %208, label %257, label %209

209:                                              ; preds = %204
  %210 = tail call ptr @llvm.thread.pointer() #13
  %211 = getelementptr inbounds %struct.task_struct, ptr %210, i32 0, i32 98, i32 1
  %212 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  br label %213

213:                                              ; preds = %255, %209
  %214 = phi ptr [ %207, %209 ], [ %216, %255 ]
  %215 = getelementptr i8, ptr %214, i32 -64
  %216 = load ptr, ptr %214, align 8
  %217 = load volatile i32, ptr %210, align 4
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %213
  %221 = load i32, ptr %211, align 4
  %222 = and i32 %221, 256
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %255

224:                                              ; preds = %220, %213
  %225 = load ptr, ptr %212, align 4
  %226 = getelementptr i8, ptr %214, i32 -24
  call void @down_read(ptr noundef %226) #13
  %227 = getelementptr i8, ptr %214, i32 8
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %241, label %234

230:                                              ; preds = %239
  %231 = getelementptr inbounds %struct.uprobe_consumer, ptr %235, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %241, label %234

234:                                              ; preds = %230, %224
  %235 = phi ptr [ %232, %230 ], [ %228, %224 ]
  %236 = getelementptr inbounds %struct.uprobe_consumer, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = call zeroext i1 %237(ptr noundef nonnull %235, i32 noundef 2, ptr noundef %225) #13
  br i1 %240, label %242, label %230

241:                                              ; preds = %230, %224
  call void @up_read(ptr noundef %226) #13
  br label %255

242:                                              ; preds = %239, %234
  call void @up_read(ptr noundef %226) #13
  %243 = getelementptr i8, ptr %214, i32 16
  %244 = load i64, ptr %243, align 8
  %245 = load i32, ptr %0, align 4
  %246 = zext i32 %245 to i64
  %247 = add i64 %244, %246
  %248 = load i32, ptr %111, align 4
  %249 = zext i32 %248 to i64
  %250 = mul nuw i64 %249, 4294963200
  %251 = add i64 %247, %250
  %252 = trunc i64 %251 to i32
  %253 = load ptr, ptr %212, align 4
  %254 = call fastcc i32 @install_breakpoint(ptr noundef %215, ptr noundef %253, ptr noundef %0, i32 noundef %252)
  br label %255

255:                                              ; preds = %242, %241, %220
  call fastcc void @put_uprobe(ptr noundef %215)
  %256 = icmp eq ptr %216, %2
  br i1 %256, label %257, label %213

257:                                              ; preds = %255, %204
  call void @mutex_unlock(ptr noundef %106) #13
  br label %258

258:                                              ; preds = %257, %99, %94, %91, %5, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @install_breakpoint(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 9
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %117

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %12) #13
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %116

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 7
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 10
  %24 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 9
  %25 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 3
  br label %26

26:                                               ; preds = %100, %16
  %27 = phi ptr [ %18, %16 ], [ %104, %100 ]
  %28 = phi i32 [ 4, %16 ], [ %98, %100 ]
  %29 = phi i32 [ -5, %16 ], [ 0, %100 ]
  %30 = phi ptr [ %23, %16 ], [ %103, %100 ]
  %31 = phi i64 [ %22, %16 ], [ %102, %100 ]
  %32 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 22
  %33 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 13
  br label %34

34:                                               ; preds = %42, %26
  %35 = load volatile i32, ptr %32, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %38, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !38
  %39 = load volatile i32, ptr %32, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %35, %34 ], [ %39, %38 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %44 = load i64, ptr %33, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  %45 = load volatile i32, ptr %32, align 4
  %46 = icmp eq i32 %45, %43
  br i1 %46, label %47, label %34

47:                                               ; preds = %42
  %48 = icmp slt i64 %31, %44
  br i1 %48, label %49, label %105

49:                                               ; preds = %47
  %50 = trunc i64 %31 to i32
  %51 = and i32 %50, 4095
  %52 = sub nuw nsw i32 4096, %51
  %53 = tail call i32 @llvm.smin.i32(i32 %28, i32 %52) #13
  %54 = load ptr, ptr %24, align 4
  %55 = getelementptr inbounds %struct.address_space_operations, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = lshr i64 %31, 12
  %59 = trunc i64 %58 to i32
  br i1 %57, label %62, label %60

60:                                               ; preds = %49
  %61 = tail call ptr @read_cache_page(ptr noundef %20, i32 noundef %59, ptr noundef null, ptr noundef %6) #13
  br label %65

62:                                               ; preds = %49
  %63 = load i32, ptr %25, align 4
  %64 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %20, i32 noundef %59, i32 noundef %63) #13
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi ptr [ %61, %60 ], [ %64, %62 ]
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %95, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr @pgprot_kernel, align 4
  %70 = or i32 %69, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %71 = tail call ptr @llvm.thread.pointer() #13
  %72 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 149
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %75 = tail call ptr @__kmap_local_page_prot(ptr noundef %66, i32 noundef %70) #13
  %76 = getelementptr i8, ptr %75, i32 %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %76, i32 %53, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %75) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %77 = load i32, ptr %72, align 8
  %78 = add i32 %77, -1
  store i32 %78, ptr %72, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %79 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !14

83:                                               ; preds = %68
  %84 = add i32 %80, -1
  br label %87

85:                                               ; preds = %68
  %86 = ptrtoint ptr %66 to i32
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #13, !srcloc !19
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #13, !srcloc !20
  %92 = extractvalue { i32, i32 } %91, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  tail call void @__put_page(ptr noundef %89) #13
  br label %97

95:                                               ; preds = %65
  %96 = ptrtoint ptr %66 to i32
  br label %105

97:                                               ; preds = %94, %87
  %98 = sub i32 %28, %53
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = sext i32 %53 to i64
  %102 = add i64 %31, %101
  %103 = getelementptr i8, ptr %30, i32 %53
  %104 = load ptr, ptr %17, align 4
  br label %26

105:                                              ; preds = %95, %47
  %106 = phi i32 [ %96, %95 ], [ %29, %47 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105, %97
  %109 = tail call zeroext i1 @is_trap_insn(ptr noundef %23) #13
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = tail call i32 @arch_uprobe_analyze_insn(ptr noundef %23, ptr noundef %1, i32 noundef %3) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !44
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #13
  br label %116

114:                                              ; preds = %110, %108, %105
  %115 = phi i32 [ %111, %110 ], [ -524, %108 ], [ %106, %105 ]
  tail call void @up_write(ptr noundef %12) #13
  br label %132

116:                                              ; preds = %113, %11
  tail call void @up_write(ptr noundef %12) #13
  br label %117

117:                                              ; preds = %116, %4
  %118 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 43
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 524288
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  tail call void @_set_bit(i32 noundef 19, ptr noundef %118) #13
  %123 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 10
  %124 = tail call i32 @set_swbp(ptr noundef %123, ptr noundef %1, i32 noundef %3)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %131

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.uprobe, ptr %0, i32 0, i32 10
  %128 = tail call i32 @set_swbp(ptr noundef %127, ptr noundef %1, i32 noundef %3)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %122
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %118) #13
  br label %132

131:                                              ; preds = %122
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %118) #13
  br label %132

132:                                              ; preds = %131, %130, %126, %114
  %133 = phi i32 [ %124, %131 ], [ 0, %130 ], [ %115, %114 ], [ %128, %126 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_munmap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load volatile ptr, ptr @uprobes_tree, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4194496
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %79

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 10
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 43
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %79, label %26

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 12
  %37 = load i32, ptr %0, align 4
  %38 = sub i32 %1, %37
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %36, %39
  %41 = sub i32 %2, %1
  %42 = zext i32 %41 to i64
  %43 = add nuw nsw i64 %40, %42
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %44 = load ptr, ptr @uprobes_tree, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %67, %30
  %47 = phi ptr [ %69, %67 ], [ %44, %30 ]
  %48 = getelementptr inbounds %struct.uprobe, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ugt ptr %49, %32
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 2
  br label %67

53:                                               ; preds = %46
  %54 = icmp ult ptr %49, %32
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 1
  br label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.uprobe, ptr %47, i32 0, i32 7
  %59 = load i64, ptr %58, align 8
  %60 = icmp slt i64 %59, %43
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 2
  br label %67

63:                                               ; preds = %57
  %64 = icmp slt i64 %59, %40
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 1
  br label %67

67:                                               ; preds = %65, %61, %55, %51
  %68 = phi ptr [ %52, %51 ], [ %56, %55 ], [ %62, %61 ], [ %66, %65 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %46

71:                                               ; preds = %67, %63, %30
  %72 = phi ptr [ null, %30 ], [ %47, %63 ], [ null, %67 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %73 = load i16, ptr @uprobes_treelock, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr @uprobes_treelock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %75 = icmp eq ptr %72, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %16, align 4
  %78 = getelementptr inbounds %struct.anon, ptr %77, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 20, ptr noundef %78) #13
  br label %79

79:                                               ; preds = %76, %71, %26, %21, %15, %10, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_clear_state(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 49
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @delayed_uprobe_lock) #13
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @delayed_uprobe_list, align 4
  %6 = icmp eq ptr %5, @delayed_uprobe_list
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %21, %1
  %9 = phi ptr [ %10, %21 ], [ %5, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.delayed_uprobe, ptr %9, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #13
  br label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %10, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @kfree(ptr noundef nonnull %9) #13
  br label %21

21:                                               ; preds = %17, %16, %8
  %22 = icmp eq ptr %10, @delayed_uprobe_list
  br i1 %22, label %23, label %8

23:                                               ; preds = %21, %1
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #13
  %24 = icmp eq ptr %3, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.xol_area, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !14

32:                                               ; preds = %25
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %25
  %35 = ptrtoint ptr %27 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !19
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #13, !srcloc !20
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  tail call void @__put_page(ptr noundef %38) #13
  br label %44

44:                                               ; preds = %43, %36
  %45 = getelementptr inbounds %struct.xol_area, ptr %3, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %46) #13
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %47

47:                                               ; preds = %44, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_start_dup_mmap() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  %1 = load volatile i32, ptr @dup_mmap_sem, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !14

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !46
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #11, !srcloc !47
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !48
  br label %16

14:                                               ; preds = %0
  %15 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @dup_mmap_sem, i1 noundef zeroext false) #13
  br label %16

16:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_end_dup_mmap() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !50
  %1 = load volatile i32, ptr @dup_mmap_sem, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !14

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !46
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #11, !srcloc !47
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !48
  br label %26

14:                                               ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !51
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !46
  %16 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #11, !srcloc !47
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #13, !srcloc !48
  %25 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 2)) #13
  br label %26

26:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_dup_mmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 43
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 524288
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 19, ptr noundef %8) #13
  tail call void @_set_bit(i32 noundef 20, ptr noundef %8) #13
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_uprobe_copy_ixol(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @pgprot_kernel, align 4
  %6 = or i32 %5, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %7 = tail call ptr @llvm.thread.pointer() #13
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 149
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %11 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %6) #13
  %12 = and i32 %1, 4095
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %2, i32 %3, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %11) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %14 = load i32, ptr %8, align 8
  %15 = add i32 %14, -1
  store i32 %15, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void @flush_dcache_page(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @uprobe_get_swbp_addr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -4
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @uprobe_get_trap_addr(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 147
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uprobe_task, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.uprobe_task, ptr %4, i32 0, i32 1, i32 0, i32 1
  br label %14

12:                                               ; preds = %6, %1
  %13 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, ptr %15, align 4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_free_utask(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 147
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uprobe_task, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @put_uprobe(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.uprobe_task, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.return_instance, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  tail call fastcc void @put_uprobe(ptr noundef %18) #13
  tail call void @kfree(ptr noundef nonnull %15) #13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %10
  tail call fastcc void @xol_free_insn_slot(ptr noundef %0)
  tail call void @kfree(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 16
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xol_free_insn_slot(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 49
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 147
  %11 = load ptr, ptr %10, align 16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uprobe_task, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %17, !prof !15

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp uge i32 %15, %19
  %21 = add i32 %19, 4096
  %22 = icmp ult i32 %15, %21
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = sub i32 %15, %19
  %26 = icmp ugt i32 %25, 4095
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = lshr i32 %25, 6
  %29 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @_clear_bit(i32 noundef %28, ptr noundef %30) #13
  %31 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #13, !srcloc !19
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #13, !srcloc !53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !54
  %33 = getelementptr inbounds %struct.wait_queue_head, ptr %7, i32 0, i32 1
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  tail call void @__wake_up(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %37

37:                                               ; preds = %36, %27
  %38 = load ptr, ptr %10, align 16
  %39 = getelementptr inbounds %struct.uprobe_task, ptr %38, i32 0, i32 3
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %24, %17, %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_copy_process(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 147
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 147
  store ptr null, ptr %8, align 16
  %9 = icmp eq ptr %5, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %7, %16
  %18 = and i32 %1, 16384
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %19, %17
  br i1 %20, label %83, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 32) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25

25:                                               ; preds = %21
  store ptr %23, ptr %8, align 16
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %61, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.uprobe_task, ptr %23, i32 0, i32 4
  %30 = getelementptr inbounds %struct.uprobe_task, ptr %23, i32 0, i32 5
  br label %31

31:                                               ; preds = %49, %28
  %32 = phi ptr [ %26, %28 ], [ %54, %49 ]
  %33 = phi ptr [ %29, %28 ], [ %50, %49 ]
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 24) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 4 dereferenceable(24) %32, i32 24, i1 false) #13
  %38 = load ptr, ptr %35, align 8
  %39 = getelementptr inbounds %struct.uprobe, ptr %38, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !19
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #13, !srcloc !32
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !15

43:                                               ; preds = %37
  %44 = add i32 %41, 1
  %45 = or i32 %44, %41
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %49, label %47, !prof !14

47:                                               ; preds = %43, %37
  %48 = phi i32 [ 2, %37 ], [ 1, %43 ]
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef %48) #13
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.return_instance, ptr %35, i32 0, i32 5
  store ptr null, ptr %50, align 4
  store ptr %35, ptr %33, align 4
  %51 = load i32, ptr %30, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %30, align 4
  %53 = getelementptr inbounds %struct.return_instance, ptr %32, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %31

56:                                               ; preds = %31, %21
  %57 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %58 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %59 = load i32, ptr %58, align 8
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %57, i32 noundef %59, ptr noundef nonnull @.str.2) #14
  br label %83

61:                                               ; preds = %49, %25
  %62 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 49
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %67 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %66, i32 noundef %68, ptr noundef nonnull @.str.3) #14
  br label %83

70:                                               ; preds = %61
  %71 = load ptr, ptr %15, align 4
  %72 = icmp eq ptr %7, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.xol_area, ptr %63, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %8, align 16
  %77 = getelementptr inbounds %struct.uprobe_task, ptr %76, i32 0, i32 1, i32 0, i32 1
  store i32 %75, ptr %77, align 4
  %78 = load ptr, ptr %8, align 16
  %79 = getelementptr inbounds %struct.uprobe_task, ptr %78, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr @dup_xol_work, ptr %79, align 4
  %80 = load ptr, ptr %8, align 16
  %81 = getelementptr inbounds %struct.uprobe_task, ptr %80, i32 0, i32 1
  %82 = tail call i32 @task_work_add(ptr noundef %0, ptr noundef %81, i32 noundef 1) #13
  br label %83

83:                                               ; preds = %73, %70, %65, %56, %14, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dup_xol_work(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 147
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.uprobe_task, ptr %9, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call fastcc ptr @__create_xol_area(i32 noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = load volatile i32, ptr %2, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  %25 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %24, i32 noundef %26, ptr noundef nonnull @.str.3) #14
  br label %28

28:                                               ; preds = %23, %18, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @uprobe_deny_signal() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #13
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 147
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.uprobe_task, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9, !prof !14

9:                                                ; preds = %5
  %10 = load i32, ptr %3, align 4
  %11 = icmp ne i32 %10, 1
  %12 = load i1, ptr @uprobe_deny_signal.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %9
  store i1 true, ptr @uprobe_deny_signal.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1974, i32 noundef 9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %9
  %17 = load volatile i32, ptr %1, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %22 = load ptr, ptr %21, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %1) #13
  %23 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !55
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !56
  %26 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 98, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = tail call zeroext i1 @arch_uprobe_xol_was_trapped(ptr noundef %1) #13
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %20
  store i32 3, ptr %3, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %1) #13
  br label %33

33:                                               ; preds = %32, %30, %16, %5, %0
  %34 = phi i1 [ true, %16 ], [ true, %32 ], [ true, %30 ], [ false, %5 ], [ false, %0 ]
  ret i1 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @arch_uprobe_xol_was_trapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_uprobe_ignore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_uretprobe_is_alive(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uprobe_notify_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @llvm.thread.pointer() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 147
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uprobe_task, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %7, align 4
  switch i32 %14, label %21 [
    i32 2, label %15
    i32 3, label %19
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.uprobe, ptr %11, i32 0, i32 10
  %17 = tail call i32 @arch_uprobe_post_xol(ptr noundef %16, ptr noundef %0) #13
  %18 = icmp eq i32 %17, 0
  br label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.uprobe, ptr %11, i32 0, i32 10
  tail call void @arch_uprobe_abort_xol(ptr noundef %20, ptr noundef %0) #13
  br label %24

21:                                               ; preds = %13
  %22 = load i1, ptr @handle_singlestep.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !14

23:                                               ; preds = %21
  store i1 true, ptr @handle_singlestep.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2272, i32 noundef 9, ptr noundef null) #13
  br label %24

24:                                               ; preds = %23, %21, %19, %15
  %25 = phi i1 [ %18, %15 ], [ true, %19 ], [ true, %23 ], [ true, %21 ]
  tail call fastcc void @put_uprobe(ptr noundef nonnull %11) #13
  store ptr null, ptr %10, align 4
  store i32 0, ptr %7, align 4
  tail call fastcc void @xol_free_insn_slot(ptr noundef %5) #13
  %26 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %27 = load ptr, ptr %26, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %27) #13
  tail call void @recalc_sigpending() #13
  %28 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !55
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !56
  br i1 %25, label %609, label %31, !prof !14

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %33 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %32, i32 noundef %34, ptr noundef nonnull @.str.16) #14
  tail call void @force_sig(i32 noundef 4) #13
  br label %609

36:                                               ; preds = %9, %1
  %37 = tail call i32 @uprobe_get_swbp_addr(ptr noundef %0) #13
  %38 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 49
  %41 = load volatile ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.xol_area, ptr %41, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i32 [ %45, %43 ], [ -1, %36 ]
  %48 = icmp eq i32 %37, %47
  br i1 %48, label %49, label %113

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %108, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.uprobe_task, ptr %50, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %108, label %56

56:                                               ; preds = %52
  %57 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %58 = getelementptr inbounds %struct.uprobe_task, ptr %50, i32 0, i32 5
  br label %59

59:                                               ; preds = %106, %56
  %60 = phi ptr [ %67, %106 ], [ %54, %56 ]
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi ptr [ %60, %59 ], [ %67, %61 ]
  %63 = getelementptr inbounds %struct.return_instance, ptr %62, i32 0, i32 4
  %64 = load i8, ptr %63, align 4, !range !57
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds %struct.return_instance, ptr %62, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  br i1 %65, label %68, label %61

68:                                               ; preds = %61
  %69 = icmp eq ptr %67, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = tail call zeroext i1 @arch_uretprobe_is_alive(ptr noundef nonnull %67, i32 noundef 2, ptr noundef %0) #13
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i1 [ true, %68 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.return_instance, ptr %60, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %57, align 4
  br label %76

76:                                               ; preds = %99, %72
  %77 = phi ptr [ %60, %72 ], [ %101, %99 ]
  br i1 %73, label %78, label %99

78:                                               ; preds = %76
  %79 = load ptr, ptr %77, align 4
  %80 = getelementptr inbounds %struct.uprobe, ptr %79, i32 0, i32 2
  tail call void @down_read(ptr noundef %80) #13
  %81 = getelementptr inbounds %struct.uprobe, ptr %79, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.return_instance, ptr %77, i32 0, i32 1
  br label %86

86:                                               ; preds = %94, %84
  %87 = phi ptr [ %82, %84 ], [ %96, %94 ]
  %88 = getelementptr inbounds %struct.uprobe_consumer, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %85, align 4
  %93 = tail call i32 %89(ptr noundef nonnull %87, i32 noundef %92, ptr noundef %0) #13
  br label %94

94:                                               ; preds = %91, %86
  %95 = getelementptr inbounds %struct.uprobe_consumer, ptr %87, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %86

98:                                               ; preds = %94, %78
  tail call void @up_read(ptr noundef %80) #13
  br label %99

99:                                               ; preds = %98, %76
  %100 = getelementptr inbounds %struct.return_instance, ptr %77, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %77, align 4
  tail call fastcc void @put_uprobe(ptr noundef %102) #13
  tail call void @kfree(ptr noundef %77) #13
  %103 = load i32, ptr %58, align 4
  %104 = add i32 %103, -1
  store i32 %104, ptr %58, align 4
  %105 = icmp eq ptr %101, %67
  br i1 %105, label %106, label %76

106:                                              ; preds = %99
  br i1 %73, label %107, label %59

107:                                              ; preds = %106
  store ptr %67, ptr %53, align 4
  br label %609

108:                                              ; preds = %52, %49
  %109 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %110 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %111 = load i32, ptr %110, align 8
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %109, i32 noundef %111, ptr noundef nonnull @.str.17) #14
  tail call void @force_sig(i32 noundef 4) #13
  br label %609

113:                                              ; preds = %46
  %114 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %39, i1 noundef zeroext false) #13
  br label %117

117:                                              ; preds = %116, %113
  %118 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 15
  tail call void @down_read(ptr noundef %118) #13
  %119 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %39, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %122

122:                                              ; preds = %121, %117
  %123 = tail call ptr @find_vma(ptr noundef %39, i32 noundef %37) #13
  %124 = icmp eq ptr %123, null
  br i1 %124, label %246, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %123, align 4
  %127 = icmp ult i32 %37, %126
  br i1 %127, label %246, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.vm_area_struct, ptr %123, i32 0, i32 14
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %186, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.vm_area_struct, ptr %123, i32 0, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 4194496
  %136 = icmp eq i32 %135, 64
  br i1 %136, label %137, label %186

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.file, ptr %130, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, ptr %123, i32 0, i32 13
  %141 = load i32, ptr %140, align 4
  %142 = zext i32 %141 to i64
  %143 = shl nuw nsw i64 %142, 12
  %144 = sub i32 %37, %126
  %145 = zext i32 %144 to i64
  %146 = add nuw nsw i64 %143, %145
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %147 = load ptr, ptr @uprobes_tree, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %181, label %149

149:                                              ; preds = %166, %137
  %150 = phi ptr [ %168, %166 ], [ %147, %137 ]
  %151 = getelementptr inbounds %struct.uprobe, ptr %150, i32 0, i32 6
  %152 = load ptr, ptr %151, align 4
  %153 = icmp ugt ptr %152, %139
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = icmp ult ptr %152, %139
  br i1 %155, label %164, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.uprobe, ptr %150, i32 0, i32 7
  %158 = load i64, ptr %157, align 8
  %159 = icmp sgt i64 %158, %146
  br i1 %159, label %160, label %162

160:                                              ; preds = %156, %149
  %161 = getelementptr inbounds %struct.rb_node, ptr %150, i32 0, i32 2
  br label %166

162:                                              ; preds = %156
  %163 = icmp slt i64 %158, %146
  br i1 %163, label %164, label %170

164:                                              ; preds = %162, %154
  %165 = getelementptr inbounds %struct.rb_node, ptr %150, i32 0, i32 1
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi ptr [ %161, %160 ], [ %165, %164 ]
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %181, label %149

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.uprobe, ptr %150, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #13, !srcloc !19
  %172 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #13, !srcloc !32
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175, !prof !15

175:                                              ; preds = %170
  %176 = add i32 %173, 1
  %177 = or i32 %176, %173
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %181, label %179, !prof !14

179:                                              ; preds = %175, %170
  %180 = phi i32 [ 2, %170 ], [ 1, %175 ]
  tail call void @refcount_warn_saturate(ptr noundef %171, i32 noundef %180) #13
  br label %181

181:                                              ; preds = %179, %175, %166, %137
  %182 = phi ptr [ %150, %175 ], [ %150, %179 ], [ null, %137 ], [ null, %166 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %183 = load i16, ptr @uprobes_treelock, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr @uprobes_treelock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %185 = icmp eq ptr %182, null
  br i1 %185, label %186, label %314

186:                                              ; preds = %181, %132, %128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %187 = and i32 %37, 3
  %188 = icmp ne i32 %187, 0
  %189 = load i1, ptr @is_trap_at_addr.__already_done, align 1
  %190 = xor i1 %189, true
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %193, !prof !15

192:                                              ; preds = %186
  store i1 true, ptr @is_trap_at_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2016, i32 noundef 9, ptr noundef null) #13
  br label %193

193:                                              ; preds = %192, %186
  br i1 %188, label %244, label %194

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 149
  %196 = load i32, ptr %195, align 8
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %198 = inttoptr i32 %37 to ptr
  %199 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %200 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %199) #11, !srcloc !58
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #13, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !60
  %203 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %198, i32 -1090519041) #13, !srcloc !61
  %204 = extractvalue { i32, i32 } %203, 0
  %205 = extractvalue { i32, i32 } %203, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #13, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !60
  store i32 %205, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %206 = load i32, ptr %195, align 8
  %207 = add i32 %206, -1
  store i32 %207, ptr %195, align 8
  %208 = icmp eq i32 %204, 0
  br i1 %208, label %241, label %209, !prof !14

209:                                              ; preds = %194
  %210 = call i32 @get_user_pages_remote(ptr noundef %39, i32 noundef %37, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #13
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %244, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %3, align 4
  %214 = load i32, ptr @pgprot_kernel, align 4
  %215 = or i32 %214, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %216 = load i32, ptr %195, align 8
  %217 = add i32 %216, 1
  store i32 %217, ptr %195, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %218 = call ptr @__kmap_local_page_prot(ptr noundef %213, i32 noundef %215) #13
  %219 = and i32 %37, 4095
  %220 = getelementptr i8, ptr %218, i32 %219
  %221 = load i32, ptr %220, align 1
  store i32 %221, ptr %4, align 4
  call void @kunmap_local_indexed(ptr noundef %218) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %222 = load i32, ptr %195, align 8
  %223 = add i32 %222, -1
  store i32 %223, ptr %195, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %224 = load ptr, ptr %3, align 4
  %225 = getelementptr inbounds %struct.page, ptr %224, i32 0, i32 1
  %226 = load volatile i32, ptr %225, align 4
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229, !prof !14

229:                                              ; preds = %212
  %230 = add i32 %226, -1
  br label %233

231:                                              ; preds = %212
  %232 = ptrtoint ptr %224 to i32
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %235 = inttoptr i32 %234 to ptr
  %236 = getelementptr inbounds %struct.page, ptr %235, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %236) #13, !srcloc !19
  %237 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %236, ptr %236, i32 1, ptr elementtype(i32) %236) #13, !srcloc !20
  %238 = extractvalue { i32, i32 } %237, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  call void @__put_page(ptr noundef %235) #13
  br label %241

241:                                              ; preds = %240, %233, %194
  %242 = call zeroext i1 @is_trap_insn(ptr noundef nonnull %4) #13
  %243 = zext i1 %242 to i32
  br label %244

244:                                              ; preds = %241, %209, %193
  %245 = phi i32 [ %243, %241 ], [ -22, %193 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %246

246:                                              ; preds = %244, %125, %122
  %247 = phi i32 [ %245, %244 ], [ -14, %125 ], [ -14, %122 ]
  %248 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 43
  %249 = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %248) #13
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %314, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %39, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %313, label %254

254:                                              ; preds = %309, %251
  %255 = phi ptr [ %311, %309 ], [ %252, %251 ]
  %256 = getelementptr inbounds %struct.vm_area_struct, ptr %255, i32 0, i32 14
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %309, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.vm_area_struct, ptr %255, i32 0, i32 8
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, 4194496
  %263 = icmp eq i32 %262, 64
  br i1 %263, label %264, label %309

264:                                              ; preds = %259
  %265 = load i32, ptr %255, align 4
  %266 = getelementptr inbounds %struct.vm_area_struct, ptr %255, i32 0, i32 1
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.file, ptr %257, i32 0, i32 2
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr inbounds %struct.vm_area_struct, ptr %255, i32 0, i32 13
  %271 = load i32, ptr %270, align 4
  %272 = zext i32 %271 to i64
  %273 = shl nuw nsw i64 %272, 12
  %274 = sub i32 %267, %265
  %275 = zext i32 %274 to i64
  %276 = add nuw nsw i64 %273, %275
  call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #13
  %277 = load ptr, ptr @uprobes_tree, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %304, label %279

279:                                              ; preds = %300, %264
  %280 = phi ptr [ %302, %300 ], [ %277, %264 ]
  %281 = getelementptr inbounds %struct.uprobe, ptr %280, i32 0, i32 6
  %282 = load ptr, ptr %281, align 4
  %283 = icmp ugt ptr %282, %269
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.rb_node, ptr %280, i32 0, i32 2
  br label %300

286:                                              ; preds = %279
  %287 = icmp ult ptr %282, %269
  br i1 %287, label %288, label %290

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.rb_node, ptr %280, i32 0, i32 1
  br label %300

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.uprobe, ptr %280, i32 0, i32 7
  %292 = load i64, ptr %291, align 8
  %293 = icmp slt i64 %292, %276
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.rb_node, ptr %280, i32 0, i32 2
  br label %300

296:                                              ; preds = %290
  %297 = icmp slt i64 %292, %273
  br i1 %297, label %298, label %304

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.rb_node, ptr %280, i32 0, i32 1
  br label %300

300:                                              ; preds = %298, %294, %288, %284
  %301 = phi ptr [ %285, %284 ], [ %289, %288 ], [ %295, %294 ], [ %299, %298 ]
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %279

304:                                              ; preds = %300, %296, %264
  %305 = phi ptr [ null, %264 ], [ null, %300 ], [ %280, %296 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %306 = load i16, ptr @uprobes_treelock, align 4
  %307 = add i16 %306, 1
  store i16 %307, ptr @uprobes_treelock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !29
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %308 = icmp eq ptr %305, null
  br i1 %308, label %309, label %314

309:                                              ; preds = %304, %259, %254
  %310 = getelementptr inbounds %struct.vm_area_struct, ptr %255, i32 0, i32 2
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %254

313:                                              ; preds = %309, %251
  call void @_clear_bit(i32 noundef 19, ptr noundef %248) #13
  br label %314

314:                                              ; preds = %313, %304, %246, %181
  %315 = phi i32 [ %247, %246 ], [ %247, %313 ], [ 0, %181 ], [ %247, %304 ]
  %316 = phi ptr [ null, %246 ], [ null, %313 ], [ %182, %181 ], [ null, %304 ]
  %317 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  call void @__mmap_lock_do_trace_released(ptr noundef %39, i1 noundef zeroext false) #13
  br label %320

320:                                              ; preds = %319, %314
  call void @up_read(ptr noundef %118) #13
  %321 = icmp eq ptr %316, null
  br i1 %321, label %322, label %327

322:                                              ; preds = %320
  %323 = icmp sgt i32 %315, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %322
  call void @force_sig(i32 noundef 5) #13
  br label %609

325:                                              ; preds = %322
  %326 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  store i32 %37, ptr %326, align 4
  br label %609

327:                                              ; preds = %320
  %328 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  store i32 %37, ptr %328, align 4
  %329 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 9
  %330 = load volatile i32, ptr %329, align 4
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %608, label %333, !prof !15

333:                                              ; preds = %327
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %334 = load ptr, ptr %6, align 16
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %338 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %337, i32 noundef 3520, i32 noundef 32) #15
  store ptr %338, ptr %6, align 16
  %339 = icmp eq ptr %338, null
  br i1 %339, label %608, label %340

340:                                              ; preds = %336, %333
  %341 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 10
  %342 = call zeroext i1 @arch_uprobe_ignore(ptr noundef %341, ptr noundef %0) #13
  br i1 %342, label %608, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 2
  call void @down_read(ptr noundef %344) #13
  %345 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 5
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %546, label %348

348:                                              ; preds = %359, %343
  %349 = phi ptr [ %367, %359 ], [ %346, %343 ]
  %350 = phi i32 [ %365, %359 ], [ 1, %343 ]
  %351 = phi i1 [ %364, %359 ], [ false, %343 ]
  %352 = load ptr, ptr %349, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %348
  %355 = call i32 %352(ptr noundef nonnull %349, ptr noundef %0) #13
  %356 = icmp ult i32 %355, 2
  br i1 %356, label %359, label %357, !prof !14

357:                                              ; preds = %354
  %358 = load ptr, ptr %349, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2086, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %355, ptr noundef %358) #13
  br label %359

359:                                              ; preds = %357, %354, %348
  %360 = phi i32 [ 0, %348 ], [ %355, %357 ], [ %355, %354 ]
  %361 = getelementptr inbounds %struct.uprobe_consumer, ptr %349, i32 0, i32 1
  %362 = load ptr, ptr %361, align 4
  %363 = icmp ne ptr %362, null
  %364 = select i1 %363, i1 true, i1 %351
  %365 = and i32 %360, %350
  %366 = getelementptr inbounds %struct.uprobe_consumer, ptr %349, i32 0, i32 3
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %348

369:                                              ; preds = %359
  %370 = xor i1 %364, true
  %371 = icmp ne i32 %365, 0
  %372 = select i1 %370, i1 true, i1 %371
  br i1 %372, label %474, label %373

373:                                              ; preds = %369
  %374 = load ptr, ptr %38, align 4
  %375 = getelementptr inbounds %struct.anon, ptr %374, i32 0, i32 49
  %376 = load ptr, ptr %375, align 8
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = call fastcc ptr @__create_xol_area(i32 noundef 0) #13
  br label %380

380:                                              ; preds = %378, %373
  %381 = load volatile ptr, ptr %375, align 8
  %382 = icmp eq ptr %381, null
  br i1 %382, label %474, label %383

383:                                              ; preds = %380
  %384 = load ptr, ptr %6, align 16
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %388 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %387, i32 noundef 3520, i32 noundef 32) #15
  store ptr %388, ptr %6, align 16
  %389 = icmp eq ptr %388, null
  br i1 %389, label %474, label %390

390:                                              ; preds = %386, %383
  %391 = phi ptr [ %388, %386 ], [ %384, %383 ]
  %392 = getelementptr inbounds %struct.uprobe_task, ptr %391, i32 0, i32 5
  %393 = load i32, ptr %392, align 4
  %394 = icmp ugt i32 %393, 63
  br i1 %394, label %395, label %404

395:                                              ; preds = %390
  %396 = call i32 @___ratelimit(ptr noundef nonnull @prepare_uretprobe._rs, ptr noundef nonnull @__func__.prepare_uretprobe) #13
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %474, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %400 = load i32, ptr %399, align 8
  %401 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %402 = load i32, ptr %401, align 4
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %400, i32 noundef %402) #14
  br label %546

404:                                              ; preds = %390
  %405 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %406 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %405, i32 noundef 3264, i32 noundef 24) #15
  %407 = icmp eq ptr %406, null
  br i1 %407, label %474, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr %38, align 4
  %410 = getelementptr inbounds %struct.anon, ptr %409, i32 0, i32 49
  %411 = load volatile ptr, ptr %410, align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %416, label %413

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.xol_area, ptr %411, i32 0, i32 5
  %415 = load i32, ptr %414, align 4
  br label %416

416:                                              ; preds = %413, %408
  %417 = phi i32 [ %415, %413 ], [ -1, %408 ]
  %418 = call i32 @arch_uretprobe_hijack_return_addr(i32 noundef %417, ptr noundef %0) #13
  %419 = icmp eq i32 %418, -1
  br i1 %419, label %473, label %420

420:                                              ; preds = %416
  %421 = icmp eq i32 %418, %417
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.uprobe_task, ptr %391, i32 0, i32 4
  %424 = load ptr, ptr %423, align 4
  %425 = zext i1 %421 to i32
  %426 = icmp eq ptr %424, null
  br i1 %426, label %437, label %427

427:                                              ; preds = %430, %420
  %428 = phi ptr [ %432, %430 ], [ %424, %420 ]
  %429 = call zeroext i1 @arch_uretprobe_is_alive(ptr noundef nonnull %428, i32 noundef %425, ptr noundef %0) #13
  br i1 %429, label %437, label %430

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.return_instance, ptr %428, i32 0, i32 5
  %432 = load ptr, ptr %431, align 4
  %433 = load ptr, ptr %428, align 4
  call fastcc void @put_uprobe(ptr noundef %433) #13
  call void @kfree(ptr noundef nonnull %428) #13
  %434 = load i32, ptr %392, align 4
  %435 = add i32 %434, -1
  store i32 %435, ptr %392, align 4
  %436 = icmp eq ptr %432, null
  br i1 %436, label %437, label %427

437:                                              ; preds = %430, %427, %420
  %438 = phi ptr [ null, %420 ], [ null, %430 ], [ %428, %427 ]
  store ptr %438, ptr %423, align 4
  br i1 %421, label %439, label %449

439:                                              ; preds = %437
  %440 = icmp eq ptr %438, null
  br i1 %440, label %441, label %446

441:                                              ; preds = %439
  %442 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %443 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %444 = load i32, ptr %443, align 8
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %442, i32 noundef %444, ptr noundef nonnull @.str.20) #14
  br label %473

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.return_instance, ptr %438, i32 0, i32 3
  %448 = load i32, ptr %447, align 4
  br label %449

449:                                              ; preds = %446, %437
  %450 = phi i32 [ %448, %446 ], [ %418, %437 ]
  %451 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %451) #13, !srcloc !19
  %452 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %451, ptr %451, i32 1, ptr elementtype(i32) %451) #13, !srcloc !32
  %453 = extractvalue { i32, i32, i32 } %452, 0
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %459, label %455, !prof !15

455:                                              ; preds = %449
  %456 = add i32 %453, 1
  %457 = or i32 %456, %453
  %458 = icmp sgt i32 %457, -1
  br i1 %458, label %461, label %459, !prof !14

459:                                              ; preds = %455, %449
  %460 = phi i32 [ 2, %449 ], [ 1, %455 ]
  call void @refcount_warn_saturate(ptr noundef %451, i32 noundef %460) #13
  br label %461

461:                                              ; preds = %459, %455
  store ptr %316, ptr %406, align 8
  %462 = load i32, ptr %328, align 4
  %463 = getelementptr inbounds %struct.return_instance, ptr %406, i32 0, i32 1
  store i32 %462, ptr %463, align 4
  %464 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %465 = load i32, ptr %464, align 4
  %466 = getelementptr inbounds %struct.return_instance, ptr %406, i32 0, i32 2
  store i32 %465, ptr %466, align 8
  %467 = getelementptr inbounds %struct.return_instance, ptr %406, i32 0, i32 3
  store i32 %450, ptr %467, align 4
  %468 = getelementptr inbounds %struct.return_instance, ptr %406, i32 0, i32 4
  store i8 %422, ptr %468, align 8
  %469 = load i32, ptr %392, align 4
  %470 = add i32 %469, 1
  store i32 %470, ptr %392, align 4
  %471 = load ptr, ptr %423, align 4
  %472 = getelementptr inbounds %struct.return_instance, ptr %406, i32 0, i32 5
  store ptr %471, ptr %472, align 4
  store ptr %406, ptr %423, align 4
  br label %546

473:                                              ; preds = %441, %416
  call void @kfree(ptr noundef nonnull %406) #13
  br label %546

474:                                              ; preds = %404, %395, %386, %380, %369
  br i1 %371, label %475, label %546

475:                                              ; preds = %474
  %476 = load ptr, ptr %345, align 8
  %477 = icmp eq ptr %476, null
  br i1 %477, label %546, label %478

478:                                              ; preds = %475
  %479 = load i32, ptr %316, align 8
  %480 = ptrtoint ptr %316 to i32
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %483, !prof !15

482:                                              ; preds = %478
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2099, i32 noundef 9, ptr noundef null) #13
  br label %483

483:                                              ; preds = %482, %478
  %484 = load ptr, ptr %38, align 4
  %485 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %486 = icmp sgt i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %483
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %484, i1 noundef zeroext false) #13
  br label %488

488:                                              ; preds = %487, %483
  %489 = getelementptr inbounds %struct.anon, ptr %484, i32 0, i32 15
  call void @down_read(ptr noundef %489) #13
  %490 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %491 = icmp sgt i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %488
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %484, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %493

493:                                              ; preds = %492, %488
  %494 = load ptr, ptr %484, align 4
  %495 = icmp eq ptr %494, null
  br i1 %495, label %541, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 6
  %498 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 7
  %499 = getelementptr inbounds %struct.anon, ptr %484, i32 0, i32 43
  br label %500

500:                                              ; preds = %537, %496
  %501 = phi ptr [ %494, %496 ], [ %539, %537 ]
  %502 = getelementptr inbounds %struct.vm_area_struct, ptr %501, i32 0, i32 14
  %503 = load ptr, ptr %502, align 4
  %504 = icmp eq ptr %503, null
  br i1 %504, label %537, label %505

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.vm_area_struct, ptr %501, i32 0, i32 8
  %507 = load i32, ptr %506, align 4
  %508 = and i32 %507, 4194496
  %509 = icmp eq i32 %508, 64
  br i1 %509, label %510, label %537

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.file, ptr %503, i32 0, i32 2
  %512 = load ptr, ptr %511, align 8
  %513 = load ptr, ptr %497, align 4
  %514 = icmp eq ptr %512, %513
  br i1 %514, label %515, label %537

515:                                              ; preds = %510
  %516 = getelementptr inbounds %struct.vm_area_struct, ptr %501, i32 0, i32 13
  %517 = load i32, ptr %516, align 4
  %518 = zext i32 %517 to i64
  %519 = shl nuw nsw i64 %518, 12
  %520 = load i64, ptr %498, align 8
  %521 = icmp slt i64 %520, %519
  br i1 %521, label %537, label %522

522:                                              ; preds = %515
  %523 = getelementptr inbounds %struct.vm_area_struct, ptr %501, i32 0, i32 1
  %524 = load i32, ptr %523, align 4
  %525 = zext i32 %524 to i64
  %526 = add nuw nsw i64 %519, %525
  %527 = load i32, ptr %501, align 4
  %528 = zext i32 %527 to i64
  %529 = sub nsw i64 %526, %528
  %530 = icmp slt i64 %520, %529
  br i1 %530, label %531, label %537

531:                                              ; preds = %522
  %532 = mul nuw i64 %518, 4294963200
  %533 = add i64 %532, %520
  %534 = trunc i64 %533 to i32
  %535 = add i32 %527, %534
  call void @_set_bit(i32 noundef 20, ptr noundef %499) #13
  %536 = call i32 @set_orig_insn(ptr noundef %341, ptr noundef %484, i32 noundef %535) #13
  br label %537

537:                                              ; preds = %531, %522, %515, %510, %505, %500
  %538 = getelementptr inbounds %struct.vm_area_struct, ptr %501, i32 0, i32 2
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %541, label %500

541:                                              ; preds = %537, %493
  %542 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %544, label %545

544:                                              ; preds = %541
  call void @__mmap_lock_do_trace_released(ptr noundef %484, i1 noundef zeroext false) #13
  br label %545

545:                                              ; preds = %544, %541
  call void @up_read(ptr noundef %489) #13
  br label %546

546:                                              ; preds = %545, %475, %474, %473, %461, %398, %343
  call void @up_read(ptr noundef %344) #13
  %547 = call zeroext i1 @arch_uprobe_skip_sstep(ptr noundef %341, ptr noundef %0) #13
  br i1 %547, label %608, label %548

548:                                              ; preds = %546
  %549 = load ptr, ptr %6, align 16
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %555

551:                                              ; preds = %548
  %552 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %553 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %552, i32 noundef 3520, i32 noundef 32) #15
  store ptr %553, ptr %6, align 16
  %554 = icmp eq ptr %553, null
  br i1 %554, label %608, label %555

555:                                              ; preds = %551, %548
  %556 = phi ptr [ %553, %551 ], [ %549, %548 ]
  %557 = load ptr, ptr %38, align 4
  %558 = getelementptr inbounds %struct.anon, ptr %557, i32 0, i32 49
  %559 = load ptr, ptr %558, align 8
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %563

561:                                              ; preds = %555
  %562 = call fastcc ptr @__create_xol_area(i32 noundef 0) #13
  br label %563

563:                                              ; preds = %561, %555
  %564 = load volatile ptr, ptr %558, align 8
  %565 = icmp eq ptr %564, null
  br i1 %565, label %608, label %566

566:                                              ; preds = %563
  %567 = getelementptr inbounds %struct.xol_area, ptr %564, i32 0, i32 2
  %568 = getelementptr inbounds %struct.xol_area, ptr %564, i32 0, i32 1
  br label %569

569:                                              ; preds = %589, %566
  %570 = load ptr, ptr %567, align 4
  %571 = call i32 @_find_first_zero_bit_le(ptr noundef %570, i32 noundef 64) #13
  %572 = icmp ult i32 %571, 64
  br i1 %572, label %573, label %577

573:                                              ; preds = %569
  %574 = load ptr, ptr %567, align 4
  %575 = call i32 @_test_and_set_bit(i32 noundef %571, ptr noundef %574) #13
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %590, label %589

577:                                              ; preds = %569
  %578 = load volatile i32, ptr %568, align 4
  %579 = icmp ult i32 %578, 64
  br i1 %579, label %589, label %580

580:                                              ; preds = %577
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #13, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #13
  %581 = call i32 @prepare_to_wait_event(ptr noundef nonnull %564, ptr noundef nonnull %2, i32 noundef 2) #13
  %582 = load volatile i32, ptr %568, align 4
  %583 = icmp ult i32 %582, 64
  br i1 %583, label %588, label %584

584:                                              ; preds = %584, %580
  call void @schedule() #13
  %585 = call i32 @prepare_to_wait_event(ptr noundef nonnull %564, ptr noundef nonnull %2, i32 noundef 2) #13
  %586 = load volatile i32, ptr %568, align 4
  %587 = icmp ult i32 %586, 64
  br i1 %587, label %588, label %584

588:                                              ; preds = %584, %580
  call void @finish_wait(ptr noundef nonnull %564, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  br label %589

589:                                              ; preds = %588, %577, %573
  br label %569

590:                                              ; preds = %573
  %591 = getelementptr inbounds %struct.xol_area, ptr %564, i32 0, i32 5
  %592 = load i32, ptr %591, align 4
  %593 = shl nuw nsw i32 %571, 6
  %594 = add i32 %592, %593
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %568) #13, !srcloc !19
  %595 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %568, ptr %568, i32 1, ptr elementtype(i32) %568) #13, !srcloc !24
  %596 = icmp eq i32 %594, 0
  br i1 %596, label %608, label %597, !prof !15

597:                                              ; preds = %590
  %598 = getelementptr inbounds %struct.xol_area, ptr %564, i32 0, i32 4
  %599 = load ptr, ptr %598, align 4
  %600 = getelementptr inbounds %struct.uprobe, ptr %316, i32 0, i32 10, i32 1
  call void @arch_uprobe_copy_ixol(ptr noundef %599, i32 noundef %594, ptr noundef %600, i32 noundef 8) #13
  %601 = getelementptr inbounds %struct.uprobe_task, ptr %556, i32 0, i32 3
  store i32 %594, ptr %601, align 4
  %602 = getelementptr inbounds %struct.uprobe_task, ptr %556, i32 0, i32 1, i32 0, i32 1
  store i32 %37, ptr %602, align 4
  %603 = call i32 @arch_uprobe_pre_xol(ptr noundef %341, ptr noundef %0) #13
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %606, label %605, !prof !14

605:                                              ; preds = %597
  call fastcc void @xol_free_insn_slot(ptr noundef %5) #13
  br label %608

606:                                              ; preds = %597
  %607 = getelementptr inbounds %struct.uprobe_task, ptr %556, i32 0, i32 2
  store ptr %316, ptr %607, align 4
  store i32 1, ptr %556, align 4
  br label %609

608:                                              ; preds = %605, %590, %563, %551, %546, %340, %336, %327
  call fastcc void @put_uprobe(ptr noundef nonnull %316) #13
  br label %609

609:                                              ; preds = %608, %606, %325, %324, %108, %107, %31, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_pre_sstep_notifier(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 43
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 147
  %13 = load ptr, ptr %12, align 16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uprobe_task, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #13
  br label %20

20:                                               ; preds = %19, %15, %11, %1
  %21 = phi i32 [ 1, %19 ], [ 0, %1 ], [ 0, %15 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uprobe_post_sstep_notifier(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 147
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uprobe_task, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 2, ptr %4, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #13
  br label %15

15:                                               ; preds = %14, %10, %1
  %16 = phi i32 [ 1, %14 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @uprobes_init() local_unnamed_addr #6 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr [13 x %struct.mutex], ptr @uprobes_mmap_mutex, i32 0, i32 %2
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @uprobes_init.__key) #13
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 13
  br i1 %5, label %6, label %1

6:                                                ; preds = %1
  %7 = tail call i32 @register_die_notifier(ptr noundef nonnull @uprobe_exception_nb) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !14

9:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/events/uprobes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2359, 0\0A.popsection", ""() #13, !srcloc !63
  unreachable

10:                                               ; preds = %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__update_ref_ctr(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  %6 = icmp ne i32 %1, 0
  %7 = icmp ne i16 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %56

9:                                                ; preds = %3
  %10 = call i32 @get_user_pages_remote(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #13
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15, !prof !15

12:                                               ; preds = %9
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %13, i32 -16, i32 %10
  br label %56

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 4
  %17 = load i32, ptr @pgprot_kernel, align 4
  %18 = or i32 %17, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %19 = tail call ptr @llvm.thread.pointer() #13
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 149
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %23 = call ptr @__kmap_local_page_prot(ptr noundef %16, i32 noundef %18) #13
  %24 = and i32 %1, 4095
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = load i16, ptr %25, align 2
  %27 = sext i16 %26 to i32
  %28 = sext i16 %2 to i32
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33, !prof !15

31:                                               ; preds = %15
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %27, i32 noundef %28) #14
  br label %35

33:                                               ; preds = %15
  %34 = trunc i32 %29 to i16
  store i16 %34, ptr %25, align 2
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ -22, %31 ], [ 0, %33 ]
  call void @kunmap_local_indexed(ptr noundef %23) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %37 = load i32, ptr %20, align 8
  %38 = add i32 %37, -1
  store i32 %38, ptr %20, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !14

44:                                               ; preds = %35
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %35
  %47 = ptrtoint ptr %39 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #13, !srcloc !19
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #13, !srcloc !20
  %53 = extractvalue { i32, i32 } %52, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  call void @__put_page(ptr noundef %50) #13
  br label %56

56:                                               ; preds = %55, %48, %12, %3
  %57 = phi i32 [ %14, %12 ], [ -22, %3 ], [ %36, %48 ], [ %36, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_new_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_remove_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @munlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_analyze_insn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__create_xol_area(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 -403701255, ptr %2, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 48) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9, !prof !15

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #15
  %12 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 3
  store ptr @.str.14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 3, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 4
  %18 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 8
  %19 = tail call ptr @__alloc_pages(i32 noundef 1051842, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  store ptr %19, ptr %17, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %21

21:                                               ; preds = %14
  %22 = getelementptr %struct.xol_area, ptr %7, i32 0, i32 4, i32 1
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 5
  store i32 %0, ptr %23, align 4
  tail call void @__init_waitqueue_head(ptr noundef nonnull %7, ptr noundef nonnull @.str.15, ptr noundef nonnull @__create_xol_area.__key) #13
  %24 = load ptr, ptr %12, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.xol_area, ptr %7, i32 0, i32 1
  store volatile i32 1, ptr %25, align 4
  %26 = load ptr, ptr %17, align 4
  call void @arch_uprobe_copy_ixol(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 4)
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #13
  br label %30

30:                                               ; preds = %29, %21
  %31 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  %32 = call i32 @down_write_killable(ptr noundef %31) #13
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = icmp eq i32 %32, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %36) #13
  br label %37

37:                                               ; preds = %35, %30
  %38 = icmp eq i32 %32, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 49
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, ptr %23, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @get_unmapped_area(ptr noundef null, i32 noundef -1090523136, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  store i32 %47, ptr %23, align 4
  %48 = icmp ugt i32 %47, -4096
  br i1 %48, label %54, label %49, !prof !15

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %47, %46 ], [ %44, %43 ]
  %51 = call ptr @_install_special_mapping(ptr noundef %5, i32 noundef %50, i32 noundef 4096, i32 noundef 147524, ptr noundef %15) #13
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !64
  store volatile ptr %7, ptr %40, align 8
  br label %54

54:                                               ; preds = %53, %49, %46, %39
  %55 = phi i32 [ 0, %53 ], [ -114, %39 ], [ %47, %46 ], [ -114, %49 ]
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #13
  br label %59

59:                                               ; preds = %58, %54
  call void @up_write(ptr noundef %31) #13
  %60 = icmp eq i32 %55, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %59, %37
  %62 = load ptr, ptr %17, align 4
  call void @__free_pages(ptr noundef %62, i32 noundef 0) #13
  br label %63

63:                                               ; preds = %61, %14
  %64 = load ptr, ptr %12, align 8
  call void @kfree(ptr noundef %64) #13
  br label %65

65:                                               ; preds = %63, %9
  call void @kfree(ptr noundef nonnull %7) #13
  br label %66

66:                                               ; preds = %65, %59, %1
  %67 = phi ptr [ %7, %59 ], [ null, %1 ], [ null, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_install_special_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_post_xol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_uprobe_abort_xol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @arch_uprobe_skip_sstep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uretprobe_hijack_return_addr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_pre_xol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_exception_notify(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i64 2152424677}
!11 = !{i64 2151031826}
!12 = !{i64 2151032033}
!13 = !{i64 2152427302}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2150231735}
!17 = !{i64 2150231072}
!18 = !{i64 2148069733}
!19 = !{i64 466895, i64 2147956866, i64 2147956892, i64 2147956939, i64 2147956961, i64 2147956989, i64 2147957009}
!20 = !{i64 2147972119, i64 2147972151, i64 2147972180, i64 2147972214, i64 2147972245, i64 2147972268}
!21 = !{i64 2148069936}
!22 = !{i64 2147977540, i64 2147977572, i64 2147977601, i64 2147977635, i64 2147977666, i64 2147977689}
!23 = !{i64 2148078856}
!24 = !{i64 2147969078, i64 2147969104, i64 2147969133, i64 2147969167, i64 2147969198, i64 2147969221}
!25 = !{i64 2148066900}
!26 = !{i64 2147969762, i64 2147969794, i64 2147969823, i64 2147969857, i64 2147969888, i64 2147969911}
!27 = !{i64 2148067103}
!28 = !{i64 2149064265}
!29 = !{i64 2149060089}
!30 = !{i64 2149060164, i64 2149060191, i64 2149060238, i64 2149060260, i64 2149060288, i64 2149060308}
!31 = !{i64 2149087268}
!32 = !{i64 2147970536, i64 2147970568, i64 2147970597, i64 2147970631, i64 2147970662, i64 2147970685}
!33 = !{!"branch_weights", i32 1073205, i32 2146410443}
!34 = !{i64 2148070734}
!35 = !{i64 2147972893, i64 2147972925, i64 2147972954, i64 2147972988, i64 2147973019, i64 2147973042}
!36 = !{i64 2149824241}
!37 = !{i64 2151348302}
!38 = !{i64 2151348144}
!39 = !{i64 2151348446}
!40 = !{i64 2149542689}
!41 = !{i64 2147968585}
!42 = !{i64 453464, i64 453489, i64 453511, i64 453527, i64 453539, i64 453559, i64 453583, i64 453599, i64 453611}
!43 = !{i64 2147968711}
!44 = !{i64 2153706245}
!45 = !{i64 2151193896}
!46 = !{i64 362134, i64 362195}
!47 = !{i64 380834}
!48 = !{i64 365151}
!49 = !{i64 2151201513}
!50 = !{i64 2151209978}
!51 = !{i64 2151218289}
!52 = !{i64 2151226507}
!53 = !{i64 2147971435, i64 2147971461, i64 2147971490, i64 2147971524, i64 2147971555, i64 2147971578}
!54 = !{i64 2153744384}
!55 = !{i64 362379}
!56 = !{i64 2149088409}
!57 = !{i8 0, i8 2}
!58 = !{i64 3525432}
!59 = !{i64 3525629}
!60 = !{i64 2151010908}
!61 = !{i64 2153762156, i64 2153762436, i64 2153762770, i64 2153763104}
!62 = !{i64 2153767314}
!63 = !{i64 2153769571, i64 2153770060, i64 2153769608, i64 2153769664, i64 2153769698, i64 2153769722, i64 2153769763, i64 2153769784, i64 2153769812, i64 2153769846}
!64 = !{i64 2153734238}
