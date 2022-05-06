; ModuleID = '/llk/IR/drivers/mtd/ubi/vmt.c_pt.bc'
source_filename = "../drivers/mtd/ubi/vmt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_mkvol_req = type { i32, i32, i64, i8, i8, i16, [4 x i8], [128 x i8] }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.ubi_volume_desc = type { ptr, i32 }
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
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ubi_class = external dso_local global %struct.class, align 4
@volume_dev_groups = internal global [2 x ptr] [ptr @volume_dev_group, ptr null], align 4
@.str = private unnamed_addr constant [18 x i8] c"out of volume IDs\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"volume %d already exists\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"volume \22%s\22 exists (ID %d)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"not enough PEBs, only %d available\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%d PEBs are corrupted and not used\00", align 1
@ubi_vol_cdev_operations = external dso_local constant %struct.file_operations, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cannot add device\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"cannot create volume %d, error %d\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_remove_volume = private unnamed_addr constant [18 x i8] c"ubi_remove_volume\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"cannot remove volume %d, error %d\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"too small size %d, %d LEBs contain data\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"not enough PEBs: requested %d, available %d\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"cannot add character device for volume %d, error %d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@volume_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @volume_dev_attrs, ptr null }, align 4
@volume_dev_attrs = internal global [9 x ptr] [ptr @attr_vol_reserved_ebs, ptr @attr_vol_type, ptr @attr_vol_name, ptr @attr_vol_corrupted, ptr @attr_vol_alignment, ptr @attr_vol_usable_eb_size, ptr @attr_vol_data_bytes, ptr @attr_vol_upd_marker, ptr null], align 4
@attr_vol_reserved_ebs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_corrupted = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_alignment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_usable_eb_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_data_bytes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@attr_vol_upd_marker = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @vol_attribute_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"reserved_ebs\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@__func__.vol_attribute_show = private unnamed_addr constant [19 x i8] c"vol_attribute_show\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"corrupted\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"usable_eb_size\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"data_bytes\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"upd_marker\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"no volume info, but volume exists\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"negative values\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"bad alignment\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"alignment is not multiple of min I/O unit\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"bad data_pad, has to be %lld\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"bad vol_type\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"update marker and corrupted simultaneously\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"too large reserved_pebs\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"bad usable_leb_size, has to be %lld\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"too long volume name, max is %d\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"bad name_len %lld\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"corrupted dynamic volume\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bad used_ebs\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"bad last_eb_bytes\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"bad used_bytes\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"bad skip_check\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"volume info is different\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"self-check failed for volume %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_create_volume(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ubi_vtbl_record, align 4
  %4 = load i32, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %3, i8 0, i32 172, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %248

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 776) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %248, label %12

12:                                               ; preds = %8
  tail call void @device_initialize(ptr noundef nonnull %10) #11
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 33
  store ptr @vol_release, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 31
  store ptr @ubi_class, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 32
  store ptr @volume_dev_groups, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 25
  %24 = load i8, ptr %23, align 8
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %22, %12
  %27 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %27) #11
  %28 = icmp eq i32 %4, -1
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %38, %29
  %34 = phi i32 [ %39, %38 ], [ 0, %29 ]
  %35 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = add nuw nsw i32 %34, 1
  %40 = icmp eq i32 %39, %31
  br i1 %40, label %41, label %33

41:                                               ; preds = %38, %29
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str) #11
  br label %243

42:                                               ; preds = %33
  store i32 %34, ptr %1, align 1
  br label %43

43:                                               ; preds = %42, %26
  %44 = phi i32 [ %34, %42 ], [ %4, %26 ]
  %45 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 5
  %54 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 7
  br label %56

55:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %44) #11
  br label %243

56:                                               ; preds = %72, %52
  %57 = phi i32 [ 0, %52 ], [ %73, %72 ]
  %58 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ubi_volume, ptr %59, i32 0, i32 17
  %63 = load i32, ptr %62, align 8
  %64 = load i16, ptr %53, align 1
  %65 = sext i16 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ubi_volume, ptr %59, i32 0, i32 18
  %69 = tail call i32 @strcmp(ptr noundef %68, ptr noundef %54)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %54, i32 noundef %57) #11
  br label %243

72:                                               ; preds = %67, %61, %56
  %73 = add nuw nsw i32 %57, 1
  %74 = icmp eq i32 %73, %50
  br i1 %74, label %75, label %56

