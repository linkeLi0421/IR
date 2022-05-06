; ModuleID = '/llk/IR/drivers/mfd/ab8500-core.c_pt.bc'
source_filename = "../drivers/mfd/ab8500-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.abx500_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@on_stat_lock = internal global %struct.spinlock zeroinitializer, align 4
@turn_on_stat_mask = internal unnamed_addr global i8 -1, align 1
@turn_on_stat_set = internal unnamed_addr global i8 0, align 1
@__initcall__kmod_ab8500_core__247_1297_ab8500_core_init1 = internal global ptr @ab8500_core_init, section ".initcall1.init", align 4
@ab8500_core_driver = internal global %struct.platform_driver { ptr @ab8500_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ab8500_id, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"ab8500-core\00", align 1
@ab8500_id = internal constant [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ab8500-core\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"ab8505-core\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"ab9540-i2c\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ab8540-i2c\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Swoff bit programming\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Thermal protection activation\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Vbat lower then BattOk falling threshold\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Watchdog expired\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Non presence of 32kHz clock\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Battery level lower than power on reset threshold\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Power on key 1 pressed longer than 10 seconds\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"DB8500 thermal shutdown\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Battery rising (Vbat)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Power On Key 1 dbF\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Power On Key 2 dbF\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"RTC Alarm\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Main Charger Detect\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Vbus Detect (USB)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"USB ID Detect\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"UART Factory Mode Detect\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"no IRQ resource\0A\00", align 1
@ab8500_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"&ab8500->lock\00", align 1
@ab8500_probe.__key.19 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"&ab8500->irq_lock\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"could not probe HW\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"detected chip, %s rev. %1x.%1x\0A\00", align 1
@ab8500_version_str = internal constant [5 x [7 x i8]] [[7 x i8] c"AB8500\00", [7 x i8] c"AB8505\00", [7 x i8] c"AB9540\00", [7 x i8] zeroinitializer, [7 x i8] c"AB8540\00"], align 1
@ab8540_irq_regoffset = internal constant [27 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 -1, i32 -1, i32 -1, i32 -1, i32 11, i32 18, i32 19, i32 20, i32 21, i32 12, i32 13, i32 24, i32 5, i32 22, i32 23, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 4
@ab9540_irq_regoffset = internal constant [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 11, i32 18, i32 19, i32 20, i32 21, i32 12, i32 13, i32 24, i32 5, i32 22, i32 23], align 4
@ab8500_irq_regoffset = internal constant [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 11, i32 18, i32 19, i32 20, i32 21], align 4
@.str.23 = private unnamed_addr constant [28 x i8] c"switch off cause(s) (%#x): \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"\01c \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"\01c None\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"turn on reason(s) (%#x): \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"\01c\22%s\22 \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"\01cNone\0A\00", align 1
@ab8500_ops = internal global %struct.abx500_ops { ptr @ab8500_get_chip_id, ptr @ab8500_get_register, ptr @ab8500_set_register, ptr null, ptr null, ptr @ab8500_mask_and_set_register, ptr null, ptr null, ptr @ab8500_dump_all_banks }, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"ab8500\00", align 1
@ab9540_devs = internal constant [15 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.44, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.46, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.52, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.53, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.54, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.55, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.56, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@ab8540_devs = internal constant [14 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.44, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.46, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.57, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.58, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.59, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.56, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@ab8540_cut1_devs = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.60, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@ab8540_cut2_devs = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.61, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.62, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@ab8505_devs = internal constant [13 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.63, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.64, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.65, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.66, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.46, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.60, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.67, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.68, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.69, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.70, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.71, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.72, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.73, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.74, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.75, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.56, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@ab8500_devs = internal constant [17 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.63, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.64, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.76, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.77, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.78, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.66, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.46, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.60, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.67, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.68, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.69, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.69, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.69, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.79, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.80, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.81, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.82, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.83, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.72, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.73, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.74, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.75, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@ab8500_bm_devs = internal constant [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.84, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.85, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.86, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.87, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.88, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.89, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.90, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.91, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.31 = private unnamed_addr constant [25 x i8] c"error adding bm devices\0A\00", align 1
@ab9540_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab9540_sysfs_entries, ptr null }, align 4
@ab8500_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab8500_sysfs_entries, ptr null }, align 4
@ab8505_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab8505_sysfs_entries, ptr null }, align 4
@.str.32 = private unnamed_addr constant [30 x i8] c"error creating sysfs entries\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"prcmu i2c error %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"failed to read reg %#x: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"failed to write reg %#x: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"failed to modify reg %#x: %d\0A\00", align 1
@ab8500_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @ab8500_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.37 = private unnamed_addr constant [28 x i8] c"Failed to create irqdomain\0A\00", align 1
@ab8500_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.30, ptr null, ptr null, ptr null, ptr @ab8500_irq_mask, ptr null, ptr @ab8500_irq_mask, ptr null, ptr @ab8500_irq_unmask, ptr null, ptr null, ptr null, ptr @ab8500_irq_set_type, ptr null, ptr @ab8500_irq_lock, ptr @ab8500_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.38 = private unnamed_addr constant [36 x i8] c"Register offset 0x%2x not declared\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"ab8500-debug\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"ab8500-sysctrl\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"ab8500-ext-regulator\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"ab8500-regulator\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"abx500-clk\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"stericsson,abx500-clk\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"ab8500-gpadc\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"stericsson,ab8500-gpadc\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"ab8500-rtc\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"ab8500-acc-det\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"ab8500-poweron-key\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"ab8500-pwm\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"abx500-temp\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"pinctrl-ab9540\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"stericsson,ab9540-gpio\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"ab9540-usb\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"ab9540-codec\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"ab-iddet\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"pinctrl-ab8540\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"ab8540-usb\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"ab8540-codec\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"stericsson,ab8500-rtc\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"ab8540-rtc\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"stericsson,ab8540-rtc\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"stericsson,ab8500-debug\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"stericsson,ab8500-sysctrl\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"stericsson,ab8505-regulator\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"stericsson,ab8500-clk\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"stericsson,ab8500-acc-det\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"stericsson,ab8500-poweron-key\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"stericsson,ab8500-pwm\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"pinctrl-ab8505\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"stericsson,ab8505-gpio\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"ab8500-usb\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"stericsson,ab8500-usb\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"ab8500-codec\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"stericsson,ab8500-codec\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"stericsson,ab8500-ext-regulator\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"stericsson,ab8500-regulator\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"ab8500-clk\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"ab8500-denc\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"stericsson,ab8500-denc\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"pinctrl-ab8500\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"stericsson,ab8500-gpio\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"stericsson,abx500-temp\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"ab8500-charger\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"stericsson,ab8500-charger\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"ab8500-btemp\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"stericsson,ab8500-btemp\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"ab8500-fg\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"stericsson,ab8500-fg\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"ab8500-chargalg\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"stericsson,ab8500-chargalg\00", align 1
@ab9540_sysfs_entries = internal global [5 x ptr] [ptr @dev_attr_chip_id, ptr @dev_attr_switch_off_status, ptr @dev_attr_turn_on_status, ptr @dev_attr_dbbrstn, ptr null], align 4
@dev_attr_chip_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292 }, ptr @chip_id_show, ptr null }, align 4
@dev_attr_switch_off_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292 }, ptr @switch_off_status_show, ptr null }, align 4
@dev_attr_turn_on_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292 }, ptr @turn_on_status_show, ptr null }, align 4
@dev_attr_dbbrstn = internal global %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420 }, ptr @dbbrstn_show, ptr @dbbrstn_store }, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"chip_id\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"%#x\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"switch_off_status\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"turn_on_status\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"dbbrstn\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"Failed to set DBBRSTN %c, err %#x\0A\00", align 1
@ab8500_sysfs_entries = internal global [4 x ptr] [ptr @dev_attr_chip_id, ptr @dev_attr_switch_off_status, ptr @dev_attr_turn_on_status, ptr null], align 4
@ab8505_sysfs_entries = internal global [2 x ptr] [ptr @dev_attr_turn_on_status_2, ptr null], align 4
@dev_attr_turn_on_status_2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292 }, ptr @turn_on_status_2_show, ptr null }, align 4
@.str.99 = private unnamed_addr constant [17 x i8] c"turn_on_status_2\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ab8500_core__247_1297_ab8500_core_init1], section "llvm.metadata"
@switch.table.ab8500_probe = private unnamed_addr constant [4 x i32] [i32 20, i32 20, i32 14, i32 27], align 4
@switch.table.ab8500_probe.100 = private unnamed_addr constant [4 x ptr] [ptr @ab9540_irq_regoffset, ptr @ab9540_irq_regoffset, ptr @ab8500_irq_regoffset, ptr @ab8540_irq_regoffset], align 4
@switch.table.ab8500_probe.101 = private unnamed_addr constant [4 x i32] [i32 3, i32 3, i32 3, i32 4], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ab8500_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ab8500_override_turn_on_stat(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @on_stat_lock) #12
  store i8 %0, ptr @turn_on_stat_mask, align 1
  store i8 %1, ptr @turn_on_stat_set, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %3 = load i16, ptr @on_stat_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @on_stat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_core_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_core_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_probe(ptr noundef %0) #1 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 128, i32 noundef 3520) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %322, label %8

