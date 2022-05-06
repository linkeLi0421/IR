; ModuleID = '/llk/IR/drivers/power/supply/max17040_battery.c_pt.bc'
source_filename = "../drivers/power/supply/max17040_battery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.chip_data = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max17040_chip = type { ptr, ptr, %struct.delayed_work, ptr, %struct.chip_data, i32, i32, i8, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@max17040_id = internal constant [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max17040\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max17041\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max17043\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max77836-battery\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max17044\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max17048\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max17049\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max17058\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"max17059\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id zeroinitializer], align 4
@max17040_of_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17041\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17043\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17048\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17049\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17058\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17059\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [42 x i8] c"author=Minkyu Kang <mk7.kang@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [32 x i8] c"description=MAX17040 Fuel Gauge\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@max17040_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max17040_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max17040_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max17040_pm_ops, ptr null, ptr null }, ptr @max17040_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"max17040\00", align 1
@max17040_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max17040_suspend, ptr @max17040_resume, ptr @max17040_suspend, ptr @max17040_resume, ptr @max17040_suspend, ptr @max17040_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max17040_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@max17040_family = internal unnamed_addr constant [8 x %struct.chip_data] [%struct.chip_data { i16 84, i16 4, i16 1250, i16 1, i8 0, i8 2, i8 0 }, %struct.chip_data { i16 84, i16 4, i16 2500, i16 1, i8 0, i8 2, i8 0 }, %struct.chip_data { i16 84, i16 4, i16 1250, i16 1, i8 1, i8 1, i8 0 }, %struct.chip_data { i16 84, i16 4, i16 2500, i16 1, i8 1, i8 1, i8 0 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 8, i8 1, i8 1, i8 1 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 4, i8 1, i8 1, i8 1 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 8, i8 1, i8 1, i8 0 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 4, i8 1, i8 1, i8 0 }], align 2
@max17040_battery_desc = internal constant %struct.power_supply_desc { ptr @.str.10, i32 1, ptr null, i32 0, ptr @max17040_battery_props, i32 4, ptr @max17040_get_property, ptr @max17040_set_property, ptr @max17040_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set low SOC alert: err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set SOC alert: err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to get IRQ err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"maxim,double-soc\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"maxim,alert-low-soc-level\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"maxim,alert-low-soc-level out of bounds\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"maxim,rcomp\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"maxim,rcomp has incorrect length\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@max17040_battery_props = internal global [4 x i32] [i32 4, i32 12, i32 47, i32 48], align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"IRQ: Alert battery low level\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__max17040_id_device_table = dso_local alias [10 x %struct.i2c_device_id], ptr @max17040_id
@__mod_of__max17040_of_match_device_table = dso_local alias [10 x %struct.of_device_id], ptr @max17040_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @max17040_i2c_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max17040_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17040_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.power_supply_config, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7) #8
  %13 = and i32 %12, 393216
  %14 = icmp eq i32 %13, 393216
  br i1 %14, label %15, label %170

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 80, i32 noundef 3520) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %170, label %19

19:                                               ; preds = %15
  store ptr %0, ptr %17, align 4
  %20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max17040_regmap, ptr noundef null, ptr noundef null) #8
  %21 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %170

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %34 = tail call ptr @of_device_get_match_data(ptr noundef %33) #8
  %35 = ptrtoint ptr %34 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %36 = tail call zeroext i1 @device_property_present(ptr noundef %33, ptr noundef nonnull @.str.5) #8
  %37 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 7
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 4
  %39 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 6
  store i32 4, ptr %39, align 4
  %40 = tail call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @.str.6, ptr noundef %39, i32 noundef 1) #8
  %41 = load i32, ptr %39, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %31
  %44 = load i8, ptr %37, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 32, i32 16
  %47 = icmp ugt i32 %41, %46
  br i1 %47, label %70, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @device_property_read_u8_array(ptr noundef %33, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0) #8
  %50 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 8
  store i16 -26880, ptr %50, align 2
  %51 = getelementptr [8 x %struct.chip_data], ptr @max17040_family, i32 0, i32 %35, i32 5
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = call i32 @device_property_read_u8_array(ptr noundef %33, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef %49) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = icmp eq i32 %49, 2
  %60 = load i8, ptr %4, align 2
  %61 = zext i8 %60 to i16
  %62 = shl nuw i16 %61, 8
  %63 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  %66 = select i1 %59, i16 %65, i16 0
  %67 = or i16 %66, %62
  store i16 %67, ptr %50, align 2
  br label %72

