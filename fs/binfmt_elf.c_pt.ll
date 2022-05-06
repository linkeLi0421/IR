; ModuleID = '/llk/IR/fs/binfmt_elf.c_pt.bc'
source_filename = "../fs/binfmt_elf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }
%struct.anon.8 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pt_regs = type { [18 x i32] }
%struct.task_cputime = type { i64, i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.elf_note_info = type { ptr, %struct.memelfnote, %struct.memelfnote, %struct.memelfnote, %struct.memelfnote, %struct.siginfo, i32, i32 }
%struct.memelfnote = type { ptr, i32, i32, ptr }
%struct.siginfo = type { %union.anon.72 }
%union.anon.72 = type { [32 x i32] }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.elf_thread_core_info = type { ptr, ptr, %struct.elf_prstatus, [0 x %struct.memelfnote] }
%struct.elf_prstatus = type { %struct.elf_prstatus_common, [18 x i32], i32 }
%struct.elf_prstatus_common = type { %struct.elf_siginfo, i16, i32, i32, i32, i32, i32, i32, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.elf_siginfo = type { i32, i32, i32 }
%struct.elf_prpsinfo = type { i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [16 x i8], [80 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.core_vma_metadata = type { i32, i32, i32, i32 }
%struct.elf32_note = type { i32, i32, i32 }

@elf_format = internal global %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_elf_binary, ptr null, ptr @elf_core_dump, i32 4096 }, align 4
@__initcall__kmod_binfmt_elf__264_2335_init_elf_binfmt1 = internal global ptr @init_elf_binfmt, section ".initcall1.init", align 4
@__exitcall_exit_elf_binfmt = internal global ptr @exit_elf_binfmt, section ".exitcall.exit", align 4
@__UNIQUE_ID_file265 = internal constant [30 x i8] c"binfmt_elf.file=fs/binfmt_elf\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [23 x i8] c"binfmt_elf.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@randomize_va_space = external dso_local local_unnamed_addr global i32, align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"\016%d (%s): Uhuuh, elf segment at %px requested but the memory is mapped already\0A\00", align 1
@elf_platform = external dso_local global [0 x i8], align 1
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fs/binfmt_elf.c\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"LINUX\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"RSDTZW\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__exitcall_exit_elf_binfmt, ptr @__initcall__kmod_binfmt_elf__264_2335_init_elf_binfmt1, ptr @exit_elf_binfmt], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_elf_binfmt() #0 section ".exit.text" {
  tail call void @unregister_binfmt(ptr noundef nonnull @elf_format) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_elf_binfmt() #0 section ".init.text" {
  tail call void @__register_binfmt(ptr noundef nonnull @elf_format, i32 noundef 0) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @load_elf_binary(ptr noundef %0) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22
  %6 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str, i32 4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %469

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 16
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %469

13:                                               ; preds = %8
  %14 = tail call i32 @elf_check_arch(ptr noundef %5) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %469, label %16

16:                                               ; preds = %13
  %17 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 7
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 65
  br i1 %19, label %469, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.file_operations, ptr %24, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %469, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 42
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 32
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 44
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = shl nuw nsw i32 %35, 5
  %37 = add i16 %34, -129
  %38 = icmp ult i16 %37, -128
  br i1 %38, label %52, label %39

39:                                               ; preds = %32
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 28
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %44 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 %45, ptr %4, align 8
  %46 = call i32 @kernel_read(ptr noundef %22, ptr noundef nonnull %40, i32 noundef %36, ptr noundef nonnull %4) #17
  %47 = icmp eq i32 %46, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br i1 %47, label %48, label %52, !prof !9

48:                                               ; preds = %42
  %49 = load i16, ptr %33, align 4
  %50 = zext i16 %49 to i32
  %51 = icmp eq i16 %49, 0
  br i1 %51, label %146, label %54

52:                                               ; preds = %42, %39, %32, %28
  %53 = phi ptr [ null, %39 ], [ null, %32 ], [ null, %28 ], [ %40, %42 ]
  call void @kfree(ptr noundef %53) #17
  br label %469

54:                                               ; preds = %103, %48
  %55 = phi i32 [ %104, %103 ], [ 0, %48 ]
  %56 = phi ptr [ %105, %103 ], [ %40, %48 ]
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.elf32_phdr, ptr %56, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -4097
  %63 = icmp ult i32 %62, -4095
  br i1 %63, label %467, label %64

64:                                               ; preds = %59
  %65 = call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3264) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %467, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %21, align 4
  %69 = load i32, ptr %60, align 4
  %70 = getelementptr inbounds %struct.elf32_phdr, ptr %56, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = zext i32 %71 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %72, ptr %3, align 8
  %73 = call i32 @kernel_read(ptr noundef %68, ptr noundef nonnull %65, i32 noundef %69, ptr noundef nonnull %3) #17
  %74 = icmp eq i32 %73, %69
  br i1 %74, label %78, label %75, !prof !9

75:                                               ; preds = %67
  %76 = icmp slt i32 %73, 0
  %77 = select i1 %76, i32 %73, i32 -5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %101

78:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %79 = load i32, ptr %60, align 4
  %80 = add i32 %79, -1
  %81 = getelementptr i8, ptr %65, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = call ptr @open_exec(ptr noundef nonnull %65) #17
  call void @kfree(ptr noundef nonnull %65) #17
  %86 = ptrtoint ptr %85 to i32
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %467, label %88

88:                                               ; preds = %84
  call void @would_dump(ptr noundef %0, ptr noundef %85) #17
  %89 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %90 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 52) #19
  %91 = icmp eq ptr %90, null
  br i1 %91, label %467, label %92

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 0, ptr %2, align 8
  %93 = call i32 @kernel_read(ptr noundef %85, ptr noundef nonnull %90, i32 noundef 52, ptr noundef nonnull %2) #17
  %94 = icmp eq i32 %93, 52
  br i1 %94, label %98, label %95, !prof !9

95:                                               ; preds = %92
  %96 = icmp slt i32 %93, 0
  %97 = select i1 %96, i32 %93, i32 -5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %456

98:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %99 = load i16, ptr %33, align 4
  %100 = zext i16 %99 to i32
  br label %107

101:                                              ; preds = %78, %75
  %102 = phi i32 [ -8, %78 ], [ %77, %75 ]
  call void @kfree(ptr noundef nonnull %65) #17
  br label %467

103:                                              ; preds = %54
  %104 = add nuw nsw i32 %55, 1
  %105 = getelementptr %struct.elf32_phdr, ptr %56, i32 1
  %106 = icmp eq i32 %104, %50
  br i1 %106, label %107, label %54

107:                                              ; preds = %103, %98
  %108 = phi i32 [ %100, %98 ], [ %50, %103 ]
  %109 = phi i16 [ %99, %98 ], [ 1, %103 ]
  %110 = phi ptr [ %90, %98 ], [ null, %103 ]
  %111 = phi ptr [ %85, %98 ], [ null, %103 ]
  %112 = icmp eq i16 %109, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %125, %107
  %114 = phi i32 [ %126, %125 ], [ 0, %107 ]
  %115 = phi i32 [ %127, %125 ], [ 0, %107 ]
  %116 = phi ptr [ %128, %125 ], [ %40, %107 ]
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 1685382481
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.elf32_phdr, ptr %116, i32 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 1, i32 2
  br label %125

125:                                              ; preds = %119, %113
  %126 = phi i32 [ %124, %119 ], [ %114, %113 ]
  %127 = add nuw nsw i32 %115, 1
  %128 = getelementptr %struct.elf32_phdr, ptr %116, i32 1
  %129 = icmp eq i32 %127, %108
  br i1 %129, label %130, label %113

130:                                              ; preds = %125, %107
  %131 = phi i32 [ 0, %107 ], [ %126, %125 ]
  %132 = icmp eq ptr %111, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %130
  %134 = load i32, ptr %110, align 8
  %135 = icmp eq i32 %134, 1179403647
  br i1 %135, label %136, label %456

136:                                              ; preds = %133
  %137 = call i32 @elf_check_arch(ptr noundef %110) #17
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %456, label %139

139:                                              ; preds = %136
  %140 = getelementptr [16 x i8], ptr %110, i32 0, i32 7
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, 65
  br i1 %142, label %456, label %143

143:                                              ; preds = %139
  %144 = call fastcc ptr @load_elf_phdrs(ptr noundef %110, ptr noundef nonnull %111)
  %145 = icmp eq ptr %144, null
  br i1 %145, label %456, label %146

146:                                              ; preds = %143, %130, %48
  %147 = phi i1 [ false, %130 ], [ false, %48 ], [ true, %143 ]
  %148 = phi i32 [ %131, %130 ], [ 0, %48 ], [ %131, %143 ]
  %149 = phi ptr [ null, %130 ], [ null, %48 ], [ %111, %143 ]
  %150 = phi ptr [ %110, %130 ], [ null, %48 ], [ %110, %143 ]
  %151 = phi ptr [ null, %130 ], [ null, %48 ], [ %144, %143 ]
  %152 = call i32 @begin_new_exec(ptr noundef %0) #17
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %456

154:                                              ; preds = %146
  call void @elf_set_personality(ptr noundef %5) #17
  %155 = call i32 @arm_elf_read_implies_exec(i32 noundef %148) #17
  %156 = icmp eq i32 %155, 0
  %157 = tail call ptr @llvm.thread.pointer() #17
  br i1 %156, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 46
  %160 = load i32, ptr %159, align 16
  %161 = or i32 %160, 4194304
  store i32 %161, ptr %159, align 16
  br label %162

162:                                              ; preds = %158, %154
  %163 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 46
  %164 = load i32, ptr %163, align 16
  %165 = and i32 %164, 262144
  %166 = icmp eq i32 %165, 0
  %167 = load i32, ptr @randomize_va_space, align 4
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 4
  %172 = load i32, ptr %171, align 4
  %173 = or i32 %172, 4194304
  store i32 %173, ptr %171, align 4
  br label %174

174:                                              ; preds = %170, %162
  call void @setup_new_exec(ptr noundef %0) #17
  %175 = load i32, ptr %163, align 16
  %176 = and i32 %175, 8388608
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 67108864, i32 -1090519040
  %179 = call i32 @randomize_stack_top(i32 noundef %178) #17
  %180 = call i32 @setup_arg_pages(ptr noundef %0, i32 noundef %179, i32 noundef %148) #17
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %456, label %182

182:                                              ; preds = %174
  %183 = load i16, ptr %33, align 4
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %337, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 4
  br label %187

187:                                              ; preds = %321, %185
  %188 = phi i16 [ %183, %185 ], [ %322, %321 ]
  %189 = phi i32 [ 0, %185 ], [ %332, %321 ]
  %190 = phi i32 [ 0, %185 ], [ %331, %321 ]
  %191 = phi i32 [ 0, %185 ], [ %330, %321 ]
  %192 = phi i32 [ 0, %185 ], [ %329, %321 ]
  %193 = phi i32 [ 0, %185 ], [ %328, %321 ]
  %194 = phi i32 [ 0, %185 ], [ %327, %321 ]
  %195 = phi i32 [ -1, %185 ], [ %326, %321 ]
  %196 = phi i32 [ 0, %185 ], [ %333, %321 ]
  %197 = phi i32 [ 0, %185 ], [ %325, %321 ]
  %198 = phi i32 [ 0, %185 ], [ %324, %321 ]
  %199 = phi i32 [ 0, %185 ], [ %323, %321 ]
  %200 = phi ptr [ %40, %185 ], [ %334, %321 ]
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %321

203:                                              ; preds = %187
  %204 = icmp ugt i32 %198, %199
  br i1 %204, label %205, label %220, !prof !10

205:                                              ; preds = %203
  %206 = add i32 %190, %199
  %207 = add i32 %190, %198
  %208 = call fastcc i32 @set_brk(i32 noundef %206, i32 noundef %207, i32 noundef %197)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %456

210:                                              ; preds = %205
  %211 = and i32 %199, 4095
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = sub nuw nsw i32 4096, %211
  %215 = sub i32 %198, %199
  %216 = call i32 @llvm.umin.i32(i32 %214, i32 %215)
  %217 = inttoptr i32 %199 to ptr
  %218 = getelementptr i8, ptr %217, i32 %190
  %219 = call fastcc i32 @clear_user(ptr noundef %218, i32 noundef %216)
  br label %220

