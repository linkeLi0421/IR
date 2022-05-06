; ModuleID = '/llk/IR/init/do_mounts.c_pt.bc'
source_filename = "../init/do_mounts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_name_to_dev_t:\09\09\09\09\09"
module asm "\09.asciz \09\22name_to_dev_t\22\09\09\09\09\09"
module asm "__kstrtabns_name_to_dev_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uuidcmp = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.160, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.160 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.79, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.52 }
%struct.llist_node = type { ptr }
%union.anon.52 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.150, %struct.list_head, %struct.list_head, %union.anon.151 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { i64 }
%union.anon.150 = type { %struct.list_head }
%union.anon.151 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@root_mountflags = dso_local local_unnamed_addr global i32 32769, align 4
@__setup_str_load_ramdisk = internal constant [14 x i8] c"load_ramdisk=\00", section ".init.rodata", align 1
@__setup_load_ramdisk = internal global %struct.obs_kernel_param { ptr @__setup_str_load_ramdisk, ptr @load_ramdisk, i32 0 }, section ".init.setup", align 4
@__setup_str_readonly = internal constant [3 x i8] c"ro\00", section ".init.rodata", align 1
@__setup_readonly = internal global %struct.obs_kernel_param { ptr @__setup_str_readonly, ptr @readonly, i32 0 }, section ".init.setup", align 4
@__setup_str_readwrite = internal constant [3 x i8] c"rw\00", section ".init.rodata", align 1
@__setup_readwrite = internal global %struct.obs_kernel_param { ptr @__setup_str_readwrite, ptr @readwrite, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/nfs\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/cifs\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/dev/ram\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PARTUUID=\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"PARTLABEL=\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@__kstrtab_name_to_dev_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_name_to_dev_t = external dso_local constant [0 x i8], align 1
@__ksymtab_name_to_dev_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @name_to_dev_t to i32), ptr @__kstrtab_name_to_dev_t, ptr @__kstrtabns_name_to_dev_t }, section "___ksymtab_gpl+name_to_dev_t", align 4
@__setup_str_root_dev_setup = internal constant [6 x i8] c"root=\00", section ".init.rodata", align 1
@__setup_root_dev_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_root_dev_setup, ptr @root_dev_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_rootwait_setup = internal constant [9 x i8] c"rootwait\00", section ".init.rodata", align 1
@__setup_rootwait_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_rootwait_setup, ptr @rootwait_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_root_data_setup = internal constant [11 x i8] c"rootflags=\00", section ".init.rodata", align 1
@__setup_root_data_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_root_data_setup, ptr @root_data_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_fs_names_setup = internal constant [12 x i8] c"rootfstype=\00", section ".init.rodata", align 1
@__setup_fs_names_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fs_names_setup, ptr @fs_names_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_root_delay_setup = internal constant [11 x i8] c"rootdelay=\00", section ".init.rodata", align 1
@__setup_root_delay_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_root_delay_setup, ptr @root_delay_setup, i32 0 }, section ".init.setup", align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"unknown-block(%u,%u)\00", align 1
@ROOT_DEV = dso_local local_unnamed_addr global i32 0, align 4
@root_fs_names = internal unnamed_addr global ptr null, section ".init.data", align 4
@root_mount_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"VFS: Cannot open root device \22%s\22 or %s: error %d\0A\00", align 1
@root_device_name = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.8 = private unnamed_addr constant [81 x i8] c"Please append a correct \22root=\22 boot option; here are the available partitions:\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"VFS: Unable to mount root fs on %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"List of all partitions:\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"No filesystem could mount root, tried: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\013VFS: Unable to mount root fs via NFS.\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/root\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"\010Failed to create /dev/root: %d\0A\00", align 1
@root_delay = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.17 = private unnamed_addr constant [49 x i8] c"\016Waiting %d sec before mounting root device...\0A\00", align 1
@saved_root_name = internal global [64 x i8] zeroinitializer, section ".init.data", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@root_wait = internal unnamed_addr global i1 false, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"\016Waiting for root device %s...\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@rootfs_fs_type = dso_local local_unnamed_addr global %struct.file_system_type { ptr @.str.23, i32 0, ptr @rootfs_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@is_tmpfs = internal unnamed_addr global i1 false, align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"\014ignoring the deprecated load_ramdisk= option\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"PARTNROFF=%d%c\00", align 1
@block_class = external dso_local global %struct.class, align 4
@.str.27 = private unnamed_addr constant [80 x i8] c"\013VFS: PARTUUID= is invalid.\0AExpected PARTUUID=<valid-uuid-id>[/PARTNROFF=%%d]\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"\013Disabling rootwait; root= is invalid.\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"%u:%u%c\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"%u:%u:%u:%c\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"\016VFS: Mounted root (%s filesystem)%s on device %u:%u.\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c" readonly\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_name_to_dev_t, ptr @__setup_fs_names_setup, ptr @__setup_load_ramdisk, ptr @__setup_readonly, ptr @__setup_readwrite, ptr @__setup_root_data_setup, ptr @__setup_root_delay_setup, ptr @__setup_root_dev_setup, ptr @__setup_rootwait_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @load_ramdisk(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #21
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @readonly(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, ptr @root_mountflags, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr @root_mountflags, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @readwrite(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, ptr @root_mountflags, align 4
  %6 = and i32 %5, -2
  store i32 %6, ptr @root_mountflags, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @name_to_dev_t(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca %struct.uuidcmp, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(9) @.str)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %161, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(10) @.str.1)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %161, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(9) @.str.2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %161, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(10) @.str.3, i32 noundef 9)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 0, ptr %9, align 4
  store ptr %23, ptr %8, align 8
  %24 = tail call ptr @strchr(ptr noundef %23, i32 noundef 47) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 0, ptr %10, align 1
  %27 = getelementptr i8, ptr %24, i32 1
  %28 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %27, ptr noundef nonnull @.str.26, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  br label %60

31:                                               ; preds = %26
  %32 = ptrtoint ptr %24 to i32
  %33 = ptrtoint ptr %23 to i32
  %34 = sub i32 %32, %33
  %35 = getelementptr inbounds %struct.uuidcmp, ptr %8, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  %36 = icmp eq ptr %24, %23
  br i1 %36, label %60, label %41

37:                                               ; preds = %22
  %38 = tail call i32 @strlen(ptr noundef %23) #22
  %39 = getelementptr inbounds %struct.uuidcmp, ptr %8, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %37, %31
  %42 = call ptr @class_find_device(ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull @match_dev_by_uuid) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %66, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %42, i32 496
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr i8, ptr %42, i32 488
  %51 = load i8, ptr %50, align 8
  %52 = trunc i32 %45 to i8
  %53 = add i8 %51, %52
  %54 = call i32 @part_devt(ptr noundef %49, i8 noundef zeroext %53) #22
  br label %58

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %55, %47
  %59 = phi i32 [ %54, %47 ], [ %57, %55 ]
  call void @put_device(ptr noundef nonnull %42) #22
  br label %66

60:                                               ; preds = %37, %31, %30
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #21
  %62 = load i1, ptr @root_wait, align 4
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #21
  br label %65

65:                                               ; preds = %63, %60
  store i1 false, ptr @root_wait, align 4
  br label %66

66:                                               ; preds = %65, %58, %41
  %67 = phi i32 [ 0, %65 ], [ %59, %58 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  br label %161

68:                                               ; preds = %19
  %69 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(11) @.str.4, i32 noundef 10)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr i8, ptr %0, i32 10
  %73 = tail call ptr @class_find_device(ptr noundef nonnull @block_class, ptr noundef null, ptr noundef %72, ptr noundef nonnull @match_dev_by_label) #22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %161, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 27
  %77 = load i32, ptr %76, align 8
  tail call void @put_device(ptr noundef nonnull %73) #22
  br label %161

78:                                               ; preds = %68
  %79 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.5, i32 noundef 5)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %78
  %82 = getelementptr i8, ptr %0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false) #22, !annotation !8
  %83 = tail call i32 @strlen(ptr noundef %82) #22
  %84 = icmp ugt i32 %83, 31
  br i1 %84, label %128, label %85