75:                                               ; preds = %72, %48
  %76 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 1
  %79 = load i32, ptr %78, align 1
  %80 = srem i32 %77, %79
  %81 = sub i32 %77, %80
  %82 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 11
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 2
  %84 = load i64, ptr %83, align 1
  %85 = sext i32 %81 to i64
  %86 = add nsw i64 %85, -1
  %87 = add i64 %86, %84
  %88 = icmp ult i64 %87, 4294967296
  br i1 %88, label %89, label %92, !prof !9

89:                                               ; preds = %75
  %90 = trunc i64 %87 to i32
  %91 = udiv i32 %90, %81
  br label %96

92:                                               ; preds = %75
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %81, i64 %87) #13, !srcloc !10
  %94 = extractvalue { i64, i64 } %93, 1
  %95 = trunc i64 %94 to i32
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i32 [ %91, %89 ], [ %95, %92 ]
  %98 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 9
  store i32 %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %100 = load i32, ptr %99, align 8
  %101 = icmp slt i32 %100, %97
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %100) #11
  %103 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 64
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %243, label %106

106:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %104) #11
  br label %243

107:                                              ; preds = %96
  %108 = sub i32 %100, %97
  store i32 %108, ptr %99, align 8
  %109 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 9
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %97
  store i32 %111, ptr %109, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %112 = load i16, ptr %27, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %114 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 3
  store i32 %44, ptr %114, align 8
  %115 = load i32, ptr %78, align 1
  %116 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 15
  store i32 %115, ptr %116, align 8
  %117 = load i32, ptr %76, align 8
  %118 = srem i32 %117, %115
  %119 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 16
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = sext i8 %121 to i32
  %123 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 10
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 5
  %125 = load i16, ptr %124, align 1
  %126 = sext i16 %125 to i32
  %127 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 17
  store i32 %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 18
  %129 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %128, ptr align 1 %129, i32 %126, i1 false)
  %130 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 2
  store ptr %0, ptr %130, align 4
  %131 = tail call i32 @ubi_wl_flush(ptr noundef %0, i32 noundef %44, i32 noundef -1) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %236

133:                                              ; preds = %107
  %134 = load i32, ptr %98, align 8
  %135 = tail call ptr @ubi_eba_create_table(ptr noundef nonnull %10, i32 noundef %134) #11
  %136 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = ptrtoint ptr %135 to i32
  br label %236

139:                                              ; preds = %133
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %10, ptr noundef %135) #11
  %140 = load i32, ptr %123, align 4
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i32, ptr %98, align 8
  %144 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 12
  store i32 %143, ptr %144, align 4
  %145 = load i32, ptr %82, align 8
  %146 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 13
  store i32 %145, ptr %146, align 8
  %147 = sext i32 %143 to i64
  %148 = sext i32 %145 to i64
  %149 = mul nsw i64 %148, %147
  %150 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 14
  store i64 %149, ptr %150, align 8
  br label %179

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 14
  %153 = load i64, ptr %152, align 8
  %154 = load i32, ptr %82, align 8
  %155 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 13
  %156 = icmp ult i64 %153, 4294967296
  br i1 %156, label %157, label %164, !prof !9

157:                                              ; preds = %151
  %158 = trunc i64 %153 to i32
  %159 = freeze i32 %158
  %160 = freeze i32 %154
  %161 = udiv i32 %159, %160
  %162 = mul i32 %161, %160
  %163 = sub i32 %159, %162
  br label %171

164:                                              ; preds = %151
  %165 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %154, i64 %153) #13, !srcloc !10
  %166 = extractvalue { i64, i64 } %165, 0
  %167 = extractvalue { i64, i64 } %165, 1
  %168 = lshr i64 %166, 32
  %169 = trunc i64 %168 to i32
  %170 = trunc i64 %167 to i32
  br label %171

171:                                              ; preds = %164, %157
  %172 = phi i32 [ %161, %157 ], [ %170, %164 ]
  %173 = phi i32 [ %163, %157 ], [ %169, %164 ]
  store i32 %173, ptr %155, align 8
  %174 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 12
  store i32 %172, ptr %174, align 4
  %175 = icmp eq i32 %173, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = add i32 %172, 1
  store i32 %177, ptr %174, align 4
  br label %179

