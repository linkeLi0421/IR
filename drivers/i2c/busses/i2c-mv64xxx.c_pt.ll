; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-mv64xxx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-mv64xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mv64xxx_i2c_regs = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mv64xxx_i2c_data = type { ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mv64xxx_i2c_regs, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.i2c_adapter, i8, i8, ptr, i8, i8, %struct.i2c_bus_recovery_info }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv64xxx_i2c_pdata = type { i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_mv64xxx__248_1076_mv64xxx_i2c_driver_init6 = internal global ptr @mv64xxx_i2c_driver_init, section ".initcall6.init", align 4
@mv64xxx_i2c_driver = internal global %struct.platform_driver { ptr @mv64xxx_i2c_probe, ptr @mv64xxx_i2c_remove, ptr @mv64xxx_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv64xxx_i2c_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv64xxx_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mv64xxx_i2c_driver_exit = internal global ptr @mv64xxx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [53 x i8] c"i2c_mv64xxx.author=Mark A. Greer <mgreer@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [68 x i8] c"i2c_mv64xxx.description=Marvell mv64xxx host bridge i2c ctlr driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [48 x i8] c"i2c_mv64xxx.file=drivers/i2c/busses/i2c-mv64xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [24 x i8] c"i2c_mv64xxx.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"mv64xxx_i2c\00", align 1
@mv64xxx_i2c_of_match_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_sun4i }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_sun4i }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv64xxx-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_mv64xxx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78230-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_mv64xxx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78230-a0-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_mv64xxx }, %struct.of_device_id zeroinitializer], align 4
@mv64xxx_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @mv64xxx_i2c_runtime_suspend, ptr @mv64xxx_i2c_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"mv64xxx_i2c adapter\00", align 1
@mv64xxx_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&drv_data->waitq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@mv64xxx_i2c_regs_mv64xxx = internal global %struct.mv64xxx_i2c_regs { i8 0, i8 16, i8 4, i8 8, i8 12, i8 12, i8 28 }, align 1
@mv64xxx_i2c_algo = internal constant %struct.i2c_algorithm { ptr @mv64xxx_i2c_xfer, ptr null, ptr null, ptr null, ptr @mv64xxx_i2c_functionality, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"mv64xxx: Can't register intr handler irq%d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"mv64xxx: Can't add i2c adapter, rc: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"allwinner,sun4i-a10-i2c\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"allwinner,sun6i-a31-i2c\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"marvell,mv78230-i2c\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"marvell,mv78230-a0-i2c\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"mv64xxx: I2C bus locked, block: %d, time_left: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [83 x i8] c"mv64xxx_i2c_fsm: Ctlr Error -- state: 0x%x, status: 0x%x, addr: 0x%x, flags: 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"mv64xxx_i2c_do_action: Invalid action: %d\0A\00", align 1
@mv64xxx_i2c_regs_sun4i = internal global %struct.mv64xxx_i2c_regs { i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 24 }, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_mv64xxx_i2c_driver_exit, ptr @__initcall__kmod_i2c_mv64xxx__248_1076_mv64xxx_i2c_driver_init6, ptr @mv64xxx_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv64xxx_i2c_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv64xxx_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv64xxx_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %205, label %11

11:                                               ; preds = %7, %1
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 824, i32 noundef 3520) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %205, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %16 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 7
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %205

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23
  %22 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 12
  %23 = tail call i32 @strlcpy(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef 48) #10
  %24 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef nonnull @mv64xxx_i2c_probe.__key) #10
  %25 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 21
  store i32 0, ptr %25, align 8
  %26 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #10
  %27 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 18
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = icmp eq ptr %26, inttoptr (i32 -517 to ptr)
  br i1 %30, label %205, label %31

31:                                               ; preds = %29
  store ptr null, ptr %27, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  %34 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 19
  store ptr %33, ptr %34, align 8
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, inttoptr (i32 -517 to ptr)
  br i1 %37, label %205, label %38

38:                                               ; preds = %36
  store ptr null, ptr %34, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %41 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 2
  store i32 %40, ptr %41, align 8
  %42 = icmp slt i32 %40, 0
  br i1 %42, label %205, label %43

43:                                               ; preds = %39
  br i1 %6, label %56, label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %5, align 4
  %46 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 16
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mv64xxx_i2c_pdata, ptr %5, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 17
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.mv64xxx_i2c_pdata, ptr %5, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @__msecs_to_jiffies(i32 noundef %51) #10
  %53 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 7
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 24
  store i8 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(7) %55, ptr noundef nonnull align 1 dereferenceable(7) @mv64xxx_i2c_regs_mv64xxx, i32 7, i1 false)
  br label %152

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %152, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %61 = load ptr, ptr %27, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %147, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @clk_get_rate(ptr noundef nonnull %61) #10
  %65 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 100000, ptr %2, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = call i32 @of_device_is_compatible(ptr noundef nonnull %58, ptr noundef nonnull @.str.7) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = call i32 @of_device_is_compatible(ptr noundef nonnull %58, ptr noundef nonnull @.str.8) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 28
  %76 = load i8, ptr %75, align 1, !range !9
  %77 = icmp eq i8 %76, 0
  br label %80

78:                                               ; preds = %71, %68
  %79 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 28
  store i8 1, ptr %79, align 1
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i1 [ %77, %74 ], [ false, %78 ]
  %82 = load i32, ptr %2, align 4
  %83 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 16
  %84 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 17
  br label %85

