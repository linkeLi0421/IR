; ModuleID = '/llk/IR/drivers/mfd/qcom_rpm.c_pt.bc'
source_filename = "../drivers/mfd/qcom_rpm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_rpm_write:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_rpm_write\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_rpm_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.qcom_rpm_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.qcom_rpm_resource = type { i32, i32, i32, i32 }
%struct.qcom_rpm = type { ptr, ptr, i32, i32, ptr, %struct.completion, %struct.mutex, ptr, ptr, ptr, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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

@.str = private unnamed_addr constant [23 x i8] c"drivers/mfd/qcom_rpm.c\00", align 1
@__kstrtab_qcom_rpm_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_rpm_write = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_rpm_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_rpm_write to i32), ptr @__kstrtab_qcom_rpm_write, ptr @__kstrtabns_qcom_rpm_write }, section "___ksymtab+qcom_rpm_write", align 4
@__initcall__kmod_qcom_rpm__170_702_qcom_rpm_init3 = internal global ptr @qcom_rpm_init, section ".initcall3.init", align 4
@qcom_rpm_driver = internal global %struct.platform_driver { ptr @qcom_rpm_probe, ptr @qcom_rpm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_qcom_rpm_exit = internal global ptr @qcom_rpm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [60 x i8] c"qcom_rpm.description=Qualcomm Resource Power Manager driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [35 x i8] c"qcom_rpm.file=drivers/mfd/qcom_rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [24 x i8] c"qcom_rpm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [65 x i8] c"qcom_rpm.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"qcom_rpm\00", align 1
@qcom_rpm_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apq8064_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8660_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8960_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-ipq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq806x_template }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-mdm9615\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mdm9615_template }, %struct.of_device_id zeroinitializer], align 4
@qcom_rpm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&rpm->lock\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"qcom,ipc\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"no qcom,ipc node\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"no offset in qcom,ipc\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"no bit in qcom,ipc\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"RPM version %u.%u.%u incompatible with driver version %u\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"RPM firmware %u.%u.%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"qcom_rpm_ack\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"failed to request ack interrupt\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"failed to mark ack irq as wakeup\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"qcom_rpm_err\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to request err interrupt\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"qcom_rpm_wakeup\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"failed to request wakeup interrupt\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"failed to mark wakeup irq as wakeup\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"ignoring notification!\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"RPM triggered fatal error\0A\00", align 1
@apq8064_template = internal constant %struct.qcom_rpm_data { i32 3, ptr @apq8064_rpm_resource_table, i32 134, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, align 4
@msm8660_template = internal constant %struct.qcom_rpm_data { i32 2, ptr @msm8660_rpm_resource_table, i32 132, i32 3, i32 11, i32 19, i32 27, i32 7, i32 7 }, align 4
@msm8960_template = internal constant %struct.qcom_rpm_data { i32 3, ptr @msm8960_rpm_resource_table, i32 133, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, align 4
@ipq806x_template = internal constant %struct.qcom_rpm_data { i32 3, ptr @ipq806x_rpm_resource_table, i32 140, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, align 4
@mdm9615_template = internal constant %struct.qcom_rpm_data { i32 3, ptr @mdm9615_rpm_resource_table, i32 162, i32 3, i32 11, i32 15, i32 23, i32 4, i32 7 }, align 4
@apq8064_rpm_resource_table = internal constant [134 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 22, i32 21, i32 12 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 35, i32 19, i32 18, i32 1 }, %struct.qcom_rpm_resource { i32 40, i32 21, i32 20, i32 1 }, %struct.qcom_rpm_resource { i32 37, i32 20, i32 19, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 32, i32 16, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 209, i32 124, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 30, i32 14, i32 11, i32 1 }, %struct.qcom_rpm_resource { i32 212, i32 127, i32 84, i32 2 }, %struct.qcom_rpm_resource { i32 34, i32 18, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 211, i32 126, i32 83, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 17, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 95, i32 30, i32 29, i32 21 }, %struct.qcom_rpm_resource { i32 29, i32 13, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 89, i32 27, i32 26, i32 1 }, %struct.qcom_rpm_resource { i32 94, i32 29, i32 28, i32 1 }, %struct.qcom_rpm_resource { i32 91, i32 28, i32 27, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 205, i32 120, i32 78, i32 2 }, %struct.qcom_rpm_resource { i32 201, i32 116, i32 76, i32 2 }, %struct.qcom_rpm_resource { i32 203, i32 118, i32 77, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 190, i32 105, i32 67, i32 2 }, %struct.qcom_rpm_resource { i32 192, i32 107, i32 68, i32 2 }, %struct.qcom_rpm_resource { i32 132, i32 47, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 134, i32 49, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 136, i32 51, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 138, i32 53, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 140, i32 55, i32 42, i32 2 }, %struct.qcom_rpm_resource { i32 142, i32 57, i32 43, i32 2 }, %struct.qcom_rpm_resource { i32 144, i32 59, i32 44, i32 2 }, %struct.qcom_rpm_resource { i32 146, i32 61, i32 45, i32 2 }, %struct.qcom_rpm_resource { i32 148, i32 63, i32 46, i32 2 }, %struct.qcom_rpm_resource { i32 150, i32 65, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 152, i32 67, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 154, i32 69, i32 49, i32 2 }, %struct.qcom_rpm_resource { i32 156, i32 71, i32 50, i32 2 }, %struct.qcom_rpm_resource { i32 158, i32 73, i32 51, i32 2 }, %struct.qcom_rpm_resource { i32 160, i32 75, i32 52, i32 2 }, %struct.qcom_rpm_resource { i32 162, i32 77, i32 53, i32 2 }, %struct.qcom_rpm_resource { i32 164, i32 79, i32 54, i32 2 }, %struct.qcom_rpm_resource { i32 166, i32 81, i32 55, i32 2 }, %struct.qcom_rpm_resource { i32 168, i32 83, i32 56, i32 2 }, %struct.qcom_rpm_resource { i32 170, i32 85, i32 57, i32 2 }, %struct.qcom_rpm_resource { i32 172, i32 87, i32 58, i32 2 }, %struct.qcom_rpm_resource { i32 174, i32 89, i32 59, i32 2 }, %struct.qcom_rpm_resource { i32 176, i32 91, i32 60, i32 2 }, %struct.qcom_rpm_resource { i32 178, i32 93, i32 61, i32 2 }, %struct.qcom_rpm_resource { i32 180, i32 95, i32 62, i32 2 }, %struct.qcom_rpm_resource { i32 182, i32 97, i32 63, i32 2 }, %struct.qcom_rpm_resource { i32 184, i32 99, i32 64, i32 2 }, %struct.qcom_rpm_resource { i32 186, i32 101, i32 65, i32 2 }, %struct.qcom_rpm_resource { i32 188, i32 103, i32 66, i32 2 }, %struct.qcom_rpm_resource { i32 194, i32 109, i32 69, i32 1 }, %struct.qcom_rpm_resource { i32 195, i32 110, i32 70, i32 1 }, %struct.qcom_rpm_resource { i32 196, i32 111, i32 71, i32 1 }, %struct.qcom_rpm_resource { i32 197, i32 112, i32 72, i32 1 }, %struct.qcom_rpm_resource { i32 198, i32 113, i32 73, i32 1 }, %struct.qcom_rpm_resource { i32 199, i32 114, i32 74, i32 1 }, %struct.qcom_rpm_resource { i32 200, i32 115, i32 75, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 207, i32 122, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 116, i32 31, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 118, i32 33, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 120, i32 35, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 122, i32 37, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 124, i32 39, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 126, i32 41, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 128, i32 43, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 130, i32 45, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 26, i32 10, i32 6, i32 1 }, %struct.qcom_rpm_resource { i32 214, i32 -1, i32 7, i32 1 }, %struct.qcom_rpm_resource { i32 31, i32 15, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 59, i32 26, i32 25, i32 30 }, %struct.qcom_rpm_resource { i32 28, i32 12, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 53, i32 23, i32 22, i32 1 }, %struct.qcom_rpm_resource { i32 58, i32 25, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 55, i32 24, i32 23, i32 1 }, %struct.qcom_rpm_resource { i32 210, i32 125, i32 82, i32 1 }, %struct.qcom_rpm_resource { i32 215, i32 131, i32 89, i32 1 }], align 4
@msm8660_rpm_resource_table = internal constant [132 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 51, i32 28, i32 21, i32 6 }, %struct.qcom_rpm_resource { i32 35, i32 15, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 45, i32 25, i32 18, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 47, i32 26, i32 19, i32 3 }, %struct.qcom_rpm_resource { i32 44, i32 24, i32 17, i32 1 }, %struct.qcom_rpm_resource { i32 40, i32 20, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 229, i32 132, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 32, i32 12, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 38, i32 18, i32 11, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 43, i32 23, i32 16, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 21, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 111, i32 36, i32 29, i32 23 }, %struct.qcom_rpm_resource { i32 37, i32 17, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 105, i32 33, i32 26, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 107, i32 34, i32 27, i32 3 }, %struct.qcom_rpm_resource { i32 34, i32 14, i32 7, i32 1 }, %struct.qcom_rpm_resource { i32 173, i32 76, i32 52, i32 2 }, %struct.qcom_rpm_resource { i32 175, i32 78, i32 53, i32 2 }, %struct.qcom_rpm_resource { i32 177, i32 80, i32 54, i32 2 }, %struct.qcom_rpm_resource { i32 179, i32 82, i32 55, i32 2 }, %struct.qcom_rpm_resource { i32 181, i32 84, i32 56, i32 2 }, %struct.qcom_rpm_resource { i32 183, i32 86, i32 57, i32 2 }, %struct.qcom_rpm_resource { i32 185, i32 88, i32 58, i32 2 }, %struct.qcom_rpm_resource { i32 187, i32 90, i32 59, i32 2 }, %struct.qcom_rpm_resource { i32 189, i32 92, i32 60, i32 2 }, %struct.qcom_rpm_resource { i32 191, i32 94, i32 61, i32 2 }, %struct.qcom_rpm_resource { i32 193, i32 96, i32 62, i32 2 }, %struct.qcom_rpm_resource { i32 195, i32 98, i32 63, i32 2 }, %struct.qcom_rpm_resource { i32 197, i32 100, i32 64, i32 2 }, %struct.qcom_rpm_resource { i32 199, i32 102, i32 65, i32 2 }, %struct.qcom_rpm_resource { i32 201, i32 104, i32 66, i32 2 }, %struct.qcom_rpm_resource { i32 203, i32 106, i32 67, i32 2 }, %struct.qcom_rpm_resource { i32 205, i32 108, i32 68, i32 2 }, %struct.qcom_rpm_resource { i32 207, i32 110, i32 69, i32 2 }, %struct.qcom_rpm_resource { i32 209, i32 112, i32 70, i32 2 }, %struct.qcom_rpm_resource { i32 211, i32 114, i32 71, i32 2 }, %struct.qcom_rpm_resource { i32 213, i32 116, i32 72, i32 2 }, %struct.qcom_rpm_resource { i32 215, i32 118, i32 73, i32 2 }, %struct.qcom_rpm_resource { i32 217, i32 120, i32 74, i32 2 }, %struct.qcom_rpm_resource { i32 219, i32 122, i32 75, i32 2 }, %struct.qcom_rpm_resource { i32 221, i32 124, i32 76, i32 2 }, %struct.qcom_rpm_resource { i32 223, i32 126, i32 77, i32 2 }, %struct.qcom_rpm_resource { i32 225, i32 128, i32 78, i32 1 }, %struct.qcom_rpm_resource { i32 226, i32 129, i32 79, i32 1 }, %struct.qcom_rpm_resource { i32 227, i32 130, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 163, i32 66, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 165, i32 68, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 167, i32 70, i32 49, i32 2 }, %struct.qcom_rpm_resource { i32 169, i32 72, i32 50, i32 2 }, %struct.qcom_rpm_resource { i32 171, i32 74, i32 51, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 144, i32 47, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 146, i32 49, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 148, i32 51, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 150, i32 53, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 152, i32 55, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 154, i32 57, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 156, i32 59, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 158, i32 61, i32 42, i32 1 }, %struct.qcom_rpm_resource { i32 159, i32 62, i32 43, i32 1 }, %struct.qcom_rpm_resource { i32 160, i32 63, i32 44, i32 1 }, %struct.qcom_rpm_resource { i32 161, i32 64, i32 45, i32 1 }, %struct.qcom_rpm_resource { i32 162, i32 65, i32 46, i32 1 }, %struct.qcom_rpm_resource { i32 134, i32 37, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 136, i32 39, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 138, i32 41, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 140, i32 43, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 142, i32 45, i32 34, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 33, i32 13, i32 6, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 39, i32 19, i32 12, i32 1 }, %struct.qcom_rpm_resource { i32 42, i32 22, i32 15, i32 1 }, %struct.qcom_rpm_resource { i32 69, i32 32, i32 25, i32 22 }, %struct.qcom_rpm_resource { i32 36, i32 16, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 63, i32 29, i32 22, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 65, i32 30, i32 23, i32 3 }], align 4
@msm8960_rpm_resource_table = internal constant [133 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 22, i32 21, i32 12 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 35, i32 19, i32 18, i32 1 }, %struct.qcom_rpm_resource { i32 40, i32 21, i32 20, i32 1 }, %struct.qcom_rpm_resource { i32 37, i32 20, i32 19, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 32, i32 16, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 204, i32 118, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 30, i32 14, i32 11, i32 1 }, %struct.qcom_rpm_resource { i32 207, i32 121, i32 84, i32 2 }, %struct.qcom_rpm_resource { i32 34, i32 18, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 206, i32 120, i32 83, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 17, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 94, i32 30, i32 29, i32 23 }, %struct.qcom_rpm_resource { i32 29, i32 13, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 88, i32 27, i32 26, i32 1 }, %struct.qcom_rpm_resource { i32 93, i32 29, i32 28, i32 1 }, %struct.qcom_rpm_resource { i32 90, i32 28, i32 27, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 191, i32 105, i32 67, i32 2 }, %struct.qcom_rpm_resource { i32 193, i32 107, i32 68, i32 2 }, %struct.qcom_rpm_resource { i32 133, i32 47, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 135, i32 49, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 137, i32 51, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 139, i32 53, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 141, i32 55, i32 42, i32 2 }, %struct.qcom_rpm_resource { i32 143, i32 57, i32 43, i32 2 }, %struct.qcom_rpm_resource { i32 145, i32 59, i32 44, i32 2 }, %struct.qcom_rpm_resource { i32 147, i32 61, i32 45, i32 2 }, %struct.qcom_rpm_resource { i32 149, i32 63, i32 46, i32 2 }, %struct.qcom_rpm_resource { i32 151, i32 65, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 153, i32 67, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 155, i32 69, i32 49, i32 2 }, %struct.qcom_rpm_resource { i32 157, i32 71, i32 50, i32 2 }, %struct.qcom_rpm_resource { i32 159, i32 73, i32 51, i32 2 }, %struct.qcom_rpm_resource { i32 161, i32 75, i32 52, i32 2 }, %struct.qcom_rpm_resource { i32 163, i32 77, i32 53, i32 2 }, %struct.qcom_rpm_resource { i32 165, i32 79, i32 54, i32 2 }, %struct.qcom_rpm_resource { i32 167, i32 81, i32 55, i32 2 }, %struct.qcom_rpm_resource { i32 169, i32 83, i32 56, i32 2 }, %struct.qcom_rpm_resource { i32 171, i32 85, i32 57, i32 2 }, %struct.qcom_rpm_resource { i32 173, i32 87, i32 58, i32 2 }, %struct.qcom_rpm_resource { i32 175, i32 89, i32 59, i32 2 }, %struct.qcom_rpm_resource { i32 177, i32 91, i32 60, i32 2 }, %struct.qcom_rpm_resource { i32 179, i32 93, i32 61, i32 2 }, %struct.qcom_rpm_resource { i32 181, i32 95, i32 62, i32 2 }, %struct.qcom_rpm_resource { i32 183, i32 97, i32 63, i32 2 }, %struct.qcom_rpm_resource { i32 185, i32 99, i32 64, i32 2 }, %struct.qcom_rpm_resource { i32 187, i32 101, i32 65, i32 2 }, %struct.qcom_rpm_resource { i32 189, i32 103, i32 66, i32 2 }, %struct.qcom_rpm_resource { i32 195, i32 109, i32 69, i32 1 }, %struct.qcom_rpm_resource { i32 196, i32 110, i32 70, i32 1 }, %struct.qcom_rpm_resource { i32 197, i32 111, i32 71, i32 1 }, %struct.qcom_rpm_resource { i32 198, i32 112, i32 72, i32 1 }, %struct.qcom_rpm_resource { i32 199, i32 113, i32 73, i32 1 }, %struct.qcom_rpm_resource { i32 200, i32 114, i32 74, i32 1 }, %struct.qcom_rpm_resource { i32 201, i32 115, i32 75, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 202, i32 116, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 117, i32 31, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 119, i32 33, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 121, i32 35, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 123, i32 37, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 125, i32 39, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 127, i32 41, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 129, i32 43, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 131, i32 45, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 26, i32 10, i32 6, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 31, i32 15, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 59, i32 26, i32 25, i32 29 }, %struct.qcom_rpm_resource { i32 28, i32 12, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 53, i32 23, i32 22, i32 1 }, %struct.qcom_rpm_resource { i32 58, i32 25, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 55, i32 24, i32 23, i32 1 }, %struct.qcom_rpm_resource { i32 205, i32 119, i32 82, i32 1 }], align 4
@ipq806x_rpm_resource_table = internal constant [140 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 41, i32 22, i32 21, i32 12 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 8, i32 1 }, %struct.qcom_rpm_resource { i32 35, i32 19, i32 18, i32 2 }, %struct.qcom_rpm_resource { i32 40, i32 21, i32 20, i32 1 }, %struct.qcom_rpm_resource { i32 37, i32 20, i32 19, i32 3 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 32, i32 16, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 209, i32 33, i32 31, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 30, i32 14, i32 11, i32 1 }, %struct.qcom_rpm_resource { i32 212, i32 36, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 34, i32 18, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 211, i32 35, i32 33, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 95, i32 30, i32 29, i32 2 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 89, i32 27, i32 26, i32 2 }, %struct.qcom_rpm_resource { i32 94, i32 29, i32 28, i32 1 }, %struct.qcom_rpm_resource { i32 91, i32 28, i32 27, i32 3 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 26, i32 10, i32 6, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 31, i32 15, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 59, i32 26, i32 25, i32 30 }, %struct.qcom_rpm_resource { i32 28, i32 12, i32 9, i32 1 }, %struct.qcom_rpm_resource { i32 53, i32 23, i32 22, i32 2 }, %struct.qcom_rpm_resource { i32 58, i32 25, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 55, i32 24, i32 23, i32 3 }, %struct.qcom_rpm_resource { i32 210, i32 34, i32 32, i32 1 }, %struct.qcom_rpm_resource { i32 215, i32 40, i32 39, i32 1 }, %struct.qcom_rpm_resource { i32 29, i32 13, i32 10, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 17, i32 14, i32 1 }, %struct.qcom_rpm_resource { i32 216, i32 41, i32 90, i32 2 }, %struct.qcom_rpm_resource { i32 218, i32 43, i32 91, i32 2 }, %struct.qcom_rpm_resource { i32 220, i32 45, i32 92, i32 2 }, %struct.qcom_rpm_resource { i32 222, i32 47, i32 93, i32 2 }], align 4
@mdm9615_rpm_resource_table = internal constant [162 x %struct.qcom_rpm_resource] [%struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 37, i32 18, i32 25, i32 27 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 31, i32 15, i32 22, i32 2 }, %struct.qcom_rpm_resource { i32 36, i32 17, i32 24, i32 1 }, %struct.qcom_rpm_resource { i32 33, i32 16, i32 23, i32 3 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 29, i32 13, i32 13, i32 1 }, %struct.qcom_rpm_resource { i32 105, i32 60, i32 81, i32 1 }, %struct.qcom_rpm_resource { i32 25, i32 9, i32 5, i32 1 }, %struct.qcom_rpm_resource { i32 27, i32 11, i32 11, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 30, i32 14, i32 16, i32 1 }, %struct.qcom_rpm_resource { i32 107, i32 62, i32 83, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 28, i32 12, i32 12, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 26, i32 10, i32 9, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 106, i32 61, i32 82, i32 1 }, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource zeroinitializer, %struct.qcom_rpm_resource { i32 64, i32 19, i32 30, i32 2 }, %struct.qcom_rpm_resource { i32 66, i32 21, i32 31, i32 2 }, %struct.qcom_rpm_resource { i32 68, i32 23, i32 32, i32 2 }, %struct.qcom_rpm_resource { i32 70, i32 25, i32 33, i32 2 }, %struct.qcom_rpm_resource { i32 72, i32 27, i32 34, i32 2 }, %struct.qcom_rpm_resource { i32 74, i32 29, i32 35, i32 2 }, %struct.qcom_rpm_resource { i32 76, i32 31, i32 36, i32 2 }, %struct.qcom_rpm_resource { i32 78, i32 33, i32 37, i32 2 }, %struct.qcom_rpm_resource { i32 80, i32 35, i32 38, i32 2 }, %struct.qcom_rpm_resource { i32 82, i32 37, i32 39, i32 2 }, %struct.qcom_rpm_resource { i32 84, i32 39, i32 40, i32 2 }, %struct.qcom_rpm_resource { i32 86, i32 41, i32 41, i32 2 }, %struct.qcom_rpm_resource { i32 88, i32 43, i32 42, i32 2 }, %struct.qcom_rpm_resource { i32 90, i32 45, i32 43, i32 2 }, %struct.qcom_rpm_resource { i32 92, i32 47, i32 44, i32 2 }, %struct.qcom_rpm_resource { i32 94, i32 49, i32 45, i32 2 }, %struct.qcom_rpm_resource { i32 96, i32 51, i32 46, i32 2 }, %struct.qcom_rpm_resource { i32 98, i32 53, i32 47, i32 2 }, %struct.qcom_rpm_resource { i32 100, i32 55, i32 48, i32 2 }, %struct.qcom_rpm_resource { i32 102, i32 57, i32 49, i32 1 }, %struct.qcom_rpm_resource { i32 103, i32 58, i32 80, i32 2 }, %struct.qcom_rpm_resource { i32 109, i32 64, i32 87, i32 1 }], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_qcom_rpm_exit, ptr @__initcall__kmod_qcom_rpm__170_702_qcom_rpm_init3, ptr @__ksymtab_qcom_rpm_write, ptr @qcom_rpm_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_rpm_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca [7 x i32], align 4
  %7 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false)
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.qcom_rpm_data, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %10, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef null) #7
  br label %99

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.qcom_rpm_data, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.qcom_rpm_resource, ptr %17, i32 %2
  %19 = getelementptr %struct.qcom_rpm_resource, ptr %17, i32 %2, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 9, ptr noundef null) #7
  br label %99

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %24) #7
  %25 = load i32, ptr %19, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 9
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %38, %29 ]
  %31 = getelementptr i32, ptr %3, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %28, align 4
  %34 = load i32, ptr %18, align 4
  %35 = add i32 %34, %30
  %36 = shl i32 %35, 2
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #7, !srcloc !9
  %38 = add nuw i32 %30, 1
  %39 = load i32, ptr %19, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %29, label %41

