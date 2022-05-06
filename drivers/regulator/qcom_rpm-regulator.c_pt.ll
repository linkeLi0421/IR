; ModuleID = '/llk/IR/drivers/regulator/qcom_rpm-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom_rpm-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.rpm_regulator_data = type { ptr, i32, ptr, ptr }
%struct.qcom_rpm_reg = type { ptr, %struct.mutex, ptr, %struct.regulator_desc, ptr, i32, [2 x i32], i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.rpm_reg_parts = type { %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, i32 }
%struct.request_member = type { i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_qcom_rpm_regulator__247_1002_rpm_reg_init4 = internal global ptr @rpm_reg_init, section ".initcall4.init", align 4
@rpm_reg_driver = internal global %struct.platform_driver { ptr @rpm_reg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rpm_reg_exit = internal global ptr @rpm_reg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [61 x i8] c"qcom_rpm_regulator.description=Qualcomm RPM regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [61 x i8] c"qcom_rpm_regulator.file=drivers/regulator/qcom_rpm-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [34 x i8] c"qcom_rpm_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"qcom_rpm_reg\00", align 1
@rpm_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8018-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8018_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8058-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8058_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8901-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8901_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8921-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8921_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-smb208-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_smb208_regulators }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to retrieve handle to rpm\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to match device\0A\00", align 1
@rpm_reg_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&vreg->lock\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bias-pull-down\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s is invalid\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"qcom,power-mode-hysteretic\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to set power mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"qcom,force-mode\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"failed to read %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"invalid force mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to set force mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"qcom,switch-mode-frequency\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"regulator requires %s property\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid frequency %d\0A\00", align 1
@rpm_pm8018_regulators = internal constant [19 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.16, i32 140, ptr @pm8018_smps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.18, i32 141, ptr @pm8018_smps, ptr @.str.19 }, %struct.rpm_regulator_data { ptr @.str.20, i32 142, ptr @pm8018_smps, ptr @.str.21 }, %struct.rpm_regulator_data { ptr @.str.22, i32 143, ptr @pm8018_smps, ptr @.str.23 }, %struct.rpm_regulator_data { ptr @.str.24, i32 144, ptr @pm8018_smps, ptr @.str.25 }, %struct.rpm_regulator_data { ptr @.str.26, i32 146, ptr @pm8018_pldo, ptr @.str.27 }, %struct.rpm_regulator_data { ptr @.str.28, i32 147, ptr @pm8018_pldo, ptr @.str.29 }, %struct.rpm_regulator_data { ptr @.str.30, i32 148, ptr @pm8018_pldo, ptr @.str.31 }, %struct.rpm_regulator_data { ptr @.str.32, i32 149, ptr @pm8018_pldo, ptr @.str.33 }, %struct.rpm_regulator_data { ptr @.str.34, i32 150, ptr @pm8018_pldo, ptr @.str.35 }, %struct.rpm_regulator_data { ptr @.str.36, i32 151, ptr @pm8018_pldo, ptr @.str.35 }, %struct.rpm_regulator_data { ptr @.str.37, i32 152, ptr @pm8018_nldo, ptr @.str.38 }, %struct.rpm_regulator_data { ptr @.str.39, i32 153, ptr @pm8921_nldo1200, ptr @.str.40 }, %struct.rpm_regulator_data { ptr @.str.41, i32 154, ptr @pm8018_nldo, ptr @.str.40 }, %struct.rpm_regulator_data { ptr @.str.42, i32 155, ptr @pm8018_nldo, ptr @.str.40 }, %struct.rpm_regulator_data { ptr @.str.43, i32 156, ptr @pm8018_nldo, ptr @.str.40 }, %struct.rpm_regulator_data { ptr @.str.44, i32 158, ptr @pm8018_pldo, ptr @.str.45 }, %struct.rpm_regulator_data { ptr @.str.46, i32 159, ptr @pm8018_switch, ptr @.str.47 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8058_regulators = internal constant [35 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.49, i32 21, ptr @pm8058_nldo, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.51, i32 22, ptr @pm8058_nldo, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.26, i32 23, ptr @pm8058_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.28, i32 24, ptr @pm8058_pldo, ptr @.str.53 }, %struct.rpm_regulator_data { ptr @.str.30, i32 25, ptr @pm8058_pldo, ptr @.str.53 }, %struct.rpm_regulator_data { ptr @.str.32, i32 26, ptr @pm8058_pldo, ptr @.str.53 }, %struct.rpm_regulator_data { ptr @.str.34, i32 27, ptr @pm8058_pldo, ptr @.str.54 }, %struct.rpm_regulator_data { ptr @.str.36, i32 28, ptr @pm8058_pldo, ptr @.str.54 }, %struct.rpm_regulator_data { ptr @.str.37, i32 29, ptr @pm8058_pldo, ptr @.str.38 }, %struct.rpm_regulator_data { ptr @.str.39, i32 30, ptr @pm8058_pldo, ptr @.str.55 }, %struct.rpm_regulator_data { ptr @.str.41, i32 31, ptr @pm8058_pldo, ptr @.str.56 }, %struct.rpm_regulator_data { ptr @.str.42, i32 32, ptr @pm8058_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.43, i32 33, ptr @pm8058_pldo, ptr @.str.52 }, %struct.rpm_regulator_data { ptr @.str.57, i32 34, ptr @pm8058_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.44, i32 35, ptr @pm8058_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.60, i32 36, ptr @pm8058_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.61, i32 37, ptr @pm8058_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.62, i32 38, ptr @pm8058_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.64, i32 39, ptr @pm8058_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.65, i32 40, ptr @pm8058_pldo, ptr @.str.66 }, %struct.rpm_regulator_data { ptr @.str.67, i32 41, ptr @pm8058_pldo, ptr @.str.66 }, %struct.rpm_regulator_data { ptr @.str.68, i32 42, ptr @pm8058_nldo, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.70, i32 43, ptr @pm8058_nldo, ptr @.str.71 }, %struct.rpm_regulator_data { ptr @.str.72, i32 44, ptr @pm8058_nldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.74, i32 45, ptr @pm8058_nldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.75, i32 46, ptr @pm8058_nldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.76, i32 50, ptr @pm8058_smps, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.16, i32 51, ptr @pm8058_smps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.18, i32 52, ptr @pm8058_smps, ptr @.str.19 }, %struct.rpm_regulator_data { ptr @.str.20, i32 53, ptr @pm8058_smps, ptr @.str.21 }, %struct.rpm_regulator_data { ptr @.str.22, i32 54, ptr @pm8058_smps, ptr @.str.23 }, %struct.rpm_regulator_data { ptr @.str.78, i32 47, ptr @pm8058_switch, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.46, i32 48, ptr @pm8058_switch, ptr @.str.50 }, %struct.rpm_regulator_data { ptr @.str.79, i32 49, ptr @pm8058_ncp, ptr @.str.80 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8901_regulators = internal constant [18 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.49, i32 58, ptr @pm8901_nldo, ptr @.str.81 }, %struct.rpm_regulator_data { ptr @.str.51, i32 59, ptr @pm8901_pldo, ptr @.str.82 }, %struct.rpm_regulator_data { ptr @.str.26, i32 60, ptr @pm8901_pldo, ptr @.str.27 }, %struct.rpm_regulator_data { ptr @.str.28, i32 61, ptr @pm8901_pldo, ptr @.str.29 }, %struct.rpm_regulator_data { ptr @.str.30, i32 62, ptr @pm8901_pldo, ptr @.str.31 }, %struct.rpm_regulator_data { ptr @.str.32, i32 63, ptr @pm8901_pldo, ptr @.str.33 }, %struct.rpm_regulator_data { ptr @.str.34, i32 64, ptr @pm8901_pldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.76, i32 70, ptr @pm8901_ftsmps, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.16, i32 71, ptr @pm8901_ftsmps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.18, i32 72, ptr @pm8901_ftsmps, ptr @.str.19 }, %struct.rpm_regulator_data { ptr @.str.20, i32 73, ptr @pm8901_ftsmps, ptr @.str.21 }, %struct.rpm_regulator_data { ptr @.str.22, i32 74, ptr @pm8901_ftsmps, ptr @.str.23 }, %struct.rpm_regulator_data { ptr @.str.78, i32 65, ptr @pm8901_switch, ptr @.str.84 }, %struct.rpm_regulator_data { ptr @.str.46, i32 66, ptr @pm8901_switch, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.85, i32 67, ptr @pm8901_switch, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.87, i32 68, ptr @pm8901_switch, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.89, i32 69, ptr @pm8901_switch, ptr @.str.90 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_pm8921_regulators = internal constant [43 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.16, i32 115, ptr @pm8921_smps, ptr @.str.17 }, %struct.rpm_regulator_data { ptr @.str.18, i32 116, ptr @pm8921_smps, ptr @.str.19 }, %struct.rpm_regulator_data { ptr @.str.20, i32 117, ptr @pm8921_smps, ptr null }, %struct.rpm_regulator_data { ptr @.str.22, i32 118, ptr @pm8921_smps, ptr @.str.23 }, %struct.rpm_regulator_data { ptr @.str.91, i32 121, ptr @pm8921_smps, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.93, i32 122, ptr @pm8921_smps, ptr @.str.94 }, %struct.rpm_regulator_data { ptr @.str.51, i32 77, ptr @pm8921_nldo, ptr @.str.95 }, %struct.rpm_regulator_data { ptr @.str.26, i32 78, ptr @pm8921_nldo, ptr @.str.95 }, %struct.rpm_regulator_data { ptr @.str.28, i32 79, ptr @pm8921_pldo, ptr @.str.96 }, %struct.rpm_regulator_data { ptr @.str.30, i32 80, ptr @pm8921_pldo, ptr @.str.97 }, %struct.rpm_regulator_data { ptr @.str.32, i32 81, ptr @pm8921_pldo, ptr @.str.98 }, %struct.rpm_regulator_data { ptr @.str.34, i32 82, ptr @pm8921_pldo, ptr @.str.54 }, %struct.rpm_regulator_data { ptr @.str.36, i32 83, ptr @pm8921_pldo, ptr @.str.54 }, %struct.rpm_regulator_data { ptr @.str.37, i32 84, ptr @pm8921_pldo, ptr @.str.98 }, %struct.rpm_regulator_data { ptr @.str.39, i32 85, ptr @pm8921_pldo, ptr @.str.99 }, %struct.rpm_regulator_data { ptr @.str.41, i32 86, ptr @pm8921_pldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.42, i32 87, ptr @pm8921_pldo, ptr @.str.99 }, %struct.rpm_regulator_data { ptr @.str.43, i32 88, ptr @pm8921_nldo, ptr @.str.95 }, %struct.rpm_regulator_data { ptr @.str.44, i32 90, ptr @pm8921_pldo, ptr @.str.97 }, %struct.rpm_regulator_data { ptr @.str.60, i32 91, ptr @pm8921_pldo, ptr @.str.96 }, %struct.rpm_regulator_data { ptr @.str.61, i32 92, ptr @pm8921_pldo, ptr @.str.98 }, %struct.rpm_regulator_data { ptr @.str.62, i32 93, ptr @pm8921_pldo, ptr @.str.96 }, %struct.rpm_regulator_data { ptr @.str.64, i32 94, ptr @pm8921_nldo, ptr @.str.95 }, %struct.rpm_regulator_data { ptr @.str.68, i32 97, ptr @pm8921_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.70, i32 98, ptr @pm8921_pldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.72, i32 99, ptr @pm8921_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.74, i32 100, ptr @pm8921_nldo1200, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.75, i32 101, ptr @pm8921_nldo1200, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.104, i32 102, ptr @pm8921_nldo1200, ptr @.str.105 }, %struct.rpm_regulator_data { ptr @.str.106, i32 103, ptr @pm8921_nldo1200, ptr @.str.107 }, %struct.rpm_regulator_data { ptr @.str.108, i32 104, ptr @pm8921_nldo1200, ptr @.str.109 }, %struct.rpm_regulator_data { ptr @.str.110, i32 105, ptr @pm8921_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.46, i32 106, ptr @pm8921_switch, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.85, i32 107, ptr @pm8921_switch, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.87, i32 108, ptr @pm8921_switch, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.113, i32 109, ptr @pm8921_switch, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.115, i32 110, ptr @pm8921_switch, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.116, i32 111, ptr @pm8921_switch, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.117, i32 112, ptr @pm8921_switch, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.118, i32 132, ptr @pm8921_switch, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.120, i32 13, ptr @pm8921_switch, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.79, i32 114, ptr @pm8921_ncp, ptr @.str.80 }, %struct.rpm_regulator_data zeroinitializer], align 4
@rpm_smb208_regulators = internal constant [5 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.121, i32 136, ptr @smb208_smps, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.123, i32 137, ptr @smb208_smps, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.125, i32 138, ptr @smb208_smps, ptr @.str.126 }, %struct.rpm_regulator_data { ptr @.str.127, i32 139, ptr @smb208_smps, ptr @.str.128 }, %struct.rpm_regulator_data zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"s1\00", align 1
@pm8018_smps = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 154, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"vdd_s1\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"s2\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"vdd_s2\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"s3\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"vdd_s3\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"s4\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"vdd_s4\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"s5\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"vdd_s5\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@pm8018_pldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"vdd_l2\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"vdd_l3\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"l4\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"vdd_l4\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"l5\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"vdd_l5\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"l6\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"vdd_l7\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"l7\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"l8\00", align 1
@pm8018_nldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"vdd_l8\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"l9\00", align 1
@pm8921_nldo1200 = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 124, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo1200_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, align 4
@.str.40 = private unnamed_addr constant [19 x i8] c"vdd_l9_l10_l11_l12\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"l10\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"l11\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"l12\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"l14\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"vdd_l14\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"lvs1\00", align 1
@pm8018_switch = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.47 = private unnamed_addr constant [8 x i8] c"lvs1_in\00", align 1
@uV_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpm_reg_set_uV_sel, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_uV_enable, ptr @rpm_reg_uV_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@smps_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 29, i32 12500 }, %struct.linear_range { i32 750000, i32 30, i32 89, i32 12500 }, %struct.linear_range { i32 1500000, i32 90, i32 153, i32 25000 }], align 4
@rpm8960_smps_parts = internal constant %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388607, i32 0 }, %struct.request_member { i32 1, i32 1023, i32 0 }, %struct.request_member { i32 0, i32 8388608, i32 23 }, %struct.request_member { i32 1, i32 1047552, i32 10 }, %struct.request_member { i32 1, i32 7340032, i32 20 }, %struct.request_member { i32 1, i32 8388608, i32 23 }, %struct.request_member { i32 0, i32 251658240, i32 24 }, %struct.request_member { i32 0, i32 -268435456, i32 28 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 1, i32 520093696, i32 24 }, %struct.request_member { i32 1, i32 1610612736, i32 29 }, %struct.request_member zeroinitializer, i32 2 }, align 4
@.str.48 = private unnamed_addr constant [39 x i8] c"drivers/regulator/qcom_rpm-regulator.c\00", align 1
@pldo_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 59, i32 12500 }, %struct.linear_range { i32 1500000, i32 60, i32 123, i32 25000 }, %struct.linear_range { i32 3100000, i32 124, i32 160, i32 50000 }], align 4
@rpm8960_ldo_parts = internal constant %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388607, i32 0 }, %struct.request_member { i32 1, i32 1023, i32 0 }, %struct.request_member { i32 0, i32 8388608, i32 23 }, %struct.request_member { i32 1, i32 1047552, i32 10 }, %struct.request_member { i32 1, i32 7340032, i32 20 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 251658240, i32 24 }, %struct.request_member { i32 0, i32 -268435456, i32 28 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 2 }, align 4
@nldo_ranges = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], align 4
@nldo1200_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 59, i32 6250 }, %struct.linear_range { i32 750000, i32 60, i32 123, i32 12500 }], align 4
@switch_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_switch_enable, ptr @rpm_reg_switch_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rpm8960_switch_parts = internal constant %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 2, i32 1 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 60, i32 2 }, %struct.request_member { i32 0, i32 960, i32 6 }, %struct.request_member { i32 0, i32 1, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 3072, i32 10 }, i32 1 }, align 4
@.str.49 = private unnamed_addr constant [3 x i8] c"l0\00", align 1
@pm8058_nldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [14 x i8] c"vdd_l0_l1_lvs\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"l1\00", align 1
@pm8058_pldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"vdd_l2_l11_l12\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"vdd_l3_l4_l5\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"vdd_l6_l7\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"vdd_l9\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"vdd_l10\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"l13\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"vdd_l13_l16\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"vdd_l14_l15\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"l15\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"l16\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"l17\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"vdd_l17_l18\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"l18\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"l19\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"vdd_l19_l20\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"l20\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"l21\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"vdd_l21\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"l22\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"vdd_l22\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"l23\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"vdd_l23_l24_l25\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"l24\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"l25\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"s0\00", align 1
@pm8058_smps = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 154, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.77 = private unnamed_addr constant [7 x i8] c"vdd_s0\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"lvs0\00", align 1
@pm8058_switch = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.79 = private unnamed_addr constant [4 x i8] c"ncp\00", align 1
@pm8058_ncp = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ncp_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ncp_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"vdd_ncp\00", align 1
@mV_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpm_reg_set_mV_sel, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_mV_enable, ptr @rpm_reg_mV_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rpm8660_ldo_parts = internal constant %struct.rpm_reg_parts { %struct.request_member { i32 0, i32 4095, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 16773120, i32 12 }, %struct.request_member { i32 1, i32 1, i32 0 }, %struct.request_member { i32 1, i32 8190, i32 1 }, %struct.request_member { i32 0, i32 50331648, i32 24 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 1006632960, i32 26 }, %struct.request_member { i32 0, i32 -1073741824, i32 30 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 2 }, align 4
@rpm8660_smps_parts = internal constant %struct.rpm_reg_parts { %struct.request_member { i32 0, i32 4095, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 16773120, i32 12 }, %struct.request_member { i32 1, i32 1, i32 0 }, %struct.request_member { i32 1, i32 8190, i32 1 }, %struct.request_member { i32 0, i32 50331648, i32 24 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 1006632960, i32 26 }, %struct.request_member { i32 0, i32 -1073741824, i32 30 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 1, i32 2088960, i32 13 }, %struct.request_member { i32 1, i32 6291456, i32 21 }, %struct.request_member zeroinitializer, i32 2 }, align 4
@rpm8660_switch_parts = internal constant %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 2, i32 1 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 60, i32 2 }, %struct.request_member { i32 0, i32 192, i32 6 }, %struct.request_member { i32 0, i32 1, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 768, i32 8 }, i32 1 }, align 4
@ncp_ranges = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 31, i32 50000 }], align 4
@rpm8660_ncp_parts = internal constant %struct.rpm_reg_parts { %struct.request_member { i32 0, i32 4095, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 4096, i32 12 }, %struct.request_member { i32 0, i32 8192, i32 13 }, %struct.request_member { i32 0, i32 4177920, i32 14 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 1 }, align 4
@pm8901_nldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, align 4
@.str.81 = private unnamed_addr constant [7 x i8] c"vdd_l0\00", align 1
@pm8901_pldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, align 4
@.str.82 = private unnamed_addr constant [7 x i8] c"vdd_l1\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"vdd_l6\00", align 1
@pm8901_ftsmps = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 101, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ftsmps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 1, i8 0 }, align 4
@pm8901_switch = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [8 x i8] c"lvs0_in\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"lvs2\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"lvs2_in\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"lvs3\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"lvs3_in\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"mvs\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"mvs_in\00", align 1
@ftsmps_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 6, i32 50000 }, %struct.linear_range { i32 700000, i32 7, i32 63, i32 12500 }, %struct.linear_range { i32 1500000, i32 64, i32 100, i32 50000 }], align 4
@pm8921_smps = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 154, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 1, i8 0 }, align 4
@.str.91 = private unnamed_addr constant [3 x i8] c"s7\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"vdd_s7\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"vdd_s8\00", align 1
@pm8921_nldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, align 4
@.str.95 = private unnamed_addr constant [18 x i8] c"vdd_l1_l2_l12_l18\00", align 1
@pm8921_pldo = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, align 4
@.str.96 = private unnamed_addr constant [15 x i8] c"vdd_l3_l15_l17\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"vdd_l4_l14\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"vdd_l5_l8_l16\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"vdd_l9_l11\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"vdd_l10_l22\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"vdd_l21_l23_l29\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"vdd_l24\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"vdd_l25\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"l26\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"vdd_l26\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"l27\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"vdd_l27\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"l28\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"vdd_l28\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"l29\00", align 1
@pm8921_switch = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.111 = private unnamed_addr constant [13 x i8] c"vin_lvs1_3_6\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"vin_lvs2\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"lvs4\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"vin_lvs4_5_7\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"lvs5\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"lvs6\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"lvs7\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"usb-switch\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"vin_5vs\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"hdmi-switch\00", align 1
@pm8921_ncp = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ncp_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ncp_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@rpm8960_ncp_parts = internal constant %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388607, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388608, i32 23 }, %struct.request_member { i32 0, i32 16777216, i32 24 }, %struct.request_member { i32 0, i32 1040187392, i32 25 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 1 }, align 4
@.str.121 = private unnamed_addr constant [4 x i8] c"s1a\00", align 1
@smb208_smps = internal constant %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 235, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smb208_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, align 4
@.str.122 = private unnamed_addr constant [8 x i8] c"vin_s1a\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"s1b\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"vin_s1b\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"s2a\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"vin_s2a\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"s2b\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"vin_s2b\00", align 1
@smb208_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 29, i32 12500 }, %struct.linear_range { i32 750000, i32 30, i32 89, i32 12500 }, %struct.linear_range { i32 1500000, i32 90, i32 153, i32 25000 }, %struct.linear_range { i32 3100000, i32 154, i32 234, i32 25000 }], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_rpm_reg_exit, ptr @__initcall__kmod_qcom_rpm_regulator__247_1002_rpm_reg_init4, ptr @rpm_reg_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rpm_reg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpm_reg_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rpm_reg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpm_reg_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %53

