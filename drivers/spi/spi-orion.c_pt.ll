; ModuleID = '/llk/IR/drivers/spi/spi-orion.c_pt.bc'
source_filename = "../drivers/spi/spi-orion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.orion_spi_dev = type { i32, i32, i32, i32, i32, i8 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.orion_spi = type { ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.orion_child_options] }
%struct.orion_child_options = type { %struct.orion_direct_acc }
%struct.orion_direct_acc = type { ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_alias229 = internal constant [35 x i8] c"spi_orion.alias=platform:orion_spi\00", section ".modinfo", align 1
@__initcall__kmod_spi_orion__230_863_orion_spi_driver_init6 = internal global ptr @orion_spi_driver_init, section ".initcall6.init", align 4
@orion_spi_driver = internal global %struct.platform_driver { ptr @orion_spi_probe, ptr @orion_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_spi_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orion_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_orion_spi_driver_exit = internal global ptr @orion_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [39 x i8] c"spi_orion.description=Orion SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [51 x i8] c"spi_orion.author=Shadi Ammouri <shadi@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [37 x i8] c"spi_orion.file=drivers/spi/spi-orion\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [22 x i8] c"spi_orion.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"orion_spi\00", align 1
@orion_spi_of_match_table = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_375_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_380_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-390-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_spi_dev_data }, %struct.of_device_id zeroinitializer], align 4
@orion_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orion_spi_runtime_suspend, ptr @orion_spi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@orion_spi_dev_data = internal constant %struct.orion_spi_dev { i32 0, i32 0, i32 4, i32 30, i32 31, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"marvell,armada-370-spi\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%pOF has no valid 'reg' property (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"CS%d configured for direct access\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"TXS timed out\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"SPI_CS_WORD is only supported for 8 bit words\0A\00", align 1
@armada_370_spi_dev_data = internal constant %struct.orion_spi_dev { i32 1, i32 50000000, i32 4, i32 1920, i32 223, i8 0 }, align 4
@armada_375_spi_dev_data = internal constant %struct.orion_spi_dev { i32 1, i32 0, i32 15, i32 1920, i32 223, i8 0 }, align 4
@armada_380_spi_dev_data = internal constant %struct.orion_spi_dev { i32 1, i32 50000000, i32 0, i32 1920, i32 223, i8 1 }, align 4
@armada_xp_spi_dev_data = internal constant %struct.orion_spi_dev { i32 1, i32 50000000, i32 0, i32 1920, i32 223, i8 0 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_orion_spi_driver_exit, ptr @__initcall__kmod_spi_orion__230_863_orion_spi_driver_init6, ptr @orion_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @orion_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @orion_spi_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @orion_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 88, i1 noundef zeroext false) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = trunc i32 %9 to i16
  %13 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 2
  store i16 %12, ptr %13, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 4
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 2
  store i16 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %26

26:                                               ; preds = %25, %14
  %27 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 5
  store i32 4107, ptr %27, align 8
  %28 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 50
  store ptr @orion_spi_set_cs, ptr %28, align 8
  %29 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 51
  store ptr @orion_spi_transfer_one, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 3
  store i16 8, ptr %30, align 2
  %31 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 20
  store ptr @orion_spi_setup, ptr %31, align 4
  %32 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 7
  store i32 32896, ptr %32, align 8
  %33 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 36
  store i8 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 56
  store i8 1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 10
  store i16 32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %36, align 8
  %37 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  store ptr %5, ptr %38, align 4
  %39 = getelementptr inbounds %struct.orion_spi, ptr %38, i32 0, i32 5
  store ptr %4, ptr %39, align 4
  %40 = call ptr @device_get_match_data(ptr noundef %4) #6
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr @orion_spi_dev_data, ptr %40
  %43 = getelementptr inbounds %struct.orion_spi, ptr %38, i32 0, i32 4
  store ptr %42, ptr %43, align 4
  %44 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #6
  %45 = getelementptr inbounds %struct.orion_spi, ptr %38, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = ptrtoint ptr %44 to i32
  br label %154

49:                                               ; preds = %26
  %50 = call i32 @clk_prepare(ptr noundef %44) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %154

52:                                               ; preds = %49
  %53 = call i32 @clk_enable(ptr noundef %44) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @clk_unprepare(ptr noundef %44) #6
  br label %154

56:                                               ; preds = %52
  %57 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  %58 = getelementptr inbounds %struct.orion_spi, ptr %38, i32 0, i32 3
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, inttoptr (i32 -517 to ptr)
  br i1 %59, label %151, label %60

60:                                               ; preds = %56
  %61 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = call i32 @clk_prepare(ptr noundef %57) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = call i32 @clk_enable(ptr noundef %57) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @clk_unprepare(ptr noundef %57) #6
  br label %69

69:                                               ; preds = %68, %65, %62, %60
  %70 = load ptr, ptr %45, align 4
  %71 = call i32 @clk_get_rate(ptr noundef %70) #6
  %72 = load ptr, ptr %15, align 8
  %73 = call i32 @of_device_is_compatible(ptr noundef %72, ptr noundef nonnull @.str.3) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.orion_spi_dev, ptr %42, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.orion_spi_dev, ptr %42, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %71, -1
  %81 = add i32 %80, %79
  %82 = udiv i32 %81, %79
  %83 = call i32 @llvm.umin.i32(i32 %77, i32 %82)
  %84 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 9
  store i32 %83, ptr %84, align 8
  br label %99

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.orion_spi_dev, ptr %42, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = add i32 %71, -1
  %91 = add i32 %90, %87
  %92 = udiv i32 %91, %87
  %93 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 9
  store i32 %92, ptr %93, align 8
  br label %99

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.orion_spi_dev, ptr %42, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 9
  store i32 %96, ptr %97, align 8
  %98 = add i32 %71, -1
  br label %99

99:                                               ; preds = %94, %89, %75
  %100 = phi i32 [ %90, %89 ], [ %98, %94 ], [ %80, %75 ]
  %101 = getelementptr inbounds %struct.orion_spi_dev, ptr %42, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %100, %102
  %104 = udiv i32 %103, %102
  %105 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 8
  store i32 %104, ptr %105, align 4
  %106 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %107 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %106) #6
  %108 = getelementptr inbounds %struct.orion_spi, ptr %38, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  %109 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = ptrtoint ptr %107 to i32
  br label %148

