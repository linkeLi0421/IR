; ModuleID = '/llk/IR/drivers/usb/chipidea/usbmisc_imx.c_pt.bc'
source_filename = "../drivers/usb/chipidea/usbmisc_imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_usbmisc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_usbmisc_init\22\09\09\09\09\09"
module asm "__kstrtabns_imx_usbmisc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_usbmisc_init_post:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_usbmisc_init_post\22\09\09\09\09\09"
module asm "__kstrtabns_imx_usbmisc_init_post:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_usbmisc_set_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_usbmisc_set_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_imx_usbmisc_set_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_usbmisc_hsic_set_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_usbmisc_hsic_set_connect\22\09\09\09\09\09"
module asm "__kstrtabns_imx_usbmisc_hsic_set_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_usbmisc_hsic_set_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_usbmisc_hsic_set_clk\22\09\09\09\09\09"
module asm "__kstrtabns_imx_usbmisc_hsic_set_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_usbmisc_charger_detection:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_usbmisc_charger_detection\22\09\09\09\09\09"
module asm "__kstrtabns_imx_usbmisc_charger_detection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usbmisc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.imx_usbmisc = type { ptr, %struct.spinlock, ptr }
%struct.imx_usbmisc_data = type { ptr, i32, i16, ptr, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_imx_usbmisc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_usbmisc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_usbmisc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_usbmisc_init to i32), ptr @__kstrtab_imx_usbmisc_init, ptr @__kstrtabns_imx_usbmisc_init }, section "___ksymtab_gpl+imx_usbmisc_init", align 4
@__kstrtab_imx_usbmisc_init_post = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_usbmisc_init_post = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_usbmisc_init_post = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_usbmisc_init_post to i32), ptr @__kstrtab_imx_usbmisc_init_post, ptr @__kstrtabns_imx_usbmisc_init_post }, section "___ksymtab_gpl+imx_usbmisc_init_post", align 4
@__kstrtab_imx_usbmisc_set_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_usbmisc_set_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_usbmisc_set_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_usbmisc_set_wakeup to i32), ptr @__kstrtab_imx_usbmisc_set_wakeup, ptr @__kstrtabns_imx_usbmisc_set_wakeup }, section "___ksymtab_gpl+imx_usbmisc_set_wakeup", align 4
@__kstrtab_imx_usbmisc_hsic_set_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_usbmisc_hsic_set_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_usbmisc_hsic_set_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_usbmisc_hsic_set_connect to i32), ptr @__kstrtab_imx_usbmisc_hsic_set_connect, ptr @__kstrtabns_imx_usbmisc_hsic_set_connect }, section "___ksymtab_gpl+imx_usbmisc_hsic_set_connect", align 4
@__kstrtab_imx_usbmisc_hsic_set_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_usbmisc_hsic_set_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_usbmisc_hsic_set_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_usbmisc_hsic_set_clk to i32), ptr @__kstrtab_imx_usbmisc_hsic_set_clk, ptr @__kstrtabns_imx_usbmisc_hsic_set_clk }, section "___ksymtab_gpl+imx_usbmisc_hsic_set_clk", align 4
@.str = private unnamed_addr constant [35 x i8] c"Error occurs during detection: %d\0A\00", align 1
@__kstrtab_imx_usbmisc_charger_detection = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_usbmisc_charger_detection = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_usbmisc_charger_detection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_usbmisc_charger_detection to i32), ptr @__kstrtab_imx_usbmisc_charger_detection, ptr @__kstrtabns_imx_usbmisc_charger_detection }, section "___ksymtab_gpl+imx_usbmisc_charger_detection", align 4
@__initcall__kmod_usbmisc_imx__252_1180_usbmisc_imx_driver_init6 = internal global ptr @usbmisc_imx_driver_init, section ".initcall6.init", align 4
@usbmisc_imx_driver = internal global %struct.platform_driver { ptr @usbmisc_imx_probe, ptr @usbmisc_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbmisc_imx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_usbmisc_imx_driver_exit = internal global ptr @usbmisc_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [39 x i8] c"usbmisc_imx.alias=platform:usbmisc-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [50 x i8] c"usbmisc_imx.file=drivers/usb/chipidea/usbmisc_imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [24 x i8] c"usbmisc_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [62 x i8] c"usbmisc_imx.description=driver for imx usb non-core registers\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [61 x i8] c"usbmisc_imx.author=Richard Zhao <richard.zhao@freescale.com>\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"usbmisc_imx\00", align 1
@usbmisc_imx_dt_ids = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx25_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx25_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx27_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx51_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx53_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_usbmisc_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_usbmisc_ops }, %struct.of_device_id zeroinitializer], align 4
@imx25_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx25_init, ptr @usbmisc_imx25_post, ptr null, ptr null, ptr null, ptr null }, align 4
@imx27_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx27_init, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx51_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx53_init, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx53_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx53_init, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx6q_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx6q_init, ptr null, ptr @usbmisc_imx6q_set_wakeup, ptr @usbmisc_imx6_hsic_set_connect, ptr @usbmisc_imx6_hsic_set_clk, ptr null }, align 4
@vf610_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_vf610_init, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx6sx_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx6sx_init, ptr null, ptr @usbmisc_imx6q_set_wakeup, ptr @usbmisc_imx6_hsic_set_connect, ptr @usbmisc_imx6_hsic_set_clk, ptr null }, align 4
@imx7d_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx7d_init, ptr null, ptr @usbmisc_imx7d_set_wakeup, ptr null, ptr null, ptr @imx7d_charger_detection }, align 4
@imx7ulp_usbmisc_ops = internal constant %struct.usbmisc_ops { ptr @usbmisc_imx7ulp_init, ptr null, ptr @usbmisc_imx7d_set_wakeup, ptr @usbmisc_imx6_hsic_set_connect, ptr @usbmisc_imx6_hsic_set_clk, ptr null }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"index is error for usbmisc\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"vbus is error\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"VBUS is coming from a dedicated power supply.\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_usbmisc_imx_driver_exit, ptr @__initcall__kmod_usbmisc_imx__252_1180_usbmisc_imx_driver_init6, ptr @__ksymtab_imx_usbmisc_charger_detection, ptr @__ksymtab_imx_usbmisc_hsic_set_clk, ptr @__ksymtab_imx_usbmisc_hsic_set_connect, ptr @__ksymtab_imx_usbmisc_init, ptr @__ksymtab_imx_usbmisc_init_post, ptr @__ksymtab_imx_usbmisc_set_wakeup, ptr @usbmisc_imx_driver_exit], section "llvm.metadata"
@switch.table.usbmisc_imx27_init = private unnamed_addr constant [3 x i32] [i32 16777216, i32 256, i32 65536], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_usbmisc_init(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.imx_usbmisc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef nonnull %0) #5
  br label %13