41:                                               ; preds = %29, %23
  %42 = getelementptr %struct.qcom_rpm_resource, ptr %17, i32 %2, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 31
  %45 = shl nuw i32 1, %44
  %46 = lshr i32 %43, 5
  %47 = getelementptr i32, ptr %6, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %45, %48
  store i32 %49, ptr %47, align 4
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.qcom_rpm_data, ptr %50, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 8
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %50, %54 ], [ %68, %56 ]
  %58 = phi i32 [ 0, %54 ], [ %67, %56 ]
  %59 = getelementptr [7 x i32], ptr %6, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr inbounds %struct.qcom_rpm_data, ptr %57, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %58
  %65 = shl i32 %64, 2
  %66 = getelementptr i8, ptr %61, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %60) #7, !srcloc !9
  %67 = add nuw i32 %58, 1
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.qcom_rpm_data, ptr %68, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %56, label %72

72:                                               ; preds = %56, %41
  %73 = phi ptr [ %50, %41 ], [ %68, %56 ]
  %74 = shl nuw i32 1, %1
  %75 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.qcom_rpm_data, ptr %73, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %78, 2
  %80 = getelementptr i8, ptr %76, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %74) #7, !srcloc !9
  %81 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 5
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = shl nuw i32 1, %87
  %89 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef %85, i32 noundef %88) #7
  %90 = tail call i32 @wait_for_completion_timeout(ptr noundef %81, i32 noundef 500) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %72
  %93 = getelementptr inbounds %struct.qcom_rpm, ptr %0, i32 0, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = icmp slt i32 %94, 0
  %96 = select i1 %95, i32 -5, i32 0
  br label %97