85:                                               ; preds = %108, %80
  %86 = phi i32 [ 0, %80 ], [ %109, %108 ]
  %87 = phi i32 [ 2147483647, %80 ], [ %90, %108 ]
  %88 = shl i32 2, %86
  br label %93

89:                                               ; preds = %106, %93
  %90 = phi i32 [ %102, %106 ], [ %95, %93 ]
  %91 = add nuw nsw i32 %94, 1
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %108, label %93

93:                                               ; preds = %89, %85
  %94 = phi i32 [ 0, %85 ], [ %91, %89 ]
  %95 = phi i32 [ %87, %85 ], [ %90, %89 ]
  %96 = mul nuw nsw i32 %94, 10
  %97 = add nuw nsw i32 %96, 10
  %98 = shl i32 %97, %86
  %99 = mul i32 %97, %88
  %100 = select i1 %81, i32 %99, i32 %98
  %101 = sdiv i32 %64, %100
  %102 = sub i32 %82, %101
  %103 = icmp sgt i32 %102, -1
  %104 = icmp slt i32 %102, %95
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %89

106:                                              ; preds = %93
  store i32 %94, ptr %83, align 4
  store i32 %86, ptr %84, align 8
  %107 = icmp eq i32 %102, 0
  br i1 %107, label %113, label %89

108:                                              ; preds = %89
  %109 = add nuw nsw i32 %86, 1
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %85

111:                                              ; preds = %108
  %112 = icmp eq i32 %90, 2147483647
  br i1 %112, label %147, label %113

113:                                              ; preds = %111, %106
  %114 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %115 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 26
  store ptr %114, ptr %115, align 4
  %116 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %150, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 7
  store i32 100, ptr %118, align 4
  %119 = call ptr @of_match_device(ptr noundef nonnull @mv64xxx_i2c_of_match_table, ptr noundef %3) #10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %147, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 8
  %123 = getelementptr inbounds %struct.of_device_id, ptr %119, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(7) %122, ptr noundef align 1 dereferenceable(7) %124, i32 7, i1 false) #10
  %125 = call i32 @of_device_is_compatible(ptr noundef nonnull %58, ptr noundef nonnull @.str.9) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 24
  store i8 1, ptr %128, align 8
  %129 = load i32, ptr %2, align 4
  %130 = icmp ult i32 %129, 100001
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 25
  store i8 1, ptr %132, align 1
  br label %133

133:                                              ; preds = %131, %127, %121
  %134 = call i32 @of_device_is_compatible(ptr noundef nonnull %58, ptr noundef nonnull @.str.10) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 24
  store i8 0, ptr %137, align 8
  %138 = load i32, ptr %2, align 4
  %139 = icmp ult i32 %138, 100001
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 25
  store i8 1, ptr %141, align 1
  br label %142

142:                                              ; preds = %140, %136, %133
  %143 = call i32 @of_device_is_compatible(ptr noundef nonnull %58, ptr noundef nonnull @.str.8) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 27
  store i8 1, ptr %146, align 8
  br label %149

147:                                              ; preds = %117, %111, %60
  %148 = phi i32 [ -22, %111 ], [ -19, %60 ], [ -19, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %205

149:                                              ; preds = %145, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %152

150:                                              ; preds = %113
  %151 = ptrtoint ptr %114 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %205

152:                                              ; preds = %149, %56, %44
  %153 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 29
  %154 = call ptr @devm_pinctrl_get(ptr noundef %3) #10
  %155 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 29, i32 10
  store ptr %154, ptr %155, align 4
  %156 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = icmp eq ptr %154, inttoptr (i32 -517 to ptr)
  br i1 %158, label %205, label %163

159:                                              ; preds = %152
  %160 = icmp eq ptr %154, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 16
  store ptr %153, ptr %162, align 4
  br label %166

163:                                              ; preds = %157
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.11) #11
  %164 = load ptr, ptr %155, align 4
  %165 = icmp eq ptr %164, inttoptr (i32 -517 to ptr)
  br i1 %165, label %205, label %166

166:                                              ; preds = %163, %161, %159
  %167 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 9
  %168 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 9, i32 1
  store ptr %3, ptr %168, align 4
  %169 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 2
  store ptr @mv64xxx_i2c_algo, ptr %169, align 8
  store ptr null, ptr %21, align 8
  %170 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 1
  store i32 256, ptr %170, align 4
  %171 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 11
  store i32 %172, ptr %173, align 4
  %174 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 9, i32 25
  store ptr %175, ptr %176, align 8
  %177 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %177, align 8
  %178 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %12, i32 0, i32 23, i32 9, i32 8
  store ptr %12, ptr %178, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 1000) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #10
  call void @pm_runtime_enable(ptr noundef %3) #10
  %179 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %180 = load i16, ptr %179, align 8
  %181 = and i16 %180, 7
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %166
  %184 = call i32 @mv64xxx_i2c_runtime_resume(ptr noundef %3)
  br label %185

185:                                              ; preds = %183, %166
  %186 = load i32, ptr %41, align 8
  %187 = call i32 @request_threaded_irq(i32 noundef %186, ptr noundef nonnull @mv64xxx_i2c_intr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %12) #10
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = load i32, ptr %41, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.4, i32 noundef %190, i32 noundef %187) #11
  br label %198

