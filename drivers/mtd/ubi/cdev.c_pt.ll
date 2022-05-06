; ModuleID = '/llk/IR/drivers/mtd/ubi/cdev.c_pt.bc'
source_filename = "../drivers/mtd/ubi/cdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ubi_leb_change_req = type { i32, i32, i8, [7 x i8] }
%struct.ubi_map_req = type { i32, i8, [3 x i8] }
%struct.ubi_set_vol_prop_req = type { i8, [7 x i8], i64 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubi_volume_desc = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.67 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_mkvol_req = type { i32, i32, i64, i8, i8, i16, [4 x i8], [128 x i8] }
%struct.ubi_rsvol_req = type <{ i64, i32 }>
%struct.ubi_attach_req = type { i32, i32, i32, i16, [10 x i8] }
%struct.ubi_rnvol_req = type { i32, [12 x i8], [32 x %struct.anon.70] }
%struct.anon.70 = type { i32, i16, [2 x i8], [128 x i8] }
%struct.ubi_rename_entry = type { i32, [128 x i8], i32, ptr, %struct.list_head }

@ubi_vol_cdev_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @vol_cdev_llseek, ptr @vol_cdev_read, ptr @vol_cdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vol_cdev_ioctl, ptr null, ptr null, i32 0, ptr @vol_cdev_open, ptr null, ptr @vol_cdev_release, ptr @vol_cdev_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ubi_cdev_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubi_cdev_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ubi_ctrl_cdev_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ctrl_cdev_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [9 x i8] c"updating\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"damaged volume, update marker is set\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"cannot accept more %zd bytes of data, error %d\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"volume %d on UBI device %d is corrupted\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"unaligned position\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"unaligned write length\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.revoke_exclusive = private unnamed_addr constant [17 x i8] c"revoke_exclusive\00", align 1
@__func__.get_exclusive = private unnamed_addr constant [14 x i8] c"get_exclusive\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%d users for volume %d\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"update of volume %d not finished, volume is damaged\00", align 1
@__func__.vol_cdev_release = private unnamed_addr constant [17 x i8] c"vol_cdev_release\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"bad volume creation request\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"duplicated volume id %d\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"duplicated volume name \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"cannot open volume %d, error %d\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"cannot open volume \22%s\22, error %d\00", align 1
@ubi_devices_mutex = external dso_local global %struct.mutex, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @vol_cdev_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 25
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %13, ptr noundef nonnull @.str) #12
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 14
  %16 = load i64, ptr %15, align 8
  %17 = tail call i64 @fixed_size_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %16) #12
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i64 [ -16, %11 ], [ %17, %14 ]
  ret i64 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_cdev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 25
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %9, ptr noundef nonnull @.str) #12
  br label %122

15:                                               ; preds = %4
  %16 = and i8 %11, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %9, ptr noundef nonnull @.str.1) #12
  br label %122

19:                                               ; preds = %15
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 14
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %20
  %24 = icmp eq i32 %2, 0
  %25 = or i1 %24, %23
  br i1 %25, label %122, label %26

26:                                               ; preds = %19
  %27 = zext i32 %2 to i64
  %28 = add i64 %20, %27
  %29 = icmp sgt i64 %28, %22
  %30 = sub i64 %22, %20
  %31 = trunc i64 %30 to i32
  %32 = select i1 %29, i32 %31, i32 %2
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 11
  %34 = load i32, ptr %33, align 8
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ubi_device, ptr %9, i32 0, i32 67
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %32, -1
  %40 = add i32 %39, %38
  %41 = sub i32 0, %38
  %42 = and i32 %40, %41
  br label %43

43:                                               ; preds = %36, %26
  %44 = phi i32 [ %42, %36 ], [ %34, %26 ]
  %45 = tail call noalias ptr @vmalloc(i32 noundef %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %122, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @llvm.umin.i32(i32 %32, i32 %44)
  %49 = load i64, ptr %3, align 8
  %50 = load i32, ptr %33, align 8
  %51 = icmp ult i64 %49, 4294967296
  br i1 %51, label %52, label %59, !prof !8

52:                                               ; preds = %47
  %53 = trunc i64 %49 to i32
  %54 = freeze i32 %53
  %55 = freeze i32 %50
  %56 = udiv i32 %54, %55
  %57 = mul i32 %56, %55
  %58 = sub i32 %54, %57
  br label %66

59:                                               ; preds = %47
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %49) #14, !srcloc !9
  %61 = extractvalue { i64, i64 } %60, 0
  %62 = extractvalue { i64, i64 } %60, 1
  %63 = lshr i64 %61, 32
  %64 = trunc i64 %63 to i32
  %65 = trunc i64 %62 to i32
  br label %66

66:                                               ; preds = %59, %52
  %67 = phi i32 [ %64, %59 ], [ %58, %52 ]
  %68 = phi i32 [ %65, %59 ], [ %56, %52 ]
  br label %69

69:                                               ; preds = %115, %66
  %70 = phi i32 [ %88, %115 ], [ %67, %66 ]
  %71 = phi i32 [ %90, %115 ], [ %68, %66 ]
  %72 = phi i32 [ %117, %115 ], [ %48, %66 ]
  %73 = phi i32 [ %91, %115 ], [ %32, %66 ]
  %74 = phi ptr [ %116, %115 ], [ %1, %66 ]
  %75 = tail call i32 @__cond_resched() #12
  %76 = add i32 %72, %70
  %77 = load i32, ptr %33, align 8
  %78 = icmp slt i32 %76, %77
  %79 = sub i32 %77, %70
  %80 = select i1 %78, i32 %72, i32 %79
  %81 = tail call i32 @ubi_eba_read_leb(ptr noundef %9, ptr noundef %7, i32 noundef %71, ptr noundef nonnull %45, i32 noundef %70, i32 noundef %80, i32 noundef 0) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %69
  %84 = add i32 %80, %70
  %85 = load i32, ptr %33, align 8
  %86 = icmp eq i32 %84, %85
  %87 = select i1 %86, i32 %85, i32 0
  %88 = sub i32 %84, %87
  %89 = zext i1 %86 to i32
  %90 = add i32 %71, %89
  %91 = sub i32 %73, %80
  %92 = sext i32 %80 to i64
  %93 = load i64, ptr %3, align 8
  %94 = add i64 %93, %92
  store i64 %94, ptr %3, align 8
  %95 = icmp slt i32 %80, 0
  %96 = load i1, ptr @check_copy_size.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100, !prof !10

99:                                               ; preds = %83
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %100