220:                                              ; preds = %213, %210, %203
  %221 = getelementptr inbounds %struct.elf32_phdr, ptr %200, i32 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = trunc i32 %222 to i3
  %224 = call i3 @llvm.bitreverse.i3(i3 %223) #17
  %225 = zext i3 %224 to i32
  %226 = getelementptr inbounds %struct.elf32_phdr, ptr %200, i32 0, i32 2
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %191, 0
  br i1 %228, label %229, label %262

229:                                              ; preds = %220
  %230 = load i16, ptr %9, align 4
  switch i16 %230, label %261 [
    i16 2, label %262
    i16 3, label %231
  ]

231:                                              ; preds = %229
  %232 = load i16, ptr %33, align 4
  %233 = zext i16 %232 to i32
  %234 = call fastcc i32 @maximum_alignment(ptr noundef nonnull %40, i32 noundef %233)
  %235 = icmp ugt i32 %234, 4096
  %236 = select i1 %147, i1 true, i1 %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %231
  %238 = load i32, ptr %186, align 4
  %239 = and i32 %238, 4194304
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %237
  %242 = call i32 @arch_mmap_rnd() #17
  %243 = add i32 %242, 4194304
  %244 = load i16, ptr %33, align 4
  %245 = zext i16 %244 to i32
  br label %246

246:                                              ; preds = %241, %237
  %247 = phi i32 [ %245, %241 ], [ %233, %237 ]
  %248 = phi i32 [ %243, %241 ], [ 4194304, %237 ]
  %249 = icmp eq i32 %234, 0
  %250 = sub i32 0, %234
  %251 = select i1 %249, i32 -1, i32 %250
  %252 = and i32 %248, %251
  br label %253

253:                                              ; preds = %246, %231
  %254 = phi i32 [ %233, %231 ], [ %247, %246 ]
  %255 = phi i32 [ 2, %231 ], [ 1048578, %246 ]
  %256 = phi i32 [ 0, %231 ], [ %252, %246 ]
  %257 = sub i32 %256, %227
  %258 = and i32 %257, -4096
  %259 = call fastcc i32 @total_mapping_size(ptr noundef nonnull %40, i32 noundef %254)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %456, label %262

261:                                              ; preds = %229
  br label %262

262:                                              ; preds = %261, %253, %229, %220
  %263 = phi i32 [ %255, %253 ], [ 18, %220 ], [ 1048578, %229 ], [ 2, %261 ]
  %264 = phi i32 [ %259, %253 ], [ 0, %220 ], [ 0, %229 ], [ 0, %261 ]
  %265 = phi i32 [ %258, %253 ], [ %190, %220 ], [ %190, %229 ], [ %190, %261 ]
  %266 = load ptr, ptr %21, align 4
  %267 = add i32 %265, %227
  %268 = call fastcc i32 @elf_map(ptr noundef %266, i32 noundef %267, ptr noundef %200, i32 noundef %225, i32 noundef %263, i32 noundef %264)
  %269 = icmp ugt i32 %268, -1090519041
  br i1 %269, label %270, label %274, !prof !10

270:                                              ; preds = %262
  %271 = inttoptr i32 %268 to ptr
  %272 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  %273 = select i1 %272, i32 %268, i32 -22
  br label %456

274:                                              ; preds = %262
  %275 = load i32, ptr %226, align 4
  br i1 %228, label %276, label %287

276:                                              ; preds = %274
  %277 = getelementptr inbounds %struct.elf32_phdr, ptr %200, i32 0, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = sub i32 %275, %278
  %280 = load i16, ptr %9, align 4
  %281 = icmp eq i16 %280, 3
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = and i32 %267, -4096
  %284 = sub i32 %268, %283
  %285 = add i32 %284, %265
  %286 = add i32 %279, %285
  br label %287

287:                                              ; preds = %282, %276, %274
  %288 = phi i32 [ %285, %282 ], [ %265, %276 ], [ %265, %274 ]
  %289 = phi i32 [ %286, %282 ], [ %279, %276 ], [ %189, %274 ]
  %290 = load i32, ptr %221, align 4
  %291 = and i32 %290, 1
  %292 = icmp ne i32 %291, 0
  %293 = icmp ult i32 %275, %195
  %294 = select i1 %292, i1 %293, i1 false
  %295 = select i1 %294, i32 %275, i32 %195
  %296 = call i32 @llvm.umax.i32(i32 %193, i32 %275)
  %297 = icmp ugt i32 %275, -1090519041
  br i1 %297, label %456, label %298, !prof !10

298:                                              ; preds = %287
  %299 = getelementptr inbounds %struct.elf32_phdr, ptr %200, i32 0, i32 4
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr inbounds %struct.elf32_phdr, ptr %200, i32 0, i32 5
  %302 = load i32, ptr %301, align 4
  %303 = icmp ugt i32 %300, %302
  %304 = icmp ugt i32 %302, -1090519040
  %305 = or i1 %303, %304
  %306 = sub i32 -1090519040, %302
  %307 = icmp ult i32 %306, %275
  %308 = select i1 %305, i1 true, i1 %307
  br i1 %308, label %456, label %309

309:                                              ; preds = %298
  %310 = add i32 %300, %275
  %311 = call i32 @llvm.umax.i32(i32 %310, i32 %199)
  %312 = icmp ult i32 %194, %310
  %313 = select i1 %292, i1 %312, i1 false
  %314 = select i1 %313, i32 %310, i32 %194
  %315 = call i32 @llvm.umax.i32(i32 %192, i32 %310)
  %316 = add i32 %302, %275
  %317 = icmp ugt i32 %316, %198
  %318 = call i32 @llvm.umax.i32(i32 %316, i32 %198)
  %319 = select i1 %317, i32 %225, i32 %197
  %320 = load i16, ptr %33, align 4
  br label %321

321:                                              ; preds = %309, %187
  %322 = phi i16 [ %320, %309 ], [ %188, %187 ]
  %323 = phi i32 [ %311, %309 ], [ %199, %187 ]
  %324 = phi i32 [ %318, %309 ], [ %198, %187 ]
  %325 = phi i32 [ %319, %309 ], [ %197, %187 ]
  %326 = phi i32 [ %295, %309 ], [ %195, %187 ]
  %327 = phi i32 [ %314, %309 ], [ %194, %187 ]
  %328 = phi i32 [ %296, %309 ], [ %193, %187 ]
  %329 = phi i32 [ %315, %309 ], [ %192, %187 ]
  %330 = phi i32 [ 1, %309 ], [ %191, %187 ]
  %331 = phi i32 [ %288, %309 ], [ %190, %187 ]
  %332 = phi i32 [ %289, %309 ], [ %189, %187 ]
  %333 = add nuw nsw i32 %196, 1
  %334 = getelementptr %struct.elf32_phdr, ptr %200, i32 1
  %335 = zext i16 %322 to i32
  %336 = icmp ult i32 %333, %335
  br i1 %336, label %187, label %337

337:                                              ; preds = %321, %182
  %338 = phi i32 [ 0, %182 ], [ %323, %321 ]
  %339 = phi i32 [ 0, %182 ], [ %324, %321 ]
  %340 = phi i32 [ 0, %182 ], [ %325, %321 ]
  %341 = phi i32 [ -1, %182 ], [ %326, %321 ]
  %342 = phi i32 [ 0, %182 ], [ %327, %321 ]
  %343 = phi i32 [ 0, %182 ], [ %328, %321 ]
  %344 = phi i32 [ 0, %182 ], [ %329, %321 ]
  %345 = phi i32 [ 0, %182 ], [ %331, %321 ]
  %346 = phi i32 [ 0, %182 ], [ %332, %321 ]
  %347 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 24
  %348 = load i32, ptr %347, align 4
  %349 = add i32 %348, %345
  %350 = add i32 %345, %338
  %351 = add i32 %345, %339
  %352 = add i32 %345, %341
  %353 = add i32 %345, %342
  %354 = add i32 %345, %343
  %355 = add i32 %345, %344
  %356 = call fastcc i32 @set_brk(i32 noundef %350, i32 noundef %351, i32 noundef %340)
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %456

358:                                              ; preds = %337
  %359 = icmp eq i32 %339, %338
  br i1 %359, label %363, label %360, !prof !10

360:                                              ; preds = %358
  %361 = call fastcc i32 @padzero(i32 noundef %350)
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %456, !prof !9

363:                                              ; preds = %360, %358
  br i1 %147, label %364, label %385

364:                                              ; preds = %363
  %365 = call fastcc i32 @load_elf_interp(ptr noundef %150, ptr noundef nonnull %149, i32 noundef %345, ptr noundef %151)
  %366 = inttoptr i32 %365 to ptr
  %367 = icmp ugt ptr %366, inttoptr (i32 -4096 to ptr)
  br i1 %367, label %372, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.elf32_hdr, ptr %150, i32 0, i32 4
  %370 = load i32, ptr %369, align 8
  %371 = add i32 %370, %365
  br label %372

372:                                              ; preds = %368, %364
  %373 = phi i32 [ %365, %364 ], [ %371, %368 ]
  %374 = phi i32 [ 0, %364 ], [ %365, %368 ]
  %375 = icmp ugt i32 %373, -1090519041
  br i1 %375, label %376, label %380, !prof !10

376:                                              ; preds = %372
  %377 = inttoptr i32 %373 to ptr
  %378 = icmp ugt ptr %377, inttoptr (i32 -4096 to ptr)
  %379 = select i1 %378, i32 %373, i32 -22
  br label %456

380:                                              ; preds = %372
  %381 = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 2
  %382 = load ptr, ptr %381, align 8
  %383 = getelementptr inbounds %struct.inode, ptr %382, i32 0, i32 37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %383) #17, !srcloc !11
  %384 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %383, ptr %383, i32 1, ptr elementtype(i32) %383) #17, !srcloc !12
  call void @fput(ptr noundef nonnull %149) #17
  call void @kfree(ptr noundef %150) #17
  call void @kfree(ptr noundef %151) #17
  br label %387

385:                                              ; preds = %363
  %386 = icmp ugt i32 %349, -1090519041
  br i1 %386, label %456, label %387, !prof !10

387:                                              ; preds = %385, %380
  %388 = phi i32 [ %373, %380 ], [ %349, %385 ]
  %389 = phi i32 [ %374, %380 ], [ 0, %385 ]
  call void @kfree(ptr noundef nonnull %40) #17
  call void @set_binfmt(ptr noundef nonnull @elf_format) #17
  %390 = zext i1 %147 to i32
  %391 = call i32 @arch_setup_additional_pages(ptr noundef %0, i32 noundef %390) #17
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %469, label %393

393:                                              ; preds = %387
  %394 = call fastcc i32 @create_elf_tables(ptr noundef %0, ptr noundef %5, i32 noundef %346, i32 noundef %389, i32 noundef %349)
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %469, label %396

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 37
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 29
  store i32 %353, ptr %399, align 4
  %400 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 28
  store i32 %352, ptr %400, align 8
  %401 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 30
  store i32 %354, ptr %401, align 8
  %402 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 31
  store i32 %355, ptr %402, align 4
  %403 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 3
  %404 = load i32, ptr %403, align 4
  %405 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 34
  store i32 %404, ptr %405, align 8
  %406 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 4
  %407 = load i32, ptr %406, align 4
  %408 = and i32 %407, 4194304
  %409 = icmp ne i32 %408, 0
  %410 = load i32, ptr @randomize_va_space, align 4
  %411 = icmp sgt i32 %410, 1
  %412 = select i1 %409, i1 %411, i1 false
  br i1 %412, label %413, label %427

413:                                              ; preds = %396
  %414 = load i16, ptr %9, align 4
  %415 = icmp ne i16 %414, 3
  %416 = or i1 %415, %147
  br i1 %416, label %420, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 32
  store i32 4194304, ptr %418, align 8
  %419 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 33
  store i32 4194304, ptr %419, align 4
  br label %420

