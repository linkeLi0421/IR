; ModuleID = '/llk/IR/drivers/regulator/qcom_smd-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom_smd-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rpm_regulator_data = type { ptr, i32, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.qcom_rpm_reg = type { ptr, ptr, i32, i32, %struct.regulator_desc, i32, i32, i32, i8 }
%struct.rpm_regulator_req = type { i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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

@rpm_of_match = internal constant [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-mp5496-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_mp5496_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8841-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8841_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8916-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8916_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8226-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8226_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8941-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8941_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8950-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8950_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8953-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8953_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8994-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8994_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8998-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8998_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm660-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm660_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm660l-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm660l_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pma8084-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pma8084_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pmi8994-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pmi8994_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pmi8998-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pmi8998_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pms405-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pms405_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm2250-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm2250_regulators }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [42 x i8] c"description=Qualcomm RPM regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@rpm_mp5496_regulators = internal constant [3 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @mp5496_smpa2, ptr @.str }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @mp5496_ldoa2, ptr @.str.1 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8841_regulators = internal constant [9 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1651535219, i32 1, ptr @pm8x41_hfsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1651535219, i32 2, ptr @pm8841_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1651535219, i32 3, ptr @pm8x41_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1651535219, i32 4, ptr @pm8841_ftsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1651535219, i32 5, ptr @pm8841_ftsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1651535219, i32 6, ptr @pm8841_ftsmps, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.14, i32 1651535219, i32 7, ptr @pm8841_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.16, i32 1651535219, i32 8, ptr @pm8841_ftsmps, ptr @.str.17 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8916_regulators = internal constant [23 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8916_buck_lvo_smps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8916_buck_lvo_smps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8916_buck_lvo_smps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm8916_buck_hvo_smps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8916_nldo, ptr @.str.21 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8916_nldo, ptr @.str.21 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8916_nldo, ptr @.str.21 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8916_pldo, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8916_pldo, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8916_pldo, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8916_pldo, ptr @.str.28 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8916_pldo, ptr @.str.30 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8226_regulators = internal constant [35 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8226_hfsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8226_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8226_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm8226_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pm8226_hfsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8226_nldo, ptr @.str.45 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8226_nldo, ptr @.str.45 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8226_nldo, ptr @.str.46 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8226_nldo, ptr @.str.45 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8226_nldo, ptr @.str.45 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8226_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8226_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8226_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8226_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8226_pldo, ptr @.str.48 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8226_pldo, ptr @.str.48 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8226_pldo, ptr @.str.49 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8226_pldo, ptr @.str.48 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8226_pldo, ptr @.str.49 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8226_pldo, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8226_pldo, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8226_pldo, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8226_pldo, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm8226_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pm8226_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pm8226_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pm8226_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 23, ptr @pm8226_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.57, i32 1634690156, i32 24, ptr @pm8226_nldo, ptr @.str.46 }, %struct.rpm_regulator_data { ptr @.str.58, i32 1634690156, i32 25, ptr @pm8226_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.60, i32 1634690156, i32 26, ptr @pm8226_nldo, ptr @.str.46 }, %struct.rpm_regulator_data { ptr @.str.61, i32 1634690156, i32 27, ptr @pm8226_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 28, ptr @pm8226_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.63, i32 6386550, i32 1, ptr @pm8226_switch, ptr @.str.64 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8941_regulators = internal constant [34 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8x41_hfsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8x41_hfsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8x41_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1635021666, i32 1, ptr @pm8941_boost, ptr null }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8941_nldo, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8941_nldo, ptr @.str.70 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8941_nldo, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8941_nldo, ptr @.str.71 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8941_lnldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8941_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8941_lnldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8941_pldo, ptr @.str.74 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8941_pldo, ptr @.str.75 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8941_pldo, ptr @.str.75 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8941_nldo, ptr @.str.71 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8941_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8941_pldo, ptr @.str.76 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8941_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8941_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8941_pldo, ptr @.str.74 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8941_pldo, ptr @.str.75 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8941_pldo, ptr @.str.74 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm8941_pldo, ptr @.str.74 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pm8941_pldo, ptr @.str.76 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pm8941_pldo, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pm8941_pldo, ptr @.str.75 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 23, ptr @pm8941_pldo, ptr @.str.76 }, %struct.rpm_regulator_data { ptr @.str.57, i32 1634690156, i32 24, ptr @pm8941_pldo, ptr @.str.76 }, %struct.rpm_regulator_data { ptr @.str.63, i32 6386550, i32 1, ptr @pm8941_switch, ptr @.str.70 }, %struct.rpm_regulator_data { ptr @.str.78, i32 6386550, i32 2, ptr @pm8941_switch, ptr @.str.70 }, %struct.rpm_regulator_data { ptr @.str.79, i32 6386550, i32 3, ptr @pm8941_switch, ptr @.str.70 }, %struct.rpm_regulator_data { ptr @.str.80, i32 6386550, i32 4, ptr @pm8941_switch, ptr @.str.81 }, %struct.rpm_regulator_data { ptr @.str.82, i32 6386550, i32 5, ptr @pm8941_switch, ptr @.str.81 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8950_regulators = internal constant [30 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8950_hfsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8950_hfsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8950_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm8950_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pm8950_ftsmps2p5, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634758003, i32 6, ptr @pm8950_hfsmps, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8950_ult_nldo, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8950_ult_nldo, ptr @.str.87 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8950_ult_nldo, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8950_ult_pldo, ptr @.str.89 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8950_pldo_lv, ptr @.str.89 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8950_pldo_lv, ptr @.str.89 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8950_pldo_lv, ptr @.str.89 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8950_ult_pldo, ptr @.str.90 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8950_ult_pldo, ptr @.str.91 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8950_ult_nldo, ptr @.str.91 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8950_ult_pldo, ptr @.str.90 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8950_ult_pldo, ptr @.str.90 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8950_ult_pldo, ptr @.str.91 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8950_ult_pldo, ptr @.str.91 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8950_ult_pldo, ptr @.str.91 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8950_ult_pldo, ptr @.str.89 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8950_ult_pldo, ptr @.str.90 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8950_ult_pldo, ptr @.str.91 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.90 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.87 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8953_regulators = internal constant [31 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8998_hfsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8998_hfsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8998_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm8998_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pm8950_ftsmps2p5, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634758003, i32 6, ptr @pm8950_ftsmps2p5, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 7, ptr @pm8998_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8953_ult_nldo, ptr @.str.99 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8953_ult_nldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8953_ult_nldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8950_ult_pldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8950_ult_pldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8950_ult_pldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8950_ult_pldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm8953_ult_nldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pm8953_lnldo, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pm8953_lnldo, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pm8950_ult_pldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 23, ptr @pm8953_ult_nldo, ptr @.str.104 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8994_regulators = internal constant [47 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8994_ftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8994_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8994_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm8994_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pm8994_hfsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634758003, i32 6, ptr @pm8994_ftsmps, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 7, ptr @pm8994_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.16, i32 1634758003, i32 8, ptr @pm8994_ftsmps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.108, i32 1634758003, i32 9, ptr @pm8994_ftsmps, ptr @.str.109 }, %struct.rpm_regulator_data { ptr @.str.110, i32 1634758003, i32 10, ptr @pm8994_ftsmps, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.112, i32 1634758003, i32 11, ptr @pm8994_ftsmps, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.114, i32 1634758003, i32 12, ptr @pm8994_ftsmps, ptr @.str.115 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8994_nldo, ptr @.str.99 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8994_nldo, ptr @.str.116 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8994_nldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8994_nldo, ptr @.str.118 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8994_lnldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8994_pldo, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8994_lnldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8994_pldo, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8994_pldo, ptr @.str.121 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8994_pldo, ptr @.str.121 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8994_nldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8994_pldo, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8994_pldo, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8994_pldo, ptr @.str.123 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8994_pldo, ptr @.str.123 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8994_pldo, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8994_pldo, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8994_pldo, ptr @.str.121 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm8994_pldo, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pm8994_pldo, ptr @.str.125 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pm8994_pldo, ptr @.str.125 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pm8994_pldo, ptr @.str.121 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 23, ptr @pm8994_pldo, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.57, i32 1634690156, i32 24, ptr @pm8994_pldo, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.58, i32 1634690156, i32 25, ptr @pm8994_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.60, i32 1634690156, i32 26, ptr @pm8994_nldo, ptr @.str.116 }, %struct.rpm_regulator_data { ptr @.str.61, i32 1634690156, i32 27, ptr @pm8994_nldo, ptr @.str.118 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 28, ptr @pm8994_nldo, ptr @.str.116 }, %struct.rpm_regulator_data { ptr @.str.126, i32 1634690156, i32 29, ptr @pm8994_pldo, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.127, i32 1634690156, i32 30, ptr @pm8994_pldo, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.128, i32 1634690156, i32 31, ptr @pm8994_nldo, ptr @.str.118 }, %struct.rpm_regulator_data { ptr @.str.129, i32 1634690156, i32 32, ptr @pm8994_pldo, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.63, i32 6386550, i32 1, ptr @pm8994_switch, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.78, i32 6386550, i32 2, ptr @pm8994_switch, ptr @.str.130 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8998_regulators = internal constant [44 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm8998_ftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm8998_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm8998_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm8998_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pm8998_hfsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634758003, i32 6, ptr @pm8998_ftsmps, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 7, ptr @pm8998_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.16, i32 1634758003, i32 8, ptr @pm8998_ftsmps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.108, i32 1634758003, i32 9, ptr @pm8998_ftsmps, ptr @.str.109 }, %struct.rpm_regulator_data { ptr @.str.110, i32 1634758003, i32 10, ptr @pm8998_ftsmps, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.112, i32 1634758003, i32 11, ptr @pm8998_ftsmps, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.114, i32 1634758003, i32 12, ptr @pm8998_ftsmps, ptr @.str.115 }, %struct.rpm_regulator_data { ptr @.str.135, i32 1634758003, i32 13, ptr @pm8998_ftsmps, ptr @.str.136 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm8998_nldo, ptr @.str.137 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm8998_nldo, ptr @.str.138 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm8998_nldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm8998_nldo, ptr @.str.139 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm8998_nldo, ptr @.str.139 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm8998_pldo, ptr @.str.140 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm8998_pldo_lv, ptr @.str.141 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm8998_nldo, ptr @.str.138 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm8998_pldo, ptr @.str.142 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm8998_pldo, ptr @.str.143 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm8998_nldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm8998_pldo_lv, ptr @.str.141 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm8998_pldo, ptr @.str.144 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm8998_pldo_lv, ptr @.str.141 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm8998_pldo_lv, ptr @.str.141 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm8998_pldo, ptr @.str.145 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm8998_nldo, ptr @.str.138 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm8998_pldo, ptr @.str.146 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm8998_pldo, ptr @.str.144 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pm8998_pldo, ptr @.str.147 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pm8998_pldo, ptr @.str.144 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pm8998_pldo, ptr @.str.146 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 23, ptr @pm8998_pldo, ptr @.str.143 }, %struct.rpm_regulator_data { ptr @.str.57, i32 1634690156, i32 24, ptr @pm8998_pldo, ptr @.str.147 }, %struct.rpm_regulator_data { ptr @.str.58, i32 1634690156, i32 25, ptr @pm8998_pldo, ptr @.str.143 }, %struct.rpm_regulator_data { ptr @.str.60, i32 1634690156, i32 26, ptr @pm8998_nldo, ptr @.str.148 }, %struct.rpm_regulator_data { ptr @.str.61, i32 1634690156, i32 27, ptr @pm8998_nldo, ptr @.str.137 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 28, ptr @pm8998_pldo, ptr @.str.145 }, %struct.rpm_regulator_data { ptr @.str.63, i32 6386550, i32 1, ptr @pm8998_switch, ptr @.str.149 }, %struct.rpm_regulator_data { ptr @.str.78, i32 6386550, i32 2, ptr @pm8998_switch, ptr @.str.149 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm660_regulators = internal constant [25 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm660_ftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm660_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm660_ftsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm660_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pm660_hfsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634758003, i32 6, ptr @pm660_hfsmps, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm660_nldo660, ptr @.str.154 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm660_ht_nldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm660_nldo660, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm660_ht_nldo, ptr @.str.155 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm660_ht_nldo, ptr @.str.154 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm660_ht_nldo, ptr @.str.154 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm660_ht_lvpldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm660_pldo660, ptr @.str.157 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm660_pldo660, ptr @.str.157 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm660_pldo660, ptr @.str.157 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm660_pldo660, ptr @.str.157 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm660_pldo660, ptr @.str.157 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm660l_regulators = internal constant [16 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1651535219, i32 1, ptr @pm660_ftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1651535219, i32 2, ptr @pm660_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 2019784562, i32 0, ptr @pm660_ftsmps, ptr @.str.164 }, %struct.rpm_regulator_data { ptr @.str.10, i32 2020439922, i32 0, ptr @pm660_ftsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1651467372, i32 1, ptr @pm660_nldo660, ptr @.str.165 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1651467372, i32 2, ptr @pm660_pldo660, ptr @.str.166 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1651467372, i32 3, ptr @pm660_pldo660, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1651467372, i32 4, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1651467372, i32 5, ptr @pm660_pldo660, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1651467372, i32 6, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1651467372, i32 7, ptr @pm660_pldo660, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1651467372, i32 8, ptr @pm660_pldo660, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1668052850, i32 0, ptr @pm660_ht_nldo, ptr @.str.165 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1835825010, i32 0, ptr @pm660_ht_nldo, ptr @.str.165 }, %struct.rpm_regulator_data { ptr @.str.169, i32 1650618210, i32 1, ptr @pm660l_bob, ptr @.str.170 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pma8084_regulators = internal constant [45 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pma8084_ftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pma8084_ftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pma8084_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pma8084_hfsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pma8084_hfsmps, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634758003, i32 6, ptr @pma8084_ftsmps, ptr @.str.13 }, %struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 7, ptr @pma8084_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.16, i32 1634758003, i32 8, ptr @pma8084_ftsmps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.108, i32 1634758003, i32 9, ptr @pma8084_ftsmps, ptr @.str.109 }, %struct.rpm_regulator_data { ptr @.str.110, i32 1634758003, i32 10, ptr @pma8084_ftsmps, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.112, i32 1634758003, i32 11, ptr @pma8084_ftsmps, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.114, i32 1634758003, i32 12, ptr @pma8084_ftsmps, ptr @.str.115 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pma8084_nldo, ptr @.str.172 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pma8084_nldo, ptr @.str.173 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pma8084_nldo, ptr @.str.173 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pma8084_nldo, ptr @.str.173 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pma8084_pldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pma8084_pldo, ptr @.str.174 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pma8084_pldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pma8084_pldo, ptr @.str.175 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pma8084_pldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pma8084_pldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pma8084_nldo, ptr @.str.172 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pma8084_pldo, ptr @.str.174 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pma8084_pldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pma8084_pldo, ptr @.str.174 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pma8084_pldo, ptr @.str.174 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pma8084_pldo, ptr @.str.177 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pma8084_pldo, ptr @.str.178 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pma8084_pldo, ptr @.str.179 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pma8084_pldo, ptr @.str.180 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pma8084_pldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pma8084_pldo, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pma8084_pldo, ptr @.str.181 }, %struct.rpm_regulator_data { ptr @.str.56, i32 1634690156, i32 23, ptr @pma8084_pldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.57, i32 1634690156, i32 24, ptr @pma8084_pldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.58, i32 1634690156, i32 25, ptr @pma8084_pldo, ptr @.str.177 }, %struct.rpm_regulator_data { ptr @.str.60, i32 1634690156, i32 26, ptr @pma8084_pldo, ptr @.str.174 }, %struct.rpm_regulator_data { ptr @.str.61, i32 1634690156, i32 27, ptr @pma8084_nldo, ptr @.str.173 }, %struct.rpm_regulator_data { ptr @.str.63, i32 6386550, i32 1, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.78, i32 6386550, i32 2, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.79, i32 6386550, i32 3, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.182, i32 6386550, i32 4, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.80, i32 6386550, i32 5, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pmi8994_regulators = internal constant [5 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1651535219, i32 1, ptr @pmi8994_ftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1651535219, i32 2, ptr @pmi8994_hfsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1651535219, i32 3, ptr @pmi8994_hfsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.187, i32 1652122210, i32 1, ptr @pmi8994_bby, ptr @.str.188 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pmi8998_regulators = internal constant [2 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.169, i32 1650618210, i32 1, ptr @pmi8998_bob, ptr @.str.170 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pms405_regulators = internal constant [19 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pms405_hfsmps3, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pms405_hfsmps3, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pms405_hfsmps3, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pms405_hfsmps3, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.10, i32 1634758003, i32 5, ptr @pms405_hfsmps3, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pms405_nldo1200, ptr @.str.193 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pms405_nldo1200, ptr @.str.193 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pms405_nldo1200, ptr @.str.194 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pms405_nldo300, ptr @.str.195 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pms405_pldo600, ptr @.str.196 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pms405_pldo600, ptr @.str.196 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pms405_pldo150, ptr @.str.28 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pms405_nldo1200, ptr @.str.194 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pms405_nldo1200, ptr @.str.142 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pms405_pldo50, ptr @.str.197 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pms405_pldo150, ptr @.str.197 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pms405_pldo150, ptr @.str.197 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pms405_pldo150, ptr @.str.197 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm2250_regulators = internal constant [27 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.3, i32 1634758003, i32 1, ptr @pm2250_lvftsmps, ptr @.str.4 }, %struct.rpm_regulator_data { ptr @.str, i32 1634758003, i32 2, ptr @pm2250_lvftsmps, ptr @.str.5 }, %struct.rpm_regulator_data { ptr @.str.6, i32 1634758003, i32 3, ptr @pm2250_lvftsmps, ptr @.str.7 }, %struct.rpm_regulator_data { ptr @.str.8, i32 1634758003, i32 4, ptr @pm2250_ftsmps, ptr @.str.9 }, %struct.rpm_regulator_data { ptr @.str.20, i32 1634690156, i32 1, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.1, i32 1634690156, i32 2, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.22, i32 1634690156, i32 3, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634690156, i32 4, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634690156, i32 5, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.26, i32 1634690156, i32 6, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634690156, i32 7, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.29, i32 1634690156, i32 8, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 9, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.32, i32 1634690156, i32 10, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 11, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 12, ptr @pm660_nldo660, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.35, i32 1634690156, i32 13, ptr @pm660_ht_lvpldo, ptr @.str.206 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 14, ptr @pm660_ht_lvpldo, ptr @.str.206 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 15, ptr @pm660_ht_lvpldo, ptr @.str.206 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 16, ptr @pm660_ht_lvpldo, ptr @.str.206 }, %struct.rpm_regulator_data { ptr @.str.39, i32 1634690156, i32 17, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 18, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 19, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.53, i32 1634690156, i32 20, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.54, i32 1634690156, i32 21, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.55, i32 1634690156, i32 22, ptr @pm660_pldo660, ptr @.str.205 }, %struct.rpm_regulator_data zeroinitializer], align 4
@.str = private unnamed_addr constant [3 x i8] c"s2\00", align 1
@mp5496_smpa2 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 28, i32 0, ptr @rpm_mp5496_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@mp5496_ldoa2 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 61, i32 0, ptr @rpm_mp5496_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@rpm_mp5496_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 725000, i32 0, i32 27, i32 12500 }], align 4
@.compoundliteral.2 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 60, i32 25000 }], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"s1\00", align 1
@pm8x41_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.18, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"vdd_s1\00", align 1
@pm8841_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 262, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.19, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"vdd_s2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"s3\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"vdd_s3\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"s4\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vdd_s4\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"s5\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"vdd_s5\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"s6\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"vdd_s6\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"s7\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"vdd_s7\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"vdd_s8\00", align 1
@rpm_smps_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.18 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1575000, i32 96, i32 158, i32 25000 }], align 4
@.compoundliteral.19 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 184, i32 5000 }, %struct.linear_range { i32 1280000, i32 185, i32 261, i32 10000 }], align 4
@pm8916_buck_lvo_smps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.41, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8916_buck_hvo_smps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.42, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"l1\00", align 1
@pm8916_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 94, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.43, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"vdd_l1_l2_l3\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"l4\00", align 1
@pm8916_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 209, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.44, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"vdd_l4_l5_l6\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"l5\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"l6\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"l7\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"vdd_l7\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"l8\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"vdd_l8_l9_l10_l11_l12_l13_l14_l15_l16_l17_l18\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"l9\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"l10\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"l11\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"l12\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"l13\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"l14\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"l15\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"l16\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"l17\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"l18\00", align 1
@.compoundliteral.41 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 750000, i32 96, i32 127, i32 25000 }], align 4
@.compoundliteral.42 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1550000, i32 0, i32 31, i32 25000 }], align 4
@.compoundliteral.43 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 93, i32 12500 }], align 4
@.compoundliteral.44 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 208, i32 12500 }], align 4
@pm8226_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.65, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8226_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 262, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.66, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8226_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.67, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"vdd_l1_l2_l4_l5\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"vdd_l3_l24_l26\00", align 1
@pm8226_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.68, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.47 = private unnamed_addr constant [20 x i8] c"vdd_l6_l7_l8_l9_l27\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"vdd_l10_l11_l13\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"vdd_l12_l14\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"vdd_l15_l16_l17_l18\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"l19\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"vdd_l19_l20_l21_l22_l23_l28\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"l20\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"l21\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"l22\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"l23\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"l24\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"l25\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"vdd_l25\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"l26\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"l27\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"l28\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"lvs1\00", align 1
@pm8226_switch = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.64 = private unnamed_addr constant [9 x i8] c"vdd_lvs1\00", align 1
@.compoundliteral.65 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1575000, i32 96, i32 158, i32 25000 }], align 4
@.compoundliteral.66 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 184, i32 5000 }, %struct.linear_range { i32 1280000, i32 185, i32 261, i32 10000 }], align 4
@.compoundliteral.67 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], align 4
@.compoundliteral.68 = internal global [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], align 4
@rpm_switch_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pm8941_boost = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 31, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.83, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8941_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.84, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.69 = private unnamed_addr constant [10 x i8] c"vdd_l1_l3\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"vdd_l2_lvs1_2_3\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"vdd_l4_l11\00", align 1
@pm8941_lnldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @rpm_smps_ldo_ops_fixed, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1740000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.72 = private unnamed_addr constant [10 x i8] c"vdd_l5_l7\00", align 1
@pm8941_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.85, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.73 = private unnamed_addr constant [19 x i8] c"vdd_l6_l12_l14_l15\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"vdd_l8_l16_l18_l19\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"vdd_l9_l10_l17_l22\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"vdd_l13_l20_l23_l24\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"vdd_l21\00", align 1
@pm8941_switch = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.78 = private unnamed_addr constant [5 x i8] c"lvs2\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"lvs3\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"5vs1\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"vin_5vs\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"5vs2\00", align 1
@.compoundliteral.83 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 4000000, i32 0, i32 30, i32 50000 }], align 4
@.compoundliteral.84 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], align 4
@rpm_smps_ldo_ops_fixed = internal constant %struct.regulator_ops { ptr null, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.85 = internal global [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], align 4
@pm8950_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.93, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8950_ftsmps2p5 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 461, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.94, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8950_ult_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 203, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.95, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.86 = private unnamed_addr constant [11 x i8] c"vdd_l1_l19\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"vdd_l2_l23\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"vdd_l3\00", align 1
@pm8950_ult_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.96, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.89 = private unnamed_addr constant [20 x i8] c"vdd_l4_l5_l6_l7_l16\00", align 1
@pm8950_pldo_lv = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 17, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.97, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.90 = private unnamed_addr constant [23 x i8] c"vdd_l8_l11_l12_l17_l22\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"vdd_l9_l10_l13_l14_l15_l18\00", align 1
@pm8950_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 165, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.98, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"vdd_l20\00", align 1
@.compoundliteral.93 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1550000, i32 96, i32 127, i32 25000 }], align 4
@.compoundliteral.94 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 80000, i32 0, i32 255, i32 5000 }, %struct.linear_range { i32 160000, i32 256, i32 460, i32 10000 }], align 4
@.compoundliteral.95 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 202, i32 12500 }], align 4
@.compoundliteral.96 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1750000, i32 0, i32 127, i32 12500 }], align 4
@.compoundliteral.97 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 16, i32 25000 }], align 4
@.compoundliteral.98 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 975000, i32 0, i32 164, i32 12500 }], align 4
@pm8998_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 216, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.105, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8953_ult_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 94, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.106, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.99 = private unnamed_addr constant [7 x i8] c"vdd_l1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"vdd_l2_l3\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"vdd_l4_l5_l6_l7_l16_l19\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"vdd_l8_l11_l12_l13_l14_l15\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"vdd_l9_l10_l17_l18_l22\00", align 1
@pm8953_lnldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.107, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.104 = private unnamed_addr constant [8 x i8] c"vdd_l23\00", align 1
@.compoundliteral.105 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 215, i32 8000 }], align 4
@.compoundliteral.106 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 93, i32 12500 }], align 4
@.compoundliteral.107 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 690000, i32 0, i32 7, i32 60000 }, %struct.linear_range { i32 1380000, i32 8, i32 15, i32 120000 }], align 4
@pm8994_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 350, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.131, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8994_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.132, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.108 = private unnamed_addr constant [3 x i8] c"s9\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"vdd_s9\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"s10\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"vdd_s10\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"s11\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"vdd_s11\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"s12\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"vdd_s12\00", align 1
@pm8994_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.133, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"vdd_l2_l26_l28\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"vdd_l3_l11\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"vdd_l4_l27_l31\00", align 1
@pm8994_lnldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @rpm_smps_ldo_ops_fixed, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1740000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm8994_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.134, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.119 = private unnamed_addr constant [15 x i8] c"vdd_l6_l12_l32\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"vdd_l8_l16_l30\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"vdd_l9_l10_l18_l22\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"vdd_l13_l19_l23_l24\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"vdd_l14_l15\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"vdd_l17_l29\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"vdd_l20_l21\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"l29\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"l30\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"l31\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"l32\00", align 1
@pm8994_switch = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.130 = private unnamed_addr constant [11 x i8] c"vdd_lvs1_2\00", align 1
@.compoundliteral.131 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 199, i32 5000 }, %struct.linear_range { i32 700000, i32 200, i32 349, i32 10000 }], align 4
@.compoundliteral.132 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1550000, i32 96, i32 158, i32 25000 }], align 4
@.compoundliteral.133 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], align 4
@.compoundliteral.134 = internal global [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], align 4
@pm8998_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 259, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.150, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.135 = private unnamed_addr constant [4 x i8] c"s13\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"vdd_s13\00", align 1
@pm8998_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.151, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.137 = private unnamed_addr constant [11 x i8] c"vdd_l1_l27\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"vdd_l2_l8_l17\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"vdd_l4_l5\00", align 1
@pm8998_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.152, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.140 = private unnamed_addr constant [7 x i8] c"vdd_l6\00", align 1
@pm8998_pldo_lv = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.153, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.141 = private unnamed_addr constant [19 x i8] c"vdd_l7_l12_l14_l15\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"vdd_l9\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"vdd_l10_l23_l25\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"vdd_l13_l19_l21\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"vdd_l16_l28\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"vdd_l18_l22\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"vdd_l20_l24\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"vdd_l26\00", align 1
@pm8998_switch = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.149 = private unnamed_addr constant [14 x i8] c"vdd_lvs1_lvs2\00", align 1
@.compoundliteral.150 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 258, i32 4000 }], align 4
@.compoundliteral.151 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }], align 4
@.compoundliteral.152 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1664000, i32 0, i32 255, i32 8000 }], align 4
@.compoundliteral.153 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1256000, i32 0, i32 127, i32 8000 }], align 4
@pm660_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 200, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.158, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm660_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 217, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.159, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm660_nldo660 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 124, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.160, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.154 = private unnamed_addr constant [13 x i8] c"vdd_l1_l6_l7\00", align 1
@pm660_ht_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 125, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.161, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.155 = private unnamed_addr constant [7 x i8] c"vdd_l5\00", align 1
@pm660_ht_lvpldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 63, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.162, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.156 = private unnamed_addr constant [30 x i8] c"vdd_l8_l9_l10_l11_l12_l13_l14\00", align 1
@pm660_pldo660 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.163, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.157 = private unnamed_addr constant [24 x i8] c"vdd_l15_l16_l17_l18_l19\00", align 1
@.compoundliteral.158 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 355000, i32 0, i32 199, i32 5000 }], align 4
@.compoundliteral.159 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 216, i32 8000 }], align 4
@.compoundliteral.160 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 123, i32 8000 }], align 4
@.compoundliteral.161 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 124, i32 8000 }], align 4
@.compoundliteral.162 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1504000, i32 0, i32 62, i32 8000 }], align 4
@.compoundliteral.163 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1504000, i32 0, i32 255, i32 8000 }], align 4
@.str.164 = private unnamed_addr constant [10 x i8] c"vdd_s3_s4\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"vdd_l1_l9_l10\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"vdd_l2\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"vdd_l3_l5_l7_l8\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"vdd_l4_l6\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@pm660l_bob = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 85, i32 0, ptr @rpm_bob_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.171, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.170 = private unnamed_addr constant [8 x i8] c"vdd_bob\00", align 1
@rpm_bob_ops = internal constant %struct.regulator_ops { ptr null, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.171 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 84, i32 32000 }], align 4
@pma8084_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 262, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.183, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pma8084_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.184, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pma8084_nldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.185, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.172 = private unnamed_addr constant [11 x i8] c"vdd_l1_l11\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"vdd_l2_l3_l4_l27\00", align 1
@pma8084_pldo = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.186, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.174 = private unnamed_addr constant [23 x i8] c"vdd_l6_l12_l14_l15_l26\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"vdd_l8\00", align 1
@.str.176 = private unnamed_addr constant [27 x i8] c"vdd_l9_l10_l13_l20_l23_l24\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"vdd_l16_l25\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"vdd_l17\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"vdd_l18\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"vdd_l19\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"vdd_l22\00", align 1
@pma8084_switch = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.182 = private unnamed_addr constant [5 x i8] c"lvs4\00", align 1
@.compoundliteral.183 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 184, i32 5000 }, %struct.linear_range { i32 1280000, i32 185, i32 261, i32 10000 }], align 4
@.compoundliteral.184 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1550000, i32 96, i32 158, i32 25000 }], align 4
@.compoundliteral.185 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], align 4
@.compoundliteral.186 = internal global [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], align 4
@pmi8994_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 350, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.189, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pmi8994_hfsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 142, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.190, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.187 = private unnamed_addr constant [13 x i8] c"boost-bypass\00", align 1
@pmi8994_bby = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 45, i32 0, ptr @rpm_bob_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.191, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.188 = private unnamed_addr constant [12 x i8] c"vdd_bst_byp\00", align 1
@.compoundliteral.189 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 199, i32 5000 }, %struct.linear_range { i32 700000, i32 200, i32 349, i32 10000 }], align 4
@.compoundliteral.190 = internal global [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 80, i32 12500 }, %struct.linear_range { i32 700000, i32 81, i32 141, i32 25000 }], align 4
@.compoundliteral.191 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 44, i32 50000 }], align 4
@pmi8998_bob = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 84, i32 0, ptr @rpm_bob_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.192, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.compoundliteral.192 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1824000, i32 0, i32 83, i32 32000 }], align 4
@pms405_hfsmps3 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 216, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.198, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pms405_nldo1200 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.199, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.193 = private unnamed_addr constant [10 x i8] c"vdd_l1_l2\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"vdd_l3_l8\00", align 1
@pms405_nldo300 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.200, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.195 = private unnamed_addr constant [7 x i8] c"vdd_l4\00", align 1
@pms405_pldo600 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 99, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.201, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.196 = private unnamed_addr constant [10 x i8] c"vdd_l5_l6\00", align 1
@pms405_pldo150 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 129, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.202, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pms405_pldo50 = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 129, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.203, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.197 = private unnamed_addr constant [20 x i8] c"vdd_l10_l11_l12_l13\00", align 1
@.compoundliteral.198 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 215, i32 8000 }], align 4
@.compoundliteral.199 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }], align 4
@.compoundliteral.200 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }], align 4
@.compoundliteral.201 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1256000, i32 0, i32 98, i32 8000 }], align 4
@.compoundliteral.202 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1664000, i32 0, i32 128, i32 16000 }], align 4
@.compoundliteral.203 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 1664000, i32 0, i32 128, i32 16000 }], align 4
@pm2250_lvftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 270, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.207, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@pm2250_ftsmps = internal constant %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 270, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.208, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.204 = private unnamed_addr constant [40 x i8] c"vdd_l1_l2_l3_l5_l6_l7_l8_l9_l10_l11_l12\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"vdd_l4_l17_l18_l19_l20_l21_l22\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"vdd_l13_l14_l15_l16\00", align 1
@.compoundliteral.207 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 269, i32 4000 }], align 4
@.compoundliteral.208 = internal global [1 x %struct.linear_range] [%struct.linear_range { i32 640000, i32 0, i32 269, i32 8000 }], align 4
@rpm_reg_driver = internal global %struct.platform_driver { ptr @rpm_reg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.209, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.209 = private unnamed_addr constant [23 x i8] c"qcom_rpm_smd_regulator\00", align 1
@.str.210 = private unnamed_addr constant [34 x i8] c"Unable to retrieve handle to rpm\0A\00", align 1
@.str.211 = private unnamed_addr constant [25 x i8] c"Unknown regulator %pOFn\0A\00", align 1
@.str.212 = private unnamed_addr constant [49 x i8] c"%pOFn: devm_regulator_register() failed, ret=%d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license248], section "llvm.metadata"

@__mod_of__rpm_of_match_device_table = dso_local alias [17 x %struct.of_device_id], ptr @rpm_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpm_reg_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpm_reg_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  store i32 %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %5, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 2
  store i8 %10, ptr %8, align 4
  %11 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %5)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 %7, ptr %6, align 4
  br label %14

