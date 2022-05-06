; ModuleID = '/llk/IR/drivers/reset/reset-uniphier.c_pt.bc'
source_filename = "../drivers/reset/reset-uniphier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.uniphier_reset_data = type { i32, i32, i32, i32 }
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
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.uniphier_reset_priv = type { %struct.reset_controller_dev, ptr, ptr, ptr }

@__initcall__kmod_reset_uniphier__164_520_uniphier_reset_driver_init6 = internal global ptr @uniphier_reset_driver_init, section ".initcall6.init", align 4
@uniphier_reset_driver = internal global %struct.platform_driver { ptr @uniphier_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_reset_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_reset_driver_exit = internal global ptr @uniphier_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author165 = internal constant [70 x i8] c"reset_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description166 = internal constant [60 x i8] c"reset_uniphier.description=UniPhier Reset Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file167 = internal constant [49 x i8] c"reset_uniphier.file=drivers/reset/reset-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [27 x i8] c"reset_uniphier.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"uniphier-reset\00", align 1
@uniphier_reset_match = internal constant [31 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_nx1_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-adamv-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_adamv_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-adamv-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_adamv_reset_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/reset/reset-uniphier.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get regmap (error %ld)\0A\00", align 1
@uniphier_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @uniphier_reset_assert, ptr @uniphier_reset_deassert, ptr @uniphier_reset_status }, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"reset_id=%lu was not handled\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"reset_id=%lu was not found\0A\00", align 1
@uniphier_ld4_sys_reset_data = internal constant [3 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_pro4_sys_reset_data = internal constant [11 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8192, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8192, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8192, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 8196, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 28, i32 8192, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 29, i32 8196, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 30, i32 8192, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8192, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_pro5_sys_reset_data = internal constant [8 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8192, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8192, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 8196, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8200, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8192, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_pxs2_sys_reset_data = internal constant [14 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8192, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8192, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 8196, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8212, i32 4, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8212, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8212, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 20, i32 8212, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 21, i32 8212, i32 1, i32 1 }, %struct.uniphier_reset_data { i32 28, i32 8212, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 30, i32 8212, i32 8, i32 0 }, %struct.uniphier_reset_data { i32 40, i32 8192, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_ld11_sys_reset_data = internal constant [9 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 8204, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 8204, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8200, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 41, i32 8200, i32 1, i32 1 }, %struct.uniphier_reset_data { i32 42, i32 8208, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_ld20_sys_reset_data = internal constant [15 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 8204, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 8204, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8204, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8204, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8204, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8204, i32 14, i32 1 }, %struct.uniphier_reset_data { i32 19, i32 8204, i32 15, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8204, i32 4, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8200, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 41, i32 8200, i32 1, i32 1 }, %struct.uniphier_reset_data { i32 42, i32 8208, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_pxs3_sys_reset_data = internal constant [19 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 8204, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 8204, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8204, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8204, i32 4, i32 1 }, %struct.uniphier_reset_data { i32 13, i32 8204, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8204, i32 16, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8204, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8204, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 20, i32 8204, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 21, i32 8204, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8204, i32 3, i32 1 }, %struct.uniphier_reset_data { i32 28, i32 8204, i32 7, i32 1 }, %struct.uniphier_reset_data { i32 29, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 30, i32 8204, i32 21, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8200, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 42, i32 8208, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_nx1_sys_reset_data = internal constant [10 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 4, i32 8200, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8204, i32 16, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8204, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8204, i32 25, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8204, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 52, i32 8208, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 58, i32 8208, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_ld4_mio_reset_data = internal constant [15 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 272, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 784, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 2, i32 1296, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 3, i32 272, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 784, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 5, i32 1296, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 640, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 272, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 276, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 788, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 10, i32 1300, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 272, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 13, i32 784, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 1296, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_pro5_sd_reset_data = internal constant [4 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 272, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 784, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 640, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_ld4_peri_reset_data = internal constant [11 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 276, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 276, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 2, i32 276, i32 21, i32 1 }, %struct.uniphier_reset_data { i32 3, i32 276, i32 22, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 276, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 5, i32 276, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 276, i32 7, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 276, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 276, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 11, i32 272, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_pro4_peri_reset_data = internal constant [17 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 276, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 276, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 2, i32 276, i32 21, i32 1 }, %struct.uniphier_reset_data { i32 3, i32 276, i32 22, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 276, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 5, i32 276, i32 25, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 276, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 276, i32 27, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 276, i32 28, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 276, i32 29, i32 1 }, %struct.uniphier_reset_data { i32 10, i32 276, i32 30, i32 1 }, %struct.uniphier_reset_data { i32 11, i32 272, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 272, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 13, i32 272, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 272, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 276, i32 14, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@uniphier_ld11_adamv_reset_data = internal constant [2 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 16, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author165, ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__exitcall_uniphier_reset_driver_exit, ptr @__initcall__kmod_reset_uniphier__164_520_uniphier_reset_driver_init6, ptr @uniphier_reset_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_reset_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_reset_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_reset_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_reset_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef null) #6
  br label %43

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_get_parent(ptr noundef %8) #6
  %10 = tail call ptr @syscon_node_to_regmap(ptr noundef %9) #6
  tail call void @of_node_put(ptr noundef %9) #6
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %13) #7
  br label %43

14:                                               ; preds = %6
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 56, i32 noundef 3520) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %29, label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %27, %20 ], [ %18, %17 ]
  %22 = phi ptr [ %26, %20 ], [ %3, %17 ]
  %23 = phi i32 [ %25, %20 ], [ 0, %17 ]
  %24 = add nuw i32 %21, 1
  %25 = tail call i32 @llvm.umax.i32(i32 %23, i32 %24)
  %26 = getelementptr %struct.uniphier_reset_data, ptr %22, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %20

29:                                               ; preds = %20, %17
  %30 = phi i32 [ 0, %17 ], [ %25, %20 ]
  store ptr @uniphier_reset_ops, ptr %15, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.device_driver, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.reset_controller_dev, ptr %15, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.reset_controller_dev, ptr %15, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.reset_controller_dev, ptr %15, i32 0, i32 8
  store i32 %30, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %15, i32 0, i32 1
  store ptr %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %15, i32 0, i32 2
  store ptr %10, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %15, i32 0, i32 3
  store ptr %3, ptr %41, align 4
  %42 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef nonnull %15) #6
  br label %43

43:                                               ; preds = %29, %14, %12, %5
  %44 = phi i32 [ -22, %5 ], [ %13, %12 ], [ %42, %29 ], [ -12, %14 ]
  ret i32 %44
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
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %29, label %7

7:                                                ; preds = %25, %2
  %8 = phi i32 [ %27, %25 ], [ %5, %2 ]
  %9 = phi ptr [ %26, %25 ], [ %4, %2 ]
  %10 = icmp eq i32 %8, %1
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = sub nsw i32 0, %17
  %19 = xor i32 %14, %18
  %20 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %14, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %32

25:                                               ; preds = %7
  %26 = getelementptr %struct.uniphier_reset_data, ptr %9, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %7

29:                                               ; preds = %25, %2
  %30 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %32

32:                                               ; preds = %29, %11
  %33 = phi i32 [ -22, %29 ], [ %24, %11 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %29, label %7

7:                                                ; preds = %25, %2
  %8 = phi i32 [ %27, %25 ], [ %5, %2 ]
  %9 = phi ptr [ %26, %25 ], [ %4, %2 ]
  %10 = icmp eq i32 %8, %1
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = add nsw i32 %17, -1
  %19 = xor i32 %18, %14
  %20 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %14, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %32

25:                                               ; preds = %7
  %26 = getelementptr %struct.uniphier_reset_data, ptr %9, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %7

29:                                               ; preds = %25, %2
  %30 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %32

32:                                               ; preds = %29, %11
  %33 = phi i32 [ -22, %29 ], [ %24, %11 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %38, label %8

8:                                                ; preds = %34, %2
  %9 = phi ptr [ %35, %34 ], [ %5, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %3) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, ptr %3, align 4
  %21 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %20
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr inbounds %struct.uniphier_reset_data, ptr %9, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %25, %29
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %19, %12
  %33 = phi i32 [ %17, %12 ], [ %31, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %41

34:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %35 = getelementptr %struct.uniphier_reset_data, ptr %9, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %8

38:                                               ; preds = %34, %2
  %39 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i32 [ -22, %38 ], [ %33, %32 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