97:                                               ; preds = %92, %72
  %98 = phi i32 [ -110, %72 ], [ %96, %92 ]
  tail call void @mutex_unlock(ptr noundef %24) #7
  br label %99

99:                                               ; preds = %97, %22, %14
  %100 = phi i32 [ -22, %14 ], [ -22, %22 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #7
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qcom_rpm_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_rpm_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @qcom_rpm_exit() #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_rpm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_rpm_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 76, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %120, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 4
  %7 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @qcom_rpm_probe.__key) #7
  %8 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #7
  %10 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %11 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = icmp eq ptr %10, inttoptr (i32 -517 to ptr)
  br i1 %14, label %120, label %15

15:                                               ; preds = %13
  store ptr null, ptr %11, align 4
  br label %16

16:                                               ; preds = %15, %6
  %17 = phi ptr [ null, %15 ], [ %10, %6 ]
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call i32 @clk_enable(ptr noundef %17) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %24

24:                                               ; preds = %23, %20, %16
  %25 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %120, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %120, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @of_match_device(ptr noundef nonnull @qcom_rpm_of_match, ptr noundef %3) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %120, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.of_device_id, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 11
  store ptr %38, ptr %39, align 4
  %40 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %41 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %40) #7
  %42 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = ptrtoint ptr %41 to i32
  br label %120

