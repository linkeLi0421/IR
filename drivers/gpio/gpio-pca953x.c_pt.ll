; ModuleID = '/llk/IR/drivers/gpio/gpio-pca953x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pca953x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.pca953x_reg_config = type { i32, i32, i32, i32 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.pca953x_platform_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pca953x_chip = type { i32, %struct.mutex, ptr, %struct.mutex, [2 x i32], [2 x i32], [2 x i32], [2 x i32], %struct.irq_chip, %struct.atomic_t, ptr, %struct.gpio_chip, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_pca953x__247_1268_pca953x_init4 = internal global ptr @pca953x_init, section ".initcall4.init", align 4
@pca953x_driver = internal global %struct.i2c_driver { i32 0, ptr @pca953x_probe, ptr @pca953x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca953x_dt_ids, ptr @pca953x_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca953x_pm_ops, ptr null, ptr null }, ptr @pca953x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_pca953x_exit = internal global ptr @pca953x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [54 x i8] c"gpio_pca953x.author=eric miao <eric.miao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [58 x i8] c"gpio_pca953x.description=GPIO expander driver for PCA953x\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [44 x i8] c"gpio_pca953x.file=drivers/gpio/gpio-pca953x\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [25 x i8] c"gpio_pca953x.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"pca953x\00", align 1
@pca953x_dt_ids = internal constant [37 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca6416\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9505\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4392 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9506\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4392 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9534\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9535\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9536\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4100 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9537\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4356 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9538\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9539\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9554\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9556\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9557\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9574\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8456 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9575\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8464 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9698\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4136 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal6416\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4880 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal6524\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4888 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal9535\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4880 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal9554b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4872 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal9555a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4880 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7310\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7312\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7313\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7315\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7318\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pca6107\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pca9536\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4100 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6408\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6416\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6424\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4376 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca9539\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,cat9554\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,pca9654\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,pca9655\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"exar,xra1202\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@pca953x_acpi_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3491\00\00", i32 4880, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@pca953x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pca953x_suspend, ptr @pca953x_resume, ptr @pca953x_suspend, ptr @pca953x_resume, ptr @pca953x_suspend, ptr @pca953x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pca953x_id = internal constant [34 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca6416\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9505\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4392 }, %struct.i2c_device_id { [20 x i8] c"pca9506\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4392 }, %struct.i2c_device_id { [20 x i8] c"pca9534\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"pca9535\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9536\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4100 }, %struct.i2c_device_id { [20 x i8] c"pca9537\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4356 }, %struct.i2c_device_id { [20 x i8] c"pca9538\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"pca9539\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9554\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"pca9555\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9556\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id { [20 x i8] c"pca9557\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id { [20 x i8] c"pca9574\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8456 }, %struct.i2c_device_id { [20 x i8] c"pca9575\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8464 }, %struct.i2c_device_id { [20 x i8] c"pca9698\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4136 }, %struct.i2c_device_id { [20 x i8] c"pcal6416\00\00\00\00\00\00\00\00\00\00\00\00", i32 4880 }, %struct.i2c_device_id { [20 x i8] c"pcal6524\00\00\00\00\00\00\00\00\00\00\00\00", i32 4888 }, %struct.i2c_device_id { [20 x i8] c"pcal9535\00\00\00\00\00\00\00\00\00\00\00\00", i32 4880 }, %struct.i2c_device_id { [20 x i8] c"pcal9554b\00\00\00\00\00\00\00\00\00\00\00", i32 4872 }, %struct.i2c_device_id { [20 x i8] c"pcal9555a\00\00\00\00\00\00\00\00\00\00\00", i32 4880 }, %struct.i2c_device_id { [20 x i8] c"max7310\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id { [20 x i8] c"max7312\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"max7313\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"max7315\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"max7318\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca6107\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"tca6408\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"tca6416\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"tca6424\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4376 }, %struct.i2c_device_id { [20 x i8] c"tca9539\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"tca9554\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"xra1202\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"reg get err\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"reg en err: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"using AI\0A\00", align 1
@pca953x_ai_i2c_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @pca953x_writeable_register, ptr @pca953x_readable_register, ptr @pca953x_volatile_register, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 128, i32 128, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"using no AI\0A\00", align 1
@pca953x_i2c_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @pca953x_writeable_register, ptr @pca953x_readable_register, ptr @pca953x_volatile_register, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@pca953x_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"&chip->i2c_lock\00", align 1
@pca953x_regs = internal constant %struct.pca953x_reg_config { i32 3, i32 1, i32 0, i32 2 }, align 4
@pca957x_regs = internal constant %struct.pca953x_reg_config { i32 4, i32 5, i32 0, i32 1 }, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"setup failed, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"failed reading register\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"failed writing register\0A\00", align 1
@pca953x_dmi_acpi_irq_info = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -114, [79 x i8] c"GalileoGen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@pca953x_irq_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"&chip->irq_lock\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"can't add GPIO ACPI mapping\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"irq %d: unsupported type %d\0A\00", align 1
@pca953x_irq_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.pca953x_irq_handler = private unnamed_addr constant [20 x i8] c"pca953x_irq_handler\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"unmapped interrupt %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"teardown failed, %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Failed to restore register map: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Failed to sync GPIO dir registers: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Failed to sync GPIO out registers: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Failed to sync INT latch registers: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Failed to sync INT mask registers: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_pca953x_exit, ptr @__initcall__kmod_gpio_pca953x__247_1268_pca953x_init4, ptr @pca953x_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pca953x_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca953x_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pca953x_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @pca953x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_probe(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 544, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %130, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pca953x_platform_data, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %8, align 4
  store i32 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.pca953x_platform_data, ptr %8, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pca953x_platform_data, ptr %8, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 12
  store ptr %17, ptr %18, align 4
  br label %24

19:                                               ; preds = %6
  store i32 -1, ptr %4, align 4
  %20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 3) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %130

24:                                               ; preds = %19, %10
  %25 = phi i32 [ %12, %10 ], [ 0, %19 ]
  %26 = phi i32 [ %15, %10 ], [ 0, %19 ]
  %27 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 10
  store ptr %0, ptr %27, align 4
  %28 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = ptrtoint ptr %28 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %31, ptr noundef nonnull @.str.3) #9
  br label %130

33:                                               ; preds = %24
  %34 = tail call i32 @regulator_enable(ptr noundef %28) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %34) #10
  br label %130

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 14
  store ptr %28, ptr %38, align 4
  %39 = icmp eq ptr %1, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  br label %48

43:                                               ; preds = %37
  %44 = tail call ptr @device_get_match_data(ptr noundef %3) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %126, label %46

46:                                               ; preds = %43
  %47 = ptrtoint ptr %44 to i32
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi i32 [ %47, %46 ], [ %42, %40 ]
  %50 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %51, align 8
  %52 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 13
  %53 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 8
  store ptr @pca953x_gpio_direction_input, ptr %53, align 4
  %54 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 9
  store ptr @pca953x_gpio_direction_output, ptr %54, align 4
  %55 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 10
  store ptr @pca953x_gpio_get_value, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 12
  store ptr @pca953x_gpio_set_value, ptr %56, align 4
  %57 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 7
  store ptr @pca953x_gpio_get_direction, ptr %57, align 4
  %58 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 11
  store ptr @pca953x_gpio_get_multiple, ptr %58, align 4
  %59 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 13
  store ptr @pca953x_gpio_set_multiple, ptr %59, align 4
  %60 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 14
  store ptr @pca953x_gpio_set_config, ptr %60, align 4
  %61 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 23
  store i8 1, ptr %61, align 4
  %62 = load i32, ptr %4, align 4
  %63 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 19
  store i32 %62, ptr %63, align 4
  %64 = trunc i32 %49 to i16
  %65 = and i16 %64, 255
  %66 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  store i16 %65, ptr %66, align 4
  %67 = load ptr, ptr %27, align 4
  %68 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %48
  %73 = load ptr, ptr %68, align 4
  br label %74

74:                                               ; preds = %72, %48
  %75 = phi ptr [ %73, %72 ], [ %70, %48 ]
  %76 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 2
  store ptr %68, ptr %77, align 4
  %78 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 4
  store ptr null, ptr %78, align 4
  %79 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 12
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 22
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt i16 %65, 16
  %83 = and i32 %49, 61440
  %84 = icmp eq i32 %83, 8192
  %85 = select i1 %82, i1 true, i1 %84
  %86 = select i1 %85, ptr @.str.5, ptr @.str.6
  %87 = select i1 %85, ptr @pca953x_ai_i2c_regmap, ptr @pca953x_i2c_regmap
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull %86) #10
  %88 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %87, ptr noundef null, ptr noundef null) #9
  %89 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = ptrtoint ptr %88 to i32
  br label %126

