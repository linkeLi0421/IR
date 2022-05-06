; ModuleID = '/llk/IR/drivers/mfd/wm8994-core.c_pt.bc'
source_filename = "../drivers/mfd/wm8994-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@wm8994_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm1811\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8958\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@wm8994_i2c_id = internal constant [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm1811\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"wm1811a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"wm8958\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description248 = internal constant [52 x i8] c"description=Core support for the WM8994 audio CODEC\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [56 x i8] c"author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep251 = internal constant [30 x i8] c"softdep=pre: wm8994_regulator\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@wm8994_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @wm8994_i2c_probe, ptr @wm8994_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8994_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_pm_ops, ptr null, ptr null }, ptr @wm8994_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm8994\00", align 1
@wm8994_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_suspend, ptr @wm8994_resume, ptr null }, align 4
@wm8994_base_regmap_config = external dso_local global %struct.regmap_config, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@wm8994_regulator_devs = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 1, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 1, ptr null, i32 0 }], align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to add children: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to read ID register\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"WM1811\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Device registered as type %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"WM8994\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"WM8958\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Device is not a WM8994, ID is %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Failed to read revision register: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"revision %c not fully supported\0A\00", align 1
@wm8994_revc_patch = internal constant [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 258, i32 3, i32 0 }, %struct.reg_sequence { i32 86, i32 3, i32 0 }, %struct.reg_sequence { i32 2071, i32 0, i32 0 }, %struct.reg_sequence { i32 258, i32 0, i32 0 }], align 4
@wm8958_reva_patch = internal constant [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 258, i32 3, i32 0 }, %struct.reg_sequence { i32 203, i32 129, i32 0 }, %struct.reg_sequence { i32 2071, i32 0, i32 0 }, %struct.reg_sequence { i32 258, i32 0, i32 0 }], align 4
@wm1811_reva_patch = internal constant [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 258, i32 3, i32 0 }, %struct.reg_sequence { i32 86, i32 3079, i32 0 }, %struct.reg_sequence { i32 93, i32 126, i32 0 }, %struct.reg_sequence { i32 94, i32 0, i32 0 }, %struct.reg_sequence { i32 258, i32 0, i32 0 }], align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"%s revision %c CUST_ID %02x\0A\00", align 1
@wm1811_regmap_config = external dso_local global %struct.regmap_config, align 4
@wm8994_regmap_config = external dso_local global %struct.regmap_config, align 4
@wm8958_regmap_config = external dso_local global %struct.regmap_config, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Unknown device type %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to reinit register cache: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Failed to reset device: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Failed to register patch: %d\0A\00", align 1
@wm8994_devs = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @wm8994_codec_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @wm8994_gpio_resources, i8 0, i8 1, ptr null, i32 0 }], align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"wlf,gpio-cfg\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"wlf,micbias-cfg\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"wlf,lineout1-se\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"wlf,lineout2-se\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"wlf,lineout1-feedback\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"wlf,lineout2-feedback\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"wlf,ldoena-always-driven\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"wlf,spkmode-pu\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"wlf,csnaddr-pd\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"wm8994-ldo\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"DBVDD1\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"DBVDD2\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"DBVDD3\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"DCVDD\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"AVDD1\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"AVDD2\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"CPVDD\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SPKVDD1\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"SPKVDD2\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"DBVDD\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"wm8994-codec\00", align 1
@wm8994_codec_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 0, i32 15, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.39 = private unnamed_addr constant [12 x i8] c"wm8994-gpio\00", align 1
@wm8994_gpio_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 16, i32 26, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.40 = private unnamed_addr constant [33 x i8] c"Failed to read power status: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Failed to restore GPIO registers: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"Failed to restore interrupt mask: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Failed to disable supplies: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"Failed to restore register map: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_softdep251], section "llvm.metadata"
@switch.table.wm8994_i2c_probe = private unnamed_addr constant [3 x i32] [i32 7, i32 9, i32 9], align 4
@switch.table.wm8994_i2c_probe.45 = private unnamed_addr constant [3 x i32] [i32 84, i32 108, i32 108], align 4
@switch.table.wm8994_i2c_probe.46 = private unnamed_addr constant [3 x ptr] [ptr @wm8994_regmap_config, ptr @wm8958_regmap_config, ptr @wm1811_regmap_config], align 4

