; ModuleID = '/llk/IR/drivers/thermal/mtk_thermal.c_pt.bc'
source_filename = "../drivers/thermal/mtk_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_thermal_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, [8 x %struct.thermal_bank_cfg], i32 }
%struct.thermal_bank_cfg = type { i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mtk_thermal = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, [6 x i32], ptr, [8 x %struct.mtk_thermal_bank] }
%struct.mtk_thermal_bank = type { ptr, i32 }

@__initcall__kmod_mtk_thermal__172_1125_mtk_thermal_driver_init6 = internal global ptr @mtk_thermal_driver_init, section ".initcall6.init", align 4
@mtk_thermal_driver = internal global %struct.platform_driver { ptr @mtk_thermal_probe, ptr @mtk_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mtk_thermal_driver_exit = internal global ptr @mtk_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [58 x i8] c"mtk_thermal.author=Michael Kao <michael.kao@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [52 x i8] c"mtk_thermal.author=Louis Yu <louis.yu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [58 x i8] c"mtk_thermal.author=Dawei Chien <dawei.chien@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [57 x i8] c"mtk_thermal.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [52 x i8] c"mtk_thermal.author=Hanyi Wu <hanyi.wu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [48 x i8] c"mtk_thermal.description=Mediatek thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file179 = internal constant [45 x i8] c"mtk_thermal.file=drivers/thermal/mtk_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license180 = internal constant [27 x i8] c"mtk_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"mtk-thermal\00", align 1
@mtk_thermal_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_thermal_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"therm\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"auxadc\00", align 1
@mtk_thermal_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&mt->lock\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mediatek,auxadc\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"missing auxadc node\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Can't get auxadc phys address\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"mediatek,apmixedsys\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"missing apmixedsys node\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Can't enable auxadc clk: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't enable peri clk: %d\0A\00", align 1
@mtk_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @mtk_read_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"error in thermal_add_hwmon_sysfs\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"calibration-data\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid calibration data\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"Device not calibrated, using default calibration values\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt8173_thermal_data = internal constant %struct.mtk_thermal_data { i32 4, i32 5, i32 11, ptr @mt8173_vts_index, ptr @mt8173_mux_values, ptr @mt8173_msr, ptr @mt8173_adcpnp, i32 165, i32 1, ptr @mt8173_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 2, ptr @mt8173_bank_data }, %struct.thermal_bank_cfg { i32 2, ptr getelementptr (i8, ptr @mt8173_bank_data, i64 12) }, %struct.thermal_bank_cfg { i32 3, ptr getelementptr (i8, ptr @mt8173_bank_data, i64 24) }, %struct.thermal_bank_cfg { i32 1, ptr getelementptr (i8, ptr @mt8173_bank_data, i64 36) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 4
@mt2701_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 3, i32 11, ptr @mt2701_vts_index, ptr @mt2701_mux_values, ptr @mt2701_msr, ptr @mt2701_adcpnp, i32 165, i32 1, ptr @mt2701_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 3, ptr @mt2701_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 4
@mt2712_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 4, i32 11, ptr @mt2712_vts_index, ptr @mt2712_mux_values, ptr @mt2712_msr, ptr @mt2712_adcpnp, i32 165, i32 1, ptr @mt2712_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 4, ptr @mt2712_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 4
@mt7622_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 1, i32 11, ptr @mt7622_vts_index, ptr @mt7622_mux_values, ptr @mt7622_msr, ptr @mt7622_adcpnp, i32 165, i32 1, ptr @mt7622_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 1, ptr @mt7622_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 2 }, align 4
@mt8183_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 6, i32 11, ptr @mt8183_vts_index, ptr @mt8183_mux_values, ptr @mt8183_msr, ptr @mt8183_adcpnp, i32 153, i32 2, ptr @mt8183_tc_offset, i8 0, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 6, ptr @mt8183_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 4
@mt8173_vts_index = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5], align 4
@mt8173_mux_values = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 16], align 4
@mt8173_msr = internal constant [4 x i32] [i32 144, i32 148, i32 152, i32 184], align 4
@mt8173_adcpnp = internal constant [4 x i32] [i32 72, i32 76, i32 80, i32 180], align 4
@mt8173_tc_offset = internal constant [1 x i32] zeroinitializer, align 4
@mt8173_bank_data = internal constant [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 1, i32 3, i32 0], [3 x i32] [i32 0, i32 1, i32 4], [3 x i32] [i32 1, i32 0, i32 0]], align 4
@mt2701_vts_index = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@mt2701_mux_values = internal constant [3 x i32] [i32 0, i32 1, i32 16], align 4
@mt2701_msr = internal constant [3 x i32] [i32 144, i32 148, i32 152], align 4
@mt2701_adcpnp = internal constant [3 x i32] [i32 72, i32 76, i32 80], align 4
@mt2701_tc_offset = internal constant [1 x i32] zeroinitializer, align 4
@mt2701_bank_data = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@mt2712_vts_index = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@mt2712_mux_values = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@mt2712_msr = internal constant [4 x i32] [i32 144, i32 148, i32 152, i32 184], align 4
@mt2712_adcpnp = internal constant [4 x i32] [i32 72, i32 76, i32 80, i32 180], align 4
@mt2712_tc_offset = internal constant [1 x i32] zeroinitializer, align 4
@mt2712_bank_data = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@mt7622_vts_index = internal constant [1 x i32] zeroinitializer, align 4
@mt7622_mux_values = internal constant [1 x i32] zeroinitializer, align 4
@mt7622_msr = internal constant [1 x i32] [i32 144], align 4
@mt7622_adcpnp = internal constant [1 x i32] [i32 72], align 4
@mt7622_tc_offset = internal constant [1 x i32] zeroinitializer, align 4
@mt7622_bank_data = internal constant [1 x i32] zeroinitializer, align 4
@mt8183_vts_index = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@mt8183_mux_values = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 0], align 4
@mt8183_msr = internal constant [6 x i32] [i32 400, i32 404, i32 408, i32 148, i32 144, i32 440], align 4
@mt8183_adcpnp = internal constant [6 x i32] [i32 328, i32 332, i32 336, i32 76, i32 72, i32 436], align 4
@mt8183_tc_offset = internal constant [2 x i32] [i32 0, i32 256], align 4
@mt8183_bank_data = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file179, ptr @__UNIQUE_ID_license180, ptr @__exitcall_mtk_thermal_driver_exit, ptr @__initcall__kmod_mtk_thermal__172_1125_mtk_thermal_driver_init6, ptr @mtk_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_thermal_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_thermal_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_thermal_probe(ptr noundef %0) #2 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 148, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %363, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %7) #8
  %14 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 11
  store ptr %13, ptr %14, align 4
  %15 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.1) #8
  %16 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = ptrtoint ptr %15 to i32
  br label %363