93:                                               ; preds = %74
  tail call void @regcache_mark_dirty(ptr noundef %88) #9
  %94 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %94, ptr noundef nonnull @.str.7, ptr noundef nonnull @pca953x_probe.__key) #9
  %95 = load i32, ptr %52, align 4
  %96 = and i32 %95, 61440
  %97 = icmp eq i32 %96, 4096
  %98 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 15
  br i1 %97, label %99, label %101

99:                                               ; preds = %93
  store ptr @pca953x_regs, ptr %98, align 4
  %100 = tail call fastcc i32 @device_pca95xx_init(ptr noundef nonnull %4, i32 noundef %26)
  br label %103

101:                                              ; preds = %93
  store ptr @pca957x_regs, ptr %98, align 4
  %102 = tail call fastcc i32 @device_pca957x_init(ptr noundef nonnull %4, i32 noundef %26)
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = tail call fastcc i32 @pca953x_irq_setup(ptr noundef nonnull %4, i32 noundef %25)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %76, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  br i1 %9, label %130, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.pca953x_platform_data, ptr %8, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %130, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %63, align 4
  %119 = load i16, ptr %66, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.pca953x_platform_data, ptr %8, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 %115(ptr noundef %0, i32 noundef %118, i32 noundef %120, ptr noundef %122) #9
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %123) #10
  br label %130

126:                                              ; preds = %109, %106, %103, %91, %43
  %127 = phi i32 [ %92, %91 ], [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ -19, %43 ]
  %128 = load ptr, ptr %38, align 4
  %129 = tail call i32 @regulator_disable(ptr noundef %128) #9
  br label %130

130:                                              ; preds = %126, %125, %117, %113, %112, %36, %30, %22, %2
  %131 = phi i32 [ %32, %30 ], [ %34, %36 ], [ %127, %126 ], [ -12, %2 ], [ 0, %117 ], [ 0, %125 ], [ 0, %113 ], [ 0, %112 ], [ %23, %22 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pca953x_platform_data, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 11, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 11, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.pca953x_platform_data, ptr %4, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %10(ptr noundef %0, i32 noundef %14, i32 noundef %17, ptr noundef %19) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %20) #10
  br label %23