@__mod_of__wm8994_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @wm8994_of_match
@__mod_i2c__wm8994_i2c_id_device_table = dso_local alias [5 x %struct.i2c_device_id], ptr @wm8994_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @wm8994_i2c_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8994_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 240, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %388, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 4
  store ptr %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 9
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @of_match_device(ptr noundef nonnull @wm8994_of_match, ptr noundef %6) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.of_device_id, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %28

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %24, %21 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %18
  %32 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @wm8994_base_regmap_config, ptr noundef null, ptr noundef null) #7
  %33 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 5
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  %37 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef %36) #8
  br label %388

38:                                               ; preds = %31
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(180) %7, ptr noundef nonnull align 4 dereferenceable(180) %41, i32 180, i1 false) #7
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 25
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %152, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1
  %50 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %46, ptr noundef nonnull @.str.18, ptr noundef %49, i32 noundef 11, i32 noundef 0) #7
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 0) #7
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %107

53:                                               ; preds = %48
  %54 = load i32, ptr %49, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 65536, ptr %49, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 65536, ptr %58, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 65536, ptr %63, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 65536, ptr %68, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 65536, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 65536, ptr %78, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 65536, ptr %83, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 65536, ptr %88, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 65536, ptr %93, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 9
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 65536, ptr %98, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 10
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 65536, ptr %103, align 4
  br label %107

107:                                              ; preds = %106, %102, %48
  %108 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 26
  %109 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %46, ptr noundef nonnull @.str.19, ptr noundef %108, i32 noundef 2, i32 noundef 0) #7
  %110 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 21
  %111 = load i8, ptr %110, align 4
  %112 = or i8 %111, 3
  store i8 %112, ptr %110, align 4
  %113 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %107
  %116 = load i8, ptr %110, align 4
  %117 = and i8 %116, -2
  store i8 %117, ptr %110, align 4
  br label %118

118:                                              ; preds = %115, %107
  %119 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i8, ptr %110, align 4
  %123 = and i8 %122, -3
  store i8 %123, ptr %110, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i8, ptr %110, align 4
  %129 = or i8 %128, 4
  store i8 %129, ptr %110, align 4
  br label %130

130:                                              ; preds = %127, %124
  %131 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i8, ptr %110, align 4
  %135 = or i8 %134, 8
  store i8 %135, ptr %110, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i8, ptr %110, align 4
  %141 = or i8 %140, 8
  store i8 %141, ptr %110, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %144 = icmp ne ptr %143, null
  %145 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 29
  %146 = zext i1 %144 to i8
  store i8 %146, ptr %145, align 1
  %147 = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %148 = icmp ne ptr %147, null
  %149 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 30
  %150 = zext i1 %148 to i8
  store i8 %150, ptr %149, align 4
  %151 = load ptr, ptr %11, align 4
  br label %152

152:                                              ; preds = %142, %44
  %153 = phi ptr [ %39, %44 ], [ %151, %142 ]
  %154 = getelementptr inbounds %struct.device, ptr %153, i32 0, i32 8
  store ptr %7, ptr %154, align 8
  %155 = load ptr, ptr %11, align 4
  %156 = tail call i32 @mfd_add_devices(ptr noundef %155, i32 noundef 0, ptr noundef nonnull @wm8994_regulator_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.2, i32 noundef %156) #8
  br label %385

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = icmp ult i32 %162, 3
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/wm8994-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #7, !srcloc !8
  unreachable

165:                                              ; preds = %160
  %166 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8994_i2c_probe, i32 0, i32 %162
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8994_i2c_probe.45, i32 0, i32 %162
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 14
  store i32 %167, ptr %170, align 4
  %171 = load ptr, ptr %11, align 4
  %172 = tail call noalias ptr @devm_kmalloc(ptr noundef %171, i32 noundef %169, i32 noundef 3520) #7
  %173 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 15
  store ptr %172, ptr %173, align 4
  %174 = icmp eq ptr %172, null
  br i1 %174, label %385, label %175

175:                                              ; preds = %165
  %176 = load i32, ptr %161, align 4
  switch i32 %176, label %184 [
    i32 2, label %181
    i32 0, label %180
    i32 1, label %177
  ]

177:                                              ; preds = %175
  store ptr @.str.28, ptr %172, align 4
  %178 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 1
  store ptr @.str.29, ptr %178, align 4
  %179 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 2
  store ptr @.str.30, ptr %179, align 4
  br label %185

180:                                              ; preds = %175
  store ptr @.str.37, ptr %172, align 4
  br label %185

181:                                              ; preds = %175
  store ptr @.str.28, ptr %172, align 4
  %182 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 1
  store ptr @.str.29, ptr %182, align 4
  %183 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 2
  store ptr @.str.30, ptr %183, align 4
  br label %185