20:                                               ; preds = %12
  %21 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.2) #8
  %22 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  br label %363

26:                                               ; preds = %20
  %27 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %27) #8
  %29 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i32
  br label %363

33:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 5
  store i32 512, ptr %34, align 4
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr inbounds %struct.mtk_thermal_data, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %39, %33
  %40 = phi i32 [ %42, %39 ], [ 0, %33 ]
  %41 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 %40
  store i32 260, ptr %41, align 4
  %42 = add nuw nsw i32 %40, 1
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr inbounds %struct.mtk_thermal_data, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %39, label %47

47:                                               ; preds = %39, %33
  %48 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 7
  store i32 40, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 8
  store i32 0, ptr %49, align 4
  %50 = tail call ptr @nvmem_cell_get(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = icmp eq ptr %50, inttoptr (i32 -517 to ptr)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br i1 %53, label %363, label %171

54:                                               ; preds = %47
  %55 = call ptr @nvmem_cell_read(ptr noundef %50, ptr noundef nonnull %6) #8
  call void @nvmem_cell_put(ptr noundef %50) #8
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = ptrtoint ptr %55 to i32
  br label %168

59:                                               ; preds = %54
  %60 = load i32, ptr %6, align 4
  %61 = icmp ult i32 %60, 12
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.13) #9
  br label %166

63:                                               ; preds = %59
  %64 = load ptr, ptr %14, align 4
  %65 = getelementptr inbounds %struct.mtk_thermal_data, ptr %64, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %133

68:                                               ; preds = %63
  %69 = load i32, ptr %55, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %165, label %72

