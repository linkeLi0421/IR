; ModuleID = '/llk/IR/fs/fcntl.c_pt.bc'
source_filename = "../fs/fcntl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22__f_setown\22\09\09\09\09\09"
module asm "__kstrtabns___f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22f_setown\22\09\09\09\09\09"
module asm "__kstrtabns_f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fasync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22fasync_helper\22\09\09\09\09\09"
module asm "__kstrtabns_fasync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_fasync:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_fasync\22\09\09\09\09\09"
module asm "__kstrtabns_kill_fasync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.40 }
%struct.llist_node = type { ptr }
%union.anon.40 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.46 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.46 = type { %struct.callback_head }
%struct.flock64 = type { i16, i16, i64, i64, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i32, i32 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, ptr, ptr, %struct.callback_head }
%struct.f_owner_ex = type { i32, i32 }
%struct.flock = type { i16, i16, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.86, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.87, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.88, ptr, %struct.address_space, %struct.list_head, %union.anon.91, i32, i32, ptr, ptr }
%union.anon.86 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.87 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.88 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.91 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab___f_setown = external dso_local constant [0 x i8], align 1
@__kstrtabns___f_setown = external dso_local constant [0 x i8], align 1
@__ksymtab___f_setown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__f_setown to i32), ptr @__kstrtab___f_setown, ptr @__kstrtabns___f_setown }, section "___ksymtab+__f_setown", align 4
@__kstrtab_f_setown = external dso_local constant [0 x i8], align 1
@__kstrtabns_f_setown = external dso_local constant [0 x i8], align 1
@__ksymtab_f_setown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @f_setown to i32), ptr @__kstrtab_f_setown, ptr @__kstrtabns_f_setown }, section "___ksymtab+f_setown", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@fasync_lock = internal global %struct.spinlock zeroinitializer, align 4
@fasync_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_fasync_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_fasync_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_fasync_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fasync_helper to i32), ptr @__kstrtab_fasync_helper, ptr @__kstrtabns_fasync_helper }, section "___ksymtab+fasync_helper", align 4
@__kstrtab_kill_fasync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_fasync = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_fasync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_fasync to i32), ptr @__kstrtab_kill_fasync, ptr @__kstrtabns_kill_fasync }, section "___ksymtab+kill_fasync", align 4
@__initcall__kmod_fcntl__266_1059_fcntl_init6 = internal global ptr @fcntl_init, section ".initcall6.init", align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"fs/fcntl.c\00", align 1
@band_table = internal unnamed_addr constant [6 x i32] [i32 65, i32 772, i32 1089, i32 8, i32 130, i32 24], align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"\013kill_fasync: bad magic number in fasync_struct!\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"fasync_cache\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_fcntl__266_1059_fcntl_init6, ptr @__ksymtab___f_setown, ptr @__ksymtab_f_setown, ptr @__ksymtab_fasync_helper, ptr @__ksymtab_kill_fasync], section "llvm.metadata"