10:                                               ; preds = %1
  %11 = tail call ptr @of_match_device(ptr noundef nonnull @rpm_of_match, ptr noundef %3) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %53

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  br label %21

21:                                               ; preds = %49, %19
  %22 = phi ptr [ %16, %19 ], [ %50, %49 ]
  %23 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 300, i32 noundef 3264) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rpm_regulator_data, ptr %22, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(300) %23, ptr noundef align 4 dereferenceable(300) %27, i32 300, i1 false)
  %28 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 1
  call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef nonnull @rpm_reg_probe.__key) #8
  %29 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 2
  store ptr %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rpm_regulator_data, ptr %22, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  store ptr %7, ptr %23, align 4
  %33 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3
  %34 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3, i32 6
  store i32 -1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3, i32 13
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3, i32 12
  store i32 0, ptr %36, align 4
  %37 = load ptr, ptr %22, align 4
  store ptr %37, ptr %33, align 4
  %38 = getelementptr inbounds %struct.rpm_regulator_data, ptr %22, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3, i32 1
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3, i32 2
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %23, i32 0, i32 3, i32 5
  store ptr @rpm_reg_of_parse, ptr %43, align 4
  store ptr %3, ptr %2, align 4
  store ptr %23, ptr %20, align 4
  %44 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %33, ptr noundef nonnull %2) #8
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %47) #9
  %48 = ptrtoint ptr %44 to i32
  br label %53