420:                                              ; preds = %417, %413
  %421 = call i32 @arch_randomize_brk(ptr noundef %398) #17
  %422 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 32
  store i32 %421, ptr %422, align 8
  %423 = getelementptr inbounds %struct.anon.8, ptr %398, i32 0, i32 33
  store i32 %421, ptr %423, align 4
  %424 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 49
  %425 = load i8, ptr %424, align 8
  %426 = or i8 %425, 8
  store i8 %426, ptr %424, align 8
  br label %427

427:                                              ; preds = %420, %396
  %428 = load i32, ptr %163, align 16
  %429 = and i32 %428, 1048576
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %427
  %432 = call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 5, i32 noundef 18, i32 noundef 0) #17
  br label %433

433:                                              ; preds = %431, %427
  %434 = call i32 @llvm.read_register.i32(metadata !0)
  %435 = or i32 %434, 8191
  %436 = add nsw i32 %435, -7
  %437 = inttoptr i32 %436 to ptr
  %438 = getelementptr %struct.pt_regs, ptr %437, i32 -1
  store i32 0, ptr %438, align 16
  call void @finalize_exec(ptr noundef %0) #17
  call void @llvm.memset.p0.i32(ptr noundef align 16 dereferenceable(72) %438, i8 0, i32 72, i1 false)
  %439 = load i32, ptr %163, align 16
  %440 = lshr i32 %439, 19
  %441 = and i32 %440, 16
  %442 = getelementptr %struct.pt_regs, ptr %437, i32 -1, i32 0, i32 16
  store i32 %441, ptr %442, align 16
  %443 = load i32, ptr @elf_hwcap, align 4
  %444 = and i32 %443, 4
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %388, 1
  %447 = icmp eq i32 %446, 0
  %448 = select i1 %445, i1 true, i1 %447
  br i1 %448, label %451, label %449

449:                                              ; preds = %433
  %450 = or i32 %441, 32
  store i32 %450, ptr %442, align 16
  br label %451

451:                                              ; preds = %449, %433
  %452 = and i32 %388, -2
  %453 = getelementptr %struct.pt_regs, ptr %437, i32 -1, i32 0, i32 15
  store i32 %452, ptr %453, align 4
  %454 = load i32, ptr %403, align 4
  %455 = getelementptr %struct.pt_regs, ptr %437, i32 -1, i32 0, i32 13
  store i32 %454, ptr %455, align 4
  br label %469

456:                                              ; preds = %385, %376, %360, %337, %298, %287, %270, %253, %205, %174, %146, %143, %139, %136, %133, %95
  %457 = phi ptr [ null, %95 ], [ null, %133 ], [ null, %139 ], [ %151, %146 ], [ %151, %174 ], [ %151, %337 ], [ %151, %376 ], [ null, %143 ], [ null, %136 ], [ %151, %360 ], [ %151, %385 ], [ %151, %270 ], [ %151, %253 ], [ %151, %298 ], [ %151, %287 ], [ %151, %205 ]
  %458 = phi i32 [ %97, %95 ], [ -80, %133 ], [ -80, %139 ], [ %152, %146 ], [ %180, %174 ], [ %356, %337 ], [ %379, %376 ], [ -80, %143 ], [ -80, %136 ], [ -14, %360 ], [ -22, %385 ], [ %273, %270 ], [ %208, %205 ], [ -22, %287 ], [ -22, %298 ], [ -22, %253 ]
  %459 = phi ptr [ %90, %95 ], [ %110, %133 ], [ %110, %139 ], [ %150, %146 ], [ %150, %174 ], [ %150, %337 ], [ %150, %376 ], [ %110, %143 ], [ %110, %136 ], [ %150, %360 ], [ %150, %385 ], [ %150, %270 ], [ %150, %253 ], [ %150, %298 ], [ %150, %287 ], [ %150, %205 ]
  %460 = phi ptr [ %85, %95 ], [ %111, %133 ], [ %111, %139 ], [ %149, %146 ], [ %149, %174 ], [ %149, %337 ], [ %149, %376 ], [ %111, %143 ], [ %111, %136 ], [ %149, %360 ], [ null, %385 ], [ %149, %270 ], [ %149, %253 ], [ %149, %298 ], [ %149, %287 ], [ %149, %205 ]
  call void @kfree(ptr noundef %459) #17
  call void @kfree(ptr noundef %457) #17
  %461 = icmp eq ptr %460, null
  br i1 %461, label %467, label %462

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.file, ptr %460, i32 0, i32 2
  %464 = load ptr, ptr %463, align 8
  %465 = getelementptr inbounds %struct.inode, ptr %464, i32 0, i32 37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %465) #17, !srcloc !11
  %466 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %465, ptr %465, i32 1, ptr elementtype(i32) %465) #17, !srcloc !12
  call void @fput(ptr noundef nonnull %460) #17
  br label %467

467:                                              ; preds = %462, %456, %101, %88, %84, %64, %59
  %468 = phi i32 [ %458, %462 ], [ -12, %88 ], [ %86, %84 ], [ -12, %64 ], [ -8, %59 ], [ %102, %101 ], [ %458, %456 ]
  call void @kfree(ptr noundef nonnull %40) #17
  br label %469

469:                                              ; preds = %467, %451, %393, %387, %52, %20, %16, %13, %8, %1
  %470 = phi i32 [ -8, %1 ], [ -8, %16 ], [ %468, %467 ], [ %391, %387 ], [ %394, %393 ], [ 0, %451 ], [ -8, %20 ], [ -8, %13 ], [ -8, %8 ], [ -8, %52 ]
  ret i32 %470
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elf_core_dump(ptr noundef %0) #2 {
  %2 = alloca %struct.task_cputime, align 8
  %3 = alloca %struct.__kernel_old_timeval, align 8
  %4 = alloca %struct.__kernel_old_timeval, align 8
  %5 = alloca %struct.__kernel_old_timeval, align 8
  %6 = alloca %struct.__kernel_old_timeval, align 8
  %7 = alloca %struct.__kernel_old_timeval, align 8
  %8 = alloca %struct.__kernel_old_timeval, align 8
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.elf32_hdr, align 4
  %13 = alloca %struct.elf_note_info, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.elf32_phdr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 0, ptr %10, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  store i32 0, ptr %11, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %12) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %12, i8 0, i32 52, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %13) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %13, i8 0, i32 204, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #17
  store ptr null, ptr %14, align 4, !annotation !13
  %16 = call i32 @dump_vma_snapshot(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %14, ptr noundef nonnull %11) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %631

18:                                               ; preds = %1
  %19 = load i32, ptr %10, align 4
  %20 = add i32 %19, 1
  %21 = call i32 @llvm.smin.i32(i32 %20, i32 65535)
  %22 = and i32 %21, 65535
  %23 = load ptr, ptr %0, align 8
  %24 = tail call ptr @llvm.thread.pointer() #17
  %25 = call ptr @task_user_regset_view(ptr noundef %24) #17
  %26 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 6
  store i32 0, ptr %26, align 4
  store ptr null, ptr %13, align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 124) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 1, i32 3
  store ptr null, ptr %31, align 4
  br label %595

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 1
  store ptr @.str.4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 1, i32 1
  store i32 3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 1, i32 2
  store i32 124, ptr %35, align 4
  %36 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 1, i32 3
  store ptr %28, ptr %36, align 4
  %37 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 7
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.user_regset_view, ptr %25, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.user_regset_view, ptr %25, i32 0, i32 1
  br label %43

43:                                               ; preds = %54, %41
  %44 = phi i32 [ %39, %41 ], [ %55, %54 ]
  %45 = phi i32 [ 0, %41 ], [ %56, %54 ]
  %46 = phi i32 [ 0, %41 ], [ %57, %54 ]
  %47 = load ptr, ptr %42, align 4
  %48 = getelementptr %struct.user_regset, ptr %47, i32 %46, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = add i32 %45, 1
  store i32 %52, ptr %37, align 4
  %53 = load i32, ptr %38, align 4
  br label %54

54:                                               ; preds = %51, %43
  %55 = phi i32 [ %44, %43 ], [ %53, %51 ]
  %56 = phi i32 [ %45, %43 ], [ %52, %51 ]
  %57 = add nuw i32 %46, 1
  %58 = icmp ult i32 %57, %55
  br i1 %58, label %43, label %59

59:                                               ; preds = %54
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %66, label %61, !prof !10

61:                                               ; preds = %59
  %62 = load ptr, ptr %42, align 4
  %63 = getelementptr inbounds %struct.user_regset, ptr %62, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %67, label %66, !prof !9

66:                                               ; preds = %61, %59, %32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1848, i32 noundef 9, ptr noundef null) #17
  br label %595

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.user_regset_view, ptr %25, i32 0, i32 4
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.user_regset_view, ptr %25, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds i8, ptr %12, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %72, i8 0, i32 44, i1 false) #17
  store i32 1179403647, ptr %12, align 4
  %73 = getelementptr inbounds [16 x i8], ptr %12, i32 0, i32 4
  store i8 1, ptr %73, align 4
  %74 = getelementptr inbounds [16 x i8], ptr %12, i32 0, i32 5
  store i8 1, ptr %74, align 1
  %75 = getelementptr inbounds [16 x i8], ptr %12, i32 0, i32 6
  store i8 1, ptr %75, align 2
  %76 = getelementptr inbounds [16 x i8], ptr %12, i32 0, i32 7
  store i8 0, ptr %76, align 1
  %77 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 1
  store i16 4, ptr %77, align 4
  %78 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 2
  store i16 %69, ptr %78, align 2
  %79 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 3
  store i32 1, ptr %79, align 4
  %80 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 5
  store i32 52, ptr %80, align 4
  %81 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 7
  store i32 %71, ptr %81, align 4
  %82 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 8
  store i16 52, ptr %82, align 4
  %83 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 9
  store i16 32, ptr %83, align 2
  %84 = trunc i32 %21 to i16
  %85 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 10
  store i16 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 93
  %87 = load ptr, ptr %86, align 16
  %88 = getelementptr inbounds %struct.signal_struct, ptr %87, i32 0, i32 13
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.core_state, ptr %89, i32 0, i32 1
  br label %96

91:                                               ; preds = %113
  %92 = load ptr, ptr %13, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %251, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.task_cputime, ptr %2, i32 0, i32 1
  br label %121

96:                                               ; preds = %119, %67
  %97 = phi i32 [ %120, %119 ], [ %56, %67 ]
  %98 = phi ptr [ %117, %119 ], [ %90, %67 ]
  %99 = shl i32 %97, 4
  %100 = add i32 %99, 156
  %101 = call noalias align 64 ptr @__kmalloc(i32 noundef %100, i32 noundef 3520) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %595, label %103, !prof !10

103:                                              ; preds = %96
  %104 = load ptr, ptr %98, align 4
  %105 = getelementptr inbounds %struct.elf_thread_core_info, ptr %101, i32 0, i32 1
  store ptr %104, ptr %105, align 4
  %106 = load ptr, ptr %98, align 4
  %107 = icmp eq ptr %106, %24
  %108 = load ptr, ptr %13, align 4
  br i1 %107, label %113, label %109

109:                                              ; preds = %103
  %110 = icmp eq ptr %108, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %108, align 4
  br label %113

113:                                              ; preds = %111, %109, %103
  %114 = phi ptr [ %112, %111 ], [ null, %109 ], [ %108, %103 ]
  %115 = phi ptr [ %108, %111 ], [ %13, %109 ], [ %13, %103 ]
  store ptr %114, ptr %101, align 64
  store ptr %101, ptr %115, align 4
  %116 = getelementptr inbounds %struct.core_thread, ptr %98, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %91, label %119

119:                                              ; preds = %113
  %120 = load i32, ptr %37, align 4
  br label %96