191:                                              ; preds = %185
  %192 = call i32 @i2c_add_numbered_adapter(ptr noundef %21) #10
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %191
  %195 = sub i32 0, %192
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.5, i32 noundef %195) #11
  %196 = load i32, ptr %41, align 8
  %197 = call ptr @free_irq(i32 noundef %196, ptr noundef nonnull %12) #10
  br label %198

198:                                              ; preds = %194, %189
  %199 = phi i32 [ %187, %189 ], [ %192, %194 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #10
  %200 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %205, label %203

203:                                              ; preds = %198
  %204 = call i32 @mv64xxx_i2c_runtime_suspend(ptr noundef %3)
  br label %205

205:                                              ; preds = %203, %198, %191, %163, %157, %150, %147, %39, %36, %29, %18, %11, %7
  %206 = phi i32 [ %19, %18 ], [ -19, %7 ], [ -12, %11 ], [ -517, %29 ], [ -517, %36 ], [ %40, %39 ], [ %151, %150 ], [ -517, %163 ], [ 0, %191 ], [ %199, %203 ], [ %199, %198 ], [ %148, %147 ], [ -517, %157 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 23
  tail call void @i2c_del_adapter(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %3) #10
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #10
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %13, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @reset_control_assert(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %13, i32 0, i32 19
  %18 = load ptr, ptr %17, align 8
  tail call void @clk_disable(ptr noundef %18) #10
  tail call void @clk_unprepare(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %13, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #10
  tail call void @clk_unprepare(ptr noundef %20) #10
  br label %21

21:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv64xxx_i2c_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #10
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %8, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_assert(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %8, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %8, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 19
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %21

21:                                               ; preds = %20, %17, %12
  %22 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @reset_control_reset(ptr noundef %23) #10
  tail call fastcc void @mv64xxx_i2c_hw_init(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_intr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 24
  %7 = load i8, ptr %6, align 8, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %84, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 216
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %84, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 212
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 15
  br i1 %20, label %23, label %22

22:                                               ; preds = %15
  store i32 -5, ptr %21, align 8
  br label %77

23:                                               ; preds = %15
  store i32 0, ptr %21, align 8
  %24 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %77 [
    i32 1, label %26
    i32 2, label %49
  ]

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 200
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  store i32 %35, ptr %4, align 8
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 204
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %39 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr nonnull align 8 %4, i32 %44, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %45 = load ptr, ptr %1, align 8
  %46 = getelementptr %struct.i2c_msg, ptr %45, i32 1
  store ptr %46, ptr %1, align 8
  %47 = load i32, ptr %24, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %24, align 4
  br label %77

49:                                               ; preds = %23
  %50 = load ptr, ptr %1, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %49
  %56 = getelementptr %struct.i2c_msg, ptr %50, i32 1, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr i8, ptr %61, i32 200
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  store i32 %63, ptr %3, align 8
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr i8, ptr %64, i32 204
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %67 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %66, ptr %67, align 4
  %68 = getelementptr %struct.i2c_msg, ptr %50, i32 1, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr %struct.i2c_msg, ptr %50, i32 1, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr nonnull align 8 %3, i32 %72, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %73 = load ptr, ptr %1, align 8
  %74 = getelementptr %struct.i2c_msg, ptr %73, i32 2
  store ptr %74, ptr %1, align 8
  %75 = load i32, ptr %24, align 4
  %76 = add i32 %75, -2
  store i32 %76, ptr %24, align 4
  br label %77

77:                                               ; preds = %60, %55, %49, %32, %26, %23, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %78 = load ptr, ptr %10, align 4
  %79 = getelementptr i8, ptr %78, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %80 = load ptr, ptr %10, align 4
  %81 = getelementptr i8, ptr %80, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #10, !srcloc !16
  %82 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 14
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %83, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %84

84:                                               ; preds = %77, %9, %2
  %85 = phi i32 [ 0, %2 ], [ 1, %77 ], [ 0, %9 ]
  %86 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 7
  %87 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 8, i32 3
  %88 = load ptr, ptr %86, align 4
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %360, label %95

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 8, i32 4
  %97 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 3
  %98 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 4
  %99 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 15
  %100 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 22
  %101 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 11
  %102 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 5
  %103 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 6
  %104 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 12
  %105 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 13
  %106 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 23
  %107 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 23, i32 9
  %108 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 8, i32 2
  %109 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 14
  %110 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 25
  %111 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 20
  %112 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 10
  %113 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 9
  %114 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 1
  %115 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 27
  br label %116

116:                                              ; preds = %352, %95
  %117 = load ptr, ptr %86, align 4
  %118 = load i8, ptr %96, align 4
  %119 = zext i8 %118 to i32
  %120 = getelementptr i8, ptr %117, i32 %119
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %122 = load i32, ptr %97, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 8, ptr %98, align 8
  br label %333

125:                                              ; preds = %116
  %126 = add i32 %121, -8
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 29) #10
  switch i32 %127, label %183 [
    i32 0, label %130
    i32 1, label %130
    i32 2, label %131
    i32 25, label %137
    i32 4, label %137
    i32 7, label %156
    i32 27, label %162
    i32 9, label %128
    i32 10, label %181
    i32 3, label %182
    i32 5, label %182
    i32 8, label %182
  ]

128:                                              ; preds = %125
  %129 = load i32, ptr %101, align 8
  br label %166

130:                                              ; preds = %125, %125
  store i32 3, ptr %98, align 8
  store i32 4, ptr %97, align 4
  br label %247

131:                                              ; preds = %125
  %132 = load ptr, ptr %100, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %132, i32 0, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = and i16 %134, 16
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %258

137:                                              ; preds = %131, %125, %125
  %138 = load i32, ptr %101, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %102, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr %104, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143, %137
  %147 = load i32, ptr %105, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, ptr %102, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149, %146
  store i32 8, ptr %98, align 8
  store i32 1, ptr %97, align 4
  br label %333

153:                                              ; preds = %149
  store i32 2, ptr %98, align 8
  store i32 3, ptr %97, align 4
  br label %194

154:                                              ; preds = %143, %140
  store i32 5, ptr %98, align 8
  store i32 6, ptr %97, align 4
  %155 = add i32 %138, -1
  store i32 %155, ptr %101, align 8
  br label %270

156:                                              ; preds = %125
  %157 = load ptr, ptr %100, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %157, i32 0, i32 1
  %159 = load i16, ptr %158, align 2
  %160 = and i16 %159, 16
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %258

162:                                              ; preds = %156, %125
  %163 = load i32, ptr %101, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 8, ptr %98, align 8
  store i32 1, ptr %97, align 4
  br label %333

166:                                              ; preds = %162, %128
  %167 = phi i32 [ %129, %128 ], [ %163, %162 ]
  %168 = icmp eq i32 %121, 80
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = add i32 %167, -1
  store i32 %170, ptr %101, align 8
  br label %171

171:                                              ; preds = %169, %166
  %172 = phi i32 [ %170, %169 ], [ %167, %166 ]
  %173 = phi i32 [ 6, %169 ], [ 1, %166 ]
  store i32 %173, ptr %98, align 8
  store i32 7, ptr %97, align 4
  %174 = icmp eq i32 %172, 1
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %102, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %175, %171
  %179 = load i32, ptr %103, align 8
  %180 = and i32 %179, -5
  store i32 %180, ptr %103, align 8
  br label %192

181:                                              ; preds = %125
  store i32 7, ptr %98, align 8
  store i32 1, ptr %97, align 4
  br label %306

182:                                              ; preds = %125, %125, %125
  store i32 8, ptr %98, align 8
  store i32 1, ptr %97, align 4
  store i32 -6, ptr %99, align 8
  br label %333

183:                                              ; preds = %125
  %184 = load ptr, ptr %100, align 4
  %185 = load i16, ptr %184, align 4
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 0, i32 1
  %188 = load i16, ptr %187, align 2
  %189 = zext i16 %188 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.13, i32 noundef %122, i32 noundef %121, i32 noundef %186, i32 noundef %189) #11
  store i32 8, ptr %98, align 8
  tail call fastcc void @mv64xxx_i2c_hw_init(ptr noundef %1) #10
  %190 = tail call i32 @i2c_recover_bus(ptr noundef %106) #10
  store i32 -11, ptr %99, align 8
  %191 = load i32, ptr %98, align 8
  br label %192

192:                                              ; preds = %183, %178, %175
  %193 = phi i32 [ %173, %175 ], [ %173, %178 ], [ %191, %183 ]
  switch i32 %193, label %332 [
    i32 2, label %194
    i32 1, label %241
    i32 3, label %247
    i32 4, label %259
    i32 5, label %270
    i32 6, label %288
    i32 7, label %306
    i32 8, label %333
  ]

194:                                              ; preds = %192, %153
  %195 = load i32, ptr %114, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198, !prof !20

197:                                              ; preds = %194
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i2c/busses/i2c-mv64xxx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #10, !srcloc !21
  unreachable

198:                                              ; preds = %194
  %199 = load ptr, ptr %1, align 8
  %200 = getelementptr %struct.i2c_msg, ptr %199, i32 1
  store ptr %200, ptr %1, align 8
  %201 = add i32 %195, -1
  store i32 %201, ptr %114, align 4
  store ptr %200, ptr %100, align 4
  store i32 0, ptr %104, align 4
  %202 = getelementptr %struct.i2c_msg, ptr %199, i32 1, i32 2
  %203 = load i16, ptr %202, align 4
  %204 = zext i16 %203 to i32
  store i32 %204, ptr %101, align 8
  store i32 0, ptr %102, align 4
  store i32 0, ptr %99, align 8
  store i32 196, ptr %103, align 8
  %205 = getelementptr %struct.i2c_msg, ptr %199, i32 1, i32 1
  %206 = load i16, ptr %205, align 2
  %207 = and i16 %206, 1
  %208 = and i16 %206, 16
  %209 = icmp eq i16 %208, 0
  %210 = load i16, ptr %200, align 4
  br i1 %209, label %220, label %211

211:                                              ; preds = %198
  %212 = lshr i16 %210, 7
  %213 = and i16 %212, 6
  %214 = or i16 %207, %213
  %215 = or i16 %214, 240
  %216 = zext i16 %215 to i32
  store i32 %216, ptr %113, align 8
  %217 = load i16, ptr %200, align 4
  %218 = and i16 %217, 255
  %219 = zext i16 %218 to i32
  br label %225

220:                                              ; preds = %198
  %221 = shl i16 %210, 1
  %222 = and i16 %221, 254
  %223 = or i16 %222, %207
  %224 = zext i16 %223 to i32
  store i32 %224, ptr %113, align 8
  br label %225

225:                                              ; preds = %220, %211
  %226 = phi i32 [ 0, %220 ], [ %219, %211 ]
  store i32 %226, ptr %112, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %227 = load i32, ptr %103, align 8
  %228 = or i32 %227, 32
  %229 = load ptr, ptr %86, align 4
  %230 = load i8, ptr %87, align 1
  %231 = zext i8 %230 to i32
  %232 = getelementptr i8, ptr %229, i32 %231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %228) #10, !srcloc !16
  %233 = load i8, ptr %110, align 1, !range !9
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %225
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 1073740) #10
  br label %237

237:                                              ; preds = %235, %225
  %238 = load i32, ptr %114, align 4
  %239 = icmp eq i32 %238, 1
  %240 = zext i1 %239 to i32
  store i32 %240, ptr %105, align 8
  br label %342

241:                                              ; preds = %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %242 = load i32, ptr %103, align 8
  %243 = load ptr, ptr %86, align 4
  %244 = load i8, ptr %87, align 1
  %245 = zext i8 %244 to i32
  %246 = getelementptr i8, ptr %243, i32 %245
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %242) #10, !srcloc !16
  br label %342

247:                                              ; preds = %192, %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %248 = load i32, ptr %113, align 8
  %249 = load ptr, ptr %86, align 4
  %250 = load i8, ptr %108, align 2
  %251 = zext i8 %250 to i32
  %252 = getelementptr i8, ptr %249, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %248) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %253 = load i32, ptr %103, align 8
  %254 = load ptr, ptr %86, align 4
  %255 = load i8, ptr %87, align 1
  %256 = zext i8 %255 to i32
  %257 = getelementptr i8, ptr %254, i32 %256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %253) #10, !srcloc !16
  br label %342