8:                                                ; preds = %1
  store ptr %5, ptr %6, align 4
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17) #13
  br label %322

12:                                               ; preds = %8
  %13 = load i32, ptr %9, align 4
  %14 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 10
  store ptr @ab8500_prcmu_read, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 8
  store ptr @ab8500_prcmu_write, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 9
  store ptr @ab8500_prcmu_write_masked, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef nonnull @ab8500_probe.__key) #12
  %19 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.20, ptr noundef nonnull @ab8500_probe.__key.19) #12
  %20 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 3
  store volatile i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %21, align 8
  %22 = icmp eq ptr %4, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %12
  tail call void @mutex_lock(ptr noundef %18) #12
  %28 = load ptr, ptr %15, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %6, i16 noundef zeroext 4226) #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef 4226, i32 noundef %29) #13
  tail call void @mutex_unlock(ptr noundef %18) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #13
  br label %322

33:                                               ; preds = %27
  tail call void @mutex_unlock(ptr noundef %18) #12
  %34 = and i32 %29, 255
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i32 [ %34, %33 ], [ %25, %23 ]
  %37 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  tail call void @mutex_lock(ptr noundef %18) #12
  %38 = load ptr, ptr %15, align 4
  %39 = tail call i32 %38(ptr noundef nonnull %6, i16 noundef zeroext 4224) #12
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.34, i32 noundef 4224, i32 noundef %39) #13
  tail call void @mutex_unlock(ptr noundef %18) #12
  br label %322