72:                                               ; preds = %68
  %73 = getelementptr i32, ptr %55, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 22
  store i32 %75, ptr %34, align 4
  %76 = getelementptr inbounds %struct.mtk_thermal_data, ptr %64, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.mtk_thermal_data, ptr %64, i32 0, i32 3
  %81 = getelementptr i32, ptr %55, i32 2
  %82 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 5
  %83 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 4
  %84 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 3
  %85 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 2
  %86 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 1
  %87 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 10
  br label %88

88:                                               ; preds = %115, %79
  %89 = phi i32 [ 0, %79 ], [ %116, %115 ]
  %90 = load ptr, ptr %80, align 4
  %91 = getelementptr i32, ptr %90, i32 %89
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %115 [
    i32 0, label %93
    i32 1, label %97
    i32 2, label %101
    i32 3, label %104
    i32 4, label %107
    i32 5, label %111
  ]

93:                                               ; preds = %88
  %94 = load i32, ptr %55, align 4
  %95 = lshr i32 %94, 17
  %96 = and i32 %95, 511
  store i32 %96, ptr %87, align 4
  br label %115

97:                                               ; preds = %88
  %98 = load i32, ptr %55, align 4
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 511
  store i32 %100, ptr %86, align 4
  br label %115

101:                                              ; preds = %88
  %102 = load i32, ptr %73, align 4
  %103 = and i32 %102, 511
  store i32 %103, ptr %85, align 4
  br label %115

104:                                              ; preds = %88
  %105 = load i32, ptr %81, align 4
  %106 = lshr i32 %105, 23
  store i32 %106, ptr %84, align 4
  br label %115

107:                                              ; preds = %88
  %108 = load i32, ptr %81, align 4
  %109 = lshr i32 %108, 5
  %110 = and i32 %109, 511
  store i32 %110, ptr %83, align 4
  br label %115

111:                                              ; preds = %88
  %112 = load i32, ptr %81, align 4
  %113 = lshr i32 %112, 14
  %114 = and i32 %113, 511
  store i32 %114, ptr %82, align 4
  br label %115

115:                                              ; preds = %111, %107, %104, %101, %97, %93, %88
  %116 = add nuw nsw i32 %89, 1
  %117 = load i32, ptr %76, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %88, label %119

119:                                              ; preds = %115, %72
  %120 = load i32, ptr %55, align 4
  %121 = lshr i32 %120, 1
  %122 = and i32 %121, 63
  store i32 %122, ptr %48, align 4
  %123 = load i32, ptr %73, align 4
  %124 = lshr i32 %123, 9
  %125 = load i32, ptr %55, align 4
  %126 = lshr i32 %125, 7
  %127 = and i32 %124, 1
  %128 = and i32 %127, %126
  %129 = icmp eq i32 %128, 0
  %130 = lshr i32 %125, 26
  %131 = sub nsw i32 0, %130
  %132 = select i1 %129, i32 %130, i32 %131
  store i32 %132, ptr %49, align 4
  br label %166

133:                                              ; preds = %63
  %134 = getelementptr i32, ptr %55, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %55, align 4
  %140 = lshr i32 %139, 22
  %141 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 6
  store i32 %140, ptr %141, align 4
  %142 = load i32, ptr %55, align 4
  %143 = lshr i32 %142, 12
  %144 = and i32 %143, 1023
  store i32 %144, ptr %34, align 4
  %145 = load i32, ptr %55, align 4
  %146 = lshr i32 %145, 6
  %147 = and i32 %146, 63
  store i32 %147, ptr %48, align 4
  %148 = load i32, ptr %55, align 4
  %149 = and i32 %148, 63
  store i32 %149, ptr %49, align 4
  %150 = load i32, ptr %134, align 4
  %151 = lshr i32 %150, 23
  %152 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 10
  store i32 %151, ptr %152, align 4
  %153 = load i32, ptr %134, align 4
  %154 = lshr i32 %153, 14
  %155 = and i32 %154, 511
  %156 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 1
  store i32 %155, ptr %156, align 4
  %157 = load i32, ptr %134, align 4
  %158 = lshr i32 %157, 5
  %159 = and i32 %158, 511
  %160 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 10, i32 5
  store i32 %159, ptr %160, align 4
  %161 = load i32, ptr %134, align 4
  %162 = lshr i32 %161, 3
  %163 = and i32 %162, 1
  %164 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 9
  store i32 %163, ptr %164, align 4
  br label %166