258:                                              ; preds = %156, %131
  store i32 4, ptr %98, align 8
  store i32 5, ptr %97, align 4
  br label %259

259:                                              ; preds = %258, %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !26
  tail call void @arm_heavy_mb() #10
  %260 = load i32, ptr %112, align 4
  %261 = load ptr, ptr %86, align 4
  %262 = load i8, ptr %108, align 2
  %263 = zext i8 %262 to i32
  %264 = getelementptr i8, ptr %261, i32 %263
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %260) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %265 = load i32, ptr %103, align 8
  %266 = load ptr, ptr %86, align 4
  %267 = load i8, ptr %87, align 1
  %268 = zext i8 %267 to i32
  %269 = getelementptr i8, ptr %266, i32 %268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %265) #10, !srcloc !16
  br label %342

270:                                              ; preds = %192, %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %271 = load ptr, ptr %100, align 4
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %271, i32 0, i32 3
  %273 = load ptr, ptr %272, align 4
  %274 = load i32, ptr %104, align 4
  %275 = add i32 %274, 1
  store i32 %275, ptr %104, align 4
  %276 = getelementptr i8, ptr %273, i32 %274
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = load ptr, ptr %86, align 4
  %280 = load i8, ptr %108, align 2
  %281 = zext i8 %280 to i32
  %282 = getelementptr i8, ptr %279, i32 %281
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %278) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %283 = load i32, ptr %103, align 8
  %284 = load ptr, ptr %86, align 4
  %285 = load i8, ptr %87, align 1
  %286 = zext i8 %285 to i32
  %287 = getelementptr i8, ptr %284, i32 %286
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %283) #10, !srcloc !16
  br label %342