43:                                               ; preds = %35
  %44 = trunc i32 %39 to i8
  store i8 %44, ptr %2, align 1
  tail call void @mutex_unlock(ptr noundef %18) #12
  %45 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 7
  store i8 %44, ptr %45, align 4
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [5 x [7 x i8]], ptr @ab8500_version_str, i32 0, i32 %48
  %50 = lshr i32 %39, 4
  %51 = and i32 %50, 15
  %52 = and i32 %39, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.22, ptr noundef %49, i32 noundef %51, i32 noundef %52) #13
  %53 = load i32, ptr %47, align 4
  %54 = add i32 %53, -1
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = getelementptr inbounds [4 x i32], ptr @switch.table.ab8500_probe, i32 0, i32 %54
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds [4 x ptr], ptr @switch.table.ab8500_probe.100, i32 0, i32 %54
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds [4 x i32], ptr @switch.table.ab8500_probe.101, i32 0, i32 %54
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %56, %43
  %64 = phi i32 [ %58, %56 ], [ 14, %43 ]
  %65 = phi ptr [ %60, %56 ], [ @ab8500_irq_regoffset, %43 ]
  %66 = phi i32 [ %62, %56 ], [ 3, %43 ]
  %67 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 15
  store i32 %64, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 16
  store ptr %65, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 17
  store i32 %66, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 15
  %71 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %64, i32 noundef 3520) #12
  %72 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 13
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %322, label %74

74:                                               ; preds = %63
  %75 = load i32, ptr %70, align 4
  %76 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %75, i32 noundef 3520) #12
  %77 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 14
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %322, label %79

79:                                               ; preds = %74
  %80 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %6, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %2)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %322, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %6, align 4
  %84 = load i8, ptr %2, align 1
  %85 = zext i8 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.23, i32 noundef %85) #13
  %86 = icmp eq i8 %84, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %82
  %88 = and i8 %84, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1) #13
  br label %92

92:                                               ; preds = %90, %87
  %93 = and i8 %84, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2) #13
  br label %97

97:                                               ; preds = %95, %92
  %98 = and i8 %84, 4
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3) #13
  br label %102

102:                                              ; preds = %100, %97
  %103 = and i8 %84, 8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4) #13
  br label %107

107:                                              ; preds = %105, %102
  %108 = and i8 %84, 16
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.5) #13
  br label %112

112:                                              ; preds = %110, %107
  %113 = and i8 %84, 32
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.6) #13
  br label %117

117:                                              ; preds = %115, %112
  %118 = and i8 %84, 64
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7) #13
  br label %122

122:                                              ; preds = %120, %117
  %123 = icmp sgt i8 %84, -1
  br i1 %123, label %126, label %124

124:                                              ; preds = %122
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.8) #13
  br label %126

126:                                              ; preds = %124, %122
  store i8 0, ptr %2, align 1
  br label %127

127:                                              ; preds = %126, %82
  %128 = phi ptr [ @.str.25, %126 ], [ @.str.26, %82 ]
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %128) #13
  %130 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %2)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %322, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %6, align 4
  %134 = load i8, ptr %2, align 1
  %135 = zext i8 %134 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %133, ptr noundef nonnull @.str.27, i32 noundef %135) #13
  %136 = icmp eq i8 %134, 0
  br i1 %136, label %177, label %137

137:                                              ; preds = %132
  %138 = and i8 %134, 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.9) #13
  br label %142

142:                                              ; preds = %140, %137
  %143 = and i8 %134, 2
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.10) #13
  br label %147

147:                                              ; preds = %145, %142
  %148 = and i8 %134, 4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11) #13
  br label %152

152:                                              ; preds = %150, %147
  %153 = and i8 %134, 8
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.12) #13
  br label %157

157:                                              ; preds = %155, %152
  %158 = and i8 %134, 16
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.13) #13
  br label %162

162:                                              ; preds = %160, %157
  %163 = and i8 %134, 32
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14) #13
  br label %167

167:                                              ; preds = %165, %162
  %168 = and i8 %134, 64
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.15) #13
  br label %172

172:                                              ; preds = %170, %167
  %173 = icmp sgt i8 %134, -1
  br i1 %173, label %176, label %174

174:                                              ; preds = %172
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.16) #13
  br label %176

176:                                              ; preds = %174, %172
  store i8 0, ptr %2, align 1
  br label %177

177:                                              ; preds = %176, %132
  %178 = phi ptr [ @.str.25, %176 ], [ @.str.29, %132 ]
  %179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %178) #13
  %180 = load i32, ptr %47, align 4
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %6, i8 noundef zeroext 11, i8 noundef zeroext 2, ptr noundef nonnull %2)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %322, label %185

185:                                              ; preds = %182
  %186 = load i8, ptr %2, align 1
  %187 = and i8 %186, 3
  %188 = icmp eq i8 %187, 3
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  tail call void @_raw_spin_lock(ptr noundef nonnull @on_stat_lock) #12
  store i8 -3, ptr @turn_on_stat_mask, align 1
  store i8 32, ptr @turn_on_stat_set, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %190 = load i16, ptr @on_stat_lock, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr @on_stat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %192

192:                                              ; preds = %189, %185, %177
  %193 = load i32, ptr %70, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %227

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 16
  br label %197

197:                                              ; preds = %223, %195
  %198 = phi i32 [ %193, %195 ], [ %224, %223 ]
  %199 = phi i32 [ 0, %195 ], [ %225, %223 ]
  %200 = load ptr, ptr %196, align 4
  %201 = getelementptr i32, ptr %200, i32 %199
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 11
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = load i32, ptr %47, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i8, ptr %45, align 4
  %209 = icmp ugt i8 %208, 17
  br i1 %209, label %212, label %223