100:                                              ; preds = %99, %83
  br i1 %95, label %119, label %101, !prof !10

101:                                              ; preds = %100
  %102 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 %80, i32 -1090519040) #14, !srcloc !11
  %103 = extractvalue { i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = tail call ptr @llvm.thread.pointer() #12
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %108 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %107) #15, !srcloc !12
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %111 = tail call i32 @arm_copy_to_user(ptr noundef %74, ptr noundef nonnull %45, i32 noundef %80) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  br label %112

112:                                              ; preds = %105, %101
  %113 = phi i32 [ %111, %105 ], [ %80, %101 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = getelementptr i8, ptr %74, i32 %80
  %117 = tail call i32 @llvm.umin.i32(i32 %91, i32 %44)
  %118 = icmp eq i32 %91, 0
  br i1 %118, label %121, label %69

119:                                              ; preds = %112, %100, %69
  %120 = phi i32 [ -14, %100 ], [ %81, %69 ], [ -14, %112 ]
  tail call void @vfree(ptr noundef nonnull %45) #12
  br label %122

121:                                              ; preds = %115
  tail call void @vfree(ptr noundef nonnull %45) #12
  br label %122

122:                                              ; preds = %121, %119, %43, %19, %18, %14
  %123 = phi i32 [ -16, %14 ], [ -9, %18 ], [ 0, %19 ], [ -12, %43 ], [ %32, %121 ], [ %120, %119 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_cdev_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 25
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 48
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %129

14:                                               ; preds = %4
  %15 = and i8 %11, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %166, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %166, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %3, align 8
  %23 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i64 %22, 4294967296
  br i1 %25, label %26, label %33, !prof !8

26:                                               ; preds = %21
  %27 = trunc i64 %22 to i32
  %28 = freeze i32 %27
  %29 = freeze i32 %24
  %30 = udiv i32 %28, %29
  %31 = mul i32 %30, %29
  %32 = sub i32 %28, %31
  br label %40

33:                                               ; preds = %21
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %22) #14, !srcloc !9
  %35 = extractvalue { i64, i64 } %34, 0
  %36 = extractvalue { i64, i64 } %34, 1
  %37 = lshr i64 %35, 32
  %38 = trunc i64 %37 to i32
  %39 = trunc i64 %36 to i32
  br label %40

40:                                               ; preds = %33, %26
  %41 = phi i32 [ %30, %26 ], [ %39, %33 ]
  %42 = phi i32 [ %32, %26 ], [ %38, %33 ]
  %43 = getelementptr inbounds %struct.ubi_device, ptr %9, i32 0, i32 67
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  %46 = and i32 %45, %42
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %9, ptr noundef nonnull @.str.7) #12
  br label %166

49:                                               ; preds = %40
  %50 = zext i32 %2 to i64
  %51 = add i64 %22, %50
  %52 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 14
  %53 = load i64, ptr %52, align 8
  %54 = icmp sgt i64 %51, %53
  %55 = sub i64 %53, %22
  %56 = trunc i64 %55 to i32
  %57 = select i1 %54, i32 %56, i32 %2
  %58 = and i32 %57, %45
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %9, ptr noundef nonnull @.str.8) #12
  br label %166

61:                                               ; preds = %49
  %62 = icmp ult i32 %57, %24
  %63 = add i32 %57, %45
  %64 = sub i32 0, %44
  %65 = and i32 %63, %64
  %66 = select i1 %62, i32 %65, i32 %24
  %67 = tail call noalias ptr @vmalloc(i32 noundef %66) #13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %166, label %69

69:                                               ; preds = %61
  %70 = icmp eq i32 %57, 0
  br i1 %70, label %128, label %71

71:                                               ; preds = %69
  %72 = tail call i32 @llvm.umin.i32(i32 %57, i32 %66) #12
  br label %73

73:                                               ; preds = %111, %71
  %74 = phi ptr [ %1, %71 ], [ %123, %111 ]
  %75 = phi i32 [ %72, %71 ], [ %124, %111 ]
  %76 = phi i32 [ %41, %71 ], [ %118, %111 ]
  %77 = phi i32 [ %57, %71 ], [ %119, %111 ]
  %78 = phi i32 [ %42, %71 ], [ %116, %111 ]
  %79 = tail call i32 @__cond_resched() #12
  %80 = add i32 %78, %75
  %81 = load i32, ptr %23, align 8
  %82 = icmp slt i32 %80, %81
  %83 = sub i32 %81, %78
  %84 = select i1 %82, i32 %75, i32 %83
  %85 = icmp slt i32 %84, 0
  %86 = load i1, ptr @check_copy_size.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !10

89:                                               ; preds = %73
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %90

90:                                               ; preds = %89, %73
  br i1 %85, label %126, label %91, !prof !10

91:                                               ; preds = %90
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 %84, i32 -1090519040) #14, !srcloc !15
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102, !prof !8

95:                                               ; preds = %91
  %96 = tail call ptr @llvm.thread.pointer() #12
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %97) #15, !srcloc !12
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %101 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %67, ptr noundef %74, i32 noundef %84) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  br label %102

102:                                              ; preds = %95, %91
  %103 = phi i32 [ %101, %95 ], [ %84, %91 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105, !prof !8

105:                                              ; preds = %102
  %106 = sub i32 %84, %103
  %107 = getelementptr i8, ptr %67, i32 %106
  tail call void @llvm.memset.p0.i32(ptr align 1 %107, i8 0, i32 %103, i1 false) #12
  br label %126

108:                                              ; preds = %102
  %109 = tail call i32 @ubi_eba_write_leb(ptr noundef %9, ptr noundef %7, i32 noundef %76, ptr noundef nonnull %67, i32 noundef %78, i32 noundef %84) #12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = add i32 %84, %78
  %113 = load i32, ptr %23, align 8
  %114 = icmp eq i32 %112, %113
  %115 = select i1 %114, i32 %113, i32 0
  %116 = sub i32 %112, %115
  %117 = zext i1 %114 to i32
  %118 = add i32 %76, %117
  %119 = sub i32 %77, %84
  %120 = zext i32 %84 to i64
  %121 = load i64, ptr %3, align 8
  %122 = add i64 %121, %120
  store i64 %122, ptr %3, align 8
  %123 = getelementptr i8, ptr %74, i32 %84
  %124 = tail call i32 @llvm.umin.i32(i32 %119, i32 %66) #12
  %125 = icmp eq i32 %119, 0
  br i1 %125, label %128, label %73

126:                                              ; preds = %108, %105, %90
  %127 = phi i32 [ -14, %105 ], [ %109, %108 ], [ -14, %90 ]
  tail call void @vfree(ptr noundef nonnull %67) #12
  br label %166

128:                                              ; preds = %111, %69
  tail call void @vfree(ptr noundef nonnull %67) #12
  br label %166

129:                                              ; preds = %4
  %130 = and i8 %11, 16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = tail call i32 @ubi_more_update_data(ptr noundef %9, ptr noundef %7, ptr noundef %1, i32 noundef %2) #12
  br label %136

134:                                              ; preds = %129
  %135 = tail call i32 @ubi_more_leb_change_data(ptr noundef %9, ptr noundef %7, ptr noundef %1, i32 noundef %2) #12
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef %137) #12
  br label %166