112:                                              ; preds = %99
  %113 = load ptr, ptr %15, align 8
  %114 = call ptr @of_get_next_available_child(ptr noundef %113, ptr noundef null) #6
  %115 = icmp eq ptr %114, null
  br i1 %115, label %141, label %116

116:                                              ; preds = %137, %112
  %117 = phi ptr [ %139, %137 ], [ %114, %112 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %118 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %117, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %119 = icmp sgt i32 %118, -1
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %117, i32 noundef %118) #7
  br label %137

121:                                              ; preds = %116
  %122 = load ptr, ptr %15, align 8
  %123 = load i32, ptr %3, align 4
  %124 = add i32 %123, 1
  %125 = call i32 @of_address_to_resource(ptr noundef %122, i32 noundef %124, ptr noundef %106) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i32, ptr %3, align 4
  %129 = getelementptr %struct.orion_spi, ptr %38, i32 0, i32 6, i32 %128
  %130 = load i32, ptr %106, align 4
  %131 = call ptr @devm_ioremap(ptr noundef %4, i32 noundef %130, i32 noundef 4096) #6
  store ptr %131, ptr %129, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.orion_direct_acc, ptr %129, i32 0, i32 1
  store i32 4096, ptr %134, align 4
  %135 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %135) #7
  br label %137

136:                                              ; preds = %127
  call void @of_node_put(ptr noundef nonnull %117) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %148

137:                                              ; preds = %133, %121, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %138 = load ptr, ptr %15, align 8
  %139 = call ptr @of_get_next_available_child(ptr noundef %138, ptr noundef nonnull %117) #6
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %116

141:                                              ; preds = %137, %112
  %142 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext true) #6
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %4, i32 noundef 200) #6
  call void @pm_runtime_enable(ptr noundef %4) #6
  call fastcc void @orion_spi_reset(ptr noundef %38)
  %143 = load ptr, ptr %15, align 8
  %144 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  store ptr %143, ptr %144, align 8
  %145 = call i32 @spi_register_controller(ptr noundef nonnull %5) #6
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #6
  br label %148

148:                                              ; preds = %147, %136, %110
  %149 = phi i32 [ %111, %110 ], [ -12, %136 ], [ %145, %147 ]
  %150 = load ptr, ptr %58, align 4
  call void @clk_disable(ptr noundef %150) #6
  call void @clk_unprepare(ptr noundef %150) #6
  br label %151

151:                                              ; preds = %148, %56
  %152 = phi i32 [ %149, %148 ], [ -517, %56 ]
  %153 = load ptr, ptr %45, align 4
  call void @clk_disable(ptr noundef %153) #6
  call void @clk_unprepare(ptr noundef %153) #6
  br label %154