14:                                               ; preds = %13, %4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %4, align 4
  %7 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %4, align 4
  %7 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, ptr %3, align 4
  br label %10

10:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpm_reg_write_active(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [3 x %struct.rpm_regulator_req], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  store i32 1852143475, ptr %2, align 4
  %8 = getelementptr inbounds %struct.rpm_regulator_req, ptr %2, i32 0, i32 1
  store i32 4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpm_regulator_req, ptr %2, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 1, %7 ], [ 0, %1 ]
  %14 = and i8 %4, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr [3 x %struct.rpm_regulator_req], ptr %2, i32 0, i32 %13
  store i32 30325, ptr %21, align 4
  %22 = getelementptr [3 x %struct.rpm_regulator_req], ptr %2, i32 0, i32 %13, i32 1
  store i32 4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [3 x %struct.rpm_regulator_req], ptr %2, i32 0, i32 %13, i32 2
  store i32 %24, ptr %25, align 4
  %26 = add nuw nsw i32 %13, 1
  br label %27

27:                                               ; preds = %20, %16, %12
  %28 = phi i32 [ %26, %20 ], [ %13, %16 ], [ %13, %12 ]
  %29 = and i8 %4, 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr [3 x %struct.rpm_regulator_req], ptr %2, i32 0, i32 %28
  store i32 24941, ptr %36, align 4
  %37 = getelementptr [3 x %struct.rpm_regulator_req], ptr %2, i32 0, i32 %28, i32 1
  store i32 4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = udiv i32 %39, 1000
  %41 = getelementptr [3 x %struct.rpm_regulator_req], ptr %2, i32 0, i32 %28, i32 2
  store i32 %40, ptr %41, align 4
  %42 = add nuw nsw i32 %28, 1
  br label %45

