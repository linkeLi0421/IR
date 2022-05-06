; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-designware-platdrv.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-platdrv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.dw_i2c_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.i2c_timings, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, %struct.i2c_bus_recovery_info, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__UNIQUE_ID_alias248 = internal constant [54 x i8] c"i2c_designware_platform.alias=platform:i2c_designware\00", section ".modinfo", align 1
@__initcall__kmod_i2c_designware_platform__249_429_dw_i2c_init_driver4 = internal global ptr @dw_i2c_init_driver, section ".initcall4.init", align 4
@dw_i2c_driver = internal global %struct.platform_driver { ptr @dw_i2c_plat_probe, ptr @dw_i2c_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dw_i2c_exit_driver = internal global ptr @dw_i2c_exit_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [64 x i8] c"i2c_designware_platform.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [72 x i8] c"i2c_designware_platform.description=Synopsys DesignWare I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [72 x i8] c"i2c_designware_platform.file=drivers/i2c/busses/i2c-designware-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [36 x i8] c"i2c_designware_platform.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"i2c_designware\00", align 1
@dw_i2c_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,designware-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,ocelot-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 256 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-sys-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 512 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@dw_i2c_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr @dw_i2c_plat_prepare, ptr @dw_i2c_plat_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@dw_i2c_hwmon_class_dmi = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.3, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Qtechnology\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"QT5222\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"drivers/i2c/busses/i2c-designware-platdrv.c\00", align 1
@bt1_i2c_cfg = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @bt1_i2c_read, ptr @bt1_i2c_write, ptr null, i8 1, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Qtechnology QT5222\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Wrong operation mode: %d\0A\00", align 1
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_dw_i2c_exit_driver, ptr @__initcall__kmod_i2c_designware_platform__249_429_dw_i2c_init_driver4, ptr @dw_i2c_exit_driver], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_i2c_init_driver() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_i2c_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dw_i2c_exit_driver() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %149, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 936, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %149, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @device_get_match_data(ptr noundef %7) #7
  %12 = ptrtoint ptr %11 to i32
  %13 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 24
  store i32 %12, ptr %13, align 4
  store ptr %7, ptr %8, align 8
  %14 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 23
  store i32 %4, ptr %14, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %15, align 8
  %16 = and i32 %12, 3840
  %17 = icmp eq i32 %16, 512
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @syscon_node_to_regmap(ptr noundef %22) #7
  %24 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 2
  store ptr %23, ptr %24, align 8
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %8, align 8
  %28 = tail call ptr @__devm_regmap_init(ptr noundef %27, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull @bt1_i2c_cfg, ptr noundef null, ptr noundef null) #7
  %29 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %35, label %39

31:                                               ; preds = %10
  %32 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %26, %18
  %36 = phi ptr [ %32, %31 ], [ %28, %26 ], [ %23, %18 ]
  %37 = ptrtoint ptr %36 to i32
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %149

39:                                               ; preds = %35, %31, %26
  %40 = tail call ptr @__devm_reset_control_get(ptr noundef %7, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %41 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 8
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %149

45:                                               ; preds = %39
  %46 = tail call i32 @reset_control_deassert(ptr noundef %40) #7
  %47 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 32
  tail call void @i2c_parse_fw_timings(ptr noundef %7, ptr noundef %47, i1 noundef zeroext false) #7
  tail call void @i2c_dw_adjust_bus_speed(ptr noundef nonnull %8) #7
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %15, align 8
  %53 = getelementptr inbounds %struct.dw_i2c_dev, ptr %52, i32 0, i32 24
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 3840
  %56 = icmp eq i32 %55, 256
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #7
  %59 = getelementptr inbounds %struct.dw_i2c_dev, ptr %52, i32 0, i32 4
  store ptr %58, ptr %59, align 8
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.dw_i2c_dev, ptr %52, i32 0, i32 48
  store ptr @mscc_twi_set_sda_hold_time, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %57, %51, %45
  %64 = tail call i32 @i2c_dw_validate_speed(ptr noundef nonnull %8) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %145

66:                                               ; preds = %63
  %67 = load ptr, ptr %8, align 8
  %68 = tail call zeroext i1 @i2c_detect_slave_mode(ptr noundef %67) #7
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @i2c_dw_configure_master(ptr noundef nonnull %8) #7
  br label %70

70:                                               ; preds = %69, %66
  %71 = tail call ptr @devm_clk_get_optional(ptr noundef %7, ptr noundef nonnull @.str.1) #7
  %72 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 7
  store ptr %71, ptr %72, align 8
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = ptrtoint ptr %71 to i32
  br label %145

76:                                               ; preds = %70
  %77 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef null) #7
  %78 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 6
  store ptr %77, ptr %78, align 4
  %79 = tail call i32 @i2c_dw_prepare_clk(ptr noundef nonnull %8, i1 noundef zeroext true) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 10
  store ptr @i2c_dw_get_clk_rate_khz, ptr %82, align 4
  %83 = load ptr, ptr %78, align 4
  %84 = tail call i32 @clk_get_rate(ptr noundef %83) #7
  %85 = udiv i32 %84, 1000
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 33
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 32, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %90
  %95 = zext i32 %92 to i64
  %96 = mul nuw nsw i64 %95, %86
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = add nuw nsw i64 %96, 500000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %100 = call i64 @div_s64_rem(i64 noundef %99, i32 noundef 1000000, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %101 = trunc i64 %100 to i32
  br label %105

102:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %103 = call i64 @div_s64_rem(i64 noundef -500000, i32 noundef 1000000, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i32 [ %104, %102 ], [ %101, %98 ]
  store i32 %106, ptr %87, align 8
  br label %107

107:                                              ; preds = %105, %90, %81, %76
  %108 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 25
  store ptr null, ptr %108, align 8
  %109 = call i32 @dmi_check_system(ptr noundef nonnull @dw_i2c_hwmon_class_dmi) #7
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 256, i32 1
  %112 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 25, i32 1
  store i32 %111, ptr %112, align 4
  %113 = load ptr, ptr %48, align 8
  %114 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 25, i32 9, i32 25
  store ptr %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 25, i32 11
  store i32 -1, ptr %115, align 4
  %116 = load i32, ptr %13, align 4
  %117 = and i32 %116, 2
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 14, i32 10
  %120 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 2
  store i32 %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %122 = load i16, ptr %121, align 4
  %123 = and i16 %122, 8
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %107
  %126 = or i16 %122, 2
  store i16 %126, ptr %121, align 4
  br label %127

127:                                              ; preds = %125, %107
  %128 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %129 = load i16, ptr %128, align 8
  %130 = and i16 %129, 7
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %133, !prof !9

132:                                              ; preds = %127
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 299, i32 noundef 9, ptr noundef null) #7
  br label %133

133:                                              ; preds = %132, %127
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %7, i32 noundef 1000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %7, i1 noundef zeroext true) #7
  %134 = call i32 @__pm_runtime_set_status(ptr noundef %7, i32 noundef 0) #7
  %135 = getelementptr inbounds %struct.dw_i2c_dev, ptr %8, i32 0, i32 44
  %136 = load i8, ptr %135, align 4, !range !10
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #7, !srcloc !11
  %140 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #7, !srcloc !12
  br label %141