13:                                               ; preds = %11, %3, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_usbmisc_init_post(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.imx_usbmisc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usbmisc_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 %10(ptr noundef nonnull %0) #5
  br label %14

14:                                               ; preds = %12, %3, %1
  %15 = phi i32 [ %13, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_usbmisc_set_wakeup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbmisc_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = tail call i32 %11(ptr noundef nonnull %0, i1 noundef zeroext %1) #5
  br label %15

15:                                               ; preds = %13, %4, %2
  %16 = phi i32 [ %14, %13 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_usbmisc_hsic_set_connect(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.imx_usbmisc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usbmisc_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 64
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %10(ptr noundef nonnull %0) #5
  br label %19

19:                                               ; preds = %17, %12, %3, %1
  %20 = phi i32 [ %18, %17 ], [ 0, %1 ], [ 0, %12 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_usbmisc_hsic_set_clk(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbmisc_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 64
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 %11(ptr noundef nonnull %0, i1 noundef zeroext %1) #5
  br label %20

20:                                               ; preds = %18, %13, %4, %2
  %21 = phi i32 [ %19, %18 ], [ 0, %2 ], [ 0, %13 ], [ 0, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_usbmisc_charger_detection(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.imx_usbmisc, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usbmisc_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  br i1 %1, label %16, label %24

16:                                               ; preds = %15
  %17 = tail call i32 %13(ptr noundef nonnull %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %17) #6
  %21 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 15
  store i32 2, ptr %21, align 4
  br label %27

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 15
  store i32 1, ptr %23, align 4
  br label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 15
  store i32 2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 14
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %22, %19, %4, %2
  %28 = phi i32 [ -22, %2 ], [ -524, %4 ], [ %17, %19 ], [ 0, %22 ], [ 0, %24 ]
  ret i32 %28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usbmisc_imx_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usbmisc_imx_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usbmisc_imx_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usbmisc_imx_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.imx_usbmisc, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %15

11:                                               ; preds = %5
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %13 = getelementptr inbounds %struct.imx_usbmisc, ptr %3, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %14, align 8
  br label %15

15:                                               ; preds = %11, %9, %1
  %16 = phi i32 [ %10, %9 ], [ 0, %11 ], [ -12, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @usbmisc_imx_remove(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx25_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = load i32, ptr %5, align 4
  switch i32 %11, label %34 [
    i32 0, label %12
    i32 1, label %23
  ]

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = and i32 %14, -1627392009
  %16 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 6
  %19 = icmp eq i16 %18, 6
  %20 = select i1 %19, i32 16777216, i32 16777224
  %21 = or i32 %20, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #5, !srcloc !11
  br label %34

23:                                               ; preds = %8
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %26 = and i32 %25, -6619381
  %27 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 6
  %30 = icmp eq i16 %29, 6
  %31 = select i1 %30, i32 4259952, i32 4259956
  %32 = or i32 %31, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %33 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #5, !srcloc !11
  br label %34

34:                                               ; preds = %23, %12, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  br label %35

35:                                               ; preds = %34, %1
  %36 = phi i32 [ 0, %34 ], [ -22, %1 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx25_post(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %16 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 16
  %19 = and i32 %15, -8388609
  %20 = zext i16 %18 to i32
  %21 = shl nuw nsw i32 %20, 19
  %22 = or i32 %21, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %22) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  br label %23

23:                                               ; preds = %10, %8, %1
  %24 = phi i32 [ 0, %10 ], [ -22, %1 ], [ 0, %8 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx27_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds [3 x i32], ptr @switch.table.usbmisc_imx27_init, i32 0, i32 %3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.imx_usbmisc, ptr %8, i32 0, i32 1
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  %17 = load ptr, ptr %8, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  %19 = or i32 %18, %10
  %20 = xor i32 %10, -1
  %21 = and i32 %18, %20
  %22 = select i1 %16, i32 %21, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  br label %24

24:                                               ; preds = %5, %1
  %25 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx53_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %110, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %12 = and i32 %11, -4
  %13 = or i32 %12, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !11
  %16 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #5
  %18 = load i32, ptr %5, align 4
  switch i32 %18, label %109 [
    i32 0, label %19
    i32 1, label %29
    i32 2, label %39
    i32 3, label %74
  ]

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %109, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %28 = or i32 %27, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #5, !srcloc !11
  br label %109

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %109, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %38 = or i32 %37, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %38) #5, !srcloc !11
  br label %109

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %41 = load i16, ptr %40, align 4
  %42 = and i16 %41, 32
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %48 = and i32 %47, -67108933
  %49 = or i32 %48, 67108868
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %49) #5, !srcloc !11
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %53 = or i32 %52, 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %53) #5, !srcloc !11
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.imx_usbmisc, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, @imx53_usbmisc_ops
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i8, ptr %61, i32 36
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %64 = or i32 %63, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %64) #5, !srcloc !11
  br label %65

65:                                               ; preds = %60, %44, %39
  %66 = load i16, ptr %40, align 4
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr i8, ptr %70, i32 20
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %73 = or i32 %72, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %73) #5, !srcloc !11
  br label %109

74:                                               ; preds = %8
  %75 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %76 = load i16, ptr %75, align 4
  %77 = and i16 %76, 32
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 16
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %83 = and i32 %82, -134218817
  %84 = or i32 %83, 134217792
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %84) #5, !srcloc !11
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr i8, ptr %85, i32 24
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %88 = or i32 %87, 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %88) #5, !srcloc !11
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 8
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.imx_usbmisc, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, @imx53_usbmisc_ops
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr i8, ptr %96, i32 36
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %99 = or i32 %98, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %99) #5, !srcloc !11
  br label %100

100:                                              ; preds = %95, %79, %74
  %101 = load i16, ptr %75, align 4
  %102 = and i16 %101, 1
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr i8, ptr %105, i32 24
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %108 = or i32 %107, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %108) #5, !srcloc !11
  br label %109

109:                                              ; preds = %104, %100, %69, %65, %34, %29, %24, %19, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #5
  br label %110

110:                                              ; preds = %109, %1
  %111 = phi i32 [ 0, %109 ], [ -22, %1 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx6q_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %100, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %5, align 4
  %13 = shl i32 %12, 2
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !39
  %16 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = or i32 %15, 128
  br label %33

22:                                               ; preds = %8
  %23 = and i32 %15, -129
  %24 = and i16 %17, 6
  %25 = icmp eq i16 %24, 6
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = or i32 %23, 256
  br label %33

28:                                               ; preds = %22
  %29 = and i16 %17, 4
  %30 = icmp eq i16 %29, 0
  %31 = and i32 %15, -385
  %32 = select i1 %30, i32 %23, i32 %31
  br label %33

33:                                               ; preds = %28, %26, %20
  %34 = phi i32 [ %21, %20 ], [ %27, %26 ], [ %32, %28 ]
  %35 = shl i16 %17, 6
  %36 = and i16 %35, 512
  %37 = zext i16 %36 to i32
  %38 = or i32 %34, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %4, align 4
  %40 = load i32, ptr %5, align 4
  %41 = shl i32 %40, 2
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %38) #5, !srcloc !11
  %43 = load ptr, ptr %4, align 4
  %44 = load i32, ptr %5, align 4
  %45 = shl i32 %44, 2
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %48 = or i32 %47, 2
  %49 = load ptr, ptr %4, align 4
  %50 = load i32, ptr %5, align 4
  %51 = shl i32 %50, 2
  %52 = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #5, !srcloc !11
  %53 = load i16, ptr %16, align 4
  %54 = and i16 %53, 64
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %33
  %57 = load ptr, ptr %4, align 4
  %58 = load i32, ptr %5, align 4
  %59 = shl i32 %58, 2
  %60 = getelementptr i8, ptr %57, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !43
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %62 = or i32 %61, 8192
  %63 = load ptr, ptr %4, align 4
  %64 = load i32, ptr %5, align 4
  %65 = shl i32 %64, 2
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #5, !srcloc !11
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i8, ptr %67, i32 16
  %69 = load i32, ptr %5, align 4
  %70 = shl i32 %69, 2
  %71 = add i32 %70, -8
  %72 = getelementptr i8, ptr %68, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  %74 = or i32 %73, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i8, ptr %75, i32 16
  %77 = load i32, ptr %5, align 4
  %78 = shl i32 %77, 2
  %79 = add i32 %78, -8
  %80 = getelementptr i8, ptr %76, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %74) #5, !srcloc !11
  br label %81

81:                                               ; preds = %56, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  %82 = load i32, ptr %5, align 4
  %83 = icmp sgt i32 %82, 3
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.imx_usbmisc, ptr %87, i32 0, i32 1
  %89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %88) #5
  %90 = load ptr, ptr %87, align 4
  %91 = load i32, ptr %5, align 4
  %92 = shl i32 %91, 2
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %95 = and i32 %94, -197633
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %96 = load ptr, ptr %87, align 4
  %97 = load i32, ptr %5, align 4
  %98 = shl i32 %97, 2
  %99 = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %95) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %88, i32 noundef %89) #5
  br label %100

