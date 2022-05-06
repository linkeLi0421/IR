; ModuleID = '/llk/IR/drivers/memory/brcmstb_dpfe.c_pt.bc'
source_filename = "../drivers/memory/brcmstb_dpfe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmstb_dpfe_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex }
%struct.dpfe_api = type { i32, ptr, ptr, [3 x [16 x i32]] }
%struct.firmware = type { i32, ptr, ptr }
%struct.dpfe_firmware_header = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_brcmstb_dpfe__162_946_brcmstb_dpfe_driver_init6 = internal global ptr @brcmstb_dpfe_driver_init, section ".initcall6.init", align 4
@brcmstb_dpfe_driver = internal global %struct.platform_driver { ptr @brcmstb_dpfe_probe, ptr @brcmstb_dpfe_remove, ptr null, ptr null, ptr @brcmstb_dpfe_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_dpfe_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcmstb_dpfe_driver_exit = internal global ptr @brcmstb_dpfe_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [55 x i8] c"brcmstb_dpfe.author=Markus Mayer <mmayer@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [58 x i8] c"brcmstb_dpfe.description=BRCMSTB DDR PHY Front End Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [46 x i8] c"brcmstb_dpfe.file=drivers/memory/brcmstb_dpfe\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [25 x i8] c"brcmstb_dpfe.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"brcmstb-dpfe\00", align 1
@brcmstb_dpfe_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7268-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_old_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7271-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_old_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_old_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_new_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_v3 }, %struct.of_device_id zeroinitializer], align 4
@brcmstb_dpfe_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dpfe-cpu\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't map DCPU registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dpfe-dmem\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't map DCPU data memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dpfe-imem\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Couldn't map DCPU instruction memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Couldn't determine API\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't download firmware\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"registered with API v%d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dpfe.bin\00", align 1
@dpfe_v2_groups = internal global [2 x ptr] [ptr @dpfe_v2_group, ptr null], align 4
@dpfe_api_old_v2 = internal constant { i32, ptr, ptr, [3 x <{ i32, i32, i32, i32, [12 x i32] }>] } { i32 1, ptr @.str.11, ptr @dpfe_v2_groups, [3 x <{ i32, i32, i32, i32, [12 x i32] }>] [<{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 1, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 2, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 2, i32 1, i32 2, [12 x i32] zeroinitializer }>] }, align 4
@dpfe_v2_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dpfe_v2_attrs, ptr null }, align 4
@dpfe_v2_attrs = internal global [4 x ptr] [ptr @dev_attr_dpfe_info, ptr @dev_attr_dpfe_refresh, ptr @dev_attr_dpfe_vendor, ptr null], align 4
@dev_attr_dpfe_info = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @show_info, ptr null }, align 4
@dev_attr_dpfe_refresh = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @show_refresh, ptr @store_refresh }, align 4
@dev_attr_dpfe_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @show_vendor, ptr null }, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"dpfe_info\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%u.%u.%u.%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"ERROR: driver private data not set\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@get_error_text.error_text = internal unnamed_addr constant [7 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Header code incorrect\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Unknown command or argument\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Incorrect checksum\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Malformed command\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Timed out\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"dpfe_refresh\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"%#x %#x %#x %#x %#x %#x %#x\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"invalid message reply from DCPU: %#x\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"FATAL: communication error with DCPU\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"dpfe_vendor\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"%#x %#x %#x %#x %#x\0A\00", align 1
@dpfe_api_new_v2 = internal constant { i32, ptr, ptr, [3 x <{ i32, i32, [14 x i32] }>] } { i32 2, ptr null, ptr @dpfe_v2_groups, [3 x <{ i32, i32, [14 x i32] }>] [<{ i32, i32, [14 x i32] }> <{ i32 1, i32 257, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 513, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 514, [14 x i32] zeroinitializer }>] }, align 4
@dpfe_v3_groups = internal global [2 x ptr] [ptr @dpfe_v3_group, ptr null], align 4
@dpfe_api_v3 = internal constant { i32, ptr, ptr, <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32] }> } { i32 3, ptr null, ptr @dpfe_v3_groups, <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32] }> <{ <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 257, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 514, [14 x i32] zeroinitializer }>, [16 x i32] zeroinitializer }> }, align 4
@dpfe_v3_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dpfe_v3_attrs, ptr null }, align 4
@dpfe_v3_attrs = internal global [3 x ptr] [ptr @dev_attr_dpfe_info, ptr @dev_attr_dpfe_dram, ptr null], align 4
@dev_attr_dpfe_dram = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @show_dram, ptr null }, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"dpfe_dram\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"%#x %#x %#x %#x %#x %#x\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_brcmstb_dpfe_driver_exit, ptr @__initcall__kmod_brcmstb_dpfe__162_946_brcmstb_dpfe_driver_init6, ptr @brcmstb_dpfe_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_dpfe_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmstb_dpfe_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_dpfe_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 3
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmstb_dpfe_probe.__key) #9
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %8, align 8
  %9 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %9) #9
  store ptr %10, ptr %3, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #10
  br label %44

