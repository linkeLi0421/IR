; ModuleID = '/llk/IR/drivers/hwmon/aspeed-pwm-tacho.c_pt.bc'
source_filename = "../drivers/hwmon/aspeed-pwm-tacho.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pwm_port_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.aspeed_pwm_tacho_data = type { ptr, ptr, i32, [8 x i8], [16 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i16], [8 x i8], [8 x i8], [16 x i8], [8 x ptr], [3 x ptr] }
%struct.aspeed_cooling_device = type { [16 x i8], ptr, ptr, i32, ptr, i8, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@of_pwm_tacho_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-pwm-tacho\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-pwm-tacho\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author162 = internal constant [66 x i8] c"author=Jaghathiswari Rankappagounder Natarajan <jaghu@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description163 = internal constant [51 x i8] c"description=ASPEED PWM and Fan Tacho device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@aspeed_pwm_tacho_driver = internal global %struct.platform_driver { ptr @aspeed_pwm_tacho_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_tacho_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"aspeed_pwm_tacho\00", align 1
@aspeed_pwm_tacho_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @regmap_aspeed_pwm_tacho_reg_read, ptr @regmap_aspeed_pwm_tacho_reg_write, ptr null, i8 1, i32 120, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"missing or invalid reset controller device tree entry\00", align 1
@pwm_dev_group = internal constant %struct.attribute_group { ptr null, ptr @pwm_is_visible, ptr null, ptr @pwm_dev_attrs, ptr null }, align 4
@fan_dev_group = internal constant %struct.attribute_group { ptr null, ptr @fan_dev_is_visible, ptr null, ptr @fan_dev_attrs, ptr null }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"cooling-levels\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"aspeed,fan-tach-ch\00", align 1
@pwm_port_params = internal unnamed_addr constant [8 x %struct.pwm_port_params] [%struct.pwm_port_params { i32 256, i32 0, i32 12, i32 3, i32 4112, i32 0, i32 8, i32 8, i32 65535 }, %struct.pwm_port_params { i32 512, i32 0, i32 13, i32 4, i32 8224, i32 16, i32 24, i32 8, i32 -65536 }, %struct.pwm_port_params { i32 1024, i32 0, i32 14, i32 5, i32 16448, i32 0, i32 8, i32 12, i32 65535 }, %struct.pwm_port_params { i32 2048, i32 0, i32 15, i32 6, i32 32896, i32 16, i32 24, i32 12, i32 -65536 }, %struct.pwm_port_params { i32 256, i32 64, i32 12, i32 3, i32 4112, i32 0, i32 8, i32 72, i32 65535 }, %struct.pwm_port_params { i32 512, i32 64, i32 13, i32 4, i32 8224, i32 16, i32 24, i32 72, i32 -65536 }, %struct.pwm_port_params { i32 1024, i32 64, i32 14, i32 5, i32 16448, i32 0, i32 8, i32 76, i32 65535 }, %struct.pwm_port_params { i32 2048, i32 64, i32 15, i32 6, i32 32896, i32 16, i32 24, i32 76, i32 -65536 }], align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Property 'cooling-levels' cannot be read.\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%pOFn%d\00", align 1
@aspeed_pwm_cool_ops = internal constant %struct.thermal_cooling_device_ops { ptr @aspeed_pwm_cz_get_max_state, ptr @aspeed_pwm_cz_get_cur_state, ptr @aspeed_pwm_cz_set_cur_state, ptr null, ptr null, ptr null }, align 4
@pwm_dev_attrs = internal global [9 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm7, ptr @sensor_dev_attr_pwm8, ptr null], align 4
@sensor_dev_attr_pwm1 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, align 4
@sensor_dev_attr_pwm2 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, align 4
@sensor_dev_attr_pwm3 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, align 4
@sensor_dev_attr_pwm4 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 3 }, align 4
@sensor_dev_attr_pwm5 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 4 }, align 4
@sensor_dev_attr_pwm6 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 5 }, align 4
@sensor_dev_attr_pwm7 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 6 }, align 4
@sensor_dev_attr_pwm8 = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @pwm_show, ptr @pwm_store }, i32 7 }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pwm5\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"pwm6\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pwm7\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pwm8\00", align 1
@fan_dev_attrs = internal global [17 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan9_input, ptr @sensor_dev_attr_fan10_input, ptr @sensor_dev_attr_fan11_input, ptr @sensor_dev_attr_fan12_input, ptr @sensor_dev_attr_fan13_input, ptr @sensor_dev_attr_fan14_input, ptr @sensor_dev_attr_fan15_input, ptr @sensor_dev_attr_fan16_input, ptr null], align 4
@sensor_dev_attr_fan1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @rpm_show, ptr null }, i32 0 }, align 4
@sensor_dev_attr_fan2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @rpm_show, ptr null }, i32 1 }, align 4
@sensor_dev_attr_fan3_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @rpm_show, ptr null }, i32 2 }, align 4
@sensor_dev_attr_fan4_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @rpm_show, ptr null }, i32 3 }, align 4
@sensor_dev_attr_fan5_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @rpm_show, ptr null }, i32 4 }, align 4
@sensor_dev_attr_fan6_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @rpm_show, ptr null }, i32 5 }, align 4
@sensor_dev_attr_fan7_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @rpm_show, ptr null }, i32 6 }, align 4
@sensor_dev_attr_fan8_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @rpm_show, ptr null }, i32 7 }, align 4
@sensor_dev_attr_fan9_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @rpm_show, ptr null }, i32 8 }, align 4
@sensor_dev_attr_fan10_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @rpm_show, ptr null }, i32 9 }, align 4
@sensor_dev_attr_fan11_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @rpm_show, ptr null }, i32 10 }, align 4
@sensor_dev_attr_fan12_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @rpm_show, ptr null }, i32 11 }, align 4
@sensor_dev_attr_fan13_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @rpm_show, ptr null }, i32 12 }, align 4
@sensor_dev_attr_fan14_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @rpm_show, ptr null }, i32 13 }, align 4
@sensor_dev_attr_fan15_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @rpm_show, ptr null }, i32 14 }, align 4
@sensor_dev_attr_fan16_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @rpm_show, ptr null }, i32 15 }, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"fan1_input\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"fan2_input\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fan3_input\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"fan4_input\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"fan5_input\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"fan6_input\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"fan7_input\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"fan8_input\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"fan9_input\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"fan10_input\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"fan11_input\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"fan12_input\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"fan13_input\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"fan14_input\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"fan15_input\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"fan16_input\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_license164], section "llvm.metadata"