154:                                              ; preds = %151, %55, %49, %47
  %155 = phi i32 [ %48, %47 ], [ %152, %151 ], [ %53, %55 ], [ %50, %49 ]
  call void @put_device(ptr noundef nonnull %5) #6
  br label %156

156:                                              ; preds = %154, %141, %1
  %157 = phi i32 [ %155, %154 ], [ -12, %1 ], [ %145, %141 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %8 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  tail call void @spi_unregister_controller(ptr noundef %3) #6
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @orion_spi_set_cs(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.orion_spi, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = and i32 %9, -30
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 2
  %15 = and i32 %14, 28
  %16 = xor i1 %1, true
  %17 = zext i1 %16 to i32
  %18 = or i32 %10, %17
  %19 = or i32 %18, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %19) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_spi_transfer_one(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call fastcc i32 @orion_spi_setup_transfer(ptr noundef %1, ptr noundef %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %191, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %191, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.orion_spi, ptr %19, i32 0, i32 6, i32 %13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %10
  %24 = load ptr, ptr %2, align 4
  %25 = icmp ne ptr %24, null
  %26 = icmp eq i8 %15, 8
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = lshr i32 %8, 2
  %35 = and i32 %8, 3
  tail call void @__raw_writesl(ptr noundef nonnull %21, ptr noundef nonnull %24, i32 noundef %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %191, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i32, ptr %38, i32 %34
  tail call void @__raw_writesb(ptr noundef nonnull %21, ptr noundef %39, i32 noundef %35) #6
  br label %191

40:                                               ; preds = %23, %10
  switch i8 %15, label %191 [
    i8 8, label %41
    i8 16, label %138
  ]

41:                                               ; preds = %40
  %42 = load ptr, ptr %2, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = phi ptr [ %42, %41 ], [ %24, %28 ]
  %45 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %48 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 11
  br label %49

49:                                               ; preds = %134, %43
  %50 = phi ptr [ %19, %43 ], [ %137, %134 ]
  %51 = phi ptr [ %44, %43 ], [ %81, %134 ]
  %52 = phi ptr [ %46, %43 ], [ %114, %134 ]
  %53 = phi i32 [ %8, %43 ], [ %131, %134 ]
  %54 = load i32, ptr %47, align 8
  %55 = and i32 %54, 4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.orion_spi, ptr %50, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %61 = and i32 %60, -30
  %62 = load i8, ptr %11, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 2
  %65 = and i32 %64, 28
  %66 = or i32 %61, %65
  %67 = or i32 %66, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %67) #6, !srcloc !12
  br label %68

68:                                               ; preds = %57, %49
  %69 = getelementptr inbounds %struct.orion_spi, ptr %50, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 8
  %72 = getelementptr i8, ptr %70, i32 12
  %73 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #6, !srcloc !12
  %74 = icmp eq ptr %51, null
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = getelementptr i8, ptr %51, i32 1
  %77 = load i8, ptr %51, align 1
  %78 = zext i8 %77 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %78) #6, !srcloc !12
  br label %80

79:                                               ; preds = %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #6, !srcloc !12
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi ptr [ null, %79 ], [ %76, %75 ]
  br label %82

82:                                               ; preds = %88, %80
  %83 = phi i32 [ 0, %80 ], [ %90, %88 ]
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr i8, ptr %84, i32 16
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748) #6
  %90 = add nuw nsw i32 %83, 1
  %91 = icmp eq i32 %90, 2000
  br i1 %91, label %92, label %82

92:                                               ; preds = %88
  br i1 %56, label %129, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 8
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.orion_spi, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %100 = and i32 %99, -30
  %101 = load i8, ptr %11, align 4
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 2
  %104 = and i32 %103, 28
  %105 = or i32 %104, %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %105) #6, !srcloc !12
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 858992) #6
  br label %129

107:                                              ; preds = %82
  %108 = icmp eq ptr %52, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %107
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %111 = trunc i32 %110 to i8
  %112 = getelementptr i8, ptr %52, i32 1
  store i8 %111, ptr %52, align 1
  br label %113

113:                                              ; preds = %109, %107
  %114 = phi ptr [ null, %107 ], [ %112, %109 ]
  br i1 %56, label %130, label %115

115:                                              ; preds = %113
  %116 = load ptr, ptr %16, align 4
  %117 = getelementptr inbounds %struct.device, ptr %116, i32 0, i32 8
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.orion_spi, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %122 = and i32 %121, -30
  %123 = load i8, ptr %11, align 4
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 2
  %126 = and i32 %125, 28
  %127 = or i32 %126, %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %127) #6, !srcloc !12
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 858992) #6
  br label %130