85:                                               ; preds = %81
  %86 = call ptr @strcpy(ptr noundef nonnull %7, ptr noundef %82) #22
  br label %87

87:                                               ; preds = %91, %85
  %88 = phi ptr [ %7, %85 ], [ %92, %91 ]
  %89 = load i8, ptr %88, align 1
  switch i8 %89, label %91 [
    i8 0, label %93
    i8 47, label %90
  ]

90:                                               ; preds = %87
  store i8 33, ptr %88, align 1
  br label %91

91:                                               ; preds = %90, %87
  %92 = getelementptr i8, ptr %88, i32 1
  br label %87

93:                                               ; preds = %87
  %94 = call i32 @blk_lookup_devt(ptr noundef nonnull %7, i32 noundef 0) #22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %99, %93
  %97 = phi ptr [ %100, %99 ], [ %88, %93 ]
  %98 = icmp ugt ptr %97, %7
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = getelementptr i8, ptr %97, i32 -1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, -58
  %104 = icmp ult i32 %103, -10
  br i1 %104, label %105, label %96

105:                                              ; preds = %99, %96
  %106 = icmp eq ptr %97, %7
  br i1 %106, label %128, label %107

107:                                              ; preds = %105
  %108 = load i8, ptr %97, align 1
  switch i8 %108, label %109 [
    i8 0, label %128
    i8 48, label %128
  ]