100:                                              ; preds = %84, %81, %1
  %101 = phi i32 [ -22, %1 ], [ 0, %81 ], [ 0, %84 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx6q_set_wakeup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.imx_usbmisc, ptr %5, i32 0, i32 1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #5
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %6, align 4
  %14 = shl i32 %13, 2
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %17 = and i32 %16, -197633
  br i1 %1, label %18, label %41

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 128
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 132096, %27 ], [ 197632, %23 ]
  %30 = and i16 %20, 256
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = and i32 %29, 66560
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ %29, %32 ]
  %40 = or i32 %39, %17
  br label %41

41:                                               ; preds = %38, %9
  %42 = phi i32 [ %40, %38 ], [ %17, %9 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %43 = load ptr, ptr %5, align 4
  %44 = load i32, ptr %6, align 4
  %45 = shl i32 %44, 2
  %46 = getelementptr i8, ptr %43, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #5
  br label %47

47:                                               ; preds = %41, %2
  %48 = phi i32 [ 0, %41 ], [ -22, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx6_hsic_set_connect(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %12 [
    i32 2, label %9
    i32 3, label %9
    i32 0, label %14
  ]

9:                                                ; preds = %1, %1
  %10 = shl nuw nsw i32 %8, 2
  %11 = add nsw i32 %10, -8
  br label %14

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #6
  br label %27

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %8, %1 ], [ %11, %9 ]
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = getelementptr i8, ptr %17, i32 %15
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !49
  %20 = and i32 %19, 2097152
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %23 = or i32 %19, 2097152
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = getelementptr i8, ptr %25, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #5, !srcloc !11
  br label %27

27:                                               ; preds = %22, %14, %12
  %28 = phi i32 [ -22, %12 ], [ 0, %22 ], [ 0, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx6_hsic_set_clk(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_usbmisc, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %13 [
    i32 2, label %10
    i32 3, label %10
    i32 0, label %15
  ]

10:                                               ; preds = %2, %2
  %11 = shl nuw nsw i32 %9, 2
  %12 = add nsw i32 %11, -8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2) #6
  br label %27

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %9, %2 ], [ %12, %10 ]
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !51
  %21 = or i32 %20, 6144
  %22 = and i32 %21, -2049
  %23 = select i1 %1, i32 %21, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = getelementptr i8, ptr %25, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #5, !srcloc !11
  br label %27

27:                                               ; preds = %15, %13
  %28 = phi i32 [ -22, %13 ], [ 0, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #5
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_vf610_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !53
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %16 = or i32 %15, 128
  %17 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #5, !srcloc !11
  br label %18

18:                                               ; preds = %13, %8, %1
  %19 = phi i32 [ -22, %1 ], [ 0, %13 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx6sx_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @usbmisc_imx6q_init(ptr noundef %0)
  %6 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = shl nuw nsw i32 %7, 2
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !55
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %17 = or i32 %16, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %17) #5, !srcloc !11
  %18 = load ptr, ptr %4, align 4
  %19 = load i32, ptr %6, align 4
  %20 = shl i32 %19, 2
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %23 = and i32 %22, -536870913
  %24 = load ptr, ptr %4, align 4
  %25 = load i32, ptr %6, align 4
  %26 = shl i32 %25, 2
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #5
  br label %28

28:                                               ; preds = %9, %1
  %29 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 64
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !59
  %37 = or i32 %36, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #5, !srcloc !11
  br label %40

40:                                               ; preds = %33, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx7d_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %85, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !61
  %13 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = or i32 %12, 128
  br label %30

19:                                               ; preds = %8
  %20 = and i32 %12, -129
  %21 = and i16 %14, 6
  %22 = icmp eq i16 %21, 6
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = or i32 %20, 256
  br label %30

25:                                               ; preds = %19
  %26 = and i16 %14, 4
  %27 = icmp eq i16 %26, 0
  %28 = and i32 %12, -385
  %29 = select i1 %27, i32 %20, i32 %28
  br label %30

30:                                               ; preds = %25, %23, %17
  %31 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %29, %25 ]
  %32 = shl i16 %14, 6
  %33 = and i16 %32, 512
  %34 = zext i16 %33 to i32
  %35 = or i32 %31, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #5, !srcloc !11
  %37 = load ptr, ptr %4, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !63
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %39 = or i32 %38, 2
  %40 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #5, !srcloc !11
  %41 = load i16, ptr %13, align 4
  %42 = and i16 %41, 64
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %30
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !65
  %48 = and i32 %47, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %49 = or i32 %48, 6
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !11
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 48
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !67
  %55 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = icmp slt i32 %56, 4
  %59 = and i1 %57, %58
  %60 = and i32 %54, -805306369
  %61 = shl i32 %56, 28
  %62 = or i32 %61, %60
  %63 = select i1 %59, i32 %62, i32 %54
  %64 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = icmp slt i32 %65, 16
  %68 = and i1 %66, %67
  %69 = and i32 %63, -15728641
  %70 = shl i32 %65, 20
  %71 = or i32 %69, %70
  %72 = select i1 %68, i32 %71, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i8, ptr %73, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #5, !srcloc !11
  br label %75

75:                                               ; preds = %44, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 8
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.imx_usbmisc, ptr %78, i32 0, i32 1
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #5
  %81 = load ptr, ptr %78, align 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !69
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %83 = and i32 %82, -197633
  %84 = load ptr, ptr %78, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %83) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #5
  br label %85

85:                                               ; preds = %75, %1
  %86 = phi i32 [ 0, %75 ], [ -22, %1 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx7d_set_wakeup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_usbmisc, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !69
  br i1 %1, label %10, label %35

10:                                               ; preds = %2
  %11 = and i32 %9, -197633
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %10
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ 132096, %20 ], [ 197632, %16 ]
  %23 = and i16 %13, 256
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = and i32 %22, 66560
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ %22, %25 ]
  %33 = or i32 %32, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %34 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #5, !srcloc !11
  br label %38

35:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %36 = and i32 %9, -197633
  %37 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #5, !srcloc !11
  br label %38

38:                                               ; preds = %35, %31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx7d_charger_detection(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !72
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3) #6
  br label %145

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #5
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !73
  %20 = and i32 %19, -193
  %21 = or i32 %20, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #5, !srcloc !11
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !75
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %27 = or i32 %26, 256
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #5
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.imx_usbmisc, ptr %32, i32 0, i32 1
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #5
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr i8, ptr %35, i32 52
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !77
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %38 = or i32 %37, 8
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #5
  br label %41

41:                                               ; preds = %53, %14
  %42 = phi i32 [ 0, %14 ], [ %56, %53 ]
  %43 = phi i32 [ 0, %14 ], [ %55, %53 ]
  %44 = load ptr, ptr %32, align 4
  %45 = getelementptr i8, ptr %44, i32 60
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !79
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = icmp sgt i32 %43, 5
  br i1 %50, label %58, label %51

51:                                               ; preds = %49
  %52 = add nsw i32 %43, 1
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi i32 [ 10000, %51 ], [ 6000, %41 ]
  %55 = phi i32 [ %52, %51 ], [ 0, %41 ]
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef %54, i32 noundef 2) #5
  %56 = add nuw nsw i32 %42, 1
  %57 = icmp eq i32 %56, 100
  br i1 %57, label %58, label %41