13:                                               ; preds = %5
  %14 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #9
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #10
  br label %44

19:                                               ; preds = %13
  %20 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.6) #9
  %21 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %44

25:                                               ; preds = %19
  %26 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %27 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 4
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #10
  br label %44

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @brcmstb_dpfe_download_firmware(ptr noundef nonnull %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %31, ptr noundef nonnull @.str.9) #9
  br label %44

35:                                               ; preds = %30
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr inbounds %struct.dpfe_api, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @sysfs_create_groups(ptr noundef %2, ptr noundef %38) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load ptr, ptr %27, align 4
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %43) #10
  br label %44

44:                                               ; preds = %41, %35, %33, %29, %24, %18, %12, %1
  %45 = phi i32 [ -19, %12 ], [ -2, %18 ], [ -2, %24 ], [ -2, %29 ], [ %34, %33 ], [ -12, %1 ], [ 0, %41 ], [ %39, %35 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dpfe_api, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @sysfs_remove_groups(ptr noundef %2, ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @brcmstb_dpfe_download_firmware(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_dpfe_download_firmware(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  %3 = alloca [16 x i32], align 4
  %4 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %6) #9
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !9
  %12 = call fastcc i32 @__send_command(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3)
  %13 = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br i1 %13, label %193, label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dpfe_api, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %193, label %20

20:                                               ; preds = %14
  %21 = call i32 @firmware_request_nowarn(ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef %5) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, -2
  %25 = select i1 %24, i32 -517, i32 %21
  br label %193

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, -32501506
  switch i32 %30, label %190 [
    i32 -32501506, label %32
    i32 -33488386, label %32
  ]

32:                                               ; preds = %26, %26
  %33 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %29, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  br i1 %31, label %35, label %40

35:                                               ; preds = %32
  %36 = call i32 @llvm.bswap.i32(i32 %34) #9
  %37 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %29, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  br label %43

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %29, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i32 [ %36, %35 ], [ %34, %40 ]
  %45 = phi i32 [ %39, %35 ], [ %42, %40 ]
  %46 = and i32 %44, 3
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %45, 3
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %190

51:                                               ; preds = %43
  %52 = add i32 %45, %44
  %53 = add i32 %52, 24
  %54 = load i32, ptr %27, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %190

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %29, i32 20
  %58 = getelementptr i8, ptr %57, i32 %44
  %59 = getelementptr i8, ptr %58, i32 %45
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #9
  %62 = select i1 %31, i32 %61, i32 %60
  call void @mutex_lock(ptr noundef %6) #9
  %63 = load ptr, ptr %0, align 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !10
  call void @mutex_unlock(ptr noundef %6) #9
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  call void @mutex_lock(ptr noundef %6) #9
  %68 = load ptr, ptr %0, align 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !10
  %70 = or i32 %69, 1
  %71 = load ptr, ptr %0, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #9, !srcloc !11
  call void @mutex_unlock(ptr noundef %6) #9
  br label %72

72:                                               ; preds = %67, %56
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr inbounds %struct.firmware, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 20
  %77 = getelementptr i8, ptr %76, i32 %45
  %78 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = lshr i32 %44, 2
  %81 = icmp ult i32 %44, 4
  br i1 %81, label %105, label %82

82:                                               ; preds = %72
  %83 = call i32 @llvm.umax.i32(i32 %80, i32 1) #9
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i32 [ %87, %84 ], [ 0, %82 ]
  %86 = getelementptr i32, ptr %79, i32 %85
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #9, !srcloc !11
  %87 = add nuw nsw i32 %85, 1
  %88 = icmp eq i32 %87, %83
  br i1 %88, label %89, label %84

89:                                               ; preds = %84
  br i1 %31, label %90, label %98

90:                                               ; preds = %90, %89
  %91 = phi i32 [ %96, %90 ], [ 0, %89 ]
  %92 = getelementptr i32, ptr %77, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #9
  %95 = getelementptr i32, ptr %79, i32 %91
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %94) #9, !srcloc !11
  %96 = add nuw nsw i32 %91, 1
  %97 = icmp eq i32 %96, %83
  br i1 %97, label %105, label %90

98:                                               ; preds = %98, %89
  %99 = phi i32 [ %103, %98 ], [ 0, %89 ]
  %100 = getelementptr i32, ptr %77, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i32, ptr %79, i32 %99
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %101) #9, !srcloc !11
  %103 = add nuw nsw i32 %99, 1
  %104 = icmp eq i32 %103, %83
  br i1 %104, label %105, label %98

105:                                              ; preds = %98, %90, %72
  %106 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = lshr i32 %45, 2
  %109 = icmp ult i32 %45, 4
  br i1 %109, label %133, label %110

110:                                              ; preds = %105
  %111 = call i32 @llvm.umax.i32(i32 %108, i32 1) #9
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i32 [ %115, %112 ], [ 0, %110 ]
  %114 = getelementptr i32, ptr %107, i32 %113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 0) #9, !srcloc !11
  %115 = add nuw nsw i32 %113, 1
  %116 = icmp eq i32 %115, %111
  br i1 %116, label %117, label %112

