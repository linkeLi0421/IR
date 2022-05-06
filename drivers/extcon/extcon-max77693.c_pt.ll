; ModuleID = '/llk/IR/drivers/extcon/extcon-max77693.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max77693.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.max77693_muic_irq = type { i32, ptr, i32 }
%struct.max77693_reg_data = type { i8, i8 }
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
%struct.max77693_muic_info = type { ptr, ptr, ptr, i32, i32, i32, i32, [2 x i8], i32, %struct.work_struct, %struct.mutex, %struct.delayed_work, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.max77693_muic_platform_data = type { ptr, i32, i32, i32, i32 }

@__UNIQUE_ID_description247 = internal constant [41 x i8] c"description=Maxim MAX77693 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [44 x i8] c"author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [29 x i8] c"alias=platform:max77693-muic\00", section ".modinfo", align 1
@max77693_muic_driver = internal global %struct.platform_driver { ptr @max77693_muic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"max77693-muic\00", align 1
@max77693_muic_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: failed to allocate input\0A\00", align 1
@__func__.max77693_muic_probe = private unnamed_addr constant [20 x i8] c"max77693_muic_probe\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"max77693-muic/dock\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"max77693-muic/extcon\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Cannot register input device error(%d)\0A\00", align 1
@max77693_muic_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"&info->mutex\00", align 1
@muic_irqs = internal unnamed_addr global [16 x %struct.max77693_muic_irq] [%struct.max77693_muic_irq { i32 0, ptr @.str.30, i32 0 }, %struct.max77693_muic_irq { i32 1, ptr @.str.31, i32 0 }, %struct.max77693_muic_irq { i32 2, ptr @.str.32, i32 0 }, %struct.max77693_muic_irq { i32 3, ptr @.str.33, i32 0 }, %struct.max77693_muic_irq { i32 4, ptr @.str.34, i32 0 }, %struct.max77693_muic_irq { i32 5, ptr @.str.35, i32 0 }, %struct.max77693_muic_irq { i32 6, ptr @.str.36, i32 0 }, %struct.max77693_muic_irq { i32 7, ptr @.str.37, i32 0 }, %struct.max77693_muic_irq { i32 8, ptr @.str.38, i32 0 }, %struct.max77693_muic_irq { i32 9, ptr @.str.39, i32 0 }, %struct.max77693_muic_irq { i32 10, ptr @.str.40, i32 0 }, %struct.max77693_muic_irq { i32 11, ptr @.str.41, i32 0 }, %struct.max77693_muic_irq { i32 12, ptr @.str.42, i32 0 }, %struct.max77693_muic_irq { i32 13, ptr @.str.43, i32 0 }, %struct.max77693_muic_irq { i32 14, ptr @.str.44, i32 0 }, %struct.max77693_muic_irq { i32 15, ptr @.str.45, i32 0 }], align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", align 1
@max77693_extcon_cable = internal constant [11 x i32] [i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 7, i32 41, i32 61, i32 60, i32 0], align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@default_init_data = internal unnamed_addr constant [5 x %struct.max77693_reg_data] [%struct.max77693_reg_data { i8 5, i8 8 }, %struct.max77693_reg_data { i8 7, i8 9 }, %struct.max77693_reg_data { i8 8, i8 1 }, %struct.max77693_reg_data { i8 9, i8 0 }, %struct.max77693_reg_data { i8 11, i8 10 }], align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to read MUIC register\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to read revision number\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"device ID : 0x%x\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"muic interrupt: irq %d occurred\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"failed to handle MUIC interrupt\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"failed to detect %s cable of gnd type\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"external connector is %s (adc:0x%02x)\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"failed to detect %s jig cable\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Cannot detect external power supply\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"failed to detect %s dock device\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"failed to detect %s key (adc:0x%x)\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"muic-ADC\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"muic-ADCLOW\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"muic-ADCError\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"muic-ADC1K\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"muic-CHGTYP\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"muic-CHGDETREUN\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"muic-DCDTMR\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"muic-DXOVP\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"muic-VBVOLT\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"muic-VIDRM\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"muic-EOC\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"muic-CGMBC\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"muic-OVP\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"muic-MBCCHG_ERR\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"muic-CHG_ENABLED\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"muic-BAT_DET\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.47 = private unnamed_addr constant [32 x i8] c"failed to update MUIC register\0A\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"failed to set ADC debounce time\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Cannot detect accessory\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"Cannot detect charger accessory\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.max77693_muic_adc_handler = private unnamed_addr constant [6 x i8] c"\09\09\09\09\1B\1B", align 1
@switch.table.max77693_muic_adc_handler.53 = private unnamed_addr constant [12 x i32] [i32 165, i32 165, i32 165, i32 165, i32 163, i32 163, i32 163, i32 114, i32 115, i32 164, i32 164, i32 164], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_muic_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_muic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_muic_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 128, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %187, label %13

13:                                               ; preds = %1
  store ptr %3, ptr %11, align 4
  %14 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 1
  store ptr %7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %20, ptr noundef nonnull @max77693_muic_regmap_config, ptr noundef null, ptr noundef null) #6
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr inbounds %struct.max77693_dev, ptr %22, i32 0, i32 7
  store ptr %21, ptr %23, align 4
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.max77693_dev, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = ptrtoint ptr %26 to i32
  %30 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef %29) #7
  br label %187