@sys_fcntl = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fcntl
@sys_fcntl64 = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fcntl64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__f_setown(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  tail call fastcc void @f_modown(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @f_modown(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11
  tail call void @_raw_write_lock_irq(ptr noundef %5) #7
  %6 = icmp eq i32 %3, 0
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 1
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %9, label %11

9:                                                ; preds = %4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %9, %4
  %12 = phi ptr [ null, %9 ], [ %8, %4 ]
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 1
  tail call void @put_pid(ptr noundef %12) #7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #7, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #7, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %27, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %24) #7
  br label %27

25:                                               ; preds = %11
  store ptr null, ptr %13, align 4
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 2
  store i32 %2, ptr %26, align 8
  br label %38

27:                                               ; preds = %23, %19
  store ptr %1, ptr %13, align 4
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 2
  store i32 %2, ptr %28, align 8
  %29 = tail call ptr @llvm.thread.pointer() #7
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 83
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 3
  %33 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 4
  %36 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %27, %25, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %5, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @f_setown(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, -2147483648
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = sub nsw i32 0, %1
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %11

9:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %1, %9 ]
  %13 = phi i32 [ 2, %7 ], [ 1, %9 ]
  %14 = tail call ptr @find_vpid(i32 noundef %12) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ 1, %9 ], [ %13, %11 ]
  %18 = phi ptr [ null, %9 ], [ %14, %11 ]
  tail call fastcc void @f_modown(ptr noundef %0, ptr noundef %18, i32 noundef %17, i32 noundef %2) #7
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ 0, %16 ], [ -3, %11 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i32 [ %20, %19 ], [ -22, %5 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @f_delown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11
  tail call void @_raw_write_lock_irq(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @put_pid(ptr noundef %4) #7
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 2
  store i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %2, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @f_getown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11
  tail call void @_raw_read_lock_irq(ptr noundef %2) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = tail call ptr @pid_task(ptr noundef %4, i32 noundef %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 @pid_vnr(ptr noundef %10) #7
  %12 = load i32, ptr %5, align 8
  %13 = icmp eq i32 %12, 2
  %14 = sub i32 0, %11
  %15 = select i1 %13, i32 %14, i32 %11
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i32 [ 0, %1 ], [ %15, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !8
  %18 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %2) #7, !srcloc !21
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  br label %22

22:                                               ; preds = %21, %16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__fdget_raw(i32 noundef %0) #7, !noalias !23
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %8
  switch i32 %1, label %16 [
    i32 0, label %14
    i32 1030, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
  ]

14:                                               ; preds = %13, %13, %13, %13, %13, %8
  %15 = tail call fastcc i32 @do_fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #7
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %15, %14 ], [ -9, %13 ]
  %18 = and i32 %4, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fput(ptr noundef nonnull %6) #7
  br label %21

21:                                               ; preds = %20, %16, %3
  %22 = phi i32 [ -9, %3 ], [ %17, %16 ], [ %17, %20 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fcntl64(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.flock64, align 8
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call i32 @__fdget_raw(i32 noundef %0) #7, !noalias !26
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !29
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %10
  switch i32 %1, label %63 [
    i32 0, label %61
    i32 1, label %61
    i32 2, label %61
    i32 3, label %61
    i32 1030, label %61
  ]

16:                                               ; preds = %10
  switch i32 %1, label %61 [
    i32 12, label %17
    i32 36, label %17
    i32 13, label %43
    i32 14, label %43
    i32 37, label %43
    i32 38, label %43
  ]

17:                                               ; preds = %16, %16
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 32, i32 -1090519040) #8
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29, !prof !11

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #7
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #9, !srcloc !30
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %27 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 32) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !11

29:                                               ; preds = %21, %17
  %30 = phi i32 [ %27, %21 ], [ 32, %17 ]
  %31 = sub i32 32, %30
  %32 = getelementptr i8, ptr %4, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %30, i1 false) #7
  br label %63

33:                                               ; preds = %21
  %34 = call i32 @fcntl_getlk64(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull %4) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #9, !srcloc !30
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %40 = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 32) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 -14
  br label %63

43:                                               ; preds = %16, %16, %16, %16
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 32, i32 -1090519040) #8, !srcloc !33
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55, !prof !11

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #7
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #9, !srcloc !30
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %53 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 32) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !11

55:                                               ; preds = %47, %43
  %56 = phi i32 [ %53, %47 ], [ 32, %43 ]
  %57 = sub i32 32, %56
  %58 = getelementptr i8, ptr %4, i32 %57
  call void @llvm.memset.p0.i32(ptr align 1 %58, i8 0, i32 %56, i1 false) #7
  br label %63

59:                                               ; preds = %47
  %60 = call i32 @fcntl_setlk64(i32 noundef %0, ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull %4) #7
  br label %63

61:                                               ; preds = %16, %15, %15, %15, %15, %15
  %62 = tail call fastcc i32 @do_fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %8) #7
  br label %63

63:                                               ; preds = %61, %59, %55, %36, %33, %29, %15
  %64 = phi i32 [ %62, %61 ], [ %60, %59 ], [ %34, %33 ], [ -9, %15 ], [ -14, %29 ], [ -14, %55 ], [ %42, %36 ]
  %65 = and i32 %6, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  call void @fput(ptr noundef nonnull %8) #7
  br label %68

