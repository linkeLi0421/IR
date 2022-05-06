; ModuleID = '/llk/IR/drivers/i2c/muxes/i2c-mux-pca954x.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-pca954x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.chip_desc = type { i8, i8, i8, i32, %struct.i2c_device_identity }
%struct.i2c_device_identity = type { i16, i16, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.pca954x = type { ptr, i8, i32, ptr, ptr, i32, %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_mux_pca954x__250_563_pca954x_driver_init6 = internal global ptr @pca954x_driver_init, section ".initcall6.init", align 4
@pca954x_driver = internal global %struct.i2c_driver { i32 0, ptr @pca954x_probe, ptr @pca954x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca954x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca954x_pm, ptr null, ptr null }, ptr @pca954x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_pca954x_driver_exit = internal global ptr @pca954x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author251 = internal constant [60 x i8] c"i2c_mux_pca954x.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [58 x i8] c"i2c_mux_pca954x.description=PCA954x I2C mux/switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [55 x i8] c"i2c_mux_pca954x.file=drivers/i2c/muxes/i2c-mux-pca954x\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [31 x i8] c"i2c_mux_pca954x.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"pca954x\00", align 1
@pca954x_of_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9540\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chips }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9542\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9543\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 32) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9544\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9545\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 64) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9546\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 80) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9547\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9548\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 112) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9846\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 128) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9847\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9848\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 160) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9849\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 176) }, %struct.of_device_id zeroinitializer], align 4
@pca954x_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @pca954x_resume, ptr null, ptr @pca954x_resume, ptr null, ptr @pca954x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pca954x_id = internal constant [13 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9540\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca9542\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pca9543\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"pca9544\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"pca9545\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"pca9546\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"pca9547\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"pca9548\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"pca9846\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pca9847\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"pca9848\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"pca9849\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@chips = internal constant [12 x %struct.chip_desc] [%struct.chip_desc { i8 2, i8 4, i8 0, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 2, i8 4, i8 1, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 2, i8 0, i8 1, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 4, i8 1, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 0, i8 1, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 8, i8 8, i8 0, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 8, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 0, i16 267, i8 0 } }, %struct.chip_desc { i8 8, i8 8, i8 0, i32 0, %struct.i2c_device_identity { i16 0, i16 264, i8 0 } }, %struct.chip_desc { i8 8, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 0, i16 266, i8 0 } }, %struct.chip_desc { i8 4, i8 4, i8 0, i32 0, %struct.i2c_device_identity { i16 0, i16 265, i8 0 } }], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unexpected device id %03x-%03x-%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"idle-state\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"i2c-mux-idle-disconnect\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"probe failed\0A\00", align 1
@dev_attr_idle_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @idle_state_show, ptr @idle_state_store }, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"registered %d multiplexed busses for I2C %s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"failed irq create map\0A\00", align 1
@pca954x_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca954x_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"i2c-mux-pca954x\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"idle_state\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to verify mux presence\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_pca954x_driver_exit, ptr @__initcall__kmod_i2c_mux_pca954x__250_563_pca954x_driver_init6, ptr @pca954x_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pca954x_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca954x_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pca954x_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @pca954x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca954x_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_device_identity, align 2
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %6) #9
  %13 = and i32 %12, 393216
  %14 = icmp eq i32 %13, 393216
  br i1 %14, label %15, label %205

15:                                               ; preds = %2
  %16 = tail call ptr @i2c_mux_alloc(ptr noundef %6, ptr noundef %7, i32 noundef 8, i32 noundef 28, i32 noundef 0, ptr noundef nonnull @pca954x_select_chan, ptr noundef nonnull @pca954x_deselect_mux) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %205, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.i2c_mux_core, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %16, ptr %21, align 8
  %22 = getelementptr inbounds %struct.pca954x, ptr %20, i32 0, i32 3
  store ptr %0, ptr %22, align 4
  %23 = tail call ptr @devm_gpiod_get_optional(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 7) #9
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = ptrtoint ptr %23 to i32
  br label %205