140:                                              ; preds = %136
  %141 = icmp eq i32 %137, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %140
  %143 = load i8, ptr %10, align 8
  %144 = and i8 %143, 32
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call fastcc void @revoke_exclusive(ptr noundef %6)
  br label %166

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 3
  %149 = load i32, ptr %148, align 8
  %150 = tail call i32 @ubi_check_volume(ptr noundef %9, i32 noundef %149) #12
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %147
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %152
  %155 = load i8, ptr %10, align 8
  br label %162

156:                                              ; preds = %152
  %157 = load i32, ptr %148, align 8
  %158 = getelementptr inbounds %struct.ubi_device, ptr %9, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %157, i32 noundef %159) #12
  %160 = load i8, ptr %10, align 8
  %161 = or i8 %160, 4
  br label %162

162:                                              ; preds = %156, %154
  %163 = phi i8 [ %155, %154 ], [ %161, %156 ]
  %164 = or i8 %163, 2
  store i8 %164, ptr %10, align 8
  %165 = tail call i32 @ubi_volume_notify(ptr noundef %9, ptr noundef %7, i32 noundef 4) #12
  tail call fastcc void @revoke_exclusive(ptr noundef %6)
  br label %166

166:                                              ; preds = %162, %147, %146, %140, %139, %128, %126, %61, %60, %48, %17, %14
  %167 = phi i32 [ %137, %139 ], [ %137, %146 ], [ %150, %147 ], [ %137, %162 ], [ %2, %140 ], [ -22, %48 ], [ -22, %60 ], [ -1, %14 ], [ -30, %17 ], [ -12, %61 ], [ %57, %128 ], [ %127, %126 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_cdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ubi_leb_change_req, align 4
  %6 = alloca %struct.ubi_map_req, align 8
  %7 = alloca %struct.ubi_set_vol_prop_req, align 1
  %8 = alloca %struct.ubi_volume_info, align 8
  %9 = alloca %struct.ubi_volume_info, align 8
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = inttoptr i32 %2 to ptr
  switch i32 %1, label %219 [
    i32 1074286336, label %16
    i32 1074024194, label %62
    i32 1074024193, label %111
    i32 1074286339, label %140
    i32 1074024196, label %161
    i32 -2147201275, label %173
    i32 1074810630, label %185
    i32 1082150663, label %217
    i32 20232, label %218
  ]

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !16
  %17 = tail call zeroext i1 @capable(i32 noundef 24) #12
  br i1 %17, label %18, label %60

18:                                               ; preds = %16
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 8, i32 -1090519040) #14, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !8

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #12
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #15, !srcloc !12
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %15, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !8

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 8, %18 ]
  %32 = sub i32 8, %31
  %33 = getelementptr i8, ptr %4, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #12
  br label %60

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.ubi_volume_desc, ptr %11, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %60, label %38

38:                                               ; preds = %34
  %39 = load i64, ptr %4, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 9
  %43 = load i32, ptr %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 11
  %46 = load i32, ptr %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, %44
  %49 = icmp sgt i64 %39, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %41
  %51 = call fastcc i32 @get_exclusive(ptr noundef %11)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr %4, align 8
  %55 = call i32 @ubi_start_update(ptr noundef %14, ptr noundef %12, i64 noundef %54) #12
  %56 = load i64, ptr %4, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @ubi_volume_notify(ptr noundef %14, ptr noundef %12, i32 noundef 4) #12
  call fastcc void @revoke_exclusive(ptr noundef %11)
  br label %60

60:                                               ; preds = %58, %53, %50, %41, %38, %34, %30, %16
  %61 = phi i32 [ -1, %16 ], [ -30, %34 ], [ -22, %41 ], [ -22, %38 ], [ %51, %50 ], [ %55, %58 ], [ %55, %53 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %219

62:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !16
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 16, i32 -1090519040) #14, !srcloc !15
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74, !prof !8

66:                                               ; preds = %62
  %67 = tail call ptr @llvm.thread.pointer() #12
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %68) #15, !srcloc !12
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %72 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %15, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74, !prof !8

74:                                               ; preds = %66, %62
  %75 = phi i32 [ %72, %66 ], [ 16, %62 ]
  %76 = sub i32 16, %75
  %77 = getelementptr i8, ptr %5, i32 %76
  call void @llvm.memset.p0.i32(ptr align 1 %77, i8 0, i32 %75, i1 false) #12
  br label %109

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.ubi_volume_desc, ptr %11, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %109, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %109, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %5, align 4
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 9
  %91 = load i32, ptr %90, align 8
  %92 = icmp sle i32 %91, %87
  %93 = getelementptr inbounds %struct.ubi_leb_change_req, ptr %5, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp slt i32 %94, 0
  %96 = select i1 %92, i1 true, i1 %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 11
  %99 = load i32, ptr %98, align 8
  %100 = icmp sgt i32 %94, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = call fastcc i32 @get_exclusive(ptr noundef %11)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = call i32 @ubi_start_leb_change(ptr noundef %14, ptr noundef %12, ptr noundef nonnull %5) #12
  %106 = load i32, ptr %93, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  call fastcc void @revoke_exclusive(ptr noundef %11)
  br label %109

109:                                              ; preds = %108, %104, %101, %97, %89, %86, %82, %78, %74
  %110 = phi i32 [ -30, %82 ], [ -30, %78 ], [ -22, %97 ], [ -22, %89 ], [ %102, %101 ], [ %105, %108 ], [ %105, %104 ], [ -14, %74 ], [ -22, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %219

111:                                              ; preds = %3
  %112 = tail call ptr @llvm.thread.pointer() #12
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 3
  %114 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %113) #15, !srcloc !12
  %115 = and i32 %114, -13
  %116 = or i32 %115, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %117 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1090519041) #12, !srcloc !17
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = extractvalue { i32, i32 } %117, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %114) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %121, label %219

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.ubi_volume_desc, ptr %11, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %219, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %219, label %129

