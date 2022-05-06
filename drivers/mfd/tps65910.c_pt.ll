; ModuleID = '/llk/IR/drivers/mfd/tps65910.c_pt.bc'
source_filename = "../drivers/mfd/tps65910.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tps65910_board = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.tps65910_sleep_keepon_data, [9 x i8], [14 x i32], [14 x ptr] }
%struct.tps65910_sleep_keepon_data = type { i8, [3 x i8] }
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.tps65910_platform_data = type { i32, i32 }

@__initcall__kmod_tps65910__247_547_tps65910_i2c_init4 = internal global ptr @tps65910_i2c_init, section ".initcall4.init", align 4
@tps65910_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @tps65910_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps65910_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65910_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"tps65910\00", align 1
@tps65910_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@tps65910_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65910\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps65911\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tps65910_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"regmap initialization failed: %d\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to set power-off mode: %d\0A\00", align 1
@tps65910_i2c_client = internal unnamed_addr global ptr null, align 4
@tps65910s = internal constant [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to find matching dt id\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ti,vmbch-threshold\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ti,vmbch2-threshold\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ti,en-ck32k-xtal\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ti,sleep-enable\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ti,sleep-keep-therm\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ti,sleep-keep-ck32k\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"ti,sleep-keep-hsclk\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"ti,system-power-controller\00", align 1
@tps65910_irq_init.tps6591x_irqs_chip = internal unnamed_addr global ptr null, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"No interrupt support, no core IRQ\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Failed to add irq_chip %d\0A\00", align 1
@tps65910_irqs = internal constant [10 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }], align 4
@tps65910_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 80, i32 81, i32 0, i32 80, i32 0, i32 0, ptr null, i32 2, i8 0, i8 0, i32 2, ptr @tps65910_irqs, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65911_irqs = internal constant [24 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@tps65911_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 80, i32 81, i32 0, i32 80, i32 0, i32 0, ptr null, i32 2, i8 0, i8 0, i32 3, ptr @tps65911_irqs, i32 24, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"clear ck32k_ctrl failed: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"set dev_slp failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"set therm_keepon failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"set clkout32k_keepon failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"set i2chs_keepon failed: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"tps65910-gpio\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"tps65910-pmic\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"tps65910-rtc\00", align 1
@rtc_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"tps65910-power\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_tps65910__247_547_tps65910_i2c_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65910_i2c_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps65910_i2c_driver) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %194, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %15 = tail call ptr @of_match_device(ptr noundef nonnull @tps65910_of_match, ptr noundef %6) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #7
  br label %36

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 152, i32 noundef 3520) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4
  %29 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, ptr %3, align 4
  %35 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  br label %37

36:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %194

37:                                               ; preds = %33, %30
  %38 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %39 = icmp ne ptr %38, null
  %40 = zext i1 %39 to i32
  store i32 %40, ptr %3, align 4
  %41 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 5
  %42 = zext i1 %39 to i8
  store i8 %42, ptr %41, align 4
  %43 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %44 = icmp ne ptr %43, null
  %45 = zext i1 %44 to i32
  store i32 %45, ptr %3, align 4
  %46 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 6
  %47 = zext i1 %44 to i8
  store i8 %47, ptr %46, align 1
  %48 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %3, align 4
  %51 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 9
  %52 = zext i1 %49 to i8
  %53 = load i8, ptr %51, align 4
  %54 = and i8 %53, -8
  %55 = or i8 %54, %52
  %56 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %57 = icmp ne ptr %56, null
  %58 = zext i1 %57 to i32
  store i32 %58, ptr %3, align 4
  %59 = select i1 %57, i8 2, i8 0
  %60 = or i8 %55, %59
  %61 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.12, ptr noundef null) #6
  %62 = icmp ne ptr %61, null
  %63 = zext i1 %62 to i32
  store i32 %63, ptr %3, align 4
  %64 = select i1 %62, i8 4, i8 0
  %65 = or i8 %60, %64
  store i8 %65, ptr %51, align 4
  %66 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 1
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 2
  store i32 -1, ptr %69, align 4
  %70 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %71 = icmp ne ptr %70, null
  %72 = getelementptr inbounds %struct.tps65910_board, ptr %22, i32 0, i32 7
  %73 = zext i1 %71 to i8
  store i8 %73, ptr %72, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %74

74:                                               ; preds = %37, %2
  %75 = phi ptr [ %22, %37 ], [ null, %2 ]
  %76 = phi ptr [ %22, %37 ], [ %8, %2 ]
  %77 = phi i32 [ %21, %37 ], [ %5, %2 ]
  %78 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 8, i32 noundef 3520) #6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %194, label %80

80:                                               ; preds = %74
  %81 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 28, i32 noundef 3520) #6
  %82 = icmp eq ptr %81, null
  br i1 %82, label %194, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 4
  store ptr %75, ptr %84, align 4
  %85 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %81, ptr %85, align 8
  store ptr %6, ptr %81, align 4
  %86 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 1
  store ptr %0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 3
  store i32 %77, ptr %87, align 4
  %88 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 1, i16 noundef zeroext 0) #6
  %89 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tps65910_regmap_config, ptr noundef null, ptr noundef null) #6
  %90 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 2
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = ptrtoint ptr %89 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %93) #7
  br label %194

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.tps65910_board, ptr %76, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %78, align 4
  %97 = getelementptr inbounds %struct.tps65910_board, ptr %76, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tps65910_platform_data, ptr %78, i32 0, i32 1
  store i32 %98, ptr %99, align 4
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.14) #7
  br label %118