31:                                               ; preds = %18, %13
  %32 = tail call ptr @devm_input_allocate_device(ptr noundef %3) #6
  %33 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 12
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.max77693_muic_probe) #7
  br label %187

36:                                               ; preds = %31
  store ptr @.str.3, ptr %32, align 8
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 1
  store ptr @.str.4, ptr %38, align 4
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 40, i32 1
  store ptr %3, ptr %40, align 4
  %41 = load ptr, ptr %33, align 4
  %42 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 1048576
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %33, align 4
  tail call void @input_set_capability(ptr noundef %45, i32 noundef 1, i32 noundef 115) #6
  %46 = load ptr, ptr %33, align 4
  tail call void @input_set_capability(ptr noundef %46, i32 noundef 1, i32 noundef 114) #6
  %47 = load ptr, ptr %33, align 4
  tail call void @input_set_capability(ptr noundef %47, i32 noundef 1, i32 noundef 164) #6
  %48 = load ptr, ptr %33, align 4
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 165) #6
  %49 = load ptr, ptr %33, align 4
  tail call void @input_set_capability(ptr noundef %49, i32 noundef 1, i32 noundef 163) #6
  %50 = load ptr, ptr %33, align 4
  %51 = tail call i32 @input_register_device(ptr noundef %50) #6
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %51) #7
  br label %187

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %55, align 8
  %56 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef nonnull @max77693_muic_probe.__key) #6
  %57 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 9
  store i32 -32, ptr %57, align 4
  %58 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 9, i32 1
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 9, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 9, i32 2
  store ptr @max77693_muic_irq_work, ptr %60, align 4
  %61 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @devm_work_drop, ptr noundef %57) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %187

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 13
  br label %68

65:                                               ; preds = %75
  %66 = add nuw nsw i32 %69, 1
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %83, label %68

68:                                               ; preds = %65, %63
  %69 = phi i32 [ 0, %63 ], [ %66, %65 ]
  %70 = getelementptr [16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 %69
  %71 = load ptr, ptr %64, align 4
  %72 = load i32, ptr %70, align 4
  %73 = tail call i32 @regmap_irq_get_virq(ptr noundef %71, i32 noundef %72) #6
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %187, label %75

75:                                               ; preds = %68
  %76 = getelementptr [16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 %69, i32 2
  store i32 %73, ptr %76, align 4
  %77 = getelementptr [16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 %69, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %73, ptr noundef null, ptr noundef nonnull @max77693_muic_irq_handler, i32 noundef 16384, ptr noundef %78, ptr noundef nonnull %11) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %65, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %82, i32 noundef %79) #7
  br label %187

83:                                               ; preds = %65
  %84 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %3, ptr noundef nonnull @max77693_extcon_cable) #6
  %85 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 2
  store ptr %84, ptr %85, align 4
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  %88 = load ptr, ptr %85, align 4
  %89 = ptrtoint ptr %88 to i32
  br label %187