129:                                              ; preds = %125
  %130 = icmp sgt i32 %119, -1
  br i1 %130, label %131, label %219

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.ubi_volume, ptr %12, i32 0, i32 9
  %133 = load i32, ptr %132, align 8
  %134 = icmp sgt i32 %133, %119
  br i1 %134, label %135, label %219

135:                                              ; preds = %131
  %136 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %14, ptr noundef %12, i32 noundef %119) #12
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %219

138:                                              ; preds = %135
  %139 = tail call i32 @ubi_wl_flush(ptr noundef %14, i32 noundef -1, i32 noundef -1) #12
  br label %219

140:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !16
  %141 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 8, i32 -1090519040) #14, !srcloc !15
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152, !prof !8

144:                                              ; preds = %140
  %145 = tail call ptr @llvm.thread.pointer() #12
  %146 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 3
  %147 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %146) #15, !srcloc !12
  %148 = and i32 %147, -13
  %149 = or i32 %148, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %150 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %15, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152, !prof !8

152:                                              ; preds = %144, %140
  %153 = phi i32 [ %150, %144 ], [ 8, %140 ]
  %154 = sub i32 8, %153
  %155 = getelementptr i8, ptr %6, i32 %154
  call void @llvm.memset.p0.i32(ptr align 1 %155, i8 0, i32 %153, i1 false) #12
  br label %159

156:                                              ; preds = %144
  %157 = load i32, ptr %6, align 8
  %158 = call i32 @ubi_leb_map(ptr noundef %11, i32 noundef %157) #12
  br label %159

159:                                              ; preds = %156, %152
  %160 = phi i32 [ %158, %156 ], [ -14, %152 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %219

161:                                              ; preds = %3
  %162 = tail call ptr @llvm.thread.pointer() #12
  %163 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %164 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %163) #15, !srcloc !12
  %165 = and i32 %164, -13
  %166 = or i32 %165, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %167 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1090519041) #12, !srcloc !18
  %168 = extractvalue { i32, i32 } %167, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %219

170:                                              ; preds = %161
  %171 = extractvalue { i32, i32 } %167, 1
  %172 = tail call i32 @ubi_leb_unmap(ptr noundef %11, i32 noundef %171) #12
  br label %219

173:                                              ; preds = %3
  %174 = tail call ptr @llvm.thread.pointer() #12
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 3
  %176 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %175) #15, !srcloc !12
  %177 = and i32 %176, -13
  %178 = or i32 %177, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %178) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %179 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1090519041) #12, !srcloc !19
  %180 = extractvalue { i32, i32 } %179, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %219

182:                                              ; preds = %173
  %183 = extractvalue { i32, i32 } %179, 1
  %184 = tail call i32 @ubi_is_mapped(ptr noundef %11, i32 noundef %183) #12
  br label %219

185:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !16
  %186 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 16, i32 -1090519040) #14, !srcloc !15
  %187 = extractvalue { i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %197, !prof !8

189:                                              ; preds = %185
  %190 = tail call ptr @llvm.thread.pointer() #12
  %191 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 3
  %192 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %191) #15, !srcloc !12
  %193 = and i32 %192, -13
  %194 = or i32 %193, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %195 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %15, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %192) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197, !prof !8

197:                                              ; preds = %189, %185
  %198 = phi i32 [ %195, %189 ], [ 16, %185 ]
  %199 = sub i32 16, %198
  %200 = getelementptr i8, ptr %7, i32 %199
  call void @llvm.memset.p0.i32(ptr align 1 %200, i8 0, i32 %198, i1 false) #12
  br label %215

201:                                              ; preds = %189
  %202 = load i8, ptr %7, align 1
  %203 = icmp eq i8 %202, 1
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.ubi_device, ptr %14, i32 0, i32 18
  call void @mutex_lock(ptr noundef %205) #12
  %206 = getelementptr inbounds %struct.ubi_set_vol_prop_req, ptr %7, i32 0, i32 2
  %207 = load i64, ptr %206, align 1
  %208 = icmp eq i64 %207, 0
  %209 = load ptr, ptr %11, align 4
  %210 = getelementptr inbounds %struct.ubi_volume, ptr %209, i32 0, i32 25
  %211 = load i8, ptr %210, align 8
  %212 = select i1 %208, i8 0, i8 64
  %213 = and i8 %211, -65
  %214 = or i8 %213, %212
  store i8 %214, ptr %210, align 8
  call void @mutex_unlock(ptr noundef %205) #12
  br label %215

