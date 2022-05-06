; ModuleID = '/llk/IR/drivers/clk/qcom/clk-rpm.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-rpm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.rpm_clk_desc = type { ptr, i32 }
%struct.clk_rpm = type { i32, i32, i8, i32, i8, i8, ptr, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rpm_cc = type { ptr, ptr, i32, i32, %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_rpm__170_621_rpm_clk_init1 = internal global ptr @rpm_clk_init, section ".initcall1.init", align 4
@rpm_clk_driver = internal global %struct.platform_driver { ptr @rpm_clk_probe, ptr @rpm_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rpm_clk_exit = internal global ptr @rpm_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [57 x i8] c"clk_rpm.description=Qualcomm RPM Clock Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [38 x i8] c"clk_rpm.file=drivers/clk/qcom/clk-rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [23 x i8] c"clk_rpm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [36 x i8] c"clk_rpm.alias=platform:qcom-clk-rpm\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"qcom-clk-rpm\00", align 1
@rpm_clk_match_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8660 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-apq8060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8660 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_apq8064 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-ipq806x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_ipq806x }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to retrieve handle to RPM\0A\00", align 1
@rpm_clk_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&rcc->xo_lock\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Error registering RPM Clock driver (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.qcom_rpm_clk_hw_get = private unnamed_addr constant [20 x i8] c"qcom_rpm_clk_hw_get\00", align 1
@rpm_clk_msm8660 = internal constant %struct.rpm_clk_desc { ptr @msm8660_clks, i32 25 }, align 4
@rpm_clk_apq8064 = internal constant %struct.rpm_clk_desc { ptr @apq8064_clks, i32 30 }, align 4
@rpm_clk_ipq806x = internal constant %struct.rpm_clk_desc { ptr @ipq806x_clks, i32 34 }, align 4
@msm8660_clks = internal global [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @msm8660_afab_clk, ptr @msm8660_afab_a_clk, ptr @msm8660_cfpb_clk, ptr @msm8660_cfpb_a_clk, ptr null, ptr null, ptr @msm8660_daytona_clk, ptr @msm8660_daytona_a_clk, ptr @msm8660_ebi1_clk, ptr @msm8660_ebi1_a_clk, ptr @msm8660_mmfab_clk, ptr @msm8660_mmfab_a_clk, ptr @msm8660_mmfpb_clk, ptr @msm8660_mmfpb_a_clk, ptr @msm8660_sfab_clk, ptr @msm8660_sfab_a_clk, ptr @msm8660_sfpb_clk, ptr @msm8660_sfpb_a_clk, ptr @msm8660_smi_clk, ptr @msm8660_smi_a_clk, ptr @msm8660_pll4_clk], align 4
@msm8660_afab_clk = internal global %struct.clk_rpm { i32 2, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_afab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 }, ptr null, ptr null }, align 4
@msm8660_afab_a_clk = internal global %struct.clk_rpm { i32 2, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_afab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, ptr null }, align 4
@msm8660_cfpb_clk = internal global %struct.clk_rpm { i32 7, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_cfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 }, ptr null, ptr null }, align 4
@msm8660_cfpb_a_clk = internal global %struct.clk_rpm { i32 7, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_cfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, ptr null, ptr null }, align 4
@msm8660_daytona_clk = internal global %struct.clk_rpm { i32 10, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_daytona_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, ptr null }, align 4
@msm8660_daytona_a_clk = internal global %struct.clk_rpm { i32 10, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_daytona_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, ptr null }, align 4
@msm8660_ebi1_clk = internal global %struct.clk_rpm { i32 12, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_ebi1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, ptr null }, align 4
@msm8660_ebi1_a_clk = internal global %struct.clk_rpm { i32 12, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_ebi1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, ptr null }, align 4
@msm8660_mmfab_clk = internal global %struct.clk_rpm { i32 16, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, ptr null }, align 4
@msm8660_mmfab_a_clk = internal global %struct.clk_rpm { i32 16, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, ptr null }, align 4
@msm8660_mmfpb_clk = internal global %struct.clk_rpm { i32 14, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, ptr null }, align 4
@msm8660_mmfpb_a_clk = internal global %struct.clk_rpm { i32 14, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, ptr null, ptr null }, align 4
@msm8660_sfab_clk = internal global %struct.clk_rpm { i32 128, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 }, ptr null, ptr null }, align 4
@msm8660_sfab_a_clk = internal global %struct.clk_rpm { i32 128, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, ptr null }, align 4
@msm8660_sfpb_clk = internal global %struct.clk_rpm { i32 125, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, ptr null }, align 4
@msm8660_sfpb_a_clk = internal global %struct.clk_rpm { i32 125, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, ptr null }, align 4
@msm8660_smi_clk = internal global %struct.clk_rpm { i32 126, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_smi_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 }, ptr null, ptr null }, align 4
@msm8660_smi_a_clk = internal global %struct.clk_rpm { i32 126, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_smi_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 }, ptr null, ptr null }, align 4
@msm8660_pll4_clk = internal global %struct.clk_rpm { i32 20, i32 0, i8 0, i32 540672000, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 }, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"afab_clk\00", align 1
@clk_rpm_ops = internal constant %struct.clk_ops { ptr @clk_rpm_prepare, ptr @clk_rpm_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rpm_recalc_rate, ptr @clk_rpm_round_rate, ptr null, ptr null, ptr null, ptr @clk_rpm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"pxo_board\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.7 = internal global %struct.clk_init_data { ptr @.str.5, ptr @clk_rpm_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, align 4
@rpm_clk_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpm_clk_lock, i64 12), ptr getelementptr (i8, ptr @rpm_clk_lock, i64 12) } }, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"afab_a_clk\00", align 1
@.compoundliteral.9 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.10 = internal global %struct.clk_init_data { ptr @.str.8, ptr @clk_rpm_ops, ptr @.compoundliteral.9, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"cfpb_clk\00", align 1
@.compoundliteral.12 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.13 = internal global %struct.clk_init_data { ptr @.str.11, ptr @clk_rpm_ops, ptr @.compoundliteral.12, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"cfpb_a_clk\00", align 1
@.compoundliteral.15 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.16 = internal global %struct.clk_init_data { ptr @.str.14, ptr @clk_rpm_ops, ptr @.compoundliteral.15, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"daytona_clk\00", align 1
@.compoundliteral.18 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.19 = internal global %struct.clk_init_data { ptr @.str.17, ptr @clk_rpm_ops, ptr @.compoundliteral.18, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"daytona_a_clk\00", align 1
@.compoundliteral.21 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.22 = internal global %struct.clk_init_data { ptr @.str.20, ptr @clk_rpm_ops, ptr @.compoundliteral.21, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"ebi1_clk\00", align 1
@.compoundliteral.24 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.25 = internal global %struct.clk_init_data { ptr @.str.23, ptr @clk_rpm_ops, ptr @.compoundliteral.24, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"ebi1_a_clk\00", align 1
@.compoundliteral.27 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.28 = internal global %struct.clk_init_data { ptr @.str.26, ptr @clk_rpm_ops, ptr @.compoundliteral.27, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"mmfab_clk\00", align 1
@.compoundliteral.30 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.31 = internal global %struct.clk_init_data { ptr @.str.29, ptr @clk_rpm_ops, ptr @.compoundliteral.30, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"mmfab_a_clk\00", align 1
@.compoundliteral.33 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.32, ptr @clk_rpm_ops, ptr @.compoundliteral.33, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"mmfpb_clk\00", align 1
@.compoundliteral.36 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.35, ptr @clk_rpm_ops, ptr @.compoundliteral.36, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.38 = private unnamed_addr constant [12 x i8] c"mmfpb_a_clk\00", align 1
@.compoundliteral.39 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.38, ptr @clk_rpm_ops, ptr @.compoundliteral.39, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"sfab_clk\00", align 1
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.43 = internal global %struct.clk_init_data { ptr @.str.41, ptr @clk_rpm_ops, ptr @.compoundliteral.42, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"sfab_a_clk\00", align 1
@.compoundliteral.45 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.46 = internal global %struct.clk_init_data { ptr @.str.44, ptr @clk_rpm_ops, ptr @.compoundliteral.45, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [9 x i8] c"sfpb_clk\00", align 1
@.compoundliteral.48 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.47, ptr @clk_rpm_ops, ptr @.compoundliteral.48, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.50 = private unnamed_addr constant [11 x i8] c"sfpb_a_clk\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.50, ptr @clk_rpm_ops, ptr @.compoundliteral.51, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"smi_clk\00", align 1
@.compoundliteral.54 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.55 = internal global %struct.clk_init_data { ptr @.str.53, ptr @clk_rpm_ops, ptr @.compoundliteral.54, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.56 = private unnamed_addr constant [10 x i8] c"smi_a_clk\00", align 1
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.58 = internal global %struct.clk_init_data { ptr @.str.56, ptr @clk_rpm_ops, ptr @.compoundliteral.57, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [9 x i8] c"pll4_clk\00", align 1
@clk_rpm_fixed_ops = internal constant %struct.clk_ops { ptr @clk_rpm_fixed_prepare, ptr @clk_rpm_fixed_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rpm_recalc_rate, ptr @clk_rpm_round_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.60 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.60], align 4
@.compoundliteral.62 = internal global %struct.clk_init_data { ptr @.str.59, ptr @clk_rpm_fixed_ops, ptr @.compoundliteral.61, ptr null, ptr null, i8 1, i32 0 }, align 4
@apq8064_clks = internal global [30 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @apq8064_afab_clk, ptr @apq8064_afab_a_clk, ptr @apq8064_cfpb_clk, ptr @apq8064_cfpb_a_clk, ptr @apq8064_qdss_clk, ptr @apq8064_qdss_a_clk, ptr @apq8064_daytona_clk, ptr @apq8064_daytona_a_clk, ptr @apq8064_ebi1_clk, ptr @apq8064_ebi1_a_clk, ptr @apq8064_mmfab_clk, ptr @apq8064_mmfab_a_clk, ptr @apq8064_mmfpb_clk, ptr @apq8064_mmfpb_a_clk, ptr @apq8064_sfab_clk, ptr @apq8064_sfab_a_clk, ptr @apq8064_sfpb_clk, ptr @apq8064_sfpb_a_clk, ptr null, ptr null, ptr null, ptr @apq8064_xo_d0_clk, ptr @apq8064_xo_d1_clk, ptr @apq8064_xo_a0_clk, ptr @apq8064_xo_a1_clk, ptr @apq8064_xo_a2_clk], align 4
@apq8064_afab_clk = internal global %struct.clk_rpm { i32 2, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_afab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, ptr null }, align 4
@apq8064_afab_a_clk = internal global %struct.clk_rpm { i32 2, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_afab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr null, ptr null }, align 4
@apq8064_cfpb_clk = internal global %struct.clk_rpm { i32 7, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_cfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 }, ptr null, ptr null }, align 4
@apq8064_cfpb_a_clk = internal global %struct.clk_rpm { i32 7, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_cfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 }, ptr null, ptr null }, align 4
@apq8064_qdss_clk = internal global %struct.clk_rpm { i32 124, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_qdss_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, ptr null }, align 4
@apq8064_qdss_a_clk = internal global %struct.clk_rpm { i32 124, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_qdss_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 }, ptr null, ptr null }, align 4
@apq8064_daytona_clk = internal global %struct.clk_rpm { i32 10, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_daytona_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 }, ptr null, ptr null }, align 4
@apq8064_daytona_a_clk = internal global %struct.clk_rpm { i32 10, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_daytona_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, ptr null }, align 4
@apq8064_ebi1_clk = internal global %struct.clk_rpm { i32 12, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_ebi1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, ptr null }, align 4
@apq8064_ebi1_a_clk = internal global %struct.clk_rpm { i32 12, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_ebi1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 }, ptr null, ptr null }, align 4
@apq8064_mmfab_clk = internal global %struct.clk_rpm { i32 16, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.86 }, ptr null, ptr null }, align 4
@apq8064_mmfab_a_clk = internal global %struct.clk_rpm { i32 16, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 }, ptr null, ptr null }, align 4
@apq8064_mmfpb_clk = internal global %struct.clk_rpm { i32 14, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.90 }, ptr null, ptr null }, align 4
@apq8064_mmfpb_a_clk = internal global %struct.clk_rpm { i32 14, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 }, ptr null, ptr null }, align 4
@apq8064_sfab_clk = internal global %struct.clk_rpm { i32 128, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 }, ptr null, ptr null }, align 4
@apq8064_sfab_a_clk = internal global %struct.clk_rpm { i32 128, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 }, ptr null, ptr null }, align 4
@apq8064_sfpb_clk = internal global %struct.clk_rpm { i32 125, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 }, ptr null, ptr null }, align 4
@apq8064_sfpb_a_clk = internal global %struct.clk_rpm { i32 125, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 }, ptr null, ptr null }, align 4
@apq8064_xo_d0_clk = internal global %struct.clk_rpm { i32 8, i32 0, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 }, ptr null, ptr null }, align 4
@apq8064_xo_d1_clk = internal global %struct.clk_rpm { i32 8, i32 8, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 }, ptr null, ptr null }, align 4
@apq8064_xo_a0_clk = internal global %struct.clk_rpm { i32 8, i32 16, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, ptr null, ptr null }, align 4
@apq8064_xo_a1_clk = internal global %struct.clk_rpm { i32 8, i32 24, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, ptr null }, align 4
@apq8064_xo_a2_clk = internal global %struct.clk_rpm { i32 8, i32 28, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, ptr null }, align 4
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.64 = internal global %struct.clk_init_data { ptr @.str.5, ptr @clk_rpm_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.65 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.66 = internal global %struct.clk_init_data { ptr @.str.8, ptr @clk_rpm_ops, ptr @.compoundliteral.65, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.67 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.68 = internal global %struct.clk_init_data { ptr @.str.11, ptr @clk_rpm_ops, ptr @.compoundliteral.67, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.69 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.70 = internal global %struct.clk_init_data { ptr @.str.14, ptr @clk_rpm_ops, ptr @.compoundliteral.69, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.71 = private unnamed_addr constant [9 x i8] c"qdss_clk\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.71, ptr @clk_rpm_ops, ptr @.compoundliteral.72, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.74 = private unnamed_addr constant [11 x i8] c"qdss_a_clk\00", align 1
@.compoundliteral.75 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.76 = internal global %struct.clk_init_data { ptr @.str.74, ptr @clk_rpm_ops, ptr @.compoundliteral.75, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.77 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.78 = internal global %struct.clk_init_data { ptr @.str.17, ptr @clk_rpm_ops, ptr @.compoundliteral.77, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.80 = internal global %struct.clk_init_data { ptr @.str.20, ptr @clk_rpm_ops, ptr @.compoundliteral.79, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.81 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.82 = internal global %struct.clk_init_data { ptr @.str.23, ptr @clk_rpm_ops, ptr @.compoundliteral.81, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.83 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.84 = internal global %struct.clk_init_data { ptr @.str.26, ptr @clk_rpm_ops, ptr @.compoundliteral.83, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.86 = internal global %struct.clk_init_data { ptr @.str.29, ptr @clk_rpm_ops, ptr @.compoundliteral.85, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.88 = internal global %struct.clk_init_data { ptr @.str.32, ptr @clk_rpm_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.89 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.90 = internal global %struct.clk_init_data { ptr @.str.35, ptr @clk_rpm_ops, ptr @.compoundliteral.89, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.91 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.92 = internal global %struct.clk_init_data { ptr @.str.38, ptr @clk_rpm_ops, ptr @.compoundliteral.91, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.94 = internal global %struct.clk_init_data { ptr @.str.41, ptr @clk_rpm_ops, ptr @.compoundliteral.93, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.95 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.96 = internal global %struct.clk_init_data { ptr @.str.44, ptr @clk_rpm_ops, ptr @.compoundliteral.95, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.98 = internal global %struct.clk_init_data { ptr @.str.47, ptr @clk_rpm_ops, ptr @.compoundliteral.97, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.100 = internal global %struct.clk_init_data { ptr @.str.50, ptr @clk_rpm_ops, ptr @.compoundliteral.99, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.101 = private unnamed_addr constant [10 x i8] c"xo_d0_clk\00", align 1
@clk_rpm_xo_ops = internal constant %struct.clk_ops { ptr @clk_rpm_xo_prepare, ptr @clk_rpm_xo_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.102 = private unnamed_addr constant [10 x i8] c"cxo_board\00", align 1
@.compoundliteral.103 = internal global [1 x ptr] [ptr @.str.102], align 4
@.compoundliteral.104 = internal global %struct.clk_init_data { ptr @.str.101, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.103, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.105 = private unnamed_addr constant [10 x i8] c"xo_d1_clk\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str.102], align 4
@.compoundliteral.107 = internal global %struct.clk_init_data { ptr @.str.105, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.108 = private unnamed_addr constant [10 x i8] c"xo_a0_clk\00", align 1
@.compoundliteral.109 = internal global [1 x ptr] [ptr @.str.102], align 4
@.compoundliteral.110 = internal global %struct.clk_init_data { ptr @.str.108, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.109, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.111 = private unnamed_addr constant [10 x i8] c"xo_a1_clk\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.102], align 4
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.111, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.114 = private unnamed_addr constant [10 x i8] c"xo_a2_clk\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.102], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.114, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, align 4
@ipq806x_clks = internal global [34 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @ipq806x_afab_clk, ptr @ipq806x_afab_a_clk, ptr @ipq806x_cfpb_clk, ptr @ipq806x_cfpb_a_clk, ptr null, ptr null, ptr @ipq806x_daytona_clk, ptr @ipq806x_daytona_a_clk, ptr @ipq806x_ebi1_clk, ptr @ipq806x_ebi1_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @ipq806x_sfab_clk, ptr @ipq806x_sfab_a_clk, ptr @ipq806x_sfpb_clk, ptr @ipq806x_sfpb_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipq806x_nss_fabric_0_clk, ptr @ipq806x_nss_fabric_0_a_clk, ptr @ipq806x_nss_fabric_1_clk, ptr @ipq806x_nss_fabric_1_a_clk], align 4
@ipq806x_afab_clk = internal global %struct.clk_rpm { i32 2, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_afab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 }, ptr null, ptr null }, align 4
@ipq806x_afab_a_clk = internal global %struct.clk_rpm { i32 2, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_afab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 }, ptr null, ptr null }, align 4
@ipq806x_cfpb_clk = internal global %struct.clk_rpm { i32 7, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_cfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, ptr null, ptr null }, align 4
@ipq806x_cfpb_a_clk = internal global %struct.clk_rpm { i32 7, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_cfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 }, ptr null, ptr null }, align 4
@ipq806x_daytona_clk = internal global %struct.clk_rpm { i32 10, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_daytona_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 }, ptr null, ptr null }, align 4
@ipq806x_daytona_a_clk = internal global %struct.clk_rpm { i32 10, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_daytona_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 }, ptr null, ptr null }, align 4
@ipq806x_ebi1_clk = internal global %struct.clk_rpm { i32 12, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_ebi1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.130 }, ptr null, ptr null }, align 4
@ipq806x_ebi1_a_clk = internal global %struct.clk_rpm { i32 12, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_ebi1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.132 }, ptr null, ptr null }, align 4
@ipq806x_sfab_clk = internal global %struct.clk_rpm { i32 128, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 }, ptr null, ptr null }, align 4
@ipq806x_sfab_a_clk = internal global %struct.clk_rpm { i32 128, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 }, ptr null, ptr null }, align 4
@ipq806x_sfpb_clk = internal global %struct.clk_rpm { i32 125, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.138 }, ptr null, ptr null }, align 4
@ipq806x_sfpb_a_clk = internal global %struct.clk_rpm { i32 125, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, ptr null, ptr null }, align 4
@ipq806x_nss_fabric_0_clk = internal global %struct.clk_rpm { i32 134, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_0_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr null, ptr null }, align 4
@ipq806x_nss_fabric_0_a_clk = internal global %struct.clk_rpm { i32 134, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_0_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 }, ptr null, ptr null }, align 4
@ipq806x_nss_fabric_1_clk = internal global %struct.clk_rpm { i32 135, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 }, ptr null, ptr null }, align 4
@ipq806x_nss_fabric_1_a_clk = internal global %struct.clk_rpm { i32 135, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, ptr null, ptr null }, align 4
@.compoundliteral.117 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.118 = internal global %struct.clk_init_data { ptr @.str.5, ptr @clk_rpm_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.119 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.120 = internal global %struct.clk_init_data { ptr @.str.8, ptr @clk_rpm_ops, ptr @.compoundliteral.119, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.121 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.11, ptr @clk_rpm_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.123 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.124 = internal global %struct.clk_init_data { ptr @.str.14, ptr @clk_rpm_ops, ptr @.compoundliteral.123, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.125 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.126 = internal global %struct.clk_init_data { ptr @.str.17, ptr @clk_rpm_ops, ptr @.compoundliteral.125, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.127 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.128 = internal global %struct.clk_init_data { ptr @.str.20, ptr @clk_rpm_ops, ptr @.compoundliteral.127, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.129 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.130 = internal global %struct.clk_init_data { ptr @.str.23, ptr @clk_rpm_ops, ptr @.compoundliteral.129, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.131 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.132 = internal global %struct.clk_init_data { ptr @.str.26, ptr @clk_rpm_ops, ptr @.compoundliteral.131, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.134 = internal global %struct.clk_init_data { ptr @.str.41, ptr @clk_rpm_ops, ptr @.compoundliteral.133, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.135 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.136 = internal global %struct.clk_init_data { ptr @.str.44, ptr @clk_rpm_ops, ptr @.compoundliteral.135, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.137 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.138 = internal global %struct.clk_init_data { ptr @.str.47, ptr @clk_rpm_ops, ptr @.compoundliteral.137, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.140 = internal global %struct.clk_init_data { ptr @.str.50, ptr @clk_rpm_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.141 = private unnamed_addr constant [17 x i8] c"nss_fabric_0_clk\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.143 = internal global %struct.clk_init_data { ptr @.str.141, ptr @clk_rpm_ops, ptr @.compoundliteral.142, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.144 = private unnamed_addr constant [19 x i8] c"nss_fabric_0_a_clk\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.146 = internal global %struct.clk_init_data { ptr @.str.144, ptr @clk_rpm_ops, ptr @.compoundliteral.145, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.147 = private unnamed_addr constant [17 x i8] c"nss_fabric_1_clk\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.149 = internal global %struct.clk_init_data { ptr @.str.147, ptr @clk_rpm_ops, ptr @.compoundliteral.148, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.150 = private unnamed_addr constant [19 x i8] c"nss_fabric_1_a_clk\00", align 1
@.compoundliteral.151 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.152 = internal global %struct.clk_init_data { ptr @.str.150, ptr @clk_rpm_ops, ptr @.compoundliteral.151, ptr null, ptr null, i8 1, i32 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_rpm_clk_exit, ptr @__initcall__kmod_clk_rpm__170_621_rpm_clk_init1, ptr @rpm_clk_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rpm_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpm_clk_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rpm_clk_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpm_clk_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_clk_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %70

10:                                               ; preds = %1
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %70, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.rpm_clk_desc, ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %70, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rpm_cc, ptr %17, i32 0, i32 1
  store ptr %14, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpm_cc, ptr %17, i32 0, i32 2
  store i32 %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpm_cc, ptr %17, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @rpm_clk_probe.__key) #8
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %63, label %25

24:                                               ; preds = %48
  br i1 %23, label %63, label %51

25:                                               ; preds = %48, %19
  %26 = phi i32 [ %49, %48 ], [ 0, %19 ]
  %27 = getelementptr ptr, ptr %14, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.clk_rpm, ptr %28, i32 0, i32 8
  store ptr %7, ptr %31, align 4
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr inbounds %struct.clk_rpm, ptr %32, i32 0, i32 9
  store ptr %17, ptr %33, align 4
  %34 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 2147483647, ptr %2, align 4
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %36 [
    i32 20, label %42
    i32 8, label %42
  ]

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.clk_rpm, ptr %34, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @qcom_rpm_write(ptr noundef %38, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %2, i32 noundef 1) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %68

42:                                               ; preds = %30, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %48

43:                                               ; preds = %36
  %44 = load ptr, ptr %37, align 4
  %45 = load i32, ptr %34, align 4
  %46 = call i32 @qcom_rpm_write(ptr noundef %44, i32 noundef 1, i32 noundef %45, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43, %42, %25
  %49 = add nuw i32 %26, 1
  %50 = icmp eq i32 %49, %16
  br i1 %50, label %24, label %25

51:                                               ; preds = %60, %24
  %52 = phi i32 [ %61, %60 ], [ 0, %24 ]
  %53 = getelementptr ptr, ptr %14, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.clk_rpm, ptr %54, i32 0, i32 7
  %58 = call i32 @devm_clk_hw_register(ptr noundef %3, ptr noundef %57) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56, %51
  %61 = add nuw i32 %52, 1
  %62 = icmp eq i32 %61, %16
  br i1 %62, label %63, label %51

63:                                               ; preds = %60, %24, %19
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @of_clk_add_hw_provider(ptr noundef %65, ptr noundef nonnull @qcom_rpm_clk_hw_get, ptr noundef nonnull %17) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63, %56, %43, %41
  %69 = phi i32 [ %66, %63 ], [ %39, %41 ], [ %58, %56 ], [ %46, %43 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %69) #9
  br label %70

70:                                               ; preds = %68, %63, %13, %10, %9
  %71 = phi i32 [ %69, %68 ], [ -19, %9 ], [ -22, %10 ], [ -12, %13 ], [ 0, %63 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_clk_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @qcom_rpm_clk_hw_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpm_cc, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qcom_rpm_clk_hw_get, i32 noundef %4) #9
  br label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rpm_cc, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.clk_rpm, ptr %14, i32 0, i32 7
  br label %18

18:                                               ; preds = %16, %10, %8
  %19 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %17, %16 ], [ inttoptr (i32 -2 to ptr), %10 ]
  ret ptr %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rpm_prepare(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @rpm_clk_lock) #8
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -16
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 %9, i32 0
  %16 = getelementptr inbounds %struct.clk_rpm, ptr %7, i32 0, i32 4
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.clk_rpm, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.clk_rpm, ptr %7, i32 0, i32 2
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 %21, i32 0
  br label %26

26:                                               ; preds = %19, %11
  %27 = phi i32 [ 0, %11 ], [ %21, %19 ]
  %28 = phi i32 [ 0, %11 ], [ %25, %19 ]
  %29 = tail call i32 @llvm.umax.i32(i32 %9, i32 %27)
  %30 = getelementptr i8, ptr %0, i32 -7
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %33 = add i32 %29, 999
  %34 = udiv i32 %33, 1000
  %35 = select i1 %32, i32 %34, i32 1
  store i32 %35, ptr %4, align 4
  %36 = getelementptr i8, ptr %0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %5, align 4
  %39 = call i32 @qcom_rpm_write(ptr noundef %37, i32 noundef 0, i32 noundef %38, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %26
  %42 = call i32 @llvm.umax.i32(i32 %15, i32 %28)
  %43 = load i8, ptr %30, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  %45 = icmp ne i32 %42, 0
  %46 = zext i1 %45 to i32
  %47 = select i1 %44, i32 %42, i32 %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %48 = add i32 %47, 999
  %49 = udiv i32 %48, 1000
  store i32 %49, ptr %3, align 4
  %50 = load ptr, ptr %36, align 4
  %51 = load i32, ptr %5, align 4
  %52 = call i32 @qcom_rpm_write(ptr noundef %50, i32 noundef 1, i32 noundef %51, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %55 = add i32 %27, 999
  %56 = udiv i32 %55, 1000
  store i32 %56, ptr %2, align 4
  %57 = load ptr, ptr %36, align 4
  %58 = load i32, ptr %5, align 4
  %59 = call i32 @qcom_rpm_write(ptr noundef %57, i32 noundef 0, i32 noundef %58, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54, %41, %1
  %62 = getelementptr i8, ptr %0, i32 -8
  store i8 1, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %54, %26
  %64 = phi i32 [ 0, %61 ], [ %59, %54 ], [ %39, %26 ]
  call void @mutex_unlock(ptr noundef nonnull @rpm_clk_lock) #8
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_rpm_unprepare(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @rpm_clk_lock) #8
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.clk_rpm, ptr %6, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.clk_rpm, ptr %6, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_rpm, ptr %6, i32 0, i32 2
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 %16, i32 0
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i32 [ 0, %10 ], [ %16, %14 ]
  %23 = phi i32 [ 0, %10 ], [ %20, %14 ]
  %24 = getelementptr i8, ptr %0, i32 -7
  %25 = load i8, ptr %24, align 1, !range !8
  %26 = icmp eq i8 %25, 0
  %27 = icmp ne i32 %22, 0
  %28 = zext i1 %27 to i32
  %29 = select i1 %26, i32 %22, i32 %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %30 = add i32 %29, 999
  %31 = udiv i32 %30, 1000
  store i32 %31, ptr %3, align 4
  %32 = getelementptr i8, ptr %0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %4, align 4
  %35 = call i32 @qcom_rpm_write(ptr noundef %33, i32 noundef 0, i32 noundef %34, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %21
  %38 = load i8, ptr %24, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = icmp ne i32 %23, 0
  %41 = zext i1 %40 to i32
  %42 = select i1 %39, i32 %23, i32 %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %43 = add i32 %42, 999
  %44 = udiv i32 %43, 1000
  store i32 %44, ptr %2, align 4
  %45 = load ptr, ptr %32, align 4
  %46 = load i32, ptr %4, align 4
  %47 = call i32 @qcom_rpm_write(ptr noundef %45, i32 noundef 1, i32 noundef %46, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = getelementptr i8, ptr %0, i32 -8
  store i8 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %37, %21, %1
  call void @mutex_unlock(ptr noundef nonnull @rpm_clk_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpm_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpm_round_rate(ptr nocapture noundef readnone %0, i32 noundef returned %1, ptr nocapture noundef readnone %2) #6 {
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rpm_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  tail call void @mutex_lock(ptr noundef nonnull @rpm_clk_lock) #8
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 %1, i32 0
  %17 = getelementptr inbounds %struct.clk_rpm, ptr %8, i32 0, i32 4
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.clk_rpm, ptr %8, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.clk_rpm, ptr %8, i32 0, i32 2
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 %22, i32 0
  br label %27

27:                                               ; preds = %20, %12
  %28 = phi i32 [ 0, %12 ], [ %22, %20 ]
  %29 = phi i32 [ 0, %12 ], [ %26, %20 ]
  %30 = tail call i32 @llvm.umax.i32(i32 %1, i32 %28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %31 = add i32 %30, 999
  %32 = udiv i32 %31, 1000
  store i32 %32, ptr %5, align 4
  %33 = getelementptr i8, ptr %0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %6, align 4
  %36 = call i32 @qcom_rpm_write(ptr noundef %34, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = call i32 @llvm.umax.i32(i32 %16, i32 %29)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %40 = add i32 %39, 999
  %41 = udiv i32 %40, 1000
  store i32 %41, ptr %4, align 4
  %42 = load ptr, ptr %33, align 4
  %43 = load i32, ptr %6, align 4
  %44 = call i32 @qcom_rpm_write(ptr noundef %42, i32 noundef 1, i32 noundef %43, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %0, i32 -12
  store i32 %1, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %38, %27, %3
  %49 = phi i32 [ %36, %27 ], [ %44, %38 ], [ 0, %46 ], [ 0, %3 ]
  call void @mutex_unlock(ptr noundef nonnull @rpm_clk_lock) #8
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rpm_fixed_prepare(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 1, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @qcom_rpm_write(ptr noundef %5, i32 noundef 0, i32 noundef %6, ptr noundef nonnull %2, i32 noundef 1) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -8
  store i8 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_rpm_fixed_unprepare(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @qcom_rpm_write(ptr noundef %5, i32 noundef 0, i32 noundef %6, ptr noundef nonnull %2, i32 noundef 1) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -8
  store i8 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rpm_xo_prepare(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %7 = getelementptr inbounds %struct.rpm_cc, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.rpm_cc, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -20
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 2, %11
  %13 = or i32 %12, %9
  store i32 %13, ptr %2, align 4
  %14 = getelementptr i8, ptr %0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @qcom_rpm_write(ptr noundef %15, i32 noundef 0, i32 noundef %6, ptr noundef nonnull %2, i32 noundef 1) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 -8
  store i8 1, ptr %19, align 4
  %20 = load i32, ptr %2, align 4
  store i32 %20, ptr %8, align 4
  br label %21

21:                                               ; preds = %18, %1
  call void @mutex_unlock(ptr noundef %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_rpm_xo_unprepare(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %7 = getelementptr inbounds %struct.rpm_cc, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.rpm_cc, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -20
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 2, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  store i32 %14, ptr %2, align 4
  %15 = getelementptr i8, ptr %0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @qcom_rpm_write(ptr noundef %16, i32 noundef 0, i32 noundef %6, ptr noundef nonnull %2, i32 noundef 1) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 -8
  store i8 0, ptr %20, align 4
  %21 = load i32, ptr %2, align 4
  store i32 %21, ptr %8, align 4
  br label %22

22:                                               ; preds = %19, %1
  call void @mutex_unlock(ptr noundef %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