46:                                               ; preds = %36
  %47 = getelementptr i8, ptr %41, i32 1024
  %48 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 8
  store ptr %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %41, i32 1536
  %50 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 9
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %52 = load ptr, ptr %51, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !10
  %53 = call i32 @__of_parse_phandle_with_args(ptr noundef %52, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %54 = icmp ne i32 %53, 0
  %55 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %56 = icmp eq ptr %55, null
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #8
  br label %120

59:                                               ; preds = %46
  %60 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %55) #7
  %61 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  call void @of_node_put(ptr noundef nonnull %55) #7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = ptrtoint ptr %62 to i32
  br label %120

66:                                               ; preds = %59
  %67 = load ptr, ptr %51, align 8
  %68 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 2
  %69 = call i32 @of_property_read_u32_index(ptr noundef %67, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef %68) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  br label %120

72:                                               ; preds = %66
  %73 = load ptr, ptr %51, align 8
  %74 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 3
  %75 = call i32 @of_property_read_u32_index(ptr noundef %73, ptr noundef nonnull @.str.7, i32 noundef 2, ptr noundef %74) #7
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #8
  br label %120

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %79, align 8
  %80 = load ptr, ptr %42, align 4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %82 = load ptr, ptr %42, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %85 = load ptr, ptr %42, align 4
  %86 = getelementptr i8, ptr %85, i32 8
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %88 = load ptr, ptr %39, align 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %81, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %81, i32 noundef %84, i32 noundef %87, i32 noundef %89) #8
  br label %120

