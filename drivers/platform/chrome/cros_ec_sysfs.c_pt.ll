; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_sysfs.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.anon.87 = type { ptr, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.76 }>
%union.anon.76 = type { %struct.anon.80, [4 x i8] }
%struct.anon.80 = type { i8, i8, i16, i32 }
%struct.ec_params_reboot_ec = type { i8, i8 }

@__UNIQUE_ID_license206 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [49 x i8] c"description=Expose the ChromeOS EC through sysfs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias208 = internal constant [29 x i8] c"alias=platform:cros-ec-sysfs\00", section ".modinfo", align 1
@cros_ec_sysfs_driver = internal global %struct.platform_driver { ptr @cros_ec_sysfs_probe, ptr @cros_ec_sysfs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"cros-ec-sysfs\00", align 1
@cros_ec_attr_group = internal constant %struct.attribute_group { ptr null, ptr @cros_ec_ctrl_visible, ptr null, ptr @__ec_attrs, ptr null }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to create attributes. err=%d\0A\00", align 1
@__ec_attrs = internal global [5 x ptr] [ptr @dev_attr_kb_wake_angle, ptr @dev_attr_reboot, ptr @dev_attr_version, ptr @dev_attr_flashinfo, ptr null], align 4
@dev_attr_kb_wake_angle = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @kb_wake_angle_show, ptr @kb_wake_angle_store }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"kb_wake_angle\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dev_attr_reboot = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @reboot_show, ptr @reboot_store }, align 4
@dev_attr_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @version_show, ptr null }, align 4
@dev_attr_flashinfo = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @flashinfo_show, ptr null }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"ro|rw|cancel|cold|disable-jump|hibernate|cold-ap-off\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" [at-shutdown]\0A\00", align 1
@reboot_store.words = internal unnamed_addr constant [8 x %struct.anon.87] [%struct.anon.87 { ptr @.str.7, i8 0, i8 0 }, %struct.anon.87 { ptr @.str.8, i8 1, i8 0 }, %struct.anon.87 { ptr @.str.9, i8 2, i8 0 }, %struct.anon.87 { ptr @.str.10, i8 8, i8 0 }, %struct.anon.87 { ptr @.str.11, i8 4, i8 0 }, %struct.anon.87 { ptr @.str.12, i8 5, i8 0 }, %struct.anon.87 { ptr @.str.13, i8 6, i8 0 }, %struct.anon.87 { ptr @.str.14, i8 -1, i8 2 }], align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cold-ap-off\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"disable-jump\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"hibernate\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"at-shutdown\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@version_show.image_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"RW\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"RO version:    %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"RW version:    %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Firmware copy: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Build info:    XFER / EC ERROR %d / %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Build info:    %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Chip info:     XFER / EC ERROR %d / %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Chip vendor:   %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Chip name:     %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Chip revision: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Board version: XFER / EC ERROR %d / %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Board version: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"flashinfo\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"FlashSize %d\0AWriteSize %d\0AEraseSize %d\0AProtectSize %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias208, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_license206], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_sysfs_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_sysfs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sysfs_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @sysfs_create_group(ptr noundef %5, ptr noundef nonnull @cros_ec_attr_group) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %6) #9
  br label %10

10:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sysfs_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @sysfs_remove_group(ptr noundef %5, ptr noundef nonnull @cros_ec_attr_group) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @cros_ec_ctrl_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, @dev_attr_kb_wake_angle
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i16 [ %11, %9 ], [ 0, %5 ]
  ret i16 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kb_wake_angle_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 272) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  %9 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 43
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  store i32 2, ptr %5, align 8
  store i8 5, ptr %8, align 4
  %14 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %8, i32 0, i32 1
  store i16 -1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 2
  store i32 13, ptr %15, align 8
  %16 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %18, ptr noundef nonnull %5) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, ptr %8, align 4
  %23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %22) #8
  br label %24

24:                                               ; preds = %21, %7
  %25 = phi i32 [ %19, %7 ], [ %23, %21 ]
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i32 [ %25, %24 ], [ -12, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kb_wake_angle_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !9
  %6 = call i32 @kstrtou16(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 272) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 5
  %14 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 43
  %18 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  store i32 2, ptr %10, align 8
  store i8 5, ptr %13, align 4
  %19 = load i16, ptr %5, align 2
  %20 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %13, i32 0, i32 1
  store i16 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 2
  store i32 13, ptr %21, align 8
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 3
  store i32 16, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %24, ptr noundef nonnull %10) #8
  call void @kfree(ptr noundef nonnull %10) #8
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, i32 %25, i32 %3
  br label %28