210:                                              ; preds = %197
  %211 = icmp slt i32 %202, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %210, %207, %204
  %213 = trunc i32 %202 to i8
  %214 = add i8 %213, 32
  %215 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %6, i8 noundef zeroext 14, i8 noundef zeroext %214, ptr noundef nonnull %2)
  %216 = load ptr, ptr %196, align 4
  %217 = getelementptr i32, ptr %216, i32 %199
  %218 = load i32, ptr %217, align 4
  %219 = trunc i32 %218 to i8
  %220 = add i8 %219, 64
  %221 = tail call fastcc i32 @set_register_interruptible(ptr noundef nonnull %6, i8 noundef zeroext 14, i8 noundef zeroext %220, i8 noundef zeroext -1)
  %222 = load i32, ptr %70, align 4
  br label %223

223:                                              ; preds = %212, %210, %207
  %224 = phi i32 [ %198, %210 ], [ %198, %207 ], [ %222, %212 ]
  %225 = add nuw nsw i32 %199, 1
  %226 = icmp slt i32 %225, %224
  br i1 %226, label %197, label %227

227:                                              ; preds = %223, %192
  %228 = load ptr, ptr %6, align 4
  %229 = tail call i32 @abx500_register_ops(ptr noundef %228, ptr noundef nonnull @ab8500_ops) #12
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %322

231:                                              ; preds = %227
  %232 = load i32, ptr %70, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %234, %231
  %235 = phi i32 [ %240, %234 ], [ 0, %231 ]
  %236 = load ptr, ptr %77, align 4
  %237 = getelementptr i8, ptr %236, i32 %235
  store i8 -1, ptr %237, align 1
  %238 = load ptr, ptr %72, align 4
  %239 = getelementptr i8, ptr %238, i32 %235
  store i8 -1, ptr %239, align 1
  %240 = add nuw nsw i32 %235, 1
  %241 = load i32, ptr %70, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %234, label %243

243:                                              ; preds = %234, %231
  %244 = tail call fastcc i32 @ab8500_irq_init(ptr noundef nonnull %6)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %322

246:                                              ; preds = %243
  %247 = load i32, ptr %14, align 4
  %248 = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %247, ptr noundef null, ptr noundef nonnull @ab8500_hierarchical_irq, i32 noundef 24576, ptr noundef nonnull @.str.30, ptr noundef nonnull %6) #12
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %322

250:                                              ; preds = %246
  %251 = load i32, ptr %47, align 4
  switch i32 %251, label %282 [
    i32 2, label %252
    i32 4, label %257
    i32 1, label %277
  ]

252:                                              ; preds = %250
  %253 = load ptr, ptr %6, align 4
  %254 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 5
  %255 = load ptr, ptr %254, align 4
  %256 = tail call i32 @mfd_add_devices(ptr noundef %253, i32 noundef 0, ptr noundef nonnull @ab9540_devs, i32 noundef 15, ptr noundef null, i32 noundef 0, ptr noundef %255) #12
  br label %287

257:                                              ; preds = %250
  %258 = load ptr, ptr %6, align 4
  %259 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 5
  %260 = load ptr, ptr %259, align 4
  %261 = tail call i32 @mfd_add_devices(ptr noundef %258, i32 noundef 0, ptr noundef nonnull @ab8540_devs, i32 noundef 14, ptr noundef null, i32 noundef 0, ptr noundef %260) #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %322

263:                                              ; preds = %257
  %264 = load i32, ptr %47, align 4
  %265 = icmp eq i32 %264, 4
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load i8, ptr %45, align 4
  %268 = icmp ugt i8 %267, 18
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %6, align 4
  %271 = load ptr, ptr %259, align 4
  %272 = tail call i32 @mfd_add_devices(ptr noundef %270, i32 noundef 0, ptr noundef nonnull @ab8540_cut1_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %271) #12
  br label %287

273:                                              ; preds = %266, %263
  %274 = load ptr, ptr %6, align 4
  %275 = load ptr, ptr %259, align 4
  %276 = tail call i32 @mfd_add_devices(ptr noundef %274, i32 noundef 0, ptr noundef nonnull @ab8540_cut2_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %275) #12
  br label %287

277:                                              ; preds = %250
  %278 = load ptr, ptr %6, align 4
  %279 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 5
  %280 = load ptr, ptr %279, align 4
  %281 = tail call i32 @mfd_add_devices(ptr noundef %278, i32 noundef 0, ptr noundef nonnull @ab8505_devs, i32 noundef 13, ptr noundef null, i32 noundef 0, ptr noundef %280) #12
  br label %287

282:                                              ; preds = %250
  %283 = load ptr, ptr %6, align 4
  %284 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 5
  %285 = load ptr, ptr %284, align 4
  %286 = tail call i32 @mfd_add_devices(ptr noundef %283, i32 noundef 0, ptr noundef nonnull @ab8500_devs, i32 noundef 17, ptr noundef null, i32 noundef 0, ptr noundef %285) #12
  br label %287

287:                                              ; preds = %282, %277, %273, %269, %252
  %288 = phi i32 [ %256, %252 ], [ %272, %269 ], [ %276, %273 ], [ %281, %277 ], [ %286, %282 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %322

290:                                              ; preds = %287
  %291 = load ptr, ptr %6, align 4
  %292 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 5
  %293 = load ptr, ptr %292, align 4
  %294 = tail call i32 @mfd_add_devices(ptr noundef %291, i32 noundef 0, ptr noundef nonnull @ab8500_bm_devs, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %293) #12
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %290
  %297 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %297, ptr noundef nonnull @.str.31) #13
  br label %298