23:                                               ; preds = %22, %12, %8, %1
  %24 = phi i32 [ %20, %22 ], [ %20, %12 ], [ 0, %8 ], [ 0, %1 ]
  %25 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regulator_disable(ptr noundef %26) #9
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_pca95xx_init(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [5 x i8], align 1
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pca953x_reg_config, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 20
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, 7
  %15 = lshr i32 %14, 3
  %16 = add i32 %15, %10
  %17 = tail call i32 @regcache_sync_region(ptr noundef %6, i32 noundef %10, i32 noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %77

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = load i32, ptr %21, align 4
  %23 = load i16, ptr %11, align 4
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i32 %24, 7
  %26 = lshr i32 %25, 3
  %27 = add i32 %26, %22
  %28 = tail call i32 @regcache_sync_region(ptr noundef %20, i32 noundef %22, i32 noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %19
  %31 = icmp ne i32 %1, 0
  %32 = sext i1 %31 to i64
  store i64 %32, ptr %4, align 8
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.pca953x_reg_config, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = load i16, ptr %11, align 4
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 %37, -1
  %39 = sdiv i32 %38, 8
  %40 = icmp ult i16 %36, 9
  %41 = tail call i32 @llvm.ctlz.i32(i32 %39, i1 false) #9, !range !8
  %42 = sub nuw nsw i32 32, %41
  %43 = select i1 %40, i32 0, i32 %42
  %44 = and i32 %35, 31
  %45 = shl i32 %44, %43
  %46 = shl i32 %35, 1
  %47 = and i32 %46, 192
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false) #9, !annotation !9
  %48 = add nuw nsw i32 %37, 7
  %49 = lshr i32 %48, 3
  %50 = icmp eq i16 %36, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %30
  %52 = tail call i32 @llvm.umax.i32(i32 %49, i32 1) #9
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i32 [ %63, %53 ], [ 0, %51 ]
  %55 = shl i32 %54, 3
  %56 = lshr i32 %55, 5
  %57 = and i32 %55, 24
  %58 = getelementptr i32, ptr %4, i32 %56
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, %57
  %61 = trunc i32 %60 to i8
  %62 = getelementptr [5 x i8], ptr %3, i32 0, i32 %54
  store i8 %61, ptr %62, align 1
  %63 = add nuw nsw i32 %54, 1
  %64 = icmp eq i32 %63, %52
  br i1 %64, label %65, label %53

65:                                               ; preds = %53, %30
  %66 = load ptr, ptr %5, align 4
  %67 = and i32 %45, 255
  %68 = or i32 %67, %47
  %69 = call i32 @regmap_bulk_write(ptr noundef %66, i32 noundef %68, ptr noundef nonnull %3, i32 noundef %49) #9
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 10
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.10) #10
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i32 [ %69, %71 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  br label %77

77:                                               ; preds = %75, %19, %2
  %78 = phi i32 [ %17, %2 ], [ %28, %19 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_pca957x_init(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [5 x i8], align 1
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = tail call fastcc i32 @device_pca95xx_init(ptr noundef %0, i32 noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = add nuw nsw i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = icmp eq i16 %9, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %28, %16 ], [ 0, %14 ]
  %18 = shl i32 %17, 3
  %19 = lshr i32 %18, 5
  %20 = and i32 %18, 24
  %21 = shl nuw i32 255, %20
  %22 = xor i32 %21, -1
  %23 = getelementptr i32, ptr %4, i32 %19
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = shl nuw nsw i32 2, %20
  %27 = or i32 %25, %26
  store i32 %27, ptr %23, align 4
  %28 = add nuw nsw i32 %17, 1
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %16

30:                                               ; preds = %16, %7
  %31 = add nsw i32 %10, -1
  %32 = sdiv i32 %31, 8
  %33 = icmp ult i16 %9, 9
  %34 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #9, !range !8
  %35 = sub nuw nsw i32 32, %34
  %36 = shl i32 2, %35
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false) #9, !annotation !9
  br i1 %13, label %51, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @llvm.umax.i32(i32 %12, i32 1) #9
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %49, %39 ], [ 0, %37 ]
  %41 = shl i32 %40, 3
  %42 = lshr i32 %41, 5
  %43 = and i32 %41, 24
  %44 = getelementptr i32, ptr %4, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, %43
  %47 = trunc i32 %46 to i8
  %48 = getelementptr [5 x i8], ptr %3, i32 0, i32 %40
  store i8 %47, ptr %48, align 1
  %49 = add nuw nsw i32 %40, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %51, label %39

51:                                               ; preds = %39, %30
  %52 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = and i32 %36, 254
  %55 = select i1 %33, i32 2, i32 %54
  %56 = call i32 @regmap_bulk_write(ptr noundef %53, i32 noundef %55, ptr noundef nonnull %3, i32 noundef %12) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  br label %63

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.10) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  br label %63

63:                                               ; preds = %59, %58, %2
  %64 = phi i32 [ 0, %58 ], [ %5, %2 ], [ %56, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pca953x_irq_setup(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %8 = tail call ptr @dmi_first_match(ptr noundef nonnull @pca953x_dmi_acpi_irq_info) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.13) #10
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %1, -1
  %17 = or i1 %16, %15
  br i1 %17, label %75, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.pca953x_reg_config, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = call fastcc i32 @pca953x_read_regs(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %4)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %23
  %31 = load ptr, ptr %24, align 4
  %32 = load i32, ptr %31, align 4
  %33 = call fastcc i32 @pca953x_read_regs(ptr noundef %0, i32 noundef %32, ptr noundef nonnull %3)
  %34 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 20
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 5
  %38 = call i32 @__bitmap_and(ptr noundef %37, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %36) #9
  %39 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 3
  call void @__mutex_init(ptr noundef %39, ptr noundef nonnull @.str.11, ptr noundef nonnull @pca953x_irq_setup.__key) #9
  %40 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %41 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load ptr, ptr %40, align 4
  br label %46

46:                                               ; preds = %44, %30
  %47 = phi ptr [ %45, %44 ], [ %42, %30 ]
  %48 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 7
  store ptr @pca953x_irq_mask, ptr %49, align 4
  %50 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 9
  store ptr @pca953x_irq_unmask, ptr %50, align 4
  %51 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 14
  store ptr @pca953x_irq_set_wake, ptr %51, align 4
  %52 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 15
  store ptr @pca953x_irq_bus_lock, ptr %52, align 4
  %53 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 16
  store ptr @pca953x_irq_bus_sync_unlock, ptr %53, align 4
  %54 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 13
  store ptr @pca953x_irq_set_type, ptr %54, align 4
  %55 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 8, i32 3
  store ptr @pca953x_irq_shutdown, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37
  store ptr %7, ptr %56, align 4
  %57 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 13
  store ptr null, ptr %57, align 4
  %58 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 15
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 16
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 10
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 9
  store ptr @handle_simple_irq, ptr %61, align 4
  %62 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 18
  store i8 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 37, i32 23
  store i32 %1, ptr %63, align 4
  %64 = load i32, ptr %13, align 4
  %65 = load ptr, ptr %41, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load ptr, ptr %40, align 4
  br label %69

69:                                               ; preds = %67, %46
  %70 = phi ptr [ %68, %67 ], [ %65, %46 ]
  %71 = call i32 @devm_request_threaded_irq(ptr noundef %40, i32 noundef %64, ptr noundef null, ptr noundef nonnull @pca953x_irq_handler, i32 noundef 8320, ptr noundef %70, ptr noundef %0) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %74) #10
  br label %75

75:                                               ; preds = %73, %69, %23, %18, %12
  %76 = phi i32 [ %71, %73 ], [ 0, %12 ], [ 0, %18 ], [ %28, %23 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 11, i32 20
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %9, -1
  %11 = sdiv i32 %10, 8
  %12 = icmp ult i16 %8, 9
  %13 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #9, !range !8
  %14 = sub nuw nsw i32 32, %13
  %15 = select i1 %12, i32 0, i32 %14
  %16 = and i32 %6, 31
  %17 = shl i32 %16, %15
  %18 = shl i32 %6, 1
  %19 = and i32 %18, 192
  %20 = sdiv i32 %1, 8
  %21 = or i32 %19, %20
  %22 = or i32 %21, %17
  %23 = and i32 %1, 7
  %24 = shl nuw nsw i32 1, %23
  %25 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %25) #9
  %26 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %22, 255
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %28, i32 noundef %24, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  tail call void @mutex_unlock(ptr noundef %25) #9
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = sdiv i32 %11, 8
  %13 = icmp ult i16 %9, 9
  %14 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #9, !range !8
  %15 = sub nuw nsw i32 32, %14
  %16 = select i1 %13, i32 0, i32 %15
  %17 = sdiv i32 %1, 8
  %18 = getelementptr inbounds %struct.pca953x_reg_config, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 31
  %21 = shl i32 %20, %16
  %22 = shl i32 %19, 1
  %23 = and i32 %22, 192
  %24 = or i32 %23, %17
  %25 = or i32 %24, %21
  %26 = and i32 %1, 7
  %27 = shl nuw nsw i32 1, %26
  %28 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = and i32 %25, 255
  %32 = icmp eq i32 %2, 0
  %33 = select i1 %32, i32 0, i32 %27
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %31, i32 noundef %27, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = shl i32 %7, 1
  %38 = and i32 %37, 192
  %39 = or i32 %38, %17
  %40 = and i32 %7, 31
  %41 = shl i32 %40, %16
  %42 = or i32 %39, %41
  %43 = load ptr, ptr %29, align 4
  %44 = and i32 %42, 255
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %44, i32 noundef %27, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %46

46:                                               ; preds = %36, %3
  %47 = phi i32 [ %34, %3 ], [ %45, %36 ]
  tail call void @mutex_unlock(ptr noundef %28) #9
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_get_value(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_reg_config, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -1
  %13 = sdiv i32 %12, 8
  %14 = icmp ult i16 %10, 9
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #9, !range !8
  %16 = sub nuw nsw i32 32, %15
  %17 = select i1 %14, i32 0, i32 %16
  %18 = and i32 %8, 31
  %19 = shl i32 %18, %17
  %20 = shl i32 %8, 1
  %21 = and i32 %20, 192
  %22 = sdiv i32 %1, 8
  %23 = or i32 %21, %22
  %24 = or i32 %23, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %25 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %25) #9
  %26 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %24, 255
  %29 = call i32 @regmap_read(ptr noundef %27, i32 noundef %28, ptr noundef nonnull %3) #9
  call void @mutex_unlock(ptr noundef %25) #9
  %30 = icmp slt i32 %29, 0
  %31 = and i32 %1, 7
  %32 = load i32, ptr %3, align 4
  %33 = lshr i32 %32, %31
  %34 = and i32 %33, 1
  %35 = select i1 %30, i32 %29, i32 %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_gpio_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_reg_config, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -1
  %13 = sdiv i32 %12, 8
  %14 = icmp ult i16 %10, 9
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #9, !range !8
  %16 = sub nuw nsw i32 32, %15
  %17 = select i1 %14, i32 0, i32 %16
  %18 = and i32 %8, 31
  %19 = shl i32 %18, %17
  %20 = shl i32 %8, 1
  %21 = and i32 %20, 192
  %22 = sdiv i32 %1, 8
  %23 = or i32 %21, %22
  %24 = or i32 %23, %19
  %25 = and i32 %1, 7
  %26 = shl nuw nsw i32 1, %25
  %27 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = and i32 %24, 255
  %31 = icmp eq i32 %2, 0
  %32 = select i1 %31, i32 0, i32 %26
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %30, i32 noundef %26, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  tail call void @mutex_unlock(ptr noundef %27) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = sdiv i32 %11, 8
  %13 = icmp ult i16 %9, 9
  %14 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #9, !range !8
  %15 = sub nuw nsw i32 32, %14
  %16 = select i1 %13, i32 0, i32 %15
  %17 = and i32 %7, 31
  %18 = shl i32 %17, %16
  %19 = shl i32 %7, 1
  %20 = and i32 %19, 192
  %21 = sdiv i32 %1, 8
  %22 = or i32 %20, %21
  %23 = or i32 %22, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %24 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %24) #9
  %25 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = and i32 %23, 255
  %28 = call i32 @regmap_read(ptr noundef %26, i32 noundef %27, ptr noundef nonnull %3) #9
  call void @mutex_unlock(ptr noundef %24) #9
  %29 = icmp slt i32 %28, 0
  %30 = and i32 %1, 7
  %31 = load i32, ptr %3, align 4
  %32 = lshr i32 %31, %30
  %33 = and i32 %32, 1
  %34 = select i1 %29, i32 %28, i32 %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_get_multiple(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [2 x i32], align 8
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %6 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pca953x_reg_config, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = call fastcc i32 @pca953x_read_regs(ptr noundef %5, i32 noundef %10, ptr noundef nonnull %4)
  tail call void @mutex_unlock(ptr noundef %6) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  call void @__bitmap_replace(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %16) #9
  br label %17

17:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_gpio_set_multiple(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [5 x i8], align 1
  %5 = alloca [2 x i32], align 8
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !9
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pca953x_reg_config, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = call fastcc i32 @pca953x_read_regs(ptr noundef %6, i32 noundef %11, ptr noundef nonnull %5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  call void @__bitmap_replace(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1, i32 noundef %17) #9
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.pca953x_reg_config, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 11, i32 20
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, -1
  %25 = sdiv i32 %24, 8
  %26 = icmp ult i16 %22, 9
  %27 = call i32 @llvm.ctlz.i32(i32 %25, i1 false) #9, !range !8
  %28 = sub nuw nsw i32 32, %27
  %29 = select i1 %26, i32 0, i32 %28
  %30 = and i32 %20, 31
  %31 = shl i32 %30, %29
  %32 = shl i32 %20, 1
  %33 = and i32 %32, 192
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false) #9, !annotation !9
  %34 = add nuw nsw i32 %23, 7
  %35 = lshr i32 %34, 3
  %36 = icmp eq i16 %22, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %14
  %38 = call i32 @llvm.umax.i32(i32 %35, i32 1) #9
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %49, %39 ], [ 0, %37 ]
  %41 = shl i32 %40, 3
  %42 = lshr i32 %41, 5
  %43 = and i32 %41, 24
  %44 = getelementptr i32, ptr %5, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, %43
  %47 = trunc i32 %46 to i8
  %48 = getelementptr [5 x i8], ptr %4, i32 0, i32 %40
  store i8 %47, ptr %48, align 1
  %49 = add nuw nsw i32 %40, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %51, label %39

51:                                               ; preds = %39, %14
  %52 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = and i32 %31, 255
  %55 = or i32 %54, %33
  %56 = call i32 @regmap_bulk_write(ptr noundef %53, i32 noundef %55, ptr noundef nonnull %4, i32 noundef %35) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.pca953x_chip, ptr %6, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.10) #10
  br label %62