165:                                              ; preds = %133, %68
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14) #9
  br label %166

166:                                              ; preds = %165, %138, %119, %62
  %167 = phi i32 [ -22, %62 ], [ 0, %165 ], [ 0, %119 ], [ 0, %138 ]
  call void @kfree(ptr noundef %55) #8
  br label %168

168:                                              ; preds = %166, %57
  %169 = phi i32 [ %58, %57 ], [ %167, %166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %363

171:                                              ; preds = %168, %52
  %172 = getelementptr inbounds %struct.mtk_thermal, ptr %10, i32 0, i32 4
  call void @__mutex_init(ptr noundef %172, ptr noundef nonnull @.str.3, ptr noundef nonnull @mtk_thermal_probe.__key) #8
  store ptr %7, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #8, !annotation !8
  %173 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #8
  %174 = icmp ne i32 %173, 0
  %175 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %176 = icmp eq ptr %175, null
  %177 = select i1 %174, i1 true, i1 %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #9
  br label %363

179:                                              ; preds = %171
  %180 = call ptr @of_iomap(ptr noundef nonnull %175, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %181 = call ptr @__of_get_address(ptr noundef nonnull %175, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef null) #8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @of_node_put(ptr noundef nonnull %175) #8
  br label %187

184:                                              ; preds = %179
  %185 = call i64 @of_translate_address(ptr noundef nonnull %175, ptr noundef nonnull %181) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @of_node_put(ptr noundef nonnull %175) #8
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %187, label %188

187:                                              ; preds = %184, %183
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #9
  br label %363

188:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %189 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %190 = icmp ne i32 %189, 0
  %191 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %192 = icmp eq ptr %191, null
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #9
  br label %363

195:                                              ; preds = %188
  %196 = call ptr @of_iomap(ptr noundef nonnull %191, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  %197 = call ptr @__of_get_address(ptr noundef nonnull %191, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %2, ptr noundef null) #8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  call void @of_node_put(ptr noundef nonnull %191) #8
  br label %203

200:                                              ; preds = %195
  %201 = call i64 @of_translate_address(ptr noundef nonnull %191, ptr noundef nonnull %197) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  call void @of_node_put(ptr noundef nonnull %191) #8
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %200, %199
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #9
  br label %363

204:                                              ; preds = %200
  %205 = call i32 @__device_reset(ptr noundef %7, i1 noundef zeroext true) #8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %363

207:                                              ; preds = %204
  %208 = load ptr, ptr %22, align 4
  %209 = call fastcc i32 @clk_prepare_enable(ptr noundef %208)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %209) #9
  br label %363

212:                                              ; preds = %207
  %213 = load ptr, ptr %16, align 4
  %214 = call fastcc i32 @clk_prepare_enable(ptr noundef %213)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %214) #9
  br label %360

217:                                              ; preds = %212
  %218 = load ptr, ptr %14, align 4
  %219 = getelementptr inbounds %struct.mtk_thermal_data, ptr %218, i32 0, i32 12
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  call fastcc void @mtk_thermal_turn_on_buffer(ptr noundef %196)
  call fastcc void @mtk_thermal_release_periodic_ts(ptr noundef nonnull %10, ptr noundef %180)
  %223 = load ptr, ptr %14, align 4
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi ptr [ %223, %222 ], [ %218, %217 ]
  %226 = getelementptr inbounds %struct.mtk_thermal_data, ptr %225, i32 0, i32 8
  %227 = load i32, ptr %226, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %349

229:                                              ; preds = %224
  %230 = trunc i64 %201 to i32
  %231 = trunc i64 %185 to i32
  %232 = add i32 %231, 12
  %233 = add i32 %230, 1540
  %234 = add i32 %231, 8
  %235 = add i32 %231, 20
  %236 = load i32, ptr %225, align 4
  br label %237

237:                                              ; preds = %342, %229
  %238 = phi i32 [ %236, %229 ], [ %343, %342 ]
  %239 = phi ptr [ %225, %229 ], [ %344, %342 ]
  %240 = phi i32 [ 0, %229 ], [ %345, %342 ]
  %241 = icmp sgt i32 %238, 0
  br i1 %241, label %242, label %342

242:                                              ; preds = %337, %237
  %243 = phi ptr [ %339, %337 ], [ %239, %237 ]
  %244 = phi i32 [ %338, %337 ], [ 0, %237 ]
  %245 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 12, i32 %244
  %246 = getelementptr inbounds %struct.mtk_thermal_data, ptr %243, i32 0, i32 9
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr i32, ptr %247, i32 %240
  %249 = load i32, ptr %248, align 4
  %250 = load ptr, ptr %29, align 4
  %251 = getelementptr i8, ptr %250, i32 %249
  %252 = getelementptr %struct.mtk_thermal, ptr %10, i32 0, i32 12, i32 %244, i32 1
  store i32 %244, ptr %252, align 4
  store ptr %10, ptr %245, align 4
  %253 = load ptr, ptr %14, align 4
  %254 = getelementptr inbounds %struct.mtk_thermal_data, ptr %253, i32 0, i32 10
  %255 = load i8, ptr %254, align 4, !range !9
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %242
  call void @mutex_lock(ptr noundef %172) #8
  %258 = load ptr, ptr %29, align 4
  %259 = getelementptr i8, ptr %258, i32 1024
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %261 = and i32 %260, -16
  %262 = load i32, ptr %252, align 4
  %263 = or i32 %262, %261
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %264 = load ptr, ptr %29, align 4
  %265 = getelementptr i8, ptr %264, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %263) #8, !srcloc !13
  br label %266