129:                                              ; preds = %93, %92
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  br label %191

130:                                              ; preds = %115, %113
  %131 = add i32 %53, -1
  %132 = tail call i32 @spi_delay_exec(ptr noundef %48, ptr noundef %2) #6
  %133 = icmp eq i32 %131, 0
  br i1 %133, label %191, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %16, align 4
  %136 = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 8
  %137 = load ptr, ptr %136, align 8
  br label %49

138:                                              ; preds = %40
  %139 = load ptr, ptr %2, align 4
  %140 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %143 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 11
  br label %144

144:                                              ; preds = %186, %138
  %145 = phi ptr [ %139, %138 ], [ %168, %186 ]
  %146 = phi ptr [ %141, %138 ], [ %187, %186 ]
  %147 = phi i32 [ %8, %138 ], [ %188, %186 ]
  %148 = load i32, ptr %142, align 8
  %149 = and i32 %148, 4096
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #7
  br label %191

152:                                              ; preds = %144
  %153 = load ptr, ptr %16, align 4
  %154 = getelementptr inbounds %struct.device, ptr %153, i32 0, i32 8
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.orion_spi, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 8
  %159 = getelementptr i8, ptr %157, i32 12
  %160 = getelementptr i8, ptr %157, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 0) #6, !srcloc !12
  %161 = icmp eq ptr %145, null
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %161, label %166, label %162

162:                                              ; preds = %152
  %163 = getelementptr i16, ptr %145, i32 1
  %164 = load i16, ptr %145, align 1
  %165 = zext i16 %164 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %165) #6, !srcloc !12
  br label %167

166:                                              ; preds = %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 0) #6, !srcloc !12
  br label %167

167:                                              ; preds = %166, %162
  %168 = phi ptr [ null, %166 ], [ %163, %162 ]
  br label %169

169:                                              ; preds = %175, %167
  %170 = phi i32 [ 0, %167 ], [ %177, %175 ]
  %171 = load ptr, ptr %156, align 4
  %172 = getelementptr i8, ptr %171, i32 16
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %176(i32 noundef 214748) #6
  %177 = add nuw nsw i32 %170, 1
  %178 = icmp eq i32 %177, 2000
  br i1 %178, label %179, label %169

179:                                              ; preds = %175
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  br label %191

180:                                              ; preds = %169
  %181 = icmp eq ptr %146, null
  br i1 %181, label %186, label %182

182:                                              ; preds = %180
  %183 = getelementptr i16, ptr %146, i32 1
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %146, align 1
  br label %186

186:                                              ; preds = %182, %180
  %187 = phi ptr [ null, %180 ], [ %183, %182 ]
  %188 = add i32 %147, -2
  %189 = tail call i32 @spi_delay_exec(ptr noundef %143, ptr noundef %2) #6
  %190 = icmp eq i32 %188, 0
  br i1 %190, label %191, label %144

191:                                              ; preds = %186, %179, %151, %130, %129, %40, %37, %33, %6, %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_spi_setup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @orion_spi_runtime_resume(ptr noundef %7)
  %9 = tail call fastcc i32 @orion_spi_setup_transfer(ptr noundef %0, ptr noundef null)
  %10 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.orion_spi, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.orion_spi, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @orion_spi_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.orion_spi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %5 = and i32 %4, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @orion_spi_setup_transfer(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 %4, i32 %14
  %17 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 8
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i8 %6, i8 %18
  br label %21

21:                                               ; preds = %12, %2
  %22 = phi i32 [ %16, %12 ], [ %4, %2 ]
  %23 = phi i8 [ %20, %12 ], [ %6, %2 ]
  %24 = getelementptr inbounds %struct.orion_spi, ptr %10, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %28 = and i32 %27, -30721
  %29 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 10
  %32 = and i32 %31, 2048
  %33 = or i32 %32, %28
  %34 = shl i32 %30, 12
  %35 = and i32 %34, 4096
  %36 = or i32 %33, %35
  %37 = and i32 %30, 8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 24576
  %40 = or i32 %36, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !12
  %43 = getelementptr inbounds %struct.orion_spi, ptr %10, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.orion_spi_dev, ptr %44, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %21
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.orion_spi, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %56 = getelementptr inbounds %struct.orion_spi, ptr %51, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @clk_get_rate(ptr noundef %57) #6
  %59 = icmp eq i32 %58, 250000000
  %60 = icmp eq i32 %22, 50000000
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i32, ptr %29, align 8
  %64 = and i32 %63, 3
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %67, label %66

66:                                               ; preds = %62, %48
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ 64, %66 ], [ 128, %62 ]
  %69 = and i32 %55, -193
  %70 = or i32 %68, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %71 = load ptr, ptr %52, align 4
  %72 = getelementptr i8, ptr %71, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #6, !srcloc !12
  br label %73