121:                                              ; preds = %248, %94
  %122 = phi ptr [ %92, %94 ], [ %249, %248 ]
  %123 = load i32, ptr %23, align 4
  %124 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2
  %125 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = trunc i32 %123 to i16
  %128 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 1
  store i16 %127, ptr %128, align 4
  %129 = shl i32 %123, 16
  %130 = ashr exact i32 %129, 16
  store i32 %130, ptr %124, align 4
  %131 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 98, i32 1
  %132 = load i32, ptr %131, align 8
  %133 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 2
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 95
  %135 = load i32, ptr %134, align 8
  %136 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 3
  store i32 %135, ptr %136, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %137 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 55
  %138 = load volatile ptr, ptr %137, align 4
  %139 = call i32 @__task_pid_nr_ns(ptr noundef %138, i32 noundef 0, ptr noundef null) #17
  %140 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 5
  store i32 %139, ptr %140, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %141 = call i32 @__task_pid_nr_ns(ptr noundef %126, i32 noundef 0, ptr noundef null) #17
  %142 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 4
  store i32 %141, ptr %142, align 4
  %143 = call i32 @__task_pid_nr_ns(ptr noundef %126, i32 noundef 2, ptr noundef null) #17
  %144 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 6
  store i32 %143, ptr %144, align 4
  %145 = call i32 @__task_pid_nr_ns(ptr noundef %126, i32 noundef 3, ptr noundef null) #17
  %146 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 7
  store i32 %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 43
  %148 = load i32, ptr %147, align 4
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false) #17, !annotation !13
  call void @thread_group_cputime(ptr noundef %126, ptr noundef nonnull %2) #17
  %151 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %152 = load i64, ptr %95, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %3, i64 noundef %152) #17
  %153 = load i64, ptr %3, align 8
  store i64 %153, ptr %151, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %154 = load i64, ptr %2, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %4, i64 noundef %154) #17
  %155 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %164

156:                                              ; preds = %121
  %157 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 70
  %158 = load i64, ptr %157, align 8
  %159 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 71
  %160 = load i64, ptr %159, align 16
  %161 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %5, i64 noundef %158) #17
  %162 = load i64, ptr %5, align 8
  store i64 %162, ptr %161, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %6, i64 noundef %160) #17
  %163 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %164

164:                                              ; preds = %156, %150
  %165 = phi i64 [ %155, %150 ], [ %163, %156 ]
  %166 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 9
  store i64 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %168 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 93
  %169 = load ptr, ptr %168, align 16
  %170 = getelementptr inbounds %struct.signal_struct, ptr %169, i32 0, i32 29
  %171 = load i64, ptr %170, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %7, i64 noundef %171) #17
  %172 = load i64, ptr %7, align 8
  store i64 %172, ptr %167, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %173 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %174 = load ptr, ptr %168, align 16
  %175 = getelementptr inbounds %struct.signal_struct, ptr %174, i32 0, i32 30
  %176 = load i64, ptr %175, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %8, i64 noundef %176) #17
  %177 = load i64, ptr %8, align 8
  store i64 %177, ptr %173, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  %178 = load ptr, ptr %125, align 4
  %179 = load ptr, ptr %42, align 4
  %180 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 1
  %181 = call i32 @regset_get(ptr noundef %178, ptr noundef %179, i32 noundef 72, ptr noundef %180) #17
  %182 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 3
  store ptr @.str.4, ptr %182, align 4
  %183 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 1, i32 1
  store i32 1, ptr %183, align 4
  %184 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 1, i32 2
  store i32 148, ptr %184, align 4
  %185 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 1, i32 2, i32 0, i32 0, i32 1
  store ptr %124, ptr %185, align 4
  %186 = load i32, ptr %26, align 4
  %187 = add i32 %186, 168
  store i32 %187, ptr %26, align 4
  %188 = load ptr, ptr %42, align 4
  %189 = getelementptr inbounds %struct.user_regset, ptr %188, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %164
  %193 = load ptr, ptr %125, align 4
  %194 = call i32 %190(ptr noundef %193, ptr noundef %188, i32 noundef 1) #17
  br label %195

195:                                              ; preds = %192, %164
  %196 = load i32, ptr %38, align 4
  %197 = icmp ugt i32 %196, 1
  br i1 %197, label %198, label %248

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.elf_thread_core_info, ptr %122, i32 0, i32 2, i32 2
  br label %200

200:                                              ; preds = %244, %198
  %201 = phi i32 [ 1, %198 ], [ %245, %244 ]
  %202 = load ptr, ptr %42, align 4
  %203 = getelementptr %struct.user_regset, ptr %202, i32 %201
  %204 = getelementptr %struct.user_regset, ptr %202, i32 %201, i32 8
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store ptr null, ptr %9, align 4, !annotation !13
  %207 = getelementptr %struct.user_regset, ptr %202, i32 %201, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %200
  %211 = load ptr, ptr %125, align 4
  %212 = call i32 %208(ptr noundef %211, ptr noundef %203, i32 noundef 1) #17
  br label %213

213:                                              ; preds = %210, %200
  %214 = icmp eq i32 %205, 0
  br i1 %214, label %244, label %215

215:                                              ; preds = %213
  %216 = getelementptr %struct.user_regset, ptr %202, i32 %201, i32 2
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %125, align 4
  %221 = call i32 %217(ptr noundef %220, ptr noundef %203) #17
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %244, label %223

223:                                              ; preds = %219, %215
  %224 = load ptr, ptr %125, align 4
  %225 = call i32 @regset_get_alloc(ptr noundef %224, ptr noundef %203, i32 noundef -1, ptr noundef nonnull %9) #17
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %244, label %227

227:                                              ; preds = %223
  br i1 %206, label %228, label %229

228:                                              ; preds = %227
  store i32 1, ptr %199, align 4
  br label %229

229:                                              ; preds = %228, %227
  %230 = phi ptr [ @.str.4, %228 ], [ @.str.6, %227 ]
  %231 = getelementptr %struct.elf_thread_core_info, ptr %122, i32 0, i32 3, i32 %201
  %232 = load ptr, ptr %9, align 4
  store ptr %230, ptr %231, align 4
  %233 = getelementptr %struct.elf_thread_core_info, ptr %122, i32 0, i32 3, i32 %201, i32 1
  store i32 %205, ptr %233, align 4
  %234 = getelementptr %struct.elf_thread_core_info, ptr %122, i32 0, i32 3, i32 %201, i32 2
  store i32 %225, ptr %234, align 4
  %235 = getelementptr %struct.elf_thread_core_info, ptr %122, i32 0, i32 3, i32 %201, i32 3
  store ptr %232, ptr %235, align 4
  %236 = call i32 @strlen(ptr noundef nonnull %230) #17
  %237 = add i32 %236, 16
  %238 = and i32 %237, -4
  %239 = add nuw i32 %225, 3
  %240 = and i32 %239, -4
  %241 = load i32, ptr %26, align 4
  %242 = add i32 %241, %240
  %243 = add i32 %242, %238
  store i32 %243, ptr %26, align 4
  br label %244

244:                                              ; preds = %229, %223, %219, %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  %245 = add nuw i32 %201, 1
  %246 = load i32, ptr %38, align 4
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %200, label %248

248:                                              ; preds = %244, %195
  %249 = load ptr, ptr %122, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %121

251:                                              ; preds = %248, %91
  %252 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 59
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 37
  %255 = load ptr, ptr %254, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(124) %28, i8 0, i32 124, i1 false) #17
  %256 = getelementptr inbounds %struct.anon.8, ptr %255, i32 0, i32 36
  %257 = load i32, ptr %256, align 8
  %258 = getelementptr inbounds %struct.anon.8, ptr %255, i32 0, i32 35
  %259 = load i32, ptr %258, align 4
  %260 = sub i32 %257, %259
  %261 = call i32 @llvm.umin.i32(i32 %260, i32 79) #17
  %262 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 12
  %263 = inttoptr i32 %259 to ptr
  %264 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %263, i32 %261, i32 -1090519040) #20, !srcloc !16
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %273, !prof !9

267:                                              ; preds = %251
  %268 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %269 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %268) #7, !srcloc !17
  %270 = and i32 %269, -13
  %271 = or i32 %270, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %271) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %272 = call i32 @arm_copy_from_user(ptr noundef %262, ptr noundef %263, i32 noundef %261) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %269) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  br label %273

273:                                              ; preds = %267, %251
  %274 = phi i32 [ %272, %267 ], [ %261, %251 ]
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %278, !prof !9

276:                                              ; preds = %273
  %277 = icmp eq i32 %261, 0
  br i1 %277, label %290, label %281

278:                                              ; preds = %273
  %279 = sub i32 %261, %274
  %280 = getelementptr i8, ptr %262, i32 %279
  call void @llvm.memset.p0.i32(ptr align 1 %280, i8 0, i32 %274, i1 false) #17
  br label %351

281:                                              ; preds = %287, %276
  %282 = phi i32 [ %288, %287 ], [ 0, %276 ]
  %283 = getelementptr %struct.elf_prpsinfo, ptr %28, i32 0, i32 12, i32 %282
  %284 = load i8, ptr %283, align 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store i8 32, ptr %283, align 1
  br label %287

287:                                              ; preds = %286, %281
  %288 = add nuw nsw i32 %282, 1
  %289 = icmp eq i32 %288, %261
  br i1 %289, label %290, label %281

290:                                              ; preds = %287, %276
  %291 = getelementptr %struct.elf_prpsinfo, ptr %28, i32 0, i32 12, i32 %261
  store i8 0, ptr %291, align 1
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %292 = getelementptr inbounds %struct.task_struct, ptr %253, i32 0, i32 55
  %293 = load volatile ptr, ptr %292, align 4
  %294 = call i32 @__task_pid_nr_ns(ptr noundef %293, i32 noundef 0, ptr noundef null) #17
  %295 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 8
  store i32 %294, ptr %295, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %296 = call i32 @__task_pid_nr_ns(ptr noundef %253, i32 noundef 0, ptr noundef null) #17
  %297 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 7
  store i32 %296, ptr %297, align 4
  %298 = call i32 @__task_pid_nr_ns(ptr noundef %253, i32 noundef 2, ptr noundef null) #17
  %299 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 9
  store i32 %298, ptr %299, align 4
  %300 = call i32 @__task_pid_nr_ns(ptr noundef %253, i32 noundef 3, ptr noundef null) #17
  %301 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 10
  store i32 %300, ptr %301, align 8
  %302 = getelementptr inbounds %struct.task_struct, ptr %253, i32 0, i32 1
  %303 = load volatile i32, ptr %302, align 8
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %290
  store i8 0, ptr %28, align 8
  br label %311

306:                                              ; preds = %290
  %307 = call i32 @llvm.cttz.i32(i32 %303, i1 true) #17, !range !20
  %308 = add nuw nsw i32 %307, 1
  %309 = trunc i32 %308 to i8
  store i8 %309, ptr %28, align 8
  %310 = icmp ugt i32 %307, 4
  br i1 %310, label %315, label %311

311:                                              ; preds = %306, %305
  %312 = phi i32 [ 0, %305 ], [ %308, %306 ]
  %313 = getelementptr [7 x i8], ptr @.str.7, i32 0, i32 %312
  %314 = load i8, ptr %313, align 1
  br label %315

315:                                              ; preds = %311, %306
  %316 = phi i8 [ %314, %311 ], [ 46, %306 ]
  %317 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 1
  store i8 %316, ptr %317, align 1
  %318 = icmp eq i8 %316, 90
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 2
  store i8 %319, ptr %320, align 2
  %321 = getelementptr inbounds %struct.task_struct, ptr %253, i32 0, i32 15
  %322 = load i32, ptr %321, align 4
  %323 = trunc i32 %322 to i8
  %324 = add i8 %323, -120
  %325 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 3
  store i8 %324, ptr %325, align 1
  %326 = getelementptr inbounds %struct.task_struct, ptr %253, i32 0, i32 4
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 4
  store i32 %327, ptr %328, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %329 = getelementptr inbounds %struct.task_struct, ptr %253, i32 0, i32 82
  %330 = load volatile ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.cred, ptr %330, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = icmp eq i32 %332, -1
  %334 = load i32, ptr @overflowuid, align 4
  %335 = select i1 %333, i32 %334, i32 %332
  %336 = icmp ult i32 %335, 65536
  %337 = select i1 %336, i32 %335, i32 %334
  %338 = trunc i32 %337 to i16
  %339 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 5
  store i16 %338, ptr %339, align 8
  %340 = getelementptr inbounds %struct.cred, ptr %330, i32 0, i32 2
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, -1
  %343 = load i32, ptr @overflowgid, align 4
  %344 = select i1 %342, i32 %343, i32 %341
  %345 = icmp ult i32 %344, 65536
  %346 = select i1 %345, i32 %344, i32 %343
  %347 = trunc i32 %346 to i16
  %348 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 6
  store i16 %347, ptr %348, align 2
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %349 = getelementptr inbounds %struct.elf_prpsinfo, ptr %28, i32 0, i32 11
  %350 = call ptr @__get_task_comm(ptr noundef %349, i32 noundef 16, ptr noundef %253) #17
  br label %351