109:                                              ; preds = %107
  %110 = call i32 @simple_strtoul(ptr noundef %97, ptr noundef null, i32 noundef 10) #22
  store i8 0, ptr %97, align 1
  %111 = call i32 @blk_lookup_devt(ptr noundef nonnull %7, i32 noundef %110) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = getelementptr inbounds i8, ptr %7, i32 2
  %115 = icmp ult ptr %97, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %97, i32 -2
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %119, -58
  %121 = icmp ult i32 %120, -10
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = getelementptr i8, ptr %97, i32 -1
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 112
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  store i8 0, ptr %123, align 1
  %127 = call i32 @blk_lookup_devt(ptr noundef nonnull %7, i32 noundef %110) #22
  br label %128

128:                                              ; preds = %126, %122, %116, %113, %109, %107, %107, %105, %93, %81
  %129 = phi i32 [ %127, %126 ], [ 0, %81 ], [ %94, %93 ], [ 0, %107 ], [ 0, %107 ], [ 0, %105 ], [ %111, %109 ], [ 0, %122 ], [ 0, %116 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  br label %161

130:                                              ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !annotation !8
  %131 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %6) #22
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6) #22
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %145

136:                                              ; preds = %133, %130
  %137 = load i32, ptr %2, align 4
  %138 = shl i32 %137, 20
  %139 = load i32, ptr %3, align 4
  %140 = or i32 %138, %139
  %141 = lshr i32 %140, 20
  %142 = icmp eq i32 %137, %141
  %143 = icmp ult i32 %139, 1048576
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %157, label %159

145:                                              ; preds = %133
  %146 = call i32 @simple_strtoul(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 16) #22
  %147 = and i32 %146, 255
  %148 = lshr i32 %146, 12
  %149 = and i32 %148, 1048320
  %150 = or i32 %149, %147
  %151 = shl i32 %146, 12
  %152 = and i32 %151, -1048576
  %153 = or i32 %150, %152
  %154 = load ptr, ptr %5, align 4
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145, %136
  %158 = phi i32 [ %153, %145 ], [ %140, %136 ]
  br label %159