117:                                              ; preds = %112
  br i1 %31, label %118, label %126

118:                                              ; preds = %118, %117
  %119 = phi i32 [ %124, %118 ], [ 0, %117 ]
  %120 = getelementptr i32, ptr %76, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #9
  %123 = getelementptr i32, ptr %107, i32 %119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %122) #9, !srcloc !11
  %124 = add nuw nsw i32 %119, 1
  %125 = icmp eq i32 %124, %111
  br i1 %125, label %133, label %118

126:                                              ; preds = %126, %117
  %127 = phi i32 [ %131, %126 ], [ 0, %117 ]
  %128 = getelementptr i32, ptr %76, i32 %127
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr i32, ptr %107, i32 %127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #9, !srcloc !11
  %131 = add nuw nsw i32 %127, 1
  %132 = icmp eq i32 %131, %111
  br i1 %132, label %133, label %126

133:                                              ; preds = %126, %118, %105
  %134 = load ptr, ptr %78, align 4
  %135 = load ptr, ptr %106, align 4
  %136 = load i32, ptr %75, align 4
  br i1 %31, label %137, label %145

137:                                              ; preds = %133
  %138 = call i32 @llvm.bswap.i32(i32 %136) #9
  %139 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %75, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #9
  %142 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %75, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #9
  br label %150

145:                                              ; preds = %133
  %146 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %75, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.dpfe_firmware_header, ptr %75, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  br label %150

150:                                              ; preds = %145, %137
  %151 = phi i32 [ %144, %137 ], [ %149, %145 ]
  %152 = phi i32 [ %141, %137 ], [ %147, %145 ]
  %153 = phi i32 [ %138, %137 ], [ %136, %145 ]
  %154 = add i32 %52, %151
  %155 = add i32 %154, %152
  %156 = add i32 %155, %153
  br i1 %81, label %159, label %157