103:                                              ; preds = %94
  %104 = load i32, ptr %87, align 4
  switch i32 %104, label %105 [
    i32 0, label %107
    i32 1, label %108
  ]

105:                                              ; preds = %103
  %106 = load ptr, ptr @tps65910_irq_init.tps6591x_irqs_chip, align 4
  br label %109

107:                                              ; preds = %103
  store ptr @tps65910_irq_chip, ptr @tps65910_irq_init.tps6591x_irqs_chip, align 4
  br label %109

108:                                              ; preds = %103
  store ptr @tps65911_irq_chip, ptr @tps65910_irq_init.tps6591x_irqs_chip, align 4
  br label %109

109:                                              ; preds = %108, %107, %105
  %110 = phi ptr [ %106, %105 ], [ @tps65911_irq_chip, %108 ], [ @tps65910_irq_chip, %107 ]
  %111 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 5
  store i32 %96, ptr %111, align 4
  %112 = load ptr, ptr %81, align 4
  %113 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 6
  %114 = call i32 @devm_regmap_add_irq_chip(ptr noundef %112, ptr noundef %89, i32 noundef %96, i32 noundef 8192, i32 noundef %98, ptr noundef %110, ptr noundef %113) #6
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.16, i32 noundef %114) #7
  store i32 0, ptr %111, align 4
  br label %118

118:                                              ; preds = %116, %109, %101
  %119 = getelementptr inbounds %struct.tps65910_board, ptr %76, i32 0, i32 5
  %120 = load i8, ptr %119, align 4, !range !9
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %90, align 4
  %124 = call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 63, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.19, i32 noundef %124) #7
  br label %128

128:                                              ; preds = %126, %122, %118
  %129 = getelementptr inbounds %struct.tps65910_board, ptr %76, i32 0, i32 6
  %130 = load i8, ptr %129, align 1, !range !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %173, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %81, align 4
  %134 = load ptr, ptr %90, align 4
  %135 = call i32 @regmap_update_bits_base(ptr noundef %134, i32 noundef 63, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.20, i32 noundef %135) #7
  br label %173

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tps65910_board, ptr %76, i32 0, i32 9
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %90, align 4
  %145 = call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef 66, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = load i8, ptr %139, align 4
  br label %150

149:                                              ; preds = %143
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.21, i32 noundef %145) #7
  br label %170

150:                                              ; preds = %147, %138
  %151 = phi i8 [ %148, %147 ], [ %140, %138 ]
  %152 = and i8 %151, 2
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %90, align 4
  %156 = call i32 @regmap_update_bits_base(ptr noundef %155, i32 noundef 66, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = load i8, ptr %139, align 4
  br label %161

160:                                              ; preds = %154
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.22, i32 noundef %156) #7
  br label %170

161:                                              ; preds = %158, %150
  %162 = phi i8 [ %159, %158 ], [ %151, %150 ]
  %163 = and i8 %162, 4
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %90, align 4
  %167 = call i32 @regmap_update_bits_base(ptr noundef %166, i32 noundef 66, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.23, i32 noundef %167) #7
  br label %170

170:                                              ; preds = %169, %160, %149
  %171 = load ptr, ptr %90, align 4
  %172 = call i32 @regmap_update_bits_base(ptr noundef %171, i32 noundef 63, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %173

173:                                              ; preds = %170, %165, %161, %137, %128
  %174 = getelementptr inbounds %struct.tps65910_board, ptr %76, i32 0, i32 7
  %175 = load i8, ptr %174, align 2, !range !9
  %176 = icmp eq i8 %175, 0
  %177 = load ptr, ptr @pm_power_off, align 4
  %178 = icmp ne ptr %177, null
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %173
  %181 = load ptr, ptr %90, align 4
  %182 = call i32 @regmap_update_bits_base(ptr noundef %181, i32 noundef 63, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %182) #7
  br label %194

185:                                              ; preds = %180
  store ptr %0, ptr @tps65910_i2c_client, align 4
  store ptr @tps65910_power_off, ptr @pm_power_off, align 4
  br label %186

186:                                              ; preds = %185, %173
  %187 = load ptr, ptr %81, align 4
  %188 = getelementptr inbounds %struct.tps65910, ptr %81, i32 0, i32 6
  %189 = load ptr, ptr %188, align 4
  %190 = call ptr @regmap_irq_get_domain(ptr noundef %189) #6
  %191 = call i32 @devm_mfd_add_devices(ptr noundef %187, i32 noundef -1, ptr noundef nonnull @tps65910s, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %190) #6
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %191) #7
  br label %194

194:                                              ; preds = %193, %186, %184, %92, %80, %74, %36, %10
  %195 = phi i32 [ %93, %92 ], [ %191, %193 ], [ %182, %184 ], [ -12, %74 ], [ -12, %80 ], [ %191, %186 ], [ -22, %36 ], [ -22, %10 ]
  ret i32 %195
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps65910_power_off() #2 {
  %1 = load ptr, ptr @tps65910_i2c_client, align 4
  %2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 63, i32 noundef 5, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_volatile_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -32
  %4 = icmp ult i32 %3, 24
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, -2
  %12 = icmp eq i32 %11, 40
  %13 = and i1 %12, %10
  br label %14

14:                                               ; preds = %5, %2
  %15 = phi i1 [ true, %2 ], [ %13, %5 ]
  ret i1 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
