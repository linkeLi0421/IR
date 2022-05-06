; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c"
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
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.93 = type { i8, i64 }
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
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
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
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@a5xx_debugfs_list = internal global [4 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.1, ptr @show, i32 0, ptr @pfp_print }, %struct.drm_info_list { ptr @.str.2, ptr @show, i32 0, ptr @me_print }, %struct.drm_info_list { ptr @.str.3, ptr @show, i32 0, ptr @meq_print }, %struct.drm_info_list { ptr @.str.4, ptr @show, i32 0, ptr @roq_print }], align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@reset_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @reset_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pfp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"meq\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"roq\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"PFP state:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  %02x: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ME state:\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"MEQ state:\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ROQ state:\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"  %02x: %08x %08x %08x %08x\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.11 = private unnamed_addr constant [6 x i8] c"%llx\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_debugfs_init(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @a5xx_debugfs_list, i32 noundef 4, ptr noundef %8, ptr noundef nonnull %1) #3
  %9 = load ptr, ptr %7, align 4
  %10 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str, i16 noundef zeroext 146, ptr noundef %9, ptr noundef %6, ptr noundef nonnull @reset_fops) #3
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !8
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %11, align 4, !alias.scope !8
  %12 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %12, align 4, !alias.scope !8
  %13 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %13, align 4, !alias.scope !8
  %14 = getelementptr inbounds %struct.drm_info_node, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_info_list, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  call void %17(ptr noundef %19, ptr noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pfp_print(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.5) #3
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 8224
  tail call void @msm_writel(i32 noundef %5, ptr noundef %7) #3
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 8228
  %10 = tail call i32 @msm_readl(ptr noundef %9) #3
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %10) #3
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 36
  br i1 %12, label %13, label %4

13:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @me_print(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.7) #3
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 8296
  tail call void @msm_writel(i32 noundef %5, ptr noundef %7) #3
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 11344
  %10 = tail call i32 @msm_readl(ptr noundef %9) #3
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %10) #3
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 29
  br i1 %12, label %13, label %4

13:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meq_print(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.8) #3
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8332
  tail call void @msm_writel(i32 noundef 0, ptr noundef %5) #3
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 8336
  %10 = tail call i32 @msm_readl(ptr noundef %9) #3
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef %10) #3
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %6

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @roq_print(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.9) #3
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8324
  tail call void @msm_writel(i32 noundef 0, ptr noundef %5) #3
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %20, %6 ]
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 8328
  %10 = tail call i32 @msm_readl(ptr noundef %9) #3
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr i8, ptr %11, i32 8328
  %13 = tail call i32 @msm_readl(ptr noundef %12) #3
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr i8, ptr %14, i32 8328
  %16 = tail call i32 @msm_readl(ptr noundef %15) #3
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr i8, ptr %17, i32 8328
  %19 = tail call i32 @msm_readl(ptr noundef %18) #3
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #3
  %20 = add nuw nsw i32 %7, 1
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %6

22:                                               ; preds = %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @reset_set, ptr noundef nonnull @.str.11) #3
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_set(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @capable(i32 noundef 21) #3
  br i1 %7, label %8, label %62

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.adreno_gpu, ptr %6, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @release_firmware(ptr noundef %11) #3
  store ptr null, ptr %10, align 4
  %12 = getelementptr %struct.adreno_gpu, ptr %6, i32 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @release_firmware(ptr noundef %13) #3
  store ptr null, ptr %12, align 4
  %14 = getelementptr inbounds %struct.a5xx_gpu, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 24
  %19 = load ptr, ptr %18, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %15, ptr noundef %19) #3
  %20 = load ptr, ptr %14, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #3, !srcloc !12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #3, !srcloc !13
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %30, label %28, !prof !14

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #3
  br label %30

29:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %20) #3
  br label %30

30:                                               ; preds = %29, %28, %26, %17
  store ptr null, ptr %14, align 8
  br label %31

31:                                               ; preds = %30, %8
  %32 = getelementptr inbounds %struct.a5xx_gpu, ptr %6, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 24
  %37 = load ptr, ptr %36, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %33, ptr noundef %37) #3
  %38 = load ptr, ptr %32, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %38) #3, !srcloc !12
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 1, ptr nonnull elementtype(i32) %38) #3, !srcloc !13
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !14

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef nonnull %38, i32 noundef 3) #3
  br label %48

47:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %38) #3
  br label %48

48:                                               ; preds = %47, %46, %44, %35
  store ptr null, ptr %32, align 8
  br label %49

49:                                               ; preds = %48, %31
  %50 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 20
  store i8 1, ptr %50, align 8
  %51 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %54 = tail call i32 @__pm_runtime_resume(ptr noundef %53, i32 noundef 4) #3
  %55 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %6) #3
  %59 = load ptr, ptr %51, align 8
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  %61 = tail call i32 @__pm_runtime_idle(ptr noundef %60, i32 noundef 4) #3
  tail call void @mutex_unlock(ptr noundef %9) #3
  br label %62

62:                                               ; preds = %49, %2
  %63 = phi i32 [ 0, %49 ], [ -22, %2 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!11 = !{i64 2148443349}
!12 = !{i64 840283, i64 2148330254, i64 2148330280, i64 2148330327, i64 2148330349, i64 2148330377, i64 2148330397}
!13 = !{i64 2148345484, i64 2148345516, i64 2148345545, i64 2148345579, i64 2148345610, i64 2148345633}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149768863}