266:                                              ; preds = %257, %242
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  %267 = getelementptr i8, ptr %251, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 12) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %268 = getelementptr i8, ptr %251, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 65965) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  call void @arm_heavy_mb() #8
  %269 = getelementptr i8, ptr %251, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 768) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  call void @arm_heavy_mb() #8
  %270 = getelementptr i8, ptr %251, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 0) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %271 = getelementptr i8, ptr %251, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 -1) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %272 = getelementptr i8, ptr %251, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 0) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %273 = getelementptr i8, ptr %251, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 0) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  call void @arm_heavy_mb() #8
  %274 = getelementptr inbounds %struct.mtk_thermal_data, ptr %243, i32 0, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = shl nuw i32 1, %275
  %277 = getelementptr i8, ptr %251, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %276) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  call void @arm_heavy_mb() #8
  %278 = getelementptr i8, ptr %251, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %232) #8, !srcloc !13
  %279 = load ptr, ptr %14, align 4
  %280 = getelementptr inbounds %struct.mtk_thermal_data, ptr %279, i32 0, i32 12
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %285

283:                                              ; preds = %266
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  call void @arm_heavy_mb() #8
  %284 = getelementptr i8, ptr %251, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %233) #8, !srcloc !13
  br label %285

285:                                              ; preds = %283, %266
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  call void @arm_heavy_mb() #8
  %286 = load i32, ptr %274, align 4
  %287 = shl nuw i32 1, %286
  %288 = getelementptr i8, ptr %251, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %287) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  call void @arm_heavy_mb() #8
  %289 = getelementptr i8, ptr %251, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %234) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  call void @arm_heavy_mb() #8
  %290 = load i32, ptr %274, align 4
  %291 = shl i32 %290, 2
  %292 = add i32 %291, %235
  %293 = getelementptr i8, ptr %251, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %292) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  call void @arm_heavy_mb() #8
  %294 = load i32, ptr %274, align 4
  %295 = shl i32 %294, 2
  %296 = add i32 %295, %235
  %297 = getelementptr i8, ptr %251, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %296) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  call void @arm_heavy_mb() #8
  %298 = getelementptr i8, ptr %251, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 0) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  call void @arm_heavy_mb() #8
  %299 = getelementptr i8, ptr %251, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 44) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  call void @arm_heavy_mb() #8
  %300 = getelementptr i8, ptr %251, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 0) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  call void @arm_heavy_mb() #8
  %301 = getelementptr i8, ptr %251, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 2) #8, !srcloc !13
  %302 = getelementptr %struct.mtk_thermal_data, ptr %243, i32 0, i32 11, i32 %244
  %303 = load i32, ptr %302, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %325, label %305