157:                                              ; preds = %150
  %158 = call i32 @llvm.umax.i32(i32 %80, i32 1)
  br label %163

159:                                              ; preds = %163, %150
  %160 = phi i32 [ %156, %150 ], [ %168, %163 ]
  br i1 %109, label %179, label %161

161:                                              ; preds = %159
  %162 = call i32 @llvm.umax.i32(i32 %108, i32 1)
  br label %171

163:                                              ; preds = %163, %157
  %164 = phi i32 [ %168, %163 ], [ %156, %157 ]
  %165 = phi i32 [ %169, %163 ], [ 0, %157 ]
  %166 = getelementptr i32, ptr %134, i32 %165
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #9, !srcloc !10
  %168 = add i32 %167, %164
  %169 = add nuw nsw i32 %165, 1
  %170 = icmp eq i32 %169, %158
  br i1 %170, label %159, label %163

171:                                              ; preds = %171, %161
  %172 = phi i32 [ %176, %171 ], [ %160, %161 ]
  %173 = phi i32 [ %177, %171 ], [ 0, %161 ]
  %174 = getelementptr i32, ptr %135, i32 %173
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #9, !srcloc !10
  %176 = add i32 %175, %172
  %177 = add nuw nsw i32 %173, 1
  %178 = icmp eq i32 %177, %162
  br i1 %178, label %179, label %171

179:                                              ; preds = %171, %159
  %180 = phi i32 [ %160, %159 ], [ %176, %171 ]
  %181 = icmp eq i32 %180, %62
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load ptr, ptr %0, align 4
  call void @mutex_lock(ptr noundef %6) #9
  %184 = getelementptr i8, ptr %183, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 0) #9, !srcloc !11
  %185 = getelementptr i8, ptr %183, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 0) #9, !srcloc !11
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #9, !srcloc !10
  %187 = and i32 %186, -5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %187) #9, !srcloc !11
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #9, !srcloc !10
  %189 = and i32 %188, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %189) #9, !srcloc !11
  call void @mutex_unlock(ptr noundef %6) #9
  br label %190

190:                                              ; preds = %182, %179, %51, %43, %26
  %191 = phi i32 [ -1, %179 ], [ 0, %182 ], [ -14, %26 ], [ -14, %43 ], [ -14, %51 ]
  %192 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %192) #9
  br label %193

193:                                              ; preds = %190, %23, %14, %11
  %194 = phi i32 [ %25, %23 ], [ %191, %190 ], [ 0, %11 ], [ -19, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %194
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__send_command(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.dpfe_api, ptr %5, i32 0, i32 3, i32 %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr i8, ptr %7, i32 20
  br label %10

10:                                               ; preds = %14, %3
  %11 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  tail call void @msleep(i32 noundef 1) #9
  %15 = add nuw nsw i32 %11, 1
  %16 = icmp eq i32 %15, 1000
  br i1 %16, label %17, label %10

17:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %144

18:                                               ; preds = %10
  %19 = getelementptr i32, ptr %6, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %29, %23 ], [ 0, %18 ]
  %25 = phi i32 [ %28, %23 ], [ 0, %18 ]
  %26 = getelementptr i32, ptr %6, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = add nuw i32 %24, 1
  %30 = icmp eq i32 %29, %21
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %18
  %32 = phi i32 [ 0, %18 ], [ %28, %23 ]
  %33 = shl nuw nsw i32 %21, 2
  %34 = add nuw nsw i32 %33, 256
  %35 = getelementptr i8, ptr %7, i32 %34
  br label %36

36:                                               ; preds = %46, %31
  %37 = phi i32 [ 0, %31 ], [ %47, %46 ]
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #9, !srcloc !11
  br label %46

40:                                               ; preds = %36
  %41 = getelementptr i32, ptr %6, i32 %37
  %42 = load i32, ptr %41, align 4
  %43 = shl nuw nsw i32 %37, 2
  %44 = add nuw nsw i32 %43, 256
  %45 = getelementptr i8, ptr %7, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %42) #9, !srcloc !11
  br label %46

