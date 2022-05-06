; ModuleID = '/llk/IR/drivers/bus/brcmstb_gisb.c_pt.bc'
source_filename = "../drivers/bus/brcmstb_gisb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmstb_gisb_arb_device = type { ptr, ptr, i8, %struct.mutex, %struct.list_head, i32, [32 x ptr], i32 }

@__initcall__kmod_brcmstb_gisb__170_549_brcm_gisb_driver_init6 = internal global ptr @brcm_gisb_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author171 = internal constant [29 x i8] c"brcmstb_gisb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [58 x i8] c"brcmstb_gisb.description=Broadcom STB GISB arbiter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [43 x i8] c"brcmstb_gisb.file=drivers/bus/brcmstb_gisb\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"brcmstb_gisb.license=GPL v2\00", section ".modinfo", align 1
@brcmstb_gisb_arb_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @brcmstb_gisb_arb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gisb_arb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"brcm-gisb-arb\00", align 1
@brcmstb_gisb_arb_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7435-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7435 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7400-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7400 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7278 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7038 }, %struct.of_device_id zeroinitializer], align 4
@brcmstb_gisb_arb_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmstb_gisb_arb_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gisb_arb_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gisb_offsets_bcm7445 = internal constant [11 x i32] [i32 8, i32 16, i32 -1, i32 472, i32 480, i32 484, i32 2020, i32 2024, i32 2028, i32 2036, i32 2040], align 4
@gisb_offsets_bcm7435 = internal constant [11 x i32] [i32 12, i32 20, i32 -1, i32 344, i32 352, i32 356, i32 360, i32 -1, i32 364, i32 372, i32 376], align 4
@gisb_offsets_bcm7400 = internal constant [11 x i32] [i32 12, i32 20, i32 -1, i32 184, i32 192, i32 196, i32 200, i32 -1, i32 204, i32 212, i32 216], align 4
@gisb_offsets_bcm7278 = internal constant [11 x i32] [i32 8, i32 28, i32 -1, i32 544, i32 560, i32 564, i32 2040, i32 -1, i32 2016, i32 2032, i32 2036], align 4
@gisb_offsets_bcm7038 = internal constant [11 x i32] [i32 12, i32 20, i32 -1, i32 184, i32 192, i32 -1, i32 196, i32 -1, i32 200, i32 208, i32 -1], align 4
@brcmstb_gisb_arb_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&gdev->lock\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\013failed to look up compatible string\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"brcm,gisb-arb-master-mask\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"brcm,gisb-arb-master-names\00", align 1
@gisb_arb_sysfs_attr_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gisb_arb_sysfs_attrs, ptr null }, align 4
@brcmstb_gisb_arb_device_list = internal global %struct.list_head { ptr @brcmstb_gisb_arb_device_list, ptr @brcmstb_gisb_arb_device_list }, align 4
@gisb_die_notifier = internal global %struct.notifier_block { ptr @dump_gisb_error, ptr null, i32 0 }, align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@gisb_panic_notifier = internal global %struct.notifier_block { ptr @dump_gisb_error, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"registered irqs: %d, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\012GISB: %s at 0x%llx [%c %s], core: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"target abort\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\012GISB: breakpoint at 0x%llx [%c], core: %s\0A\00", align 1
@gisb_arb_sysfs_attrs = internal global [2 x ptr] [ptr @dev_attr_gisb_arb_timeout, ptr null], align 4
@dev_attr_gisb_arb_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @gisb_arb_get_timeout, ptr @gisb_arb_set_timeout }, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"gisb_arb_timeout\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__initcall__kmod_brcmstb_gisb__170_549_brcm_gisb_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcm_gisb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_gisb_arb_driver, ptr noundef nonnull @brcmstb_gisb_arb_probe, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_arb_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %6 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %7 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #8
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 2) #8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 176, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmstb_gisb_arb_probe.__key) #8
  %13 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 4
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 4, i32 1
  store ptr %13, ptr %14, align 4
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %5) #8
  store ptr %15, ptr %9, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = ptrtoint ptr %15 to i32
  br label %95