90:                                               ; preds = %83
  %91 = tail call i32 @devm_extcon_dev_register(ptr noundef %3, ptr noundef %84) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  br label %187

94:                                               ; preds = %90
  %95 = icmp eq ptr %10, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr %10, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %97, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99, %96, %94
  %105 = phi i32 [ %102, %99 ], [ 5, %96 ], [ 5, %94 ]
  %106 = phi ptr [ %100, %99 ], [ @default_init_data, %96 ], [ @default_init_data, %94 ]
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i32 [ %119, %107 ], [ 0, %104 ]
  %109 = load ptr, ptr %14, align 4
  %110 = getelementptr inbounds %struct.max77693_dev, ptr %109, i32 0, i32 7
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr %struct.max77693_reg_data, ptr %106, i32 %108
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = getelementptr %struct.max77693_reg_data, ptr %106, i32 %108, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef %114, i32 noundef %117) #6
  %119 = add nuw nsw i32 %108, 1
  %120 = icmp eq i32 %119, %105
  br i1 %120, label %121, label %107

121:                                              ; preds = %107
  br i1 %95, label %141, label %122

122:                                              ; preds = %121, %99
  %123 = load ptr, ptr %10, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %123, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 27, i32 %127
  %130 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 14
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %123, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 9, i32 %132
  %135 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 13
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %123, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %125
  %140 = tail call i32 @__msecs_to_jiffies(i32 noundef %137) #6
  br label %144

141:                                              ; preds = %122, %121
  %142 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 13
  store i32 9, ptr %142, align 4
  %143 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 14
  store i32 27, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %139, %125
  %145 = phi i32 [ 2000, %141 ], [ %140, %139 ], [ 2000, %125 ]
  %146 = load ptr, ptr %14, align 4
  %147 = getelementptr inbounds %struct.max77693_dev, ptr %146, i32 0, i32 7
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 7
  %150 = tail call i32 @regmap_bulk_read(ptr noundef %148, i32 noundef 4, ptr noundef %149, i32 noundef 2) #6
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %144
  %153 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.10) #7
  br label %187

154:                                              ; preds = %144
  %155 = load i8, ptr %149, align 4
  %156 = and i8 %155, 31
  %157 = icmp eq i8 %156, 31
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 3
  store i32 31, ptr %159, align 4
  br label %170

160:                                              ; preds = %154
  %161 = zext i8 %156 to i32
  %162 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 3
  store i32 %161, ptr %162, align 4
  %163 = and i32 %161, 30
  %164 = icmp eq i32 %163, 28
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = trunc i32 %167 to i8
  %169 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef nonnull %11, i8 noundef zeroext %168, i1 noundef zeroext true)
  br label %170

170:                                              ; preds = %165, %160, %158
  %171 = load ptr, ptr %14, align 4
  %172 = getelementptr inbounds %struct.max77693_dev, ptr %171, i32 0, i32 7
  %173 = load ptr, ptr %172, align 4
  %174 = call i32 @regmap_read(ptr noundef %173, i32 noundef 0, ptr noundef nonnull %2) #6
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #7
  br label %187

177:                                              ; preds = %170
  %178 = load ptr, ptr %11, align 4
  %179 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %178, ptr noundef nonnull @.str.12, i32 noundef %179) #7
  call fastcc void @max77693_muic_set_debounce_time(ptr noundef nonnull %11)
  %180 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 11
  store i32 -32, ptr %180, align 4
  %181 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 11, i32 0, i32 1
  store volatile ptr %181, ptr %181, align 4
  %182 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 11, i32 0, i32 1, i32 1
  store ptr %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 11, i32 0, i32 2
  store ptr @max77693_muic_detect_cable_wq, ptr %183, align 4
  %184 = getelementptr inbounds %struct.max77693_muic_info, ptr %11, i32 0, i32 11, i32 1
  call void @init_timer_key(ptr noundef %184, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %185 = load ptr, ptr @system_power_efficient_wq, align 4
  %186 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %185, ptr noundef %180, i32 noundef %145) #6
  br label %187