49:                                               ; preds = %25
  %50 = getelementptr %struct.rpm_regulator_data, ptr %22, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %21

53:                                               ; preds = %49, %46, %21, %14, %13, %9
  %54 = phi i32 [ %48, %46 ], [ -19, %13 ], [ -19, %9 ], [ 0, %14 ], [ -12, %21 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_of_parse(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpm_reg_parts, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.rpm_reg_parts, ptr %13, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rpm_reg_parts, ptr %13, i32 0, i32 3, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = xor i32 %16, -1
  %26 = load i32, ptr %14, align 4
  %27 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %19, align 4
  %31 = shl nuw i32 1, %30
  %32 = load i32, ptr %14, align 4
  %33 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, ptr %33, align 4
  br label %37

36:                                               ; preds = %18, %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #9
  br label %188

37:                                               ; preds = %24, %3
  %38 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %7, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rpm_reg_parts, ptr %39, i32 0, i32 11, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %94, label %43

43:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 4
  switch i32 %47, label %90 [
    i32 19200000, label %64
    i32 9600000, label %49
    i32 6400000, label %50
    i32 4800000, label %51
    i32 3840000, label %52
    i32 3200000, label %53
    i32 2740000, label %54
    i32 2400000, label %55
    i32 2130000, label %56
    i32 1920000, label %57
    i32 1750000, label %58
    i32 1600000, label %59
    i32 1480000, label %60
    i32 1370000, label %61
    i32 1280000, label %62
    i32 1200000, label %63
  ]

48:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #9
  br label %93

49:                                               ; preds = %46
  br label %64

50:                                               ; preds = %46
  br label %64

51:                                               ; preds = %46
  br label %64

52:                                               ; preds = %46
  br label %64

53:                                               ; preds = %46
  br label %64

54:                                               ; preds = %46
  br label %64

55:                                               ; preds = %46
  br label %64

56:                                               ; preds = %46
  br label %64

57:                                               ; preds = %46
  br label %64

58:                                               ; preds = %46
  br label %64

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %46
  br label %64

61:                                               ; preds = %46
  br label %64

62:                                               ; preds = %46
  br label %64

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %46
  %65 = phi i32 [ 1, %46 ], [ 2, %49 ], [ 3, %50 ], [ 4, %51 ], [ 5, %52 ], [ 6, %53 ], [ 7, %54 ], [ 8, %55 ], [ 9, %56 ], [ 10, %57 ], [ 11, %58 ], [ 12, %59 ], [ 13, %60 ], [ 14, %61 ], [ 15, %62 ], [ 16, %63 ]
  %66 = load ptr, ptr %38, align 4
  %67 = getelementptr inbounds %struct.rpm_reg_parts, ptr %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.rpm_reg_parts, ptr %66, i32 0, i32 11, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.rpm_reg_parts, ptr %66, i32 0, i32 11, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %65, %73
  %75 = xor i32 %69, -1
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load i32, ptr %67, align 4
  %80 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, %75
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %72, align 4
  %84 = shl i32 %65, %83
  %85 = load i32, ptr %67, align 4
  %86 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %85
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, ptr %86, align 4
  %89 = load ptr, ptr %38, align 4
  br label %91

90:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %47) #9
  br label %93

91:                                               ; preds = %78, %71, %64
  %92 = phi ptr [ %66, %64 ], [ %66, %71 ], [ %89, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %94

93:                                               ; preds = %90, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %188

94:                                               ; preds = %91, %37
  %95 = phi ptr [ %92, %91 ], [ %39, %37 ]
  %96 = getelementptr inbounds %struct.rpm_reg_parts, ptr %95, i32 0, i32 6, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %128, label %99

99:                                               ; preds = %94
  %100 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %101 = icmp eq ptr %100, null
  %102 = load ptr, ptr %38, align 4
  %103 = getelementptr inbounds %struct.rpm_reg_parts, ptr %102, i32 0, i32 6
  %104 = zext i1 %101 to i32
  %105 = getelementptr inbounds %struct.rpm_reg_parts, ptr %102, i32 0, i32 6, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.rpm_reg_parts, ptr %102, i32 0, i32 6, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = shl nuw i32 %104, %110
  %112 = xor i32 %106, -1
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32, ptr %103, align 4
  %117 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, %112
  store i32 %119, ptr %117, align 4
  %120 = load i32, ptr %109, align 4
  %121 = shl nuw i32 %104, %120
  %122 = load i32, ptr %103, align 4
  %123 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %122
  %124 = load i32, ptr %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, ptr %123, align 4
  %126 = load ptr, ptr %38, align 4
  br label %128

127:                                              ; preds = %108, %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #9
  br label %188

128:                                              ; preds = %115, %94
  %129 = phi ptr [ %126, %115 ], [ %95, %94 ]
  %130 = getelementptr inbounds %struct.rpm_reg_parts, ptr %129, i32 0, i32 5, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %188, label %133

133:                                              ; preds = %128
  %134 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %135 = call i32 @llvm.smin.i32(i32 %134, i32 0) #8
  %136 = icmp eq i32 %135, -22
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, ptr %5, align 4
  br label %162

138:                                              ; preds = %133
  %139 = icmp slt i32 %134, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %138
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #9
  br label %188

141:                                              ; preds = %138
  %142 = load i32, ptr %5, align 4
  switch i32 %142, label %161 [
    i32 0, label %162
    i32 1, label %143
    i32 2, label %144
    i32 3, label %153
    i32 4, label %157
  ]

143:                                              ; preds = %141
  br label %162

144:                                              ; preds = %141
  %145 = load ptr, ptr %38, align 4
  %146 = getelementptr inbounds %struct.rpm_reg_parts, ptr %145, i32 0, i32 5, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.rpm_reg_parts, ptr %145, i32 0, i32 5, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %147, %149
  %151 = icmp eq i32 %150, 3
  %152 = select i1 %151, i32 2, i32 3
  br label %162

153:                                              ; preds = %141
  %154 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %7, i32 0, i32 9
  %155 = load i8, ptr %154, align 4, !range !9
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %161, label %162

157:                                              ; preds = %141
  %158 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %7, i32 0, i32 10
  %159 = load i8, ptr %158, align 1, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157, %153, %141
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11) #9
  br label %188

162:                                              ; preds = %157, %153, %144, %143, %141, %137
  %163 = phi i32 [ 4, %157 ], [ 2, %153 ], [ %152, %144 ], [ 1, %143 ], [ 0, %137 ], [ %142, %141 ]
  %164 = load ptr, ptr %38, align 4
  %165 = getelementptr inbounds %struct.rpm_reg_parts, ptr %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.rpm_reg_parts, ptr %164, i32 0, i32 5, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %187, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.rpm_reg_parts, ptr %164, i32 0, i32 5, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = shl i32 %163, %171
  %173 = xor i32 %167, -1
  %174 = and i32 %172, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %169
  %177 = load i32, ptr %165, align 4
  %178 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %177
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, %173
  store i32 %180, ptr %178, align 4
  %181 = load i32, ptr %170, align 4
  %182 = shl i32 %163, %181
  %183 = load i32, ptr %165, align 4
  %184 = getelementptr %struct.qcom_rpm_reg, ptr %7, i32 0, i32 6, i32 %183
  %185 = load i32, ptr %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, ptr %184, align 4
  br label %188

187:                                              ; preds = %169, %162
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12) #9
  br label %188