351:                                              ; preds = %315, %278
  %352 = load ptr, ptr %33, align 4
  %353 = call i32 @strlen(ptr noundef %352) #17
  %354 = add i32 %353, 16
  %355 = and i32 %354, -4
  %356 = load i32, ptr %35, align 4
  %357 = add i32 %356, 3
  %358 = and i32 %357, -4
  %359 = load i32, ptr %26, align 4
  %360 = add i32 %359, %355
  %361 = add i32 %360, %358
  store i32 %361, ptr %26, align 4
  %362 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 2
  %363 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %363, ptr noundef align 4 dereferenceable(32) %23, i32 32, i1 false) #17
  %364 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 5, i32 0, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(96) %364, i8 0, i32 96, i1 false) #17
  store ptr @.str.4, ptr %362, align 4
  %365 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 2, i32 1
  store i32 1397311305, ptr %365, align 4
  %366 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 2, i32 2
  store i32 128, ptr %366, align 4
  %367 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 2, i32 3
  store ptr %363, ptr %367, align 4
  %368 = add i32 %361, 148
  store i32 %368, ptr %26, align 4
  %369 = load ptr, ptr %254, align 4
  %370 = getelementptr inbounds %struct.anon.8, ptr %369, i32 0, i32 39
  br label %371

371:                                              ; preds = %371, %351
  %372 = phi i32 [ 0, %351 ], [ %373, %371 ]
  %373 = add i32 %372, 2
  %374 = getelementptr i32, ptr %370, i32 %372
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %371

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 3
  %379 = shl i32 %373, 2
  store ptr @.str.4, ptr %378, align 4
  %380 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 3, i32 1
  store i32 6, ptr %380, align 4
  %381 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 3, i32 2
  store i32 %379, ptr %381, align 4
  %382 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 3, i32 3
  store ptr %370, ptr %382, align 4
  %383 = add i32 %361, 168
  %384 = add i32 %383, %379
  store i32 %384, ptr %26, align 4
  %385 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 4
  %386 = getelementptr inbounds %struct.anon.8, ptr %369, i32 0, i32 13
  %387 = load i32, ptr %386, align 8
  %388 = icmp ugt i32 %387, 67108863
  br i1 %388, label %480, label %389

389:                                              ; preds = %377
  %390 = mul nuw nsw i32 %387, 12
  %391 = add nuw nsw i32 %390, 8
  %392 = icmp ugt i32 %387, 65535
  br i1 %392, label %480, label %393

393:                                              ; preds = %389
  %394 = shl nuw nsw i32 %387, 6
  br label %395

395:                                              ; preds = %440, %393
  %396 = phi i32 [ %442, %440 ], [ %394, %393 ]
  %397 = add nsw i32 %396, -1
  %398 = or i32 %397, 4095
  %399 = add i32 %398, 1
  %400 = call noalias ptr @kvmalloc_node(i32 noundef %399, i32 noundef 3264, i32 noundef -1) #18
  %401 = icmp ult ptr %400, inttoptr (i32 17 to ptr)
  br i1 %401, label %478, label %402

402:                                              ; preds = %395
  %403 = getelementptr i8, ptr %400, i32 %391
  %404 = load ptr, ptr %369, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %452, label %406

406:                                              ; preds = %402
  %407 = sub i32 %399, %391
  %408 = getelementptr i32, ptr %400, i32 2
  br label %409

409:                                              ; preds = %444, %406
  %410 = phi ptr [ %450, %444 ], [ %404, %406 ]
  %411 = phi ptr [ %448, %444 ], [ %403, %406 ]
  %412 = phi ptr [ %447, %444 ], [ %408, %406 ]
  %413 = phi i32 [ %446, %444 ], [ %407, %406 ]
  %414 = phi i32 [ %445, %444 ], [ 0, %406 ]
  %415 = getelementptr inbounds %struct.vm_area_struct, ptr %410, i32 0, i32 14
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %444, label %418

418:                                              ; preds = %409
  %419 = call ptr @file_path(ptr noundef nonnull %416, ptr noundef %411, i32 noundef %413) #17
  %420 = icmp ugt ptr %419, inttoptr (i32 -4096 to ptr)
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = icmp eq ptr %419, inttoptr (i32 -36 to ptr)
  br i1 %422, label %440, label %444

423:                                              ; preds = %418
  %424 = getelementptr i8, ptr %411, i32 %413
  %425 = ptrtoint ptr %424 to i32
  %426 = ptrtoint ptr %419 to i32
  %427 = sub i32 %425, %426
  %428 = ptrtoint ptr %411 to i32
  %429 = sub i32 %426, %428
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %411, ptr align 1 %419, i32 %427, i1 false) #17
  %430 = getelementptr i8, ptr %411, i32 %427
  %431 = load i32, ptr %410, align 4
  %432 = getelementptr i32, ptr %412, i32 1
  store i32 %431, ptr %412, align 4
  %433 = getelementptr inbounds %struct.vm_area_struct, ptr %410, i32 0, i32 1
  %434 = load i32, ptr %433, align 4
  %435 = getelementptr i32, ptr %412, i32 2
  store i32 %434, ptr %432, align 4
  %436 = getelementptr inbounds %struct.vm_area_struct, ptr %410, i32 0, i32 13
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr i32, ptr %412, i32 3
  store i32 %437, ptr %435, align 4
  %439 = add i32 %414, 1
  br label %444

440:                                              ; preds = %421
  call void @kvfree(ptr noundef %400) #17
  %441 = mul i32 %399, 5
  %442 = lshr exact i32 %441, 2
  %443 = icmp ugt i32 %441, 16777212
  br i1 %443, label %478, label %395

444:                                              ; preds = %423, %421, %409
  %445 = phi i32 [ %414, %421 ], [ %414, %409 ], [ %439, %423 ]
  %446 = phi i32 [ %413, %421 ], [ %413, %409 ], [ %429, %423 ]
  %447 = phi ptr [ %412, %421 ], [ %412, %409 ], [ %438, %423 ]
  %448 = phi ptr [ %411, %421 ], [ %411, %409 ], [ %430, %423 ]
  %449 = getelementptr inbounds %struct.vm_area_struct, ptr %410, i32 0, i32 2
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %409

452:                                              ; preds = %444, %402
  %453 = phi i32 [ %445, %444 ], [ 0, %402 ]
  %454 = phi ptr [ %448, %444 ], [ %403, %402 ]
  %455 = ptrtoint ptr %400 to i32
  store i32 %453, ptr %400, align 4
  %456 = getelementptr i32, ptr %400, i32 1
  store i32 4096, ptr %456, align 4
  %457 = load i32, ptr %386, align 8
  %458 = icmp eq i32 %457, %453
  br i1 %458, label %467, label %459

459:                                              ; preds = %452
  %460 = sub i32 %457, %453
  %461 = mul i32 %460, -12
  %462 = getelementptr i8, ptr %403, i32 %461
  %463 = ptrtoint ptr %454 to i32
  %464 = ptrtoint ptr %403 to i32
  %465 = sub i32 %463, %464
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %462, ptr align 1 %403, i32 %465, i1 false) #17
  %466 = getelementptr i8, ptr %454, i32 %461
  br label %467

467:                                              ; preds = %459, %452
  %468 = phi ptr [ %466, %459 ], [ %454, %452 ]
  %469 = ptrtoint ptr %468 to i32
  %470 = sub i32 %469, %455
  store ptr @.str.4, ptr %385, align 4
  %471 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 4, i32 1
  store i32 1179208773, ptr %471, align 4
  %472 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 4, i32 2
  store i32 %470, ptr %472, align 4
  %473 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 4, i32 3
  store ptr %400, ptr %473, align 4
  %474 = load i32, ptr %26, align 4
  %475 = add i32 %470, 23
  %476 = and i32 %475, -4
  %477 = add i32 %476, %474
  store i32 %477, ptr %26, align 4
  br label %480

478:                                              ; preds = %440, %395
  %479 = load i32, ptr %26, align 4
  br label %480

480:                                              ; preds = %478, %467, %389, %377
  %481 = phi i32 [ %479, %478 ], [ %477, %467 ], [ %384, %377 ], [ %384, %389 ]
  %482 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %483 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %482, i32 noundef 3264, i32 noundef 32) #19
  %484 = icmp eq ptr %483, null
  br i1 %484, label %595, label %485

485:                                              ; preds = %480
  %486 = shl i32 %20, 5
  %487 = zext i32 %486 to i64
  %488 = add i32 %486, 52
  store i32 4, ptr %483, align 8
  %489 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 1
  store i32 %488, ptr %489, align 4
  %490 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 2
  store i32 0, ptr %490, align 8
  %491 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 3
  store i32 0, ptr %491, align 4
  %492 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 4
  store i32 %481, ptr %492, align 8
  %493 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 5
  store i32 0, ptr %493, align 4
  %494 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 6
  store i32 0, ptr %494, align 8
  %495 = getelementptr inbounds %struct.elf32_phdr, ptr %483, i32 0, i32 7
  store i32 0, ptr %495, align 4
  %496 = zext i32 %481 to i64
  %497 = add nuw nsw i64 %487, 4147
  %498 = add nuw nsw i64 %497, %496
  %499 = and i64 %498, 17179865088
  %500 = load i32, ptr %11, align 4
  %501 = trunc i64 %499 to i32
  %502 = add i32 %500, %501
  %503 = icmp eq i32 %22, 65535
  br i1 %503, label %504, label %515

504:                                              ; preds = %485
  %505 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %506 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %505, i32 noundef 3264, i32 noundef 40) #19
  %507 = icmp eq ptr %506, null
  br i1 %507, label %595, label %508

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 6
  store i32 %502, ptr %509, align 4
  %510 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 11
  store i16 40, ptr %510, align 2
  %511 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 12
  store i16 1, ptr %511, align 4
  %512 = getelementptr inbounds %struct.elf32_hdr, ptr %12, i32 0, i32 13
  store i16 0, ptr %512, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %506, i8 0, i64 40, i1 false) #17
  %513 = getelementptr inbounds %struct.elf32_shdr, ptr %506, i32 0, i32 5
  store i32 1, ptr %513, align 4
  %514 = getelementptr inbounds %struct.elf32_shdr, ptr %506, i32 0, i32 7
  store i32 %20, ptr %514, align 4
  br label %515

515:                                              ; preds = %508, %485
  %516 = phi ptr [ %506, %508 ], [ null, %485 ]
  %517 = call i32 @dump_emit(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 52) #17
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %595, label %519

519:                                              ; preds = %515
  %520 = call i32 @dump_emit(ptr noundef %0, ptr noundef nonnull %483, i32 noundef 32) #17
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %595, label %522

522:                                              ; preds = %519
  %523 = load i32, ptr %10, align 4
  %524 = icmp sgt i32 %523, 0
  br i1 %524, label %525, label %573

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 1
  %527 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 2
  %528 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 3
  %529 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 4
  %530 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 5
  %531 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 6
  %532 = getelementptr inbounds %struct.elf32_phdr, ptr %15, i32 0, i32 7
  %533 = getelementptr inbounds i8, ptr %15, i32 8
  br label %538

534:                                              ; preds = %570
  %535 = add nuw nsw i32 %540, 1
  %536 = load i32, ptr %10, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %573