92:                                               ; preds = %78
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  call void @arm_heavy_mb() #7
  %93 = load ptr, ptr %48, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %81) #7, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  %94 = load ptr, ptr %48, align 4
  %95 = getelementptr i8, ptr %94, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %84) #7, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %96 = load ptr, ptr %48, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %87) #7, !srcloc !9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %81, i32 noundef %84, i32 noundef %87) #8
  %98 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %25, ptr noundef nonnull @qcom_rpm_ack_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #8
  br label %120

101:                                              ; preds = %92
  %102 = call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef 1) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  br label %105

105:                                              ; preds = %104, %101
  %106 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %28, ptr noundef nonnull @qcom_rpm_err_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull %4) #7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #8
  br label %120

109:                                              ; preds = %105
  %110 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %31, ptr noundef nonnull @qcom_rpm_wakeup_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef nonnull %4) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #8
  br label %120

113:                                              ; preds = %109
  %114 = call i32 @irq_set_irq_wake(i32 noundef %31, i32 noundef 1) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.20) #8
  br label %117

117:                                              ; preds = %116, %113
  %118 = load ptr, ptr %51, align 8
  %119 = call i32 @of_platform_populate(ptr noundef %118, ptr noundef null, ptr noundef null, ptr noundef %3) #7
  br label %120