58:                                               ; preds = %53, %49
  %59 = phi i32 [ %42, %49 ], [ 100, %53 ]
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #5
  %61 = load ptr, ptr %32, align 4
  %62 = getelementptr i8, ptr %61, i32 52
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !80
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %64 = and i32 %63, -9
  %65 = load ptr, ptr %32, align 4
  %66 = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %60) #5
  %67 = icmp eq i32 %59, 100
  %68 = load ptr, ptr %0, align 4
  br i1 %67, label %69, label %70

69:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.4) #6
  br label %145

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 8
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr inbounds %struct.imx_usbmisc, ptr %72, i32 0, i32 1
  %75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %74) #5
  %76 = load ptr, ptr %72, align 4
  %77 = getelementptr i8, ptr %76, i32 52
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !82
  %79 = and i32 %78, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %80 = or i32 %79, 6
  %81 = load ptr, ptr %72, align 4
  %82 = getelementptr i8, ptr %81, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %74, i32 noundef %75) #5
  tail call void @msleep(i32 noundef 40) #5
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr i8, ptr %83, i32 60
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !84
  %86 = and i32 %85, 536870912
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.usb_phy, ptr %73, i32 0, i32 14
  store i32 1, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %70
  %91 = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 14
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %121, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %0, align 4
  %96 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr inbounds %struct.imx_usbmisc, ptr %97, i32 0, i32 1
  %100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %99) #5
  %101 = load ptr, ptr %97, align 4
  %102 = getelementptr i8, ptr %101, i32 52
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !85
  %104 = and i32 %103, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %105 = load ptr, ptr %97, align 4
  %106 = getelementptr i8, ptr %105, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %99, i32 noundef %100) #5
  tail call void @msleep(i32 noundef 20) #5
  %107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %99) #5
  %108 = load ptr, ptr %97, align 4
  %109 = getelementptr i8, ptr %108, i32 52
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !87
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %111 = or i32 %110, 7
  %112 = load ptr, ptr %97, align 4
  %113 = getelementptr i8, ptr %112, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %99, i32 noundef %107) #5
  tail call void @msleep(i32 noundef 40) #5
  %114 = load ptr, ptr %97, align 4
  %115 = getelementptr i8, ptr %114, i32 60
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !89
  %117 = and i32 %116, 536870912
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 3, i32 2
  %120 = getelementptr inbounds %struct.usb_phy, ptr %98, i32 0, i32 14
  store i32 %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %94, %90
  %122 = load ptr, ptr %0, align 4
  %123 = getelementptr inbounds %struct.device, ptr %122, i32 0, i32 8
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.imx_usbmisc, ptr %124, i32 0, i32 1
  %126 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %125) #5
  %127 = load ptr, ptr %124, align 4
  %128 = getelementptr i8, ptr %127, i32 52
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !90
  %130 = and i32 %129, -16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %131 = load ptr, ptr %124, align 4
  %132 = getelementptr i8, ptr %131, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #5, !srcloc !11
  %133 = load ptr, ptr %124, align 4
  %134 = getelementptr i8, ptr %133, i32 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !92
  %136 = and i32 %135, -193
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %137 = load ptr, ptr %124, align 4
  %138 = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #5, !srcloc !11
  %139 = load ptr, ptr %124, align 4
  %140 = getelementptr i8, ptr %139, i32 4
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !94
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %142 = and i32 %141, -257
  %143 = load ptr, ptr %124, align 4
  %144 = getelementptr i8, ptr %143, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %125, i32 noundef %126) #5
  br label %145