178:                                              ; preds = %171
  store i32 %154, ptr %155, align 8
  br label %179

179:                                              ; preds = %178, %176, %142
  tail call void @_raw_spin_lock(ptr noundef %27) #11
  store ptr %10, ptr %45, align 4
  %180 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 4
  %181 = load i32, ptr %180, align 8
  %182 = add i32 %181, 1
  store i32 %182, ptr %180, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %183 = load i16, ptr %27, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %185 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %185, ptr noundef nonnull @ubi_vol_cdev_operations) #11
  %186 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 1, i32 1
  store ptr null, ptr %186, align 4
  %187 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %188 = load i32, ptr %187, align 4
  %189 = and i32 %188, -1048576
  %190 = add i32 %44, 1
  %191 = or i32 %189, %190
  %192 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  store i32 %191, ptr %192, align 8
  %193 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 3
  %194 = load i32, ptr %114, align 8
  %195 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.5, ptr noundef %193, i32 noundef %194) #11
  %196 = tail call i32 @cdev_device_add(ptr noundef %185, ptr noundef nonnull %10) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %179
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  br label %230

199:                                              ; preds = %179
  %200 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %200, i8 0, i32 160, i1 false)
  %201 = load i32, ptr %98, align 8
  %202 = tail call i32 @llvm.bswap.i32(i32 %201)
  store i32 %202, ptr %3, align 4
  %203 = load i32, ptr %116, align 8
  %204 = tail call i32 @llvm.bswap.i32(i32 %203)
  %205 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %3, i32 0, i32 1
  store i32 %204, ptr %205, align 4
  %206 = load i32, ptr %119, align 4
  %207 = tail call i32 @llvm.bswap.i32(i32 %206)
  %208 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %3, i32 0, i32 2
  store i32 %207, ptr %208, align 4
  %209 = load i32, ptr %127, align 8
  %210 = trunc i32 %209 to i16
  %211 = tail call i16 @llvm.bswap.i16(i16 %210)
  %212 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %3, i32 0, i32 5
  store i16 %211, ptr %212, align 2
  %213 = load i32, ptr %123, align 4
  %214 = icmp eq i32 %213, 3
  %215 = select i1 %214, i8 1, i8 2
  %216 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %3, i32 0, i32 3
  store i8 %215, ptr %216, align 4
  %217 = getelementptr inbounds %struct.ubi_volume, ptr %10, i32 0, i32 25
  %218 = load i8, ptr %217, align 8
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %199
  %222 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %3, i32 0, i32 7
  store i8 2, ptr %222, align 4
  br label %223

223:                                              ; preds = %221, %199
  %224 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %3, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %224, ptr align 4 %128, i32 %209, i1 false)
  %225 = call i32 @ubi_change_vtbl_record(ptr noundef %0, i32 noundef %44, ptr noundef nonnull %3) #11
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = call i32 @ubi_volume_notify(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0) #11
  call fastcc void @self_check_volumes(ptr noundef %0)
  br label %248

229:                                              ; preds = %223
  call void @cdev_device_del(ptr noundef %185, ptr noundef nonnull %10) #11
  br label %230

230:                                              ; preds = %229, %198
  %231 = phi i32 [ %196, %198 ], [ %225, %229 ]
  call void @_raw_spin_lock(ptr noundef %27) #11
  store ptr null, ptr %45, align 4
  %232 = load i32, ptr %180, align 8
  %233 = add i32 %232, -1
  store i32 %233, ptr %180, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %234 = load i16, ptr %27, align 4
  %235 = add i16 %234, 1
  store i16 %235, ptr %27, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  call void @ubi_eba_destroy_table(ptr noundef %135) #11
  br label %236

236:                                              ; preds = %230, %137, %107
  %237 = phi i32 [ %131, %107 ], [ %138, %137 ], [ %231, %230 ]
  call void @_raw_spin_lock(ptr noundef %27) #11
  %238 = load i32, ptr %98, align 8
  %239 = load i32, ptr %109, align 4
  %240 = sub i32 %239, %238
  store i32 %240, ptr %109, align 4
  %241 = load i32, ptr %99, align 8
  %242 = add i32 %241, %238
  store i32 %242, ptr %99, align 8
  br label %243