27:                                               ; preds = %18
  %28 = icmp eq ptr %23, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %23, i32 noundef 0) #9
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #9
  br label %32

32:                                               ; preds = %29, %27
  %33 = tail call ptr @device_get_match_data(ptr noundef %7) #9
  store ptr %33, ptr %20, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [12 x %struct.chip_desc], ptr @chips, i32 0, i32 %37
  store ptr %38, ptr %20, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi ptr [ %38, %35 ], [ %33, %32 ]
  %41 = getelementptr inbounds %struct.chip_desc, ptr %40, i32 0, i32 4
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, -1
  br i1 %43, label %67, label %44

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  %45 = call i32 @i2c_get_device_id(ptr noundef %0, ptr noundef nonnull %4) #9
  switch i32 %45, label %64 [
    i32 0, label %46
    i32 -95, label %66
  ]

46:                                               ; preds = %44
  %47 = load i16, ptr %4, align 2
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr inbounds %struct.chip_desc, ptr %48, i32 0, i32 4
  %50 = load i16, ptr %49, align 4
  %51 = icmp eq i16 %47, %50
  %52 = getelementptr inbounds %struct.i2c_device_identity, ptr %4, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  br i1 %51, label %54, label %58

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.chip_desc, ptr %48, i32 0, i32 4, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %53, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54, %46
  %59 = zext i16 %47 to i32
  %60 = zext i16 %53 to i32
  %61 = getelementptr inbounds %struct.i2c_device_identity, ptr %4, i32 0, i32 2
  %62 = load i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %59, i32 noundef %60, i32 noundef %63) #10
  br label %64

64:                                               ; preds = %58, %44
  %65 = phi i32 [ %45, %44 ], [ -19, %58 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  br label %205

66:                                               ; preds = %54, %44
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  br label %67

67:                                               ; preds = %66, %39
  %68 = getelementptr inbounds %struct.pca954x, ptr %20, i32 0, i32 2
  store i32 -1, ptr %68, align 4
  %69 = call i32 @device_property_read_u32_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %68, i32 noundef 1) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = call zeroext i1 @device_property_present(ptr noundef %7, ptr noundef nonnull @.str.4) #9
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  store i32 -2, ptr %68, align 4
  br label %94

74:                                               ; preds = %71, %67
  %75 = load i32, ptr %68, align 4
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load ptr, ptr %20, align 4
  %79 = getelementptr inbounds %struct.chip_desc, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = trunc i32 %75 to i8
  %84 = getelementptr inbounds %struct.chip_desc, ptr %78, i32 0, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = or i8 %85, %83
  %87 = zext i8 %86 to i32
  br label %91

88:                                               ; preds = %77
  %89 = and i32 %75, 255
  %90 = shl nuw i32 1, %89
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi i32 [ %87, %82 ], [ %90, %88 ]
  %93 = trunc i32 %92 to i8
  br label %94

94:                                               ; preds = %91, %74, %73
  %95 = phi i8 [ %93, %91 ], [ 0, %74 ], [ 0, %73 ]
  %96 = getelementptr inbounds %struct.pca954x, ptr %20, i32 0, i32 1
  store i8 %95, ptr %96, align 4
  %97 = call i32 @i2c_smbus_write_byte(ptr noundef %0, i8 noundef zeroext %95) #9
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i8 0, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.5) #10
  br label %205