298:                                              ; preds = %296, %290
  %299 = load i32, ptr %47, align 4
  switch i32 %299, label %303 [
    i32 1, label %300
    i32 2, label %300
    i32 4, label %304
  ]

300:                                              ; preds = %298, %298
  %301 = load i8, ptr %45, align 4
  %302 = icmp ugt i8 %301, 31
  br i1 %302, label %304, label %303

303:                                              ; preds = %300, %298
  br label %304

304:                                              ; preds = %303, %300, %298
  %305 = phi ptr [ @ab8500_attr_group, %303 ], [ @ab9540_attr_group, %298 ], [ @ab9540_attr_group, %300 ]
  %306 = load ptr, ptr %6, align 4
  %307 = tail call i32 @sysfs_create_group(ptr noundef %306, ptr noundef nonnull %305) #12
  %308 = load i32, ptr %47, align 4
  %309 = add i32 %308, -1
  %310 = icmp ult i32 %309, 2
  br i1 %310, label %311, label %317

311:                                              ; preds = %304
  %312 = load i8, ptr %45, align 4
  %313 = icmp ugt i8 %312, 31
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load ptr, ptr %6, align 4
  %316 = tail call i32 @sysfs_create_group(ptr noundef %315, ptr noundef nonnull @ab8505_attr_group) #12
  br label %317

317:                                              ; preds = %314, %311, %304
  %318 = phi i32 [ %316, %314 ], [ %307, %311 ], [ %307, %304 ]
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull @.str.32) #13
  br label %322

322:                                              ; preds = %320, %317, %287, %257, %246, %243, %227, %182, %127, %79, %74, %63, %41, %31, %11, %1
  %323 = phi i32 [ %29, %31 ], [ -19, %11 ], [ -12, %1 ], [ -12, %63 ], [ -12, %74 ], [ %80, %79 ], [ %130, %127 ], [ %183, %182 ], [ %229, %227 ], [ %244, %243 ], [ %248, %246 ], [ %261, %257 ], [ %288, %287 ], [ %318, %320 ], [ 0, %317 ], [ %39, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  ret i32 %323
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_prcmu_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #1 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !annotation !12
  %4 = lshr i16 %1, 8
  %5 = trunc i16 %4 to i8
  %6 = trunc i16 %1 to i8
  %7 = call i32 @prcmu_abb_read(i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %3, i8 noundef zeroext 1) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef %7) #13
  br label %14

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %7, %9 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_prcmu_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) #1 {
  %4 = alloca i8, align 1
  store i8 %2, ptr %4, align 1
  %5 = lshr i16 %1, 8
  %6 = trunc i16 %5 to i8
  %7 = trunc i16 %1 to i8
  %8 = call i32 @prcmu_abb_write(i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef nonnull %4, i8 noundef zeroext 1) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef %8) #13
  br label %12

12:                                               ; preds = %10, %3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_prcmu_write_masked(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %2, ptr %5, align 1
  store i8 %3, ptr %6, align 1
  %7 = lshr i16 %1, 8
  %8 = trunc i16 %7 to i8
  %9 = trunc i16 %1 to i8
  %10 = call i32 @prcmu_abb_write_masked(i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef nonnull %6, ptr noundef nonnull %5, i8 noundef zeroext 1) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.33, i32 noundef %10) #13
  br label %14

14:                                               ; preds = %12, %4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_register_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 {
  %5 = zext i8 %1 to i16
  %6 = shl nuw i16 %5, 8
  %7 = zext i8 %2 to i16
  %8 = or i16 %6, %7
  %9 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i16 noundef zeroext %8) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 4
  %16 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef %16, i32 noundef %12) #13
  br label %19

17:                                               ; preds = %4
  %18 = trunc i32 %12 to i8
  store i8 %18, ptr %3, align 1
  br label %19

19:                                               ; preds = %17, %14
  tail call void @mutex_unlock(ptr noundef %9) #12
  %20 = tail call i32 @llvm.smin.i32(i32 %12, i32 0)
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_register_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = zext i8 %1 to i16
  %6 = shl nuw i16 %5, 8
  %7 = zext i8 %2 to i16
  %8 = or i16 %6, %7
  %9 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i16 noundef zeroext %8, i8 noundef zeroext %3) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 4
  %16 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %16, i32 noundef %12) #13
  br label %17

17:                                               ; preds = %14, %4
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_register_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_irq_init(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %4 [
    i32 4, label %8
    i32 2, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp eq i32 %3, 1
  %6 = select i1 %5, i32 153, i32 112
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ 216, %1 ], [ %6, %4 ], [ 153, %7 ]
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 3
  %15 = select i1 %13, ptr null, ptr %14
  %16 = tail call ptr @irq_domain_create_simple(ptr noundef %15, i32 noundef %9, i32 noundef 0, ptr noundef nonnull @ab8500_irq_ops, ptr noundef %0) #12
  %17 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.37) #13
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi i32 [ -19, %19 ], [ 0, %8 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_hierarchical_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %121

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 10
  %10 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 16
  %12 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %13 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 5
  br label %14

14:                                               ; preds = %116, %7
  %15 = phi i32 [ 0, %7 ], [ %118, %116 ]
  %16 = phi i8 [ 0, %7 ], [ %117, %116 ]
  %17 = add i8 %16, 96
  %18 = zext i8 %17 to i16
  %19 = or i16 %18, 3584
  call void @mutex_lock(ptr noundef %8) #12
  %20 = load ptr, ptr %9, align 4
  %21 = call i32 %20(ptr noundef %1, i16 noundef zeroext %19) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load ptr, ptr %1, align 4
  %25 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef %25, i32 noundef %21) #13
  call void @mutex_unlock(ptr noundef %8) #12
  br label %116