184:                                              ; preds = %175
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/wm8994-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 384, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

185:                                              ; preds = %181, %180, %177
  %186 = phi i32 [ 3, %177 ], [ 1, %180 ], [ 3, %181 ]
  %187 = phi i32 [ 4, %177 ], [ 2, %180 ], [ 4, %181 ]
  %188 = phi i32 [ 5, %177 ], [ 3, %180 ], [ 5, %181 ]
  %189 = phi i32 [ 6, %177 ], [ 4, %180 ], [ 6, %181 ]
  %190 = phi i32 [ 7, %177 ], [ 5, %180 ], [ 7, %181 ]
  %191 = phi i32 [ 8, %177 ], [ 6, %180 ], [ 8, %181 ]
  %192 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 %186
  store ptr @.str.31, ptr %192, align 4
  %193 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 %187
  store ptr @.str.32, ptr %193, align 4
  %194 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 %188
  store ptr @.str.33, ptr %194, align 4
  %195 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 %189
  store ptr @.str.34, ptr %195, align 4
  %196 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 %190
  store ptr @.str.35, ptr %196, align 4
  %197 = getelementptr %struct.regulator_bulk_data, ptr %172, i32 %191
  store ptr @.str.36, ptr %197, align 4
  %198 = load ptr, ptr %11, align 4
  %199 = load i32, ptr %170, align 4
  %200 = tail call i32 @regulator_bulk_get(ptr noundef %198, i32 noundef %199, ptr noundef nonnull %172) #7
  switch i32 %200, label %201 [
    i32 0, label %203
    i32 -517, label %385
  ]

201:                                              ; preds = %185
  %202 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.3, i32 noundef %200) #8
  br label %385

203:                                              ; preds = %185
  %204 = load i32, ptr %170, align 4
  %205 = load ptr, ptr %173, align 4
  %206 = tail call i32 @regulator_bulk_enable(i32 noundef %204, ptr noundef %205) #7
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.4, i32 noundef %206) #8
  br label %381

210:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !10
  %211 = load ptr, ptr %33, align 4
  %212 = call i32 @regmap_read(ptr noundef %211, i32 noundef 0, ptr noundef nonnull %5) #7
  %213 = icmp slt i32 %212, 0
  %214 = load i32, ptr %5, align 4
  %215 = select i1 %213, i32 %212, i32 %214
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.5) #8
  br label %376

219:                                              ; preds = %210
  switch i32 %215, label %229 [
    i32 6161, label %220
    i32 35220, label %223
    i32 35160, label %226
  ]

220:                                              ; preds = %219
  %221 = load i32, ptr %161, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %236, label %231

223:                                              ; preds = %219
  %224 = load i32, ptr %161, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %236, label %231

226:                                              ; preds = %219
  %227 = load i32, ptr %161, align 4
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %236, label %231

229:                                              ; preds = %219
  %230 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.10, i32 noundef %215) #8
  br label %376

231:                                              ; preds = %226, %223, %220
  %232 = phi i32 [ %221, %220 ], [ %224, %223 ], [ %227, %226 ]
  %233 = phi i32 [ 2, %220 ], [ 0, %223 ], [ 1, %226 ]
  %234 = phi ptr [ @.str.6, %220 ], [ @.str.8, %223 ], [ @.str.9, %226 ]
  %235 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %235, ptr noundef nonnull @.str.7, i32 noundef %232) #8
  br label %236

236:                                              ; preds = %231, %226, %223, %220
  %237 = phi i32 [ 2, %220 ], [ 0, %223 ], [ 1, %226 ], [ %233, %231 ]
  %238 = phi ptr [ @.str.6, %220 ], [ @.str.8, %223 ], [ @.str.9, %226 ], [ %234, %231 ]
  store i32 %237, ptr %161, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %239 = load ptr, ptr %33, align 4
  %240 = call i32 @regmap_read(ptr noundef %239, i32 noundef 256, ptr noundef nonnull %4) #7
  %241 = icmp slt i32 %240, 0
  %242 = load i32, ptr %4, align 4
  %243 = select i1 %241, i32 %240, i32 %242
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.11, i32 noundef %243) #8
  br label %376