19:                                               ; preds = %11
  %20 = tail call ptr @of_match_node(ptr noundef nonnull @brcmstb_gisb_arb_of_match, ptr noundef %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %95

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.of_device_id, ptr %20, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %4) #8
  %29 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 2
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 4
  %31 = load ptr, ptr %0, align 8
  %32 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %6, ptr noundef nonnull @brcmstb_gisb_timeout_handler, ptr noundef null, i32 noundef 0, ptr noundef %31, ptr noundef nonnull %9) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %95, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr %0, align 8
  %36 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %7, ptr noundef nonnull @brcmstb_gisb_tea_handler, ptr noundef null, i32 noundef 0, ptr noundef %35, ptr noundef nonnull %9) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %95, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %8, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load ptr, ptr %0, align 8
  %42 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %8, ptr noundef nonnull @brcmstb_gisb_bp_handler, ptr noundef null, i32 noundef 0, ptr noundef %41, ptr noundef nonnull %9) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %95, label %44

44:                                               ; preds = %40, %38
  %45 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 5
  %46 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %45, i32 noundef 1, i32 noundef 0) #8
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 -1, ptr %45, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = tail call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %51 = load i32, ptr %45, align 4
  %52 = tail call i32 @__sw_hweight32(i32 noundef %51) #8
  %53 = icmp eq i32 %52, %50
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load i32, ptr %45, align 4
  %56 = tail call i32 @llvm.cttz.i32(i32 %55, i1 true), !range !8
  %57 = icmp eq i32 %55, 0
  %58 = select i1 %57, i32 -1, i32 %56
  %59 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 false) #8, !range !8
  %60 = sub nsw i32 31, %59
  %61 = select i1 %57, i32 -1, i32 %60
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %78, %54
  %64 = phi i32 [ %79, %78 ], [ %55, %54 ]
  %65 = phi i32 [ %76, %78 ], [ %58, %54 ]
  %66 = phi i32 [ %75, %78 ], [ 0, %54 ]
  %67 = shl nuw i32 1, %65
  %68 = and i32 %64, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = getelementptr %struct.brcmstb_gisb_arb_device, ptr %9, i32 0, i32 6, i32 %65
  %72 = tail call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %71, i32 noundef 1, i32 noundef %66) #8
  %73 = add i32 %66, 1
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i32 [ %73, %70 ], [ %66, %63 ]
  %76 = add nsw i32 %65, 1
  %77 = icmp eq i32 %76, %61
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %45, align 4
  br label %63

80:                                               ; preds = %74, %54, %49
  %81 = tail call i32 @sysfs_create_group(ptr noundef %2, ptr noundef nonnull @gisb_arb_sysfs_attr_group) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %84, align 8
  %85 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @brcmstb_gisb_arb_device_list, i32 0, i32 1), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.list_head, ptr @brcmstb_gisb_arb_device_list, i32 0, i32 1), align 4
  store ptr @brcmstb_gisb_arb_device_list, ptr %13, align 4
  store ptr %85, ptr %14, align 4
  store volatile ptr %13, ptr %85, align 4
  %86 = load volatile ptr, ptr @brcmstb_gisb_arb_device_list, align 4
  %87 = icmp eq ptr %86, @brcmstb_gisb_arb_device_list
  %88 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @brcmstb_gisb_arb_device_list, i32 0, i32 1), align 4
  %89 = icmp ne ptr %86, %88
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = tail call i32 @register_die_notifier(ptr noundef nonnull @gisb_die_notifier) #8
  %93 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @gisb_panic_notifier) #8
  br label %94

94:                                               ; preds = %91, %83
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef %7) #9
  br label %95