243:                                              ; preds = %236, %106, %102, %71, %55, %41
  %244 = phi i32 [ -23, %41 ], [ -17, %55 ], [ -17, %71 ], [ %237, %236 ], [ -28, %106 ], [ -28, %102 ]
  %245 = phi i32 [ -1, %41 ], [ %44, %55 ], [ %44, %71 ], [ %44, %236 ], [ %44, %106 ], [ %44, %102 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %246 = load i16, ptr %27, align 4
  %247 = add i16 %246, 1
  store i16 %247, ptr %27, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  call void @put_device(ptr noundef nonnull %10) #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %245, i32 noundef %244) #11
  br label %248

248:                                              ; preds = %243, %227, %8, %2
  %249 = phi i32 [ %244, %243 ], [ 0, %227 ], [ -30, %2 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %3) #11
  ret i32 %249
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vol_release(ptr noundef %0) #0 {
  tail call void @ubi_eba_replace_table(ptr noundef %0, ptr noundef null) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_eba_create_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_replace_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_change_vtbl_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_volume_notify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @self_check_volumes(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %201, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %201

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %15 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 63
  br label %16

16:                                               ; preds = %197, %10
  %17 = phi i32 [ %8, %10 ], [ %199, %197 ]
  %18 = phi i32 [ 0, %10 ], [ %198, %197 ]
  %19 = icmp ugt i32 %18, 2147479550
  %20 = add nsw i32 %18, -2147479551
  %21 = add i32 %20, %17
  %22 = select i1 %19, i32 %21, i32 %18
  tail call void @_raw_spin_lock(ptr noundef %11) #11
  %23 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %18
  %29 = load i32, ptr %28, align 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %190

31:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %32 = load i16, ptr %11, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %197

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 9
  %36 = load i32, ptr %35, align 8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 15
  %40 = load i32, ptr %39, align 8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 16
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 17
  %48 = load i32, ptr %47, align 8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42, %38, %34
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.27) #11
  br label %191

51:                                               ; preds = %46
  %52 = load i32, ptr %13, align 8
  %53 = icmp sgt i32 %40, %52
  %54 = icmp eq i32 %40, 0
  %55 = or i1 %54, %53
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.28) #11
  br label %191

57:                                               ; preds = %51
  %58 = load i32, ptr %14, align 4
  %59 = add i32 %58, -1
  %60 = and i32 %59, %40
  %61 = icmp ne i32 %40, 1
  %62 = icmp ne i32 %60, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.29) #11
  br label %191

65:                                               ; preds = %57
  %66 = srem i32 %52, %40
  %67 = icmp eq i32 %44, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = zext i32 %66 to i64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %69) #11
  br label %191

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -3
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.31) #11
  br label %191

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 25
  %78 = load i8, ptr %77, align 8
  %79 = and i8 %78, 4
  %80 = icmp eq i8 %79, 0
  %81 = and i8 %78, 12
  %82 = icmp eq i8 %81, 12
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.32) #11
  br label %191

84:                                               ; preds = %76
  %85 = load i32, ptr %15, align 4
  %86 = icmp sgt i32 %36, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.33) #11
  br label %191

88:                                               ; preds = %84
  %89 = sub i32 %52, %44
  %90 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 11
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, %89
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = sext i32 %89 to i64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %94) #11
  br label %191

95:                                               ; preds = %88
  %96 = icmp ugt i32 %48, 127
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 127) #11
  br label %191

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 18
  %100 = add nuw nsw i32 %48, 1
  %101 = tail call i32 @strnlen(ptr noundef %99, i32 noundef %100) #11
  %102 = icmp eq i32 %101, %48
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = zext i32 %101 to i64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %104) #11
  br label %191

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 12
  %107 = load i32, ptr %106, align 4
  %108 = sext i32 %107 to i64
  %109 = sext i32 %89 to i64
  %110 = mul nsw i64 %108, %109
  %111 = icmp eq i32 %72, 3
  br i1 %111, label %112, label %131

112:                                              ; preds = %105
  br i1 %80, label %114, label %113

113:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.37) #11
  br label %191

114:                                              ; preds = %112
  %115 = icmp eq i32 %107, %36
  br i1 %115, label %117, label %116

116:                                              ; preds = %114
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  br label %191

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 13
  %119 = load i32, ptr %118, align 8
  %120 = icmp eq i32 %119, %89
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.39) #11
  br label %191

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 14
  %124 = load i64, ptr %123, align 8
  %125 = icmp eq i64 %124, %110
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.40) #11
  br label %191