215:                                              ; preds = %204, %201, %197
  %216 = phi i32 [ 0, %204 ], [ -22, %201 ], [ -14, %197 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %219

217:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i32 64, i1 false), !annotation !16
  call void @ubi_get_volume_info(ptr noundef %11, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  br label %219

218:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i32 64, i1 false), !annotation !16
  call void @ubi_get_volume_info(ptr noundef %11, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  br label %219

219:                                              ; preds = %218, %217, %215, %182, %173, %170, %161, %159, %138, %135, %131, %129, %125, %121, %111, %109, %60, %3
  %220 = phi i32 [ -38, %218 ], [ -38, %217 ], [ %216, %215 ], [ %160, %159 ], [ %110, %109 ], [ %61, %60 ], [ %139, %138 ], [ -14, %111 ], [ -30, %125 ], [ -30, %121 ], [ -22, %131 ], [ %136, %135 ], [ %172, %170 ], [ -14, %161 ], [ %184, %182 ], [ -14, %173 ], [ -25, %3 ], [ -22, %129 ]
  ret i32 %220
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_cdev_open(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 20
  %6 = tail call i32 @ubi_major2num(i32 noundef %5) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = and i32 %4, 1048575
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 2
  %16 = tail call ptr @ubi_open_volume(i32 noundef %6, i32 noundef %10, i32 noundef %15) #12
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = ptrtoint ptr %16 to i32
  br label %22

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %16, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %18, %2
  %23 = phi i32 [ %19, %18 ], [ 0, %20 ], [ %6, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_cdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 25
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %14) #12
  %15 = load i8, ptr %6, align 8
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18, !prof !8

18:                                               ; preds = %10
  %19 = tail call ptr @llvm.thread.pointer() #12
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.vol_cdev_release, i32 noundef 128, i32 noundef %21) #16
  tail call void @dump_stack() #16
  %23 = load i8, ptr %6, align 8
  br label %24

24:                                               ; preds = %18, %10
  %25 = phi i8 [ %23, %18 ], [ %15, %10 ]
  %26 = and i8 %25, -17
  br label %32

27:                                               ; preds = %2
  %28 = and i8 %7, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = and i8 %7, -33
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i8 [ %31, %30 ], [ %26, %24 ]
  store i8 %33, ptr %6, align 8
  %34 = getelementptr inbounds %struct.ubi_volume, ptr %5, i32 0, i32 23
  %35 = load ptr, ptr %34, align 8
  tail call void @vfree(ptr noundef %35) #12
  br label %36

36:                                               ; preds = %32, %27
  tail call void @ubi_close_volume(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_cdev_fsync(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 24
  tail call void @down_write(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.ubi_device, ptr %9, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @ubi_sync(i32 noundef %14) #12
  tail call void @up_write(ptr noundef %12) #12
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubi_cdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ubi_mkvol_req, align 4
  %5 = alloca %struct.ubi_rsvol_req, align 8
  %6 = inttoptr i32 %2 to ptr
  %7 = tail call zeroext i1 @capable(i32 noundef 24) #12
  br i1 %7, label %8, label %175

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 20
  %15 = tail call ptr @ubi_get_by_major(i32 noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %175, label %17

17:                                               ; preds = %8
  switch i32 %1, label %173 [
    i32 1083731712, label %18
    i32 1074032385, label %51
    i32 1074556674, label %71
    i32 1360031491, label %127
    i32 1074032388, label %149
    i32 1074032389, label %161
  ]

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(152) %4, i8 0, i32 152, i1 false), !annotation !16
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 152, i32 -1090519040) #14, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !8

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #12
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #15, !srcloc !12
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 152) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !8

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 152, %18 ]
  %32 = sub i32 152, %31
  %33 = getelementptr i8, ptr %4, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #12
  br label %49

34:                                               ; preds = %22
  %35 = call fastcc i32 @verify_mkvol_req(ptr noundef nonnull %15, ptr noundef nonnull %4)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 18
  call void @mutex_lock(ptr noundef %38) #12
  %39 = call i32 @ubi_create_volume(ptr noundef nonnull %15, ptr noundef nonnull %4) #12
  call void @mutex_unlock(ptr noundef %38) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, ptr %4, align 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #15, !srcloc !12
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %46 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %42, i32 -1090519041) #12, !srcloc !20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 -14
  br label %49

49:                                               ; preds = %41, %37, %34, %30
  %50 = phi i32 [ %48, %41 ], [ %35, %34 ], [ %39, %37 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #12
  br label %173

51:                                               ; preds = %17
  %52 = tail call ptr @llvm.thread.pointer() #12
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #15, !srcloc !12
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %57 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #12, !srcloc !21
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %173

60:                                               ; preds = %51
  %61 = extractvalue { i32, i32 } %57, 1
  %62 = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = tail call ptr @ubi_open_volume(i32 noundef %63, i32 noundef %61, i32 noundef 3) #12
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = ptrtoint ptr %64 to i32
  br label %173

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %69) #12
  %70 = tail call i32 @ubi_remove_volume(ptr noundef %64, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %69) #12
  tail call void @ubi_close_volume(ptr noundef %64) #12
  br label %173

71:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !16
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1090519040) #14, !srcloc !15
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83, !prof !8

75:                                               ; preds = %71
  %76 = tail call ptr @llvm.thread.pointer() #12
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #15, !srcloc !12
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %81 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !8

83:                                               ; preds = %75, %71
  %84 = phi i32 [ %81, %75 ], [ 12, %71 ]
  %85 = sub i32 12, %84
  %86 = getelementptr i8, ptr %5, i32 %85
  call void @llvm.memset.p0.i32(ptr align 1 %86, i8 0, i32 %84, i1 false) #12
  br label %125

87:                                               ; preds = %75
  %88 = load i64, ptr %5, align 8
  %89 = icmp slt i64 %88, 1
  br i1 %89, label %125, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ubi_rsvol_req, ptr %5, i32 0, i32 1
  %92 = load i32, ptr %91, align 8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 15
  %96 = load i32, ptr %95, align 4
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = call ptr @ubi_open_volume(i32 noundef %100, i32 noundef %92, i32 noundef 3) #12
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = ptrtoint ptr %101 to i32
  br label %125

105:                                              ; preds = %98
  %106 = load i64, ptr %5, align 8
  %107 = load ptr, ptr %101, align 4
  %108 = getelementptr inbounds %struct.ubi_volume, ptr %107, i32 0, i32 11
  %109 = load i32, ptr %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add i64 %106, -1
  %112 = add i64 %111, %110
  %113 = icmp ult i64 %112, 4294967296
  br i1 %113, label %114, label %117, !prof !8

114:                                              ; preds = %105
  %115 = trunc i64 %112 to i32
  %116 = udiv i32 %115, %109
  br label %121

117:                                              ; preds = %105
  %118 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %109, i64 %112) #14, !srcloc !9
  %119 = extractvalue { i64, i64 } %118, 1
  %120 = trunc i64 %119 to i32
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i32 [ %116, %114 ], [ %120, %117 ]
  %123 = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 18
  call void @mutex_lock(ptr noundef %123) #12
  %124 = call i32 @ubi_resize_volume(ptr noundef %101, i32 noundef %122) #12
  call void @mutex_unlock(ptr noundef %123) #12
  call void @ubi_close_volume(ptr noundef %101) #12
  br label %125

125:                                              ; preds = %121, %103, %94, %90, %87, %83
  %126 = phi i32 [ %104, %103 ], [ %124, %121 ], [ -14, %83 ], [ -22, %87 ], [ -22, %90 ], [ -22, %94 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %173

127:                                              ; preds = %17
  %128 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 3264, i32 noundef 4368) #17
  %130 = icmp eq ptr %129, null
  br i1 %130, label %173, label %131

131:                                              ; preds = %127
  %132 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4368, i32 -1090519040) #14, !srcloc !15
  %133 = extractvalue { i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143, !prof !8

135:                                              ; preds = %131
  %136 = tail call ptr @llvm.thread.pointer() #12
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 3
  %138 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %137) #15, !srcloc !12
  %139 = and i32 %138, -13
  %140 = or i32 %139, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %141 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %129, ptr noundef %6, i32 noundef 4368) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143, !prof !8

143:                                              ; preds = %135, %131
  %144 = phi i32 [ %141, %135 ], [ 4368, %131 ]
  %145 = sub i32 4368, %144
  %146 = getelementptr i8, ptr %129, i32 %145
  tail call void @llvm.memset.p0.i32(ptr align 1 %146, i8 0, i32 %144, i1 false) #12
  tail call void @kfree(ptr noundef nonnull %129) #12
  br label %173