62:                                               ; preds = %58, %51
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #9
  br label %63

63:                                               ; preds = %62, %3
  call void @mutex_unlock(ptr noundef %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = trunc i32 %2 to i8
  switch i8 %5, label %47 [
    i8 5, label %6
    i8 4, label %6
    i8 3, label %6
    i8 1, label %6
  ]

6:                                                ; preds = %3, %3, %3, %3
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %9, -1
  %11 = sdiv i32 %10, 8
  %12 = icmp ult i16 %8, 9
  %13 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #9, !range !8
  %14 = sub nuw nsw i32 32, %13
  %15 = select i1 %12, i32 0, i32 %14
  %16 = shl i32 3, %15
  %17 = sdiv i32 %1, 8
  %18 = or i32 %17, 64
  %19 = or i32 %16, %18
  %20 = shl i32 4, %15
  %21 = or i32 %20, %18
  %22 = and i32 %1, 7
  %23 = shl nuw nsw i32 1, %22
  %24 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %29) #9
  switch i32 %2, label %38 [
    i32 5, label %31
    i32 3, label %30
    i32 1, label %39
  ]

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ 0, %30 ], [ %23, %28 ]
  %33 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = and i32 %21, 255
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %35, i32 noundef %23, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31, %28
  br label %39

39:                                               ; preds = %38, %28
  %40 = phi i32 [ %23, %38 ], [ 0, %28 ]
  %41 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = and i32 %19, 255
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %43, i32 noundef %23, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %45