28:                                               ; preds = %12, %8, %4
  %29 = phi i32 [ %6, %4 ], [ -12, %8 ], [ %27, %12 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reboot_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.5) #8
  %5 = getelementptr i8, ptr %2, i32 %4
  %6 = sub i32 4096, %4
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %5, i32 noundef %6, ptr noundef nonnull @.str.6) #8
  %8 = add i32 %7, %4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reboot_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 22) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %98, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 5
  %10 = getelementptr inbounds %struct.ec_params_reboot_ec, ptr %9, i32 0, i32 1
  store i8 0, ptr %10, align 1
  %11 = load i8, ptr %2, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %96, label %13

13:                                               ; preds = %67, %8
  %14 = phi i8 [ 0, %8 ], [ %63, %67 ]
  %15 = phi i8 [ %11, %8 ], [ %68, %67 ]
  %16 = phi i32 [ 0, %8 ], [ %69, %67 ]
  %17 = phi i32 [ 0, %8 ], [ %64, %67 ]
  br label %18

18:                                               ; preds = %30, %13
  %19 = phi i8 [ %15, %13 ], [ %33, %30 ]
  %20 = phi i32 [ %16, %13 ], [ %31, %30 ]
  %21 = zext i8 %19 to i32
  %22 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %2, i32 %20
  %28 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.7, ptr noundef %27, i32 noundef 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %41

30:                                               ; preds = %18
  %31 = add i32 %20, 1
  %32 = getelementptr i8, ptr %2, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %80, label %18

35:                                               ; preds = %59
  %36 = or i8 %14, 2
  store i8 %36, ptr %10, align 1
  br label %62

37:                                               ; preds = %56, %53, %50, %47, %44, %41, %26
  %38 = phi i32 [ 0, %26 ], [ 1, %41 ], [ 2, %44 ], [ 3, %47 ], [ 4, %50 ], [ 5, %53 ], [ 6, %56 ]
  %39 = getelementptr [8 x %struct.anon.87], ptr @reboot_store.words, i32 0, i32 %38, i32 1
  %40 = load i8, ptr %39, align 4
  store i8 %40, ptr %9, align 4
  br label %62

41:                                               ; preds = %26
  %42 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.8, ptr noundef %27, i32 noundef 2)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %37, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.9, ptr noundef %27, i32 noundef 2)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.10, ptr noundef %27, i32 noundef 11)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %37, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.11, ptr noundef %27, i32 noundef 4)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %37, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.12, ptr noundef %27, i32 noundef 12)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %37, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.13, ptr noundef %27, i32 noundef 9)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %37, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.14, ptr noundef %27, i32 noundef 11)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %35, label %62

62:                                               ; preds = %59, %37, %35
  %63 = phi i8 [ %36, %35 ], [ %14, %37 ], [ %14, %59 ]
  %64 = phi i32 [ %17, %35 ], [ 1, %37 ], [ %17, %59 ]
  %65 = load i8, ptr %27, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %75, %62
  %68 = phi i8 [ %78, %75 ], [ %65, %62 ]
  %69 = phi i32 [ %76, %75 ], [ %20, %62 ]
  %70 = zext i8 %68 to i32
  %71 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 32
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %13

75:                                               ; preds = %67
  %76 = add i32 %69, 1
  %77 = getelementptr i8, ptr %2, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %67

80:                                               ; preds = %75, %62, %30
  %81 = phi i32 [ %64, %75 ], [ %17, %30 ], [ %64, %62 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  store i32 0, ptr %6, align 8
  %84 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = add nuw nsw i32 %86, 210
  %88 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 1
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 2
  store i32 2, ptr %89, align 8
  %90 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 3
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  %93 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %92, ptr noundef nonnull %6) #8
  %94 = icmp slt i32 %93, 0
  %95 = select i1 %94, i32 %93, i32 %3
  br label %96

96:                                               ; preds = %83, %80, %8
  %97 = phi i32 [ -22, %80 ], [ %95, %83 ], [ -22, %8 ]
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %98

98:                                               ; preds = %96, %4
  %99 = phi i32 [ %97, %96 ], [ -12, %4 ]
  ret i32 %99
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 272) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %111, label %7

7:                                                ; preds = %3
  store i32 0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = add nuw nsw i32 %10, 2
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 100, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %16, ptr noundef nonnull %5) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  %21 = getelementptr [32 x i8], ptr %20, i32 0, i32 31
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 2, i32 3
  %23 = getelementptr [32 x i8], ptr %22, i32 0, i32 31
  store i8 0, ptr %23, align 1
  %24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef %20) #8
  %25 = getelementptr i8, ptr %2, i32 %24
  %26 = sub i32 4096, %24
  %27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %25, i32 noundef %26, ptr noundef nonnull @.str.20, ptr noundef %22) #8
  %28 = add i32 %27, %24
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = sub i32 4096, %28
  %31 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 5, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = getelementptr [3 x ptr], ptr @version_show.image_names, i32 0, i32 %32
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %19
  %38 = phi ptr [ %36, %34 ], [ @.str.22, %19 ]
  %39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %29, i32 noundef %30, ptr noundef nonnull @.str.21, ptr noundef %38) #8
  %40 = add i32 %39, %28
  %41 = load i16, ptr %8, align 2
  %42 = zext i16 %41 to i32
  %43 = add nuw nsw i32 %42, 4
  store i32 %43, ptr %12, align 4
  store i32 252, ptr %13, align 4
  %44 = load ptr, ptr %15, align 8
  %45 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %44, ptr noundef nonnull %5) #8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = getelementptr i8, ptr %2, i32 %40
  %49 = sub i32 4096, %40
  %50 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 4
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %48, i32 noundef %49, ptr noundef nonnull @.str.23, i32 noundef %45, i32 noundef %51) #8
  br label %58