159:                                              ; preds = %157, %145, %136
  %160 = phi i32 [ %158, %157 ], [ 0, %136 ], [ 0, %145 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  br label %161

161:                                              ; preds = %159, %128, %75, %71, %66, %16, %13, %1
  %162 = phi i32 [ %67, %66 ], [ %129, %128 ], [ %160, %159 ], [ 255, %1 ], [ 254, %13 ], [ 1048576, %16 ], [ %77, %75 ], [ 0, %71 ]
  ret i32 %162
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @root_dev_setup(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @saved_root_name, ptr noundef %0, i32 noundef 64) #22
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @rootwait_setup(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @root_wait, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @root_data_setup(ptr noundef %0) #5 section ".init.text" {
  store ptr %0, ptr @root_mount_data, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fs_names_setup(ptr noundef %0) #5 section ".init.text" {
  store ptr %0, ptr @root_fs_names, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @root_delay_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #22
  store i32 %2, ptr @root_delay, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mount_block_root(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca [32 x i8], align 1
  %4 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %5 = tail call ptr @page_address(ptr noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %6 = load i32, ptr @ROOT_DEV, align 4
  %7 = lshr i32 %6, 20
  %8 = and i32 %6, 1048575
  %9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef %8) #22
  %10 = load ptr, ptr @root_fs_names, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call fastcc i32 @split_fs_names(ptr noundef %5) #23
  br label %16

14:                                               ; preds = %2
  %15 = call i32 @list_bdev_fs_names(ptr noundef %5, i32 noundef 4096) #21
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = icmp sgt i32 %17, 0
  %19 = or i32 %1, 1
  br label %20

20:                                               ; preds = %40, %16
  %21 = phi i32 [ %1, %16 ], [ %19, %40 ]
  br i1 %18, label %22, label %40

22:                                               ; preds = %34, %20
  %23 = phi ptr [ %38, %34 ], [ %5, %20 ]
  %24 = phi i32 [ %35, %34 ], [ 0, %20 ]
  %25 = load i8, ptr %23, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @root_mount_data, align 4
  %29 = call fastcc i32 @do_mount_root(ptr noundef %0, ptr noundef %23, i32 noundef %21, ptr noundef %28) #23
  switch i32 %29, label %30 [
    i32 0, label %57
    i32 -13, label %34
    i32 -22, label %34
  ]

30:                                               ; preds = %27
  %31 = load ptr, ptr @root_device_name, align 4
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %31, ptr noundef nonnull %3, i32 noundef %29) #21
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #21
  call void @printk_all_partitions() #22
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #24
  unreachable

34:                                               ; preds = %27, %27, %22
  %35 = add nuw nsw i32 %24, 1
  %36 = call i32 @strlen(ptr noundef %23)
  %37 = add i32 %36, 1
  %38 = getelementptr i8, ptr %23, i32 %37
  %39 = icmp eq i32 %35, %17
  br i1 %39, label %40, label %22

40:                                               ; preds = %34, %20
  %41 = and i32 %21, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %20, label %43

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #21
  call void @printk_all_partitions() #22
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #21
  br i1 %18, label %46, label %55

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %53, %46 ], [ %5, %43 ]
  %48 = phi i32 [ %50, %46 ], [ 0, %43 ]
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %47) #21
  %50 = add nuw nsw i32 %48, 1
  %51 = call i32 @strlen(ptr noundef %47)
  %52 = add i32 %51, 1
  %53 = getelementptr i8, ptr %47, i32 %52
  %54 = icmp eq i32 %50, %17
  br i1 %54, label %55, label %46

55:                                               ; preds = %46, %43
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #21
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #24
  unreachable

57:                                               ; preds = %27
  %58 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !9

62:                                               ; preds = %57
  %63 = add i32 %59, -1
  br label %66

64:                                               ; preds = %57
  %65 = ptrtoint ptr %4 to i32
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #22, !srcloc !11
  %70 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #22, !srcloc !12
  %71 = extractvalue { i32, i32 } %70, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  call void @__put_page(ptr noundef %68) #22
  br label %74

74:                                               ; preds = %73, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @split_fs_names(ptr noundef %0) unnamed_addr #4 section ".init.text" {
  %2 = load ptr, ptr @root_fs_names, align 4
  %3 = tail call i32 @strlcpy(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #22
  br label %4

4:                                                ; preds = %11, %1
  %5 = phi i32 [ %12, %11 ], [ 1, %1 ]
  %6 = phi ptr [ %9, %11 ], [ %0, %1 ]
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %9, %7 ], [ %6, %4 ]
  %9 = getelementptr i8, ptr %8, i32 1
  %10 = load i8, ptr %8, align 1
  switch i8 %10, label %7 [
    i8 0, label %13
    i8 44, label %11
  ]

11:                                               ; preds = %7
  store i8 0, ptr %8, align 1
  %12 = add i32 %5, 1
  br label %4

13:                                               ; preds = %7
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @list_bdev_fs_names(ptr noundef, i32 noundef) local_unnamed_addr #9 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @do_mount_root(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 section ".init.text" {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @page_address(ptr noundef nonnull %7) #22
  %11 = tail call ptr @strncpy(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 4096)
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %7, %9 ], [ null, %4 ]
  %14 = phi ptr [ %10, %9 ], [ null, %4 ]
  %15 = tail call i32 @init_mount(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %1, i32 noundef %2, ptr noundef %14) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = tail call i32 @init_chdir(ptr noundef nonnull @.str.31) #21
  %19 = tail call ptr @llvm.thread.pointer() #22
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 89
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  store i32 %27, ptr @ROOT_DEV, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 32
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.34, ptr @.str.33
  %36 = lshr i32 %27, 20
  %37 = and i32 %27, 1048575
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %30, ptr noundef nonnull %35, i32 noundef %36, i32 noundef %37) #21
  br label %39

39:                                               ; preds = %17, %12
  %40 = icmp eq ptr %13, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !9

46:                                               ; preds = %41
  %47 = add i32 %43, -1
  br label %50