147:                                              ; preds = %135
  %148 = tail call fastcc i32 @rename_volumes(ptr noundef nonnull %15, ptr noundef nonnull %129)
  tail call void @kfree(ptr noundef nonnull %129) #12
  br label %173

149:                                              ; preds = %17
  %150 = tail call ptr @llvm.thread.pointer() #12
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 3
  %152 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %151) #15, !srcloc !12
  %153 = and i32 %152, -13
  %154 = or i32 %153, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %155 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #12, !srcloc !22
  %156 = extractvalue { i32, i32 } %155, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %149
  %159 = extractvalue { i32, i32 } %155, 1
  %160 = tail call i32 @ubi_bitflip_check(ptr noundef nonnull %15, i32 noundef %159, i32 noundef 0) #12
  br label %173

161:                                              ; preds = %17
  %162 = tail call ptr @llvm.thread.pointer() #12
  %163 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %164 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %163) #15, !srcloc !12
  %165 = and i32 %164, -13
  %166 = or i32 %165, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %167 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #12, !srcloc !23
  %168 = extractvalue { i32, i32 } %167, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = extractvalue { i32, i32 } %167, 1
  %172 = tail call i32 @ubi_bitflip_check(ptr noundef nonnull %15, i32 noundef %171, i32 noundef 1) #12
  br label %173

173:                                              ; preds = %170, %161, %158, %149, %147, %143, %127, %125, %68, %66, %51, %49, %17
  %174 = phi i32 [ %126, %125 ], [ %50, %49 ], [ %67, %66 ], [ %70, %68 ], [ -14, %51 ], [ -14, %143 ], [ %148, %147 ], [ -12, %127 ], [ %160, %158 ], [ -14, %149 ], [ %172, %170 ], [ -14, %161 ], [ -25, %17 ]
  call void @ubi_put_device(ptr noundef nonnull %15) #12
  br label %175

175:                                              ; preds = %173, %8, %3
  %176 = phi i32 [ %174, %173 ], [ -1, %3 ], [ -19, %8 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctrl_cdev_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ubi_attach_req, align 4
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call zeroext i1 @capable(i32 noundef 24) #12
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  switch i32 %1, label %65 [
    i32 1075343168, label %8
    i32 1074032449, label %53
  ]

8:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !16
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 24, i32 -1090519040) #14, !srcloc !15
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !8

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #15, !srcloc !12
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 24) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !8

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 24, %8 ]
  %22 = sub i32 24, %21
  %23 = getelementptr i8, ptr %4, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #12
  br label %51

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.ubi_attach_req, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %28, -1
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %24
  %32 = call ptr @get_mtd_device(ptr noundef null, i32 noundef %26) #12
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %51

36:                                               ; preds = %31
  call void @mutex_lock(ptr noundef nonnull @ubi_devices_mutex) #12
  %37 = load i32, ptr %4, align 4
  %38 = getelementptr inbounds %struct.ubi_attach_req, ptr %4, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ubi_attach_req, ptr %4, i32 0, i32 3
  %41 = load i16, ptr %40, align 4
  %42 = sext i16 %41 to i32
  %43 = call i32 @ubi_attach_mtd_dev(ptr noundef %32, i32 noundef %37, i32 noundef %39, i32 noundef %42) #12
  call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  call void @put_mtd_device(ptr noundef %32) #12
  br label %51

46:                                               ; preds = %36
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #15, !srcloc !12
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %50 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 %43, i32 -1090519041) #12, !srcloc !24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #12, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  br label %51

51:                                               ; preds = %46, %45, %34, %24, %20
  %52 = phi i32 [ %35, %34 ], [ -22, %24 ], [ %43, %45 ], [ %50, %46 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %65

53:                                               ; preds = %7
  %54 = tail call ptr @llvm.thread.pointer() #12
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #15, !srcloc !12
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %59 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1090519041) #12, !srcloc !25
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #12, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = extractvalue { i32, i32 } %59, 1
  tail call void @mutex_lock(ptr noundef nonnull @ubi_devices_mutex) #12
  %64 = tail call i32 @ubi_detach_mtd_dev(i32 noundef %63, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #12
  br label %65

65:                                               ; preds = %62, %53, %51, %7, %3
  %66 = phi i32 [ -1, %3 ], [ %52, %51 ], [ %64, %62 ], [ -14, %53 ], [ -25, %7 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_read_leb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_more_update_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_more_leb_change_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @revoke_exclusive(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ubi_device, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !8

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !prof !8

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !prof !8

17:                                               ; preds = %13, %9, %1
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.revoke_exclusive, i32 noundef 76, i32 noundef %20) #16
  tail call void @dump_stack() #16
  br label %22

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30, !prof !8

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ubi_volume_desc, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %35, label %30, !prof !8

30:                                               ; preds = %26, %22
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 52
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.revoke_exclusive, i32 noundef 77, i32 noundef %33) #16
  tail call void @dump_stack() #16
  br label %35

35:                                               ; preds = %30, %26
  store i32 0, ptr %23, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 6
  store i32 1, ptr %36, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.ubi_device, ptr %37, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  %41 = getelementptr inbounds %struct.ubi_volume_desc, ptr %0, i32 0, i32 1
  store i32 2, ptr %41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_check_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_volume_notify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_write_leb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_exclusive(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ubi_device, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %10, %12
  %14 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %23, !prof !10

18:                                               ; preds = %1
  %19 = tail call ptr @llvm.thread.pointer() #12
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.get_exclusive, i32 noundef 51, i32 noundef %21) #16
  tail call void @dump_stack() #16
  br label %29

23:                                               ; preds = %1
  %24 = icmp eq i32 %16, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.ubi_volume, ptr %2, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef %16, i32 noundef %28) #12
  br label %32