68:                                               ; preds = %67, %63, %3
  %69 = phi i32 [ -9, %3 ], [ %64, %63 ], [ %64, %67 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @send_sigio(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %3
  %11 = icmp ult i32 %6, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %13 = tail call ptr @pid_task(ptr noundef nonnull %8, i32 noundef 0) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @send_sigio_to_task(ptr noundef nonnull %13, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6)
  br label %16

16:                                               ; preds = %15, %12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %40

17:                                               ; preds = %10
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  %18 = getelementptr %struct.pid, ptr %8, i32 0, i32 3, i32 %6
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = mul i32 %6, -8
  %22 = add i32 %21, -1348
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = icmp eq ptr %23, null
  %25 = select i1 %20, i1 true, i1 %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %26, %17
  %27 = phi ptr [ %31, %26 ], [ %23, %17 ]
  tail call fastcc void @send_sigio_to_task(ptr noundef nonnull %27, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6)
  %28 = getelementptr %struct.task_struct, ptr %27, i32 0, i32 63, i32 %6
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 %22
  %32 = icmp eq ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %26

34:                                               ; preds = %26, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #7, !srcloc !8
  %35 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #7, !srcloc !21
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  br label %39

39:                                               ; preds = %38, %34
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  br label %40

40:                                               ; preds = %39, %16, %3
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_sigio_to_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.kernel_siginfo, align 4
  %7 = getelementptr inbounds %struct.fown_struct, ptr %1, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fown_struct, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %12, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fown_struct, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %16
  %26 = icmp eq i32 %24, %20
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %59

29:                                               ; preds = %22, %18, %14, %5
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %30 = icmp eq i32 %8, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %32 = getelementptr inbounds i8, ptr %6, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %32, i8 0, i64 12, i1 false)
  store i32 %8, ptr %6, align 4
  %33 = getelementptr inbounds %struct.anon.47, ptr %6, i32 0, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.anon.47, ptr %6, i32 0, i32 2
  store i32 %3, ptr %34, align 4
  %35 = icmp ne i32 %8, 29
  %36 = add i32 %8, -1
  %37 = icmp ult i32 %36, 31
  %38 = and i1 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = shl nuw nsw i32 1, %36
  %41 = and i32 %40, 1342244056
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 -5, ptr %34, align 4
  br label %44

44:                                               ; preds = %43, %39, %31
  %45 = add i32 %3, -7
  %46 = icmp ult i32 %45, -6
  br i1 %46, label %47, label %48, !prof !10

47:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fcntl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 774, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

48:                                               ; preds = %44
  %49 = add nsw i32 %3, -1
  %50 = getelementptr [6 x i32], ptr @band_table, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 10239
  %53 = getelementptr inbounds %struct.anon.47, ptr %6, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.anon.47, ptr %6, i32 0, i32 3, i32 0, i32 1
  store i32 %2, ptr %54, align 4
  %55 = call i32 @do_send_sig_info(i32 noundef %8, ptr noundef nonnull %6, ptr noundef %0, i32 noundef %4) #7
  %56 = icmp eq i32 %55, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  br i1 %56, label %59, label %57

57:                                               ; preds = %48, %29
  %58 = call i32 @do_send_sig_info(i32 noundef 29, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %0, i32 noundef %4) #7
  br label %59

59:                                               ; preds = %57, %48, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sigurg(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %1
  %9 = icmp ult i32 %4, 2
  br i1 %9, label %10, label %37

10:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %11 = tail call ptr @pid_task(ptr noundef nonnull %6, i32 noundef 0) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %14 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 82
  %15 = load volatile ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %17, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %21
  %31 = icmp eq i32 %29, %25
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %36

34:                                               ; preds = %27, %23, %19, %13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %35 = tail call i32 @do_send_sig_info(i32 noundef 23, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %11, i32 noundef %4) #7
  br label %36

36:                                               ; preds = %34, %33, %10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %84

37:                                               ; preds = %8
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  %38 = getelementptr %struct.pid, ptr %6, i32 0, i32 3, i32 %4
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = mul i32 %4, -8
  %42 = add i32 %41, -1348
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = icmp eq ptr %43, null
  %45 = select i1 %40, i1 true, i1 %44
  br i1 %45, label %78, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 4
  %48 = getelementptr inbounds %struct.fown_struct, ptr %0, i32 0, i32 3
  br label %49

49:                                               ; preds = %71, %46
  %50 = phi ptr [ %43, %46 ], [ %75, %71 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 82
  %52 = load volatile ptr, ptr %51, align 4
  %53 = load i32, ptr %47, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cred, ptr %52, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cred, ptr %52, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %53, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %48, align 4
  %65 = icmp eq i32 %64, %57
  %66 = icmp eq i32 %64, %61
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %71

69:                                               ; preds = %63, %59, %55, %49
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %70 = tail call i32 @do_send_sig_info(i32 noundef 23, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %50, i32 noundef %4) #7
  br label %71

71:                                               ; preds = %69, %68
  %72 = getelementptr %struct.task_struct, ptr %50, i32 0, i32 63, i32 %4
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = getelementptr i8, ptr %73, i32 %42
  %76 = icmp eq ptr %75, null
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %78, label %49

78:                                               ; preds = %71, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #7, !srcloc !8
  %79 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #7, !srcloc !21
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  br label %83

83:                                               ; preds = %82, %78
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  br label %84

84:                                               ; preds = %83, %36, %1
  %85 = phi i32 [ 1, %36 ], [ 1, %83 ], [ 0, %1 ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #7
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fasync_remove_entry(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @fasync_lock) #7
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fasync_struct, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %16, label %26

10:                                               ; preds = %26
  %11 = getelementptr inbounds %struct.fasync_struct, ptr %29, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fasync_struct, ptr %27, i32 0, i32 3
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %4, %6 ], [ %29, %14 ]
  %18 = phi ptr [ %1, %6 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.fasync_struct, ptr %17, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef nonnull %17) #7
  store ptr null, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull %17, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %20 = getelementptr inbounds %struct.fasync_struct, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.fasync_struct, ptr %17, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %22, ptr noundef nonnull @fasync_free_rcu) #7
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -8193
  store i32 %25, ptr %23, align 4
  br label %31

26:                                               ; preds = %10, %6
  %27 = phi ptr [ %29, %10 ], [ %4, %6 ]
  %28 = getelementptr inbounds %struct.fasync_struct, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10

31:                                               ; preds = %26, %16, %2
  %32 = phi i32 [ 1, %16 ], [ 0, %2 ], [ 0, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %33 = load i16, ptr @fasync_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @fasync_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %35 = load i16, ptr %3, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fasync_free_rcu(ptr noundef %0) #0 {
  %2 = load ptr, ptr @fasync_cache, align 4
  %3 = getelementptr i8, ptr %0, i32 -20
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @fasync_alloc() local_unnamed_addr #0 {
  %1 = load ptr, ptr @fasync_cache, align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #7
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fasync_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @fasync_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fasync_insert_entry(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @fasync_lock) #7
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %15, %4
  %9 = phi ptr [ %17, %15 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.fasync_struct, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @_raw_write_lock_irq(ptr noundef nonnull %9) #7
  %14 = getelementptr inbounds %struct.fasync_struct, ptr %9, i32 0, i32 2
  store i32 %0, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull %9, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.fasync_struct, ptr %9, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8

19:                                               ; preds = %15, %4
  store i32 0, ptr %3, align 4
  %20 = getelementptr inbounds %struct.fasync_struct, ptr %3, i32 0, i32 1
  store i32 17921, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fasync_struct, ptr %3, i32 0, i32 4
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fasync_struct, ptr %3, i32 0, i32 2
  store i32 %0, ptr %22, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.fasync_struct, ptr %3, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !38
  store volatile ptr %3, ptr %2, align 4
  %25 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 8192
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %19, %13
  %29 = phi ptr [ null, %19 ], [ %9, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %30 = load i16, ptr @fasync_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @fasync_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %32 = load i16, ptr %5, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 @fasync_remove_entry(ptr noundef %1, ptr noundef %3)
  br label %17

8:                                                ; preds = %4
  %9 = load ptr, ptr @fasync_cache, align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @fasync_insert_entry(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %10) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @fasync_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %10) #7
  br label %17

17:                                               ; preds = %15, %12, %8, %6
  %18 = phi i32 [ %7, %6 ], [ 0, %15 ], [ -12, %8 ], [ 1, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kill_fasync(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %7 = load volatile ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 23
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi ptr [ %7, %9 ], [ %34, %32 ]
  %13 = getelementptr inbounds %struct.fasync_struct, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 17921
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %36

18:                                               ; preds = %11
  %19 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull %12) #7
  %20 = getelementptr inbounds %struct.fasync_struct, ptr %12, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 11
  br i1 %10, label %25, label %29

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 11, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %23
  %30 = getelementptr inbounds %struct.fasync_struct, ptr %12, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  tail call void @send_sigio(ptr noundef %24, i32 noundef %31, i32 noundef %2) #7
  br label %32

32:                                               ; preds = %29, %25, %18
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %19) #7
  %33 = getelementptr inbounds %struct.fasync_struct, ptr %12, i32 0, i32 3
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %11

36:                                               ; preds = %32, %16, %6
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %37

37:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fcntl_init() #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 0, i32 noundef 262144, ptr noundef null) #7
  store ptr %1, ptr @fasync_cache, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.f_owner_ex, align 8
  %7 = alloca %struct.f_owner_ex, align 8
  %8 = alloca %struct.flock, align 4
  %9 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !29
  switch i32 %1, label %364 [
    i32 0, label %10
    i32 1030, label %12
    i32 1, label %14
    i32 2, label %17
    i32 3, label %19
    i32 4, label %22
    i32 5, label %98
    i32 6, label %123
    i32 7, label %123
    i32 9, label %141
    i32 8, label %163
    i32 16, label %181
    i32 15, label %222
    i32 1038, label %271
    i32 11, label %254
    i32 10, label %257
    i32 1025, label %261
    i32 1024, label %263
    i32 1026, label %265
    i32 1031, label %267
    i32 1032, label %267
    i32 1033, label %269
    i32 1034, label %269
    i32 1035, label %271
    i32 1036, label %271
    i32 1037, label %271
  ]

10:                                               ; preds = %4
  %11 = tail call i32 @f_dupfd(i32 noundef %2, ptr noundef %3, i32 noundef 0) #7
  br label %364

12:                                               ; preds = %4
  %13 = tail call i32 @f_dupfd(i32 noundef %2, ptr noundef %3, i32 noundef 524288) #7
  br label %364

14:                                               ; preds = %4
  %15 = tail call zeroext i1 @get_close_on_exec(i32 noundef %0) #7
  %16 = zext i1 %15 to i32
  br label %364

17:                                               ; preds = %4
  %18 = and i32 %2, 1
  tail call void @set_close_on_exec(i32 noundef %0, i32 noundef %18) #7
  br label %364

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  br label %364

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, %2
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %364

35:                                               ; preds = %30, %22
  %36 = and i32 %2, 262144
  %37 = icmp ne i32 %36, 0
  %38 = and i32 %26, 262144
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.vfsmount, ptr %43, i32 0, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !39
  %46 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %45, ptr noundef %24) #7
  br i1 %46, label %47, label %364

47:                                               ; preds = %41, %35
  %48 = load i16, ptr %24, align 8
  %49 = and i16 %48, -4096
  %50 = icmp eq i16 %49, 4096
  %51 = and i32 %2, 65536
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %52, %50
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %364, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.address_space, ptr %56, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %364, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.address_space_operations, ptr %60, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %364, label %66

66:                                               ; preds = %62, %47
  %67 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 22
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = tail call i32 %70(i32 noundef %2) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %364

75:                                               ; preds = %72, %66
  %76 = load i32, ptr %25, align 4
  %77 = xor i32 %76, %2
  %78 = and i32 %77, 8192
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %67, align 4
  %82 = getelementptr inbounds %struct.file_operations, ptr %81, i32 0, i32 18
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = lshr i32 %2, 13
  %87 = and i32 %86, 1
  %88 = tail call i32 %83(i32 noundef %0, ptr noundef %3, i32 noundef %87) #7
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %364, label %90

90:                                               ; preds = %85, %80, %75
  %91 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %91) #7
  %92 = and i32 %2, 330752
  %93 = load i32, ptr %25, align 4
  %94 = and i32 %93, -330753
  %95 = or i32 %94, %92
  store i32 %95, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %96 = load i16, ptr %91, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  br label %364

98:                                               ; preds = %4
  %99 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 16, i32 -1090519040) #8
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110, !prof !11

102:                                              ; preds = %98
  %103 = tail call ptr @llvm.thread.pointer() #7
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #9, !srcloc !30
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %108 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %9, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110, !prof !11

110:                                              ; preds = %102, %98
  %111 = phi i32 [ %108, %102 ], [ 16, %98 ]
  %112 = sub i32 16, %111
  %113 = getelementptr i8, ptr %8, i32 %112
  call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %111, i1 false) #7
  br label %366