@__mod_of__of_pwm_tacho_match_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @of_pwm_tacho_match_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_pwm_tacho_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_pwm_tacho_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_pwm_tacho_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %144

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 136, i32 noundef 3520) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %144, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @__devm_regmap_init(ptr noundef %3, ptr noundef null, ptr noundef %6, ptr noundef nonnull @aspeed_pwm_tacho_regmap_config, ptr noundef null, ptr noundef null) #10
  store ptr %14, ptr %11, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %144

18:                                               ; preds = %13
  %19 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %20 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  %23 = load ptr, ptr %20, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %144

25:                                               ; preds = %18
  %26 = tail call i32 @reset_control_deassert(ptr noundef %19) #10
  %27 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @aspeed_pwm_tacho_remove, ptr noundef nonnull %11) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %20, align 4
  %31 = tail call i32 @reset_control_assert(ptr noundef %30) #10
  br label %144

32:                                               ; preds = %25
  %33 = load ptr, ptr %11, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 32, i32 noundef 0) #10
  %35 = load ptr, ptr %11, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 96, i32 noundef 0) #10
  %37 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #10
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %144, label %39

39:                                               ; preds = %32
  %40 = tail call i32 @clk_get_rate(ptr noundef %37) #10
  %41 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %11, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %44 = load ptr, ptr %11, align 4
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %46 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 6
  store i8 0, ptr %46, align 1
  %47 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 7
  store i8 5, ptr %47, align 2
  %48 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 5
  store i8 95, ptr %48, align 4
  %49 = load ptr, ptr %11, align 4
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 4, i32 noundef 65535, i32 noundef 24325, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %51 = load ptr, ptr %11, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %53 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 8
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 10
  store i16 528, ptr %54, align 4
  %55 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 9
  store i8 2, ptr %55, align 4
  %56 = load ptr, ptr %11, align 4
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 16, i32 noundef -65474, i32 noundef 34603040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %58 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 20, i32 noundef -1, i32 noundef 34603008, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %59 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %136, label %61