247:                                              ; preds = %236
  %248 = and i32 %243, 15
  %249 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 2
  store i32 %248, ptr %249, align 4
  %250 = lshr i32 %243, 8
  %251 = and i32 %250, 255
  %252 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 3
  store i32 %251, ptr %252, align 4
  %253 = load i32, ptr %161, align 4
  switch i32 %253, label %268 [
    i32 0, label %254
    i32 1, label %261
    i32 2, label %264
  ]

254:                                              ; preds = %247
  %255 = icmp ult i32 %248, 2
  br i1 %255, label %256, label %268

256:                                              ; preds = %254
  %257 = load ptr, ptr %11, align 4
  %258 = add nuw nsw i32 %248, 65
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %257, ptr noundef nonnull @.str.12, i32 noundef %258) #8
  %259 = load i32, ptr %249, align 4
  %260 = load i32, ptr %252, align 4
  br label %268

261:                                              ; preds = %247
  %262 = icmp eq i32 %248, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %261
  br label %268

264:                                              ; preds = %247
  %265 = icmp ugt i32 %248, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = add nuw nsw i32 %248, 1
  store i32 %267, ptr %249, align 4
  br label %268

268:                                              ; preds = %266, %264, %263, %261, %256, %254, %247
  %269 = phi i32 [ %260, %256 ], [ %251, %261 ], [ %251, %263 ], [ %251, %247 ], [ %251, %254 ], [ %251, %266 ], [ %251, %264 ]
  %270 = phi i32 [ %259, %256 ], [ %248, %261 ], [ 0, %263 ], [ %248, %247 ], [ %248, %254 ], [ %267, %266 ], [ %248, %264 ]
  %271 = phi i1 [ true, %256 ], [ true, %261 ], [ false, %263 ], [ true, %247 ], [ false, %254 ], [ false, %266 ], [ false, %264 ]
  %272 = phi ptr [ null, %256 ], [ null, %261 ], [ @wm8958_reva_patch, %263 ], [ null, %247 ], [ @wm8994_revc_patch, %254 ], [ @wm1811_reva_patch, %266 ], [ @wm1811_reva_patch, %264 ]
  %273 = phi i32 [ 0, %256 ], [ 0, %261 ], [ 4, %263 ], [ 0, %247 ], [ 4, %254 ], [ 5, %266 ], [ 5, %264 ]
  %274 = load ptr, ptr %11, align 4
  %275 = add i32 %270, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %274, ptr noundef nonnull @.str.13, ptr noundef nonnull %238, i32 noundef %275, i32 noundef %269) #8
  %276 = load i32, ptr %161, align 4
  %277 = icmp ult i32 %276, 3
  br i1 %277, label %280, label %278

278:                                              ; preds = %268
  %279 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.14, i32 noundef %276) #8
  br label %376

280:                                              ; preds = %268
  %281 = getelementptr inbounds [3 x ptr], ptr @switch.table.wm8994_i2c_probe.46, i32 0, i32 %276
  %282 = load ptr, ptr %281, align 4
  %283 = load ptr, ptr %33, align 4
  %284 = call i32 @regmap_reinit_cache(ptr noundef %283, ptr noundef nonnull %282) #7
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %280
  %287 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %287, ptr noundef nonnull @.str.15, i32 noundef %284) #8
  br label %376

288:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %289 = load ptr, ptr %33, align 4
  %290 = call i32 @regmap_read(ptr noundef %289, i32 noundef 0, ptr noundef nonnull %3) #7
  %291 = icmp slt i32 %290, 0
  %292 = load i32, ptr %3, align 4
  %293 = select i1 %291, i32 %290, i32 %292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %294 = load ptr, ptr %33, align 4
  %295 = and i32 %293, 65535
  %296 = call i32 @regmap_write(ptr noundef %294, i32 noundef 0, i32 noundef %295) #7
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %288
  %299 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %299, ptr noundef nonnull @.str.16, i32 noundef %296) #8
  br label %376

300:                                              ; preds = %288
  br i1 %271, label %307, label %301

301:                                              ; preds = %300
  %302 = load ptr, ptr %33, align 4
  %303 = call i32 @regmap_register_patch(ptr noundef %302, ptr noundef %272, i32 noundef %273) #7
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.17, i32 noundef %303) #8
  br label %376

307:                                              ; preds = %301, %300
  %308 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 3
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 8
  store i32 %309, ptr %310, align 4
  %311 = load i32, ptr %7, align 4
  %312 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 7
  store i32 %311, ptr %312, align 4
  br label %313