120:                                              ; preds = %117, %112, %108, %100, %91, %77, %71, %64, %58, %44, %33, %30, %27, %24, %13, %1
  %121 = phi i32 [ %45, %44 ], [ %65, %64 ], [ -22, %71 ], [ -22, %77 ], [ -14, %91 ], [ %98, %100 ], [ %106, %108 ], [ %110, %112 ], [ %119, %117 ], [ -19, %58 ], [ -12, %1 ], [ -517, %13 ], [ %25, %24 ], [ %28, %27 ], [ %31, %30 ], [ -19, %33 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_rpm_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @of_platform_depopulate(ptr noundef %2) #7
  %5 = getelementptr inbounds %struct.qcom_rpm, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_rpm_ack_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.qcom_rpm_data, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.qcom_rpm_data, ptr %12, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %16, %2
  %17 = phi ptr [ %26, %16 ], [ %12, %2 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %2 ]
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.qcom_rpm_data, ptr %17, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %18
  %23 = shl i32 %22, 2
  %24 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #7, !srcloc !9
  %25 = add nuw i32 %18, 1
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.qcom_rpm_data, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %16, label %30

30:                                               ; preds = %16, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.qcom_rpm_data, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 2
  %36 = getelementptr i8, ptr %31, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #7, !srcloc !9
  %37 = and i32 %11, 1073741824
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.22) #8
  br label %44

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 10
  store i32 %11, ptr %42, align 4
  %43 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %43) #7
  br label %44

44:                                               ; preds = %41, %39
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_rpm_err_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.qcom_rpm, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #8
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @qcom_rpm_wakeup_interrupt(i32 noundef %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 3803600}
!10 = !{!"auto-init"}
!11 = !{i64 3804018}
!12 = !{i64 2151824089}
!13 = !{i64 2151824511}
!14 = !{i64 2151824933}
!15 = !{i64 2151826067}
!16 = !{i64 2151826476}
!17 = !{i64 2151826885}
!18 = !{i64 2151820272}