61:                                               ; preds = %133, %39
  %62 = phi ptr [ %134, %133 ], [ %59, %39 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %62, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %64 = call i32 @llvm.smin.i32(i32 %63, i32 0) #10
  %65 = icmp sgt i32 %63, -1
  br i1 %65, label %66, label %128

66:                                               ; preds = %61
  %67 = load i32, ptr %2, align 4
  %68 = icmp ugt i32 %67, 7
  br i1 %68, label %126, label %69

69:                                               ; preds = %66
  %70 = trunc i32 %67 to i8
  %71 = load ptr, ptr %11, align 4
  %72 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %67
  %73 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %67, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %72, align 4
  %76 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %74, i32 noundef %75, i32 noundef %75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %77 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 3, i32 %67
  store i8 1, ptr %77, align 1
  %78 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 11, i32 %67
  store i8 0, ptr %78, align 1
  %79 = load ptr, ptr %11, align 4
  %80 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %67, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef %74, i32 noundef %81, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %83 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 12, i32 %67
  store i8 -1, ptr %83, align 1
  call fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr noundef %11, i8 noundef zeroext %70, i8 noundef zeroext -1) #10
  %84 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %62, ptr noundef nonnull @.str.3, i32 noundef 1) #10
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %69
  %87 = load i32, ptr %2, align 4
  %88 = trunc i32 %84 to i8
  %89 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #10
  %90 = icmp eq ptr %89, null
  br i1 %90, label %126, label %91

91:                                               ; preds = %86
  %92 = and i32 %84, 255
  %93 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %92, i32 noundef 3520) #10
  %94 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %89, i32 0, i32 4
  store ptr %93, ptr %94, align 4
  %95 = icmp eq ptr %93, null
  br i1 %95, label %126, label %96

96:                                               ; preds = %91
  %97 = add i8 %88, -1
  %98 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %89, i32 0, i32 5
  store i8 %97, ptr %98, align 4
  %99 = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %62, ptr noundef nonnull @.str.3, ptr noundef nonnull %93, i32 noundef %92, i32 noundef 0) #10
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #11
  br label %126

102:                                              ; preds = %96
  %103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %89, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull %62, i32 noundef %87) #10
  %104 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %3, ptr noundef nonnull %62, ptr noundef nonnull %89, ptr noundef nonnull %89, ptr noundef nonnull @aspeed_pwm_cool_ops) #10
  %105 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %89, i32 0, i32 2
  store ptr %104, ptr %105, align 4
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %89, i32 0, i32 1
  store ptr %11, ptr %108, align 4
  %109 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %89, i32 0, i32 3
  store i32 %87, ptr %109, align 4
  %110 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 14, i32 %87
  store ptr %89, ptr %110, align 4
  br label %113

111:                                              ; preds = %102
  %112 = ptrtoint ptr %104 to i32
  br label %128

113:                                              ; preds = %107, %69
  %114 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %62, ptr noundef nonnull @.str.4, i32 noundef 1) #10
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %126, label %116

116:                                              ; preds = %113
  %117 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %114, i32 noundef 3520) #10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %62, ptr noundef nonnull @.str.4, ptr noundef nonnull %117, i32 noundef %114, i32 noundef 0) #10
  %121 = call i32 @llvm.smin.i32(i32 %120, i32 0) #10
  %122 = icmp sgt i32 %120, -1
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, ptr %2, align 4
  %125 = trunc i32 %124 to i8
  call fastcc void @aspeed_create_fan_tach_channel(ptr noundef %11, ptr noundef nonnull %117, i32 noundef %114, i8 noundef zeroext %125) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %133