46:                                               ; preds = %40, %39
  %47 = add nuw nsw i32 %37, 1
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %36

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 1) #9, !srcloc !11
  br label %51

51:                                               ; preds = %55, %49
  %52 = phi i32 [ 0, %49 ], [ %56, %55 ]
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  tail call void @msleep(i32 noundef 1) #9
  %56 = add nuw nsw i32 %52, 1
  %57 = icmp eq i32 %56, 1000
  br i1 %57, label %110, label %51

58:                                               ; preds = %51
  %59 = icmp eq i32 %52, 1000
  br i1 %59, label %110, label %60

60:                                               ; preds = %58
  %61 = getelementptr i8, ptr %7, i32 256
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !10
  store i32 %62, ptr %2, align 4
  %63 = getelementptr i8, ptr %7, i32 260
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !10
  %65 = getelementptr i32, ptr %2, i32 1
  store i32 %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %7, i32 264
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !10
  %68 = getelementptr i32, ptr %2, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %7, i32 268
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !10
  %71 = getelementptr i32, ptr %2, i32 3
  store i32 %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %7, i32 272
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !10
  %74 = getelementptr i32, ptr %2, i32 4
  store i32 %73, ptr %74, align 4
  %75 = getelementptr i8, ptr %7, i32 276
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !10
  %77 = getelementptr i32, ptr %2, i32 5
  store i32 %76, ptr %77, align 4
  %78 = getelementptr i8, ptr %7, i32 280
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !10
  %80 = getelementptr i32, ptr %2, i32 6
  store i32 %79, ptr %80, align 4
  %81 = getelementptr i8, ptr %7, i32 284
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !10
  %83 = getelementptr i32, ptr %2, i32 7
  store i32 %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %7, i32 288
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !10
  %86 = getelementptr i32, ptr %2, i32 8
  store i32 %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %7, i32 292
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !10
  %89 = getelementptr i32, ptr %2, i32 9
  store i32 %88, ptr %89, align 4
  %90 = getelementptr i8, ptr %7, i32 296
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !10
  %92 = getelementptr i32, ptr %2, i32 10
  store i32 %91, ptr %92, align 4
  %93 = getelementptr i8, ptr %7, i32 300
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #9, !srcloc !10
  %95 = getelementptr i32, ptr %2, i32 11
  store i32 %94, ptr %95, align 4
  %96 = getelementptr i8, ptr %7, i32 304
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #9, !srcloc !10
  %98 = getelementptr i32, ptr %2, i32 12
  store i32 %97, ptr %98, align 4
  %99 = getelementptr i8, ptr %7, i32 308
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !10
  %101 = getelementptr i32, ptr %2, i32 13
  store i32 %100, ptr %101, align 4
  %102 = getelementptr i8, ptr %7, i32 312
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !10
  %104 = getelementptr i32, ptr %2, i32 14
  store i32 %103, ptr %104, align 4
  %105 = getelementptr i8, ptr %7, i32 316
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !10
  %107 = getelementptr i32, ptr %2, i32 15
  store i32 %106, ptr %107, align 4
  %108 = load i32, ptr %68, align 4
  %109 = add i32 %108, 3
  br label %110

110:                                              ; preds = %60, %58, %55
  %111 = phi i1 [ false, %60 ], [ true, %58 ], [ true, %55 ]
  %112 = phi i32 [ 0, %60 ], [ -5, %58 ], [ -5, %55 ]
  %113 = phi i32 [ %53, %60 ], [ 16, %58 ], [ 16, %55 ]
  %114 = phi i32 [ %109, %60 ], [ %21, %58 ], [ %21, %55 ]
  %115 = load ptr, ptr %4, align 4
  %116 = load i32, ptr %115, align 4
  %117 = icmp slt i32 %116, 2
  %118 = select i1 %117, i32 20, i32 16
  %119 = load ptr, ptr %0, align 4
  %120 = getelementptr i8, ptr %119, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #9, !srcloc !11
  tail call void @mutex_unlock(ptr noundef %8) #9
  br i1 %111, label %144, label %121