114:                                              ; preds = %102
  %115 = call i32 @fcntl_getlk(ptr noundef %3, i32 noundef 5, ptr noundef nonnull %8) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %364

117:                                              ; preds = %114
  %118 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #9, !srcloc !30
  %119 = and i32 %118, -13
  %120 = or i32 %119, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %121 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %8, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %364, label %366

123:                                              ; preds = %4, %4
  %124 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 16, i32 -1090519040) #8, !srcloc !33
  %125 = extractvalue { i32, i32 } %124, 0
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135, !prof !11

127:                                              ; preds = %123
  %128 = tail call ptr @llvm.thread.pointer() #7
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 3
  %130 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %129) #9, !srcloc !30
  %131 = and i32 %130, -13
  %132 = or i32 %131, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %133 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %9, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135, !prof !11

135:                                              ; preds = %127, %123
  %136 = phi i32 [ %133, %127 ], [ 16, %123 ]
  %137 = sub i32 16, %136
  %138 = getelementptr i8, ptr %8, i32 %137
  call void @llvm.memset.p0.i32(ptr align 1 %138, i8 0, i32 %136, i1 false) #7
  br label %366

139:                                              ; preds = %127
  %140 = call i32 @fcntl_setlk(i32 noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef nonnull %8) #7
  br label %364