126:                                              ; preds = %116, %113, %101, %91, %86, %66
  %127 = phi i32 [ %99, %101 ], [ -12, %86 ], [ -12, %91 ], [ -12, %116 ], [ -22, %113 ], [ -22, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %131

128:                                              ; preds = %119, %111, %61
  %129 = phi i32 [ %64, %61 ], [ %112, %111 ], [ %121, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128, %126
  %132 = phi i32 [ %127, %126 ], [ %129, %128 ]
  call void @of_node_put(ptr noundef nonnull %62) #10
  br label %144

133:                                              ; preds = %128, %123
  %134 = call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %62) #10
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %61

136:                                              ; preds = %133, %39
  %137 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 15
  store ptr @pwm_dev_group, ptr %137, align 4
  %138 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 15, i32 1
  store ptr @fan_dev_group, ptr %138, align 4
  %139 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %11, i32 0, i32 15, i32 2
  store ptr null, ptr %139, align 4
  %140 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %11, ptr noundef %137) #10
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  %142 = ptrtoint ptr %140 to i32
  %143 = select i1 %141, i32 %142, i32 0
  br label %144

144:                                              ; preds = %136, %131, %32, %29, %22, %16, %10, %8
  %145 = phi i32 [ %9, %8 ], [ %17, %16 ], [ %24, %22 ], [ %132, %131 ], [ %143, %136 ], [ -12, %10 ], [ %27, %29 ], [ -19, %32 ]
  ret i32 %145
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_pwm_tacho_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_aspeed_pwm_tacho_reg_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  store i32 %5, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_aspeed_pwm_tacho_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %4 = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #10, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_create_fan_tach_channel(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  %7 = zext i8 %3 to i32
  %8 = and i32 %7, 3
  %9 = lshr i32 %7, 2
  %10 = and i32 %9, 1
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ 0, %6 ], [ %31, %11 ]
  %13 = phi i8 [ 0, %6 ], [ %30, %11 ]
  %14 = getelementptr i8, ptr %1, i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %0, align 4
  %17 = zext i8 %15 to i32
  %18 = shl i32 65536, %17
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef %18, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %20 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %0, i32 0, i32 4, i32 %17
  store i8 1, ptr %20, align 1
  %21 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %0, i32 0, i32 13, i32 %17
  store i8 %3, ptr %21, align 1
  %22 = load ptr, ptr %0, align 4
  %23 = shl nuw nsw i32 %17, 1
  %24 = shl i32 %8, %23
  %25 = shl nuw i32 %10, %23
  %26 = shl i32 3, %23
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 32, i32 noundef %26, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %28 = shl nuw i32 1, %23
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 96, i32 noundef %28, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %30 = add i8 %13, 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, %2
  br i1 %32, label %11, label %33

33:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %0, i32 0, i32 11, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %0, i32 0, i32 5, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 1
  %12 = zext i8 %2 to i32
  %13 = mul nuw nsw i32 %11, %12
  %14 = icmp ult i32 %13, 255
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4
  %18 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %19, i32 noundef %20, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %45

22:                                               ; preds = %3
  %23 = trunc i32 %13 to i16
  %24 = udiv i16 %23, 255
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %11, %25
  %27 = load ptr, ptr %0, align 4
  %28 = and i16 %24, 255
  %29 = zext i16 %28 to i32
  %30 = select i1 %26, i32 0, i32 %29
  %31 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %30, %32
  %34 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %35, i32 noundef %37, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4
  %41 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %4, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %40, align 4
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %42, i32 noundef %43, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %45

45:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_pwm_cz_get_max_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  store i32 %7, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_pwm_cz_get_cur_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  store i32 %7, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_pwm_cz_set_cur_state(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i8
  %11 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 6
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = and i32 %1, 255
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.aspeed_cooling_device, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %18, i32 0, i32 12, i32 %20
  store i8 %16, ptr %21, align 1
  %22 = load ptr, ptr %17, align 4
  %23 = load i32, ptr %19, align 4
  %24 = trunc i32 %23 to i8
  %25 = load ptr, ptr %12, align 4
  %26 = load i8, ptr %11, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = load i8, ptr %28, align 1
  tail call fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr noundef %22, i8 noundef zeroext %24, i8 noundef zeroext %29)
  br label %30

30:                                               ; preds = %9, %2
  %31 = phi i32 [ 0, %9 ], [ -22, %2 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pwm_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %5, i32 0, i32 3, i32 %2
  %7 = load i8, ptr %6, align 1, !range !13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i16 [ %11, %9 ], [ 0, %3 ]
  ret i16 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %7, i32 0, i32 12, i32 %5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %9, i32 0, i32 12, i32 %7
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %13, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = trunc i32 %13 to i8
  store i8 %21, ptr %16, align 1
  %22 = trunc i32 %7 to i8
  %23 = load i32, ptr %5, align 4
  %24 = trunc i32 %23 to i8
  call fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr noundef %9, i8 noundef zeroext %22, i8 noundef zeroext %24)
  br label %25