121:                                              ; preds = %110
  %122 = icmp eq i32 %114, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %123, %121
  %124 = phi i32 [ %129, %123 ], [ 0, %121 ]
  %125 = phi i32 [ %128, %123 ], [ 0, %121 ]
  %126 = getelementptr i32, ptr %2, i32 %124
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, %125
  %129 = add nuw i32 %124, 1
  %130 = icmp eq i32 %129, %114
  br i1 %130, label %131, label %123

131:                                              ; preds = %123, %121
  %132 = phi i32 [ 0, %121 ], [ %128, %123 ]
  %133 = getelementptr i32, ptr %2, i32 %114
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %132, %134
  %136 = select i1 %135, i32 %113, i32 -2147483644
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %144, label %138

138:                                              ; preds = %131
  %139 = and i32 %136, 2147483647
  %140 = tail call i32 @llvm.cttz.i32(i32 %139, i1 true), !range !12
  %141 = xor i32 %140, -1
  %142 = icmp eq i32 %139, 0
  %143 = select i1 %142, i32 0, i32 %141
  br label %144

144:                                              ; preds = %138, %131, %110, %17
  %145 = phi i32 [ -5, %17 ], [ %112, %110 ], [ %143, %138 ], [ 0, %131 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(36) @.str.15, i32 36, i1 false) #9
  br label %32

9:                                                ; preds = %3
  %10 = call fastcc i32 @__send_command(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = sub i32 0, %10
  %14 = icmp ugt i32 %13, 6
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ 6, %15 ], [ %13, %12 ]
  %18 = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16, %9
  %23 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 24
  %26 = lshr i32 %24, 16
  %27 = and i32 %26, 255
  %28 = lshr i32 %24, 8
  %29 = and i32 %28, 255
  %30 = and i32 %24, 255
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %30)
  br label %32

32:                                               ; preds = %22, %16, %8
  %33 = phi i32 [ %31, %22 ], [ %20, %16 ], [ 35, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %33
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_refresh(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef writeonly %2) #2 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(36) @.str.15, i32 36, i1 false) #9
  br label %63

9:                                                ; preds = %3
  %10 = call fastcc i32 @__send_command(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = sub i32 0, %10
  %14 = icmp ugt i32 %13, 6
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ 6, %15 ], [ %13, %12 ]
  %18 = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %16, %9
  %23 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %6, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %63, label %29, !prof !8

29:                                               ; preds = %22
  %30 = lshr i32 %24, 28
  %31 = and i32 %24, 268435455
  switch i32 %30, label %38 [
    i32 1, label %32
    i32 0, label %35
  ]

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i8, ptr %33, i32 256
  br label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br label %43

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %6, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %40, ptr noundef nonnull @.str.26, i32 noundef %24) #10
  %41 = icmp eq ptr %2, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(38) %2, ptr noundef nonnull align 1 dereferenceable(38) @.str.27, i32 38, i1 false) #9
  br label %63

43:                                               ; preds = %35, %32
  %44 = phi ptr [ %37, %35 ], [ %34, %32 ]
  %45 = getelementptr i8, ptr %44, i32 %31
  %46 = icmp eq ptr %45, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %45, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !10
  %50 = lshr i32 %49, 24
  %51 = and i32 %50, 7
  %52 = lshr i32 %49, 27
  %53 = and i32 %52, 1
  %54 = lshr i32 %49, 28
  %55 = and i32 %54, 1
  %56 = lshr i32 %49, 29
  %57 = and i32 %56, 3
  %58 = lshr i32 %49, 31
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #9, !srcloc !10
  %60 = getelementptr i8, ptr %45, i32 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !10
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %59, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %58, i32 noundef %61)
  br label %63