538:                                              ; preds = %534, %525
  %539 = phi i64 [ %499, %525 ], [ %552, %534 ]
  %540 = phi i32 [ 0, %525 ], [ %535, %534 ]
  %541 = load ptr, ptr %14, align 4
  %542 = getelementptr %struct.core_vma_metadata, ptr %541, i32 %540
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %533, i8 0, i32 24, i1 false), !annotation !13
  store i32 1, ptr %15, align 4
  %543 = trunc i64 %539 to i32
  store i32 %543, ptr %526, align 4
  %544 = load i32, ptr %542, align 4
  store i32 %544, ptr %527, align 4
  store i32 0, ptr %528, align 4
  %545 = getelementptr %struct.core_vma_metadata, ptr %541, i32 %540, i32 3
  %546 = load i32, ptr %545, align 4
  store i32 %546, ptr %529, align 4
  %547 = getelementptr %struct.core_vma_metadata, ptr %541, i32 %540, i32 1
  %548 = load i32, ptr %547, align 4
  %549 = load i32, ptr %542, align 4
  %550 = sub i32 %548, %549
  store i32 %550, ptr %530, align 4
  %551 = zext i32 %546 to i64
  %552 = add i64 %539, %551
  store i32 0, ptr %531, align 4
  %553 = getelementptr %struct.core_vma_metadata, ptr %541, i32 %540, i32 2
  %554 = load i32, ptr %553, align 4
  %555 = shl i32 %554, 2
  %556 = and i32 %555, 4
  store i32 %556, ptr %531, align 4
  %557 = load i32, ptr %553, align 4
  %558 = and i32 %557, 2
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %563, label %560

560:                                              ; preds = %538
  %561 = or i32 %556, 2
  store i32 %561, ptr %531, align 4
  %562 = load i32, ptr %553, align 4
  br label %563

563:                                              ; preds = %560, %538
  %564 = phi i32 [ %561, %560 ], [ %556, %538 ]
  %565 = phi i32 [ %562, %560 ], [ %557, %538 ]
  %566 = and i32 %565, 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %570, label %568

568:                                              ; preds = %563
  %569 = or i32 %564, 1
  store i32 %569, ptr %531, align 4
  br label %570

570:                                              ; preds = %568, %563
  store i32 4096, ptr %532, align 4
  %571 = call i32 @dump_emit(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 32) #17
  %572 = icmp eq i32 %571, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #17
  br i1 %572, label %595, label %534

573:                                              ; preds = %534, %522
  %574 = call fastcc i32 @write_note_info(ptr noundef nonnull %13, ptr noundef %0)
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %595, label %576

576:                                              ; preds = %573
  call void @dump_skip_to(ptr noundef %0, i32 noundef %501) #17
  %577 = load i32, ptr %10, align 4
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %583, label %592

579:                                              ; preds = %583
  %580 = add nuw nsw i32 %584, 1
  %581 = load i32, ptr %10, align 4
  %582 = icmp slt i32 %580, %581
  br i1 %582, label %583, label %592

583:                                              ; preds = %579, %576
  %584 = phi i32 [ %580, %579 ], [ 0, %576 ]
  %585 = load ptr, ptr %14, align 4
  %586 = getelementptr %struct.core_vma_metadata, ptr %585, i32 %584
  %587 = load i32, ptr %586, align 4
  %588 = getelementptr %struct.core_vma_metadata, ptr %585, i32 %584, i32 3
  %589 = load i32, ptr %588, align 4
  %590 = call i32 @dump_user_range(ptr noundef %0, i32 noundef %587, i32 noundef %589) #17
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %595, label %579

592:                                              ; preds = %579, %576
  br i1 %503, label %593, label %595

593:                                              ; preds = %592
  %594 = call i32 @dump_emit(ptr noundef %0, ptr noundef %516, i32 noundef 40) #17
  br label %595

595:                                              ; preds = %593, %592, %583, %573, %570, %519, %515, %504, %480, %96, %66, %30
  %596 = phi ptr [ %483, %593 ], [ %483, %592 ], [ %483, %573 ], [ %483, %519 ], [ %483, %515 ], [ %483, %504 ], [ null, %30 ], [ null, %66 ], [ null, %480 ], [ %483, %583 ], [ %483, %570 ], [ null, %96 ]
  %597 = phi ptr [ %516, %593 ], [ %516, %592 ], [ %516, %573 ], [ %516, %519 ], [ %516, %515 ], [ null, %504 ], [ null, %30 ], [ null, %66 ], [ null, %480 ], [ %516, %583 ], [ %516, %570 ], [ null, %96 ]
  %598 = phi i32 [ 1, %593 ], [ 1, %592 ], [ 1, %573 ], [ 1, %519 ], [ 1, %515 ], [ 1, %504 ], [ 0, %30 ], [ 0, %66 ], [ 1, %480 ], [ 1, %583 ], [ 1, %570 ], [ 0, %96 ]
  %599 = load ptr, ptr %13, align 4
  %600 = icmp eq ptr %599, null
  br i1 %600, label %625, label %601

601:                                              ; preds = %595
  %602 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 7
  br label %603

603:                                              ; preds = %623, %601
  %604 = phi ptr [ %599, %601 ], [ %605, %623 ]
  %605 = load ptr, ptr %604, align 4
  %606 = getelementptr inbounds %struct.elf_thread_core_info, ptr %604, i32 1, i32 2, i32 0, i32 0, i32 1
  %607 = load ptr, ptr %606, align 4
  %608 = icmp ne ptr %607, null
  %609 = getelementptr inbounds %struct.elf_thread_core_info, ptr %604, i32 0, i32 2
  %610 = icmp ne ptr %607, %609
  %611 = select i1 %608, i1 %610, i1 false
  br i1 %611, label %612, label %613, !prof !10

612:                                              ; preds = %603
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1957, i32 noundef 9, ptr noundef null) #17
  br label %613

613:                                              ; preds = %612, %603
  %614 = load i32, ptr %602, align 4
  %615 = icmp ugt i32 %614, 1
  br i1 %615, label %616, label %623

616:                                              ; preds = %616, %613
  %617 = phi i32 [ %620, %616 ], [ 1, %613 ]
  %618 = getelementptr %struct.elf_thread_core_info, ptr %604, i32 0, i32 3, i32 %617, i32 3
  %619 = load ptr, ptr %618, align 4
  call void @kfree(ptr noundef %619) #17
  %620 = add nuw i32 %617, 1
  %621 = load i32, ptr %602, align 4
  %622 = icmp ult i32 %620, %621
  br i1 %622, label %616, label %623

623:                                              ; preds = %616, %613
  call void @kfree(ptr noundef nonnull %604) #17
  %624 = icmp eq ptr %605, null
  br i1 %624, label %625, label %603

625:                                              ; preds = %623, %595
  %626 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 1, i32 3
  %627 = load ptr, ptr %626, align 4
  call void @kfree(ptr noundef %627) #17
  %628 = getelementptr inbounds %struct.elf_note_info, ptr %13, i32 0, i32 4, i32 3
  %629 = load ptr, ptr %628, align 4
  call void @kvfree(ptr noundef %629) #17
  call void @kfree(ptr noundef %597) #17
  %630 = load ptr, ptr %14, align 4
  call void @kvfree(ptr noundef %630) #17
  call void @kfree(ptr noundef %596) #17
  br label %631