100:                                              ; preds = %94
  %101 = load ptr, ptr %19, align 4
  %102 = getelementptr inbounds %struct.pca954x, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %101, align 4
  %105 = getelementptr inbounds %struct.chip_desc, ptr %104, i32 0, i32 2
  %106 = load i8, ptr %105, align 2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %146, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %146, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.pca954x, ptr %101, i32 0, i32 6
  store i32 0, ptr %113, align 4
  %114 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 4
  %115 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 4, i32 25
  %116 = load ptr, ptr %115, align 8
  %117 = load i8, ptr %104, align 4
  %118 = zext i8 %117 to i32
  %119 = icmp eq ptr %116, null
  %120 = getelementptr inbounds %struct.device_node, ptr %116, i32 0, i32 3
  %121 = select i1 %119, ptr null, ptr %120
  %122 = call ptr @__irq_domain_add(ptr noundef %121, i32 noundef %118, i32 noundef %118, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef %101) #9
  %123 = getelementptr inbounds %struct.pca954x, ptr %101, i32 0, i32 4
  store ptr %122, ptr %123, align 4
  %124 = icmp eq ptr %122, null
  br i1 %124, label %179, label %125

125:                                              ; preds = %112
  %126 = load ptr, ptr %101, align 4
  %127 = load i8, ptr %126, align 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %125
  %130 = call i32 @irq_create_mapping_affinity(ptr noundef nonnull %122, i32 noundef 0, ptr noundef null) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %142, %129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.9) #10
  br label %179

133:                                              ; preds = %142, %129
  %134 = phi i32 [ %144, %142 ], [ %130, %129 ]
  %135 = phi i32 [ %137, %142 ], [ 0, %129 ]
  %136 = call i32 @irq_set_chip_data(i32 noundef %134, ptr noundef %101) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %134, ptr noundef nonnull @pca954x_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  %137 = add nuw nsw i32 %135, 1
  %138 = load ptr, ptr %101, align 4
  %139 = load i8, ptr %138, align 4
  %140 = zext i8 %139 to i32
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load ptr, ptr %123, align 4
  %144 = call i32 @irq_create_mapping_affinity(ptr noundef %143, i32 noundef %137, ptr noundef null) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %132, label %133

146:                                              ; preds = %133, %125, %108, %100
  %147 = load ptr, ptr %20, align 4
  %148 = load i8, ptr %147, align 4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %154, %146
  %151 = phi i32 [ %155, %154 ], [ 0, %146 ]
  %152 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %16, i32 noundef 0, i32 noundef %151, i32 noundef 0) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %150
  %155 = add nuw nsw i32 %151, 1
  %156 = load ptr, ptr %20, align 4
  %157 = load i8, ptr %156, align 4
  %158 = zext i8 %157 to i32
  %159 = icmp ult i32 %155, %158
  br i1 %159, label %150, label %160

160:                                              ; preds = %154, %146
  %161 = phi i32 [ 0, %146 ], [ %155, %154 ]
  %162 = getelementptr inbounds %struct.pca954x, ptr %20, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %22, align 4
  %167 = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %168, ptr noundef null, ptr noundef nonnull @pca954x_irq_handler, i32 noundef 8320, ptr noundef nonnull @.str, ptr noundef %20) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %165, %160
  %172 = call i32 @device_create_file(ptr noundef %7, ptr noundef nonnull @dev_attr_idle_state) #9
  %173 = load ptr, ptr %20, align 4
  %174 = getelementptr inbounds %struct.chip_desc, ptr %173, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, ptr @.str.7, ptr @.str.8
  %178 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %161, ptr noundef nonnull %177, ptr noundef %178) #10
  br label %205

179:                                              ; preds = %165, %150, %132, %112
  %180 = phi i32 [ %169, %165 ], [ -19, %112 ], [ -22, %132 ], [ %152, %150 ]
  %181 = load ptr, ptr %19, align 4
  %182 = getelementptr inbounds %struct.pca954x, ptr %181, i32 0, i32 4
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %204, label %185