288:                                              ; preds = %192
  %289 = load ptr, ptr %86, align 4
  %290 = load i8, ptr %108, align 2
  %291 = zext i8 %290 to i32
  %292 = getelementptr i8, ptr %289, i32 %291
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !30
  %294 = trunc i32 %293 to i8
  %295 = load ptr, ptr %100, align 4
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %295, i32 0, i32 3
  %297 = load ptr, ptr %296, align 4
  %298 = load i32, ptr %104, align 4
  %299 = add i32 %298, 1
  store i32 %299, ptr %104, align 4
  %300 = getelementptr i8, ptr %297, i32 %298
  store i8 %294, ptr %300, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %301 = load i32, ptr %103, align 8
  %302 = load ptr, ptr %86, align 4
  %303 = load i8, ptr %87, align 1
  %304 = zext i8 %303 to i32
  %305 = getelementptr i8, ptr %302, i32 %304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 %301) #10, !srcloc !16
  br label %342

306:                                              ; preds = %192, %181
  %307 = load ptr, ptr %86, align 4
  %308 = load i8, ptr %108, align 2
  %309 = zext i8 %308 to i32
  %310 = getelementptr i8, ptr %307, i32 %309
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  %312 = trunc i32 %311 to i8
  %313 = load ptr, ptr %100, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %313, i32 0, i32 3
  %315 = load ptr, ptr %314, align 4
  %316 = load i32, ptr %104, align 4
  %317 = add i32 %316, 1
  store i32 %317, ptr %104, align 4
  %318 = getelementptr i8, ptr %315, i32 %316
  store i8 %312, ptr %318, align 1
  %319 = load i32, ptr %103, align 8
  %320 = and i32 %319, -129
  store i32 %320, ptr %103, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %321 = load i32, ptr %103, align 8
  %322 = or i32 %321, 16
  %323 = load ptr, ptr %86, align 4
  %324 = load i8, ptr %87, align 1
  %325 = zext i8 %324 to i32
  %326 = getelementptr i8, ptr %323, i32 %325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %322) #10, !srcloc !16
  store i32 0, ptr %109, align 4
  %327 = load i8, ptr %110, align 1, !range !9
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %306
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %330(i32 noundef 1073740) #10
  br label %331

