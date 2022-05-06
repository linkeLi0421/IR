; ModuleID = '/llk/IR/drivers/usb/chipidea/ci_hdrc_imx.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ci_hdrc_imx_platform_flag = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.ci_hdrc_imx_data = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr, %struct.pm_qos_request, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.imx_usbmisc_data = type { ptr, i32, i16, ptr, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.72, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.72 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }

@__initcall__kmod_ci_hdrc_imx__252_686_ci_hdrc_imx_driver_init6 = internal global ptr @ci_hdrc_imx_driver_init, section ".initcall6.init", align 4
@ci_hdrc_imx_driver = internal global %struct.platform_driver { ptr @ci_hdrc_imx_probe, ptr @ci_hdrc_imx_remove, ptr @ci_hdrc_imx_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ci_hdrc_imx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_hdrc_imx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ci_hdrc_imx_driver_exit = internal global ptr @ci_hdrc_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [35 x i8] c"ci_hdrc_imx.alias=platform:imx-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [50 x i8] c"ci_hdrc_imx.file=drivers/usb/chipidea/ci_hdrc_imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [24 x i8] c"ci_hdrc_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [49 x i8] c"ci_hdrc_imx.description=CI HDRC i.MX USB binding\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [47 x i8] c"ci_hdrc_imx.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [61 x i8] c"ci_hdrc_imx.author=Richard Zhao <richard.zhao@freescale.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"imx_usb\00", align 1
@ci_hdrc_imx_dt_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx23_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx28_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx27_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_usb_data }, %struct.of_device_id zeroinitializer], align 4
@ci_hdrc_imx_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ci_hdrc_imx_suspend, ptr @ci_hdrc_imx_resume, ptr @ci_hdrc_imx_suspend, ptr @ci_hdrc_imx_resume, ptr @ci_hdrc_imx_suspend, ptr @ci_hdrc_imx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_hdrc_imx_runtime_suspend, ptr @ci_hdrc_imx_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"pinctrl get failed, err=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Get HSIC pad regulator error: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to enable HSIC pad regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"pinctrl_hsic_idle lookup failed, err=%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"hsic_idle select failed, err=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"pinctrl_hsic_active lookup failed, err=%ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"fsl,usbphy\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"fsl,imx53-usb\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"fsl,imx51-usb\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"usbmisc init failed, ret=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"ci_hdrc_add_device failed, err=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"usbmisc post failed, ret=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"hsic_active select failed, err=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"hsic_set_connect failed, err=%d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"fsl,usbmisc\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"#index-cells\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Failed to parse property fsl,usbmisc, errno %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"disable-over-current\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"over-current-active-high\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"over-current-active-low\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"No over current polarity defined\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"power-active-high\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"external-vbus-divider\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"samsung,picophy-pre-emp-curr-control\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"samsung,picophy-dc-vol-level-adjust\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Failed to get clks, err=%ld,%ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Failed to get ahb clock, err=%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"Failed to get per clock, err=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"Failed to prepare/enable ipg clk, err=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Failed to prepare/enable ahb clk, err=%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"Failed to prepare/enable per clk, err=%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Failed to prepare/enable clk, err=%d\0A\00", align 1
@imx23_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 138 }, align 4
@imx28_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 170 }, align 4
@imx27_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 10 }, align 4
@imx6q_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 142 }, align 4
@imx6sl_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 140 }, align 4
@imx6sx_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 140 }, align 4
@imx6ul_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 134 }, align 4
@imx7d_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 4 }, align 4
@imx7ulp_usb_data = internal constant %struct.ci_hdrc_imx_platform_flag { i32 32772 }, align 4
@.str.41 = private unnamed_addr constant [35 x i8] c"usbmisc set_wakeup failed, ret=%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"usbmisc hsic_set_clk failed, ret=%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"drivers/usb/chipidea/ci_hdrc_imx.c\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_ci_hdrc_imx_driver_exit, ptr @__initcall__kmod_ci_hdrc_imx__252_686_ci_hdrc_imx_driver_init6, ptr @ci_hdrc_imx_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ci_hdrc_imx_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ci_hdrc_imx_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ci_hdrc_imx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.ci_hdrc_platform_data, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %6 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %6, i8 0, i64 132, i1 false)
  %7 = load ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  store ptr %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 1
  store i32 256, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 8
  store ptr @ci_hdrc_imx_notify_event, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 76, i32 noundef 3520) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %346, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 15
  store ptr %17, ptr %21, align 4
  %22 = load i32, ptr %17, align 4
  %23 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %24, align 8
  %25 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %26 = tail call ptr @of_get_property(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef null) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %29 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 3
  store ptr null, ptr %29, align 4
  br label %106