95:                                               ; preds = %94, %80, %40, %34, %24, %22, %17, %1
  %96 = phi i32 [ %18, %17 ], [ 0, %94 ], [ -22, %22 ], [ -12, %1 ], [ %32, %24 ], [ %36, %34 ], [ %42, %40 ], [ %81, %80 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_arb_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %3, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8
  br i1 %11, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %18

17:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %18

18:                                               ; preds = %17, %15, %1
  %19 = phi i32 [ %16, %15 ], [ %14, %17 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %3, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_arb_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %3, i32 0, i32 2
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !13
  br label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %5) #8, !srcloc !13
  br label %21

21:                                               ; preds = %18, %14, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_timeout_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call fastcc void @brcmstb_gisb_arb_decode_addr(ptr noundef %1, ptr noundef nonnull @.str.6)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_tea_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call fastcc void @brcmstb_gisb_arb_decode_addr(ptr noundef %1, ptr noundef nonnull @.str.10)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_bp_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [11 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !15
  %4 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %106, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8
  br i1 %12, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %19

18:                                               ; preds = %9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ %15, %18 ]
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %106, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i32, ptr %24, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i8, ptr %10, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr i8, ptr %31, i32 %26
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8
  br i1 %30, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %37

36:                                               ; preds = %28
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %37

37:                                               ; preds = %36, %34, %23
  %38 = phi i32 [ %35, %34 ], [ %33, %36 ], [ 0, %23 ]
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i32, ptr %39, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %10, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr i8, ptr %46, i32 %41
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8
  br i1 %45, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %52

52:                                               ; preds = %51, %49, %37
  %53 = phi i32 [ %50, %49 ], [ %48, %51 ], [ 0, %37 ]
  %54 = zext i32 %38 to i64
  %55 = zext i32 %53 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or i64 %56, %54
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i32, ptr %58, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %52
  %63 = load i8, ptr %10, align 4, !range !9
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr %1, align 4
  %66 = getelementptr i8, ptr %65, i32 %60
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8
  br i1 %64, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %71

70:                                               ; preds = %62
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %71

71:                                               ; preds = %70, %68, %52
  %72 = phi i32 [ %69, %68 ], [ %67, %70 ], [ 0, %52 ]
  %73 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, %72
  %76 = tail call i32 @__sw_hweight32(i32 noundef %75) #8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = tail call i32 @llvm.cttz.i32(i32 %75, i1 true) #8, !range !8
  %80 = icmp eq i32 %75, 0
  %81 = select i1 %80, i32 -1, i32 %79
  %82 = getelementptr %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 6, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78, %71
  %86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.7, i32 noundef %72)
  br label %87

87:                                               ; preds = %85, %78
  %88 = phi ptr [ %83, %78 ], [ %3, %85 ]
  %89 = and i32 %20, 2
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 82, i32 87
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %57, i32 noundef %91, ptr noundef nonnull %88) #9
  %93 = load ptr, ptr %4, align 4
  %94 = getelementptr i32, ptr %93, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %106, label %97

97:                                               ; preds = %87
  %98 = load i8, ptr %10, align 4, !range !9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %1, align 4
  %102 = getelementptr i8, ptr %101, i32 %95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 16777216) #8, !srcloc !13
  br label %106

103:                                              ; preds = %97
  %104 = load ptr, ptr %1, align 4
  %105 = getelementptr i8, ptr %104, i32 %95
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 1) #8, !srcloc !13
  br label %106

106:                                              ; preds = %103, %100, %87, %19, %2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #8
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmstb_gisb_arb_decode_addr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [11 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !15
  %4 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %109, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8
  br i1 %12, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %19

18:                                               ; preds = %9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ %15, %18 ]
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %109, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i32, ptr %24, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i8, ptr %10, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr i8, ptr %31, i32 %26
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8
  br i1 %30, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %37

36:                                               ; preds = %28
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %37

37:                                               ; preds = %36, %34, %23
  %38 = phi i32 [ %35, %34 ], [ %33, %36 ], [ 0, %23 ]
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i32, ptr %39, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %10, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr i8, ptr %46, i32 %41
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8
  br i1 %45, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %52