141:                                              ; preds = %4
  %142 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11
  tail call void @_raw_read_lock_irq(ptr noundef %142) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %143 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11, i32 2
  %146 = load i32, ptr %145, align 8
  %147 = tail call ptr @pid_task(ptr noundef %144, i32 noundef %146) #7
  %148 = icmp eq ptr %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %141
  %150 = load ptr, ptr %143, align 4
  %151 = tail call i32 @pid_vnr(ptr noundef %150) #7
  %152 = load i32, ptr %145, align 8
  %153 = icmp eq i32 %152, 2
  %154 = sub i32 0, %151
  %155 = select i1 %153, i32 %154, i32 %151
  br label %156

156:                                              ; preds = %149, %141
  %157 = phi i32 [ 0, %141 ], [ %155, %149 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %142) #7, !srcloc !8
  %158 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %142) #7, !srcloc !21
  %159 = extractvalue { i32, i32 } %158, 0
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  br label %162

162:                                              ; preds = %161, %156
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br label %364

163:                                              ; preds = %4
  %164 = icmp slt i32 %2, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %163
  %166 = icmp eq i32 %2, -2147483648
  br i1 %166, label %364, label %167

167:                                              ; preds = %165
  %168 = sub nsw i32 0, %2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %171

169:                                              ; preds = %163
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %170 = icmp eq i32 %2, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %2, %169 ]
  %173 = phi i32 [ 2, %167 ], [ 1, %169 ]
  %174 = tail call ptr @find_vpid(i32 noundef %172) #7
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ 1, %169 ], [ %173, %171 ]
  %178 = phi ptr [ null, %169 ], [ %174, %171 ]
  tail call fastcc void @f_modown(ptr noundef %3, ptr noundef %178, i32 noundef %177, i32 noundef 1) #7
  br label %179