187:                                              ; preds = %177, %176, %152, %93, %87, %81, %68, %54, %53, %35, %28, %1
  %188 = phi i32 [ %51, %53 ], [ %89, %87 ], [ %91, %93 ], [ %150, %152 ], [ %174, %176 ], [ %174, %177 ], [ -12, %35 ], [ %29, %28 ], [ -12, %1 ], [ %61, %54 ], [ %79, %81 ], [ -22, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %188
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max77693_muic_irq_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 0, i32 2), align 4
  %11 = icmp eq i32 %9, %10
  %12 = load i32, ptr @muic_irqs, align 4
  %13 = select i1 %11, i32 %12, i32 -1
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 1, i32 2), align 4
  %15 = icmp eq i32 %9, %14
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 1), align 4
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 2, i32 2), align 4
  %19 = icmp eq i32 %9, %18
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 2), align 4
  %21 = select i1 %19, i32 %20, i32 %17
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 3, i32 2), align 4
  %23 = icmp eq i32 %9, %22
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 3), align 4
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 4, i32 2), align 4
  %27 = icmp eq i32 %9, %26
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 4), align 4
  %29 = select i1 %27, i32 %28, i32 %25
  %30 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 5, i32 2), align 4
  %31 = icmp eq i32 %9, %30
  %32 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 5), align 4
  %33 = select i1 %31, i32 %32, i32 %29
  %34 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 6, i32 2), align 4
  %35 = icmp eq i32 %9, %34
  %36 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 6), align 4
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 7, i32 2), align 4
  %39 = icmp eq i32 %9, %38
  %40 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 7), align 4
  %41 = select i1 %39, i32 %40, i32 %37
  %42 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 8, i32 2), align 4
  %43 = icmp eq i32 %9, %42
  %44 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 8), align 4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 9, i32 2), align 4
  %47 = icmp eq i32 %9, %46
  %48 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 9), align 4
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 10, i32 2), align 4
  %51 = icmp eq i32 %9, %50
  %52 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 10), align 4
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 11, i32 2), align 4
  %55 = icmp eq i32 %9, %54
  %56 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 11), align 4
  %57 = select i1 %55, i32 %56, i32 %53
  %58 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 12, i32 2), align 4
  %59 = icmp eq i32 %9, %58
  %60 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 12), align 4
  %61 = select i1 %59, i32 %60, i32 %57
  %62 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 13, i32 2), align 4
  %63 = icmp eq i32 %9, %62
  %64 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 13), align 4
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 14, i32 2), align 4
  %67 = icmp eq i32 %9, %66
  %68 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 14), align 4
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 15, i32 2), align 4
  %71 = icmp eq i32 %9, %70
  %72 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 15), align 4
  %73 = select i1 %71, i32 %72, i32 %69
  %74 = getelementptr i8, ptr %0, i32 -32
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.max77693_dev, ptr %75, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %0, i32 -8
  %79 = tail call i32 @regmap_bulk_read(ptr noundef %77, i32 noundef 4, ptr noundef %78, i32 noundef 2) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %6
  %82 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.10) #7
  br label %95

83:                                               ; preds = %6
  switch i32 %73, label %88 [
    i32 0, label %84
    i32 1, label %84
    i32 2, label %84
    i32 3, label %84
    i32 4, label %86
    i32 5, label %86
    i32 6, label %86
    i32 7, label %86
    i32 8, label %86
    i32 9, label %86
    i32 10, label %95
    i32 11, label %95
    i32 12, label %95
    i32 13, label %95
    i32 14, label %95
    i32 15, label %95
  ]

84:                                               ; preds = %83, %83, %83, %83
  %85 = tail call fastcc i32 @max77693_muic_adc_handler(ptr noundef %2)
  br label %90

86:                                               ; preds = %83, %83, %83, %83, %83, %83
  %87 = tail call fastcc i32 @max77693_muic_chg_handler(ptr noundef %2)
  br label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.13, i32 noundef %73) #7
  br label %95

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %87, %86 ], [ %85, %84 ]
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.14) #7
  br label %95