45:                                               ; preds = %39, %31
  %46 = phi i32 [ %36, %31 ], [ %44, %39 ]
  tail call void @mutex_unlock(ptr noundef %29) #9
  br label %47

47:                                               ; preds = %45, %6, %3
  %48 = phi i32 [ -524, %3 ], [ %46, %45 ], [ -524, %6 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pca953x_read_regs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca [5 x i8], align 1
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 11, i32 20
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = sdiv i32 %8, 8
  %10 = icmp ult i16 %6, 9
  %11 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #9, !range !8
  %12 = sub nuw nsw i32 32, %11
  %13 = select i1 %10, i32 0, i32 %12
  %14 = and i32 %1, 31
  %15 = shl i32 %14, %13
  %16 = shl i32 %1, 1
  %17 = and i32 %16, 192
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !9
  %18 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %15, 255
  %21 = or i32 %20, %17
  %22 = add nuw nsw i32 %7, 7
  %23 = lshr i32 %22, 3
  %24 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %4, i32 noundef %23) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i16, ptr %5, align 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %54, label %33

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.pca953x_chip, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.9) #10
  br label %54

33:                                               ; preds = %33, %26
  %34 = phi i32 [ %48, %33 ], [ 0, %26 ]
  %35 = getelementptr [5 x i8], ptr %4, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %34, 3
  %39 = lshr i32 %38, 5
  %40 = and i32 %38, 24
  %41 = shl nuw i32 255, %40
  %42 = xor i32 %41, -1
  %43 = getelementptr i32, ptr %2, i32 %39
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %42
  %46 = shl nuw i32 %37, %40
  %47 = or i32 %45, %46
  store i32 %47, ptr %43, align 4
  %48 = add nuw nsw i32 %34, 1
  %49 = load i16, ptr %5, align 4
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, 7
  %52 = lshr i32 %51, 3
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %33, label %54