43:                                               ; preds = %31, %27
  %44 = icmp eq i32 %28, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %43, %35
  %46 = phi i32 [ %42, %35 ], [ %28, %43 ]
  %47 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = mul nuw nsw i32 %46, 12
  %54 = call i32 @qcom_rpm_smd_write(ptr noundef %48, i32 noundef 0, i32 noundef %50, i32 noundef %52, ptr noundef nonnull %2, i32 noundef %53) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i8, ptr %3, align 4
  %58 = and i8 %57, -8
  store i8 %58, ptr %3, align 4
  br label %59

59:                                               ; preds = %56, %45, %43
  %60 = phi i32 [ 0, %43 ], [ 0, %56 ], [ %54, %45 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #7
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_smd_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_get_voltage(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_load(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  store i32 %1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 4
  %9 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 %5, ptr %4, align 4
  br label %12

12:                                               ; preds = %11, %2
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.210) #8
  br label %74

10:                                               ; preds = %1
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %74, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %2, i32 4
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %21 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  br label %22

22:                                               ; preds = %70, %18
  %23 = phi ptr [ %16, %18 ], [ %72, %70 ]
  %24 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 276, i32 noundef 3520) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %74, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 20, i1 false) #7
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %33, %26
  %30 = phi ptr [ %35, %33 ], [ %27, %26 ]
  %31 = phi ptr [ %34, %33 ], [ %11, %26 ]
  %32 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %23, ptr noundef nonnull %30) #7
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.rpm_regulator_data, ptr %31, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %29

