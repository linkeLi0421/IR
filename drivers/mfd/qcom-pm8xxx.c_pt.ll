; ModuleID = '/llk/IR/drivers/mfd/qcom-pm8xxx.c_pt.bc'
source_filename = "../drivers/mfd/qcom-pm8xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_irq_data = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.pm_irq_chip = type { ptr, %struct.spinlock, ptr, i32, i32, ptr, [0 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_qcom_pm8xxx__170_613_pm8xxx_init4 = internal global ptr @pm8xxx_init, section ".initcall4.init", align 4
@pm8xxx_driver = internal global %struct.platform_driver { ptr @pm8xxx_probe, ptr @pm8xxx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pm8xxx_exit = internal global ptr @pm8xxx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [41 x i8] c"qcom_pm8xxx.file=drivers/mfd/qcom-pm8xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [27 x i8] c"qcom_pm8xxx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [46 x i8] c"qcom_pm8xxx.description=PMIC 8xxx core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version174 = internal constant [24 x i8] c"qcom_pm8xxx.version=1.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"qcom_pm8xxx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias175 = internal constant [39 x i8] c"qcom_pm8xxx.alias=platform:pm8xxx-core\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pm8xxx-core\00", align 1
@pm8xxx_id_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8xxx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8xxx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8821_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8xxx_data }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"No matching driver data found\0A\00", align 1
@ssbi_regmap_config = internal constant %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @ssbi_reg_read, ptr @ssbi_reg_write, ptr null, i8 1, i32 1023, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"\013%s: Failed to read hw rev reg %d:rc=%d\0A\00", align 1
@__func__.pm8xxx_probe = private unnamed_addr constant [13 x i8] c"pm8xxx_probe\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\016%s: PMIC revision 1: %02X\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\013%s: Failed to read hw rev 2 reg %d:rc=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\016%s: PMIC revision 2: %02X\0A\00", align 1
@pm8xxx_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @irq_domain_translate_twocell }, align 4
@pm8xxx_data = internal constant %struct.pm_irq_data { i32 256, ptr @pm8xxx_irq_chip, ptr @pm8xxx_irq_handler }, align 4
@pm8821_data = internal constant %struct.pm_irq_data { i32 112, ptr @pm8821_irq_chip, ptr @pm8821_irq_handler }, align 4
@pm8xxx_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_mask_ack, ptr @pm8xxx_irq_unmask, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"pm8xxx\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\013%s: Failed Selecting Block %d rc=%d\0A\00", align 1
@__func__.pm8xxx_config_irq = private unnamed_addr constant [18 x i8] c"pm8xxx_config_irq\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\013%s: Failed Configuring IRQ rc=%d\0A\00", align 1
@__func__.pm8xxx_irq_get_irqchip_state = private unnamed_addr constant [29 x i8] c"pm8xxx_irq_get_irqchip_state\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013%s: Failed Reading Status rc=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\013%s: Can't read root status ret=%d\0A\00", align 1
@__func__.pm8xxx_irq_handler = private unnamed_addr constant [19 x i8] c"pm8xxx_irq_handler\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to read master %d ret=%d\0A\00", align 1
@__func__.pm8xxx_irq_master_handler = private unnamed_addr constant [26 x i8] c"pm8xxx_irq_master_handler\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\013%s: master bit set in root but no blocks: %d\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013%s: Failed reading %d block ret=%d\00", align 1
@__func__.pm8xxx_irq_block_handler = private unnamed_addr constant [25 x i8] c"pm8xxx_irq_block_handler\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\013%s: block bit set in master but no irqs: %d\00", align 1
@__func__.pm8xxx_read_block_irq = private unnamed_addr constant [22 x i8] c"pm8xxx_read_block_irq\00", align 1
@pm8821_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8821_irq_mask_ack, ptr @pm8821_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8821_irq_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"pm8821\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\013%s: Failed to mask IRQ:%d rc=%d\0A\00", align 1
@__func__.pm8821_irq_mask_ack = private unnamed_addr constant [20 x i8] c"pm8821_irq_mask_ack\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to CLEAR IRQ:%d rc=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"\013%s: Failed to read/write unmask IRQ:%d rc=%d\0A\00", align 1
@__func__.pm8821_irq_unmask = private unnamed_addr constant [18 x i8] c"pm8821_irq_unmask\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"\013%s: Reading Status of IRQ %d failed rc=%d\0A\00", align 1
@__func__.pm8821_irq_get_irqchip_state = private unnamed_addr constant [29 x i8] c"pm8821_irq_get_irqchip_state\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to read master 0 ret=%d\0A\00", align 1
@__func__.pm8821_irq_handler = private unnamed_addr constant [19 x i8] c"pm8821_irq_handler\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to read master 1 ret=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"\013%s: Reading block %d failed ret=%d\00", align 1
@__func__.pm8821_irq_block_handler = private unnamed_addr constant [25 x i8] c"pm8821_irq_block_handler\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__UNIQUE_ID_version174, ptr @__exitcall_pm8xxx_exit, ptr @__initcall__kmod_qcom_pm8xxx__170_613_pm8xxx_init4, ptr @__modver_attr, ptr @pm8xxx_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pm8xxx_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pm8xxx_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %75