52:                                               ; preds = %51, %49, %37
  %53 = phi i32 [ %50, %49 ], [ %48, %51 ], [ 0, %37 ]
  %54 = zext i32 %38 to i64
  %55 = zext i32 %53 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or i64 %56, %54
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i32, ptr %58, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %52
  %63 = load i8, ptr %10, align 4, !range !9
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr i8, ptr %65, i32 %60
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8
  br i1 %64, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %71

70:                                               ; preds = %62
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %71

71:                                               ; preds = %70, %68, %52
  %72 = phi i32 [ %69, %68 ], [ %67, %70 ], [ 1, %52 ]
  %73 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %0, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, %72
  %76 = tail call i32 @__sw_hweight32(i32 noundef %75) #8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = tail call i32 @llvm.cttz.i32(i32 %75, i1 true) #8, !range !8
  %80 = icmp eq i32 %75, 0
  %81 = select i1 %80, i32 -1, i32 %79
  %82 = getelementptr %struct.brcmstb_gisb_arb_device, ptr %0, i32 0, i32 6, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78, %71
  %86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.7, i32 noundef %72)
  br label %87

87:                                               ; preds = %85, %78
  %88 = phi ptr [ %83, %78 ], [ %3, %85 ]
  %89 = and i32 %20, 2
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 82, i32 87
  %92 = and i32 %20, 4096
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.9, ptr @.str.6
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %1, i64 noundef %57, i32 noundef %91, ptr noundef nonnull %94, ptr noundef nonnull %88) #9
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr i32, ptr %96, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %109, label %100

100:                                              ; preds = %87
  %101 = load i8, ptr %10, align 4, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %104 = load ptr, ptr %0, align 4
  %105 = getelementptr i8, ptr %104, i32 %98
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 16777216) #8, !srcloc !13
  br label %109

106:                                              ; preds = %100
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr i8, ptr %107, i32 %98
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 1) #8, !srcloc !13
  br label %109

109:                                              ; preds = %106, %103, %87, %19, %2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gisb_arb_get_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8
  br i1 %14, label %20, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %21

20:                                               ; preds = %11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %21

21:                                               ; preds = %20, %18, %3
  %22 = phi i32 [ %19, %18 ], [ %17, %20 ], [ 0, %3 ]
  tail call void @mutex_unlock(ptr noundef %6) #8
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gisb_arb_set_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %7, i32 0, i32 3
  call void @mutex_lock(ptr noundef %15) #8
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %7, i32 0, i32 2
  %23 = load i8, ptr %22, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %26 = call i32 @llvm.bswap.i32(i32 %16) #8
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 %19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !13
  br label %32

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 %19
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %16) #8, !srcloc !13
  br label %32

32:                                               ; preds = %29, %25, %14
  call void @mutex_unlock(ptr noundef %15) #8
  br label %33

33:                                               ; preds = %32, %10, %4
  %34 = phi i32 [ %3, %32 ], [ %8, %4 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dump_gisb_error(ptr noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq ptr %0, @gisb_die_notifier
  %5 = select i1 %4, ptr @.str.15, ptr @.str.14
  %6 = load ptr, ptr @brcmstb_gisb_arb_device_list, align 4
  %7 = icmp eq ptr %6, @brcmstb_gisb_arb_device_list
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %11, %8 ], [ %6, %3 ]
  %10 = getelementptr i8, ptr %9, i32 -32
  tail call fastcc void @brcmstb_gisb_arb_decode_addr(ptr noundef %10, ptr noundef nonnull %5)
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, @brcmstb_gisb_arb_device_list
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %3
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 2}
!10 = !{i64 2151629307}
!11 = !{i64 2151259468}
!12 = !{i64 2151629530}
!13 = !{i64 3719597}
!14 = !{i64 2151260690}
!15 = !{!"auto-init"}