127:                                              ; preds = %122
  %128 = and i8 %78, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %153, label %130

130:                                              ; preds = %127
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.41) #11
  br label %191

131:                                              ; preds = %105
  %132 = icmp slt i32 %107, 0
  %133 = icmp sgt i32 %107, %36
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  br label %191

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 13
  %138 = load i32, ptr %137, align 8
  %139 = icmp slt i32 %138, 0
  %140 = icmp sgt i32 %138, %89
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.39) #11
  br label %191

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 14
  %145 = load i64, ptr %144, align 8
  %146 = icmp slt i64 %145, 0
  %147 = icmp sgt i64 %145, %110
  %148 = select i1 %146, i1 true, i1 %147
  %149 = sub nsw i64 %110, %109
  %150 = icmp slt i64 %145, %149
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.40) #11
  br label %191

153:                                              ; preds = %143, %127
  %154 = load ptr, ptr %12, align 4
  %155 = getelementptr %struct.ubi_vtbl_record, ptr %154, i32 %18, i32 1
  %156 = load i32, ptr %155, align 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #11
  %158 = getelementptr %struct.ubi_vtbl_record, ptr %154, i32 %18, i32 2
  %159 = load i32, ptr %158, align 1
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #11
  %161 = getelementptr %struct.ubi_vtbl_record, ptr %154, i32 %18, i32 5
  %162 = load i16, ptr %161, align 1
  %163 = tail call i16 @llvm.bswap.i16(i16 %162) #11
  %164 = zext i16 %163 to i32
  %165 = getelementptr %struct.ubi_vtbl_record, ptr %154, i32 %18, i32 4
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr %struct.ubi_vtbl_record, ptr %154, i32 %18, i32 3
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, 1
  %170 = select i1 %169, i32 3, i32 4
  %171 = icmp eq i32 %157, %40
  %172 = icmp eq i32 %160, %44
  %173 = select i1 %171, i1 %172, i1 false
  %174 = lshr i8 %78, 3
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %166, %175
  %177 = select i1 %173, i1 %176, i1 false
  %178 = icmp eq i32 %170, %72
  %179 = select i1 %177, i1 %178, i1 false
  %180 = icmp eq i32 %48, %164
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %182, label %186

182:                                              ; preds = %153
  %183 = getelementptr %struct.ubi_vtbl_record, ptr %154, i32 %18, i32 6
  %184 = tail call i32 @strncmp(ptr noundef %183, ptr noundef %99, i32 noundef %48) #11
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182, %153
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.42) #11
  br label %191

187:                                              ; preds = %182
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %188 = load i16, ptr %11, align 4
  %189 = add i16 %188, 1
  store i16 %189, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %197

190:                                              ; preds = %26
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.26) #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %18) #11
  br label %192

191:                                              ; preds = %186, %152, %142, %135, %130, %126, %121, %116, %113, %103, %97, %93, %87, %83, %75, %68, %64, %56, %50
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %18) #11
  tail call void @ubi_dump_vol_info(ptr noundef nonnull %24) #11
  br label %192

192:                                              ; preds = %191, %190
  %193 = load ptr, ptr %12, align 4
  %194 = getelementptr %struct.ubi_vtbl_record, ptr %193, i32 %18
  tail call void @ubi_dump_vtbl_record(ptr noundef %194, i32 noundef %18) #11
  tail call void @dump_stack() #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %195 = load i16, ptr %11, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %201

197:                                              ; preds = %187, %31
  %198 = add nuw nsw i32 %18, 1
  %199 = load i32, ptr %7, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %16, label %201

201:                                              ; preds = %197, %192, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_destroy_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_remove_volume(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ubi_volume_desc, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %18, label %13, !prof !9

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #11
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ubi_remove_volume, i32 noundef 347, i32 noundef %16) #14
  tail call void @dump_stack() #14
  br label %18

18:                                               ; preds = %13, %2
  %19 = getelementptr %struct.ubi_device, ptr %5, i32 0, i32 5, i32 %7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %3, %20
  br i1 %21, label %27, label %22, !prof !9

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #11
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 52
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ubi_remove_volume, i32 noundef 348, i32 noundef %25) #14
  tail call void @dump_stack() #14
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 69
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %71, label %36

