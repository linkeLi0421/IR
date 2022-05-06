; ModuleID = '/llk/IR/drivers/mtd/nand/raw/denali_dt.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/denali_dt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.denali_dt_data = type { i32, i32, i32, ptr }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
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
%struct.denali_controller = type { %struct.nand_controller, ptr, %struct.list_head, i32, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.denali_dt = type { %struct.denali_controller, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip = type { %struct.nand_chip, %struct.list_head, i32, [0 x %struct.denali_chip_sel] }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.8 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.11 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip_sel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_denali_dt__172_258_denali_dt_driver_init6 = internal global ptr @denali_dt_driver_init, section ".initcall6.init", align 4
@denali_dt_driver = internal global %struct.platform_driver { ptr @denali_dt_probe, ptr @denali_dt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @denali_nand_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_denali_dt_driver_exit = internal global ptr @denali_dt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"denali_dt.file=drivers/mtd/nand/raw/denali_dt\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [25 x i8] c"denali_dt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [28 x i8] c"denali_dt.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [59 x i8] c"denali_dt.description=DT driver for Denali NAND controller\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"denali-nand-dt\00", align 1
@denali_nand_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-denali-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @denali_socfpga_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-denali-nand-v5a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @denali_uniphier_v5a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-denali-nand-v5b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @denali_uniphier_v5b_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/denali_dt.c\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"denali_reg\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"nand_data\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"nand_x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ecc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@denali_socfpga_data = internal constant %struct.denali_dt_data { i32 0, i32 1, i32 2, ptr @denali_socfpga_ecc_caps }, align 4
@denali_uniphier_v5a_data = internal constant %struct.denali_dt_data { i32 0, i32 3, i32 8, ptr @denali_uniphier_v5a_ecc_caps }, align 4
@denali_uniphier_v5b_data = internal constant %struct.denali_dt_data { i32 1281, i32 3, i32 8, ptr @denali_uniphier_v5b_ecc_caps }, align 4
@denali_socfpga_ecc_caps = internal constant %struct.nand_ecc_caps { ptr @denali_socfpga_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, align 4
@denali_socfpga_ecc_caps_stepinfo = internal constant %struct.nand_ecc_step_info { i32 512, ptr @denali_socfpga_ecc_caps_strengths, i32 2 }, align 4
@denali_socfpga_ecc_caps_strengths = internal constant [2 x i32] [i32 8, i32 15], align 4
@denali_uniphier_v5a_ecc_caps = internal constant %struct.nand_ecc_caps { ptr @denali_uniphier_v5a_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, align 4
@denali_uniphier_v5a_ecc_caps_stepinfo = internal constant %struct.nand_ecc_step_info { i32 1024, ptr @denali_uniphier_v5a_ecc_caps_strengths, i32 3 }, align 4
@denali_uniphier_v5a_ecc_caps_strengths = internal constant [3 x i32] [i32 8, i32 16, i32 24], align 4
@denali_uniphier_v5b_ecc_caps = internal constant %struct.nand_ecc_caps { ptr @denali_uniphier_v5b_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, align 4
@denali_uniphier_v5b_ecc_caps_stepinfo = internal constant %struct.nand_ecc_step_info { i32 1024, ptr @denali_uniphier_v5b_ecc_caps_strengths, i32 2 }, align 4
@denali_uniphier_v5b_ecc_caps_strengths = internal constant [2 x i32] [i32 8, i32 16], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_denali_dt_driver_exit, ptr @__initcall__kmod_denali_dt__172_258_denali_dt_driver_init6, ptr @denali_dt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @denali_dt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @denali_dt_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @denali_dt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @denali_dt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_dt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 148, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %126, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %126

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 4
  %11 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 17
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.denali_dt_data, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 18
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.denali_dt_data, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 14
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.denali_dt_data, ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 19
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %23 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 8
  store i32 %22, ptr %23, align 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %126, label %25

25:                                               ; preds = %9
  %26 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %27 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %26 to i32
  br label %126

31:                                               ; preds = %25
  %32 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #6
  %33 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 6
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %126

37:                                               ; preds = %31
  %38 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  %39 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  br label %126

43:                                               ; preds = %37
  %44 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %45 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  br label %126

49:                                               ; preds = %43
  %50 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  %51 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = ptrtoint ptr %50 to i32
  br label %126

55:                                               ; preds = %49
  %56 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %57 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 4
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = ptrtoint ptr %56 to i32
  br label %126

61:                                               ; preds = %55
  %62 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %63 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 5
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = ptrtoint ptr %62 to i32
  br label %126

67:                                               ; preds = %61
  %68 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %38)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %126

70:                                               ; preds = %67
  %71 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %44)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %123

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %50)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %73
  %77 = tail call i32 @clk_get_rate(ptr noundef %38) #6
  %78 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 3
  store i32 %77, ptr %78, align 4
  %79 = tail call i32 @clk_get_rate(ptr noundef %44) #6
  %80 = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 4
  store i32 %79, ptr %80, align 4
  %81 = tail call i32 @reset_control_deassert(ptr noundef %62) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %76
  %84 = tail call i32 @reset_control_deassert(ptr noundef %56) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #6
  %87 = tail call i32 @denali_init(ptr noundef nonnull %3) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %91 = load ptr, ptr %90, align 8
  %92 = tail call ptr @of_get_next_child(ptr noundef %91, ptr noundef null) #6
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %99, %89
  %95 = phi ptr [ %101, %99 ], [ %92, %89 ]
  %96 = tail call fastcc i32 @denali_dt_chip_init(ptr noundef nonnull %3, ptr noundef nonnull %95)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @of_node_put(ptr noundef nonnull %95) #6
  tail call void @denali_remove(ptr noundef nonnull %3) #6
  br label %105

99:                                               ; preds = %94
  %100 = load ptr, ptr %90, align 8
  %101 = tail call ptr @of_get_next_child(ptr noundef %100, ptr noundef nonnull %95) #6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %94

103:                                              ; preds = %99, %89
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %104, align 8
  br label %126

105:                                              ; preds = %98, %86
  %106 = phi i32 [ %87, %86 ], [ %96, %98 ]
  %107 = load ptr, ptr %57, align 4
  %108 = tail call i32 @reset_control_assert(ptr noundef %107) #6
  %109 = load ptr, ptr %63, align 4
  br label %110

110:                                              ; preds = %105, %83
  %111 = phi ptr [ %62, %83 ], [ %109, %105 ]
  %112 = phi i32 [ %84, %83 ], [ %106, %105 ]
  %113 = tail call i32 @reset_control_assert(ptr noundef %111) #6
  %114 = load ptr, ptr %51, align 4
  br label %115

115:                                              ; preds = %110, %76
  %116 = phi ptr [ %50, %76 ], [ %114, %110 ]
  %117 = phi i32 [ %81, %76 ], [ %112, %110 ]
  tail call void @clk_disable(ptr noundef %116) #6
  tail call void @clk_unprepare(ptr noundef %116) #6
  %118 = load ptr, ptr %45, align 4
  br label %119

119:                                              ; preds = %115, %73
  %120 = phi ptr [ %44, %73 ], [ %118, %115 ]
  %121 = phi i32 [ %74, %73 ], [ %117, %115 ]
  tail call void @clk_disable(ptr noundef %120) #6
  tail call void @clk_unprepare(ptr noundef %120) #6
  %122 = load ptr, ptr %39, align 4
  br label %123

123:                                              ; preds = %119, %70
  %124 = phi ptr [ %38, %70 ], [ %122, %119 ]
  %125 = phi i32 [ %71, %70 ], [ %121, %119 ]
  tail call void @clk_disable(ptr noundef %124) #6
  tail call void @clk_unprepare(ptr noundef %124) #6
  br label %126

126:                                              ; preds = %123, %103, %67, %65, %59, %53, %47, %41, %35, %29, %9, %8, %1
  %127 = phi i32 [ -22, %8 ], [ %30, %29 ], [ %36, %35 ], [ %42, %41 ], [ %48, %47 ], [ %54, %53 ], [ %60, %59 ], [ %66, %65 ], [ %125, %123 ], [ 0, %103 ], [ -12, %1 ], [ %22, %9 ], [ %68, %67 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @denali_dt_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @denali_remove(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #6
  %10 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.denali_dt, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @denali_dt_chip_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 4) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.denali_controller, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 36) #6
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %12 = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 1440) #6
  %13 = select i1 %10, i32 -1, i32 %12
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %13, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.denali_chip, ptr %14, i32 0, i32 2
  store i32 %4, ptr %17, align 8
  %18 = icmp eq i32 %4, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 56, i32 25
  %21 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 13
  br label %22

22:                                               ; preds = %33, %19
  %23 = phi i32 [ 0, %19 ], [ %34, %33 ]
  %24 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %23, ptr noundef nonnull %3) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, ptr %3, align 4
  %28 = getelementptr %struct.denali_chip, ptr %14, i32 0, i32 3, i32 %23
  store i32 %27, ptr %28, align 4
  store ptr %1, ptr %20, align 8
  %29 = load ptr, ptr %21, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %21) #6
  br label %33

33:                                               ; preds = %31, %26
  %34 = add nuw nsw i32 %23, 1
  %35 = icmp eq i32 %34, %4
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %16
  %37 = call i32 @denali_chip_init(ptr noundef %0, ptr noundef nonnull %14) #6
  br label %38

38:                                               ; preds = %36, %22, %6, %2
  %39 = phi i32 [ %37, %36 ], [ %4, %2 ], [ -12, %6 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @denali_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_chip_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_calc_ecc_bytes(i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