25:                                               ; preds = %20, %15, %12, %4
  %26 = phi i32 [ %3, %20 ], [ %10, %4 ], [ -22, %12 ], [ %3, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @fan_dev_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %5, i32 0, i32 4, i32 %2
  %7 = load i8, ptr %6, align 1, !range !13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i16 [ %11, %9 ], [ 0, %3 ]
  ret i16 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 40, i32 noundef 0) #10
  %11 = load ptr, ptr %8, align 4
  %12 = and i32 %6, 255
  %13 = shl nuw i32 1, %12
  %14 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 40, i32 noundef %13) #10
  %15 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 13, i32 %12
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 11, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = zext i8 %19 to i32
  %23 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 5, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 6, i32 %22
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 7, i32 %22
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = shl i8 %28, 1
  %31 = select i1 %29, i8 1, i8 %30
  %32 = zext i8 %31 to i32
  %33 = zext i8 %26 to i32
  %34 = shl nuw i32 1, %33
  %35 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 10, i32 %22
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 8, i32 %22
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 1
  %41 = shl i32 4, %40
  %42 = zext i8 %24 to i32
  %43 = and i32 %34, 255
  %44 = mul nuw nsw i32 %43, %42
  %45 = and i32 %41, 252
  %46 = zext i16 %36 to i32
  %47 = mul nuw i32 %44, %46
  %48 = mul i32 %47, %32
  %49 = mul i32 %48, %45
  %50 = udiv i32 %21, %49
  %51 = udiv i32 1000, %50
  %52 = tail call i64 @ktime_get() #10
  %53 = mul nuw nsw i32 %51, 1000000
  %54 = zext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = load ptr, ptr %8, align 4
  %57 = call i32 @regmap_read(ptr noundef %56, i32 noundef 44, ptr noundef nonnull %4) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %3
  %60 = icmp ugt i32 %50, 1000
  br label %61

61:                                               ; preds = %71, %59
  %62 = load i32, ptr %4, align 4
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  br i1 %60, label %71, label %65

65:                                               ; preds = %64
  %66 = call i64 @ktime_get() #10
  %67 = icmp sgt i64 %66, %55
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load ptr, ptr %8, align 4
  %70 = call i32 @regmap_read(ptr noundef %69, i32 noundef 44, ptr noundef nonnull %4) #10
  br label %75

71:                                               ; preds = %65, %64
  call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #10
  %72 = load ptr, ptr %8, align 4
  %73 = call i32 @regmap_read(ptr noundef %72, i32 noundef 44, ptr noundef nonnull %4) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %61, label %75

75:                                               ; preds = %71, %68, %61, %3
  %76 = phi i32 [ %70, %68 ], [ %57, %3 ], [ %73, %71 ], [ 0, %61 ]
  %77 = icmp ne i32 %76, 0
  %78 = load i32, ptr %4, align 4
  %79 = icmp slt i32 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  %81 = select i1 %80, i32 0, i32 -110
  %82 = select i1 %77, i32 %76, i32 %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %75
  %85 = and i32 %78, 1048575
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %107

88:                                               ; preds = %84
  %89 = load i32, ptr %20, align 4
  %90 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %8, i32 0, i32 9, i32 %22
  %91 = load i8, ptr %90, align 1
  %92 = lshr i8 %91, 1
  %93 = and i8 %92, 1
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 4, %94
  %96 = load i8, ptr %37, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 1
  %99 = shl i32 %95, %98
  %100 = mul i32 %89, 60
  %101 = shl nuw nsw i32 %85, 1
  %102 = mul i32 %101, %99
  %103 = udiv i32 %100, %102
  br label %104

104:                                              ; preds = %88, %75
  %105 = phi i32 [ %103, %88 ], [ %82, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104, %87
  %108 = phi i32 [ 0, %87 ], [ %105, %104 ]
  %109 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i32 [ %109, %107 ], [ %105, %104 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3718097}
!10 = !{i64 2151586164}
!11 = !{i64 2151585729}
!12 = !{i64 3717679}
!13 = !{i8 0, i8 2}
