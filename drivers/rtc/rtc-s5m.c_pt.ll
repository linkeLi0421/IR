; ModuleID = '/llk/IR/drivers/rtc/rtc-s5m.c_pt.bc'
source_filename = "../drivers/rtc/rtc-s5m.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.s5m_rtc_reg_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s5m_rtc_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@s5m_rtc_id = internal constant [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s5m-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"s2mps13-rtc\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"s2mps14-rtc\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"s2mps15-rtc\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [42 x i8] c"author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [43 x i8] c"description=Samsung S5M/S2MPS14 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@s5m_rtc_driver = internal global %struct.platform_driver { ptr @s5m_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5m_rtc_pm_ops, ptr null, ptr null }, ptr @s5m_rtc_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"s5m-rtc\00", align 1
@s5m_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s5m_rtc_suspend, ptr @s5m_rtc_resume, ptr @s5m_rtc_suspend, ptr @s5m_rtc_resume, ptr @s5m_rtc_suspend, ptr @s5m_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@s2mps14_rtc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@s2mps15_rtc_regs = internal constant %struct.s5m_rtc_reg_config { i32 7, i32 4, i32 0, i32 11, i32 18, i32 2, i32 16, i32 1, i32 2, i32 16 }, align 4
@s2mps14_rtc_regs = internal constant %struct.s5m_rtc_reg_config { i32 7, i32 4, i32 0, i32 11, i32 18, i32 2, i32 16, i32 1, i32 16, i32 17 }, align 4
@s2mps13_rtc_regs = internal constant %struct.s5m_rtc_reg_config { i32 7, i32 4, i32 0, i32 11, i32 18, i32 2, i32 16, i32 1, i32 16, i32 18 }, align 4
@s5m_rtc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@s5m_rtc_regs = internal constant %struct.s5m_rtc_reg_config { i32 8, i32 0, i32 25, i32 8, i32 16, i32 28, i32 1, i32 0, i32 9, i32 1 }, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Device type %lu is not supported by RTC driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to allocate I2C for RTC\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to allocate RTC register map: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to get virtual IRQ %d\0A\00", align 1
@s5m_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @s5m_rtc_read_time, ptr @s5m_rtc_set_time, ptr @s5m_rtc_read_alarm, ptr @s5m_rtc_set_alarm, ptr null, ptr @s5m_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"rtc-alarm0\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: fail to change UDR time: %d\0A\00", align 1
@__func__.s5m8767_rtc_init_reg = private unnamed_addr constant [21 x i8] c"s5m8767_rtc_init_reg\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s: fail to write controlm reg(%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: fail to read update reg(%d)\0A\00", align 1
@__func__.s5m8767_rtc_set_alarm_reg = private unnamed_addr constant [26 x i8] c"s5m8767_rtc_set_alarm_reg\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s: fail to write update reg(%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"waiting for UDR update, reached max number of retries\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Failed to prepare registers for time reading: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to read update reg(%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to write update reg(%d)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.s5m_rtc_probe = private unnamed_addr constant [7 x ptr] [ptr @s5m_rtc_regs, ptr @s5m_rtc_regs, ptr @s2mps15_rtc_regs, ptr @s2mps15_rtc_regs, ptr @s2mps13_rtc_regs, ptr @s2mps14_rtc_regs, ptr @s2mps15_rtc_regs], align 4
@switch.table.s5m_rtc_probe.15 = private unnamed_addr constant [7 x ptr] [ptr @s5m_rtc_regmap_config, ptr @s5m_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config], align 4
@switch.table.s5m_rtc_probe.16 = private unnamed_addr constant [7 x i32] [i32 9, i32 12, i32 10, i32 10, i32 10, i32 10, i32 10], align 4

@__mod_platform__s5m_rtc_id_device_table = dso_local alias [5 x %struct.platform_device_id], ptr @s5m_rtc_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5m_rtc_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5m_rtc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %131, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_device_id, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %18, label %17

17:                                               ; preds = %18, %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %14) #9
  br label %131

18:                                               ; preds = %10
  %19 = trunc i32 %15 to i8
  %20 = lshr i8 115, %19
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %17, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [7 x ptr], ptr @switch.table.s5m_rtc_probe, i32 0, i32 %15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds [7 x ptr], ptr @switch.table.s5m_rtc_probe.15, i32 0, i32 %15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds [7 x i32], ptr @switch.table.s5m_rtc_probe.16, i32 0, i32 %15
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 8
  store ptr %25, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %3, ptr noundef %34, i16 noundef zeroext 6) #8
  %36 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %131