145:                                              ; preds = %121, %69, %12
  %146 = phi i32 [ 0, %121 ], [ -22, %12 ], [ -6, %69 ]
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbmisc_imx7ulp_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %78, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imx_usbmisc, ptr %4, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !96
  %13 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = or i32 %12, 128
  br label %30

19:                                               ; preds = %8
  %20 = and i32 %12, -129
  %21 = and i16 %14, 6
  %22 = icmp eq i16 %21, 6
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = or i32 %20, 256
  br label %30

25:                                               ; preds = %19
  %26 = and i16 %14, 4
  %27 = icmp eq i16 %26, 0
  %28 = and i32 %12, -385
  %29 = select i1 %27, i32 %20, i32 %28
  br label %30

30:                                               ; preds = %25, %23, %17
  %31 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %29, %25 ]
  %32 = shl i16 %14, 6
  %33 = and i16 %32, 512
  %34 = zext i16 %33 to i32
  %35 = or i32 %31, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #5, !srcloc !11
  %37 = load ptr, ptr %4, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !98
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %39 = or i32 %38, 2
  %40 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #5, !srcloc !11
  %41 = load i16, ptr %13, align 4
  %42 = and i16 %41, 64
  %43 = icmp eq i16 %42, 0
  %44 = load ptr, ptr %4, align 4
  br i1 %43, label %61, label %45