36:                                               ; preds = %31
  store ptr null, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %37 = load i16, ptr %32, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %39 = icmp eq i32 %1, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = tail call i32 @ubi_change_vtbl_record(ptr noundef %5, i32 noundef %7, ptr noundef null) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40, %36
  %44 = load i32, ptr %8, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %50, label %54

46:                                               ; preds = %50
  %47 = add nuw nsw i32 %51, 1
  %48 = load i32, ptr %8, align 8
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %43
  %51 = phi i32 [ %47, %46 ], [ 0, %43 ]
  %52 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %5, ptr noundef %3, i32 noundef %51) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %46, label %69

54:                                               ; preds = %46, %43
  %55 = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %55, ptr noundef %3) #11
  tail call void @put_device(ptr noundef %3) #11
  tail call void @_raw_spin_lock(ptr noundef %32) #11
  %56 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %57, %9
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 10
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, %9
  store i32 %61, ptr %59, align 8
  tail call void @ubi_update_reserved(ptr noundef %5) #11
  %62 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %65 = load i16, ptr %32, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %67 = tail call i32 @ubi_volume_notify(ptr noundef %5, ptr noundef %3, i32 noundef 1) #11
  br i1 %39, label %68, label %75

68:                                               ; preds = %54
  tail call fastcc void @self_check_volumes(ptr noundef %5)
  br label %75

69:                                               ; preds = %50, %40
  %70 = phi i32 [ %41, %40 ], [ %52, %50 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %70) #11
  tail call void @_raw_spin_lock(ptr noundef %32) #11
  store ptr %3, ptr %19, align 4
  br label %71

71:                                               ; preds = %69, %31
  %72 = phi i32 [ %70, %69 ], [ -16, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %73 = load i16, ptr %32, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %75

75:                                               ; preds = %71, %68, %54, %27
  %76 = phi i32 [ %72, %71 ], [ -30, %27 ], [ 0, %68 ], [ 0, %54 ]
  ret i32 %76
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_unmap_leb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_update_reserved(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_resize_volume(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ubi_vtbl_record, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %3, i8 0, i32 172, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 69
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %119

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %18) #11
  br label %119

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 9
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %119, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @ubi_eba_create_table(ptr noundef %4, i32 noundef %1) #11
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  br label %119

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %31) #11
  %32 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11
  %35 = load i16, ptr %31, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11
  tail call void asm sideeffect "", "~{memory}"() #11
  br i1 %34, label %117, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %22, align 8
  %39 = sub i32 %1, %38
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  tail call void @_raw_spin_lock(ptr noundef %31) #11
  %42 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 10
  %43 = load i32, ptr %42, align 8
  %44 = icmp slt i32 %43, %39
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %39, i32 noundef %43) #11
  %46 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 64
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %47) #11
  br label %50

50:                                               ; preds = %49, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %51 = load i16, ptr %31, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %117

53:                                               ; preds = %41
  %54 = sub i32 %43, %39
  store i32 %54, ptr %42, align 8
  %55 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %39
  store i32 %57, ptr %55, align 4
  %58 = load i32, ptr %22, align 8
  tail call void @ubi_eba_copy_table(ptr noundef %4, ptr noundef %26, i32 noundef %58) #11
  tail call void @ubi_eba_replace_table(ptr noundef %4, ptr noundef %26) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %59 = load i16, ptr %31, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %85

61:                                               ; preds = %37
  %62 = icmp slt i32 %39, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %61
  %64 = sub i32 0, %39
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %69, label %74

66:                                               ; preds = %69
  %67 = add nuw nsw i32 %70, 1
  %68 = icmp eq i32 %67, %64
  br i1 %68, label %74, label %69

69:                                               ; preds = %66, %63
  %70 = phi i32 [ %67, %66 ], [ 0, %63 ]
  %71 = add i32 %70, %1
  %72 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %6, ptr noundef %4, i32 noundef %71) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %66, label %106