41:                                               ; preds = %23
  %42 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %35, ptr noundef nonnull %27, ptr noundef null, ptr noundef null) #8
  %43 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %46) #9
  br label %131

47:                                               ; preds = %41
  store ptr %3, ptr %8, align 4
  %48 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 2
  store ptr %7, ptr %48, align 4
  %49 = load ptr, ptr %11, align 4
  %50 = getelementptr inbounds %struct.platform_device_id, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %54, i32 noundef %29) #8
  %58 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = icmp slt i32 %57, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %29) #9
  br label %131

61:                                               ; preds = %56
  %62 = load i32, ptr %52, align 4
  br label %63

63:                                               ; preds = %61, %47
  %64 = phi i32 [ %62, %61 ], [ %51, %47 ]
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %65, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  switch i32 %64, label %95 [
    i32 1, label %66
    i32 2, label %66
    i32 7, label %76
    i32 6, label %76
    i32 5, label %76
  ]

66:                                               ; preds = %63, %63
  %67 = load ptr, ptr %43, align 4
  %68 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 28, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5m8767_rtc_init_reg, i32 noundef %68) #9
  br label %72

72:                                               ; preds = %70, %66
  store i8 3, ptr %2, align 2
  %73 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 2, ptr %73, align 1
  %74 = load ptr, ptr %43, align 4
  %75 = call i32 @regmap_raw_write(ptr noundef %74, i32 noundef 24, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %88

76:                                               ; preds = %63, %63, %63
  store i8 2, ptr %2, align 2
  %77 = load ptr, ptr %43, align 4
  %78 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %81, i32 noundef 2) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 7
  store i32 1, ptr %85, align 4
  br label %92

86:                                               ; preds = %76
  %87 = tail call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef nonnull %8) #8
  br label %88

88:                                               ; preds = %86, %72
  %89 = phi i32 [ %87, %86 ], [ %75, %72 ]
  %90 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 7
  store i32 1, ptr %90, align 4
  %91 = icmp slt i32 %89, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %82, %84 ], [ %89, %88 ]
  %94 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5m8767_rtc_init_reg, i32 noundef %93) #9
  br label %95

95:                                               ; preds = %92, %63
  %96 = phi i32 [ -22, %63 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %131

97:                                               ; preds = %88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %98 = icmp eq i32 %89, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %97
  %100 = call ptr @devm_rtc_allocate_device(ptr noundef %3) #8
  %101 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 4
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = ptrtoint ptr %100 to i32
  br label %131

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.rtc_device, ptr %100, i32 0, i32 3
  store ptr @s5m_rtc_ops, ptr %106, align 8
  %107 = load i32, ptr %52, align 4
  %108 = icmp eq i32 %107, 1
  %109 = load ptr, ptr %101, align 4
  %110 = getelementptr inbounds %struct.rtc_device, ptr %109, i32 0, i32 22
  %111 = select i1 %108, i64 -62167219200, i64 946684800
  %112 = select i1 %108, i64 253402300799, i64 4102444799
  store i64 %111, ptr %110, align 8
  %113 = load ptr, ptr %101, align 4
  %114 = getelementptr inbounds %struct.rtc_device, ptr %113, i32 0, i32 23
  store i64 %112, ptr %114, align 8
  %115 = getelementptr inbounds %struct.s5m_rtc_info, ptr %8, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load ptr, ptr %101, align 4
  %120 = getelementptr inbounds %struct.rtc_device, ptr %119, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %120) #8
  br label %128

121:                                              ; preds = %105
  %122 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %116, ptr noundef null, ptr noundef nonnull @s5m_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, ptr %115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %125, i32 noundef %122) #9
  br label %131

126:                                              ; preds = %121
  %127 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #8
  br label %128

128:                                              ; preds = %126, %118
  %129 = load ptr, ptr %101, align 4
  %130 = call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %129) #8
  br label %131

131:                                              ; preds = %128, %124, %103, %97, %95, %60, %45, %38, %17, %1
  %132 = phi i32 [ -19, %17 ], [ %40, %38 ], [ %46, %45 ], [ -22, %60 ], [ %104, %103 ], [ %122, %124 ], [ %130, %128 ], [ -12, %1 ], [ %89, %97 ], [ %96, %95 ]
  ret i32 %132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5m8767_rtc_set_alarm_reg, i32 noundef %9) #9
  br label %42

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %14, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %42 [
    i32 1, label %21
    i32 2, label %21
    i32 7, label %23
    i32 6, label %23
    i32 5, label %23
  ]