188:                                              ; preds = %187, %176, %161, %140, %128, %127, %93, %36
  %189 = phi i32 [ -22, %36 ], [ -22, %127 ], [ -22, %161 ], [ -22, %187 ], [ %135, %140 ], [ -22, %93 ], [ 0, %176 ], [ 0, %128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_uV_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpm_reg_parts, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rpm_reg_parts, ptr %5, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @regulator_list_voltage_linear_range(ptr noundef %0, i32 noundef %1) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rpm_reg_parts, ptr %5, i32 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %11, %20
  %22 = load i32, ptr %7, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !10

26:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %49

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6
  %29 = load i32, ptr %6, align 4
  %30 = getelementptr %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %23
  store i32 %32, ptr %30, align 4
  %33 = load i32, ptr %19, align 4
  %34 = shl i32 %11, %33
  %35 = load i32, ptr %6, align 4
  %36 = getelementptr %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, ptr %36, align 4
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.rpm_reg_parts, ptr %42, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @qcom_rpm_write(ptr noundef %39, i32 noundef 0, i32 noundef %41, ptr noundef %28, i32 noundef %44) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %27, %13
  %48 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 7
  store i32 %11, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %27, %26
  %50 = phi i32 [ 0, %47 ], [ %45, %27 ], [ -22, %26 ]
  tail call void @mutex_unlock(ptr noundef %14) #8
  br label %51

51:                                               ; preds = %49, %10, %2
  %52 = phi i32 [ %50, %49 ], [ -22, %2 ], [ %11, %10 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_get_voltage(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_uV_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 1, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %11, %13
  %15 = load i32, ptr %5, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %43

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %23 = load i32, ptr %21, align 4
  %24 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %16
  store i32 %26, ptr %24, align 4
  %27 = load i32, ptr %12, align 4
  %28 = shl i32 %11, %27
  %29 = load i32, ptr %21, align 4
  %30 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.rpm_reg_parts, ptr %36, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @qcom_rpm_write(ptr noundef %33, i32 noundef 0, i32 noundef %35, ptr noundef %22, i32 noundef %38) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  store i32 1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %20, %19
  %44 = phi i32 [ -22, %19 ], [ 0, %41 ], [ %39, %20 ]
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %45

45:                                               ; preds = %43, %1
  %46 = phi i32 [ %44, %43 ], [ -22, %1 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_uV_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = load i32, ptr %5, align 4
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %14 = load i32, ptr %9, align 4
  %15 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %12
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.rpm_reg_parts, ptr %21, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @qcom_rpm_write(ptr noundef %18, i32 noundef 0, i32 noundef %20, ptr noundef %13, i32 noundef %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %8
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %29

29:                                               ; preds = %28, %1
  %30 = phi i32 [ %24, %28 ], [ -22, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_load(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpm_reg_parts, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rpm_reg_parts, ptr %5, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rpm_reg_parts, ptr %5, i32 0, i32 4, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %8, %12
  %14 = sdiv i32 %1, 1000
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %13)
  %16 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %16) #8
  %17 = load i32, ptr %11, align 4
  %18 = shl i32 %15, %17
  %19 = load i32, ptr %7, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !10

23:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %43

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6
  %26 = load i32, ptr %6, align 4
  %27 = getelementptr %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %20
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %11, align 4
  %31 = shl i32 %15, %30
  %32 = load i32, ptr %6, align 4
  %33 = getelementptr %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, ptr %33, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.rpm_reg_parts, ptr %39, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @qcom_rpm_write(ptr noundef %36, i32 noundef 0, i32 noundef %38, ptr noundef %25, i32 noundef %41) #8
  br label %43

43:                                               ; preds = %24, %23
  %44 = phi i32 [ -22, %23 ], [ %42, %24 ]
  tail call void @mutex_unlock(ptr noundef %16) #8
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi i32 [ %44, %43 ], [ -22, %2 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_switch_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 9, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 9, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = load i32, ptr %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %41

17:                                               ; preds = %8
  %18 = xor i32 %13, -1
  %19 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 9
  %20 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %21 = load i32, ptr %19, align 4
  %22 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %18
  store i32 %24, ptr %22, align 4
  %25 = load i32, ptr %10, align 4
  %26 = shl nuw i32 1, %25
  %27 = load i32, ptr %19, align 4
  %28 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, ptr %28, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.rpm_reg_parts, ptr %34, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @qcom_rpm_write(ptr noundef %31, i32 noundef 0, i32 noundef %33, ptr noundef %20, i32 noundef %36) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  store i32 1, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %17, %16
  %42 = phi i32 [ -22, %16 ], [ 0, %39 ], [ %37, %17 ]
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %43

43:                                               ; preds = %41, %1
  %44 = phi i32 [ %42, %41 ], [ -22, %1 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_switch_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 9, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpm_reg_parts, ptr %4, i32 0, i32 9
  %10 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = load i32, ptr %5, align 4
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %14 = load i32, ptr %9, align 4
  %15 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %12
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.rpm_reg_parts, ptr %21, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @qcom_rpm_write(ptr noundef %18, i32 noundef 0, i32 noundef %20, ptr noundef %13, i32 noundef %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %8
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %29

29:                                               ; preds = %28, %1
  %30 = phi i32 [ %24, %28 ], [ -22, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_mV_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_member, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @regulator_list_voltage_linear_range(ptr noundef %0, i32 noundef %1) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %12
  %18 = udiv i32 %10, 1000
  %19 = getelementptr inbounds %struct.request_member, ptr %5, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %18, %20
  %22 = load i32, ptr %6, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !10

26:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %49

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6
  %29 = load i32, ptr %5, align 4
  %30 = getelementptr %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %23
  store i32 %32, ptr %30, align 4
  %33 = load i32, ptr %19, align 4
  %34 = shl i32 %18, %33
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr %struct.qcom_rpm_reg, ptr %3, i32 0, i32 6, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, ptr %36, align 4
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.rpm_reg_parts, ptr %42, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @qcom_rpm_write(ptr noundef %39, i32 noundef 0, i32 noundef %41, ptr noundef %28, i32 noundef %44) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %27, %12
  %48 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %3, i32 0, i32 7
  store i32 %10, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %27, %26
  %50 = phi i32 [ 0, %47 ], [ %45, %27 ], [ -22, %26 ]
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %51

51:                                               ; preds = %49, %9, %2
  %52 = phi i32 [ %50, %49 ], [ -22, %2 ], [ %10, %9 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_mV_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.request_member, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = sdiv i32 %11, 1000
  %13 = getelementptr inbounds %struct.request_member, ptr %4, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %12, %14
  %16 = load i32, ptr %5, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !10

20:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %43

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %23 = load i32, ptr %4, align 4
  %24 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %17
  store i32 %26, ptr %24, align 4
  %27 = load i32, ptr %13, align 4
  %28 = shl i32 %12, %27
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.rpm_reg_parts, ptr %36, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @qcom_rpm_write(ptr noundef %33, i32 noundef 0, i32 noundef %35, ptr noundef %22, i32 noundef %38) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  store i32 1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %21, %20
  %44 = phi i32 [ -22, %20 ], [ 0, %41 ], [ %39, %21 ]
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %45

45:                                               ; preds = %43, %1
  %46 = phi i32 [ %44, %43 ], [ -22, %1 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpm_reg_mV_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.request_member, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = load i32, ptr %5, align 4
  %11 = xor i32 %10, -1
  %12 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr %struct.qcom_rpm_reg, ptr %2, i32 0, i32 6, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %11
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.rpm_reg_parts, ptr %20, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @qcom_rpm_write(ptr noundef %17, i32 noundef 0, i32 noundef %19, ptr noundef %12, i32 noundef %22) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %2, i32 0, i32 8
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %8
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %28

28:                                               ; preds = %27, %1
  %29 = phi i32 [ %23, %27 ], [ -22, %1 ]
  ret i32 %29
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