74:                                               ; preds = %66, %63
  tail call void @_raw_spin_lock(ptr noundef %31) #11
  %75 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 9
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %39
  store i32 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 10
  %79 = load i32, ptr %78, align 8
  %80 = sub i32 %79, %39
  store i32 %80, ptr %78, align 8
  tail call void @ubi_update_reserved(ptr noundef %6) #11
  tail call void @ubi_eba_copy_table(ptr noundef %4, ptr noundef %26, i32 noundef %1) #11
  tail call void @ubi_eba_replace_table(ptr noundef %4, ptr noundef %26) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %81 = load i16, ptr %31, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %83 = tail call i32 @ubi_wl_flush(ptr noundef %6, i32 noundef %8, i32 noundef -1) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %74, %61, %53
  %86 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr %struct.ubi_vtbl_record, ptr %87, i32 %8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %3, ptr noundef align 1 dereferenceable(172) %88, i32 172, i1 false)
  %89 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %89, ptr %3, align 4
  %90 = call i32 @ubi_change_vtbl_record(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %3) #11
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  store i32 %1, ptr %22, align 8
  %93 = load i32, ptr %13, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 12
  store i32 %1, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 11
  %98 = load i32, ptr %97, align 8
  %99 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 13
  store i32 %98, ptr %99, align 8
  %100 = sext i32 %1 to i64
  %101 = sext i32 %98 to i64
  %102 = mul nsw i64 %101, %100
  %103 = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 14
  store i64 %102, ptr %103, align 8
  br label %104

104:                                              ; preds = %95, %92
  %105 = call i32 @ubi_volume_notify(ptr noundef %6, ptr noundef %4, i32 noundef 2) #11
  call fastcc void @self_check_volumes(ptr noundef %6)
  br label %119

106:                                              ; preds = %85, %74, %69
  %107 = phi i32 [ %83, %74 ], [ %90, %85 ], [ %72, %69 ]
  br i1 %40, label %108, label %117

108:                                              ; preds = %106
  call void @_raw_spin_lock(ptr noundef %31) #11
  %109 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 9
  %110 = load i32, ptr %109, align 4
  %111 = sub i32 %110, %39
  store i32 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 10
  %113 = load i32, ptr %112, align 8
  %114 = add i32 %113, %39
  store i32 %114, ptr %112, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %115 = load i16, ptr %31, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %117

117:                                              ; preds = %108, %106, %50, %30
  %118 = phi i32 [ -28, %50 ], [ %107, %108 ], [ %107, %106 ], [ -16, %30 ]
  call void @kfree(ptr noundef %26) #11
  br label %119

119:                                              ; preds = %117, %104, %28, %21, %20, %2
  %120 = phi i32 [ -22, %20 ], [ %29, %28 ], [ %118, %117 ], [ 0, %104 ], [ -30, %2 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %3) #11
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_copy_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_rename_volumes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ubi_vtbl_rename_volumes(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %37, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 6
  br label %10

10:                                               ; preds = %34, %8
  %11 = phi ptr [ %6, %8 ], [ %35, %34 ]
  %12 = getelementptr i8, ptr %11, i32 -8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %11, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @ubi_remove_volume(ptr noundef %17, i32 noundef 1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %38

20:                                               ; preds = %10
  %21 = getelementptr i8, ptr %11, i32 -140
  %22 = getelementptr i8, ptr %11, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  tail call void @_raw_spin_lock(ptr noundef %9) #11
  %25 = load i32, ptr %21, align 4
  %26 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 17
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ubi_volume, ptr %24, i32 0, i32 18
  %28 = getelementptr i8, ptr %11, i32 -136
  %29 = load i32, ptr %21, align 4
  %30 = add i32 %29, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr align 4 %28, i32 %30, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %31 = load i16, ptr %9, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %33 = tail call i32 @ubi_volume_notify(ptr noundef %0, ptr noundef %24, i32 noundef 3) #11
  br label %34

34:                                               ; preds = %20, %15
  %35 = load ptr, ptr %11, align 4
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %10

37:                                               ; preds = %34, %5
  tail call fastcc void @self_check_volumes(ptr noundef %0)
  br label %38

38:                                               ; preds = %37, %15, %2
  %39 = phi i32 [ %3, %2 ], [ 0, %37 ], [ %18, %15 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_vtbl_rename_volumes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_add_volume(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %5, ptr noundef nonnull @ubi_vol_cdev_operations) #11
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 1, i32 1
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -1048576
  %10 = load i32, ptr %3, align 8
  %11 = add i32 %10, 1
  %12 = or i32 %11, %9
  %13 = tail call i32 @cdev_add(ptr noundef %5, i32 noundef %12, i32 noundef 1) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %4, i32 noundef %13) #11
  br label %30

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 33
  store ptr @vol_release, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  store i32 %12, ptr %20, align 8
  %21 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 31
  store ptr @ubi_class, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 32
  store ptr @volume_dev_groups, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %3, align 8
  %25 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %23, i32 noundef %24) #11
  %26 = tail call i32 @device_register(ptr noundef %1) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call fastcc void @self_check_volumes(ptr noundef %0)
  br label %30

29:                                               ; preds = %16
  tail call void @cdev_del(ptr noundef %5) #11
  br label %30

30:                                               ; preds = %29, %28, %15
  %31 = phi i32 [ %13, %15 ], [ %26, %29 ], [ 0, %28 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_free_volume(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %4
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 1
  tail call void @cdev_del(ptr noundef %6) #11
  tail call void @device_unregister(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vol_attribute_show(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @ubi_get_device(i32 noundef %7) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %95, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubi_device, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.ubi_device, ptr %8, i32 0, i32 5, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %18 = load i16, ptr %11, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %93

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %24 = load i16, ptr %11, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %26 = icmp eq ptr %1, @attr_vol_reserved_ebs
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %29)
  br label %80

31:                                               ; preds = %20
  %32 = icmp eq ptr %1, @attr_vol_type
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 3
  %37 = select i1 %36, ptr @.str.15, ptr @.str.16
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %37)
  br label %80

39:                                               ; preds = %31
  %40 = icmp eq ptr %1, @attr_vol_name
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 18
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef %42)
  br label %80

44:                                               ; preds = %39
  %45 = icmp eq ptr %1, @attr_vol_corrupted
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 25
  %48 = load i8, ptr %47, align 8
  %49 = lshr i8 %48, 2
  %50 = and i8 %49, 1
  %51 = zext i8 %50 to i32
  %52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %51)
  br label %80

53:                                               ; preds = %44
  %54 = icmp eq ptr %1, @attr_vol_alignment
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 15
  %57 = load i32, ptr %56, align 8
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %57)
  br label %80