54:                                               ; preds = %33, %29, %26
  %55 = phi i32 [ %24, %29 ], [ 0, %26 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #9
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pca953x_writeable_register(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 4096
  %9 = select i1 %8, i32 14, i32 54
  %10 = and i32 %6, 512
  %11 = icmp eq i32 %10, 0
  %12 = or i32 %9, 15360
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %16, -1
  %18 = sdiv i32 %17, 8
  %19 = icmp ult i16 %15, 9
  %20 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #9, !range !8
  %21 = sub nuw nsw i32 32, %20
  %22 = select i1 %19, i32 0, i32 %21
  %23 = and i32 %1, 63
  %24 = lshr i32 %23, %22
  %25 = shl nsw i32 -1, %22
  %26 = xor i32 %25, -1
  %27 = and i32 %26, %1
  %28 = and i32 %1, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  br i1 %11, label %42, label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %24, 8
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i32 [ %32, %31 ], [ %24, %2 ]
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = add nuw nsw i32 %16, 7
  %40 = lshr i32 %39, 3
  %41 = icmp slt i32 %27, %40
  br label %42

42:                                               ; preds = %38, %33, %30
  %43 = phi i1 [ false, %30 ], [ false, %33 ], [ %41, %38 ]
  ret i1 %43
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pca953x_readable_register(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 4096
  %9 = select i1 %8, i32 15, i32 55
  %10 = and i32 %6, 512
  %11 = icmp eq i32 %10, 0
  %12 = or i32 %9, 31744
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %16, -1
  %18 = sdiv i32 %17, 8
  %19 = icmp ult i16 %15, 9
  %20 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #9, !range !8
  %21 = sub nuw nsw i32 32, %20
  %22 = select i1 %19, i32 0, i32 %21
  %23 = and i32 %1, 63
  %24 = lshr i32 %23, %22
  %25 = shl nsw i32 -1, %22
  %26 = xor i32 %25, -1
  %27 = and i32 %26, %1
  %28 = and i32 %1, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  br i1 %11, label %42, label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %24, 8
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i32 [ %32, %31 ], [ %24, %2 ]
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = add nuw nsw i32 %16, 7
  %40 = lshr i32 %39, 3
  %41 = icmp slt i32 %27, %40
  br label %42

42:                                               ; preds = %38, %33, %30
  %43 = phi i1 [ false, %30 ], [ false, %33 ], [ %41, %38 ]
  ret i1 %43
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pca953x_volatile_register(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 16385
  %10 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 11, i32 20
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = sdiv i32 %13, 8
  %15 = icmp ult i16 %11, 9
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #9, !range !8
  %17 = sub nuw nsw i32 32, %16
  %18 = select i1 %15, i32 0, i32 %17
  %19 = and i32 %1, 63
  %20 = lshr i32 %19, %18
  %21 = shl nsw i32 -1, %18
  %22 = xor i32 %21, -1
  %23 = and i32 %22, %1
  %24 = and i32 %1, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  br i1 %8, label %38, label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %20, 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ %28, %27 ], [ %20, %2 ]
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = add nuw nsw i32 %12, 7
  %36 = lshr i32 %35, 3
  %37 = icmp slt i32 %23, %36
  br label %38

38:                                               ; preds = %34, %29, %26
  %39 = phi i1 [ false, %26 ], [ false, %29 ], [ %37, %34 ]
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_first_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %6, ptr noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #9
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9
  br i1 %6, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #9, !srcloc !10
  br label %12

10:                                               ; preds = %2
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #9, !srcloc !11
  br label %12

12:                                               ; preds = %10, %8
  %13 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef %1) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_irq_bus_lock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_irq_bus_sync_unlock(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [5 x i8], align 1
  %3 = alloca [5 x i8], align 1
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !9
  %9 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %94, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 4
  %15 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 11, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  %19 = sdiv i32 %18, 8
  %20 = icmp ult i16 %16, 9
  %21 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 false) #9, !range !8
  %22 = sub nuw nsw i32 32, %21
  %23 = shl i32 2, %22
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false) #9, !annotation !9
  %24 = add nuw nsw i32 %17, 7
  %25 = lshr i32 %24, 3
  %26 = icmp eq i16 %16, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 1) #9
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %39, %29 ], [ 0, %27 ]
  %31 = shl i32 %30, 3
  %32 = lshr i32 %31, 5
  %33 = and i32 %31, 24
  %34 = getelementptr i32, ptr %14, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, %33
  %37 = trunc i32 %36 to i8
  %38 = getelementptr [5 x i8], ptr %3, i32 0, i32 %30
  store i8 %37, ptr %38, align 1
  %39 = add nuw nsw i32 %30, 1
  %40 = icmp eq i32 %39, %28
  br i1 %40, label %41, label %29

41:                                               ; preds = %29, %13
  %42 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = and i32 %23, 190
  %45 = or i32 %44, 64
  %46 = select i1 %20, i32 66, i32 %45
  %47 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef %46, ptr noundef nonnull %3, i32 noundef %25) #9
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.10) #10
  br label %53

53:                                               ; preds = %49, %41
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  %54 = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 20
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  call void @__bitmap_complement(ptr noundef nonnull %4, ptr noundef %14, i32 noundef %56) #9
  %57 = load i16, ptr %15, align 4
  %58 = zext i16 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = sdiv i32 %59, 8
  %61 = icmp ult i16 %57, 9
  %62 = call i32 @llvm.ctlz.i32(i32 %60, i1 false) #9, !range !8
  %63 = sub nuw nsw i32 32, %62
  %64 = shl i32 5, %63
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false) #9, !annotation !9
  %65 = add nuw nsw i32 %58, 7
  %66 = lshr i32 %65, 3
  %67 = icmp eq i16 %57, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %53
  %69 = call i32 @llvm.umax.i32(i32 %66, i32 1) #9
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ %80, %70 ], [ 0, %68 ]
  %72 = shl i32 %71, 3
  %73 = lshr i32 %72, 5
  %74 = and i32 %72, 24
  %75 = getelementptr i32, ptr %4, i32 %73
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, %74
  %78 = trunc i32 %77 to i8
  %79 = getelementptr [5 x i8], ptr %2, i32 0, i32 %71
  store i8 %78, ptr %79, align 1
  %80 = add nuw nsw i32 %71, 1
  %81 = icmp eq i32 %80, %69
  br i1 %81, label %82, label %70

82:                                               ; preds = %70, %53
  %83 = load ptr, ptr %42, align 4
  %84 = and i32 %64, 191
  %85 = or i32 %84, 64
  %86 = select i1 %61, i32 69, i32 %85
  %87 = call i32 @regmap_bulk_write(ptr noundef %83, i32 noundef %86, ptr noundef nonnull %2, i32 noundef %66) #9
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 10
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.10) #10
  br label %93

93:                                               ; preds = %89, %82
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #9
  br label %94