631:                                              ; preds = %625, %1
  %632 = phi i32 [ %598, %625 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  ret i32 %632
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elf_check_arch(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @load_elf_phdrs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 32
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 10
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = shl nuw nsw i32 %10, 5
  %12 = add i16 %9, -129
  %13 = icmp ult i16 %12, -128
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %20, ptr %3, align 8
  %21 = call i32 @kernel_read(ptr noundef %1, ptr noundef nonnull %15, i32 noundef %11, ptr noundef nonnull %3) #17
  %22 = icmp eq i32 %21, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br i1 %22, label %25, label %23, !prof !9

23:                                               ; preds = %17, %14, %7, %2
  %24 = phi ptr [ null, %14 ], [ null, %7 ], [ null, %2 ], [ %15, %17 ]
  call void @kfree(ptr noundef %24) #17
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ null, %23 ], [ %15, %17 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @would_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @begin_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elf_set_personality(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_elf_read_implies_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_arg_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @randomize_stack_top(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_brk(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = add i32 %0, 4095
  %5 = and i32 %4, -4096
  %6 = add i32 %1, 4095
  %7 = and i32 %6, -4096
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = sub i32 %7, %5
  %11 = and i32 %2, 4
  %12 = tail call i32 @vm_brk_flags(i32 noundef %5, i32 noundef %10, i32 noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9, %3
  %15 = tail call ptr @llvm.thread.pointer() #17
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.anon.8, ptr %17, i32 0, i32 33
  store i32 %7, ptr %18, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.anon.8, ptr %19, i32 0, i32 32
  store i32 %7, ptr %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i32 [ %12, %9 ], [ 0, %14 ]
  ret i32 %22
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clear_user(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #20, !srcloc !21
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #7, !srcloc !17
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %12 = tail call i32 @arm_clear_user(ptr noundef %0, i32 noundef %1) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %12, %6 ], [ %1, %2 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @maximum_alignment(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %19, %2
  %5 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %6 = phi i32 [ %21, %19 ], [ 0, %2 ]
  %7 = getelementptr %struct.elf32_phdr, ptr %0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr %struct.elf32_phdr, ptr %0, i32 %6, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #17, !range !20
  %16 = icmp ult i32 %15, 2
  %17 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %18 = select i1 %16, i32 %17, i32 %5
  br label %19

19:                                               ; preds = %14, %10, %4
  %20 = phi i32 [ %5, %4 ], [ %5, %10 ], [ %18, %14 ]
  %21 = add nuw nsw i32 %6, 1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %4

23:                                               ; preds = %19, %2
  %24 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %25 = add i32 %24, 4095
  %26 = and i32 %25, -4096
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_mmap_rnd() local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @total_mapping_size(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %14, %4 ], [ -1, %2 ]
  %6 = phi i32 [ %13, %4 ], [ -1, %2 ]
  %7 = phi i32 [ %15, %4 ], [ 0, %2 ]
  %8 = getelementptr %struct.elf32_phdr, ptr %0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = icmp eq i32 %6, -1
  %12 = select i1 %10, i1 %11, i1 false
  %13 = select i1 %12, i32 %7, i32 %6
  %14 = select i1 %10, i32 %7, i32 %5
  %15 = add nuw nsw i32 %7, 1
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %4

17:                                               ; preds = %4
  %18 = icmp eq i32 %13, -1
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  %20 = getelementptr %struct.elf32_phdr, ptr %0, i32 %14, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.elf32_phdr, ptr %0, i32 %14, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr %struct.elf32_phdr, ptr %0, i32 %13, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -4096
  %28 = sub i32 %24, %27
  br label %29

29:                                               ; preds = %19, %17, %2
  %30 = phi i32 [ %28, %19 ], [ 0, %17 ], [ 0, %2 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elf_map(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.elf32_phdr, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elf32_phdr, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4095
  %12 = getelementptr inbounds %struct.elf32_phdr, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %11
  %15 = and i32 %1, -4096
  %16 = add i32 %8, 4095
  %17 = add i32 %16, %11
  %18 = and i32 %17, -4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %6
  %21 = icmp eq i32 %5, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = add i32 %5, 4095
  %24 = and i32 %23, -4096
  %25 = tail call i32 @vm_mmap(ptr noundef %0, i32 noundef %15, i32 noundef %24, i32 noundef %3, i32 noundef %4, i32 noundef %14) #17
  %26 = icmp ugt i32 %25, -1090519041
  br i1 %26, label %33, label %27, !prof !10

27:                                               ; preds = %22
  %28 = add i32 %25, %18
  %29 = sub i32 %24, %18
  %30 = tail call i32 @vm_munmap(i32 noundef %28, i32 noundef %29) #17
  br label %46

31:                                               ; preds = %20
  %32 = tail call i32 @vm_mmap(ptr noundef %0, i32 noundef %15, i32 noundef %18, i32 noundef %3, i32 noundef %4, i32 noundef %14) #17
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ %25, %22 ], [ %32, %31 ]
  %35 = and i32 %4, 1048576
  %36 = icmp ne i32 %35, 0
  %37 = icmp eq i32 %34, -17
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = tail call ptr @llvm.thread.pointer() #17
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 52
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 85
  %44 = inttoptr i32 %15 to ptr
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %42, ptr noundef %43, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %39, %33, %27, %6
  %47 = phi i32 [ %15, %6 ], [ -17, %39 ], [ %34, %33 ], [ %25, %27 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @padzero(i32 noundef %0) unnamed_addr #2 {
  %2 = and i32 %0, 4095
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = sub nuw nsw i32 4096, %2
  %6 = inttoptr i32 %0 to ptr
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %5, i32 -1090519040) #20, !srcloc !21
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #17
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #7, !srcloc !17
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %16 = tail call i32 @arm_clear_user(ptr noundef %6, i32 noundef %5) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %1
  br label %19

19:                                               ; preds = %18, %10, %4
  %20 = phi i32 [ 0, %18 ], [ -14, %10 ], [ -14, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_elf_interp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %161

9:                                                ; preds = %4
  %10 = tail call i32 @elf_check_arch(ptr noundef %0) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %161, label %12

12:                                               ; preds = %9
  %13 = getelementptr [16 x i8], ptr %0, i32 0, i32 7
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 65
  br i1 %15, label %161, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.file_operations, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %161, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 10
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i16 %24, 0
  br i1 %26, label %161, label %27

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %37, %27 ], [ -1, %22 ]
  %29 = phi i32 [ %36, %27 ], [ -1, %22 ]
  %30 = phi i32 [ %38, %27 ], [ 0, %22 ]
  %31 = getelementptr %struct.elf32_phdr, ptr %3, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = icmp eq i32 %29, -1
  %35 = select i1 %33, i1 %34, i1 false
  %36 = select i1 %35, i32 %30, i32 %29
  %37 = select i1 %33, i32 %30, i32 %28
  %38 = add nuw nsw i32 %30, 1
  %39 = icmp eq i32 %38, %25
  br i1 %39, label %40, label %27

40:                                               ; preds = %27
  %41 = icmp eq i32 %36, -1
  br i1 %41, label %161, label %42

42:                                               ; preds = %40
  %43 = getelementptr %struct.elf32_phdr, ptr %3, i32 %37, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.elf32_phdr, ptr %3, i32 %37, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = getelementptr %struct.elf32_phdr, ptr %3, i32 %36, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -4096
  %51 = sub i32 %47, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %161, label %53

53:                                               ; preds = %42
  %54 = icmp ne i32 %2, 0
  br label %55

55:                                               ; preds = %120, %53
  %56 = phi i16 [ %24, %53 ], [ %121, %120 ]
  %57 = phi i32 [ 0, %53 ], [ %128, %120 ]
  %58 = phi i32 [ %51, %53 ], [ %127, %120 ]
  %59 = phi i32 [ 0, %53 ], [ %126, %120 ]
  %60 = phi i32 [ 0, %53 ], [ %125, %120 ]
  %61 = phi i32 [ 0, %53 ], [ %124, %120 ]
  %62 = phi i32 [ 0, %53 ], [ %123, %120 ]
  %63 = phi i32 [ 0, %53 ], [ %122, %120 ]
  %64 = phi ptr [ %3, %53 ], [ %129, %120 ]
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %120

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.elf32_phdr, ptr %64, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = trunc i32 %69 to i3
  %71 = tail call i3 @llvm.bitreverse.i3(i3 %70) #17
  %72 = zext i3 %71 to i32
  %73 = getelementptr inbounds %struct.elf32_phdr, ptr %64, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = load i16, ptr %5, align 4
  %76 = icmp eq i16 %75, 2
  %77 = icmp ne i32 %62, 0
  %78 = select i1 %76, i1 true, i1 %77
  %79 = icmp eq i16 %75, 3
  %80 = select i1 %54, i1 %79, i1 false
  %81 = sub i32 0, %74
  %82 = select i1 %80, i32 %81, i32 %63
  %83 = select i1 %78, i32 %63, i32 %82
  %84 = select i1 %78, i32 18, i32 2
  %85 = add i32 %83, %74
  %86 = tail call fastcc i32 @elf_map(ptr noundef %1, i32 noundef %85, ptr noundef %64, i32 noundef %72, i32 noundef %84, i32 noundef %58)
  %87 = icmp ugt i32 %86, -1090519041
  br i1 %87, label %161, label %88, !prof !10

88:                                               ; preds = %67
  br i1 %77, label %95, label %89

89:                                               ; preds = %88
  %90 = load i16, ptr %5, align 4
  %91 = icmp eq i16 %90, 3
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = and i32 %74, -4096
  %94 = sub i32 %86, %93
  br label %95

95:                                               ; preds = %92, %89, %88
  %96 = phi i32 [ %83, %88 ], [ %94, %92 ], [ %83, %89 ]
  %97 = phi i32 [ 1, %88 ], [ 1, %92 ], [ 0, %89 ]
  %98 = load i32, ptr %73, align 4
  %99 = add i32 %98, %96
  %100 = icmp ugt i32 %99, -1090519041
  br i1 %100, label %161, label %101, !prof !10

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.elf32_phdr, ptr %64, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.elf32_phdr, ptr %64, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %103, %105
  %107 = icmp ugt i32 %105, -1090519040
  %108 = or i1 %106, %107
  %109 = sub i32 -1090519040, %105
  %110 = icmp ult i32 %109, %99
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %161, label %112

112:                                              ; preds = %101
  %113 = add i32 %103, %99
  %114 = tail call i32 @llvm.umax.i32(i32 %113, i32 %60)
  %115 = add i32 %105, %99
  %116 = icmp ugt i32 %115, %61
  %117 = tail call i32 @llvm.umax.i32(i32 %115, i32 %61)
  %118 = select i1 %116, i32 %72, i32 %59
  %119 = load i16, ptr %23, align 4
  br label %120

120:                                              ; preds = %112, %55
  %121 = phi i16 [ %119, %112 ], [ %56, %55 ]
  %122 = phi i32 [ %96, %112 ], [ %63, %55 ]
  %123 = phi i32 [ %97, %112 ], [ %62, %55 ]
  %124 = phi i32 [ %117, %112 ], [ %61, %55 ]
  %125 = phi i32 [ %114, %112 ], [ %60, %55 ]
  %126 = phi i32 [ %118, %112 ], [ %59, %55 ]
  %127 = phi i32 [ 0, %112 ], [ %58, %55 ]
  %128 = add nuw nsw i32 %57, 1
  %129 = getelementptr %struct.elf32_phdr, ptr %64, i32 1
  %130 = zext i16 %121 to i32
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %55, label %132

132:                                              ; preds = %120
  %133 = and i32 %125, 4095
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %132
  %136 = sub nuw nsw i32 4096, %133
  %137 = inttoptr i32 %125 to ptr
  %138 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %137, i32 %136, i32 -1090519040) #20, !srcloc !21
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %135
  %142 = tail call ptr @llvm.thread.pointer() #17
  %143 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 3
  %144 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %143) #7, !srcloc !17
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %147 = tail call i32 @arm_clear_user(ptr noundef %137, i32 noundef %136) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %141, %132
  %150 = add i32 %125, 4095
  %151 = and i32 %150, -4096
  %152 = add i32 %124, 4095
  %153 = and i32 %152, -4096
  %154 = icmp ugt i32 %153, %151
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = sub i32 %153, %151
  %157 = and i32 %126, 4
  %158 = tail call i32 @vm_brk_flags(i32 noundef %151, i32 noundef %156, i32 noundef %157) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155, %149
  br label %161

161:                                              ; preds = %160, %155, %141, %135, %101, %95, %67, %42, %40, %22, %16, %12, %9, %4
  %162 = phi i32 [ -1, %12 ], [ %158, %155 ], [ %122, %160 ], [ -1, %16 ], [ -1, %9 ], [ -1, %4 ], [ -22, %42 ], [ -22, %40 ], [ -22, %22 ], [ -14, %141 ], [ -14, %135 ], [ %86, %67 ], [ -12, %101 ], [ -12, %95 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_setup_additional_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_elf_tables(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [16 x i8], align 1
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !13
  %16 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @strlen(ptr noundef nonnull @elf_platform)
  %19 = add i32 %18, 1
  %20 = sub i32 %11, %19
  %21 = inttoptr i32 %20 to ptr
  %22 = icmp slt i32 %19, 0
  %23 = load i1, ptr @check_copy_size.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %5
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %27

27:                                               ; preds = %26, %5
  br i1 %22, label %276, label %28, !prof !10

28:                                               ; preds = %27
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %19, i32 -1090519040) #20, !srcloc !22
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #7, !srcloc !17
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %37 = tail call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull @elf_platform, i32 noundef %19) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i32 [ %37, %32 ], [ %19, %28 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %276

41:                                               ; preds = %38
  call void @get_random_bytes(ptr noundef nonnull %6, i32 noundef 16) #17
  %42 = add i32 %20, -16
  %43 = inttoptr i32 %42 to ptr
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 16, i32 -1090519040) #20, !srcloc !22
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %276

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %52 = call i32 @arm_copy_to_user(ptr noundef %43, ptr noundef nonnull %6, i32 noundef 16) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %276

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 39
  %56 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 1
  store i32 33, ptr %55, align 4
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.anon.8, ptr %57, i32 0, i32 42, i32 3
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 2
  store i32 %59, ptr %56, align 4
  %61 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 3
  store i32 16, ptr %60, align 4
  %62 = load i32, ptr @elf_hwcap, align 4
  %63 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 4
  store i32 %62, ptr %61, align 4
  %64 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 5
  store i32 6, ptr %63, align 4
  %65 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 6
  store i32 4096, ptr %64, align 4
  %66 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 7
  store i32 17, ptr %65, align 4
  %67 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 8
  store i32 100, ptr %66, align 4
  %68 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 9
  store i32 3, ptr %67, align 4
  %69 = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %2
  %72 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 10
  store i32 %71, ptr %68, align 4
  %73 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 11
  store i32 4, ptr %72, align 4
  %74 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 12
  store i32 32, ptr %73, align 4
  %75 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 13
  store i32 5, ptr %74, align 4
  %76 = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %77 = load i16, ptr %76, align 4
  %78 = zext i16 %77 to i32
  %79 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 14
  store i32 %78, ptr %75, align 4
  %80 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 15
  store i32 7, ptr %79, align 4
  %81 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 16
  store i32 %3, ptr %80, align 4
  %82 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 17
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %83, 3
  %85 = and i32 %84, 1
  %86 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 17
  store i32 8, ptr %81, align 4
  %87 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 18
  store i32 %85, ptr %86, align 4
  %88 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 19
  store i32 9, ptr %87, align 4
  %89 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 20
  store i32 %4, ptr %88, align 4
  %90 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 21
  store i32 11, ptr %89, align 4
  %91 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, -1
  %94 = load i32, ptr @overflowuid, align 4
  %95 = select i1 %93, i32 %94, i32 %92
  %96 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 22
  store i32 %95, ptr %90, align 4
  %97 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 23
  store i32 12, ptr %96, align 4
  %98 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, -1
  %101 = load i32, ptr @overflowuid, align 4
  %102 = select i1 %100, i32 %101, i32 %99
  %103 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 24
  store i32 %102, ptr %97, align 4
  %104 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 25
  store i32 13, ptr %103, align 4
  %105 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, -1
  %108 = load i32, ptr @overflowgid, align 4
  %109 = select i1 %107, i32 %108, i32 %106
  %110 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 26
  store i32 %109, ptr %104, align 4
  %111 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 27
  store i32 14, ptr %110, align 4
  %112 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, -1
  %115 = load i32, ptr @overflowgid, align 4
  %116 = select i1 %114, i32 %115, i32 %113
  %117 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 28
  store i32 %116, ptr %111, align 4
  %118 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 29
  store i32 23, ptr %117, align 4
  %119 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 5
  %120 = load i8, ptr %119, align 4
  %121 = lshr i8 %120, 2
  %122 = and i8 %121, 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 30
  store i32 %123, ptr %118, align 4
  %125 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 31
  store i32 25, ptr %124, align 4
  %126 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 32
  store i32 %42, ptr %125, align 4
  %127 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 33
  store i32 26, ptr %126, align 4
  %128 = load i32, ptr @elf_hwcap2, align 4
  %129 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 34
  store i32 %128, ptr %127, align 4
  %130 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 35
  store i32 31, ptr %129, align 4
  %131 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 20
  %132 = load i32, ptr %131, align 4
  store i32 %132, ptr %130, align 4
  %133 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 36
  %134 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 37
  store i32 15, ptr %133, align 4
  %135 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 38
  store i32 %20, ptr %134, align 4
  %136 = load i8, ptr %119, align 4
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %54
  %140 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 39
  store i32 2, ptr %135, align 4
  %141 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 18
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 39, i32 40
  store i32 %142, ptr %140, align 4
  br label %144

144:                                              ; preds = %139, %54
  %145 = phi ptr [ %143, %139 ], [ %135, %54 ]
  %146 = getelementptr %struct.anon.8, ptr %9, i32 0, i32 40
  %147 = ptrtoint ptr %146 to i32
  %148 = ptrtoint ptr %145 to i32
  %149 = sub i32 %147, %148
  call void @llvm.memset.p0.i32(ptr align 4 %145, i8 0, i32 %149, i1 false)
  %150 = getelementptr i32, ptr %145, i32 2
  %151 = ptrtoint ptr %150 to i32
  %152 = ptrtoint ptr %55 to i32
  %153 = sub i32 %151, %152
  %154 = ashr exact i32 %153, 2
  %155 = sub nsw i32 0, %154
  %156 = getelementptr i32, ptr %43, i32 %155
  %157 = add i32 %13, %15
  %158 = sub i32 -3, %157
  %159 = getelementptr i32, ptr %156, i32 %158
  %160 = ptrtoint ptr %159 to i32
  %161 = and i32 %160, -16
  store i32 %161, ptr %10, align 4
  %162 = inttoptr i32 %161 to ptr
  %163 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %144
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %9, i1 noundef zeroext false) #17
  br label %166

166:                                              ; preds = %165, %144
  %167 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 15
  %168 = call i32 @down_read_killable(ptr noundef %167) #17
  %169 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = icmp eq i32 %168, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext %172) #17
  br label %173

173:                                              ; preds = %171, %166
  %174 = icmp eq i32 %168, 0
  br i1 %174, label %175, label %276

175:                                              ; preds = %173
  %176 = load i32, ptr %10, align 4
  %177 = call ptr @find_extend_vma(ptr noundef %9, i32 noundef %176) #17
  %178 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  call void @__mmap_lock_do_trace_released(ptr noundef %9, i1 noundef zeroext false) #17
  br label %181

181:                                              ; preds = %180, %175
  call void @up_read(ptr noundef %167) #17
  %182 = icmp eq ptr %177, null
  br i1 %182, label %276, label %183

183:                                              ; preds = %181
  %184 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %185 = and i32 %184, -13
  %186 = or i32 %185, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %186) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %187 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %162, i32 %13, i32 -1090519041) #17, !srcloc !23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %276

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 35
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 36
  store i32 %191, ptr %192, align 8
  %193 = getelementptr i32, ptr %162, i32 1
  %194 = icmp sgt i32 %13, 0
  br i1 %194, label %200, label %214

195:                                              ; preds = %209
  %196 = add i32 %211, %203
  %197 = add nsw i32 %201, -1
  %198 = getelementptr i32, ptr %202, i32 1
  %199 = icmp sgt i32 %201, 1
  br i1 %199, label %200, label %214

200:                                              ; preds = %195, %189
  %201 = phi i32 [ %197, %195 ], [ %13, %189 ]
  %202 = phi ptr [ %198, %195 ], [ %193, %189 ]
  %203 = phi i32 [ %196, %195 ], [ %191, %189 ]
  %204 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %205 = and i32 %204, -13
  %206 = or i32 %205, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %206) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %207 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %202, i32 %203, i32 -1090519041) #17, !srcloc !24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %204) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %276

209:                                              ; preds = %200
  %210 = inttoptr i32 %203 to ptr
  %211 = call i32 @strnlen_user(ptr noundef %210, i32 noundef 131072) #17
  %212 = add i32 %211, -131073
  %213 = icmp ult i32 %212, -131072
  br i1 %213, label %276, label %195

214:                                              ; preds = %195, %189
  %215 = phi ptr [ %162, %189 ], [ %202, %195 ]
  %216 = phi i32 [ %191, %189 ], [ %196, %195 ]
  %217 = phi ptr [ %193, %189 ], [ %198, %195 ]
  %218 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %219 = and i32 %218, -13
  %220 = or i32 %219, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %220) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %221 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %217, i32 0, i32 -1090519041) #17, !srcloc !25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %218) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %276