185:                                              ; preds = %179
  %186 = load ptr, ptr %181, align 4
  %187 = load i8, ptr %186, align 4
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %189, %185
  %190 = phi ptr [ %201, %189 ], [ %183, %185 ]
  %191 = phi i32 [ %196, %189 ], [ 0, %185 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %192 = call ptr @__irq_resolve_mapping(ptr noundef %190, i32 noundef %191, ptr noundef nonnull %3) #9
  %193 = icmp eq ptr %192, null
  %194 = load i32, ptr %3, align 4
  %195 = select i1 %193, i32 0, i32 %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @irq_dispose_mapping(i32 noundef %195) #9
  %196 = add nuw nsw i32 %191, 1
  %197 = load ptr, ptr %181, align 4
  %198 = load i8, ptr %197, align 4
  %199 = zext i8 %198 to i32
  %200 = icmp ult i32 %196, %199
  %201 = load ptr, ptr %182, align 4
  br i1 %200, label %189, label %202

202:                                              ; preds = %189, %185
  %203 = phi ptr [ %183, %185 ], [ %201, %189 ]
  call void @irq_domain_remove(ptr noundef %203) #9
  br label %204

204:                                              ; preds = %202, %179
  call void @i2c_mux_del_adapters(ptr noundef nonnull %16) #9
  br label %205

205:                                              ; preds = %204, %171, %99, %64, %25, %15, %2
  %206 = phi i32 [ %26, %25 ], [ -19, %99 ], [ %180, %204 ], [ 0, %171 ], [ -19, %2 ], [ -12, %15 ], [ %65, %64 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca954x_remove(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %5, ptr noundef nonnull @dev_attr_idle_state) #9
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pca954x, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %27, %15 ], [ %9, %11 ]
  %17 = phi i32 [ %22, %15 ], [ 0, %11 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %18 = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %2) #9
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr %2, align 4
  %21 = select i1 %19, i32 0, i32 %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @irq_dispose_mapping(i32 noundef %21) #9
  %22 = add nuw nsw i32 %17, 1
  %23 = load ptr, ptr %7, align 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = icmp ult i32 %22, %25
  %27 = load ptr, ptr %8, align 4
  br i1 %26, label %15, label %28

28:                                               ; preds = %15, %11
  %29 = phi ptr [ %9, %11 ], [ %27, %15 ]
  call void @irq_domain_remove(ptr noundef %29) #9
  br label %30

30:                                               ; preds = %28, %1
  call void @i2c_mux_del_adapters(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca954x_select_chan(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %union.i2c_smbus_data, align 2
  %4 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pca954x, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.chip_desc, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = trunc i32 %1 to i8
  %14 = getelementptr inbounds %struct.chip_desc, ptr %8, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %15, %13
  %17 = zext i8 %16 to i32
  br label %21

18:                                               ; preds = %2
  %19 = and i32 %1, 255
  %20 = shl nuw i32 1, %19
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %17, %12 ], [ %20, %18 ]
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.pca954x, ptr %5, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, %23
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false) #9, !annotation !8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = load i16, ptr %7, align 8
  %32 = call i32 @__i2c_smbus_xfer(ptr noundef %28, i16 noundef zeroext %30, i16 noundef zeroext %31, i8 noundef zeroext 0, i8 noundef zeroext %23, i32 noundef 1, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #9
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i8 0, i8 %23
  store i8 %34, ptr %24, align 4
  br label %35

35:                                               ; preds = %27, %21
  %36 = phi i32 [ %32, %27 ], [ 0, %21 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca954x_deselect_mux(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %union.i2c_smbus_data, align 2
  %4 = alloca %union.i2c_smbus_data, align 2
  %5 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca954x, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pca954x, ptr %6, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.chip_desc, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = trunc i32 %10 to i8
  %19 = getelementptr inbounds %struct.chip_desc, ptr %13, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = or i8 %20, %18
  %22 = zext i8 %21 to i32
  br label %26

23:                                               ; preds = %12
  %24 = and i32 %10, 255
  %25 = shl nuw i32 1, %24
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %22, %17 ], [ %25, %23 ]
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.pca954x, ptr %6, i32 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, %28
  br i1 %31, label %49, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %4, i8 0, i32 34, i1 false) #9, !annotation !8
  %34 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = load i16, ptr %8, align 8
  %37 = call i32 @__i2c_smbus_xfer(ptr noundef %33, i16 noundef zeroext %35, i16 noundef zeroext %36, i8 noundef zeroext 0, i8 noundef zeroext %28, i32 noundef 1, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #9
  %38 = icmp slt i32 %37, 0
  %39 = select i1 %38, i8 0, i8 %28
  store i8 %39, ptr %29, align 4
  br label %49

40:                                               ; preds = %2
  %41 = icmp eq i32 %10, -2
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.pca954x, ptr %6, i32 0, i32 1
  store i8 0, ptr %43, align 4
  %44 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false) #9, !annotation !8
  %45 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = load i16, ptr %8, align 8
  %48 = call i32 @__i2c_smbus_xfer(ptr noundef %44, i16 noundef zeroext %46, i16 noundef zeroext %47, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #9
  br label %49

49:                                               ; preds = %42, %40, %32, %26
  %50 = phi i32 [ %48, %42 ], [ 0, %40 ], [ %37, %32 ], [ 0, %26 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_get_device_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca954x_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @i2c_smbus_read_byte(ptr noundef %6) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = lshr i32 %7, 4
  %11 = load ptr, ptr %1, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nsw i32 -1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %10, %15
  store i32 %16, ptr %4, align 4
  %17 = load i8, ptr %11, align 4
  %18 = zext i8 %17 to i32
  %19 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %18, i32 noundef 0) #9
  %20 = load ptr, ptr %1, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 4
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ %19, %24 ], [ %37, %26 ]
  %28 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %29 = call ptr @__irq_resolve_mapping(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %3) #9
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr %3, align 4
  %32 = select i1 %30, i32 0, i32 %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @handle_nested_irq(i32 noundef %32) #9
  %33 = load ptr, ptr %1, align 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %27, 1
  %37 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %35, i32 noundef %36) #9
  %38 = load ptr, ptr %1, align 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %26, label %42

42:                                               ; preds = %26, %9
  %43 = load i32, ptr %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %42, %2
  %47 = phi i32 [ %45, %42 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pca954x_irq_set_type(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = and i32 %1, 15
  %4 = icmp eq i32 %3, 8
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pca954x, ptr %7, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_state_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_mux_core, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %9, align 4
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = icmp ult i32 %13, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %17, %12
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef %23, i32 noundef 2) #9
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr inbounds %struct.pca954x, ptr %9, i32 0, i32 2
  store volatile i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.pca954x, ptr %9, i32 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = icmp ne i8 %30, 0
  %32 = icmp ne i32 %27, -2
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 @pca954x_deselect_mux(ptr noundef %7, i32 noundef 0)
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ %35, %34 ], [ %10, %22 ]
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.i2c_lock_operations, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  call void %42(ptr noundef %38, i32 noundef 2) #9
  %43 = icmp slt i32 %37, 0
  %44 = select i1 %43, i32 %37, i32 %3
  br label %45

45:                                               ; preds = %36, %17, %15, %4
  %46 = phi i32 [ %44, %36 ], [ %10, %4 ], [ -22, %17 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %46
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca954x_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_mux_core, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca954x, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.chip_desc, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = trunc i32 %8 to i8
  %17 = getelementptr inbounds %struct.chip_desc, ptr %11, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = or i8 %18, %16
  %20 = zext i8 %19 to i32
  br label %24

21:                                               ; preds = %10
  %22 = and i32 %8, 255
  %23 = shl nuw i32 1, %22
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %20, %15 ], [ %23, %21 ]
  %26 = trunc i32 %25 to i8
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i8 [ %26, %24 ], [ 0, %1 ]
  %29 = getelementptr inbounds %struct.pca954x, ptr %6, i32 0, i32 1
  store i8 %28, ptr %29, align 4
  %30 = tail call i32 @i2c_smbus_write_byte(ptr noundef %2, i8 noundef zeroext %28) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8 0, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  br label %33

33:                                               ; preds = %32, %27
  ret i32 %30
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