73:                                               ; preds = %67, %21
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.orion_spi, ptr %76, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.orion_spi, ptr %76, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @clk_get_rate(ptr noundef %80) #6
  %82 = load i32, ptr %78, align 4
  %83 = icmp eq i32 %82, 1
  %84 = add i32 %22, -1
  %85 = add i32 %84, %81
  %86 = udiv i32 %85, %22
  br i1 %83, label %87, label %112

87:                                               ; preds = %73
  %88 = icmp ult i32 %86, 16
  br i1 %88, label %103, label %89

89:                                               ; preds = %87
  %90 = tail call i32 @llvm.ctlz.i32(i32 %86, i1 true) #6, !range !26
  %91 = sub nsw i32 28, %90
  %92 = shl nuw nsw i32 1, %91
  %93 = add i32 %86, -1
  %94 = add i32 %93, %92
  %95 = sub i32 0, %92
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  %98 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 false) #6, !range !26
  %99 = sub nsw i32 28, %98
  %100 = select i1 %97, i32 -4, i32 %99
  %101 = lshr i32 %96, %100
  %102 = icmp ugt i32 %100, 7
  br i1 %102, label %141, label %103

103:                                              ; preds = %89, %87
  %104 = phi i32 [ %101, %89 ], [ %86, %87 ]
  %105 = phi i32 [ %99, %89 ], [ 0, %87 ]
  %106 = shl nuw nsw i32 %105, 5
  %107 = and i32 %106, 192
  %108 = shl nuw nsw i32 %105, 4
  %109 = and i32 %108, 16
  %110 = or i32 %109, %104
  %111 = or i32 %110, %107
  br label %120

112:                                              ; preds = %73
  %113 = add i32 %86, 1
  %114 = and i32 %113, -2
  %115 = icmp ugt i32 %114, 30
  br i1 %115, label %141, label %116

116:                                              ; preds = %112
  %117 = tail call i32 @llvm.umax.i32(i32 %114, i32 4) #6
  %118 = lshr exact i32 %117, 1
  %119 = add nuw nsw i32 %118, 16
  br label %120

120:                                              ; preds = %116, %103
  %121 = phi i32 [ %119, %116 ], [ %111, %103 ]
  %122 = getelementptr inbounds %struct.orion_spi, ptr %76, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 4
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %126 = getelementptr inbounds %struct.orion_spi_dev, ptr %78, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %125, %128
  %130 = or i32 %129, %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %131 = load ptr, ptr %122, align 4
  %132 = getelementptr i8, ptr %131, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #6, !srcloc !12
  %133 = icmp eq i8 %23, 16
  %134 = load ptr, ptr %24, align 4
  %135 = getelementptr i8, ptr %134, i32 4
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6
  br i1 %133, label %137, label %139

137:                                              ; preds = %120
  %138 = or i32 %136, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %138) #6, !srcloc !12
  br label %141

139:                                              ; preds = %120
  %140 = and i32 %136, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %140) #6, !srcloc !12
  br label %141

141:                                              ; preds = %139, %137, %112, %89
  %142 = phi i32 [ 0, %139 ], [ 0, %137 ], [ -22, %112 ], [ -22, %89 ]
  ret i32 %142
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_spi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @clk_prepare(ptr noundef %7) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call i32 @clk_enable(ptr noundef %7) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %16

16:                                               ; preds = %15, %12, %9, %1
  %17 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %25

25:                                               ; preds = %24, %21, %16
  %26 = phi i32 [ %19, %16 ], [ %22, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_spi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.orion_spi, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 3070528}
!10 = !{i64 2153133174}
!11 = !{i64 2153133435}
!12 = !{i64 3070110}
!13 = !{i64 2153135109}
!14 = !{i64 2153134092}
!15 = !{i64 2153137162}
!16 = !{i64 2153138863}
!17 = !{i64 2153142131}
!18 = !{i64 2153129124}
!19 = !{i64 2153129300}
!20 = !{i64 2153142589}
!21 = !{i64 2153130812}
!22 = !{i64 2153131660}
!23 = !{i8 0, i8 2}
!24 = !{i64 2153132206}
!25 = !{i64 2153132581}
!26 = !{i32 0, i32 33}
!27 = !{i64 2153130068}
!28 = !{i64 2153130266}
!29 = !{i64 2153128528}