305:                                              ; preds = %285
  %306 = getelementptr inbounds %struct.mtk_thermal_data, ptr %243, i32 0, i32 4
  %307 = getelementptr %struct.mtk_thermal_data, ptr %243, i32 0, i32 11, i32 %244, i32 1
  %308 = getelementptr inbounds %struct.mtk_thermal_data, ptr %243, i32 0, i32 6
  br label %309

309:                                              ; preds = %309, %305
  %310 = phi i32 [ 0, %305 ], [ %322, %309 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  call void @arm_heavy_mb() #8
  %311 = load ptr, ptr %306, align 4
  %312 = load ptr, ptr %307, align 4
  %313 = getelementptr i32, ptr %312, i32 %310
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr i32, ptr %311, i32 %314
  %316 = load i32, ptr %315, align 4
  %317 = load ptr, ptr %29, align 4
  %318 = load ptr, ptr %308, align 4
  %319 = getelementptr i32, ptr %318, i32 %310
  %320 = load i32, ptr %319, align 4
  %321 = getelementptr i8, ptr %317, i32 %320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 %316) #8, !srcloc !13
  %322 = add nuw i32 %310, 1
  %323 = load i32, ptr %302, align 4
  %324 = icmp ult i32 %322, %323
  br i1 %324, label %309, label %325

325:                                              ; preds = %309, %285
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  call void @arm_heavy_mb() #8
  %326 = load i32, ptr %302, align 4
  %327 = shl nsw i32 -1, %326
  %328 = xor i32 %327, -1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %328) #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 3) #8, !srcloc !13
  %329 = load ptr, ptr %245, align 4
  %330 = getelementptr inbounds %struct.mtk_thermal, ptr %329, i32 0, i32 11
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.mtk_thermal_data, ptr %331, i32 0, i32 10
  %333 = load i8, ptr %332, align 4, !range !9
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %325
  %336 = getelementptr inbounds %struct.mtk_thermal, ptr %329, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %336) #8
  br label %337

337:                                              ; preds = %335, %325
  %338 = add nuw nsw i32 %244, 1
  %339 = load ptr, ptr %14, align 4
  %340 = load i32, ptr %339, align 4
  %341 = icmp slt i32 %338, %340
  br i1 %341, label %242, label %342

342:                                              ; preds = %337, %237
  %343 = phi i32 [ %238, %237 ], [ %340, %337 ]
  %344 = phi ptr [ %239, %237 ], [ %339, %337 ]
  %345 = add nuw nsw i32 %240, 1
  %346 = getelementptr inbounds %struct.mtk_thermal_data, ptr %344, i32 0, i32 8
  %347 = load i32, ptr %346, align 4
  %348 = icmp slt i32 %345, %347
  br i1 %348, label %237, label %349

349:                                              ; preds = %342, %224
  %350 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %350, align 8
  %351 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull @mtk_thermal_ops) #8
  %352 = icmp ugt ptr %351, inttoptr (i32 -4096 to ptr)
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = ptrtoint ptr %351 to i32
  %355 = load ptr, ptr %16, align 4
  call void @clk_disable(ptr noundef %355) #8
  call void @clk_unprepare(ptr noundef %355) #8
  br label %360

356:                                              ; preds = %349
  %357 = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %351) #8
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %356
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.11) #9
  br label %363

360:                                              ; preds = %353, %216
  %361 = phi i32 [ %214, %216 ], [ %354, %353 ]
  %362 = load ptr, ptr %22, align 4
  call void @clk_disable(ptr noundef %362) #8
  call void @clk_unprepare(ptr noundef %362) #8
  br label %363