59:                                               ; preds = %53
  %60 = icmp eq ptr %1, @attr_vol_usable_eb_size
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 11
  %63 = load i32, ptr %62, align 8
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %63)
  br label %80

65:                                               ; preds = %59
  %66 = icmp eq ptr %1, @attr_vol_data_bytes
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 14
  %69 = load i64, ptr %68, align 8
  %70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i64 noundef %69)
  br label %80

71:                                               ; preds = %65
  %72 = icmp eq ptr %1, @attr_vol_upd_marker
  br i1 %72, label %73, label %80

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 25
  %75 = load i8, ptr %74, align 8
  %76 = lshr i8 %75, 3
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  %79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %78)
  br label %80

80:                                               ; preds = %73, %71, %67, %61, %55, %46, %41, %33, %27
  %81 = phi i32 [ %30, %27 ], [ %38, %33 ], [ %43, %41 ], [ %52, %46 ], [ %58, %55 ], [ %64, %61 ], [ %70, %67 ], [ %79, %73 ], [ -22, %71 ]
  tail call void @_raw_spin_lock(ptr noundef %11) #11
  %82 = load i32, ptr %21, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %21, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90, !prof !15

85:                                               ; preds = %80
  %86 = tail call ptr @llvm.thread.pointer() #11
  %87 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 52
  %88 = load i32, ptr %87, align 8
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.vol_attribute_show, i32 noundef 104, i32 noundef %88) #14
  tail call void @dump_stack() #14
  br label %90

90:                                               ; preds = %85, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %91 = load i16, ptr %11, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %93

93:                                               ; preds = %90, %17
  %94 = phi i32 [ -19, %17 ], [ %81, %90 ]
  tail call void @ubi_put_device(ptr noundef nonnull %8) #11
  br label %95

95:                                               ; preds = %93, %3
  %96 = phi i32 [ -19, %3 ], [ %94, %93 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_get_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vol_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vtbl_record(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

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
!10 = !{i64 2147757364, i64 2147757644, i64 2147757978, i64 2147758312}
!11 = !{i64 2148944123}
!12 = !{i64 2148939947}
!13 = !{i64 2148940022, i64 2148940049, i64 2148940096, i64 2148940118, i64 2148940146, i64 2148940166}
!14 = !{i64 2148967126}
!15 = !{!"branch_weights", i32 1, i32 2000}