68:                                               ; preds = %48
  %69 = icmp sgt i32 %49, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %68, %43, %31
  %71 = phi ptr [ @.str.7, %43 ], [ @.str.7, %31 ], [ @.str.9, %68 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull %71) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %170

72:                                               ; preds = %68, %58, %55
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %73 = call ptr @of_device_get_match_data(ptr noundef %16) #8
  %74 = ptrtoint ptr %73 to i32
  br label %75

75:                                               ; preds = %72, %25
  %76 = phi i32 [ %74, %72 ], [ %27, %25 ]
  %77 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 4
  %78 = getelementptr [8 x %struct.chip_data], ptr @max17040_family, i32 0, i32 %76
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %77, ptr noundef align 2 dereferenceable(12) %78, i32 12, i1 false)
  %79 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %17, ptr %79, align 8
  %80 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 2
  store ptr %17, ptr %80, align 4
  %81 = call ptr @devm_power_supply_register(ptr noundef %16, ptr noundef nonnull @max17040_battery_desc, ptr noundef nonnull %5) #8
  %82 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 3
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1) #9
  %85 = load ptr, ptr %82, align 4
  %86 = ptrtoint ptr %85 to i32
  br label %170

87:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %88 = load ptr, ptr %21, align 4
  %89 = call i32 @regmap_read(ptr noundef %88, i32 noundef 8, ptr noundef nonnull %3) #8
  %90 = icmp eq i32 %89, 0
  %91 = load i32, ptr %3, align 4
  %92 = select i1 %90, i32 %91, i32 %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %170, label %94

94:                                               ; preds = %87
  %95 = icmp ult i32 %76, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = load ptr, ptr %21, align 4
  %98 = load i16, ptr %77, align 4
  %99 = zext i16 %98 to i32
  %100 = call i32 @regmap_write(ptr noundef %97, i32 noundef 254, i32 noundef %99) #8
  br label %101

101:                                              ; preds = %96, %94
  %102 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 8
  %103 = load i16, ptr %102, align 2
  %104 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 4, i32 5
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 2
  %107 = load ptr, ptr %21, align 4
  %108 = select i1 %106, i32 65535, i32 65280
  %109 = zext i16 %103 to i32
  %110 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 12, i32 noundef %108, i32 noundef %109, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %111 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %147, label %114

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 4, i32 4
  %116 = load i8, ptr %115, align 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = xor i1 %117, true
  br label %137

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 7
  %124 = load i8, ptr %123, align 4, !range !9
  %125 = icmp eq i8 %124, 0
  %126 = select i1 %125, i32 -1, i32 -2
  %127 = mul i32 %126, %122
  %128 = add i32 %127, 32
  %129 = load ptr, ptr %21, align 4
  %130 = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 12, i32 noundef 63, i32 noundef %128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %130) #9
  br label %170

133:                                              ; preds = %120
  %134 = load i32, ptr %111, align 4
  %135 = icmp eq i32 %134, 0
  %136 = xor i1 %117, true
  br i1 %135, label %147, label %137

137:                                              ; preds = %133, %118
  %138 = phi i1 [ %119, %118 ], [ %136, %133 ]
  %139 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 4, i32 6
  %140 = load i8, ptr %139, align 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %21, align 4
  %144 = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef 12, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %144) #9
  br label %170

147:                                              ; preds = %137, %133, %101
  %148 = phi i1 [ %138, %137 ], [ %136, %133 ], [ false, %101 ]
  %149 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 2
  store i32 -32, ptr %149, align 4
  %150 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %150, ptr %150, align 4
  %151 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 2, i32 0, i32 2
  store ptr @max17040_work, ptr %152, align 4
  %153 = getelementptr inbounds %struct.max17040_chip, ptr %17, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %153, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef null, ptr noundef null) #8
  %154 = call i32 @devm_add_action(ptr noundef %16, ptr noundef nonnull @max17040_stop_work, ptr noundef nonnull %17) #8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %147
  %157 = load ptr, ptr @system_power_efficient_wq, align 4
  %158 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %157, ptr noundef %149, i32 noundef 1000) #8
  br i1 %148, label %159, label %170

159:                                              ; preds = %156, %142
  %160 = load ptr, ptr %17, align 4
  %161 = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %82, align 4
  %165 = load ptr, ptr %164, align 8
  %166 = load ptr, ptr %165, align 4
  %167 = call i32 @devm_request_threaded_irq(ptr noundef %161, i32 noundef %163, ptr noundef null, ptr noundef nonnull @max17040_thread_handler, i32 noundef 8192, ptr noundef %166, ptr noundef nonnull %17) #8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %159
  store i32 0, ptr %111, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %167) #9
  br label %170