223:                                              ; preds = %214
  %224 = getelementptr i32, ptr %215, i32 2
  store i32 %216, ptr %192, align 8
  %225 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 37
  store i32 %216, ptr %225, align 4
  %226 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 38
  store i32 %216, ptr %226, align 8
  %227 = icmp sgt i32 %15, 0
  br i1 %227, label %233, label %247

228:                                              ; preds = %242
  %229 = add i32 %244, %235
  %230 = add nsw i32 %234, -1
  %231 = getelementptr i32, ptr %236, i32 1
  %232 = icmp sgt i32 %234, 1
  br i1 %232, label %233, label %247

233:                                              ; preds = %228, %223
  %234 = phi i32 [ %230, %228 ], [ %15, %223 ]
  %235 = phi i32 [ %229, %228 ], [ %216, %223 ]
  %236 = phi ptr [ %231, %228 ], [ %224, %223 ]
  %237 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %238 = and i32 %237, -13
  %239 = or i32 %238, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %239) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %240 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %236, i32 %235, i32 -1090519041) #17, !srcloc !26
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %237) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %276

242:                                              ; preds = %233
  %243 = inttoptr i32 %235 to ptr
  %244 = call i32 @strnlen_user(ptr noundef %243, i32 noundef 131072) #17
  %245 = add i32 %244, -131073
  %246 = icmp ult i32 %245, -131072
  br i1 %246, label %276, label %228

247:                                              ; preds = %228, %223
  %248 = phi ptr [ %224, %223 ], [ %231, %228 ]
  %249 = phi i32 [ %216, %223 ], [ %229, %228 ]
  %250 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %251 = and i32 %250, -13
  %252 = or i32 %251, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %253 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %248, i32 0, i32 -1090519041) #17, !srcloc !27
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %276

255:                                              ; preds = %247
  %256 = getelementptr i32, ptr %248, i32 1
  store i32 %249, ptr %226, align 8
  %257 = icmp slt i32 %153, 0
  %258 = load i1, ptr @check_copy_size.__already_done, align 1
  %259 = xor i1 %258, true
  %260 = select i1 %257, i1 %259, i1 false
  br i1 %260, label %261, label %262, !prof !10

261:                                              ; preds = %255
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %262

262:                                              ; preds = %261, %255
  br i1 %257, label %276, label %263, !prof !10

263:                                              ; preds = %262
  %264 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %256, i32 %153, i32 -1090519040) #20, !srcloc !22
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #7, !srcloc !17
  %269 = and i32 %268, -13
  %270 = or i32 %269, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %270) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %271 = call i32 @arm_copy_to_user(ptr noundef %256, ptr noundef %55, i32 noundef %153) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %268) #17, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  br label %272

272:                                              ; preds = %267, %263
  %273 = phi i32 [ %271, %267 ], [ %153, %263 ]
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 0, i32 -14
  br label %276

276:                                              ; preds = %272, %262, %247, %242, %233, %214, %209, %200, %183, %181, %173, %47, %41, %38, %27
  %277 = phi i32 [ -14, %38 ], [ -14, %47 ], [ -4, %173 ], [ -14, %181 ], [ -14, %183 ], [ -14, %214 ], [ -14, %247 ], [ -14, %27 ], [ -14, %41 ], [ -14, %262 ], [ %275, %272 ], [ -14, %233 ], [ -22, %242 ], [ -14, %200 ], [ -22, %209 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i32 %277
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_randomize_brk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finalize_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_brk_flags(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_extend_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_vma_snapshot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_note_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.elf_note_info, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.elf_note_info, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.elf_note_info, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.elf_note_info, ptr %0, i32 0, i32 4, i32 3
  %8 = getelementptr inbounds %struct.elf_note_info, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.elf_note_info, ptr %0, i32 0, i32 7
  br label %10

10:                                               ; preds = %51, %2
  %11 = phi i1 [ true, %2 ], [ false, %51 ]
  %12 = phi ptr [ %3, %2 ], [ %52, %51 ]
  %13 = getelementptr inbounds %struct.elf_thread_core_info, ptr %12, i32 0, i32 3
  %14 = tail call fastcc i32 @writenote(ptr noundef %13, ptr noundef %1)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %10
  br i1 %11, label %17, label %32

17:                                               ; preds = %16
  %18 = tail call fastcc i32 @writenote(ptr noundef %4, ptr noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @writenote(ptr noundef %5, ptr noundef %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @writenote(ptr noundef %6, ptr noundef %1)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @writenote(ptr noundef %8, ptr noundef %1)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %29, %26, %16
  %33 = load i32, ptr %9, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %47, %32
  %36 = phi i32 [ %48, %47 ], [ %33, %32 ]
  %37 = phi i32 [ %49, %47 ], [ 1, %32 ]
  %38 = getelementptr %struct.elf_thread_core_info, ptr %12, i32 0, i32 3, i32 %37, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr %struct.elf_thread_core_info, ptr %12, i32 0, i32 3, i32 %37
  %43 = tail call fastcc i32 @writenote(ptr noundef %42, ptr noundef %1)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %9, align 4
  br label %47

47:                                               ; preds = %45, %35
  %48 = phi i32 [ %46, %45 ], [ %36, %35 ]
  %49 = add nuw nsw i32 %37, 1
  %50 = icmp slt i32 %49, %48
  br i1 %50, label %35, label %51

51:                                               ; preds = %47, %32
  %52 = load ptr, ptr %12, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %10

54:                                               ; preds = %51, %41, %29, %23, %20, %17, %10
  %55 = phi i32 [ 0, %41 ], [ 0, %29 ], [ 0, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %10 ], [ 1, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_skip_to(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_user_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_user_regset_view(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regset_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regset_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @writenote(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.elf32_note, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @strlen(ptr noundef %4)
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.memelfnote, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elf32_note, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.memelfnote, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.elf32_note, ptr %3, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = call i32 @dump_emit(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 12) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 4
  %17 = load i32, ptr %3, align 4
  %18 = call i32 @dump_emit(ptr noundef %1, ptr noundef %16, i32 noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = call i32 @dump_align(ptr noundef %1, i32 noundef 4) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.memelfnote, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %7, align 4
  %27 = call i32 @dump_emit(ptr noundef %1, ptr noundef %25, i32 noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = call i32 @dump_align(ptr noundef %1, i32 noundef 4) #17
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %29, %23, %20, %15, %2
  %34 = phi i32 [ 0, %23 ], [ 0, %20 ], [ 0, %15 ], [ 0, %2 ], [ %32, %29 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_align(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #15

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 602528, i64 2148092499, i64 2148092525, i64 2148092572, i64 2148092594, i64 2148092622, i64 2148092642}
!12 = !{i64 2148103914, i64 2148103940, i64 2148103969, i64 2148104003, i64 2148104034, i64 2148104057}
!13 = !{!"auto-init"}
!14 = !{i64 2149105408}
!15 = !{i64 2149105625}
!16 = !{i64 2151290391, i64 2151290416}
!17 = !{i64 3786503}
!18 = !{i64 3786700}
!19 = !{i64 2151271979}
!20 = !{i32 0, i32 33}
!21 = !{i64 2151287681, i64 2151287706}
!22 = !{i64 2151290969, i64 2151290994}
!23 = !{i64 2153301293, i64 2153301573, i64 2153301907, i64 2153302241}
!24 = !{i64 2153309448, i64 2153309728, i64 2153310062, i64 2153310396}
!25 = !{i64 2153321785, i64 2153322065, i64 2153322399, i64 2153322733}
!26 = !{i64 2153329940, i64 2153330220, i64 2153330554, i64 2153330888}
!27 = !{i64 2153338216, i64 2153338496, i64 2153338830, i64 2153339164}