30:                                               ; preds = %20
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 28, i32 noundef 3520) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33

33:                                               ; preds = %30
  %34 = call i32 @__of_parse_phandle_with_args(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %2) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %34) #7
  %37 = inttoptr i32 %34 to ptr
  br label %99

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %2, align 4
  %43 = call ptr @of_find_device_by_node(ptr noundef %42) #6
  %44 = load ptr, ptr %2, align 4
  call void @of_node_put(ptr noundef %44) #6
  %45 = icmp eq ptr %43, null
  br i1 %45, label %96, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 8
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  br i1 %49, label %51, label %52

51:                                               ; preds = %46
  call void @put_device(ptr noundef %50) #6
  br label %96

52:                                               ; preds = %46
  store ptr %50, ptr %31, align 4
  %53 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.23, ptr noundef null) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 2
  %57 = load i16, ptr %56, align 4
  %58 = or i16 %57, 1
  store i16 %58, ptr %56, align 4
  br label %75

59:                                               ; preds = %52
  %60 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.24, ptr noundef null) #6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 2
  %64 = load i16, ptr %63, align 4
  %65 = and i16 %64, -7
  %66 = or i16 %65, 4
  store i16 %66, ptr %63, align 4
  br label %75

67:                                               ; preds = %59
  %68 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 2
  %72 = load i16, ptr %71, align 4
  %73 = or i16 %72, 6
  store i16 %73, ptr %71, align 4
  br label %75

74:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.26) #7
  br label %75

75:                                               ; preds = %74, %70, %62, %55
  %76 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.27, ptr noundef null) #6
  %77 = icmp eq ptr %76, null
  %78 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 2
  %79 = load i16, ptr %78, align 4
  %80 = select i1 %77, i16 0, i16 8
  %81 = and i16 %79, -25
  %82 = or i16 %81, %80
  %83 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef null) #6
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, i16 0, i16 16
  %86 = or i16 %82, %85
  store i16 %86, ptr %78, align 4
  %87 = call i32 @of_usb_get_phy_mode(ptr noundef %25) #6
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = or i16 %86, 32
  store i16 %90, ptr %78, align 4
  br label %91

91:                                               ; preds = %89, %75
  %92 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 5
  %93 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef %92, i32 noundef 1, i32 noundef 0) #6
  %94 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %31, i32 0, i32 6
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.30, ptr noundef %94, i32 noundef 1, i32 noundef 0) #6
  br label %99

96:                                               ; preds = %51, %38, %30
  %97 = phi ptr [ inttoptr (i32 -517 to ptr), %38 ], [ inttoptr (i32 -12 to ptr), %30 ], [ inttoptr (i32 -517 to ptr), %51 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %98 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 3
  store ptr %97, ptr %98, align 4
  br label %103

99:                                               ; preds = %91, %36
  %100 = phi ptr [ %37, %36 ], [ %31, %91 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %101 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 3
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %96
  %104 = phi ptr [ %97, %96 ], [ %100, %99 ]
  %105 = ptrtoint ptr %104 to i32
  br label %346

106:                                              ; preds = %99, %28
  %107 = phi ptr [ %29, %28 ], [ %101, %99 ]
  %108 = load ptr, ptr %15, align 8
  %109 = call i32 @of_usb_get_phy_mode(ptr noundef %108) #6
  %110 = icmp eq i32 %109, 5
  br i1 %110, label %111, label %154

111:                                              ; preds = %106
  %112 = load ptr, ptr %107, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %154, label %114

114:                                              ; preds = %111
  %115 = or i32 %22, 16384
  store i32 %115, ptr %23, align 4
  %116 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %112, i32 0, i32 2
  %117 = load i16, ptr %116, align 4
  %118 = or i16 %117, 64
  store i16 %118, ptr %116, align 4
  %119 = call ptr @devm_pinctrl_get(ptr noundef %4) #6
  %120 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 7
  store ptr %119, ptr %120, align 4
  %121 = ptrtoint ptr %119 to i32
  %122 = icmp eq ptr %119, inttoptr (i32 -19 to ptr)
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store ptr null, ptr %120, align 4
  br label %133

124:                                              ; preds = %114
  %125 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %126, label %133

126:                                              ; preds = %124
  %127 = icmp eq ptr %119, inttoptr (i32 -517 to ptr)
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %121) #7
  %129 = load ptr, ptr %120, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi ptr [ %129, %128 ], [ inttoptr (i32 -517 to ptr), %126 ]
  %132 = ptrtoint ptr %131 to i32
  br label %346

133:                                              ; preds = %124, %123
  %134 = call ptr @devm_regulator_get_optional(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  %135 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 9
  store ptr %134, ptr %135, align 4
  %136 = ptrtoint ptr %134 to i32
  %137 = icmp eq ptr %134, inttoptr (i32 -19 to ptr)
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store ptr null, ptr %135, align 4
  br label %154

139:                                              ; preds = %133
  %140 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %141, label %148

141:                                              ; preds = %139
  %142 = icmp eq ptr %134, inttoptr (i32 -517 to ptr)
  br i1 %142, label %145, label %143

143:                                              ; preds = %141
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %136) #7
  %144 = load ptr, ptr %135, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi ptr [ %144, %143 ], [ inttoptr (i32 -517 to ptr), %141 ]
  %147 = ptrtoint ptr %146 to i32
  br label %346

148:                                              ; preds = %139
  %149 = icmp eq ptr %134, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %148
  %151 = call i32 @regulator_enable(ptr noundef nonnull %134) #6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #7
  br label %346

154:                                              ; preds = %150, %148, %138, %111, %106
  %155 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 7
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %177, label %158

158:                                              ; preds = %154
  %159 = call ptr @pinctrl_lookup_state(ptr noundef nonnull %156, ptr noundef nonnull @.str.5) #6
  %160 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = ptrtoint ptr %159 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %162) #7
  br label %346