45:                                               ; preds = %30
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !100
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %47 = or i32 %46, 8192
  %48 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #5, !srcloc !11
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !102
  %52 = or i32 %51, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #5, !srcloc !11
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !104
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %58 = or i32 %57, 4
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !11
  br label %68

61:                                               ; preds = %30
  %62 = getelementptr i8, ptr %44, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !106
  %64 = and i32 %63, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %65 = or i32 %64, 2
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #5, !srcloc !11
  br label %68

68:                                               ; preds = %61, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.imx_usbmisc, ptr %71, i32 0, i32 1
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #5
  %74 = load ptr, ptr %71, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !69
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %76 = and i32 %75, -197633
  %77 = load ptr, ptr %71, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #5
  br label %78

78:                                               ; preds = %68, %1
  %79 = phi i32 [ 0, %68 ], [ -22, %1 ]
  ret i32 %79
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3812280}
!9 = !{i64 2153785055}
!10 = !{i64 2153785617}
!11 = !{i64 3811862}
!12 = !{i64 2153786064}
!13 = !{i64 2153786953}
!14 = !{i64 2153787738}
!15 = !{i64 2153788077}
!16 = !{i64 2153789630}
!17 = !{i64 2153790118}
!18 = !{i64 2153790320}
!19 = !{i64 2153791109}
!20 = !{i64 2153791362}
!21 = !{i64 2153791774}
!22 = !{i64 2153792027}
!23 = !{i64 2153792439}
!24 = !{i64 2153792788}
!25 = !{i64 2153793200}
!26 = !{i64 2153793535}
!27 = !{i64 2153793947}
!28 = !{i64 2153794202}
!29 = !{i64 2153794614}
!30 = !{i64 2153794869}
!31 = !{i64 2153795281}
!32 = !{i64 2153795630}
!33 = !{i64 2153796042}
!34 = !{i64 2153796377}
!35 = !{i64 2153796789}
!36 = !{i64 2153797044}
!37 = !{i64 2153797456}
!38 = !{i64 2153797711}
!39 = !{i64 2153801447}
!40 = !{i64 2153802056}
!41 = !{i64 2153802575}
!42 = !{i64 2153802886}
!43 = !{i64 2153803465}
!44 = !{i64 2153803779}
!45 = !{i64 2153804404}
!46 = !{i64 2153804789}
!47 = !{i64 2153799055}
!48 = !{i64 2153800565}
!49 = !{i64 2153806253}
!50 = !{i64 2153806654}
!51 = !{i64 2153807592}
!52 = !{i64 2153808130}
!53 = !{i64 2153811288}
!54 = !{i64 2153811581}
!55 = !{i64 2153808940}
!56 = !{i64 2153809166}
!57 = !{i64 2153809681}
!58 = !{i64 2153809997}
!59 = !{i64 2153810554}
!60 = !{i64 2153810831}
!61 = !{i64 2153815277}
!62 = !{i64 2153815868}
!63 = !{i64 2153816315}
!64 = !{i64 2153816608}
!65 = !{i64 2153817137}
!66 = !{i64 2153817498}
!67 = !{i64 2153818061}
!68 = !{i64 2153818310}
!69 = !{i64 2153812448}
!70 = !{i64 2153814269}
!71 = !{i64 2153812951}
!72 = !{i64 2153832253}
!73 = !{i64 2153833534}
!74 = !{i64 2153833935}
!75 = !{i64 2153834410}
!76 = !{i64 2153834713}
!77 = !{i64 2153826551}
!78 = !{i64 2153826856}
!79 = !{i64 2153827396}
!80 = !{i64 2153828186}
!81 = !{i64 2153828493}
!82 = !{i64 2153830083}
!83 = !{i64 2153830582}
!84 = !{i64 2153831182}
!85 = !{i64 2153819150}
!86 = !{i64 2153819425}
!87 = !{i64 2153820265}
!88 = !{i64 2153820794}
!89 = !{i64 2153821454}
!90 = !{i64 2153823512}
!91 = !{i64 2153824033}
!92 = !{i64 2153824509}
!93 = !{i64 2153824868}
!94 = !{i64 2153825343}
!95 = !{i64 2153825648}
!96 = !{i64 2153835589}
!97 = !{i64 2153836180}
!98 = !{i64 2153836627}
!99 = !{i64 2153840981}
!100 = !{i64 2153841488}
!101 = !{i64 2153841784}
!102 = !{i64 2153842319}
!103 = !{i64 2153842680}
!104 = !{i64 2153843156}
!105 = !{i64 2153843459}
!106 = !{i64 2153843994}
!107 = !{i64 2153844243}