331:                                              ; preds = %329, %306
  tail call void @__wake_up(ptr noundef %111, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %342

332:                                              ; preds = %192
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.14, i32 noundef %193) #11
  store i32 -5, ptr %99, align 8
  br label %333

333:                                              ; preds = %332, %192, %182, %165, %152, %124
  %334 = load i32, ptr %103, align 8
  %335 = and i32 %334, -129
  store i32 %335, ptr %103, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  %336 = load i32, ptr %103, align 8
  %337 = or i32 %336, 16
  %338 = load ptr, ptr %86, align 4
  %339 = load i8, ptr %87, align 1
  %340 = zext i8 %339 to i32
  %341 = getelementptr i8, ptr %338, i32 %340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 %337) #10, !srcloc !16
  store i32 0, ptr %109, align 4
  tail call void @__wake_up(ptr noundef %111, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %342

342:                                              ; preds = %333, %331, %288, %270, %259, %247, %241, %237
  %343 = load i8, ptr %115, align 8, !range !9
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %342
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !35
  tail call void @arm_heavy_mb() #10
  %346 = load i32, ptr %103, align 8
  %347 = or i32 %346, 8
  %348 = load ptr, ptr %86, align 4
  %349 = load i8, ptr %87, align 1
  %350 = zext i8 %349 to i32
  %351 = getelementptr i8, ptr %348, i32 %350
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 %347) #10, !srcloc !16
  br label %352

352:                                              ; preds = %345, %342
  %353 = load ptr, ptr %86, align 4
  %354 = load i8, ptr %87, align 1
  %355 = zext i8 %354 to i32
  %356 = getelementptr i8, ptr %353, i32 %355
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %358 = and i32 %357, 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %116

360:                                              ; preds = %352, %84
  %361 = phi i32 [ %85, %84 ], [ 1, %352 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  %362 = load i16, ptr %5, align 4
  %363 = add i16 %362, 1
  store i16 %363, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !37
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  ret i32 %361
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 26
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  tail call void @clk_disable(ptr noundef %8) #10
  tail call void @clk_unprepare(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #10
  tail call void @clk_unprepare(ptr noundef %10) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !41
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #10, !srcloc !42
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %194, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !43
  br label %194

17:                                               ; preds = %3
  %18 = load ptr, ptr %7, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !44

20:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i2c/busses/i2c-mv64xxx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 729, 0\0A.popsection", ""() #10, !srcloc !45
  unreachable

21:                                               ; preds = %17
  store ptr %1, ptr %7, align 8
  %22 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 1
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 24
  %24 = load i8, ptr %23, align 8, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %135, label %26

26:                                               ; preds = %21
  switch i32 %2, label %135 [
    i32 1, label %27
    i32 2, label %32
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, -1
  %31 = icmp ult i16 %30, 8
  br i1 %31, label %52, label %135

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, -1
  %36 = icmp ult i16 %35, 8
  br i1 %36, label %37, label %135

37:                                               ; preds = %32
  %38 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 2
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, -1
  %41 = icmp ult i16 %40, 8
  br i1 %41, label %42, label %135

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %135

47:                                               ; preds = %42
  %48 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %135, label %90

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 21
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #10
  %55 = load i16, ptr %1, align 4
  %56 = zext i16 %55 to i32
  %57 = shl nuw nsw i32 %56, 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = and i16 %59, 16
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i32 524288, i32 528384
  %63 = or i32 %62, %57
  %64 = and i16 %59, 1
  %65 = icmp eq i16 %64, 0
  %66 = load i16, ptr %28, align 4
  %67 = zext i16 %66 to i32
  br i1 %65, label %68, label %86

68:                                               ; preds = %52
  %69 = shl nuw nsw i32 %67, 13
  %70 = add nsw i32 %69, -8191
  %71 = or i32 %70, %63
  %72 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store i64 0, ptr %5, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 2
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %5, ptr align 1 %74, i32 %77, i1 false) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %78 = load i32, ptr %5, align 8
  %79 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %78) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %82 = getelementptr inbounds i8, ptr %5, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr i8, ptr %84, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #10, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %126

86:                                               ; preds = %52
  %87 = shl nuw i32 %67, 16
  %88 = add i32 %87, -65534
  %89 = or i32 %88, %63
  br label %126

90:                                               ; preds = %47
  %91 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 21
  %92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %91) #10
  %93 = load i16, ptr %1, align 4
  %94 = zext i16 %93 to i32
  %95 = shl nuw nsw i32 %94, 2
  %96 = load i16, ptr %43, align 2
  %97 = and i16 %96, 16
  %98 = icmp eq i16 %97, 0
  %99 = select i1 %98, i32 524288, i32 528384
  %100 = load i16, ptr %33, align 4
  %101 = zext i16 %100 to i32
  %102 = load i16, ptr %38, align 4
  %103 = zext i16 %102 to i32
  %104 = shl nuw nsw i32 %101, 13
  %105 = add nsw i32 %104, -8192
  %106 = shl nuw i32 %103, 16
  %107 = add i32 %106, -65536
  %108 = or i32 %95, %99
  %109 = or i32 %108, %105
  %110 = or i32 %109, %107
  %111 = or i32 %110, 1048579
  %112 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 0, ptr %4, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %112, i32 0, i32 2
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %4, ptr align 1 %114, i32 %117, i1 false) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %118 = load i32, ptr %4, align 8
  %119 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 7
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %118) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %122 = getelementptr inbounds i8, ptr %4, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %119, align 4
  %125 = getelementptr i8, ptr %124, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #10, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %126

