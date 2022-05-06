; ModuleID = '/llk/IR/drivers/regulator/twl-regulator.c_pt.bc'
source_filename = "../drivers/regulator/twl-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.twlreg_info = type { i8, i8, i8, ptr, i8, %struct.regulator_desc, i32, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__UNIQUE_ID_alias247 = internal constant [41 x i8] c"twl_regulator.alias=platform:twl4030_reg\00", section ".modinfo", align 1
@__initcall__kmod_twl_regulator__248_667_twlreg_init4 = internal global ptr @twlreg_init, section ".initcall4.init", align 4
@twlreg_driver = internal global %struct.platform_driver { ptr @twlreg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_twlreg_exit = internal global ptr @twlreg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [51 x i8] c"twl_regulator.description=TWL4030 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [51 x i8] c"twl_regulator.file=drivers/regulator/twl-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [26 x i8] c"twl_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"twl4030_reg\00", align 1
@twl_of_match = internal constant [21 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX2_4030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl5030-vaux2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vmmc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VMMC1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vmmc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VMMC2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vpll1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VPLL1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vpll2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VPLL2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vsim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VSIM }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vdac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VDAC }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vintana2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VINTANA2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VIO }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vdd1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VDD1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vdd2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VDD2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vintana1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VINTANA1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vintdig\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VINTDIG }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vusb1v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB1V5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vusb1v8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB1V8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vusb3v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB3V1 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't register %s, %ld\0A\00", align 1
@TWL4030_INFO_VAUX1 = internal constant %struct.twlreg_info { i8 23, i8 1, i8 8, ptr @VAUX1_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.2, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VAUX2_4030 = internal constant %struct.twlreg_info { i8 27, i8 2, i8 16, ptr @VAUX2_4030_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.3, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VAUX2 = internal constant %struct.twlreg_info { i8 27, i8 2, i8 16, ptr @VAUX2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VAUX3 = internal constant %struct.twlreg_info { i8 31, i8 3, i8 8, ptr @VAUX3_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VAUX4 = internal constant %struct.twlreg_info { i8 35, i8 4, i8 16, ptr @VAUX4_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VMMC1 = internal constant %struct.twlreg_info { i8 39, i8 5, i8 4, ptr @VMMC1_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VMMC2 = internal constant %struct.twlreg_info { i8 43, i8 6, i8 16, ptr @VMMC2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VPLL1 = internal constant %struct.twlreg_info { i8 47, i8 7, i8 8, ptr @VPLL1_VSEL_table, i8 0, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VPLL2 = internal constant %struct.twlreg_info { i8 51, i8 8, i8 16, ptr @VPLL2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VSIM = internal constant %struct.twlreg_info { i8 55, i8 9, i8 8, ptr @VSIM_VSEL_table, i8 0, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VDAC = internal constant %struct.twlreg_info { i8 59, i8 10, i8 4, ptr @VDAC_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 4, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VINTANA2 = internal constant %struct.twlreg_info { i8 67, i8 12, i8 2, ptr @VINTANA2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VIO = internal constant %struct.twlreg_info { i8 75, i8 14, i8 2, ptr @VIO_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 2, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1000, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VDD1 = internal constant %struct.twlreg_info { i8 85, i8 15, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 68, i32 0, ptr @twl4030smps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @VDD1_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1000, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWL4030_INFO_VDD2 = internal constant %struct.twlreg_info { i8 99, i8 16, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 69, i32 0, ptr @twl4030smps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @VDD2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1000, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VINTANA1 = internal constant %struct.twlreg_info { i8 63, i8 11, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VINTDIG = internal constant %struct.twlreg_info { i8 71, i8 13, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VUSB1V5 = internal constant %struct.twlreg_info { i8 113, i8 17, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VUSB1V8 = internal constant %struct.twlreg_info { i8 116, i8 18, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@TWLFIXED_INFO_VUSB3V1 = internal constant %struct.twlreg_info { i8 119, i8 19, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 3100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 150, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, align 4
@VAUX1_VSEL_table = internal constant [8 x i16] [i16 -31268, i16 -30968, i16 2500, i16 2800, i16 3000, i16 3000, i16 3000, i16 3000], align 2
@.str.2 = private unnamed_addr constant [6 x i8] c"VAUX1\00", align 1
@twl4030ldo_ops = internal constant %struct.regulator_ops { ptr @twl4030ldo_list_voltage, ptr null, ptr null, ptr @twl4030ldo_set_voltage_sel, ptr null, ptr @twl4030ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_enable, ptr @twl4030reg_disable, ptr @twl4030reg_is_enabled, ptr @twl4030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@VAUX2_4030_VSEL_table = internal constant [16 x i16] [i16 -31768, i16 -31768, i16 -31568, i16 1300, i16 1500, i16 1800, i16 -30918, i16 2500, i16 -30168, i16 2800, i16 -29918, i16 -29768, i16 -29618, i16 -29618, i16 -29618, i16 -29618], align 2
@.str.3 = private unnamed_addr constant [11 x i8] c"VAUX2_4030\00", align 1
@VAUX2_VSEL_table = internal constant [16 x i16] [i16 1700, i16 1700, i16 1900, i16 1300, i16 1500, i16 1800, i16 2000, i16 2500, i16 2100, i16 2800, i16 2200, i16 2300, i16 2400, i16 2400, i16 2400, i16 2400], align 2
@.str.4 = private unnamed_addr constant [6 x i8] c"VAUX2\00", align 1
@VAUX3_VSEL_table = internal constant [8 x i16] [i16 1500, i16 1800, i16 2500, i16 2800, i16 3000, i16 3000, i16 3000, i16 3000], align 2
@.str.5 = private unnamed_addr constant [6 x i8] c"VAUX3\00", align 1
@VAUX4_VSEL_table = internal constant [16 x i16] [i16 700, i16 1000, i16 1200, i16 -31468, i16 1500, i16 1800, i16 -30918, i16 2500, i16 -30168, i16 2800, i16 -29918, i16 -29768, i16 -29618, i16 -29618, i16 -29618, i16 -29618], align 2
@.str.6 = private unnamed_addr constant [6 x i8] c"VAUX4\00", align 1
@VMMC1_VSEL_table = internal constant [4 x i16] [i16 1850, i16 2850, i16 3000, i16 3150], align 2
@.str.7 = private unnamed_addr constant [6 x i8] c"VMMC1\00", align 1
@VMMC2_VSEL_table = internal constant [16 x i16] [i16 -31768, i16 -31768, i16 -31568, i16 -31468, i16 -31268, i16 -30968, i16 1850, i16 -30268, i16 2600, i16 2800, i16 2850, i16 3000, i16 3150, i16 3150, i16 3150, i16 3150], align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"VMMC2\00", align 1
@VPLL1_VSEL_table = internal constant [8 x i16] [i16 1000, i16 1200, i16 1300, i16 1800, i16 -29968, i16 -29768, i16 -29768, i16 -29768], align 2
@.str.9 = private unnamed_addr constant [6 x i8] c"VPLL1\00", align 1
@VPLL2_VSEL_table = internal constant [16 x i16] [i16 700, i16 1000, i16 1200, i16 1300, i16 -31268, i16 1800, i16 -30918, i16 -30268, i16 -30168, i16 -29968, i16 -29918, i16 -29768, i16 -29618, i16 -29618, i16 -29618, i16 -29618], align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"VPLL2\00", align 1
@VSIM_VSEL_table = internal constant [8 x i16] [i16 -31768, i16 -31568, i16 -31468, i16 1800, i16 2800, i16 3000, i16 3000, i16 3000], align 2
@.str.11 = private unnamed_addr constant [5 x i8] c"VSIM\00", align 1
@VDAC_VSEL_table = internal constant [4 x i16] [i16 1200, i16 1300, i16 1800, i16 1800], align 2
@.str.12 = private unnamed_addr constant [5 x i8] c"VDAC\00", align 1
@VINTANA2_VSEL_table = internal constant [2 x i16] [i16 2500, i16 2750], align 2
@.str.13 = private unnamed_addr constant [9 x i8] c"VINTANA2\00", align 1
@VIO_VSEL_table = internal constant [2 x i16] [i16 1800, i16 1850], align 2
@.str.14 = private unnamed_addr constant [4 x i8] c"VIO\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"VDD1\00", align 1
@twl4030smps_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr @twl4030smps_set_voltage, ptr null, ptr null, ptr @twl4030smps_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@VDD1_ranges = internal constant [1 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 68, i32 12500 }], align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"VDD2\00", align 1
@VDD2_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 68, i32 12500 }, %struct.linear_range { i32 1500000, i32 69, i32 69, i32 12500 }], align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"VINTANA1\00", align 1
@twl4030fixed_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_enable, ptr @twl4030reg_disable, ptr @twl4030reg_is_enabled, ptr @twl4030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"VINTDIG\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"VUSB1V5\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"VUSB1V8\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"VUSB3V1\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_twlreg_exit, ptr @__initcall__kmod_twl_regulator__248_667_twlreg_init4, ptr @twlreg_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @twlreg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @twlreg_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @twlreg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @twlreg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twlreg_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %5) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.twlreg_info, ptr %6, i32 0, i32 5
  %10 = getelementptr inbounds %struct.twlreg_info, ptr %6, i32 0, i32 5, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @of_get_regulator_init_data(ptr noundef %5, ptr noundef %13, ptr noundef %9) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @devm_kmemdup(ptr noundef %5, ptr noundef nonnull %6, i32 noundef 264, i32 noundef 3264) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.regulator_init_data, ptr %14, i32 0, i32 1, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 10
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.regulator_init_data, ptr %14, i32 0, i32 1, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 13
  store i32 %25, ptr %23, align 4
  switch i32 %11, label %30 [
    i32 2, label %26
    i32 0, label %26
    i32 1, label %26
    i32 4, label %26
    i32 14, label %26
    i32 15, label %26
    i32 16, label %26
  ]

26:                                               ; preds = %19, %19, %19, %19, %19, %19, %19
  %27 = getelementptr inbounds %struct.regulator_init_data, ptr %14, i32 0, i32 1, i32 28
  %28 = load i16, ptr %27, align 4
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %19
  store ptr %5, ptr %3, align 4
  %31 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 1
  store ptr %14, ptr %31, align 4
  %32 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 2
  store ptr %17, ptr %32, align 4
  %33 = load ptr, ptr %12, align 8
  %34 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.twlreg_info, ptr %17, i32 0, i32 5
  %36 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef %35, ptr noundef nonnull %3) #6
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load ptr, ptr %35, align 4
  %40 = ptrtoint ptr %36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %39, i32 noundef %40) #7
  br label %48

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %36, ptr %42, align 8
  %43 = getelementptr inbounds %struct.twlreg_info, ptr %17, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = load i8, ptr %17, align 4
  %46 = add i8 %45, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 %44, ptr %2, align 1
  %47 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %46, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %48

48:                                               ; preds = %41, %38, %16, %8, %1
  %49 = phi i32 [ %40, %38 ], [ 0, %41 ], [ -19, %1 ], [ -22, %8 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @twl4030reg_map_mode(i32 noundef %0) #5 {
  %2 = icmp eq i32 %0, 8
  %3 = select i1 %2, i32 8, i32 0
  %4 = icmp eq i32 %0, 14
  %5 = select i1 %4, i32 2, i32 %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030ldo_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.twlreg_info, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 %1
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.twlreg_info, ptr %3, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = and i32 %8, 32767
  %18 = mul nuw nsw i32 %17, 1000
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %18, %16 ], [ 0, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030ldo_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = trunc i32 %1 to i8
  %6 = load i8, ptr %4, align 4
  %7 = add i8 %6, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %5, ptr %3, align 1
  %8 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %7, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030ldo_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr %3, align 4
  %5 = add i8 %4, 3
  %6 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %5, i32 noundef 1) #6
  %7 = icmp slt i32 %6, 0
  %8 = load i8, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br i1 %7, label %16, label %9

9:                                                ; preds = %1
  %10 = zext i8 %8 to i32
  %11 = getelementptr inbounds %struct.twlreg_info, ptr %3, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 255
  %15 = and i32 %14, %10
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i32 [ %15, %9 ], [ %6, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030reg_enable(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = load i8, ptr %5, align 4
  %7 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %6, i32 noundef 1) #6
  %8 = icmp slt i32 %7, 0
  %9 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br i1 %8, label %14, label %10

10:                                               ; preds = %1
  %11 = or i8 %9, 32
  %12 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 %11, ptr %2, align 1
  %13 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ %13, %10 ], [ %7, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030reg_disable(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = load i8, ptr %5, align 4
  %7 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext %6, i32 noundef 1) #6
  %8 = icmp slt i32 %7, 0
  %9 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br i1 %8, label %14, label %10

10:                                               ; preds = %1
  %11 = and i8 %9, 31
  %12 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 %11, ptr %2, align 1
  %13 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ %13, %10 ], [ %7, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030reg_is_enabled(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr %3, align 4
  %5 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %4, i32 noundef 1) #6
  %6 = icmp slt i32 %5, 0
  %7 = load i8, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %8 = and i8 %7, 32
  %9 = zext i8 %8 to i32
  %10 = select i1 %6, i32 %5, i32 %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030reg_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  switch i32 %1, label %70 [
    i32 2, label %12
    i32 8, label %11
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i32 [ 8200, %11 ], [ 8206, %2 ]
  %14 = getelementptr inbounds %struct.twlreg_info, ptr %10, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 4
  %18 = or i32 %17, %13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 0, ptr %9, align 1, !annotation !8
  %19 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %9, i8 noundef zeroext 20, i32 noundef 1) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %68, label %21

21:                                               ; preds = %12
  %22 = load i8, ptr %9, align 1
  %23 = or i8 %22, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 %23, ptr %8, align 1
  %24 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %8, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !8
  br label %27

27:                                               ; preds = %35, %26
  %28 = phi i32 [ 10, %26 ], [ %37, %35 ]
  %29 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %7, i8 noundef zeroext 20, i32 noundef 1) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %7, align 1
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #6
  %37 = add nsw i32 %28, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27

39:                                               ; preds = %35, %27
  %40 = phi i32 [ -110, %35 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  br label %68

41:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %42 = lshr i32 %18, 8
  %43 = trunc i32 %42 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 %43, ptr %6, align 1
  %44 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 21, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %41
  %47 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %47, ptr %5, align 1
  %48 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %5, i8 noundef zeroext 22, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !8
  br label %51

51:                                               ; preds = %59, %50
  %52 = phi i32 [ 10, %50 ], [ %61, %59 ]
  %53 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %4, i8 noundef zeroext 20, i32 noundef 1) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i8, ptr %4, align 1
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #6
  %61 = add nsw i32 %52, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %51

63:                                               ; preds = %59, %51
  %64 = phi i32 [ -110, %59 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  br label %68

65:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %66 = load i8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 %66, ptr %3, align 1
  %67 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br label %68

68:                                               ; preds = %65, %63, %46, %41, %39, %21, %12
  %69 = phi i32 [ %67, %65 ], [ %19, %12 ], [ %24, %21 ], [ %44, %41 ], [ %48, %46 ], [ %40, %39 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  br label %70

70:                                               ; preds = %68, %2
  %71 = phi i32 [ %69, %68 ], [ -22, %2 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030reg_get_status(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr %3, align 4
  %5 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %4, i32 noundef 1) #6
  %6 = icmp slt i32 %5, 0
  %7 = load i8, ptr %2, align 1
  %8 = zext i8 %7 to i32
  %9 = select i1 %6, i32 %5, i32 %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br i1 %6, label %17, label %10

10:                                               ; preds = %1
  %11 = and i32 %9, 15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = and i32 %9, 8
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 6, i32 4
  br label %17

17:                                               ; preds = %13, %10, %1
  %18 = phi i32 [ %16, %13 ], [ %5, %1 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030smps_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca i8, align 1
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %7 = add i32 %1, -587501
  %8 = sdiv i32 %7, 12500
  %9 = trunc i32 %8 to i8
  %10 = load i8, ptr %6, align 4
  %11 = add i8 %10, 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %9, ptr %5, align 1
  %12 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %5, i8 noundef zeroext %11, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030smps_get_voltage(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr %3, align 4
  %5 = add i8 %4, 9
  %6 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %2, i8 noundef zeroext %5, i32 noundef 1) #6
  %7 = icmp slt i32 %6, 0
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = select i1 %7, i32 %6, i32 %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %11 = mul i32 %10, 12500
  %12 = add i32 %11, 600000
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