95:                                               ; preds = %93, %90, %88, %83, %83, %83, %83, %83, %83, %81
  tail call void @mutex_unlock(ptr noundef %7) #6
  br label %96

96:                                               ; preds = %95, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_muic_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.max77693_muic_info, ptr %1, i32 0, i32 8
  store i32 %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.max77693_muic_info, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_muic_set_path(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = zext i8 %1 to i32
  %5 = select i1 %2, i32 %4, i32 0
  %6 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 63, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.47) #7
  br label %25

14:                                               ; preds = %3
  %15 = select i1 %2, i32 4, i32 1
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.max77693_dev, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 13, i32 noundef 5, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = icmp slt i32 %19, 0
  %21 = load ptr, ptr %0, align 4
  br i1 %20, label %22, label %23

22:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.47) #7
  br label %25

23:                                               ; preds = %14
  %24 = select i1 %2, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.48, i32 noundef %5, i32 noundef %15, ptr noundef nonnull %24) #7
  br label %25

25:                                               ; preds = %23, %22, %12
  %26 = phi i32 [ %10, %12 ], [ %19, %22 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max77693_muic_set_debounce_time(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 14, i32 noundef 32) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.49) #7
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max77693_muic_detect_cable_wq(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -20
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -44
  %9 = tail call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 4, ptr noundef %8, i32 noundef 2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10) #7
  br label %40

13:                                               ; preds = %1
  %14 = load i8, ptr %8, align 4
  %15 = and i8 %14, 31
  %16 = icmp eq i8 %15, 31
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -60
  store i32 31, ptr %18, align 4
  br label %26

19:                                               ; preds = %13
  %20 = zext i8 %15 to i32
  %21 = getelementptr i8, ptr %0, i32 -60
  store i32 %20, ptr %21, align 4
  %22 = tail call fastcc i32 @max77693_muic_adc_handler(ptr noundef %2) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.51) #7
  br label %40

26:                                               ; preds = %19, %17
  %27 = getelementptr i8, ptr %0, i32 -43
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 7
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 -52
  store i32 0, ptr %32, align 4
  br label %40

33:                                               ; preds = %26
  %34 = zext i8 %29 to i32
  %35 = getelementptr i8, ptr %0, i32 -52
  store i32 %34, ptr %35, align 4
  %36 = tail call fastcc i32 @max77693_muic_chg_handler(ptr noundef %2) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.52) #7
  br label %40

40:                                               ; preds = %38, %33, %31, %24, %11
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %0) #5 {
  %2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_muic_adc_handler(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = icmp eq i8 %4, 31
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 31, ptr %7, align 4
  br label %12

9:                                                ; preds = %1
  %10 = zext i8 %4 to i32
  %11 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ 31, %6 ], [ %10, %9 ]
  %14 = phi ptr [ @.str.17, %6 ], [ @.str.16, %9 ]
  %15 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %16 = xor i1 %5, true
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef nonnull %14, i32 noundef %15, i32 noundef %13) #7
  switch i32 %15, label %150 [
    i32 0, label %19
    i32 24, label %67
    i32 25, label %67
    i32 28, label %67
    i32 29, label %67
    i32 16, label %87
    i32 30, label %87
    i32 26, label %87
    i32 4, label %125
    i32 8, label %125
    i32 10, label %125
    i32 11, label %125
    i32 13, label %125
    i32 1, label %148
    i32 2, label %148
    i32 3, label %148
    i32 5, label %148
    i32 6, label %148
    i32 7, label %148
    i32 9, label %148
    i32 12, label %148
    i32 14, label %148
    i32 15, label %148
    i32 17, label %148
    i32 18, label %148
    i32 19, label %148
    i32 20, label %148
    i32 21, label %148
    i32 22, label %148
    i32 23, label %148
    i32 27, label %148
  ]

19:                                               ; preds = %12
  %20 = load i8, ptr %2, align 4
  %21 = and i8 %20, 31
  %22 = icmp eq i8 %21, 31
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  store i32 31, ptr %24, align 4
  br label %41