313:                                              ; preds = %323, %307
  %314 = phi i32 [ 0, %307 ], [ %324, %323 ]
  %315 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 1, i32 %314
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %313
  %319 = add nuw nsw i32 %314, 1792
  %320 = load ptr, ptr %33, align 4
  %321 = and i32 %316, 65535
  %322 = call i32 @regmap_update_bits_base(ptr noundef %320, i32 noundef %319, i32 noundef 65535, i32 noundef %321, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %323

323:                                              ; preds = %318, %313
  %324 = add nuw nsw i32 %314, 1
  %325 = icmp eq i32 %324, 11
  br i1 %325, label %326, label %313

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 28
  %328 = load i8, ptr %327, align 2, !range !11
  %329 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 6
  store i8 %328, ptr %329, align 4
  %330 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 29
  %331 = load i8, ptr %330, align 1, !range !11
  %332 = icmp eq i8 %331, 0
  %333 = select i1 %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 30
  %335 = load i8, ptr %334, align 4, !range !11
  %336 = icmp eq i8 %335, 0
  %337 = or i32 %333, 256
  %338 = select i1 %336, i32 %333, i32 %337
  %339 = load ptr, ptr %33, align 4
  %340 = call i32 @regmap_update_bits_base(ptr noundef %339, i32 noundef 1825, i32 noundef 338, i32 noundef %338, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %341 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 2, i32 0
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %348, label %344

344:                                              ; preds = %326
  %345 = getelementptr inbounds %struct.regulator_init_data, ptr %342, i32 0, i32 2
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344, %326
  br label %349

349:                                              ; preds = %348, %344
  %350 = phi i32 [ 0, %348 ], [ 1, %344 ]
  %351 = load ptr, ptr %33, align 4
  %352 = call i32 @regmap_update_bits_base(ptr noundef %351, i32 noundef 59, i32 noundef 1, i32 noundef %350, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %353 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 2, i32 1
  %354 = load ptr, ptr %353, align 4
  %355 = icmp eq ptr %354, null
  br i1 %355, label %360, label %356

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.regulator_init_data, ptr %354, i32 0, i32 2
  %358 = load i32, ptr %357, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %356, %349
  br label %361

361:                                              ; preds = %360, %356
  %362 = phi i32 [ 0, %360 ], [ 1, %356 ]
  %363 = load ptr, ptr %33, align 4
  %364 = call i32 @regmap_update_bits_base(ptr noundef %363, i32 noundef 60, i32 noundef 1, i32 noundef %362, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %365 = call i32 @wm8994_irq_init(ptr noundef %7) #7
  %366 = load ptr, ptr %11, align 4
  %367 = call i32 @mfd_add_devices(ptr noundef %366, i32 noundef -1, ptr noundef nonnull @wm8994_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  %368 = icmp eq i32 %367, 0
  %369 = load ptr, ptr %11, align 4
  br i1 %368, label %371, label %370

370:                                              ; preds = %361
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %369, ptr noundef nonnull @.str.2, i32 noundef %367) #8
  call void @wm8994_irq_exit(ptr noundef %7) #7
  br label %376

371:                                              ; preds = %361
  %372 = call i32 @__pm_runtime_set_status(ptr noundef %369, i32 noundef 0) #7
  %373 = load ptr, ptr %11, align 4
  call void @pm_runtime_enable(ptr noundef %373) #7
  %374 = load ptr, ptr %11, align 4
  %375 = call i32 @__pm_runtime_idle(ptr noundef %374, i32 noundef 0) #7
  br label %388

376:                                              ; preds = %370, %305, %298, %286, %278, %245, %229, %217
  %377 = phi i32 [ %215, %217 ], [ -22, %229 ], [ %243, %245 ], [ -22, %278 ], [ %284, %286 ], [ %296, %298 ], [ %303, %305 ], [ %367, %370 ]
  %378 = load i32, ptr %170, align 4
  %379 = load ptr, ptr %173, align 4
  %380 = call i32 @regulator_bulk_disable(i32 noundef %378, ptr noundef %379) #7
  br label %381

381:                                              ; preds = %376, %208
  %382 = phi i32 [ %206, %208 ], [ %377, %376 ]
  %383 = load i32, ptr %170, align 4
  %384 = load ptr, ptr %173, align 4
  call void @regulator_bulk_free(i32 noundef %383, ptr noundef %384) #7
  br label %385

385:                                              ; preds = %381, %201, %185, %165, %158
  %386 = phi i32 [ %156, %158 ], [ %200, %201 ], [ %382, %381 ], [ -12, %165 ], [ %200, %185 ]
  %387 = load ptr, ptr %11, align 4
  call void @mfd_remove_devices(ptr noundef %387) #7
  br label %388

388:                                              ; preds = %385, %371, %35, %2
  %389 = phi i32 [ %36, %35 ], [ -12, %2 ], [ %386, %385 ], [ 0, %371 ]
  ret i32 %389
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %7 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #7
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #7, !srcloc !14
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  br label %14

14:                                               ; preds = %13, %1
  tail call void @wm8994_irq_exit(ptr noundef %3) #7
  %15 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regulator_bulk_disable(i32 noundef %16, ptr noundef %18) #7
  %20 = load i32, ptr %15, align 4
  %21 = load ptr, ptr %17, align 4
  tail call void @regulator_bulk_free(i32 noundef %20, ptr noundef %21) #7
  %22 = load ptr, ptr %4, align 4
  tail call void @mfd_remove_devices(ptr noundef %22) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_reinit_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8994_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm8994_irq_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_suspend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %11 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 208, ptr noundef nonnull %3) #7
  %14 = icmp slt i32 %13, 0
  %15 = load i32, ptr %3, align 4
  %16 = select i1 %14, i32 %13, i32 %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %16) #8
  br label %22

19:                                               ; preds = %10
  %20 = and i32 %16, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %19, %18, %1
  %23 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 6
  %24 = load i8, ptr %23, align 4, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 1825, i32 noundef 80, i32 noundef 80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %30

30:                                               ; preds = %26, %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !10
  %31 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @regmap_read(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %2) #7
  %34 = icmp slt i32 %33, 0
  %35 = load i32, ptr %2, align 4
  %36 = select i1 %34, i32 %33, i32 %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %37 = load ptr, ptr %31, align 4
  %38 = and i32 %36, 65535
  %39 = call i32 @regmap_write(ptr noundef %37, i32 noundef 0, i32 noundef %38) #7
  %40 = load ptr, ptr %31, align 4
  call void @regcache_mark_dirty(ptr noundef %40) #7
  %41 = load ptr, ptr %31, align 4
  %42 = call i32 @regcache_sync_region(ptr noundef %41, i32 noundef 1792, i32 noundef 1802) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %42) #8
  br label %45

45:                                               ; preds = %44, %30
  %46 = load ptr, ptr %31, align 4
  %47 = call i32 @regcache_sync_region(ptr noundef %46, i32 noundef 1848, i32 noundef 1848) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %47) #8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load ptr, ptr %31, align 4
  call void @regcache_cache_only(ptr noundef %51, i1 noundef zeroext true) #7
  %52 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 12
  store i8 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.wm8994, ptr %5, i32 0, i32 15
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @regulator_bulk_disable(i32 noundef %54, ptr noundef %56) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %57) #8
  br label %60