163:                                              ; preds = %158
  %164 = load ptr, ptr %155, align 4
  %165 = call i32 @pinctrl_select_state(ptr noundef %164, ptr noundef %159) #6
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %165) #7
  br label %346

168:                                              ; preds = %163
  %169 = load ptr, ptr %155, align 4
  %170 = call ptr @pinctrl_lookup_state(ptr noundef %169, ptr noundef nonnull @.str.8) #6
  %171 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 8
  store ptr %170, ptr %171, align 4
  %172 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = ptrtoint ptr %170 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %174) #7
  %175 = load ptr, ptr %171, align 4
  %176 = ptrtoint ptr %175 to i32
  br label %346

177:                                              ; preds = %168, %154
  %178 = load i32, ptr %23, align 4
  %179 = and i32 %178, 32768
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 14
  call void @cpu_latency_qos_add_request(ptr noundef %182, i32 noundef 0) #6
  br label %183

183:                                              ; preds = %181, %177
  %184 = load ptr, ptr %24, align 8
  %185 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.31) #6
  %186 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %184, i32 0, i32 11
  store ptr %185, ptr %186, align 4
  %187 = icmp ugt ptr %185, inttoptr (i32 -4096 to ptr)
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #6
  %190 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %184, i32 0, i32 2
  store ptr %189, ptr %190, align 4
  %191 = icmp ugt ptr %189, inttoptr (i32 -4096 to ptr)
  br i1 %191, label %192, label %210

192:                                              ; preds = %188
  %193 = ptrtoint ptr %189 to i32
  %194 = load ptr, ptr %186, align 4
  %195 = ptrtoint ptr %194 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef %193, i32 noundef %195) #7
  br label %331

196:                                              ; preds = %183
  %197 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.33) #6
  %198 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %184, i32 0, i32 12
  store ptr %197, ptr %198, align 4
  %199 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = ptrtoint ptr %197 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %201) #7
  br label %331

202:                                              ; preds = %196
  %203 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.35) #6
  %204 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %184, i32 0, i32 13
  store ptr %203, ptr %204, align 4
  %205 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = ptrtoint ptr %203 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.36, i32 noundef %207) #7
  br label %331

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %184, i32 0, i32 10
  store i8 1, ptr %209, align 4
  br label %210

210:                                              ; preds = %208, %188
  %211 = call fastcc i32 @imx_prepare_enable_clks(ptr noundef %4)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %331

213:                                              ; preds = %210
  %214 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.10, i8 noundef zeroext 0) #6
  store ptr %214, ptr %18, align 4
  %215 = icmp ugt ptr %214, inttoptr (i32 -4096 to ptr)
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = ptrtoint ptr %214 to i32
  %218 = icmp eq ptr %214, inttoptr (i32 -19 to ptr)
  br i1 %218, label %219, label %329