21:                                               ; preds = %13, %13
  %22 = and i32 %18, -9
  store i32 %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %13, %13, %13
  %24 = phi i32 [ %18, %13 ], [ %18, %13 ], [ %18, %13 ], [ %22, %21 ]
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %14, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @regmap_write(ptr noundef %25, i32 noundef %27, i32 noundef %24) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5m8767_rtc_set_alarm_reg, i32 noundef %28) #9
  br label %42

32:                                               ; preds = %23
  %33 = call fastcc i32 @s5m8767_wait_for_udr_update(ptr noundef %0)
  %34 = load i32, ptr %19, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %40, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %42

42:                                               ; preds = %36, %32, %30, %13, %11
  %43 = phi i32 [ %9, %11 ], [ %28, %30 ], [ -22, %13 ], [ %33, %36 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5m8767_wait_for_udr_update(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %5, i32 noundef %8, ptr noundef nonnull %2) #8
  %10 = load i32, ptr %2, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %10
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq i32 %9, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %63

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %11, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @regmap_read(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %2) #8
  %23 = load i32, ptr %2, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %23
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq i32 %22, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %63

31:                                               ; preds = %18
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %24, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = call i32 @regmap_read(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %2) #8
  %36 = load i32, ptr %2, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %37, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %36
  %41 = icmp ne i32 %40, 0
  %42 = icmp eq i32 %35, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %63

44:                                               ; preds = %31
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %37, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @regmap_read(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %2) #8
  %49 = load i32, ptr %2, align 4
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %50, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %49
  %54 = icmp ne i32 %53, 0
  %55 = icmp eq i32 %48, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %50, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @regmap_read(ptr noundef %58, i32 noundef %60, ptr noundef nonnull %2) #8
  %62 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.11) #9
  br label %63

63:                                               ; preds = %57, %44, %31, %18, %1
  %64 = phi i32 [ %61, %57 ], [ %9, %1 ], [ %22, %18 ], [ %35, %31 ], [ %48, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load ptr, ptr %6, align 4
  br label %21

20:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %16) #9
  br label %89

21:                                               ; preds = %18, %2
  %22 = phi ptr [ %19, %18 ], [ %7, %2 ]
  %23 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %22, align 4
  %28 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %3, i32 noundef %27) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %89, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %89 [
    i32 1, label %33
    i32 2, label %34
    i32 7, label %34
    i32 6, label %34
    i32 5, label %34
  ]

33:                                               ; preds = %30
  call fastcc void @s5m8763_data_to_tm(ptr noundef nonnull %3, ptr noundef %1)
  br label %89

34:                                               ; preds = %30, %30, %30, %30
  %35 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = load i8, ptr %3, align 8
  %38 = and i8 %37, 127
  %39 = zext i8 %38 to i32
  store i32 %39, ptr %1, align 4
  %40 = getelementptr inbounds i8, ptr %3, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 127
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = icmp eq i32 %36, 0
  %46 = getelementptr inbounds i8, ptr %3, i32 2
  %47 = load i8, ptr %46, align 2
  br i1 %45, label %52, label %48

48:                                               ; preds = %34
  %49 = and i8 %47, 31
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  br label %60

52:                                               ; preds = %34
  %53 = and i8 %47, 15
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %54, ptr %55, align 4
  %56 = and i8 %47, 64
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = add nuw nsw i32 %54, 12
  store i32 %59, ptr %55, align 4
  br label %60