7:                                                ; preds = %1
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %75, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @__devm_regmap_init(ptr noundef %3, ptr noundef null, ptr noundef %12, ptr noundef nonnull @ssbi_regmap_config, ptr noundef null, ptr noundef null) #7
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  br label %75

17:                                               ; preds = %10
  %18 = call i32 @regmap_read(ptr noundef %13, i32 noundef 2, ptr noundef nonnull %2) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pm8xxx_probe, i32 noundef 2, i32 noundef %18) #8
  br label %75

22:                                               ; preds = %17
  %23 = load i32, ptr %2, align 4
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.pm8xxx_probe, i32 noundef %23) #8
  %25 = call i32 @regmap_read(ptr noundef %13, i32 noundef 232, ptr noundef nonnull %2) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.pm8xxx_probe, i32 noundef 232, i32 noundef %25) #8
  br label %75

29:                                               ; preds = %22
  %30 = load i32, ptr %2, align 4
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.pm8xxx_probe, i32 noundef %30) #8
  %32 = load i32, ptr %4, align 4
  %33 = call i32 @llvm.uadd.sat.i32(i32 %32, i32 24) #7
  %34 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %33, i32 noundef 3520) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %75, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %34, ptr %37, align 8
  store ptr %13, ptr %34, align 4
  %38 = load i32, ptr %4, align 4
  %39 = add i32 %38, 7
  %40 = sdiv i32 %39, 8
  %41 = getelementptr inbounds %struct.pm_irq_chip, ptr %34, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = add nsw i32 %40, 7
  %43 = lshr i32 %42, 3
  %44 = getelementptr inbounds %struct.pm_irq_chip, ptr %34, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.pm_irq_chip, ptr %34, i32 0, i32 5
  store ptr %4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.pm_irq_chip, ptr %34, i32 0, i32 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq ptr %48, null
  %51 = getelementptr inbounds %struct.device_node, ptr %48, i32 0, i32 3
  %52 = select i1 %50, ptr null, ptr %51
  %53 = call ptr @__irq_domain_add(ptr noundef %52, i32 noundef %49, i32 noundef %49, i32 noundef 0, ptr noundef nonnull @pm8xxx_irq_domain_ops, ptr noundef nonnull %34) #7
  %54 = getelementptr inbounds %struct.pm_irq_chip, ptr %34, i32 0, i32 2
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %75, label %56

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.pm_irq_data, ptr %4, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load ptr, ptr %3, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi ptr [ %63, %62 ], [ %60, %56 ]
  %66 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %8, ptr noundef %58, ptr noundef null, i32 noundef 0, ptr noundef %65, ptr noundef nonnull %34) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #7
  %70 = load ptr, ptr %47, align 8
  %71 = call i32 @of_platform_populate(ptr noundef %70, ptr noundef null, ptr noundef null, ptr noundef %3) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %54, align 4
  call void @irq_domain_remove(ptr noundef %74) #7
  br label %75