26:                                               ; preds = %14
  %27 = trunc i32 %21 to i8
  call void @mutex_unlock(ptr noundef %8) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %116, label %29

29:                                               ; preds = %26
  %30 = shl nuw nsw i32 %15, 3
  %31 = icmp eq i8 %16, 3
  br label %32

32:                                               ; preds = %108, %29
  %33 = phi i8 [ %27, %29 ], [ %112, %108 ]
  %34 = zext i8 %33 to i32
  %35 = call i32 @llvm.cttz.i32(i32 %34, i1 false) #12, !range !13
  %36 = add nuw nsw i32 %35, %30
  %37 = trunc i32 %36 to i8
  switch i8 %37, label %41 [
    i8 17, label %39
    i8 16, label %38
  ], !prof !14

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i8 [ 25, %38 ], [ 24, %32 ]
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i8 [ %37, %32 ], [ %40, %39 ]
  %43 = icmp ugt i8 %42, 23
  %44 = select i1 %31, i1 %43, i1 false
  %45 = add i8 %42, 2
  %46 = select i1 %44, i8 %45, i8 %42
  %47 = add i8 %46, 32
  %48 = zext i8 %47 to i16
  %49 = or i16 %48, 3584
  call void @mutex_lock(ptr noundef %8) #12
  %50 = load ptr, ptr %9, align 4
  %51 = call i32 %50(ptr noundef %1, i16 noundef zeroext %49) #12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load ptr, ptr %1, align 4
  %55 = zext i16 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.34, i32 noundef %55, i32 noundef %51) #13
  call void @mutex_unlock(ptr noundef %8) #12
  br label %108

56:                                               ; preds = %41
  %57 = trunc i32 %51 to i8
  call void @mutex_unlock(ptr noundef %8) #12
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %108, label %59

59:                                               ; preds = %56
  %60 = zext i8 %46 to i32
  %61 = load i32, ptr %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %114

63:                                               ; preds = %59
  %64 = load ptr, ptr %11, align 4
  br label %65

65:                                               ; preds = %70, %63
  %66 = phi i32 [ 0, %63 ], [ %71, %70 ]
  %67 = getelementptr i32, ptr %64, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %60
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = add nuw nsw i32 %66, 1
  %72 = icmp eq i32 %71, %61
  br i1 %72, label %114, label %65

73:                                               ; preds = %65
  %74 = load ptr, ptr %12, align 4
  %75 = getelementptr i8, ptr %74, i32 %66
  %76 = load i8, ptr %75, align 1
  %77 = xor i8 %76, -1
  %78 = and i8 %77, %57
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %73
  %81 = shl i32 %66, 3
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i8 [ %78, %80 ], [ %89, %82 ]
  %84 = call i8 @llvm.cttz.i8(i8 %83, i1 true) #12, !range !15
  %85 = zext i8 %84 to i32
  %86 = or i32 %81, %85
  %87 = shl nuw i8 1, %84
  %88 = xor i8 %87, -1
  %89 = and i8 %83, %88
  %90 = add i32 %86, -56
  %91 = icmp ult i32 %90, 16
  %92 = add i32 %86, -16
  %93 = select i1 %91, i32 %92, i32 %86
  %94 = add i32 %93, -121
  %95 = icmp ult i32 %94, 5
  %96 = add i32 %93, -8
  %97 = select i1 %95, i32 %96, i32 %93
  %98 = and i32 %97, -3
  %99 = icmp eq i32 %98, 168
  %100 = zext i1 %99 to i32
  %101 = add i32 %97, %100
  %102 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !12
  %103 = call ptr @__irq_resolve_mapping(ptr noundef %102, i32 noundef %101, ptr noundef nonnull %3) #12
  %104 = icmp eq ptr %103, null
  %105 = load i32, ptr %3, align 4
  %106 = select i1 %104, i32 0, i32 %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @handle_nested_irq(i32 noundef %106) #12
  %107 = icmp eq i8 %89, 0
  br i1 %107, label %108, label %82

108:                                              ; preds = %82, %73, %56, %53
  %109 = shl nuw i32 1, %35
  %110 = trunc i32 %109 to i8
  %111 = xor i8 %110, -1
  %112 = and i8 %33, %111
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %32

114:                                              ; preds = %70, %59
  %115 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.38, i32 noundef %60) #13
  br label %121

116:                                              ; preds = %108, %26, %23
  %117 = add i8 %16, 1
  %118 = zext i8 %117 to i32
  %119 = load i32, ptr %4, align 4
  %120 = icmp sgt i32 %119, %118
  br i1 %120, label %14, label %121