94:                                               ; preds = %93, %1
  %95 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 15
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %96, align 4
  %98 = call fastcc i32 @pca953x_read_regs(ptr noundef %8, i32 noundef %97, ptr noundef nonnull %5)
  %99 = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 20
  %100 = load i16, ptr %99, align 4
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 6
  %103 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 7
  call void @__bitmap_or(ptr noundef nonnull %4, ptr noundef %103, ptr noundef %102, i32 noundef %101) #9
  %104 = load i16, ptr %99, align 4
  %105 = zext i16 %104 to i32
  call void @__bitmap_complement(ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef %105) #9
  %106 = load i16, ptr %99, align 4
  %107 = zext i16 %106 to i32
  %108 = call i32 @__bitmap_and(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %107) #9
  %109 = load i16, ptr %99, align 4
  %110 = zext i16 %109 to i32
  %111 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %110, i32 noundef 0) #9
  %112 = load i16, ptr %99, align 4
  %113 = zext i16 %112 to i32
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %94
  %116 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 11
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi i32 [ %111, %115 ], [ %149, %117 ]
  %119 = call ptr @gpiochip_get_data(ptr noundef %116) #9
  %120 = getelementptr inbounds %struct.pca953x_chip, ptr %119, i32 0, i32 15
  %121 = load ptr, ptr %120, align 4
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.pca953x_chip, ptr %119, i32 0, i32 11, i32 20
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = add nsw i32 %125, -1
  %127 = sdiv i32 %126, 8
  %128 = icmp ult i16 %124, 9
  %129 = call i32 @llvm.ctlz.i32(i32 %127, i1 false) #9, !range !8
  %130 = sub nuw nsw i32 32, %129
  %131 = select i1 %128, i32 0, i32 %130
  %132 = and i32 %122, 31
  %133 = shl i32 %132, %131
  %134 = shl i32 %122, 1
  %135 = and i32 %134, 192
  %136 = sdiv i32 %118, 8
  %137 = or i32 %135, %136
  %138 = or i32 %137, %133
  %139 = and i32 %118, 7
  %140 = shl nuw nsw i32 1, %139
  %141 = getelementptr inbounds %struct.pca953x_chip, ptr %119, i32 0, i32 1
  call void @mutex_lock(ptr noundef %141) #9
  %142 = getelementptr inbounds %struct.pca953x_chip, ptr %119, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = and i32 %138, 255
  %145 = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef %144, i32 noundef %140, i32 noundef %140, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @mutex_unlock(ptr noundef %141) #9
  %146 = load i16, ptr %99, align 4
  %147 = zext i16 %146 to i32
  %148 = add nsw i32 %118, 1
  %149 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %147, i32 noundef %148) #9
  %150 = load i16, ptr %99, align 4
  %151 = zext i16 %150 to i32
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %117, label %153

153:                                              ; preds = %117, %94
  %154 = getelementptr inbounds %struct.pca953x_chip, ptr %8, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %154) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %1, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %15, i32 noundef %1) #10
  br label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 7
  %18 = and i32 %1, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_set_bit(i32 noundef %7, ptr noundef %17) #9
  br label %22

21:                                               ; preds = %16
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %17) #9
  br label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.pca953x_chip, ptr %5, i32 0, i32 6
  %24 = and i32 %1, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_set_bit(i32 noundef %7, ptr noundef %23) #9
  br label %28

27:                                               ; preds = %22
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %23) #9
  br label %28

28:                                               ; preds = %27, %26, %10
  %29 = phi i32 [ -22, %10 ], [ 0, %26 ], [ 0, %27 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pca953x_irq_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.pca953x_chip, ptr %4, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  store i64 0, ptr %7, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 0, ptr %8, align 8, !annotation !9
  %11 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = call fastcc i32 @pca953x_read_regs(ptr noundef %1, i32 noundef 38, ptr noundef nonnull %8) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pca953x_reg_config, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = call fastcc i32 @pca953x_read_regs(ptr noundef %1, i32 noundef %22, ptr noundef nonnull %6) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 20
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 6
  %30 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 7
  call void @__bitmap_replace(ptr noundef nonnull %7, ptr noundef %30, ptr noundef %29, ptr noundef nonnull %6, i32 noundef %28) #9
  %31 = load i16, ptr %26, align 4
  %32 = zext i16 %31 to i32
  %33 = call i32 @__bitmap_and(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %32) #9
  %34 = load i16, ptr %26, align 4
  %35 = zext i16 %34 to i32
  %36 = call i32 @_find_first_bit_le(ptr noundef nonnull %9, i32 noundef %35) #9
  %37 = icmp eq i32 %36, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @mutex_unlock(ptr noundef %10) #9
  br i1 %37, label %130, label %91

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.pca953x_reg_config, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = call fastcc i32 @pca953x_read_regs(ptr noundef %1, i32 noundef %42, ptr noundef nonnull %6) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 4
  %47 = load i32, ptr %46, align 4
  %48 = call fastcc i32 @pca953x_read_regs(ptr noundef %1, i32 noundef %47, ptr noundef nonnull %4) #9
  %49 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 5
  %50 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 20
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, 31
  %54 = lshr i32 %53, 3
  %55 = and i32 %54, 16380
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %5, ptr align 4 %49, i32 %55, i1 false) #9
  %56 = call i32 @__bitmap_and(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef %52) #9
  %57 = load i16, ptr %50, align 4
  %58 = zext i16 %57 to i32
  call void @__bitmap_xor(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %58) #9
  %59 = load i16, ptr %50, align 4
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 4
  %62 = call i32 @__bitmap_and(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %61, i32 noundef %60) #9
  %63 = load i16, ptr %50, align 4
  %64 = zext i16 %63 to i32
  %65 = call i32 @_find_first_bit_le(ptr noundef nonnull %8, i32 noundef %64) #9
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %90, label %67