75:                                               ; preds = %73, %68, %64, %36, %29, %27, %20, %15, %7, %6
  %76 = phi i32 [ %16, %15 ], [ %18, %20 ], [ %25, %27 ], [ -22, %6 ], [ %8, %7 ], [ -12, %29 ], [ -19, %36 ], [ %66, %64 ], [ %71, %73 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @pm8xxx_remove_child) #7
  %6 = getelementptr inbounds %struct.pm_irq_chip, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @irq_domain_remove(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_reg_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = trunc i32 %1 to i16
  %6 = call i32 @ssbi_read(ptr noundef %0, i16 noundef zeroext %5, ptr noundef nonnull %4, i32 noundef 1) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  %5 = trunc i32 %2 to i8
  store i8 %5, ptr %4, align 1
  %6 = trunc i32 %1 to i16
  %7 = call i32 @ssbi_write(ptr noundef %0, i16 noundef zeroext %6, ptr noundef nonnull %4, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssbi_read(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssbi_write(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 @irq_domain_translate_twocell(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.pm_irq_chip, ptr %8, i32 0, i32 5
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %23, %15 ]
  %17 = add i32 %16, %1
  %18 = load i32, ptr %5, align 4
  %19 = add i32 %18, %16
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.pm_irq_data, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  call void @irq_domain_set_info(ptr noundef %0, i32 noundef %17, i32 noundef %19, ptr noundef %22, ptr noundef %8, ptr noundef nonnull @handle_level_irq, ptr noundef null, ptr noundef null) #7
  call void @irq_modify_status(i32 noundef %17, i32 noundef 0, i32 noundef 1024) #7
  %23 = add nuw i32 %16, 1
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %15

25:                                               ; preds = %15, %11, %4
  %26 = phi i32 [ %9, %4 ], [ 0, %11 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_twocell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_remove_child(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr %1, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 443, ptr noundef nonnull %5) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.pm8xxx_irq_handler, i32 noundef %7) #8
  br label %153

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  %13 = lshr i32 %12, 1
  %14 = getelementptr inbounds %struct.pm_irq_chip, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %153, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pm_irq_chip, ptr %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.pm_irq_chip, ptr %1, i32 0, i32 2
  br label %20

20:                                               ; preds = %149, %17
  %21 = phi i32 [ %15, %17 ], [ %150, %149 ]
  %22 = phi i32 [ 0, %17 ], [ %151, %149 ]
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %149, label %26

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %27 = load ptr, ptr %1, align 4
  %28 = add i32 %22, 444
  %29 = call i32 @regmap_read(ptr noundef %27, i32 noundef %28, ptr noundef nonnull %4) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.pm8xxx_irq_master_handler, i32 noundef %22, i32 noundef %29) #8
  br label %147

33:                                               ; preds = %26
  %34 = load i32, ptr %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = shl i32 %22, 3
  br label %40

38:                                               ; preds = %33
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.pm8xxx_irq_master_handler, i32 noundef %22) #8
  br label %147

40:                                               ; preds = %145, %36
  %41 = phi i32 [ %34, %36 ], [ %146, %145 ]
  %42 = phi i32 [ 0, %36 ], [ %143, %145 ]
  %43 = shl nuw nsw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %142, label %46

46:                                               ; preds = %40
  %47 = add nuw nsw i32 %42, %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @_raw_spin_lock(ptr noundef %18) #7
  %48 = load ptr, ptr %1, align 4
  %49 = call i32 @regmap_write(ptr noundef %48, i32 noundef 448, i32 noundef %47) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.pm8xxx_read_block_irq, i32 noundef %47, i32 noundef %49) #8
  br label %59

53:                                               ; preds = %46
  %54 = load ptr, ptr %1, align 4
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 449, ptr noundef nonnull %3) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.pm8xxx_read_block_irq, i32 noundef %55) #8
  br label %59

59:                                               ; preds = %57, %53, %51
  %60 = phi i32 [ %49, %51 ], [ %55, %57 ], [ 0, %53 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %61 = load i16, ptr %18, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pm8xxx_irq_block_handler, i32 noundef %47, i32 noundef %60) #8
  br label %141

66:                                               ; preds = %59
  %67 = load i32, ptr %3, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = shl i32 %47, 3
  %71 = and i32 %67, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %75

73:                                               ; preds = %66
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.pm8xxx_irq_block_handler, i32 noundef %47) #8
  br label %141