219:                                              ; preds = %216
  %220 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.11, i8 noundef zeroext 0) #6
  store ptr %220, ptr %18, align 4
  %221 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = ptrtoint ptr %220 to i32
  %224 = icmp eq ptr %220, inttoptr (i32 -19 to ptr)
  br i1 %224, label %225, label %329

225:                                              ; preds = %222
  store ptr null, ptr %18, align 4
  br label %226

226:                                              ; preds = %225, %219, %213
  %227 = phi ptr [ %220, %219 ], [ null, %225 ], [ %214, %213 ]
  %228 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 4
  store ptr %227, ptr %228, align 4
  %229 = load ptr, ptr %107, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %229, i32 0, i32 3
  store ptr %227, ptr %232, align 4
  br label %233

233:                                              ; preds = %231, %226
  %234 = call i32 @of_device_is_compatible(ptr noundef %16, ptr noundef nonnull @.str.12) #6
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = call i32 @of_device_is_compatible(ptr noundef %16, ptr noundef nonnull @.str.13) #6
  %238 = icmp ne i32 %237, 0
  %239 = load ptr, ptr %228, align 4
  %240 = icmp ne ptr %239, null
  %241 = select i1 %238, i1 %240, i1 false
  br i1 %241, label %245, label %258

242:                                              ; preds = %233
  %243 = load ptr, ptr %228, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %258, label %245

245:                                              ; preds = %242, %236
  %246 = phi ptr [ %239, %236 ], [ %243, %242 ]
  %247 = call i32 @of_usb_get_phy_mode(ptr noundef %16) #6
  %248 = icmp eq i32 %247, 3
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load i32, ptr %23, align 4
  %251 = or i32 %250, 4096
  store i32 %251, ptr %23, align 4
  %252 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 5
  store i8 1, ptr %252, align 1
  %253 = getelementptr inbounds %struct.usb_phy, ptr %246, i32 0, i32 22
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %249
  %257 = call i32 %254(ptr noundef nonnull %246) #6
  br label %258

258:                                              ; preds = %256, %249, %245, %242, %236
  %259 = load i32, ptr %23, align 4
  %260 = and i32 %259, 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 4
  store i8 1, ptr %263, align 4
  br label %264

264:                                              ; preds = %262, %258
  %265 = load ptr, ptr %107, align 4
  %266 = call i32 @imx_usbmisc_init(ptr noundef %265) #6
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %266) #7
  br label %329

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %271 = load ptr, ptr %270, align 8
  %272 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %273 = load i32, ptr %272, align 4
  %274 = call ptr @ci_hdrc_add_device(ptr noundef %4, ptr noundef %271, i32 noundef %273, ptr noundef nonnull %3) #6
  %275 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 1
  store ptr %274, ptr %275, align 4
  %276 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  br i1 %276, label %277, label %281

277:                                              ; preds = %269
  %278 = icmp eq ptr %274, inttoptr (i32 -517 to ptr)
  br i1 %278, label %329, label %279

279:                                              ; preds = %277
  %280 = ptrtoint ptr %274 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %280) #7
  br label %329

281:                                              ; preds = %269
  %282 = load ptr, ptr %107, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %316, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 3
  %286 = load ptr, ptr %285, align 4
  %287 = icmp ugt ptr %286, inttoptr (i32 -4096 to ptr)
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %290 = icmp eq ptr %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr %107, align 4
  br label %293

293:                                              ; preds = %291, %284
  %294 = phi ptr [ %292, %291 ], [ %282, %284 ]
  %295 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %294, i32 0, i32 2
  %296 = load i16, ptr %295, align 4
  %297 = or i16 %296, 128
  store i16 %297, ptr %295, align 4
  br label %298

298:                                              ; preds = %293, %288
  %299 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 3
  %300 = load ptr, ptr %299, align 4
  %301 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  br i1 %301, label %302, label %305

302:                                              ; preds = %298
  %303 = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %304 = icmp eq ptr %303, null
  br i1 %304, label %310, label %305

305:                                              ; preds = %302, %298
  %306 = load ptr, ptr %107, align 4
  %307 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %306, i32 0, i32 2
  %308 = load i16, ptr %307, align 4
  %309 = or i16 %308, 256
  store i16 %309, ptr %307, align 4
  br label %310

310:                                              ; preds = %305, %302
  %311 = load ptr, ptr %275, align 4
  %312 = call i32 @ci_hdrc_query_available_role(ptr noundef %311) #6
  %313 = load ptr, ptr %107, align 4
  %314 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %313, i32 0, i32 4
  store i32 %312, ptr %314, align 4
  %315 = load ptr, ptr %107, align 4
  br label %316