48:                                               ; preds = %41
  %49 = ptrtoint ptr %13 to i32
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #22, !srcloc !11
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #22, !srcloc !12
  %55 = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  tail call void @__put_page(ptr noundef %52) #22
  br label %58

58:                                               ; preds = %57, %50, %39, %6
  %59 = phi i32 [ -12, %6 ], [ %15, %39 ], [ %15, %50 ], [ %15, %57 ]
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @printk_all_partitions() local_unnamed_addr #7

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mount_root() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @ROOT_DEV, align 4
  %2 = icmp eq i32 %1, 255
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @mount_nfs_root() #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #21
  br label %29

8:                                                ; preds = %0
  %9 = icmp eq i32 %1, 0
  %10 = load ptr, ptr @root_device_name, align 4
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  %13 = load ptr, ptr @root_fs_names, align 4
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = tail call fastcc i32 @mount_nodev_root() #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr @ROOT_DEV, align 4
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi i32 [ %20, %19 ], [ %1, %8 ]
  %23 = tail call fastcc i32 @create_dev(i32 noundef %22) #23
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %23) #21
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, ptr @root_mountflags, align 4
  tail call void @mount_block_root(ptr noundef nonnull @.str.15, i32 noundef %28) #23
  br label %29

29:                                               ; preds = %27, %16, %6, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mount_nfs_root() unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  store ptr null, ptr %1, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @nfs_root_data(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  %6 = load ptr, ptr %1, align 4
  %7 = load i32, ptr @root_mountflags, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = call fastcc i32 @do_mount_root(ptr noundef %6, ptr noundef nonnull @.str.35, i32 noundef %7, ptr noundef %8) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %15, %5
  %12 = phi i32 [ %19, %15 ], [ 1, %5 ]
  %13 = phi i32 [ %18, %15 ], [ 5, %5 ]
  %14 = icmp eq i32 %12, 6
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = mul nuw nsw i32 %13, 1000
  call void @msleep(i32 noundef %16) #22
  %17 = shl nuw nsw i32 %13, 1
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 30)
  %19 = add nuw nsw i32 %12, 1
  %20 = load ptr, ptr %1, align 4
  %21 = load i32, ptr @root_mountflags, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = call fastcc i32 @do_mount_root(ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef %21, ptr noundef %22) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %11

25:                                               ; preds = %15, %11, %5, %0
  %26 = phi i32 [ 0, %0 ], [ 1, %5 ], [ 1, %15 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret i32 %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mount_nodev_root() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #22
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %30, label %3

3:                                                ; preds = %0
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @split_fs_names(ptr noundef nonnull %4) #23
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %21, %3
  %8 = phi i32 [ %23, %21 ], [ 0, %3 ]
  %9 = phi i32 [ %22, %21 ], [ -22, %3 ]
  %10 = phi ptr [ %26, %21 ], [ %4, %3 ]
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc zeroext i1 @fs_is_nodev(ptr noundef %10) #23
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr @root_device_name, align 4
  %17 = load i32, ptr @root_mountflags, align 4
  %18 = load ptr, ptr @root_mount_data, align 4
  %19 = tail call fastcc i32 @do_mount_root(ptr noundef %16, ptr noundef %10, i32 noundef %17, ptr noundef %18) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15, %13, %7
  %22 = phi i32 [ %19, %15 ], [ %9, %13 ], [ %9, %7 ]
  %23 = add nuw nsw i32 %8, 1
  %24 = tail call i32 @strlen(ptr noundef %10)
  %25 = add i32 %24, 1
  %26 = getelementptr i8, ptr %10, i32 %25
  %27 = icmp eq i32 %23, %5
  br i1 %27, label %28, label %7

28:                                               ; preds = %21, %15, %3
  %29 = phi i32 [ -22, %3 ], [ 0, %15 ], [ %22, %21 ]
  tail call void @free_pages(i32 noundef %1, i32 noundef 0) #22
  br label %30

30:                                               ; preds = %28, %0
  %31 = phi i32 [ %29, %28 ], [ -22, %0 ]
  ret i32 %31
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @create_dev(i32 noundef %0) unnamed_addr #11 section ".init.text" {
  %2 = tail call i32 @init_unlink(ptr noundef nonnull @.str.15) #21
  %3 = and i32 %0, 255
  %4 = lshr i32 %0, 12
  %5 = and i32 %4, 1048320
  %6 = or i32 %5, %3
  %7 = shl i32 %0, 12
  %8 = and i32 %7, -1048576
  %9 = or i32 %6, %8
  %10 = tail call i32 @init_mknod(ptr noundef nonnull @.str.15, i16 noundef zeroext 24960, i32 noundef %9) #21
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @prepare_namespace() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @root_delay, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %1) #21
  %5 = load i32, ptr @root_delay, align 4
  %6 = mul i32 %5, 1000
  tail call void @msleep(i32 noundef %6) #22
  br label %7