26:                                               ; preds = %19
  %27 = zext i8 %21 to i32
  %28 = zext i8 %20 to i32
  %29 = lshr i32 %28, 7
  %30 = getelementptr %struct.max77693_muic_info, ptr %0, i32 0, i32 7, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = lshr i8 %31, 4
  %33 = and i8 %32, 4
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %28, 4
  %36 = and i32 %35, 2
  %37 = or i32 %29, %36
  %38 = or i32 %37, %34
  %39 = or i32 %38, 256
  store i32 %27, ptr %18, align 4
  %40 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %26, %23
  %42 = phi i32 [ %25, %23 ], [ %39, %26 ]
  %43 = xor i1 %22, true
  switch i32 %42, label %64 [
    i32 256, label %44
    i32 260, label %44
    i32 258, label %51
    i32 259, label %60
    i32 263, label %60
  ]

44:                                               ; preds = %41, %41
  %45 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext 9, i1 noundef zeroext %43) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %152, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @extcon_set_state_sync(ptr noundef %49, i32 noundef 2, i1 noundef zeroext %43) #6
  br label %152

51:                                               ; preds = %41
  %52 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext 18, i1 noundef zeroext %43) #6
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %152, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @extcon_set_state_sync(ptr noundef %56, i32 noundef 1, i1 noundef zeroext %43) #6
  %58 = load ptr, ptr %55, align 4
  %59 = tail call i32 @extcon_set_state_sync(ptr noundef %58, i32 noundef 5, i1 noundef zeroext %43) #6
  br label %152

60:                                               ; preds = %41, %41
  %61 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @extcon_set_state_sync(ptr noundef %62, i32 noundef 41, i1 noundef zeroext %43) #6
  br label %152

64:                                               ; preds = %41
  %65 = load ptr, ptr %0, align 4
  %66 = select i1 %22, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.20, ptr noundef nonnull %66) #7
  br label %152

67:                                               ; preds = %12, %12, %12, %12
  %68 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.21, ptr noundef nonnull %14, i32 noundef %15) #7
  %69 = add i32 %15, -24
  %70 = icmp ult i32 %69, 6
  br i1 %70, label %73, label %71

71:                                               ; preds = %73, %67
  %72 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.22, ptr noundef nonnull %14) #7
  br label %152

73:                                               ; preds = %67
  %74 = trunc i32 %69 to i8
  %75 = lshr i8 51, %74
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %71, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds [6 x i8], ptr @switch.table.max77693_muic_adc_handler, i32 0, i32 %69
  %80 = load i8, ptr %79, align 1
  %81 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext %80, i1 noundef zeroext %16) #6
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %152, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @extcon_set_state_sync(ptr noundef %85, i32 noundef 61, i1 noundef zeroext %16) #6
  br label %152

87:                                               ; preds = %12, %12, %12
  %88 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.21, ptr noundef nonnull %14, i32 noundef %15) #7
  switch i32 %15, label %116 [
    i32 16, label %89
    i32 30, label %118
    i32 26, label %109
  ]

89:                                               ; preds = %87
  %90 = getelementptr %struct.max77693_muic_info, ptr %0, i32 0, i32 7, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 64
  %93 = icmp ne i8 %92, 0
  %94 = select i1 %5, i1 true, i1 %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.23) #7
  br label %152

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 13
  %99 = load i32, ptr %98, align 4
  %100 = trunc i32 %99 to i8
  %101 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext %100, i1 noundef zeroext %16) #6
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %152, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 @extcon_set_state_sync(ptr noundef %105, i32 noundef 60, i1 noundef zeroext %16) #6
  %107 = load ptr, ptr %104, align 4
  %108 = tail call i32 @extcon_set_state_sync(ptr noundef %107, i32 noundef 41, i1 noundef zeroext %16) #6
  br label %152

109:                                              ; preds = %87
  br i1 %5, label %110, label %118

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @extcon_set_state_sync(ptr noundef %112, i32 noundef 1, i1 noundef zeroext false) #6
  %114 = load ptr, ptr %111, align 4
  %115 = tail call i32 @extcon_set_state_sync(ptr noundef %114, i32 noundef 5, i1 noundef zeroext false) #6
  br label %118

116:                                              ; preds = %87
  %117 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.24, ptr noundef nonnull %14) #7
  br label %152