363:                                              ; preds = %360, %359, %356, %211, %204, %203, %194, %187, %178, %168, %52, %31, %24, %18, %1
  %364 = phi i32 [ %19, %18 ], [ %25, %24 ], [ %32, %31 ], [ -22, %187 ], [ -22, %203 ], [ %209, %211 ], [ %361, %360 ], [ -19, %194 ], [ -19, %178 ], [ -12, %1 ], [ %169, %168 ], [ %205, %204 ], [ 0, %359 ], [ 0, %356 ], [ -517, %52 ]
  ret i32 %364
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_thermal_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtk_thermal, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.mtk_thermal, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mtk_thermal_turn_on_buffer(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1540
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %4 = and i32 %3, -56
  %5 = or i32 %4, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %5) #8, !srcloc !13
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mtk_thermal_release_periodic_ts(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %3 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2048) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr inbounds %struct.mtk_thermal, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #8, !srcloc !13
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %9 = and i32 %8, -271
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_read_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.mtk_thermal, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %156

7:                                                ; preds = %151, %2
  %8 = phi i32 [ %152, %151 ], [ 0, %2 ]
  %9 = phi i32 [ %145, %151 ], [ -2147483648, %2 ]
  %10 = getelementptr %struct.mtk_thermal, ptr %0, i32 0, i32 12, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_thermal, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtk_thermal_data, ptr %13, i32 0, i32 10
  %15 = load i8, ptr %14, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.mtk_thermal, ptr %11, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.mtk_thermal, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 1024
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %23 = and i32 %22, -16
  %24 = getelementptr %struct.mtk_thermal, ptr %0, i32 0, i32 12, i32 %8, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr i8, ptr %27, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !13
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds %struct.mtk_thermal, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %17, %7
  %33 = phi ptr [ %13, %7 ], [ %31, %17 ]
  %34 = phi ptr [ %11, %7 ], [ %29, %17 ]
  %35 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 11
  %36 = getelementptr %struct.mtk_thermal, ptr %0, i32 0, i32 12, i32 %8, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.mtk_thermal_data, ptr %33, i32 0, i32 11, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %141, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 1
  %43 = getelementptr inbounds %struct.mtk_thermal_data, ptr %33, i32 0, i32 5
  %44 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 5
  %45 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 6
  %46 = getelementptr %struct.mtk_thermal, ptr %34, i32 0, i32 10, i32 1
  %47 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 7
  %48 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 9
  %49 = getelementptr inbounds %struct.mtk_thermal, ptr %34, i32 0, i32 8
  br label %50

50:                                               ; preds = %129, %41
  %51 = phi i32 [ 0, %41 ], [ %132, %129 ]
  %52 = phi i32 [ -2147483648, %41 ], [ %131, %129 ]
  %53 = load ptr, ptr %42, align 4
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr i32, ptr %54, i32 %51
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !41
  %59 = load ptr, ptr %35, align 4
  %60 = getelementptr inbounds %struct.mtk_thermal_data, ptr %59, i32 0, i32 12
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %87

63:                                               ; preds = %50
  %64 = load i32, ptr %36, align 4
  %65 = getelementptr %struct.mtk_thermal_data, ptr %33, i32 0, i32 11, i32 %64, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i32, ptr %66, i32 %51
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %58, 4095
  %70 = getelementptr inbounds %struct.mtk_thermal_data, ptr %59, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %49, align 4
  %73 = add i32 %72, %71
  %74 = sdiv i32 1627604160, %73
  %75 = load i32, ptr %44, align 4
  %76 = add i32 %75, 10000
  %77 = sdiv i32 %74, %76
  %78 = getelementptr %struct.mtk_thermal, ptr %34, i32 0, i32 10, i32 %68
  %79 = load i32, ptr %78, align 4
  %80 = add nsw i32 %69, -3350
  %81 = sub i32 %80, %79
  %82 = mul i32 %81, %77
  %83 = ashr i32 %82, 3
  %84 = load i32, ptr %47, align 4
  %85 = mul i32 %84, 500
  %86 = sub i32 %85, %83
  br label %125

87:                                               ; preds = %50
  %88 = icmp eq i32 %58, 0
  br i1 %88, label %129, label %89