60:                                               ; preds = %59, %50, %19
  %61 = phi i32 [ %57, %59 ], [ 0, %19 ], [ 0, %50 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 12
  %5 = load i8, ptr %4, align 4, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regulator_bulk_enable(i32 noundef %9, ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %12) #8
  br label %28

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  tail call void @regcache_cache_only(ptr noundef %17, i1 noundef zeroext false) #7
  %18 = load ptr, ptr %16, align 4
  %19 = tail call i32 @regcache_sync(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %19) #8
  %22 = load i32, ptr %8, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = tail call i32 @regulator_bulk_disable(i32 noundef %22, ptr noundef %23) #7
  br label %28

25:                                               ; preds = %15
  %26 = load ptr, ptr %16, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 1825, i32 noundef 80, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  store i8 0, ptr %4, align 4
  br label %28

28:                                               ; preds = %25, %21, %14, %1
  %29 = phi i32 [ %12, %14 ], [ %19, %21 ], [ 0, %25 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 2154535876, i64 2154536366, i64 2154535913, i64 2154535969, i64 2154536003, i64 2154536027, i64 2154536068, i64 2154536089, i64 2154536117, i64 2154536151}
!9 = !{i64 2154538366, i64 2154538856, i64 2154538403, i64 2154538459, i64 2154538493, i64 2154538517, i64 2154538558, i64 2154538579, i64 2154538607, i64 2154538641}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2147926741}
!13 = !{i64 425051, i64 2147915022, i64 2147915048, i64 2147915095, i64 2147915117, i64 2147915145, i64 2147915165}
!14 = !{i64 411620, i64 411645, i64 411667, i64 411683, i64 411695, i64 411715, i64 411739, i64 411755, i64 411767}
!15 = !{i64 2147926867}