126:                                              ; preds = %90, %86, %68
  %127 = phi i32 [ %54, %86 ], [ %92, %90 ], [ %54, %68 ]
  %128 = phi ptr [ %53, %86 ], [ %91, %90 ], [ %53, %68 ]
  %129 = phi i32 [ %89, %86 ], [ %111, %90 ], [ %71, %68 ]
  %130 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 14
  store i32 1, ptr %130, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %131 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 7
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %129) #10, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %128, i32 noundef %127) #10
  tail call fastcc void @mv64xxx_i2c_wait_for_completion(ptr noundef %7) #10
  %134 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 15
  br label %186

135:                                              ; preds = %47, %42, %37, %32, %27, %26, %21
  %136 = icmp eq i32 %2, 1
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 21
  %139 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %138) #10
  %140 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 3
  store i32 2, ptr %140, align 4
  %141 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 13
  store i32 %137, ptr %141, align 8
  %142 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 14
  store i32 1, ptr %142, align 4
  %143 = load ptr, ptr %7, align 8
  %144 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 22
  store ptr %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 12
  store i32 0, ptr %145, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 2
  %147 = load i16, ptr %146, align 4
  %148 = zext i16 %147 to i32
  %149 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 11
  store i32 %148, ptr %149, align 8
  %150 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 5
  store i32 0, ptr %150, align 4
  %151 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 15
  store i32 0, ptr %151, align 8
  %152 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 6
  store i32 196, ptr %152, align 8
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 1
  %154 = load i16, ptr %153, align 2
  %155 = and i16 %154, 1
  %156 = and i16 %154, 16
  %157 = icmp eq i16 %156, 0
  %158 = load i16, ptr %143, align 4
  br i1 %157, label %169, label %159

159:                                              ; preds = %135
  %160 = lshr i16 %158, 7
  %161 = and i16 %160, 6
  %162 = or i16 %155, %161
  %163 = or i16 %162, 240
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 9
  store i32 %164, ptr %165, align 8
  %166 = load i16, ptr %143, align 4
  %167 = and i16 %166, 255
  %168 = zext i16 %167 to i32
  br label %175

169:                                              ; preds = %135
  %170 = shl i16 %158, 1
  %171 = and i16 %170, 254
  %172 = or i16 %171, %155
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 9
  store i32 %173, ptr %174, align 8
  br label %175

175:                                              ; preds = %169, %159
  %176 = phi i32 [ 0, %169 ], [ %168, %159 ]
  %177 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 10
  store i32 %176, ptr %177, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %178 = load i32, ptr %152, align 8
  %179 = or i32 %178, 32
  %180 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 7
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 8, i32 3
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = getelementptr i8, ptr %181, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %179) #10, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %138, i32 noundef %139) #10
  tail call fastcc void @mv64xxx_i2c_wait_for_completion(ptr noundef %7) #10
  br label %186

186:                                              ; preds = %175, %126
  %187 = phi ptr [ %134, %126 ], [ %151, %175 ]
  %188 = load i32, ptr %187, align 8
  %189 = icmp slt i32 %188, 0
  %190 = select i1 %189, i32 %188, i32 %2
  store i32 0, ptr %22, align 4
  store ptr null, ptr %7, align 8
  %191 = tail call i64 @ktime_get_mono_fast_ns() #10
  %192 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 11, i32 22
  store volatile i64 %191, ptr %192, align 8
  %193 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #10
  br label %194

194:                                              ; preds = %186, %16, %11
  %195 = phi i32 [ %190, %186 ], [ %9, %11 ], [ %9, %16 ]
  ret i32 %195
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mv64xxx_i2c_functionality(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592715
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv64xxx_i2c_wait_for_completion(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 23
  %5 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 23, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = icmp ne i32 %6, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = select i1 %12, i32 %6, i32 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %10, i1 true, i1 %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #10
  %17 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 20
  %18 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2) #10
  %19 = load i32, ptr %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = select i1 %20, i1 true, i1 %11
  %23 = select i1 %22, i32 %6, i32 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %26, %16
  %27 = phi i32 [ %35, %26 ], [ %23, %16 ]
  %28 = call i32 @schedule_timeout(i32 noundef %27) #10
  %29 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2) #10
  %30 = load i32, ptr %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = icmp ne i32 %28, 0
  %34 = select i1 %31, i1 true, i1 %33
  %35 = select i1 %34, i32 %28, i32 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %32, i1 true, i1 %36
  br i1 %37, label %38, label %26