316:                                              ; preds = %310, %281
  %317 = phi ptr [ %315, %310 ], [ null, %281 ]
  %318 = call i32 @imx_usbmisc_init_post(ptr noundef %317) #6
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %316
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17, i32 noundef %318) #7
  %321 = load ptr, ptr %275, align 4
  call void @ci_hdrc_remove_device(ptr noundef %321) #6
  br label %329

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 4
  %324 = load i8, ptr %323, align 4, !range !9
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #6
  call void @pm_runtime_enable(ptr noundef %4) #6
  br label %328

328:                                              ; preds = %326, %322
  call void @device_set_wakeup_capable(ptr noundef %4, i1 noundef zeroext true) #6
  br label %346

329:                                              ; preds = %320, %279, %277, %268, %222, %216
  %330 = phi i32 [ %217, %216 ], [ %266, %268 ], [ %280, %279 ], [ -517, %277 ], [ %318, %320 ], [ %223, %222 ]
  call fastcc void @imx_disable_unprepare_clks(ptr noundef %4)
  br label %331

331:                                              ; preds = %329, %210, %206, %200, %192
  %332 = phi i32 [ %211, %210 ], [ %330, %329 ], [ %193, %192 ], [ %201, %200 ], [ %207, %206 ]
  %333 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 9
  %334 = load ptr, ptr %333, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %331
  %337 = call i32 @regulator_disable(ptr noundef nonnull %334) #6
  br label %338

338:                                              ; preds = %336, %331
  %339 = load i32, ptr %23, align 4
  %340 = and i32 %339, 32768
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 14
  call void @cpu_latency_qos_remove_request(ptr noundef %343) #6
  br label %344

344:                                              ; preds = %342, %338
  %345 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %18, i32 0, i32 1
  store ptr null, ptr %345, align 4
  br label %346

346:                                              ; preds = %344, %328, %173, %167, %161, %153, %145, %130, %103, %11
  %347 = phi i32 [ %105, %103 ], [ %151, %153 ], [ %332, %344 ], [ 0, %328 ], [ %147, %145 ], [ %132, %130 ], [ -12, %11 ], [ %176, %173 ], [ %165, %167 ], [ %162, %161 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %3) #6
  ret i32 %347
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #6
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #6, !srcloc !11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  br label %15

15:                                               ; preds = %14, %7, %1
  %16 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @ci_hdrc_remove_device(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 5
  %22 = load i8, ptr %21, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.usb_phy, ptr %25, i32 0, i32 23
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef nonnull %25) #6
  br label %32

32:                                               ; preds = %31, %27, %24, %20
  %33 = load ptr, ptr %16, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %64, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %36, i32 0, i32 10
  %38 = load i8, ptr %37, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %36, i32 0, i32 13
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  %43 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %36, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  tail call void @clk_unprepare(ptr noundef %44) #6
  %45 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %36, i32 0, i32 11
  br label %48

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %36, i32 0, i32 2
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %47, %46 ], [ %45, %40 ]
  %50 = load ptr, ptr %49, align 4
  tail call void @clk_disable(ptr noundef %50) #6
  tail call void @clk_unprepare(ptr noundef %50) #6
  %51 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 32768
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 14
  tail call void @cpu_latency_qos_remove_request(ptr noundef %57) #6
  br label %58

58:                                               ; preds = %56, %48
  %59 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @regulator_disable(ptr noundef nonnull %60) #6
  br label %64

64:                                               ; preds = %62, %58, %32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ci_hdrc_imx_shutdown(ptr noundef %0) #2 {
  %2 = tail call i32 @ci_hdrc_imx_remove(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_notify_event(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  switch i32 %1, label %36 [
    i32 2, label %10
    i32 3, label %20
    i32 4, label %24
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %7, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %7, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %12, ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %17) #7
  br label %36

20:                                               ; preds = %2
  %21 = tail call i32 @imx_usbmisc_hsic_set_connect(ptr noundef %9) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %21) #7
  br label %36

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 33
  %26 = load i32, ptr %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = tail call i32 @imx_usbmisc_charger_detection(ptr noundef %9, i1 noundef zeroext %27) #6
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 37
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.usb_phy, ptr %30, i32 0, i32 17
  %34 = load ptr, ptr @system_wq, align 4
  %35 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %33) #6
  br label %36