121:                                              ; preds = %116, %114, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_abb_read(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_abb_write(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_abb_write_masked(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_get_chip_id(ptr noundef readonly %0) #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ab8500, ptr %7, i32 0, i32 7
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %3, %1
  %14 = phi i32 [ -22, %1 ], [ %12, %9 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_get_register(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ab8500, ptr %8, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !17
  %11 = zext i8 %1 to i16
  %12 = shl nuw i16 %11, 8
  %13 = zext i8 %2 to i16
  %14 = or i16 %12, %13
  %15 = getelementptr inbounds %struct.ab8500, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.ab8500, ptr %8, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %8, i16 noundef zeroext %14) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 4
  %22 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.34, i32 noundef %22, i32 noundef %18) #13
  br label %25

23:                                               ; preds = %4
  %24 = trunc i32 %18 to i8
  store i8 %24, ptr %3, align 1
  br label %25

25:                                               ; preds = %23, %20
  tail call void @mutex_unlock(ptr noundef %15) #12
  %26 = tail call i32 @llvm.smin.i32(i32 %18, i32 0) #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !16
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !18
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_set_register(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ab8500, ptr %8, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !17
  %11 = zext i8 %1 to i16
  %12 = shl nuw i16 %11, 8
  %13 = zext i8 %2 to i16
  %14 = or i16 %12, %13
  %15 = getelementptr inbounds %struct.ab8500, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.ab8500, ptr %8, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %8, i16 noundef zeroext %14, i8 noundef zeroext %3) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 4
  %22 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.35, i32 noundef %22, i32 noundef %18) #13
  br label %23

23:                                               ; preds = %20, %4
  tail call void @mutex_unlock(ptr noundef %15) #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !16
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !18
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_mask_and_set_register(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #1 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ab8500, ptr %9, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !16
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !17
  %12 = tail call fastcc i32 @mask_and_set_register_interruptible(ptr noundef %9, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !18
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ab8500_dump_all_banks(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mask_and_set_register_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = zext i8 %1 to i16
  %7 = shl nuw i16 %6, 8
  %8 = zext i8 %2 to i16
  %9 = or i16 %7, %8
  %10 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, i16 noundef zeroext %9) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 4
  %21 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef %21, i32 noundef %17) #13
  br label %42

22:                                               ; preds = %14
  %23 = zext i8 %3 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %17, %24
  %26 = and i8 %4, %3
  %27 = trunc i32 %25 to i8
  %28 = or i8 %26, %27
  %29 = getelementptr inbounds %struct.ab8500, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext %28) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load ptr, ptr %0, align 4
  %35 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.35, i32 noundef %35, i32 noundef %31) #13
  br label %42

36:                                               ; preds = %5
  %37 = tail call i32 %12(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext %3, i8 noundef zeroext %4) #12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 4
  %41 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.36, i32 noundef %41, i32 noundef %37) #13
  br label %42

42:                                               ; preds = %39, %36, %33, %22, %19
  %43 = phi i32 [ %37, %39 ], [ %37, %36 ], [ %17, %19 ], [ %31, %33 ], [ %31, %22 ]
  tail call void @mutex_unlock(ptr noundef %10) #12
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef nonnull %5) #12
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @ab8500_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #12
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #12
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ab8500_irq_mask(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = and i32 %5, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %6
  %12 = load i8, ptr %11, align 1
  %13 = trunc i32 %8 to i8
  %14 = or i8 %12, %13
  store i8 %14, ptr %11, align 1
  %15 = add i32 %5, -40
  %16 = icmp ult i32 %15, 16
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = add i32 %5, -113
  %19 = icmp ult i32 %18, 5
  br i1 %19, label %20, label %27

20:                                               ; preds = %17, %1
  %21 = phi i32 [ 2, %1 ], [ 1, %17 ]
  %22 = load ptr, ptr %9, align 4
  %23 = add nsw i32 %6, %21
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = or i8 %25, %13
  store i8 %26, ptr %24, align 1
  br label %27

27:                                               ; preds = %20, %17
  %28 = and i32 %5, -3
  %29 = icmp eq i32 %28, 169
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 %6
  %33 = load i8, ptr %32, align 1
  %34 = shl i8 %13, 1
  %35 = or i8 %33, %34
  store i8 %35, ptr %32, align 1
  br label %36

36:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ab8500_irq_unmask(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = sdiv i32 %8, 8
  %10 = and i32 %8, 7
  %11 = shl nuw nsw i32 1, %10
  %12 = and i32 %6, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %9
  %18 = load i8, ptr %17, align 1
  %19 = trunc i32 %11 to i8
  %20 = xor i8 %19, -1
  %21 = and i8 %18, %20
  store i8 %21, ptr %17, align 1
  br label %22

22:                                               ; preds = %14, %1
  %23 = and i32 %6, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %22
  %26 = add i32 %8, -40
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  %31 = add nsw i32 %9, 2
  %32 = getelementptr i8, ptr %30, i32 %31
  br label %54

33:                                               ; preds = %25
  %34 = add i32 %8, -113
  %35 = icmp ult i32 %34, 5
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %38 = load ptr, ptr %37, align 4
  %39 = add nsw i32 %9, 1
  %40 = getelementptr i8, ptr %38, i32 %39
  br label %54

41:                                               ; preds = %33
  %42 = and i32 %8, -3
  %43 = icmp eq i32 %42, 169
  %44 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %9
  %47 = trunc i32 %11 to i8
  %48 = zext i1 %43 to i8
  %49 = shl i8 %47, %48
  br label %57

50:                                               ; preds = %22
  %51 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %9
  br label %54

54:                                               ; preds = %50, %36, %28
  %55 = phi ptr [ %32, %28 ], [ %40, %36 ], [ %53, %50 ]
  %56 = trunc i32 %11 to i8
  br label %57

57:                                               ; preds = %54, %41
  %58 = phi i8 [ %49, %41 ], [ %56, %54 ]
  %59 = phi ptr [ %46, %41 ], [ %55, %54 ]
  %60 = load i8, ptr %59, align 1
  %61 = xor i8 %58, -1
  %62 = and i8 %60, %61
  store i8 %62, ptr %59, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_irq_set_type(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ab8500_irq_lock(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #12, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ab8500_irq_sync_unlock(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 14
  %9 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 13
  %10 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 16
  %11 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 7
  %13 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 8
  br label %15

15:                                               ; preds = %54, %7
  %16 = phi i32 [ %5, %7 ], [ %55, %54 ]
  %17 = phi i32 [ 0, %7 ], [ %56, %54 ]
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = load i8, ptr %19, align 1
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 %17
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, %20
  br i1 %24, label %54, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr i32, ptr %26, i32 %17
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 11
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, ptr %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8, ptr %12, align 4
  %35 = icmp ugt i8 %34, 17
  br i1 %35, label %38, label %54

36:                                               ; preds = %25
  %37 = icmp slt i32 %28, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %36, %33, %30
  store i8 %23, ptr %19, align 1
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr i32, ptr %39, i32 %17
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = add i8 %42, 64
  %44 = zext i8 %43 to i16
  %45 = or i16 %44, 3584
  tail call void @mutex_lock(ptr noundef %13) #12
  %46 = load ptr, ptr %14, align 4
  %47 = tail call i32 %46(ptr noundef %3, i16 noundef zeroext %45, i8 noundef zeroext %23) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load ptr, ptr %3, align 4
  %51 = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.35, i32 noundef %51, i32 noundef %47) #13
  br label %52

52:                                               ; preds = %49, %38
  tail call void @mutex_unlock(ptr noundef %13) #12
  %53 = load i32, ptr %4, align 4
  br label %54

54:                                               ; preds = %52, %36, %33, %15
  %55 = phi i32 [ %16, %36 ], [ %16, %33 ], [ %16, %15 ], [ %53, %52 ]
  %56 = add nuw nsw i32 %17, 1
  %57 = icmp slt i32 %56, %55
  br i1 %57, label %15, label %58

58:                                               ; preds = %54, %1
  %59 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #12, !srcloc !16
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #12, !srcloc !18
  %61 = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %61) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chip_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @switch_off_status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, i16 noundef zeroext 3840) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 3840, i32 noundef %9) #13
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %16