60:                                               ; preds = %58, %52, %48
  %61 = getelementptr inbounds i8, ptr %3, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 127
  %64 = call i8 @llvm.cttz.i8(i8 %63, i1 true) #8, !range !9
  %65 = add nuw nsw i8 %64, 1
  %66 = icmp eq i8 %63, 0
  %67 = select i1 %66, i8 0, i8 %65
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %3, i32 4
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, 31
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %3, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, 15
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, -1
  %80 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %3, i32 6
  %82 = load i8, ptr %81, align 2
  %83 = and i8 %82, 127
  %84 = add nuw i8 %83, 100
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 8
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %60, %33, %30, %21, %20
  %90 = phi i32 [ %16, %20 ], [ %28, %21 ], [ -22, %30 ], [ 0, %60 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %7 = getelementptr inbounds %struct.s5m_rtc_info, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %111 [
    i32 1, label %9
    i32 2, label %41
    i32 7, label %41
    i32 6, label %41
    i32 5, label %41
  ]

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #10
  store i8 %11, ptr %4, align 8
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %15 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  %19 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  %27 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #10
  %31 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = srem i32 %33, 100
  %35 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #10
  %36 = getelementptr inbounds i8, ptr %4, i32 6
  store i8 %35, ptr %36, align 2
  %37 = add i32 %33, 1900
  %38 = sdiv i32 %37, 100
  %39 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #10
  %40 = getelementptr inbounds i8, ptr %4, i32 7
  store i8 %39, ptr %40, align 1
  br label %75

41:                                               ; preds = %2, %2, %2, %2
  %42 = load i32, ptr %1, align 4
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %4, align 8
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, 11
  %51 = trunc i32 %49 to i8
  %52 = and i8 %51, -65
  %53 = select i1 %50, i8 64, i8 0
  %54 = or i8 %52, %53
  %55 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = shl nuw i32 1, %57
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = trunc i32 %66 to i8
  %68 = add i8 %67, 1
  %69 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = trunc i32 %71 to i8
  %73 = add i8 %72, -100
  %74 = getelementptr inbounds i8, ptr %4, i32 6
  store i8 %73, ptr %74, align 2
  br label %75

75:                                               ; preds = %41, %9
  %76 = getelementptr inbounds %struct.s5m_rtc_info, ptr %6, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.s5m_rtc_info, ptr %6, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %79, align 4
  %83 = call i32 @regmap_raw_write(ptr noundef %77, i32 noundef %81, ptr noundef nonnull %4, i32 noundef %82) #8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %86 = load ptr, ptr %76, align 4
  %87 = load ptr, ptr %78, align 4
  %88 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %87, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = call i32 @regmap_read(ptr noundef %86, i32 noundef %89, ptr noundef nonnull %3) #8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.13, i32 noundef %90) #9
  br label %109

94:                                               ; preds = %85
  %95 = load ptr, ptr %78, align 4
  %96 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %95, i32 0, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, ptr %3, align 4
  %100 = load ptr, ptr %76, align 4
  %101 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %95, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = call i32 @regmap_write(ptr noundef %100, i32 noundef %102, i32 noundef %99) #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.14, i32 noundef %103) #9
  br label %109

107:                                              ; preds = %94
  %108 = call fastcc i32 @s5m8767_wait_for_udr_update(ptr noundef %6) #8
  br label %109

109:                                              ; preds = %107, %105, %92
  %110 = phi i32 [ %90, %92 ], [ %103, %105 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %111

111:                                              ; preds = %109, %75, %2
  %112 = phi i32 [ %110, %109 ], [ -22, %2 ], [ %83, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.s5m_rtc_info, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s5m_rtc_info, ptr %7, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %11, align 4
  %15 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %13, ptr noundef nonnull %4, i32 noundef %14) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %125, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.s5m_rtc_info, ptr %7, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %125 [
    i32 1, label %20
    i32 2, label %29
    i32 7, label %29
    i32 6, label %29
    i32 5, label %29
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call fastcc void @s5m8763_data_to_tm(ptr noundef nonnull %4, ptr noundef %21)
  %22 = load ptr, ptr %8, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 24, ptr noundef nonnull %5) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %125, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %5, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i8
  br label %98

29:                                               ; preds = %17, %17, %17, %17
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %31 = getelementptr inbounds %struct.s5m_rtc_info, ptr %7, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = load i8, ptr %4, align 8
  %34 = and i8 %33, 127
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %30, align 4
  %36 = getelementptr inbounds i8, ptr %4, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 127
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %39, ptr %40, align 4
  %41 = icmp eq i32 %32, 0
  %42 = getelementptr inbounds i8, ptr %4, i32 2
  %43 = load i8, ptr %42, align 2
  br i1 %41, label %48, label %44

44:                                               ; preds = %29
  %45 = and i8 %43, 31
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %46, ptr %47, align 4
  br label %56

48:                                               ; preds = %29
  %49 = and i8 %43, 15
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %50, ptr %51, align 4
  %52 = and i8 %43, 64
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = add nuw nsw i32 %50, 12
  store i32 %55, ptr %51, align 4
  br label %56

56:                                               ; preds = %54, %48, %44
  %57 = getelementptr inbounds i8, ptr %4, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 127
  %60 = call i8 @llvm.cttz.i8(i8 %59, i1 true) #8, !range !9
  %61 = add nuw nsw i8 %60, 1
  %62 = icmp eq i8 %59, 0
  %63 = select i1 %62, i8 0, i8 %61
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %4, i32 4
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 31
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %4, i32 5
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 15
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %74, -1
  %76 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds i8, ptr %4, i32 6
  %78 = load i8, ptr %77, align 2
  %79 = and i8 %78, 127
  %80 = add nuw i8 %79, 100
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  store i32 0, ptr %84, align 4
  store i8 0, ptr %1, align 4
  %85 = load ptr, ptr %10, align 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %56
  %89 = icmp sgt i8 %33, -1
  br i1 %89, label %90, label %98

90:                                               ; preds = %94, %88
  %91 = phi i32 [ %92, %94 ], [ 0, %88 ]
  %92 = add nuw i32 %91, 1
  %93 = icmp eq i32 %92, %86
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = getelementptr [8 x i8], ptr %4, i32 0, i32 %92
  %96 = load i8, ptr %95, align 1
  %97 = icmp sgt i8 %96, -1
  br i1 %97, label %90, label %98

98:                                               ; preds = %94, %88, %25
  %99 = phi i8 [ %28, %25 ], [ 1, %88 ], [ 1, %94 ]
  store i8 %99, ptr %1, align 4
  br label %100

100:                                              ; preds = %98, %90, %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %101 = load i32, ptr %18, align 4
  switch i32 %101, label %123 [
    i32 2, label %102
    i32 1, label %102
    i32 7, label %107
    i32 6, label %107
    i32 5, label %107
  ]

102:                                              ; preds = %100, %100
  %103 = load ptr, ptr %8, align 4
  %104 = call i32 @regmap_read(ptr noundef %103, i32 noundef 26, ptr noundef nonnull %3) #8
  %105 = load i32, ptr %3, align 4
  %106 = and i32 %105, 2
  br label %115

107:                                              ; preds = %100, %100, %100
  %108 = getelementptr inbounds %struct.s5m_rtc_info, ptr %7, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.sec_pmic_dev, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @regmap_read(ptr noundef %111, i32 noundef 8, ptr noundef nonnull %3) #8
  %113 = load i32, ptr %3, align 4
  %114 = and i32 %113, 4
  br label %115

115:                                              ; preds = %107, %102
  %116 = phi i32 [ %114, %107 ], [ %106, %102 ]
  %117 = phi i32 [ %112, %107 ], [ %104, %102 ]
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = icmp ne i32 %116, 0
  %121 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  %122 = zext i1 %120 to i8
  store i8 %122, ptr %121, align 1
  br label %123

123:                                              ; preds = %119, %115, %100
  %124 = phi i32 [ -22, %100 ], [ %117, %115 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %125

125:                                              ; preds = %123, %20, %17, %2
  %126 = phi i32 [ %124, %123 ], [ %15, %2 ], [ %23, %20 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %97 [
    i32 1, label %8
    i32 2, label %41
    i32 7, label %41
    i32 6, label %41
    i32 5, label %41
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #10
  store i8 %11, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %15 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  %19 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  %27 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #10
  %31 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = srem i32 %33, 100
  %35 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #10
  %36 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %35, ptr %36, align 2
  %37 = add i32 %33, 1900
  %38 = sdiv i32 %37, 100
  %39 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #10
  %40 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 %39, ptr %40, align 1
  br label %76

41:                                               ; preds = %2, %2, %2, %2
  %42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %3, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 11
  %52 = trunc i32 %50 to i8
  %53 = and i8 %52, -65
  %54 = select i1 %51, i8 64, i8 0
  %55 = or i8 %53, %54
  %56 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = shl nuw i32 1, %58
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %60, ptr %61, align 1
  %62 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = add i8 %68, 1
  %70 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = add i8 %73, -100
  %75 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %74, ptr %75, align 2
  br label %76

76:                                               ; preds = %41, %8
  %77 = tail call fastcc i32 @s5m_rtc_stop_alarm(ptr noundef %5)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.s5m_rtc_info, ptr %5, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %83, align 4
  %87 = call i32 @regmap_raw_write(ptr noundef %81, i32 noundef %85, ptr noundef nonnull %3, i32 noundef %86) #8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %79
  %90 = call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef %5)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i8, ptr %1, align 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call fastcc i32 @s5m_rtc_start_alarm(ptr noundef %5)
  br label %97

97:                                               ; preds = %95, %92, %89, %79, %76, %2
  %98 = phi i32 [ -22, %2 ], [ %77, %76 ], [ %87, %79 ], [ %90, %89 ], [ %96, %95 ], [ %90, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @s5m_rtc_start_alarm(ptr noundef %4)
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @s5m_rtc_stop_alarm(ptr noundef %4)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @s5m8763_data_to_tm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i8, ptr %0, align 1
  %4 = tail call i32 @_bcd2bin(i8 noundef zeroext %3) #10
  store i32 %4, ptr %1, align 4
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = tail call i32 @_bcd2bin(i8 noundef zeroext %6) #10
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = and i8 %10, 31
  %14 = tail call i32 @_bcd2bin(i8 noundef zeroext %13) #10
  %15 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = load i8, ptr %9, align 1
  %17 = and i8 %16, 32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = add i32 %14, 12
  store i32 %20, ptr %15, align 4
  br label %25

21:                                               ; preds = %2
  %22 = and i8 %10, 63
  %23 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #10
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %19, %12
  %26 = getelementptr i8, ptr %0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 7
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #10
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %0, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = tail call i32 @_bcd2bin(i8 noundef zeroext %36) #10
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr i8, ptr %0, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = tail call i32 @_bcd2bin(i8 noundef zeroext %42) #10
  %44 = tail call i32 @_bcd2bin(i8 noundef zeroext %40) #10
  %45 = mul i32 %43, 100
  %46 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %47 = add i32 %44, -1900
  %48 = add i32 %47, %45
  store i32 %48, ptr %46, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5m_rtc_stop_alarm(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2, i32 noundef %9) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %39 [
    i32 1, label %15
    i32 2, label %18
    i32 7, label %18
    i32 6, label %18
    i32 5, label %18
  ]

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 4
  %17 = call i32 @regmap_write(ptr noundef %16, i32 noundef 24, i32 noundef 0) #8
  br label %39

18:                                               ; preds = %12, %12, %12, %12
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %27, %22 ], [ 0, %18 ]
  %24 = getelementptr [8 x i8], ptr %2, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 127
  store i8 %26, ptr %24, align 1
  %27 = add nuw i32 %23, 1
  %28 = load i32, ptr %19, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %22, label %30

30:                                               ; preds = %22, %18
  %31 = phi i32 [ 0, %18 ], [ %28, %22 ]
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %19, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = call i32 @regmap_raw_write(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %2, i32 noundef %31) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef %0)
  br label %39

39:                                               ; preds = %37, %30, %15, %12, %1
  %40 = phi i32 [ %10, %1 ], [ %35, %30 ], [ -22, %12 ], [ %38, %37 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5m_rtc_start_alarm(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2, i32 noundef %9) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.s5m_rtc_info, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %60 [
    i32 1, label %15
    i32 2, label %18
    i32 7, label %18
    i32 6, label %18
    i32 5, label %18
  ]

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 4
  %17 = call i32 @regmap_write(ptr noundef %16, i32 noundef 24, i32 noundef 119) #8
  br label %60

18:                                               ; preds = %12, %12, %12, %12
  %19 = load i8, ptr %2, align 8
  %20 = or i8 %19, -128
  store i8 %20, ptr %2, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, -128
  store i8 %23, ptr %21, align 1
  %24 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = or i8 %25, -128
  store i8 %26, ptr %24, align 2
  %27 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 127
  store i8 %29, ptr %27, align 1
  %30 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 4
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 31
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %18
  %35 = or i8 %31, -128
  store i8 %35, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = or i8 %38, -128
  store i8 %42, ptr %37, align 1
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 6
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, 127
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = or i8 %45, -128
  store i8 %49, ptr %44, align 2
  br label %50

50:                                               ; preds = %48, %43
  %51 = load ptr, ptr %3, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %52, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %52, align 4
  %56 = call i32 @regmap_raw_write(ptr noundef %51, i32 noundef %54, ptr noundef nonnull %2, i32 noundef %55) #8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef %0)
  br label %60

60:                                               ; preds = %58, %50, %15, %12, %1
  %61 = phi i32 [ %10, %1 ], [ %56, %50 ], [ -22, %12 ], [ %59, %58 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5m_rtc_info, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 1) #8
  br label %18

18:                                               ; preds = %16, %12, %7, %1
  %19 = phi i32 [ %17, %16 ], [ 0, %12 ], [ 0, %1 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5m_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5m_rtc_info, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #8
  br label %18

18:                                               ; preds = %16, %12, %7, %1
  %19 = phi i32 [ %17, %16 ], [ 0, %12 ], [ 0, %1 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

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
!9 = !{i8 0, i8 9}