36:                                               ; preds = %32, %24, %23, %20, %19, %14, %10, %2
  %37 = phi i32 [ 0, %2 ], [ %28, %32 ], [ %28, %24 ], [ %21, %23 ], [ 0, %20 ], [ %17, %19 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_prepare_enable_clks(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 10
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %15, %7
  %17 = phi i32 [ %13, %15 ], [ %10, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %17) #7
  br label %54

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %24, %26 ], [ %21, %18 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %28) #7
  %29 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %54

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call i32 @clk_enable(ptr noundef %32) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #6
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i32 [ %36, %38 ], [ %33, %30 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %40) #7
  %41 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %41) #6
  tail call void @clk_unprepare(ptr noundef %41) #6
  %42 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  br label %54

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @clk_prepare(ptr noundef %45) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = tail call i32 @clk_enable(ptr noundef %45) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %52

52:                                               ; preds = %51, %43
  %53 = phi i32 [ %49, %51 ], [ %46, %43 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %53) #7
  br label %54

54:                                               ; preds = %52, %48, %39, %35, %27, %16
  %55 = phi i32 [ %17, %16 ], [ %28, %27 ], [ %40, %39 ], [ %53, %52 ], [ 0, %35 ], [ 0, %48 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_query_available_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_init_post(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_disable_unprepare_clks(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 10
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 11
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 2
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %12, %7 ]
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_hsic_set_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_charger_detection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %18, i1 noundef zeroext true) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %19) #7
  br label %27

22:                                               ; preds = %16, %12, %7
  %23 = tail call fastcc i32 @imx_controller_suspend(ptr noundef %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #6
  br label %27

27:                                               ; preds = %25, %22, %21, %1
  %28 = phi i32 [ %19, %21 ], [ 0, %25 ], [ 0, %1 ], [ %23, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #6
  %5 = tail call fastcc i32 @imx_controller_resume(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #6
  %12 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %0) #6
  br label %13

13:                                               ; preds = %11, %7, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 652, i32 noundef 9, ptr noundef null) #6
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %10, i1 noundef zeroext true) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %11) #7
  br label %16

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @imx_controller_suspend(ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = phi i32 [ 0, %7 ], [ %11, %13 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_runtime_resume(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @imx_controller_resume(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_set_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_controller_suspend(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @imx_usbmisc_hsic_set_clk(ptr noundef %5, i1 noundef zeroext false) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %6) #7
  br label %34

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %10, i32 0, i32 10
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %10, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  %17 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %10, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %10, i32 0, i32 11
  br label %22

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %10, i32 0, i32 2
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %21, %20 ], [ %19, %14 ]
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 14
  tail call void @cpu_latency_qos_remove_request(ptr noundef %31) #6
  br label %32

32:                                               ; preds = %30, %22
  %33 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 6
  store i8 1, ptr %33, align 2
  br label %34

34:                                               ; preds = %32, %8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_hsic_set_clk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_controller_resume(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 569, i32 noundef 9, ptr noundef null) #6
  br label %49

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 14
  tail call void @cpu_latency_qos_add_request(ptr noundef %15, i32 noundef 0) #6
  br label %16

16:                                               ; preds = %14, %8
  %17 = tail call fastcc i32 @imx_prepare_enable_clks(ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  store i8 0, ptr %4, align 2
  %20 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %21, i1 noundef zeroext false) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %22) #7
  br label %32

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 4
  %27 = tail call i32 @imx_usbmisc_hsic_set_clk(ptr noundef %26, i1 noundef zeroext true) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %27) #7
  %30 = load ptr, ptr %20, align 4
  %31 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %30, i1 noundef zeroext true) #6
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ %22, %24 ], [ %27, %29 ]
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %34, i32 0, i32 10
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %34, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  %41 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %34, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  %43 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %34, i32 0, i32 11
  br label %46

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %34, i32 0, i32 2
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %45, %44 ], [ %43, %38 ]
  %48 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %49

49:                                               ; preds = %46, %25, %16, %7
  %50 = phi i32 [ %33, %46 ], [ 0, %7 ], [ %17, %16 ], [ 0, %25 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i8 0, i8 2}
!10 = !{i64 2148058518}
!11 = !{i64 557625, i64 2148047596, i64 2148047622, i64 2148047669, i64 2148047691, i64 2148047719, i64 2148047739}
!12 = !{i64 544194, i64 544219, i64 544241, i64 544257, i64 544269, i64 544289, i64 544313, i64 544329, i64 544341}
!13 = !{i64 2148058644}
