; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.73 = type { ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_gpu_show_priv = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }

@msm_debugfs_list = internal global [3 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.8, ptr @msm_gem_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.9, ptr @msm_mm_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.10, ptr @msm_fb_show, i32 0, ptr null }], align 4
@.str = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@msm_gpu_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @msm_gpu_open, ptr null, ptr @msm_gpu_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"kms\00", align 1
@msm_kms_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @msm_kms_open, ptr null, ptr @msm_kms_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"hangcheck_period_ms\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"disable_err_irq\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@shrink_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @shrink_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"*ERROR* could not install rd debugfs\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"*ERROR* could not install perf debugfs\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"gem\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"fbcon \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"user \00", align 1
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"%s Status:\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"0x%08llx\0A\00", align 1
@last_shrink_freed = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_debugfs_late_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @msm_rd_debugfs_init(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call i32 @msm_perf_debugfs_init(ptr noundef nonnull %3) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @msm_rd_debugfs_init(ptr noundef nonnull %13) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call i32 @msm_perf_debugfs_init(ptr noundef nonnull %13) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %15, %8, %5
  %22 = phi ptr [ %3, %5 ], [ %3, %8 ], [ %13, %18 ], [ %13, %15 ]
  %23 = phi ptr [ @.str.6, %5 ], [ @.str.7, %8 ], [ @.str.7, %18 ], [ @.str.6, %15 ]
  %24 = phi i32 [ %6, %5 ], [ %9, %8 ], [ %19, %18 ], [ %16, %15 ]
  %25 = getelementptr inbounds %struct.drm_minor, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull %23) #5
  br label %29

29:                                               ; preds = %21, %18, %11
  %30 = phi i32 [ 0, %11 ], [ 0, %18 ], [ %24, %21 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @msm_debugfs_list, i32 noundef 3, ptr noundef %7, ptr noundef %0) #5
  %8 = load ptr, ptr %6, align 4
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %8, ptr noundef %3, ptr noundef nonnull @msm_gpu_fops) #5
  %10 = load ptr, ptr %6, align 4
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %10, ptr noundef %3, ptr noundef nonnull @msm_kms_fops) #5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 39
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %13) #5
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 40
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %14, ptr noundef %15) #5
  %16 = load ptr, ptr %6, align 4
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 448, ptr noundef %16, ptr noundef %3, ptr noundef nonnull @shrink_fops) #5
  %18 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %19, align 8
  %23 = getelementptr inbounds %struct.msm_kms_funcs, ptr %22, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef nonnull %19, ptr noundef %0) #5
  br label %28

28:                                               ; preds = %26, %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_rd_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_perf_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gem_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 15
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 14
  tail call void @msm_gem_describe_objects(ptr noundef %14, ptr noundef %0) #5
  tail call void @mutex_unlock(ptr noundef %10) #5
  br label %15

15:                                               ; preds = %13, %2
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_mm_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !8
  %9 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %9, align 4, !alias.scope !8
  %10 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %10, align 4, !alias.scope !8
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %11, align 4, !alias.scope !8
  %12 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 33
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %13, i32 0, i32 1
  call void @drm_mm_print(ptr noundef %14, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_fb_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @msm_framebuffer_describe(ptr noundef %16, ptr noundef %0) #5
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 6
  tail call void @mutex_lock(ptr noundef %19) #5
  %20 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %31, label %23

23:                                               ; preds = %28, %17
  %24 = phi ptr [ %29, %28 ], [ %21, %17 ]
  %25 = getelementptr i8, ptr %24, i32 -4
  %26 = icmp eq ptr %25, %18
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  tail call void @msm_framebuffer_describe(ptr noundef %25, ptr noundef %0) #5
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr %24, align 4
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %23

31:                                               ; preds = %28, %17
  tail call void @mutex_unlock(ptr noundef %19) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_describe_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpu_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %12, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 8) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.msm_gpu, ptr %8, i32 0, i32 17
  %22 = tail call i32 @mutex_lock_interruptible(ptr noundef %21) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.msm_gpu, ptr %8, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %28 = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 4) #5
  %29 = tail call i32 @msm_gpu_hw_init(ptr noundef nonnull %8) #5
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %30, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr %32(ptr noundef nonnull %8) #5
  store ptr %33, ptr %18, align 8
  %34 = load ptr, ptr %25, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 4) #5
  tail call void @mutex_unlock(ptr noundef %21) #5
  %37 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = ptrtoint ptr %33 to i32
  br label %44

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.msm_gpu_show_priv, ptr %18, i32 0, i32 1
  store ptr %4, ptr %41, align 4
  %42 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @msm_gpu_show, ptr noundef nonnull %18) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %38, %20
  %45 = phi i32 [ %22, %20 ], [ %39, %38 ], [ %42, %40 ]
  tail call void @kfree(ptr noundef nonnull %18) #5
  br label %46

46:                                               ; preds = %44, %40, %16, %10, %2
  %47 = phi i32 [ %45, %44 ], [ -19, %10 ], [ -19, %2 ], [ -12, %16 ], [ 0, %40 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpu_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.msm_gpu_show_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %15, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i32 %17(ptr noundef %18) #5
  tail call void @mutex_unlock(ptr noundef %13) #5
  tail call void @kfree(ptr noundef %6) #5
  %20 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #5
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpu_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !11
  %4 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !11
  %5 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %5, align 4, !alias.scope !11
  %6 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 4, !alias.scope !11
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.msm_gpu_show_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %14, i32 0, i32 17
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef %19) #5
  %20 = getelementptr inbounds %struct.msm_gpu, ptr %14, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %8, align 4
  call void %23(ptr noundef %14, ptr noundef %24, ptr noundef nonnull %3) #5
  call void @mutex_unlock(ptr noundef %15) #5
  br label %25

25:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_kms_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 6
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load ptr, ptr %7, align 4
  %16 = tail call ptr @msm_disp_snapshot_state_sync(ptr noundef %15) #5
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.msm_kms, ptr %17, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %18) #5
  %19 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = ptrtoint ptr %16 to i32
  br label %26

22:                                               ; preds = %14
  %23 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @msm_kms_show, ptr noundef %16) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @msm_disp_state_free(ptr noundef %16) #5
  br label %26

26:                                               ; preds = %25, %22, %20, %10, %2
  %27 = phi i32 [ %21, %20 ], [ %23, %25 ], [ -19, %2 ], [ %12, %10 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_kms_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  tail call void @msm_disp_state_free(ptr noundef %6) #5
  %7 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_disp_snapshot_state_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_kms_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !14
  %4 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !14
  %5 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %5, align 4, !alias.scope !14
  %6 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 4, !alias.scope !14
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  call void @msm_disp_state_print(ptr noundef %8, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_state_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shrink_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @shrink_get, ptr noundef nonnull @shrink_set, ptr noundef nonnull @.str.14) #5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @shrink_get(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = load i32, ptr @last_shrink_freed, align 4
  %4 = zext i32 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shrink_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call i32 @msm_gem_shrinker_shrink(ptr noundef %0, i32 noundef %3) #5
  store i32 %4, ptr @last_shrink_freed, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_shrinker_shrink(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{!9}
!9 = distinct !{!9, !10, !"drm_seq_file_printer: argument 0"}
!10 = distinct !{!10, !"drm_seq_file_printer"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"drm_seq_file_printer: argument 0"}
!13 = distinct !{!13, !"drm_seq_file_printer"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"drm_seq_file_printer: argument 0"}
!16 = distinct !{!16, !"drm_seq_file_printer"}