118:                                              ; preds = %110, %109, %87
  %119 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext 18, i1 noundef zeroext %16) #6
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %152, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @extcon_set_state_sync(ptr noundef %123, i32 noundef 60, i1 noundef zeroext %16) #6
  br label %152

125:                                              ; preds = %12, %12, %12, %12, %12
  %126 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 6
  br i1 %5, label %128, label %127

127:                                              ; preds = %125
  store i32 %15, ptr %126, align 4
  br label %130

128:                                              ; preds = %125
  %129 = load i32, ptr %126, align 4
  br label %130

130:                                              ; preds = %128, %127
  %131 = phi i32 [ %15, %127 ], [ %129, %128 ]
  %132 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 12
  %133 = load ptr, ptr %132, align 4
  %134 = add i32 %131, -3
  %135 = icmp ult i32 %134, 12
  br i1 %135, label %139, label %136

136:                                              ; preds = %139, %130
  %137 = load ptr, ptr %0, align 4
  %138 = select i1 %5, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.25, ptr noundef nonnull %138, i32 noundef %131) #7
  br label %152

139:                                              ; preds = %130
  %140 = trunc i32 %134 to i16
  %141 = lshr i16 4087, %140
  %142 = and i16 %141, 1
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %136, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds [12 x i32], ptr @switch.table.max77693_muic_adc_handler.53, i32 0, i32 %134
  %146 = load i32, ptr %145, align 4
  %147 = zext i1 %16 to i32
  tail call void @input_event(ptr noundef %133, i32 noundef 1, i32 noundef %146, i32 noundef %147) #6
  tail call void @input_event(ptr noundef %133, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %152

148:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %149 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %149, ptr noundef nonnull @.str.18, ptr noundef nonnull %14, i32 noundef %15) #7
  br label %152

150:                                              ; preds = %12
  %151 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.19, ptr noundef nonnull %14, i32 noundef %15) #7
  br label %152

152:                                              ; preds = %150, %148, %144, %136, %121, %118, %116, %103, %97, %95, %83, %78, %71, %64, %60, %54, %51, %47, %44
  %153 = phi i32 [ -22, %150 ], [ -11, %148 ], [ -22, %136 ], [ 0, %144 ], [ 0, %121 ], [ 0, %103 ], [ 0, %95 ], [ 0, %83 ], [ 0, %64 ], [ 0, %60 ], [ 0, %54 ], [ 0, %51 ], [ 0, %47 ], [ 0, %44 ], [ %81, %78 ], [ -22, %71 ], [ %119, %118 ], [ %101, %97 ], [ -22, %116 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_muic_chg_handler(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.max77693_muic_info, ptr %0, i32 0, i32 7, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 5
  store i32 %7, ptr %8, align 4
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  store i32 0, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ 0, %9 ], [ %7, %6 ]
  %14 = phi i32 [ %11, %9 ], [ %7, %6 ]
  %15 = phi ptr [ @.str.17, %9 ], [ @.str.16, %6 ]
  %16 = xor i1 %5, true
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull %15, i32 noundef %14, i32 noundef %13) #7
  switch i32 %14, label %113 [
    i32 1, label %18
    i32 3, label %18
    i32 0, label %18
    i32 2, label %101
    i32 4, label %105
    i32 5, label %109
    i32 7, label %115
  ]

18:                                               ; preds = %12, %12, %12
  %19 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 7
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 31
  %22 = icmp eq i8 %21, 31
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  store i32 31, ptr %24, align 4
  br label %41

26:                                               ; preds = %18
  %27 = zext i8 %21 to i32
  %28 = zext i8 %20 to i32
  %29 = lshr i32 %28, 7
  %30 = load i8, ptr %2, align 1
  %31 = lshr i8 %30, 4
  %32 = and i8 %31, 4
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %28, 4
  %35 = and i32 %34, 2
  %36 = or i32 %29, %35
  %37 = or i32 %36, %33
  %38 = or i32 %37, 256
  %39 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 3
  store i32 %27, ptr %39, align 4
  %40 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 4
  store i32 %38, ptr %40, align 4
  br label %41