89:                                               ; preds = %87
  %90 = and i32 %58, 4095
  %91 = load i32, ptr %44, align 4
  %92 = mul i32 %91, 10000
  %93 = add i32 %92, -5120000
  %94 = ashr i32 %93, 12
  %95 = add nsw i32 %94, 10000
  %96 = load i32, ptr %45, align 4
  %97 = load i32, ptr %46, align 4
  %98 = sub i32 %97, %96
  %99 = load i32, ptr %47, align 4
  %100 = mul i32 %99, 10
  %101 = ashr exact i32 %100, 1
  %102 = mul i32 %98, 10000
  %103 = add i32 %102, 36170000
  %104 = ashr i32 %103, 12
  %105 = mul i32 %104, 10000
  %106 = sdiv i32 %105, %95
  %107 = add nuw nsw i32 %90, 512
  %108 = sub i32 %107, %96
  %109 = mul i32 %108, 10000
  %110 = ashr i32 %109, 12
  %111 = mul i32 %110, 10000
  %112 = sdiv i32 %111, %95
  %113 = sub i32 %112, %106
  %114 = mul i32 %113, 1000
  %115 = sdiv i32 %114, 11
  %116 = load i32, ptr %48, align 4
  %117 = icmp eq i32 %116, 0
  %118 = load i32, ptr %49, align 4
  %119 = sub i32 0, %118
  %120 = select i1 %117, i32 %119, i32 %118
  %121 = add i32 %120, 165
  %122 = sdiv i32 %115, %121
  %123 = sub nsw i32 %101, %122
  %124 = mul i32 %123, 100
  br label %125

125:                                              ; preds = %89, %63
  %126 = phi i32 [ %86, %63 ], [ %124, %89 ]
  %127 = icmp sgt i32 %126, 200000
  %128 = select i1 %127, i32 0, i32 %126
  br label %129

129:                                              ; preds = %125, %87
  %130 = phi i32 [ 0, %87 ], [ %128, %125 ]
  %131 = tail call i32 @llvm.smax.i32(i32 %130, i32 %52) #8
  %132 = add nuw i32 %51, 1
  %133 = load i32, ptr %36, align 4
  %134 = getelementptr %struct.mtk_thermal_data, ptr %33, i32 0, i32 11, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = icmp ult i32 %132, %135
  br i1 %136, label %50, label %137

137:                                              ; preds = %129
  %138 = load ptr, ptr %10, align 4
  %139 = getelementptr inbounds %struct.mtk_thermal, ptr %138, i32 0, i32 11
  %140 = load ptr, ptr %139, align 4
  br label %141

141:                                              ; preds = %137, %32
  %142 = phi ptr [ %33, %32 ], [ %140, %137 ]
  %143 = phi ptr [ %34, %32 ], [ %138, %137 ]
  %144 = phi i32 [ -2147483648, %32 ], [ %131, %137 ]
  %145 = tail call i32 @llvm.smax.i32(i32 %9, i32 %144)
  %146 = getelementptr inbounds %struct.mtk_thermal_data, ptr %142, i32 0, i32 10
  %147 = load i8, ptr %146, align 4, !range !9
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.mtk_thermal, ptr %143, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %150) #8
  br label %151

151:                                              ; preds = %149, %141
  %152 = add nuw nsw i32 %8, 1
  %153 = load ptr, ptr %3, align 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %7, label %156

156:                                              ; preds = %151, %2
  %157 = phi i32 [ -2147483648, %2 ], [ %145, %151 ]
  store i32 %157, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!10 = !{i64 3118609}
!11 = !{i64 2151808258}
!12 = !{i64 2151808456}
!13 = !{i64 3118191}
!14 = !{i64 2151811003}
!15 = !{i64 2151811443}
!16 = !{i64 2151811867}
!17 = !{i64 2151812207}
!18 = !{i64 2151812546}
!19 = !{i64 2151812892}
!20 = !{i64 2151813224}
!21 = !{i64 2151813693}
!22 = !{i64 2151814138}
!23 = !{i64 2151814540}
!24 = !{i64 2151815053}
!25 = !{i64 2151815498}
!26 = !{i64 2151815969}
!27 = !{i64 2151816504}
!28 = !{i64 2151816942}
!29 = !{i64 2151817398}
!30 = !{i64 2151817796}
!31 = !{i64 2151818234}
!32 = !{i64 2151818672}
!33 = !{i64 2151819161}
!34 = !{i64 2151819791}
!35 = !{i64 2151822372}
!36 = !{i64 2151822566}
!37 = !{i64 2151823441}
!38 = !{i64 2151823774}
!39 = !{i64 2151824271}
!40 = !{i64 2151824482}
!41 = !{i64 2151809034}