7:                                                ; preds = %3, %0
  tail call void @wait_for_device_probe() #22
  %8 = load i8, ptr @saved_root_name, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  store ptr @saved_root_name, ptr @root_device_name, align 4
  %11 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @saved_root_name, ptr noundef nonnull dereferenceable(3) @.str.18, i32 3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @saved_root_name, ptr noundef nonnull dereferenceable(3) @.str.19, i32 3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %10
  %17 = load i32, ptr @root_mountflags, align 4
  tail call void @mount_block_root(ptr noundef nonnull @saved_root_name, i32 noundef %17) #23
  br label %43

18:                                               ; preds = %13
  %19 = tail call i32 @name_to_dev_t(ptr noundef nonnull @saved_root_name)
  store i32 %19, ptr @ROOT_DEV, align 4
  %20 = load ptr, ptr @root_device_name, align 4
  %21 = tail call i32 @strncmp(ptr noundef %20, ptr noundef nonnull dereferenceable(6) @.str.5, i32 noundef 5)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %20, i32 5
  store ptr %24, ptr @root_device_name, align 4
  br label %25

25:                                               ; preds = %23, %18, %7
  %26 = tail call zeroext i1 @initrd_load() #21
  br i1 %26, label %43, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr @ROOT_DEV, align 4
  %29 = icmp eq i32 %28, 0
  %30 = load i1, ptr @root_wait, align 4
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @saved_root_name) #21
  br label %34

34:                                               ; preds = %40, %32
  %35 = tail call i32 @driver_probe_done() #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = tail call i32 @name_to_dev_t(ptr noundef nonnull @saved_root_name)
  store i32 %38, ptr @ROOT_DEV, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  tail call void @msleep(i32 noundef 5) #22
  br label %34

41:                                               ; preds = %37
  tail call void @async_synchronize_full() #22
  br label %42

42:                                               ; preds = %41, %27
  tail call void @mount_root() #23
  br label %43

43:                                               ; preds = %42, %25, %16
  %44 = tail call i32 @devtmpfs_mount() #22
  %45 = tail call i32 @init_mount(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 8192, ptr noundef null) #21
  %46 = tail call i32 @init_chroot(ptr noundef nonnull @.str.21) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @initrd_load() local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_probe_done() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devtmpfs_mount() local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chroot(ptr noundef) local_unnamed_addr #9 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rootfs_init_fs_context(ptr noundef %0) #2 {
  %2 = load i1, ptr @is_tmpfs, align 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 @shmem_init_fs_context(ptr noundef %0) #22
  br label %7

5:                                                ; preds = %1
  %6 = tail call i32 @ramfs_init_fs_context(ptr noundef %0) #22
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #7

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @init_rootfs() local_unnamed_addr #12 section ".init.text" {
  %1 = load i8, ptr @saved_root_name, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load ptr, ptr @root_fs_names, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @strstr(ptr noundef nonnull %4, ptr noundef nonnull @.str.24)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  store i1 true, ptr @is_tmpfs, align 1
  br label %10

10:                                               ; preds = %9, %6, %0
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @match_dev_by_uuid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr i8, ptr %0, i32 532
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.uuidcmp, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @strncasecmp(ptr noundef %7, ptr noundef nonnull %4, i32 noundef %9)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_devt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @match_dev_by_label(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr i8, ptr %0, i32 532
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.partition_meta_info, ptr %4, i32 0, i32 1
  %8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_lookup_devt(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #16

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chdir(ptr noundef) local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_root_data(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fs_is_nodev(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @get_fs_type(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file_system_type, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  tail call void @put_filesystem(ptr noundef nonnull %2) #22
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ %8, %4 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #9 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_init_fs_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ramfs_init_fs_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148157766}
!11 = !{i64 555701, i64 2148045672, i64 2148045698, i64 2148045745, i64 2148045767, i64 2148045795, i64 2148045815}
!12 = !{i64 2148060128, i64 2148060160, i64 2148060189, i64 2148060223, i64 2148060254, i64 2148060277}
!13 = !{i64 2148157969}