75:                                               ; preds = %69
  %76 = load ptr, ptr %19, align 4
  %77 = call i32 @generic_handle_domain_irq(ptr noundef %76, i32 noundef %70) #7
  %78 = load i32, ptr %3, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = phi i32 [ %67, %69 ], [ %78, %75 ]
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = or i32 %70, 1
  %85 = load ptr, ptr %19, align 4
  %86 = call i32 @generic_handle_domain_irq(ptr noundef %85, i32 noundef %84) #7
  %87 = load i32, ptr %3, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i32 [ %87, %83 ], [ %80, %79 ]
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = or i32 %70, 2
  %94 = load ptr, ptr %19, align 4
  %95 = call i32 @generic_handle_domain_irq(ptr noundef %94, i32 noundef %93) #7
  %96 = load i32, ptr %3, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i32 [ %96, %92 ], [ %89, %88 ]
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = or i32 %70, 3
  %103 = load ptr, ptr %19, align 4
  %104 = call i32 @generic_handle_domain_irq(ptr noundef %103, i32 noundef %102) #7
  %105 = load i32, ptr %3, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = phi i32 [ %105, %101 ], [ %98, %97 ]
  %108 = and i32 %107, 16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = or i32 %70, 4
  %112 = load ptr, ptr %19, align 4
  %113 = call i32 @generic_handle_domain_irq(ptr noundef %112, i32 noundef %111) #7
  %114 = load i32, ptr %3, align 4
  br label %115

115:                                              ; preds = %110, %106
  %116 = phi i32 [ %114, %110 ], [ %107, %106 ]
  %117 = and i32 %116, 32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = or i32 %70, 5
  %121 = load ptr, ptr %19, align 4
  %122 = call i32 @generic_handle_domain_irq(ptr noundef %121, i32 noundef %120) #7
  %123 = load i32, ptr %3, align 4
  br label %124

124:                                              ; preds = %119, %115
  %125 = phi i32 [ %123, %119 ], [ %116, %115 ]
  %126 = and i32 %125, 64
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = or i32 %70, 6
  %130 = load ptr, ptr %19, align 4
  %131 = call i32 @generic_handle_domain_irq(ptr noundef %130, i32 noundef %129) #7
  %132 = load i32, ptr %3, align 4
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi i32 [ %132, %128 ], [ %125, %124 ]
  %135 = and i32 %134, 128
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = or i32 %70, 7
  %139 = load ptr, ptr %19, align 4
  %140 = call i32 @generic_handle_domain_irq(ptr noundef %139, i32 noundef %138) #7
  br label %141

141:                                              ; preds = %137, %133, %73, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %142

142:                                              ; preds = %141, %40
  %143 = add nuw nsw i32 %42, 1
  %144 = icmp eq i32 %143, 8
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i32, ptr %4, align 4
  br label %40

147:                                              ; preds = %142, %38, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %148 = load i32, ptr %14, align 4
  br label %149

149:                                              ; preds = %147, %20
  %150 = phi i32 [ %21, %20 ], [ %148, %147 ]
  %151 = add nuw i32 %22, 1
  %152 = icmp ult i32 %151, %150
  br i1 %152, label %20, label %153

153:                                              ; preds = %149, %11, %9
  %154 = phi i32 [ 0, %9 ], [ 1, %11 ], [ 1, %149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8xxx_irq_mask_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = getelementptr %struct.pm_irq_chip, ptr %3, i32 0, i32 6, i32 %5
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 14
  %10 = and i32 %6, 255
  %11 = zext i8 %9 to i32
  %12 = tail call fastcc i32 @pm8xxx_config_irq(ptr noundef %3, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8xxx_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = getelementptr %struct.pm_irq_chip, ptr %3, i32 0, i32 6, i32 %5
  %8 = load i8, ptr %7, align 1
  %9 = and i32 %6, 255
  %10 = zext i8 %8 to i32
  %11 = tail call fastcc i32 @pm8xxx_config_irq(ptr noundef %3, i32 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = shl i8 %7, 4
  %9 = and i8 %8, 112
  %10 = or i8 %9, 6
  %11 = getelementptr %struct.pm_irq_chip, ptr %4, i32 0, i32 6, i32 %6
  store i8 %10, ptr %11, align 1
  %12 = and i32 %1, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = and i32 %1, 1
  %16 = icmp eq i32 %15, 0
  %17 = or i8 %9, 2
  %18 = select i1 %16, i8 %10, i8 %17
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i8 %18, 116
  %22 = select i1 %20, i8 %18, i8 %21
  %23 = and i32 %1, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %32

25:                                               ; preds = %2
  %26 = and i32 %1, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = or i8 %9, 3
  br label %32

30:                                               ; preds = %25
  %31 = or i8 %9, 5
  br label %32

32:                                               ; preds = %30, %28, %14
  %33 = phi i8 [ %29, %28 ], [ %31, %30 ], [ %22, %14 ]
  store i8 %33, ptr %11, align 1
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i8 [ %22, %14 ], [ %33, %32 ]
  %36 = lshr i32 %6, 3
  %37 = or i8 %35, 8
  %38 = and i32 %36, 255
  %39 = zext i8 %37 to i32
  %40 = tail call fastcc i32 @pm8xxx_config_irq(ptr noundef %4, i32 noundef %38, i32 noundef %39)
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = icmp eq i32 %1, 3
  br i1 %9, label %10, label %36

10:                                               ; preds = %3
  %11 = lshr i32 %8, 3
  %12 = and i32 %8, 7
  %13 = getelementptr inbounds %struct.pm_irq_chip, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %13) #7
  %14 = load ptr, ptr %6, align 4
  %15 = and i32 %11, 255
  %16 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 448, i32 noundef %15) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.pm8xxx_irq_get_irqchip_state, i32 noundef %15, i32 noundef %16) #8
  br label %32