41:                                               ; preds = %26, %23
  %42 = phi i32 [ %25, %23 ], [ %38, %26 ]
  switch i32 %42, label %51 [
    i32 259, label %43
    i32 263, label %43
  ]

43:                                               ; preds = %41, %41
  %44 = xor i1 %22, true
  %45 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @extcon_set_state_sync(ptr noundef %46, i32 noundef 6, i1 noundef zeroext %16) #6
  %48 = load ptr, ptr %45, align 4
  %49 = tail call i32 @extcon_set_state_sync(ptr noundef %48, i32 noundef 41, i1 noundef zeroext %44) #6
  %50 = load i8, ptr %19, align 4
  br label %51

51:                                               ; preds = %43, %41
  %52 = phi i8 [ %20, %41 ], [ %50, %43 ]
  %53 = and i8 %52, 31
  %54 = icmp eq i8 %53, 31
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  store i32 31, ptr %56, align 4
  br label %61

58:                                               ; preds = %51
  %59 = zext i8 %53 to i32
  %60 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 3
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %57, %55 ], [ %59, %58 ]
  switch i32 %62, label %84 [
    i32 26, label %63
    i32 16, label %72
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @extcon_set_state_sync(ptr noundef %65, i32 noundef 1, i1 noundef zeroext %16) #6
  %67 = load ptr, ptr %64, align 4
  %68 = tail call i32 @extcon_set_state_sync(ptr noundef %67, i32 noundef 5, i1 noundef zeroext %16) #6
  br i1 %54, label %69, label %84

69:                                               ; preds = %63
  %70 = load ptr, ptr %64, align 4
  %71 = tail call i32 @extcon_set_state_sync(ptr noundef %70, i32 noundef 60, i1 noundef zeroext false) #6
  br label %84

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext %75, i1 noundef zeroext %16)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @extcon_set_state_sync(ptr noundef %80, i32 noundef 60, i1 noundef zeroext %16) #6
  %82 = load ptr, ptr %79, align 4
  %83 = tail call i32 @extcon_set_state_sync(ptr noundef %82, i32 noundef 41, i1 noundef zeroext %16) #6
  br label %84

84:                                               ; preds = %78, %69, %63, %61
  switch i32 %14, label %115 [
    i32 3, label %97
    i32 1, label %85
  ]

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 13
  %87 = load i32, ptr %86, align 4
  %88 = trunc i32 %87 to i8
  %89 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %0, i8 noundef zeroext %88, i1 noundef zeroext %16)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %115, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @extcon_set_state_sync(ptr noundef %93, i32 noundef 1, i1 noundef zeroext %16) #6
  %95 = load ptr, ptr %92, align 4
  %96 = tail call i32 @extcon_set_state_sync(ptr noundef %95, i32 noundef 5, i1 noundef zeroext %16) #6
  br label %115

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @extcon_set_state_sync(ptr noundef %99, i32 noundef 6, i1 noundef zeroext %16) #6
  br label %115

101:                                              ; preds = %12
  %102 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 @extcon_set_state_sync(ptr noundef %103, i32 noundef 7, i1 noundef zeroext %16) #6
  br label %115

105:                                              ; preds = %12
  %106 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @extcon_set_state_sync(ptr noundef %107, i32 noundef 10, i1 noundef zeroext %16) #6
  br label %115

109:                                              ; preds = %12
  %110 = getelementptr inbounds %struct.max77693_muic_info, ptr %0, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 @extcon_set_state_sync(ptr noundef %111, i32 noundef 9, i1 noundef zeroext %16) #6
  br label %115

113:                                              ; preds = %12
  %114 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.29, ptr noundef nonnull %15, i32 noundef %14) #7
  br label %115

115:                                              ; preds = %113, %109, %105, %101, %97, %91, %85, %84, %72, %12
  %116 = phi i32 [ -22, %113 ], [ %76, %72 ], [ %89, %85 ], [ 0, %91 ], [ 0, %97 ], [ 0, %84 ], [ 0, %12 ], [ 0, %109 ], [ 0, %105 ], [ 0, %101 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