67:                                               ; preds = %45
  %68 = load i16, ptr %50, align 4
  %69 = zext i16 %68 to i32
  %70 = add nuw nsw i32 %69, 31
  %71 = lshr i32 %70, 3
  %72 = and i32 %71, 16380
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %49, ptr nonnull align 8 %7, i32 %72, i1 false) #9
  %73 = load i16, ptr %50, align 4
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 7
  %76 = call i32 @__bitmap_and(ptr noundef nonnull %6, ptr noundef %75, ptr noundef nonnull %5, i32 noundef %74) #9
  %77 = load i16, ptr %50, align 4
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 6
  %80 = call i32 @__bitmap_and(ptr noundef nonnull %5, ptr noundef %79, ptr noundef nonnull %7, i32 noundef %78) #9
  %81 = load i16, ptr %50, align 4
  %82 = zext i16 %81 to i32
  call void @__bitmap_or(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %82) #9
  %83 = load i16, ptr %50, align 4
  %84 = zext i16 %83 to i32
  %85 = call i32 @__bitmap_and(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %84) #9
  %86 = load i16, ptr %50, align 4
  %87 = zext i16 %86 to i32
  %88 = call i32 @_find_first_bit_le(ptr noundef nonnull %9, i32 noundef %87) #9
  %89 = icmp eq i32 %88, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @mutex_unlock(ptr noundef %10) #9
  br i1 %89, label %130, label %91

90:                                               ; preds = %45, %38, %18, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @mutex_unlock(ptr noundef %10) #9
  br label %130

91:                                               ; preds = %67, %25
  %92 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 20
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = call i32 @_find_next_bit_le(ptr noundef nonnull %9, i32 noundef %94, i32 noundef 0) #9
  %96 = load i16, ptr %92, align 4
  %97 = zext i16 %96 to i32
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 37, i32 1
  %101 = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 2
  br label %102

102:                                              ; preds = %117, %99
  %103 = phi i8 [ 0, %99 ], [ %118, %117 ]
  %104 = phi i32 [ %95, %99 ], [ %122, %117 ]
  %105 = load ptr, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %106 = call ptr @__irq_resolve_mapping(ptr noundef %105, i32 noundef %104, ptr noundef nonnull %3) #9
  %107 = icmp eq ptr %106, null
  %108 = load i32, ptr %3, align 4
  %109 = select i1 %107, i32 0, i32 %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %116, !prof !12

111:                                              ; preds = %102
  %112 = call i32 @___ratelimit(ptr noundef nonnull @pca953x_irq_handler._rs, ptr noundef nonnull @__func__.pca953x_irq_handler) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %101, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.17, i32 noundef %104) #10
  br label %117

116:                                              ; preds = %102
  call void @handle_nested_irq(i32 noundef %109) #9
  br label %117

117:                                              ; preds = %116, %114, %111
  %118 = phi i8 [ 1, %116 ], [ %103, %114 ], [ %103, %111 ]
  %119 = load i16, ptr %92, align 4
  %120 = zext i16 %119 to i32
  %121 = add nsw i32 %104, 1
  %122 = call i32 @_find_next_bit_le(ptr noundef nonnull %9, i32 noundef %120, i32 noundef %121) #9
  %123 = load i16, ptr %92, align 4
  %124 = zext i16 %123 to i32
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %102, label %126

126:                                              ; preds = %117, %91
  %127 = phi i8 [ 0, %91 ], [ %118, %117 ]
  %128 = and i8 %127, 1
  %129 = zext i8 %128 to i32
  br label %130

130:                                              ; preds = %126, %90, %67, %25
  %131 = phi i32 [ 0, %67 ], [ 0, %90 ], [ 0, %25 ], [ %129, %126 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_suspend(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #9
  %6 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %11 = load i8, ptr %10, align 4
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 4
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regulator_disable(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %13, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pca953x_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_enable(ptr noundef %9) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %10) #10
  br label %75

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @regcache_cache_only(ptr noundef %15, i1 noundef zeroext false) #9
  %16 = load ptr, ptr %14, align 4
  tail call void @regcache_mark_dirty(ptr noundef %16) #9
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.pca953x_chip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pca953x_chip, ptr %17, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pca953x_chip, ptr %17, i32 0, i32 11, i32 20
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = add nuw nsw i32 %25, 7
  %27 = lshr i32 %26, 3
  %28 = add i32 %27, %22
  %29 = tail call i32 @regcache_sync_region(ptr noundef %19, i32 noundef %22, i32 noundef %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %29) #10
  br label %75

32:                                               ; preds = %13
  %33 = load ptr, ptr %18, align 4
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr inbounds %struct.pca953x_reg_config, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load i16, ptr %23, align 4
  %38 = zext i16 %37 to i32
  %39 = add nuw nsw i32 %38, 7
  %40 = lshr i32 %39, 3
  %41 = add i32 %40, %36
  %42 = tail call i32 @regcache_sync_region(ptr noundef %33, i32 noundef %36, i32 noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %42) #10
  br label %75

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.pca953x_chip, ptr %17, i32 0, i32 13
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %18, align 4
  %52 = load i16, ptr %23, align 4
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %53, 7
  %55 = lshr i32 %54, 3
  %56 = add nuw nsw i32 %55, 34
  %57 = tail call i32 @regcache_sync_region(ptr noundef %51, i32 noundef 34, i32 noundef %56) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %57) #10
  br label %75

60:                                               ; preds = %50
  %61 = load ptr, ptr %18, align 4
  %62 = load i16, ptr %23, align 4
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %63, 7
  %65 = lshr i32 %64, 3
  %66 = add nuw nsw i32 %65, 37
  %67 = tail call i32 @regcache_sync_region(ptr noundef %61, i32 noundef 37, i32 noundef %66) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %67) #10
  br label %75

70:                                               ; preds = %60, %45
  %71 = load ptr, ptr %14, align 4
  %72 = tail call i32 @regcache_sync(ptr noundef %71) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %72) #10
  br label %75

75:                                               ; preds = %74, %70, %69, %59, %44, %31, %12
  %76 = phi i32 [ %72, %74 ], [ 0, %12 ], [ 0, %70 ], [ %67, %69 ], [ %57, %59 ], [ %42, %44 ], [ %29, %31 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{i64 2148039664, i64 2148039690, i64 2148039719, i64 2148039753, i64 2148039784, i64 2148039807}
!11 = !{i64 2148042021, i64 2148042047, i64 2148042076, i64 2148042110, i64 2148042141, i64 2148042164}
!12 = !{!"branch_weights", i32 1, i32 2000}