29:                                               ; preds = %23, %18
  store i32 0, ptr %14, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %6, align 8
  store i32 1, ptr %11, align 8
  %30 = getelementptr inbounds %struct.ubi_volume_desc, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  store i32 3, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ -16, %25 ], [ %31, %29 ]
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.ubi_device, ptr %34, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_start_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_start_leb_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_unmap_leb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_is_mapped(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_get_volume_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_major2num(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_close_volume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_sync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_get_by_major(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @verify_mkvol_req(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 2
  %4 = load i64, ptr %3, align 1
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 1
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = icmp slt i8 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 5
  %16 = load i16, ptr %15, align 1
  %17 = icmp slt i16 %16, 0
  br i1 %17, label %74, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %1, align 1
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = icmp sge i32 %19, %23
  %25 = icmp eq i32 %8, 0
  %26 = select i1 %24, i1 true, i1 %25
  %27 = icmp eq i64 %4, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %74, label %35

29:                                               ; preds = %18
  %30 = icmp ne i32 %19, -1
  %31 = icmp eq i32 %8, 0
  %32 = select i1 %30, i1 true, i1 %31
  %33 = icmp eq i64 %4, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %74, label %35

35:                                               ; preds = %29, %21
  %36 = add nsw i8 %12, -3
  %37 = icmp ult i8 %36, 2
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 254
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = and i32 %41, 1
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i8 %12, 4
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %8, %51
  br i1 %52, label %74, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  %57 = and i32 %56, %8
  %58 = icmp ne i32 %8, 1
  %59 = icmp ne i32 %57, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %74, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  %65 = icmp eq i16 %16, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = icmp ugt i16 %16, 127
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = zext i16 %16 to i32
  %71 = add nuw nsw i32 %70, 1
  %72 = tail call i32 @strnlen(ptr noundef %62, i32 noundef %71)
  %73 = icmp eq i32 %72, %70
  br i1 %73, label %76, label %74

74:                                               ; preds = %69, %67, %61, %53, %49, %44, %38, %35, %29, %21, %14, %10, %6, %2
  %75 = phi i32 [ -22, %2 ], [ -22, %6 ], [ -22, %10 ], [ -22, %14 ], [ -22, %29 ], [ -22, %38 ], [ -22, %49 ], [ -22, %53 ], [ -22, %69 ], [ -22, %61 ], [ -22, %35 ], [ -36, %67 ], [ -22, %21 ], [ -22, %44 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  tail call void @ubi_dump_mkvol_req(ptr noundef %1) #12
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi i32 [ %75, %74 ], [ 0, %69 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_create_volume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_remove_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_resize_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rename_volumes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = load i32, ptr %1, align 1
  %5 = icmp ugt i32 %4, 32
  br i1 %5, label %177, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %177, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  br label %17

10:                                               ; preds = %32
  %11 = add nuw nsw i32 %18, 1
  %12 = load i32, ptr %1, align 1
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = add i32 %12, -1
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %41, label %63

17:                                               ; preds = %10, %8
  %18 = phi i32 [ 0, %8 ], [ %11, %10 ]
  %19 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %18
  %20 = load i32, ptr %19, align 1
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %177, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %9, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %177

25:                                               ; preds = %22
  %26 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %18, i32 1
  %27 = load i16, ptr %26, align 1
  %28 = sext i16 %27 to i32
  %29 = icmp slt i16 %27, 0
  br i1 %29, label %177, label %30

30:                                               ; preds = %25
  %31 = icmp ugt i16 %27, 127
  br i1 %31, label %177, label %32

32:                                               ; preds = %30
  %33 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %18, i32 3
  %34 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %18, i32 3, i32 %28
  store i8 0, ptr %34, align 1
  %35 = tail call i32 @strlen(ptr noundef %33)
  %36 = load i16, ptr %26, align 1
  %37 = sext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %10, label %177

39:                                               ; preds = %49, %41
  %40 = icmp eq i32 %43, %15
  br i1 %40, label %63, label %41

41:                                               ; preds = %39, %14
  %42 = phi i32 [ %43, %39 ], [ 0, %14 ]
  %43 = add nuw nsw i32 %42, 1
  %44 = icmp slt i32 %43, %12
  br i1 %44, label %45, label %39

45:                                               ; preds = %41
  %46 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %42
  %47 = load i32, ptr %46, align 1
  %48 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %42, i32 3
  br label %52

49:                                               ; preds = %58
  %50 = add nuw i32 %53, 1
  %51 = icmp eq i32 %50, %12
  br i1 %51, label %39, label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %43, %45 ], [ %50, %49 ]
  %54 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %53
  %55 = load i32, ptr %54, align 1
  %56 = icmp eq i32 %47, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %47) #12
  br label %177

58:                                               ; preds = %52
  %59 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %53, i32 3
  %60 = tail call i32 @strcmp(ptr noundef %48, ptr noundef %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %49

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %48) #12
  br label %177

63:                                               ; preds = %39, %14
  store volatile ptr %3, ptr %3, align 8
  %64 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %64, align 4
  %65 = icmp sgt i32 %12, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 2
  br label %68

68:                                               ; preds = %101, %66
  %69 = phi i32 [ 0, %66 ], [ %102, %101 ]
  %70 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %69
  %71 = load i32, ptr %70, align 1
  %72 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %69, i32 1
  %73 = load i16, ptr %72, align 1
  %74 = sext i16 %73 to i32
  %75 = getelementptr %struct.ubi_rnvol_req, ptr %1, i32 0, i32 2, i32 %69, i32 3
  %76 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %77 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 148) #17
  %78 = icmp eq ptr %77, null
  br i1 %78, label %162, label %79

79:                                               ; preds = %68
  %80 = load i32, ptr %67, align 8
  %81 = call ptr @ubi_open_volume(i32 noundef %80, i32 noundef %71, i32 noundef 4) #12
  %82 = getelementptr inbounds %struct.ubi_rename_entry, ptr %77, i32 0, i32 3
  store ptr %81, ptr %82, align 8
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = ptrtoint ptr %81 to i32
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %71, i32 noundef %85) #12
  call void @kfree(ptr noundef nonnull %77) #12
  br label %162

86:                                               ; preds = %79
  %87 = load ptr, ptr %81, align 4
  %88 = getelementptr inbounds %struct.ubi_volume, ptr %87, i32 0, i32 17
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, %74
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ubi_volume, ptr %87, i32 0, i32 18
  %93 = call i32 @bcmp(ptr %92, ptr %75, i32 %74)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call void @ubi_close_volume(ptr noundef %81) #12
  call void @kfree(ptr noundef nonnull %77) #12
  br label %101

96:                                               ; preds = %91, %86
  store i32 %74, ptr %77, align 8
  %97 = getelementptr inbounds %struct.ubi_rename_entry, ptr %77, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %97, ptr align 1 %75, i32 %74, i1 false)
  %98 = getelementptr inbounds %struct.ubi_rename_entry, ptr %77, i32 0, i32 4
  %99 = load ptr, ptr %64, align 4
  store ptr %98, ptr %64, align 4
  store ptr %3, ptr %98, align 4
  %100 = getelementptr inbounds %struct.ubi_rename_entry, ptr %77, i32 0, i32 4, i32 1
  store ptr %99, ptr %100, align 8
  store volatile ptr %98, ptr %99, align 4
  br label %101

101:                                              ; preds = %96, %95
  %102 = add nuw nsw i32 %69, 1
  %103 = load i32, ptr %1, align 1
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %68, label %105

105:                                              ; preds = %101, %63
  %106 = load volatile ptr, ptr %3, align 8
  %107 = icmp eq ptr %106, %3
  br i1 %107, label %177, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 2
  br label %110

110:                                              ; preds = %157, %108
  %111 = phi ptr [ %106, %108 ], [ %158, %157 ]
  %112 = phi ptr [ %106, %108 ], [ %155, %157 ]
  %113 = icmp eq ptr %111, %3
  br i1 %113, label %133, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %112, i32 -140
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i8, ptr %112, i32 -136
  br label %118

118:                                              ; preds = %130, %114
  %119 = phi ptr [ %111, %114 ], [ %131, %130 ]
  %120 = getelementptr i8, ptr %119, i32 -4
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ubi_volume, ptr %122, i32 0, i32 17
  %124 = load i32, ptr %123, align 8
  %125 = icmp eq i32 %116, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.ubi_volume, ptr %122, i32 0, i32 18
  %128 = call i32 @bcmp(ptr %117, ptr %127, i32 %116)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %154, label %130

130:                                              ; preds = %126, %118
  %131 = load ptr, ptr %119, align 4
  %132 = icmp eq ptr %131, %3
  br i1 %132, label %133, label %118

133:                                              ; preds = %130, %110
  %134 = load i32, ptr %109, align 8
  %135 = getelementptr i8, ptr %112, i32 -136
  %136 = call ptr @ubi_open_volume_nm(i32 noundef %134, ptr noundef %135, i32 noundef 3) #12
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = icmp eq ptr %136, inttoptr (i32 -19 to ptr)
  br i1 %139, label %154, label %140

140:                                              ; preds = %138
  %141 = ptrtoint ptr %136 to i32
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %135, i32 noundef %141) #12
  br label %162