170:                                              ; preds = %169, %159, %156, %147, %146, %132, %87, %84, %70, %23, %15, %2
  %171 = phi i32 [ %24, %23 ], [ %86, %84 ], [ %130, %132 ], [ %144, %146 ], [ -5, %2 ], [ -12, %15 ], [ -22, %70 ], [ %92, %87 ], [ %154, %147 ], [ 0, %159 ], [ 0, %169 ], [ 0, %156 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret i32 %171
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max17040_work(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 60
  %4 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %2) #8
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 68
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 8, i32 9
  %13 = lshr i32 %8, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  store i32 %13, ptr %3, align 4
  %14 = icmp eq i32 %4, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 44
  %17 = load ptr, ptr %16, align 4
  call void @power_supply_changed(ptr noundef %17) #8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load ptr, ptr @system_power_efficient_wq, align 4
  %20 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %0, i32 noundef 1000) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max17040_stop_work(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.max17040_chip, ptr %0, i32 0, i32 2
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17040_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  switch i32 %1, label %40 [
    i32 4, label %38
    i32 12, label %7
    i32 47, label %25
    i32 48, label %35
  ]

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 2, ptr noundef nonnull %5) #8
  %11 = load i32, ptr %5, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 4, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = lshr i32 %12, %15
  %17 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 4, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = mul nuw i32 %16, %19
  %21 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 4, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = sdiv i32 %20, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %38

25:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %4) #8
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 7
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 8, i32 9
  %34 = lshr i32 %29, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %38

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.max17040_chip, ptr %6, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %25, %7, %3
  %39 = phi i32 [ %24, %7 ], [ %34, %25 ], [ %37, %35 ], [ 1, %3 ]
  store i32 %39, ptr %2, align 4
  br label %40

40:                                               ; preds = %38, %3
  %41 = phi i32 [ -22, %3 ], [ 0, %38 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17040_set_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  %5 = icmp eq i32 %1, 48
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.max17040_chip, ptr %4, i32 0, i32 7
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 32, i32 16
  %14 = icmp ugt i32 %7, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = select i1 %12, i32 -1, i32 -2
  %17 = mul i32 %16, %7
  %18 = add i32 %17, 32
  %19 = getelementptr inbounds %struct.max17040_chip, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 12, i32 noundef 63, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr inbounds %struct.max17040_chip, ptr %4, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %15, %9, %6, %3
  %25 = phi i32 [ %21, %15 ], [ -22, %9 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @max17040_prop_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = icmp eq i32 %1, 48
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17040_thread_handler(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 4, i32 6
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 26, ptr noundef nonnull %4) #8
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 4
  %17 = and i32 %12, -8193
  %18 = call i32 @regmap_write(ptr noundef %16, i32 noundef 26, i32 noundef %17) #8
  br label %19

19:                                               ; preds = %15, %8
  %20 = and i32 %12, 4096
  %21 = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %2
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.11) #9
  br label %25

25:                                               ; preds = %22, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %3) #8
  %29 = load i32, ptr %3, align 4
  %30 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 7
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 8, i32 9
  %34 = lshr i32 %29, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %35 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  call void @power_supply_changed(ptr noundef %37) #8
  %38 = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = load i8, ptr %30, align 4, !range !9
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 -1, i32 -2
  %43 = mul i32 %42, %39
  %44 = add i32 %43, 32
  %45 = load ptr, ptr %26, align 4
  %46 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 12, i32 noundef 63, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17040_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.max17040_chip, ptr %3, i32 0, i32 4, i32 6
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.max17040_chip, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 12, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %18

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.max17040_chip, ptr %3, i32 0, i32 2
  %17 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %16) #8
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 1) #8
  br label %32

32:                                               ; preds = %30, %26, %21, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17040_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #8
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16, %12, %7
  %21 = getelementptr inbounds %struct.max17040_chip, ptr %3, i32 0, i32 4, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.max17040_chip, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 12, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %32

28:                                               ; preds = %20, %16, %1
  %29 = load ptr, ptr @system_power_efficient_wq, align 4
  %30 = getelementptr inbounds %struct.max17040_chip, ptr %3, i32 0, i32 2
  %31 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %30, i32 noundef 1000) #8
  br label %32

32:                                               ; preds = %28, %24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