53:                                               ; preds = %37
  %54 = getelementptr [0 x i8], ptr %20, i32 0, i32 251
  store i8 0, ptr %54, align 1
  %55 = getelementptr i8, ptr %2, i32 %40
  %56 = sub i32 4096, %40
  %57 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %55, i32 noundef %56, ptr noundef nonnull @.str.24, ptr noundef %20) #8
  br label %58

58:                                               ; preds = %53, %47
  %59 = phi i32 [ %52, %47 ], [ %57, %53 ]
  %60 = add i32 %59, %40
  %61 = load i16, ptr %8, align 2
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %62, 5
  store i32 %63, ptr %12, align 4
  store i32 96, ptr %13, align 4
  %64 = load ptr, ptr %15, align 8
  %65 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %64, ptr noundef nonnull %5) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = getelementptr i8, ptr %2, i32 %60
  %69 = sub i32 4096, %60
  %70 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 4
  %71 = load i32, ptr %70, align 8
  %72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %68, i32 noundef %69, ptr noundef nonnull @.str.25, i32 noundef %65, i32 noundef %71) #8
  %73 = add i32 %72, %60
  br label %89

74:                                               ; preds = %58
  store i8 0, ptr %21, align 1
  store i8 0, ptr %23, align 1
  %75 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 4, i32 1
  %76 = getelementptr [32 x i8], ptr %75, i32 0, i32 31
  store i8 0, ptr %76, align 1
  %77 = getelementptr i8, ptr %2, i32 %60
  %78 = sub i32 4096, %60
  %79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %77, i32 noundef %78, ptr noundef nonnull @.str.26, ptr noundef %20) #8
  %80 = add i32 %79, %60
  %81 = getelementptr i8, ptr %2, i32 %80
  %82 = sub i32 4096, %80
  %83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %81, i32 noundef %82, ptr noundef nonnull @.str.27, ptr noundef %22) #8
  %84 = add i32 %80, %83
  %85 = getelementptr i8, ptr %2, i32 %84
  %86 = sub i32 4096, %84
  %87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %85, i32 noundef %86, ptr noundef nonnull @.str.28, ptr noundef %75) #8
  %88 = add i32 %84, %87
  br label %89

89:                                               ; preds = %74, %67
  %90 = phi i32 [ %73, %67 ], [ %88, %74 ]
  %91 = load i16, ptr %8, align 2
  %92 = zext i16 %91 to i32
  %93 = add nuw nsw i32 %92, 6
  store i32 %93, ptr %12, align 4
  store i32 2, ptr %13, align 4
  %94 = load ptr, ptr %15, align 8
  %95 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %94, ptr noundef nonnull %5) #8
  %96 = icmp slt i32 %95, 0
  %97 = getelementptr i8, ptr %2, i32 %90
  %98 = sub i32 4096, %90
  br i1 %96, label %99, label %104

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 4
  %101 = load i32, ptr %100, align 8
  %102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %97, i32 noundef %98, ptr noundef nonnull @.str.29, i32 noundef %95, i32 noundef %101) #8
  %103 = add i32 %102, %90
  br label %109

104:                                              ; preds = %89
  %105 = load i16, ptr %20, align 4
  %106 = zext i16 %105 to i32
  %107 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %97, i32 noundef %98, ptr noundef nonnull @.str.30, i32 noundef %106) #8
  %108 = add i32 %107, %90
  br label %109

109:                                              ; preds = %104, %99, %7
  %110 = phi i32 [ %103, %99 ], [ %108, %104 ], [ %17, %7 ]
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %111

111:                                              ; preds = %109, %3
  %112 = phi i32 [ %110, %109 ], [ -12, %3 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flashinfo_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 36) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  store i32 0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = add nuw nsw i32 %10, 16
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 16, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %16, ptr noundef nonnull %5) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 1, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 1, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #8
  br label %29

29:                                               ; preds = %19, %7
  %30 = phi i32 [ %17, %7 ], [ %28, %19 ]
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %31

31:                                               ; preds = %29, %3
  %32 = phi i32 [ %30, %29 ], [ -12, %3 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