20:                                               ; preds = %10
  %21 = load ptr, ptr %6, align 4
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 451, ptr noundef nonnull %4) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.pm8xxx_irq_get_irqchip_state, i32 noundef %22) #8
  br label %32

26:                                               ; preds = %20
  %27 = load i32, ptr %4, align 4
  %28 = shl nuw nsw i32 1, %12
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  store i8 %31, ptr %2, align 1
  br label %32

32:                                               ; preds = %26, %24, %18
  %33 = phi i32 [ %16, %18 ], [ %22, %24 ], [ 0, %26 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %34 = load i16, ptr %13, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %13, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %36

36:                                               ; preds = %32, %3
  %37 = phi i32 [ %33, %32 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm8xxx_config_irq(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.pm_irq_chip, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %5 = load ptr, ptr %0, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 448, i32 noundef %1) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.pm8xxx_config_irq, i32 noundef %1, i32 noundef %6) #8
  br label %17

10:                                               ; preds = %3
  %11 = or i32 %2, 128
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 450, i32 noundef %11) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.pm8xxx_config_irq, i32 noundef %13) #8
  br label %17

17:                                               ; preds = %15, %10, %8
  %18 = phi i32 [ %6, %8 ], [ %13, %15 ], [ 0, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %19 = load i16, ptr %4, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8821_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %1, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 304, ptr noundef nonnull %3) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.pm8821_irq_handler, i32 noundef %5) #8
  br label %29

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, 254
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = trunc i32 %10 to i8
  call fastcc void @pm8821_irq_master_handler(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %14)
  %15 = load i32, ptr %3, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %15, %13 ], [ %10, %9 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 4
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 432, ptr noundef nonnull %3) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.pm8821_irq_handler, i32 noundef %22) #8
  br label %29

26:                                               ; preds = %20
  %27 = load i32, ptr %3, align 4
  %28 = trunc i32 %27 to i8
  call fastcc void @pm8821_irq_master_handler(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %28)
  br label %29

29:                                               ; preds = %26, %24, %16, %7
  %30 = phi i32 [ 0, %7 ], [ 0, %24 ], [ 1, %26 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8821_irq_mask_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %5, 7
  %8 = trunc i32 %6 to i8
  %9 = urem i8 %8, 7
  %10 = zext i8 %9 to i32
  %11 = load ptr, ptr %3, align 4
  %12 = and i32 %5, 2040
  %13 = icmp ult i32 %12, 56
  %14 = select i1 %13, i32 312, i32 440
  %15 = or i32 %14, %10
  %16 = shl nuw nsw i32 1, %7
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef %16, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.pm8821_irq_mask_ack, i32 noundef %5, i32 noundef %17) #8
  br label %29

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 4
  %23 = select i1 %13, i32 305, i32 433
  %24 = add nuw nsw i32 %23, %10
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef %16, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.pm8821_irq_mask_ack, i32 noundef %5, i32 noundef %25) #8
  br label %29