141:                                              ; preds = %138, %133
  call void @pm_runtime_enable(ptr noundef %7) #7
  %142 = call fastcc i32 @i2c_dw_probe(ptr noundef nonnull %8)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  call fastcc void @dw_i2c_plat_pm_cleanup(ptr noundef nonnull %8)
  br label %145

145:                                              ; preds = %144, %74, %63
  %146 = phi i32 [ %64, %63 ], [ %75, %74 ], [ %142, %144 ]
  %147 = load ptr, ptr %41, align 4
  %148 = call i32 @reset_control_assert(ptr noundef %147) #7
  br label %149

149:                                              ; preds = %145, %141, %43, %35, %6, %1
  %150 = phi i32 [ %44, %43 ], [ %146, %145 ], [ %4, %1 ], [ -12, %6 ], [ %37, %35 ], [ 0, %141 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %6 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 25
  tail call void @i2c_del_adapter(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 45
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef %3) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext false) #7
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #7
  %10 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #7
  %11 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 44
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #7, !srcloc !11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 -1, ptr elementtype(i32) %16) #7, !srcloc !14
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  br label %21

21:                                               ; preds = %20, %14, %1
  %22 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @reset_control_assert(ptr noundef %23) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_adjust_bus_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_validate_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_prepare_clk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_dw_get_clk_rate_khz(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #7
  %5 = udiv i32 %4, 1000
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_probe(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 49
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %6 [
    i32 1, label %8
    i32 0, label %4
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @i2c_dw_probe_master(ptr noundef %0) #7
  br label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %3) #8
  br label %8

8:                                                ; preds = %6, %4, %1
  %9 = phi i32 [ -22, %6 ], [ %5, %4 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_i2c_plat_pm_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #7
  %3 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 44
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #7, !srcloc !14
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  br label %13

13:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt1_i2c_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %1, 255
  %7 = or i32 %6, -2147483648
  %8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 256, i32 noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8
  %12 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef 264, ptr noundef %2) #7
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ %8, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt1_i2c_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 260, i32 noundef %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8
  %10 = and i32 %1, 255
  %11 = or i32 %10, -2147483392
  %12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 256, i32 noundef %11) #7
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mscc_twi_set_sda_hold_time(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 8
  %4 = shl i32 %3, 1
  %5 = or i32 %4, 1
  %6 = getelementptr inbounds %struct.dw_i2c_dev, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i2c_detect_slave_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_configure_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_probe_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dw_i2c_plat_prepare(ptr nocapture noundef readnone %0) #6 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_i2c_plat_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load i32, ptr @pm_suspend_global_flags, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 1) #7
  br label %16

16:                                               ; preds = %14, %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 51
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 44
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 45
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef %3) #7
  %11 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %3, i1 noundef zeroext false) #7
  br label %12

12:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 44
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %3, i1 noundef zeroext true) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 47
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %3) #7
  %13 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 51
  store i8 0, ptr %13, align 8
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 512654, i64 2148002625, i64 2148002651, i64 2148002698, i64 2148002720, i64 2148002748, i64 2148002768}
!12 = !{i64 2148014837, i64 2148014863, i64 2148014892, i64 2148014926, i64 2148014957, i64 2148014980}
!13 = !{i64 2148014344}
!14 = !{i64 499223, i64 499248, i64 499270, i64 499286, i64 499298, i64 499318, i64 499342, i64 499358, i64 499370}
!15 = !{i64 2148014470}
!16 = !{i64 2154326478}
!17 = !{i64 5459038}