37:                                               ; preds = %29
  %38 = load ptr, ptr %31, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %33, %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.211, ptr noundef nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %68

41:                                               ; preds = %37
  store ptr %3, ptr %24, align 4
  %42 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 1
  store ptr %7, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rpm_regulator_data, ptr %31, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpm_regulator_data, ptr %31, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 4
  %50 = getelementptr inbounds %struct.rpm_regulator_data, ptr %31, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(244) %49, ptr noundef align 4 dereferenceable(244) %51, i32 244, i1 false) #7
  %52 = load ptr, ptr %31, align 4
  store ptr %52, ptr %49, align 4
  %53 = getelementptr inbounds %struct.rpm_regulator_data, ptr %31, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 4, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 4, i32 13
  store ptr @__this_module, ptr %56, align 4
  %57 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 4, i32 12
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %24, i32 0, i32 4, i32 2
  store ptr %58, ptr %59, align 4
  store ptr %3, ptr %2, align 4
  store ptr %23, ptr %20, align 4
  store ptr %24, ptr %21, align 4
  %60 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %49, ptr noundef nonnull %2) #7
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %63, label %62

62:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %70

63:                                               ; preds = %41
  %64 = ptrtoint ptr %60 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.212, ptr noundef nonnull %23, i32 noundef %64) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  %65 = icmp slt ptr %60, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = ptrtoint ptr %60 to i32
  br label %68

68:                                               ; preds = %66, %40
  %69 = phi i32 [ -22, %40 ], [ %67, %66 ]
  call void @of_node_put(ptr noundef nonnull %23) #7
  br label %74

70:                                               ; preds = %63, %62
  %71 = load ptr, ptr %14, align 8
  %72 = call ptr @of_get_next_available_child(ptr noundef %71, ptr noundef nonnull %23) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %22

74:                                               ; preds = %70, %68, %22, %13, %10, %9
  %75 = phi i32 [ %69, %68 ], [ -19, %9 ], [ -19, %10 ], [ 0, %13 ], [ -12, %22 ], [ 0, %70 ]
  ret i32 %75
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