142:                                              ; preds = %133
  %143 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %144 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %143, i32 noundef 3520, i32 noundef 148) #17
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  call void @ubi_close_volume(ptr noundef %136) #12
  br label %162

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.ubi_rename_entry, ptr %144, i32 0, i32 2
  store i32 1, ptr %148, align 4
  %149 = getelementptr inbounds %struct.ubi_rename_entry, ptr %144, i32 0, i32 3
  store ptr %136, ptr %149, align 8
  %150 = getelementptr inbounds %struct.ubi_rename_entry, ptr %144, i32 0, i32 4
  %151 = load ptr, ptr %3, align 8
  %152 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %150, ptr %152, align 4
  store ptr %151, ptr %150, align 4
  %153 = getelementptr inbounds %struct.ubi_rename_entry, ptr %144, i32 0, i32 4, i32 1
  store ptr %3, ptr %153, align 8
  store volatile ptr %150, ptr %3, align 8
  br label %154

154:                                              ; preds = %147, %138, %126
  %155 = load ptr, ptr %112, align 4
  %156 = icmp eq ptr %155, %3
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %3, align 8
  br label %110

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 18
  call void @mutex_lock(ptr noundef %160) #12
  %161 = call i32 @ubi_rename_volumes(ptr noundef %0, ptr noundef nonnull %3) #12
  call void @mutex_unlock(ptr noundef %160) #12
  br label %162

162:                                              ; preds = %159, %146, %140, %84, %68
  %163 = phi i32 [ %161, %159 ], [ %85, %84 ], [ %141, %140 ], [ -12, %146 ], [ -12, %68 ]
  %164 = load ptr, ptr %3, align 8
  %165 = icmp eq ptr %164, %3
  br i1 %165, label %177, label %166

166:                                              ; preds = %166, %162
  %167 = phi ptr [ %169, %166 ], [ %164, %162 ]
  %168 = getelementptr i8, ptr %167, i32 -140
  %169 = load ptr, ptr %167, align 4
  %170 = getelementptr i8, ptr %167, i32 -4
  %171 = load ptr, ptr %170, align 4
  call void @ubi_close_volume(ptr noundef %171) #12
  %172 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %167, align 4
  %175 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  store ptr %173, ptr %175, align 4
  store volatile ptr %174, ptr %173, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %167, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %172, align 4
  call void @kfree(ptr noundef %168) #12
  %176 = icmp eq ptr %169, %3
  br i1 %176, label %177, label %166

177:                                              ; preds = %166, %162, %105, %62, %57, %32, %30, %25, %22, %17, %6, %2
  %178 = phi i32 [ -22, %57 ], [ -22, %62 ], [ -22, %2 ], [ 0, %6 ], [ 0, %105 ], [ %163, %162 ], [ %163, %166 ], [ -22, %32 ], [ -36, %30 ], [ -22, %25 ], [ -22, %17 ], [ -22, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_bitflip_check(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_mkvol_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_nm(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_rename_volumes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_attach_mtd_dev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_detach_mtd_dev(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147912783, i64 2147913063, i64 2147913397, i64 2147913731}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151077703, i64 2151077728}
!12 = !{i64 3573237}
!13 = !{i64 3573434}
!14 = !{i64 2151058713}
!15 = !{i64 2151077125, i64 2151077150}
!16 = !{!"auto-init"}
!17 = !{i64 2153015246, i64 2153015526, i64 2153015860, i64 2153016194}
!18 = !{i64 2153029885, i64 2153030165, i64 2153030499, i64 2153030833}
!19 = !{i64 2153042614, i64 2153042894, i64 2153043228, i64 2153043562}
!20 = !{i64 2153069872, i64 2153070152, i64 2153070486, i64 2153070820}
!21 = !{i64 2153082745, i64 2153083025, i64 2153083359, i64 2153083693}
!22 = !{i64 2153103310, i64 2153103590, i64 2153103924, i64 2153104258}
!23 = !{i64 2153116036, i64 2153116316, i64 2153116650, i64 2153116984}
!24 = !{i64 2153126886, i64 2153127166, i64 2153127500, i64 2153127834}
!25 = !{i64 2153139804, i64 2153140084, i64 2153140418, i64 2153140752}
!26 = !{i64 2148948906}
!27 = !{i64 2148944730}
!28 = !{i64 2148944805, i64 2148944832, i64 2148944879, i64 2148944901, i64 2148944929, i64 2148944949}
!29 = !{i64 2148971909}