63:                                               ; preds = %47, %43, %42, %38, %22, %16, %8
  %64 = phi i32 [ %62, %47 ], [ %20, %16 ], [ 35, %8 ], [ 0, %43 ], [ 0, %38 ], [ 37, %42 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_refresh(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca [16 x i32], align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = call fastcc i32 @__send_command(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %11, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %39, label %21, !prof !8

21:                                               ; preds = %14
  %22 = lshr i32 %16, 28
  %23 = and i32 %16, 268435455
  switch i32 %22, label %30 [
    i32 1, label %24
    i32 0, label %27
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 256
  br label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %11, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  br label %33

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %11, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %32, ptr noundef nonnull @.str.26, i32 noundef %16) #10
  br label %39

33:                                               ; preds = %27, %24
  %34 = phi ptr [ %29, %27 ], [ %26, %24 ]
  %35 = getelementptr i8, ptr %34, i32 %23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %38) #9, !srcloc !11
  br label %39

39:                                               ; preds = %37, %33, %30, %14, %9, %4
  %40 = phi i32 [ %3, %37 ], [ -22, %4 ], [ %12, %9 ], [ -5, %33 ], [ -5, %14 ], [ -5, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vendor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef writeonly %2) #2 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(36) @.str.15, i32 36, i1 false) #9
  br label %63

9:                                                ; preds = %3
  %10 = call fastcc i32 @__send_command(ptr noundef nonnull %6, i32 noundef 2, ptr noundef nonnull %4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = sub i32 0, %10
  %14 = icmp ugt i32 %13, 6
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ 6, %15 ], [ %13, %12 ]
  %18 = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %16, %9
  %23 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %6, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %63, label %29, !prof !8

29:                                               ; preds = %22
  %30 = lshr i32 %24, 28
  %31 = and i32 %24, 268435455
  switch i32 %30, label %38 [
    i32 1, label %32
    i32 0, label %35
  ]

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i8, ptr %33, i32 256
  br label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br label %43

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %6, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %40, ptr noundef nonnull @.str.26, i32 noundef %24) #10
  %41 = icmp eq ptr %2, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(38) %2, ptr noundef nonnull align 1 dereferenceable(38) @.str.27, i32 38, i1 false) #9
  br label %63

43:                                               ; preds = %35, %32
  %44 = phi ptr [ %37, %35 ], [ %34, %32 ]
  %45 = getelementptr i8, ptr %44, i32 %31
  %46 = icmp eq ptr %45, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #9, !srcloc !10
  %49 = lshr i32 %48, 24
  %50 = getelementptr i8, ptr %45, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !10
  %52 = lshr i32 %51, 24
  %53 = getelementptr i8, ptr %45, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !10
  %55 = lshr i32 %54, 24
  %56 = getelementptr i8, ptr %45, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !10
  %58 = lshr i32 %57, 24
  %59 = getelementptr i8, ptr %45, i32 16
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !10
  %61 = and i32 %60, 255
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %49, i32 noundef %52, i32 noundef %55, i32 noundef %58, i32 noundef %61)
  br label %63

63:                                               ; preds = %47, %43, %42, %38, %22, %16, %8
  %64 = phi i32 [ %62, %47 ], [ %20, %16 ], [ 35, %8 ], [ 0, %43 ], [ 0, %38 ], [ 37, %42 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_dram(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(36) @.str.15, i32 36, i1 false) #9
  br label %42

9:                                                ; preds = %3
  %10 = call fastcc i32 @__send_command(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = sub i32 0, %10
  %14 = icmp ugt i32 %13, 6
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ 6, %15 ], [ %13, %12 ]
  %18 = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %16, %9
  %23 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 255
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40)
  br label %42

42:                                               ; preds = %22, %16, %8
  %43 = phi i32 [ %41, %22 ], [ %20, %16 ], [ 35, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %43
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 3010797}
!11 = !{i64 3010379}
!12 = !{i32 0, i32 33}