179:                                              ; preds = %176, %171
  %180 = phi i32 [ 0, %176 ], [ -3, %171 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %364

181:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 0, ptr %7, align 8
  %182 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11
  tail call void @_raw_read_lock_irq(ptr noundef %182) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %183 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11, i32 2
  %186 = load i32, ptr %185, align 8
  %187 = tail call ptr @pid_task(ptr noundef %184, i32 noundef %186) #7
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr %183, align 4
  %191 = tail call i32 @pid_vnr(ptr noundef %190) #7
  %192 = getelementptr inbounds %struct.f_owner_ex, ptr %7, i32 0, i32 1
  store i32 %191, ptr %192, align 4
  br label %193

193:                                              ; preds = %189, %181
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %194 = load i32, ptr %185, align 8
  switch i32 %194, label %198 [
    i32 0, label %195
    i32 1, label %196
    i32 2, label %197
  ]

195:                                              ; preds = %193
  store i32 0, ptr %7, align 8
  br label %199

196:                                              ; preds = %193
  store i32 1, ptr %7, align 8
  br label %199

197:                                              ; preds = %193
  store i32 2, ptr %7, align 8
  br label %199

198:                                              ; preds = %193
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #7
  br label %199

199:                                              ; preds = %198, %197, %196, %195
  %200 = phi i1 [ false, %198 ], [ true, %197 ], [ true, %196 ], [ true, %195 ]
  %201 = phi i32 [ -22, %198 ], [ 0, %197 ], [ 0, %196 ], [ 0, %195 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %182) #7, !srcloc !8
  %202 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %182) #7, !srcloc !21
  %203 = extractvalue { i32, i32 } %202, 0
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  br label %206

206:                                              ; preds = %205, %199
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br i1 %200, label %207, label %220

207:                                              ; preds = %206
  %208 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !40
  %209 = extractvalue { i32, i32 } %208, 0
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = tail call ptr @llvm.thread.pointer() #7
  %213 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 3
  %214 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %213) #9, !srcloc !30
  %215 = and i32 %214, -13
  %216 = or i32 %215, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %217 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %7, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i32 0, i32 -14
  br label %220

220:                                              ; preds = %211, %207, %206
  %221 = phi i32 [ %201, %206 ], [ -14, %207 ], [ %219, %211 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %364

222:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !29
  %223 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !33
  %224 = extractvalue { i32, i32 } %223, 0
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234, !prof !11

226:                                              ; preds = %222
  %227 = tail call ptr @llvm.thread.pointer() #7
  %228 = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 3
  %229 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %228) #9, !srcloc !30
  %230 = and i32 %229, -13
  %231 = or i32 %230, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %231) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %232 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %9, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %229) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234, !prof !11

234:                                              ; preds = %226, %222
  %235 = phi i32 [ %232, %226 ], [ 8, %222 ]
  %236 = sub i32 8, %235
  %237 = getelementptr i8, ptr %6, i32 %236
  call void @llvm.memset.p0.i32(ptr align 1 %237, i8 0, i32 %235, i1 false) #7
  br label %252

238:                                              ; preds = %226
  %239 = load i32, ptr %6, align 8
  %240 = icmp ult i32 %239, 3
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %242 = getelementptr inbounds %struct.f_owner_ex, ptr %6, i32 0, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = call ptr @find_vpid(i32 noundef %243) #7
  %245 = load i32, ptr %242, align 4
  %246 = icmp eq i32 %245, 0
  %247 = icmp ne ptr %244, null
  %248 = select i1 %246, i1 true, i1 %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  call fastcc void @f_modown(ptr noundef %3, ptr noundef %244, i32 noundef %239, i32 noundef 1) #7
  br label %250

250:                                              ; preds = %249, %241
  %251 = phi i32 [ 0, %249 ], [ -3, %241 ]
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %252