13:                                               ; preds = %3
  %14 = and i32 %9, 255
  tail call void @mutex_unlock(ptr noundef %6) #12
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef %14)
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %15, %13 ], [ %9, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @turn_on_status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, i16 noundef zeroext 256) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 256, i32 noundef %9) #13
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %29

13:                                               ; preds = %3
  %14 = trunc i32 %9 to i8
  tail call void @mutex_unlock(ptr noundef %6) #12
  %15 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  tail call void @_raw_spin_lock(ptr noundef nonnull @on_stat_lock) #12
  %19 = load i8, ptr @turn_on_stat_mask, align 1
  %20 = and i8 %19, %14
  %21 = load i8, ptr @turn_on_stat_set, align 1
  %22 = or i8 %20, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %23 = load i16, ptr @on_stat_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @on_stat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i8 [ %14, %13 ], [ %22, %18 ]
  %27 = zext i8 %26 to i32
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef %27)
  br label %29

29:                                               ; preds = %25, %11
  %30 = phi i32 [ %28, %25 ], [ %9, %11 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dbbrstn_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, i16 noundef zeroext 1059) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 1059, i32 noundef %9) #13
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %17

13:                                               ; preds = %3
  %14 = lshr i32 %9, 2
  %15 = and i32 %14, 1
  tail call void @mutex_unlock(ptr noundef %6) #12
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.97, i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %16, %13 ], [ %9, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dbbrstn_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef returned %3) #1 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr %2, align 1
  switch i8 %9, label %19 [
    i8 48, label %11
    i8 49, label %10
  ]

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i8 [ 4, %10 ], [ 0, %8 ]
  %13 = tail call fastcc i32 @mask_and_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 35, i8 noundef zeroext 4, i8 noundef zeroext %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 4
  %17 = load i8, ptr %2, align 1
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.98, i32 noundef %18, i32 noundef %13) #13
  br label %19

19:                                               ; preds = %15, %11, %8, %4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @turn_on_status_2_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, i16 noundef zeroext 260) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 260, i32 noundef %9) #13
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %16

13:                                               ; preds = %3
  %14 = and i32 %9, 1
  tail call void @mutex_unlock(ptr noundef %6) #12
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef %14)
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %15, %13 ], [ %9, %11 ]
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2148954493}
!9 = !{i64 2148950317}
!10 = !{i64 2148950392, i64 2148950419, i64 2148950466, i64 2148950488, i64 2148950516, i64 2148950536}
!11 = !{i64 2148977496}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!15 = !{i8 0, i8 9}
!16 = !{i64 440542, i64 2147930513, i64 2147930539, i64 2147930586, i64 2147930608, i64 2147930636, i64 2147930656}
!17 = !{i64 2147942725, i64 2147942751, i64 2147942780, i64 2147942814, i64 2147942845, i64 2147942868}
!18 = !{i64 2147945082, i64 2147945108, i64 2147945137, i64 2147945171, i64 2147945202, i64 2147945225}