38:                                               ; preds = %26, %16
  %39 = phi i32 [ %23, %16 ], [ %35, %26 ]
  call void @finish_wait(ptr noundef %17, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %40

40:                                               ; preds = %38, %1
  %41 = phi i32 [ %13, %1 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 21
  %43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #10
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = icmp slt i32 %41, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %45, %40
  %48 = phi i32 [ -110, %40 ], [ %41, %45 ]
  %49 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 15
  store i32 %48, ptr %49, align 8
  %50 = load i32, ptr %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %97, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 5
  store i32 1, ptr %53, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #10
  %54 = load i32, ptr %5, align 4
  %55 = load i32, ptr %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = icmp ne i32 %54, 0
  %59 = select i1 %56, i1 true, i1 %58
  %60 = select i1 %59, i32 %54, i32 1
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %57, i1 true, i1 %61
  br i1 %62, label %87, label %63

63:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #10
  %64 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 20
  %65 = call i32 @prepare_to_wait_event(ptr noundef %64, ptr noundef nonnull %3, i32 noundef 2) #10
  %66 = load i32, ptr %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = select i1 %67, i1 true, i1 %58
  %70 = select i1 %69, i32 %54, i32 1
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %68, i1 true, i1 %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %73, %63
  %74 = phi i32 [ %82, %73 ], [ %70, %63 ]
  %75 = call i32 @schedule_timeout(i32 noundef %74) #10
  %76 = call i32 @prepare_to_wait_event(ptr noundef %64, ptr noundef nonnull %3, i32 noundef 2) #10
  %77 = load i32, ptr %7, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = icmp ne i32 %75, 0
  %81 = select i1 %78, i1 true, i1 %80
  %82 = select i1 %81, i32 %75, i32 1
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %79, i1 true, i1 %83
  br i1 %84, label %85, label %73

85:                                               ; preds = %73, %63
  %86 = phi i32 [ %70, %63 ], [ %82, %73 ]
  call void @finish_wait(ptr noundef %64, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %87

87:                                               ; preds = %85, %52
  %88 = phi i32 [ %60, %52 ], [ %86, %85 ]
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, ptr %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 3
  store i32 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 23, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.12, i32 noundef %91, i32 noundef %88) #11
  call fastcc void @mv64xxx_i2c_hw_init(ptr noundef %0)
  %96 = call i32 @i2c_recover_bus(ptr noundef %4) #10
  br label %98

97:                                               ; preds = %47, %45
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #10
  br label %98

98:                                               ; preds = %97, %93, %90, %87
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv64xxx_i2c_hw_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 24
  %3 = load i8, ptr %2, align 8, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %6 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !16
  br label %15

15:                                               ; preds = %5, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %16 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 8
  %19 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 8, i32 6
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %17, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !54
  tail call void @arm_heavy_mb() #10
  %23 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = and i32 %25, 120
  %27 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 17
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 7
  %30 = or i32 %26, %29
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 8, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %31, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %36 = load ptr, ptr %16, align 4
  %37 = load i8, ptr %18, align 8
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 8, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 8, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 80) #10, !srcloc !16
  %50 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 25
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %15
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 1073740) #10
  br label %55

55:                                               ; preds = %53, %15
  %56 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %0, i32 0, i32 3
  store i32 1, ptr %56, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i8 0, i8 2}
!10 = !{i64 5375116}
!11 = !{i64 2154246316}
!12 = !{i64 2154246679}
!13 = !{i64 2154245590}
!14 = !{i64 2154245953}
!15 = !{i64 2154246980}
!16 = !{i64 5374698}
!17 = !{i64 2154247309}
!18 = !{i64 2154247997}
!19 = !{i64 2154248509}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2154236774, i64 2154237271, i64 2154236811, i64 2154236867, i64 2154236901, i64 2154236925, i64 2154236966, i64 2154236987, i64 2154237015, i64 2154237049}
!22 = !{i64 2154236165}
!23 = !{i64 2154238266}
!24 = !{i64 2154238687}
!25 = !{i64 2154239104}
!26 = !{i64 2154239525}
!27 = !{i64 2154239942}
!28 = !{i64 2154240389}
!29 = !{i64 2154240858}
!30 = !{i64 2154241476}
!31 = !{i64 2154241710}
!32 = !{i64 2154242328}
!33 = !{i64 2154242756}
!34 = !{i64 2154244851}
!35 = !{i64 2154248855}
!36 = !{i64 2148952407}
!37 = !{i64 2148948231}
!38 = !{i64 2148948306, i64 2148948333, i64 2148948380, i64 2148948402, i64 2148948430, i64 2148948450}
!39 = !{i64 2148975410}
!40 = !{i64 2147940146}
!41 = !{i64 438456, i64 2147928427, i64 2147928453, i64 2147928500, i64 2147928522, i64 2147928550, i64 2147928570}
!42 = !{i64 425025, i64 425050, i64 425072, i64 425088, i64 425100, i64 425120, i64 425144, i64 425160, i64 425172}
!43 = !{i64 2147940272}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2154257575, i64 2154258072, i64 2154257612, i64 2154257668, i64 2154257702, i64 2154257726, i64 2154257767, i64 2154257788, i64 2154257816, i64 2154257850}
!46 = !{i64 2154254668}
!47 = !{i64 2154255012}
!48 = !{i64 2154256335}
!49 = !{i64 2154230352}
!50 = !{i64 2154230681}
!51 = !{i64 2154231010}
!52 = !{i64 2154231339}
!53 = !{i64 2154231691}
!54 = !{i64 2154232190}
!55 = !{i64 2154232677}
!56 = !{i64 2154233049}
!57 = !{i64 2154233644}