252:                                              ; preds = %250, %238, %234
  %253 = phi i32 [ %251, %250 ], [ -22, %238 ], [ -14, %234 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %364

254:                                              ; preds = %4
  %255 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11, i32 5
  %256 = load i32, ptr %255, align 4
  br label %364

257:                                              ; preds = %4
  %258 = icmp ugt i32 %2, 64
  br i1 %258, label %364, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 11, i32 5
  store i32 %2, ptr %260, align 4
  br label %364

261:                                              ; preds = %4
  %262 = tail call i32 @fcntl_getlease(ptr noundef %3) #7
  br label %364

263:                                              ; preds = %4
  %264 = tail call i32 @fcntl_setlease(i32 noundef %0, ptr noundef %3, i32 noundef %2) #7
  br label %364

265:                                              ; preds = %4
  %266 = tail call i32 @fcntl_dirnotify(i32 noundef %0, ptr noundef %3, i32 noundef %2) #7
  br label %364

267:                                              ; preds = %4, %4
  %268 = tail call i32 @pipe_fcntl(ptr noundef %3, i32 noundef %1, i32 noundef %2) #7
  br label %364

269:                                              ; preds = %4, %4
  %270 = tail call i32 @memfd_fcntl(ptr noundef %3, i32 noundef %1, i32 noundef %2) #7
  br label %364

271:                                              ; preds = %4, %4, %4, %4
  %272 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %273 = load ptr, ptr %272, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !29
  switch i32 %1, label %362 [
    i32 1037, label %274
    i32 1038, label %297
    i32 1035, label %322
    i32 1036, label %338
  ]

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 5
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.inode, ptr %273, i32 0, i32 20
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  br label %282

282:                                              ; preds = %278, %274
  %283 = phi i32 [ %281, %278 ], [ %276, %274 ]
  %284 = zext i32 %283 to i64
  store i64 %284, ptr %5, align 8
  %285 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !40
  %286 = extractvalue { i32, i32 } %285, 0
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %362

288:                                              ; preds = %282
  %289 = tail call ptr @llvm.thread.pointer() #7
  %290 = getelementptr inbounds %struct.thread_info, ptr %289, i32 0, i32 3
  %291 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %290) #9, !srcloc !30
  %292 = and i32 %291, -13
  %293 = or i32 %292, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %293) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %294 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %291) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %295 = icmp eq i32 %294, 0
  %296 = select i1 %295, i32 0, i32 -14
  br label %362

297:                                              ; preds = %271
  %298 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !33
  %299 = extractvalue { i32, i32 } %298, 0
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %309, !prof !11

301:                                              ; preds = %297
  %302 = tail call ptr @llvm.thread.pointer() #7
  %303 = getelementptr inbounds %struct.thread_info, ptr %302, i32 0, i32 3
  %304 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %303) #9, !srcloc !30
  %305 = and i32 %304, -13
  %306 = or i32 %305, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %306) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %307 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %304) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %313, label %309, !prof !11

309:                                              ; preds = %301, %297
  %310 = phi i32 [ %307, %301 ], [ 8, %297 ]
  %311 = sub i32 8, %310
  %312 = getelementptr i8, ptr %5, i32 %311
  call void @llvm.memset.p0.i32(ptr align 1 %312, i8 0, i32 %310, i1 false) #7
  br label %362

313:                                              ; preds = %301
  %314 = load i64, ptr %5, align 8
  %315 = trunc i64 %314 to i32
  %316 = icmp ult i32 %315, 6
  br i1 %316, label %317, label %362

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %318) #7
  %319 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 5
  store i32 %315, ptr %319, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %320 = load i16, ptr %318, align 4
  %321 = add i16 %320, 1
  store i16 %321, ptr %318, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  br label %362

322:                                              ; preds = %271
  %323 = getelementptr inbounds %struct.inode, ptr %273, i32 0, i32 20
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i64
  store i64 %325, ptr %5, align 8
  %326 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !40
  %327 = extractvalue { i32, i32 } %326, 0
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %362

329:                                              ; preds = %322
  %330 = tail call ptr @llvm.thread.pointer() #7
  %331 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 3
  %332 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %331) #9, !srcloc !30
  %333 = and i32 %332, -13
  %334 = or i32 %333, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %334) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %335 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %332) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %336 = icmp eq i32 %335, 0
  %337 = select i1 %336, i32 0, i32 -14
  br label %362

338:                                              ; preds = %271
  %339 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !33
  %340 = extractvalue { i32, i32 } %339, 0
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %350, !prof !11

342:                                              ; preds = %338
  %343 = tail call ptr @llvm.thread.pointer() #7
  %344 = getelementptr inbounds %struct.thread_info, ptr %343, i32 0, i32 3
  %345 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %344) #9, !srcloc !30
  %346 = and i32 %345, -13
  %347 = or i32 %346, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %347) #7, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %348 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %345) #7, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !32
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %354, label %350, !prof !11