29:                                               ; preds = %27, %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8821_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %5, 7
  %8 = trunc i32 %6 to i8
  %9 = urem i8 %8, 7
  %10 = zext i8 %9 to i32
  %11 = load ptr, ptr %3, align 4
  %12 = and i32 %5, 2040
  %13 = icmp ult i32 %12, 56
  %14 = select i1 %13, i32 312, i32 440
  %15 = or i32 %14, %10
  %16 = shl nuw nsw i32 1, %7
  %17 = xor i32 %16, -1
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.pm8821_irq_unmask, i32 noundef %5, i32 noundef %18) #8
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8821_irq_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = freeze i32 %8
  %10 = sdiv i32 %9, 8
  %11 = and i32 %10, 255
  %12 = trunc i32 %10 to i8
  %13 = urem i8 %12, 7
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr %6, align 4
  %16 = icmp ult i32 %11, 7
  %17 = select i1 %16, i32 319, i32 447
  %18 = add nuw nsw i32 %17, %14
  %19 = call i32 @regmap_read(ptr noundef %15, i32 noundef %18, ptr noundef nonnull %4) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.pm8821_irq_get_irqchip_state, i32 noundef %8, i32 noundef %19) #8
  br label %32

23:                                               ; preds = %3
  %24 = mul i32 %10, 8
  %25 = sub i32 %9, %24
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %25, 255
  %28 = shl nuw i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  store i8 %31, ptr %2, align 1
  br label %32

32:                                               ; preds = %23, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pm8821_irq_master_handler(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = zext i8 %2 to i32
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 304, i32 432
  %8 = mul i32 %1, 7
  %9 = add i32 %8, 536870911
  %10 = getelementptr inbounds %struct.pm_irq_chip, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %96, %3
  %12 = phi i32 [ 1, %3 ], [ %97, %96 ]
  %13 = shl nuw nsw i32 1, %12
  %14 = and i32 %13, %5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %96, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %17 = load ptr, ptr %0, align 4
  %18 = add nuw nsw i32 %12, %7
  %19 = call i32 @regmap_read(ptr noundef %17, i32 noundef %18, ptr noundef nonnull %4) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.pm8821_irq_block_handler, i32 noundef %12, i32 noundef %19) #8
  br label %95

23:                                               ; preds = %16
  %24 = add i32 %9, %12
  %25 = shl i32 %24, 3
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %10, align 4
  %31 = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %25) #7
  %32 = load i32, ptr %4, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i32 [ %26, %23 ], [ %32, %29 ]
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = or i32 %25, 1
  %39 = load ptr, ptr %10, align 4
  %40 = call i32 @generic_handle_domain_irq(ptr noundef %39, i32 noundef %38) #7
  %41 = load i32, ptr %4, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %41, %37 ], [ %34, %33 ]
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = or i32 %25, 2
  %48 = load ptr, ptr %10, align 4
  %49 = call i32 @generic_handle_domain_irq(ptr noundef %48, i32 noundef %47) #7
  %50 = load i32, ptr %4, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i32 [ %50, %46 ], [ %43, %42 ]
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = or i32 %25, 3
  %57 = load ptr, ptr %10, align 4
  %58 = call i32 @generic_handle_domain_irq(ptr noundef %57, i32 noundef %56) #7
  %59 = load i32, ptr %4, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i32 [ %59, %55 ], [ %52, %51 ]
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = or i32 %25, 4
  %66 = load ptr, ptr %10, align 4
  %67 = call i32 @generic_handle_domain_irq(ptr noundef %66, i32 noundef %65) #7
  %68 = load i32, ptr %4, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ %68, %64 ], [ %61, %60 ]
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = or i32 %25, 5
  %75 = load ptr, ptr %10, align 4
  %76 = call i32 @generic_handle_domain_irq(ptr noundef %75, i32 noundef %74) #7
  %77 = load i32, ptr %4, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i32 [ %77, %73 ], [ %70, %69 ]
  %80 = and i32 %79, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = or i32 %25, 6
  %84 = load ptr, ptr %10, align 4
  %85 = call i32 @generic_handle_domain_irq(ptr noundef %84, i32 noundef %83) #7
  %86 = load i32, ptr %4, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %86, %82 ], [ %79, %78 ]
  %89 = and i32 %88, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = or i32 %25, 7
  %93 = load ptr, ptr %10, align 4
  %94 = call i32 @generic_handle_domain_irq(ptr noundef %93, i32 noundef %92) #7
  br label %95

95:                                               ; preds = %91, %87, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %96

96:                                               ; preds = %95, %11
  %97 = add nuw nsw i32 %12, 1
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %11

99:                                               ; preds = %96
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2149245980}
!10 = !{i64 2149241804}
!11 = !{i64 2149241879, i64 2149241906, i64 2149241953, i64 2149241975, i64 2149242003, i64 2149242023}
!12 = !{i64 2149268983}