350:                                              ; preds = %342, %338
  %351 = phi i32 [ %348, %342 ], [ 8, %338 ]
  %352 = sub i32 8, %351
  %353 = getelementptr i8, ptr %5, i32 %352
  call void @llvm.memset.p0.i32(ptr align 1 %353, i8 0, i32 %351, i1 false) #7
  br label %362

354:                                              ; preds = %342
  %355 = load i64, ptr %5, align 8
  %356 = trunc i64 %355 to i32
  %357 = icmp ult i32 %356, 6
  br i1 %357, label %358, label %362

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.inode, ptr %273, i32 0, i32 24
  call void @down_write(ptr noundef %359) #7
  %360 = trunc i64 %355 to i8
  %361 = getelementptr inbounds %struct.inode, ptr %273, i32 0, i32 20
  store i8 %360, ptr %361, align 1
  call void @up_write(ptr noundef %359) #7
  br label %362

362:                                              ; preds = %358, %354, %350, %329, %322, %317, %313, %309, %288, %282, %271
  %363 = phi i32 [ 0, %358 ], [ 0, %317 ], [ -22, %313 ], [ -22, %354 ], [ -22, %271 ], [ -14, %282 ], [ -14, %309 ], [ -14, %322 ], [ -14, %350 ], [ %296, %288 ], [ %337, %329 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %364

364:                                              ; preds = %362, %269, %267, %265, %263, %261, %259, %257, %254, %252, %220, %179, %165, %162, %139, %117, %114, %90, %85, %72, %62, %58, %54, %41, %30, %19, %17, %14, %12, %10, %4
  %365 = phi i32 [ %363, %362 ], [ %270, %269 ], [ %268, %267 ], [ %266, %265 ], [ %264, %263 ], [ %262, %261 ], [ 0, %259 ], [ -22, %257 ], [ %256, %254 ], [ %253, %252 ], [ %221, %220 ], [ %157, %162 ], [ %140, %139 ], [ %115, %114 ], [ 0, %117 ], [ %21, %19 ], [ 0, %17 ], [ %16, %14 ], [ %13, %12 ], [ %11, %10 ], [ -1, %30 ], [ -1, %41 ], [ -22, %62 ], [ -22, %58 ], [ -22, %54 ], [ %73, %72 ], [ %88, %85 ], [ 0, %90 ], [ %180, %179 ], [ -22, %165 ], [ -22, %4 ]
  br label %366

366:                                              ; preds = %364, %135, %117, %110
  %367 = phi i32 [ %365, %364 ], [ -14, %117 ], [ -14, %110 ], [ -14, %135 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  ret i32 %367
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f_dupfd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_close_on_exec(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_close_on_exec(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlk(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlease(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlease(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_dirnotify(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pipe_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memfd_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlk64(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlk64(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { cold nounwind }

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
!8 = !{i64 910201, i64 2148400172, i64 2148400198, i64 2148400245, i64 2148400267, i64 2148400295, i64 2148400315}
!9 = !{i64 2148413045, i64 2148413077, i64 2148413106, i64 2148413140, i64 2148413171, i64 2148413194}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149085882}
!13 = !{i64 1589096}
!14 = !{i64 2149074629}
!15 = !{i64 2149074704, i64 2149074731, i64 2149074778, i64 2149074800, i64 2149074828, i64 2149074848}
!16 = !{i64 816124}
!17 = !{i64 2149127499}
!18 = !{i64 2149231509}
!19 = !{i64 2149231726}
!20 = !{i64 2149086687}
!21 = !{i64 1590111, i64 1590134, i64 1590154, i64 1590178, i64 1590194}
!22 = !{i64 2149125601}
!23 = !{!24}
!24 = distinct !{!24, !25, !"fdget_raw: argument 0"}
!25 = distinct !{!25, !"fdget_raw"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"fdget_raw: argument 0"}
!28 = distinct !{!28, !"fdget_raw"}
!29 = !{!"auto-init"}
!30 = !{i64 3539972}
!31 = !{i64 3540169}
!32 = !{i64 2151025448}
!33 = !{i64 2151043860, i64 2151043885}
!34 = !{i64 2149124290}
!35 = !{i64 2153751854, i64 2153752329, i64 2153751891, i64 2153751947, i64 2153751981, i64 2153752005, i64 2153752046, i64 2153752067, i64 2153752095, i64 2153752129}
!36 = !{i64 2149078805}
!37 = !{i64 2149101808}
!38 = !{i64 2153807503}
!39 = !{i64 2151271496}
!40 = !{i64 2151044438, i64 2151044463}
