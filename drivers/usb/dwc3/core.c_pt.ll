; ModuleID = '/llk/IR/drivers/usb/dwc3/core.c_pt.bc'
source_filename = "../drivers/usb/dwc3/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.dwc3_event_buffer = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_dwc3__291_2074_dwc3_driver_init6 = internal global ptr @dwc3_driver_init, section ".initcall6.init", align 4
@dwc3_driver = internal global %struct.platform_driver { ptr @dwc3_probe, ptr @dwc3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc3_driver_exit = internal global ptr @dwc3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias292 = internal constant [25 x i8] c"dwc3.alias=platform:dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [40 x i8] c"dwc3.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [32 x i8] c"dwc3.file=drivers/usb/dwc3/dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"dwc3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [55 x i8] c"dwc3.description=DesignWare USB3 DRD Controller Driver\00", section ".modinfo", align 1
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@of_dwc3_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"synopsys,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dwc3_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr @dwc3_complete, ptr @dwc3_suspend, ptr @dwc3_resume, ptr @dwc3_suspend, ptr @dwc3_resume, ptr @dwc3_suspend, ptr @dwc3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_runtime_suspend, ptr @dwc3_runtime_resume, ptr @dwc3_runtime_idle }, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"missing memory resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"this is not a DesignWare USB3 DRD Core\0A\00", align 1
@dwc3_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"&dwc->mutex\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to allocate event buffers\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to initialize core\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"linux,sysdev_is_parent\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"usb-psy-name\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"couldn't get usb power supply\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"snps,has-lpm-erratum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"snps,lpm-nyet-threshold\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"snps,is-utmi-l1-suspend\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"snps,hird-threshold\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"snps,dis-start-transfer-quirk\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"snps,usb3_lpm_capable\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"snps,usb2-lpm-disable\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"snps,usb2-gadget-lpm-disable\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"snps,rx-thr-num-pkt-prd\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"snps,rx-max-burst-prd\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"snps,tx-thr-num-pkt-prd\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"snps,tx-max-burst-prd\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"tx-fifo-resize\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"tx-fifo-max-num\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"snps,disable_scramble_quirk\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"snps,u2exit_lfps_quirk\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"snps,u2ss_inp3_quirk\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"snps,req_p1p2p3_quirk\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"snps,del_p1p2p3_quirk\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"snps,del_phy_power_chg_quirk\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"snps,lfps_filter_quirk\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"snps,rx_detect_poll_quirk\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"snps,dis_u3_susphy_quirk\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"snps,dis_u2_susphy_quirk\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"snps,dis_enblslpm_quirk\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"snps,dis-u1-entry-quirk\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"snps,dis-u2-entry-quirk\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"snps,dis_rxdet_inp3_quirk\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"snps,dis-u2-freeclk-exists-quirk\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"snps,dis-del-phy-power-chg-quirk\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"snps,dis-tx-ipgap-linecheck-quirk\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"snps,parkmode-disable-ss-quirk\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"snps,tx_de_emphasis_quirk\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"snps,tx_de_emphasis\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"snps,hsphy_interface\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"snps,quirk-frame-length-adjustment\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"snps,ref-clock-period-ns\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"snps,dis_metastability_quirk\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"snps,dis-split-quirk\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"can't allocate event buffer\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"Configuration mismatch. dr_mode forced to %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"no usb2 phy configured\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"no usb3 phy configured\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"usb3-phy\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.62 = private unnamed_addr constant [33 x i8] c"Running with FPGA optimizations\0A\00", align 1
@dwc3_core_setup_global_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"drivers/usb/dwc3/core.c\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c"disable_scramble cannot be used on non-FPGA builds\0A\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"failed to map scratch buffer\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.68 = private unnamed_addr constant [32 x i8] c"snps,incr-burst-type-adjustment\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Error to get memory\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"Error to get property\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Invalid property\0A\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"Interrupt moderation not supported\0A\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"UDC doesn't support Gen 1\0A\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"UDC doesn't support SSP\0A\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"invalid maximum_speed parameter %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"UDC only supports Gen 1\0A\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"UDC only supports single lane\0A\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"failed to initialize gadget\0A\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"failed to initialize dual-role\0A\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"Unsupported mode of operation %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"failed to initialize peripheral\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_dwc3_driver_exit, ptr @__initcall__kmod_dwc3__291_2074_dwc3_driver_init6, ptr @dwc3_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_set_prtcap(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #13
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 49424, i32 noundef %6) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %2
  %24 = and i32 %6, -12289
  %25 = shl i32 %1, 12
  %26 = or i32 %24, %25
  %27 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #13, !srcloc !13
  %29 = getelementptr i8, ptr %27, i32 -49408
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = tail call ptr @llvm.thread.pointer() #13
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %44 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %29, i32 noundef 49424, i32 noundef %26) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %45

45:                                               ; preds = %43, %32, %23
  %46 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  store i32 %1, ptr %46, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_readl(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 %1
  %4 = getelementptr i8, ptr %3, i32 -49408
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr i8, ptr %0, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef %1, i32 noundef %5) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %2
  ret i32 %5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_writel(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %4 = getelementptr i8, ptr %0, i32 %1
  %5 = getelementptr i8, ptr %4, i32 -49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #13, !srcloc !13
  %6 = getelementptr i8, ptr %0, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %21 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %6, i32 noundef %1, i32 noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %22

22:                                               ; preds = %20, %9, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_set_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 32
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #13
  %9 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 34
  store i32 %1, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #13
  %10 = load ptr, ptr @system_freezable_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %0) #13
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_core_fifo_space(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 31
  %10 = zext i8 %9 to i32
  %11 = zext i8 %1 to i32
  %12 = shl nuw nsw i32 %11, 5
  %13 = and i32 %12, 480
  %14 = or i32 %13, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %15 = getelementptr i8, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #13, !srcloc !13
  %16 = getelementptr i8, ptr %6, i32 -49408
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = tail call ptr @llvm.thread.pointer() #13
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %31 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %16, i32 noundef 49504, i32 noundef %14) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %32

32:                                               ; preds = %30, %19, %2
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 96
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %36 = getelementptr i8, ptr %33, i32 -49408
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %51 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %36, i32 noundef 49504, i32 noundef %35) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %52

52:                                               ; preds = %50, %39, %32
  %53 = lshr i32 %35, 16
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_event_buffers_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %3, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %3, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %9 = getelementptr i8, ptr %6, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #13, !srcloc !13
  %10 = getelementptr i8, ptr %6, i32 -49408
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %25 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %10, i32 noundef 50176, i32 noundef %8) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %26

26:                                               ; preds = %24, %13, %1
  %27 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %28 = getelementptr i8, ptr %27, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #13, !srcloc !13
  %29 = getelementptr i8, ptr %27, i32 -49408
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = tail call ptr @llvm.thread.pointer() #13
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %44 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %29, i32 noundef 50180, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %45

45:                                               ; preds = %43, %32, %26
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %3, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %50 = getelementptr i8, ptr %46, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #13, !srcloc !13
  %51 = getelementptr i8, ptr %46, i32 -49408
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = tail call ptr @llvm.thread.pointer() #13
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %66 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %51, i32 noundef 50184, i32 noundef %49) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %67

67:                                               ; preds = %65, %54, %45
  %68 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %69 = getelementptr i8, ptr %68, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #13, !srcloc !13
  %70 = getelementptr i8, ptr %68, i32 -49408
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = tail call ptr @llvm.thread.pointer() #13
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %85 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %70, i32 noundef 50188, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %86

86:                                               ; preds = %84, %73, %67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_event_buffers_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %3, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %7 = getelementptr i8, ptr %6, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #13, !srcloc !13
  %8 = getelementptr i8, ptr %6, i32 -49408
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %23 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %8, i32 noundef 50176, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %24

24:                                               ; preds = %22, %11, %1
  %25 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %26 = getelementptr i8, ptr %25, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #13, !srcloc !13
  %27 = getelementptr i8, ptr %25, i32 -49408
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = tail call ptr @llvm.thread.pointer() #13
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %27, i32 noundef 50180, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %43

43:                                               ; preds = %41, %30, %24
  %44 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %45 = getelementptr i8, ptr %44, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 -2147483648) #13, !srcloc !13
  %46 = getelementptr i8, ptr %44, i32 -49408
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = tail call ptr @llvm.thread.pointer() #13
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %61 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %46, i32 noundef 50184, i32 noundef -2147483648) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %62

62:                                               ; preds = %60, %49, %43
  %63 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %64 = getelementptr i8, ptr %63, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #13, !srcloc !13
  %65 = getelementptr i8, ptr %63, i32 -49408
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = tail call ptr @llvm.thread.pointer() #13
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %80 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %65, i32 noundef 50188, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %81

81:                                               ; preds = %79, %68, %62
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dwc3_has_imod(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %12 [
    i32 21811, label %4
    i32 13105, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1429417993
  br i1 %7, label %14, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 825372713
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %4, %1
  %13 = icmp eq i32 %3, 13106
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i1 [ true, %8 ], [ true, %4 ], [ %13, %12 ]
  ret i1 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_driver_exit() #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_probe(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 4
  %11 = alloca %struct.resource, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false), !annotation !16
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 672, i32 noundef 3520) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %391, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 12
  store ptr %12, ptr %16, align 4
  %17 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #14
  br label %391

20:                                               ; preds = %15
  %21 = load i32, ptr %17, align 4
  %22 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 15
  store i32 %21, ptr %22, align 4
  %23 = add i32 %21, 32767
  %24 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 15, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 15, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 15, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %17, i32 32, i1 false)
  %31 = load i32, ptr %11, align 4
  %32 = add i32 %31, 49408
  store i32 %32, ptr %11, align 4
  %33 = call ptr @devm_ioremap_resource(ptr noundef %12, ptr noundef nonnull %11) #13
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = ptrtoint ptr %33 to i32
  br label %391

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 30
  store ptr %33, ptr %38, align 4
  %39 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %11, align 4
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %41
  %44 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 31
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  store i8 0, ptr %8, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store ptr null, ptr %10, align 4, !annotation !16
  store i8 15, ptr %2, align 1
  store i8 1, ptr %3, align 1
  store i8 12, ptr %4, align 1
  store i8 6, ptr %9, align 1
  %46 = call i32 @usb_get_maximum_speed(ptr noundef %45) #13
  %47 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 50
  store i32 %46, ptr %47, align 4
  %48 = call i32 @usb_get_maximum_ssp_rate(ptr noundef %45) #13
  %49 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 52
  store i32 %48, ptr %49, align 4
  %50 = call i32 @usb_get_dr_mode(ptr noundef %45) #13
  %51 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 32
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = call i32 @of_usb_get_phy_mode(ptr noundef %53) #13
  %55 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 37
  store i32 %54, ptr %55, align 4
  %56 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.7) #13
  %57 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 79
  %58 = load i48, ptr %57, align 4
  %59 = select i1 %56, i48 64, i48 0
  %60 = and i48 %58, -65
  %61 = or i48 %60, %59
  store i48 %61, ptr %57, align 4
  br i1 %56, label %62, label %65

62:                                               ; preds = %37
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 1
  br label %65

65:                                               ; preds = %62, %37
  %66 = phi ptr [ %64, %62 ], [ %16, %37 ]
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 13
  store ptr %67, ptr %68, align 4
  %69 = call i32 @device_property_read_string(ptr noundef %45, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #13
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load ptr, ptr %10, align 4
  %73 = call ptr @power_supply_get_by_name(ptr noundef %72) #13
  %74 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 40
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.9) #14
  br label %77

77:                                               ; preds = %76, %71, %65
  %78 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.10) #13
  %79 = load i48, ptr %57, align 4
  %80 = select i1 %78, i48 128, i48 0
  %81 = and i48 %79, -129
  %82 = or i48 %81, %80
  store i48 %82, ptr %57, align 4
  %83 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1) #13
  %84 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.12) #13
  %85 = load i48, ptr %57, align 4
  %86 = select i1 %84, i48 256, i48 0
  %87 = and i48 %85, -257
  %88 = or i48 %87, %86
  store i48 %88, ptr %57, align 4
  %89 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.13, ptr noundef nonnull %4, i32 noundef 1) #13
  %90 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.14) #13
  %91 = load i48, ptr %57, align 4
  %92 = select i1 %90, i48 32768, i48 0
  %93 = and i48 %91, -32769
  %94 = or i48 %93, %92
  store i48 %94, ptr %57, align 4
  %95 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.15) #13
  %96 = load i48, ptr %57, align 4
  %97 = select i1 %95, i48 65536, i48 0
  %98 = and i48 %96, -65537
  %99 = or i48 %98, %97
  store i48 %99, ptr %57, align 4
  %100 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.16) #13
  %101 = load i48, ptr %57, align 4
  %102 = select i1 %100, i48 131072, i48 0
  %103 = and i48 %101, -131073
  %104 = or i48 %103, %102
  store i48 %104, ptr %57, align 4
  %105 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.17) #13
  %106 = load i48, ptr %57, align 4
  %107 = select i1 %105, i48 262144, i48 0
  %108 = and i48 %106, -262145
  %109 = or i48 %108, %107
  store i48 %109, ptr %57, align 4
  %110 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef nonnull %5, i32 noundef 1) #13
  %111 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.19, ptr noundef nonnull %6, i32 noundef 1) #13
  %112 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.20, ptr noundef nonnull %7, i32 noundef 1) #13
  %113 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef nonnull %8, i32 noundef 1) #13
  %114 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.22) #13
  %115 = load i48, ptr %57, align 4
  %116 = select i1 %114, i48 2048, i48 0
  %117 = and i48 %115, -2049
  %118 = or i48 %117, %116
  store i48 %118, ptr %57, align 4
  br i1 %114, label %119, label %121

119:                                              ; preds = %77
  %120 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.23, ptr noundef nonnull %9, i32 noundef 1) #13
  br label %121

121:                                              ; preds = %119, %77
  %122 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.24) #13
  %123 = load i48, ptr %57, align 4
  %124 = select i1 %122, i48 524288, i48 0
  %125 = and i48 %123, -524289
  %126 = or i48 %125, %124
  store i48 %126, ptr %57, align 4
  %127 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.25) #13
  %128 = load i48, ptr %57, align 4
  %129 = select i1 %127, i48 1048576, i48 0
  %130 = and i48 %128, -1048577
  %131 = or i48 %130, %129
  store i48 %131, ptr %57, align 4
  %132 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.26) #13
  %133 = load i48, ptr %57, align 4
  %134 = select i1 %132, i48 2097152, i48 0
  %135 = and i48 %133, -2097153
  %136 = or i48 %135, %134
  store i48 %136, ptr %57, align 4
  %137 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.27) #13
  %138 = load i48, ptr %57, align 4
  %139 = select i1 %137, i48 4194304, i48 0
  %140 = and i48 %138, -4194305
  %141 = or i48 %140, %139
  store i48 %141, ptr %57, align 4
  %142 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.28) #13
  %143 = load i48, ptr %57, align 4
  %144 = select i1 %142, i48 8388608, i48 0
  %145 = and i48 %143, -8388609
  %146 = or i48 %145, %144
  store i48 %146, ptr %57, align 4
  %147 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.29) #13
  %148 = load i48, ptr %57, align 4
  %149 = select i1 %147, i48 16777216, i48 0
  %150 = and i48 %148, -16777217
  %151 = or i48 %150, %149
  store i48 %151, ptr %57, align 4
  %152 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.30) #13
  %153 = load i48, ptr %57, align 4
  %154 = select i1 %152, i48 33554432, i48 0
  %155 = and i48 %153, -33554433
  %156 = or i48 %155, %154
  store i48 %156, ptr %57, align 4
  %157 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.31) #13
  %158 = load i48, ptr %57, align 4
  %159 = select i1 %157, i48 67108864, i48 0
  %160 = and i48 %158, -67108865
  %161 = or i48 %160, %159
  store i48 %161, ptr %57, align 4
  %162 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.32) #13
  %163 = load i48, ptr %57, align 4
  %164 = select i1 %162, i48 134217728, i48 0
  %165 = and i48 %163, -134217729
  %166 = or i48 %165, %164
  store i48 %166, ptr %57, align 4
  %167 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.33) #13
  %168 = load i48, ptr %57, align 4
  %169 = select i1 %167, i48 268435456, i48 0
  %170 = and i48 %168, -268435457
  %171 = or i48 %170, %169
  store i48 %171, ptr %57, align 4
  %172 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.34) #13
  %173 = load i48, ptr %57, align 4
  %174 = select i1 %172, i48 536870912, i48 0
  %175 = and i48 %173, -536870913
  %176 = or i48 %175, %174
  store i48 %176, ptr %57, align 4
  %177 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.35) #13
  %178 = load i48, ptr %57, align 4
  %179 = select i1 %177, i48 1073741824, i48 0
  %180 = and i48 %178, -1073741825
  %181 = or i48 %180, %179
  store i48 %181, ptr %57, align 4
  %182 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.36) #13
  %183 = load i48, ptr %57, align 4
  %184 = select i1 %182, i48 2147483648, i48 0
  %185 = and i48 %183, -2147483649
  %186 = or i48 %185, %184
  store i48 %186, ptr %57, align 4
  %187 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.37) #13
  %188 = load i48, ptr %57, align 4
  %189 = select i1 %187, i48 4294967296, i48 0
  %190 = and i48 %188, -4294967297
  %191 = or i48 %190, %189
  store i48 %191, ptr %57, align 4
  %192 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.38) #13
  %193 = load i48, ptr %57, align 4
  %194 = select i1 %192, i48 8589934592, i48 0
  %195 = and i48 %193, -8589934593
  %196 = or i48 %195, %194
  store i48 %196, ptr %57, align 4
  %197 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.39) #13
  %198 = load i48, ptr %57, align 4
  %199 = select i1 %197, i48 17179869184, i48 0
  %200 = and i48 %198, -17179869185
  %201 = or i48 %200, %199
  store i48 %201, ptr %57, align 4
  %202 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.40) #13
  %203 = load i48, ptr %57, align 4
  %204 = select i1 %202, i48 34359738368, i48 0
  %205 = and i48 %203, -34359738369
  %206 = or i48 %205, %204
  store i48 %206, ptr %57, align 4
  %207 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.41) #13
  %208 = load i48, ptr %57, align 4
  %209 = select i1 %207, i48 68719476736, i48 0
  %210 = and i48 %208, -68719476737
  %211 = or i48 %210, %209
  store i48 %211, ptr %57, align 4
  %212 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.42) #13
  %213 = load i48, ptr %57, align 4
  %214 = select i1 %212, i48 137438953472, i48 0
  %215 = and i48 %213, -137438953473
  %216 = or i48 %215, %214
  store i48 %216, ptr %57, align 4
  %217 = call i32 @device_property_read_u8_array(ptr noundef %45, ptr noundef nonnull @.str.43, ptr noundef nonnull %3, i32 noundef 1) #13
  %218 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 78
  %219 = call i32 @device_property_read_string(ptr noundef %45, ptr noundef nonnull @.str.44, ptr noundef %218) #13
  %220 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 41
  %221 = call i32 @device_property_read_u32_array(ptr noundef %45, ptr noundef nonnull @.str.45, ptr noundef %220, i32 noundef 1) #13
  %222 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 42
  %223 = call i32 @device_property_read_u32_array(ptr noundef %45, ptr noundef nonnull @.str.46, ptr noundef %222, i32 noundef 1) #13
  %224 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.47) #13
  %225 = load i48, ptr %57, align 4
  %226 = select i1 %224, i48 1099511627776, i48 0
  %227 = and i48 %225, -1099511627777
  %228 = or i48 %227, %226
  store i48 %228, ptr %57, align 4
  %229 = call zeroext i1 @device_property_present(ptr noundef %45, ptr noundef nonnull @.str.48) #13
  %230 = load i48, ptr %57, align 4
  %231 = select i1 %229, i48 2199023255552, i48 0
  %232 = and i48 %230, -3023656976385
  %233 = or i48 %231, %232
  %234 = load i8, ptr %2, align 1
  %235 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 71
  store i8 %234, ptr %235, align 2
  %236 = load i8, ptr %3, align 1
  %237 = and i8 %236, 3
  %238 = zext i8 %237 to i48
  %239 = shl nuw nsw i48 %238, 38
  %240 = or i48 %239, %233
  store i48 %240, ptr %57, align 4
  %241 = load i8, ptr %4, align 1
  %242 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 72
  store i8 %241, ptr %242, align 1
  %243 = load i8, ptr %5, align 1
  %244 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 73
  store i8 %243, ptr %244, align 4
  %245 = load i8, ptr %6, align 1
  %246 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 74
  store i8 %245, ptr %246, align 1
  %247 = load i8, ptr %7, align 1
  %248 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 75
  store i8 %247, ptr %248, align 2
  %249 = load i8, ptr %8, align 1
  %250 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 76
  store i8 %249, ptr %250, align 1
  %251 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 80
  store i16 0, ptr %251, align 2
  %252 = load i8, ptr %9, align 1
  %253 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 77
  store i8 %252, ptr %253, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  %254 = and i48 %230, 64
  %255 = icmp eq i48 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %121
  %257 = load ptr, ptr %68, align 4
  %258 = call i32 @dma_set_mask(ptr noundef %257, i64 noundef -1) #13
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %391

260:                                              ; preds = %256
  %261 = call i32 @dma_set_coherent_mask(ptr noundef %257, i64 noundef -1) #13
  br label %262

262:                                              ; preds = %260, %121
  %263 = call ptr @devm_reset_control_array_get(ptr noundef %12, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %264 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 22
  store ptr %263, ptr %264, align 4
  %265 = icmp ugt ptr %263, inttoptr (i32 -4096 to ptr)
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = ptrtoint ptr %263 to i32
  br label %391

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %270 = load ptr, ptr %269, align 8
  %271 = icmp eq ptr %270, null
  br i1 %271, label %279, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 20
  %274 = call i32 @devm_clk_bulk_get_all(ptr noundef %12, ptr noundef %273) #13
  %275 = icmp eq i32 %274, -517
  br i1 %275, label %391, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 21
  %278 = call i32 @llvm.smax.i32(i32 %274, i32 0)
  store i32 %278, ptr %277, align 4
  br label %279

279:                                              ; preds = %276, %268
  %280 = load ptr, ptr %264, align 4
  %281 = call i32 @reset_control_deassert(ptr noundef %280) #13
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %391

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 21
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 20
  %287 = load ptr, ptr %286, align 4
  %288 = call i32 @clk_bulk_prepare(i32 noundef %285, ptr noundef %287) #13
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %383

290:                                              ; preds = %283
  %291 = call i32 @clk_bulk_enable(i32 noundef %285, ptr noundef %287) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  call void @clk_bulk_unprepare(i32 noundef %285, ptr noundef %287) #13
  br label %383

294:                                              ; preds = %290
  %295 = call fastcc zeroext i1 @dwc3_core_is_valid(ptr noundef nonnull %13)
  br i1 %295, label %298, label %296

296:                                              ; preds = %294
  %297 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %297, ptr noundef nonnull @.str.3) #14
  br label %379

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %299, align 8
  call fastcc void @dwc3_cache_hwparams(ptr noundef nonnull %13)
  %300 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 10
  store i32 0, ptr %300, align 4
  %301 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 11
  call void @__mutex_init(ptr noundef %301, ptr noundef nonnull @.str.4, ptr noundef nonnull @dwc3_probe.__key) #13
  %302 = call i32 @__pm_runtime_set_status(ptr noundef %12, i32 noundef 0) #13
  call void @__pm_runtime_use_autosuspend(ptr noundef %12, i1 noundef zeroext true) #13
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %12, i32 noundef 5000) #13
  call void @pm_runtime_enable(ptr noundef %12) #13
  %303 = call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #13
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %376, label %305

305:                                              ; preds = %298
  call void @pm_runtime_forbid(ptr noundef %12) #13
  %306 = call fastcc i32 @dwc3_alloc_event_buffers(ptr noundef nonnull %13)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.5) #14
  br label %374

310:                                              ; preds = %305
  call fastcc void @dwc3_get_dr_mode(ptr noundef nonnull %13)
  %311 = call fastcc i32 @dwc3_alloc_scratch_buffers(ptr noundef nonnull %13)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %372

313:                                              ; preds = %310
  %314 = call fastcc i32 @dwc3_core_init(ptr noundef nonnull %13)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %318, label %316

316:                                              ; preds = %313
  %317 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %12, i32 noundef %314, ptr noundef nonnull @.str.6) #13
  br label %370

318:                                              ; preds = %313
  call fastcc void @dwc3_check_params(ptr noundef nonnull %13)
  call void @dwc3_debugfs_init(ptr noundef nonnull %13) #13
  %319 = call fastcc i32 @dwc3_core_init_mode(ptr noundef nonnull %13)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #13
  br label %391

323:                                              ; preds = %318
  call void @dwc3_debugfs_exit(ptr noundef nonnull %13) #13
  call void @dwc3_event_buffers_cleanup(ptr noundef nonnull %13)
  %324 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 23
  %325 = load ptr, ptr %324, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %332, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.usb_phy, ptr %325, i32 0, i32 23
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %332, label %331

331:                                              ; preds = %327
  call void %329(ptr noundef nonnull %325) #13
  br label %332

332:                                              ; preds = %331, %327, %323
  %333 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 24
  %334 = load ptr, ptr %333, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %341, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.usb_phy, ptr %334, i32 0, i32 23
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %336
  call void %338(ptr noundef nonnull %334) #13
  br label %341

341:                                              ; preds = %340, %336, %332
  %342 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 25
  %343 = load ptr, ptr %342, align 4
  %344 = call i32 @phy_exit(ptr noundef %343) #13
  %345 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 26
  %346 = load ptr, ptr %345, align 4
  %347 = call i32 @phy_exit(ptr noundef %346) #13
  %348 = load ptr, ptr %324, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %356, label %350

350:                                              ; preds = %341
  %351 = getelementptr inbounds %struct.usb_phy, ptr %348, i32 0, i32 26
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %350
  %355 = call i32 %352(ptr noundef nonnull %348, i32 noundef 1) #13
  br label %356

356:                                              ; preds = %354, %350, %341
  %357 = load ptr, ptr %333, align 4
  %358 = icmp eq ptr %357, null
  br i1 %358, label %365, label %359

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.usb_phy, ptr %357, i32 0, i32 26
  %361 = load ptr, ptr %360, align 4
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %359
  %364 = call i32 %361(ptr noundef nonnull %357, i32 noundef 1) #13
  br label %365

365:                                              ; preds = %363, %359, %356
  %366 = load ptr, ptr %342, align 4
  %367 = call i32 @phy_power_off(ptr noundef %366) #13
  %368 = load ptr, ptr %345, align 4
  %369 = call i32 @phy_power_off(ptr noundef %368) #13
  br label %370

370:                                              ; preds = %365, %316
  %371 = phi i32 [ %314, %316 ], [ %319, %365 ]
  call fastcc void @dwc3_free_scratch_buffers(ptr noundef nonnull %13)
  br label %372

372:                                              ; preds = %370, %310
  %373 = phi i32 [ %311, %310 ], [ %371, %370 ]
  call fastcc void @dwc3_free_event_buffers(ptr noundef nonnull %13)
  br label %374

374:                                              ; preds = %372, %308
  %375 = phi i32 [ -12, %308 ], [ %373, %372 ]
  call void @pm_runtime_allow(ptr noundef %12) #13
  br label %376

376:                                              ; preds = %374, %298
  %377 = phi i32 [ %303, %298 ], [ %375, %374 ]
  %378 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #13
  call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #13
  br label %379

379:                                              ; preds = %376, %296
  %380 = phi i32 [ %377, %376 ], [ -19, %296 ]
  %381 = load i32, ptr %284, align 4
  %382 = load ptr, ptr %286, align 4
  call void @clk_bulk_disable(i32 noundef %381, ptr noundef %382) #13
  call void @clk_bulk_unprepare(i32 noundef %381, ptr noundef %382) #13
  br label %383

383:                                              ; preds = %379, %293, %283
  %384 = phi i32 [ %380, %379 ], [ %291, %293 ], [ %288, %283 ]
  %385 = load ptr, ptr %264, align 4
  %386 = call i32 @reset_control_assert(ptr noundef %385) #13
  %387 = getelementptr inbounds %struct.dwc3, ptr %13, i32 0, i32 40
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %391, label %390

390:                                              ; preds = %383
  call void @power_supply_put(ptr noundef nonnull %388) #13
  br label %391

391:                                              ; preds = %390, %383, %321, %279, %272, %266, %256, %35, %19, %1
  %392 = phi i32 [ %36, %35 ], [ %267, %266 ], [ 0, %321 ], [ -19, %19 ], [ -12, %1 ], [ -517, %272 ], [ %281, %279 ], [ %384, %390 ], [ %384, %383 ], [ %258, %256 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #13
  ret i32 %392
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #13
  %6 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 32
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %11 [
    i32 2, label %8
    i32 1, label %9
    i32 3, label %10
  ]

8:                                                ; preds = %1
  tail call void @dwc3_gadget_exit(ptr noundef %3) #13
  br label %11

9:                                                ; preds = %1
  tail call void @dwc3_host_exit(ptr noundef %3) #13
  br label %11

10:                                               ; preds = %1
  tail call void @dwc3_drd_exit(ptr noundef %3) #13
  br label %11

11:                                               ; preds = %10, %9, %8, %1
  tail call void @dwc3_set_prtcap(ptr noundef %3, i32 noundef 2) #13
  tail call void @dwc3_debugfs_exit(ptr noundef %3) #13
  tail call fastcc void @dwc3_core_exit(ptr noundef %3)
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #13
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !18
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #13, !srcloc !19
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  br label %17

17:                                               ; preds = %16, %11
  %18 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #13
  %19 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %20, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %20, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef %26, ptr noundef %27, i32 noundef %29, i32 noundef 0) #13
  br label %30

30:                                               ; preds = %22, %17
  %31 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %32 = load i48, ptr %31, align 4
  %33 = and i48 %32, 32
  %34 = icmp eq i48 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 48
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43, !prof !21

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 553, i32 noundef 9, ptr noundef null) #13
  %44 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %36, align 4
  %49 = shl i32 %48, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef 0, i32 noundef 0) #13
  %50 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %50) #13
  br label %51

51:                                               ; preds = %43, %39, %35, %30
  %52 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 40
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @power_supply_put(ptr noundef nonnull %53) #13
  br label %56

56:                                               ; preds = %55, %51
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dwc3_core_is_valid(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 49440, i32 noundef %5) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = lshr i32 %5, 16
  %24 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  store i32 %23, ptr %24, align 4
  %25 = trunc i32 %23 to i16
  switch i16 %25, label %71 [
    i16 21811, label %26
    i16 13105, label %28
    i16 13106, label %28
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  store i32 %5, ptr %27, align 4
  br label %71

28:                                               ; preds = %22, %22
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 160
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %32 = getelementptr i8, ptr %29, i32 -49408
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %47 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %32, i32 noundef 49568, i32 noundef %31) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %48

48:                                               ; preds = %46, %35, %28
  %49 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  store i32 %31, ptr %49, align 4
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr i8, ptr %50, i32 164
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %53 = getelementptr i8, ptr %50, i32 -49408
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = tail call ptr @llvm.thread.pointer() #13
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %68 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %53, i32 noundef 49572, i32 noundef %52) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %69

69:                                               ; preds = %67, %56, %48
  %70 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 56
  store i32 %52, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %26, %22
  %72 = phi i1 [ false, %22 ], [ true, %69 ], [ true, %26 ]
  ret i1 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_cache_hwparams(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #13
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 49472, i32 noundef %6) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %1
  store i32 %6, ptr %2, align 4
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %27 = getelementptr i8, ptr %24, i32 -49408
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = tail call ptr @llvm.thread.pointer() #13
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %42 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %27, i32 noundef 49476, i32 noundef %26) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %43

43:                                               ; preds = %41, %30, %23
  %44 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 1
  store i32 %26, ptr %44, align 4
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 72
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %48 = getelementptr i8, ptr %45, i32 -49408
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = tail call ptr @llvm.thread.pointer() #13
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %63 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %48, i32 noundef 49480, i32 noundef %47) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %64

64:                                               ; preds = %62, %51, %43
  %65 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 2
  store i32 %47, ptr %65, align 4
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr i8, ptr %66, i32 76
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %69 = getelementptr i8, ptr %66, i32 -49408
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = tail call ptr @llvm.thread.pointer() #13
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %84 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %69, i32 noundef 49484, i32 noundef %68) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %85

85:                                               ; preds = %83, %72, %64
  %86 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 3
  store i32 %68, ptr %86, align 4
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr i8, ptr %87, i32 80
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %90 = getelementptr i8, ptr %87, i32 -49408
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %85
  %94 = tail call ptr @llvm.thread.pointer() #13
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %105 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %90, i32 noundef 49488, i32 noundef %89) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %106

106:                                              ; preds = %104, %93, %85
  %107 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 4
  store i32 %89, ptr %107, align 4
  %108 = load ptr, ptr %3, align 4
  %109 = getelementptr i8, ptr %108, i32 84
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %111 = getelementptr i8, ptr %108, i32 -49408
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = tail call ptr @llvm.thread.pointer() #13
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = lshr i32 %117, 5
  %119 = getelementptr i32, ptr @__cpu_online_mask, i32 %118
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %117, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %114
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %126 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %111, i32 noundef 49492, i32 noundef %110) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %127

127:                                              ; preds = %125, %114, %106
  %128 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 5
  store i32 %110, ptr %128, align 4
  %129 = load ptr, ptr %3, align 4
  %130 = getelementptr i8, ptr %129, i32 88
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %132 = getelementptr i8, ptr %129, i32 -49408
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %127
  %136 = tail call ptr @llvm.thread.pointer() #13
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 5
  %140 = getelementptr i32, ptr @__cpu_online_mask, i32 %139
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %138, 31
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %141
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %147 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %132, i32 noundef 49496, i32 noundef %131) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %148

148:                                              ; preds = %146, %135, %127
  %149 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 6
  store i32 %131, ptr %149, align 4
  %150 = load ptr, ptr %3, align 4
  %151 = getelementptr i8, ptr %150, i32 92
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %153 = getelementptr i8, ptr %150, i32 -49408
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %148
  %157 = tail call ptr @llvm.thread.pointer() #13
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %168 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %153, i32 noundef 49500, i32 noundef %152) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %169

169:                                              ; preds = %167, %156, %148
  %170 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 7
  store i32 %152, ptr %170, align 4
  %171 = load ptr, ptr %3, align 4
  %172 = getelementptr i8, ptr %171, i32 1280
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %174 = getelementptr i8, ptr %171, i32 -49408
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = tail call ptr @llvm.thread.pointer() #13
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %189 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %174, i32 noundef 50688, i32 noundef %173) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %190

190:                                              ; preds = %188, %177, %169
  %191 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 8
  store i32 %173, ptr %191, align 4
  %192 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 13106
  br i1 %194, label %195, label %217

195:                                              ; preds = %190
  %196 = load ptr, ptr %3, align 4
  %197 = getelementptr i8, ptr %196, i32 1504
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %199 = getelementptr i8, ptr %196, i32 -49408
  %200 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %195
  %203 = tail call ptr @llvm.thread.pointer() #13
  %204 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 5
  %207 = getelementptr i32, ptr @__cpu_online_mask, i32 %206
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %205, 31
  %210 = shl nuw i32 1, %209
  %211 = and i32 %210, %208
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %202
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %214 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %199, i32 noundef 50912, i32 noundef %198) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %215

215:                                              ; preds = %213, %202, %195
  %216 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 9
  store i32 %198, ptr %216, align 4
  br label %217

217:                                              ; preds = %215, %190
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_alloc_event_buffers(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %4, i32 0, i32 7
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %4, i32 0, i32 2
  store i32 4096, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 4096, i32 noundef 3520) #13
  %11 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %4, i32 0, i32 6
  %17 = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef 4096, ptr noundef %16, i32 noundef 3264, i32 noundef 0) #13
  store ptr %17, ptr %4, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %25

21:                                               ; preds = %19, %13, %6, %1
  %22 = phi ptr [ %4, %19 ], [ inttoptr (i32 -12 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %13 ]
  %23 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.49) #14
  %24 = ptrtoint ptr %22 to i32
  br label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 16
  store ptr %4, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_get_dr_mode(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 32
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 3, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ 3, %7 ], [ %5, %1 ]
  %10 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 3
  switch i32 %12, label %14 [
    i32 0, label %27
    i32 1, label %13
  ]

13:                                               ; preds = %8
  br label %27

14:                                               ; preds = %8
  %15 = icmp eq i32 %9, 3
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.50) #13
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 21811
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 1429418762
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %22, %16, %14, %13, %8
  %28 = phi i32 [ 3, %16 ], [ 3, %22 ], [ 2, %26 ], [ %9, %14 ], [ 1, %13 ], [ 2, %8 ]
  %29 = load i32, ptr %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 1
  %33 = select i1 %32, ptr @.str.52, ptr @.str.53
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef nonnull %33) #14
  store i32 %28, ptr %4, align 4
  br label %34

34:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_alloc_scratch_buffers(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %3 = load i48, ptr %2, align 4
  %4 = and i48 %3, 32
  %5 = icmp eq i48 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 48
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4096) #13
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %16, label %13, !prof !22

13:                                               ; preds = %10
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #15
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ null, %10 ]
  %18 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  %20 = select i1 %19, i32 -12, i32 0
  br label %21

21:                                               ; preds = %16, %6, %1
  %22 = phi i32 [ 0, %1 ], [ 0, %6 ], [ %20, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 3
  %5 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %7 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 332032) #13, !srcloc !13
  %8 = getelementptr i8, ptr %6, i32 -49408
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %23 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %8, i32 noundef 49448, i32 noundef 332032) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %24

24:                                               ; preds = %22, %11, %1
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, 3
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 448
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %30 = getelementptr i8, ptr %27, i32 -49408
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = tail call ptr @llvm.thread.pointer() #13
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %45 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %30, i32 noundef 49856, i32 noundef %29) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %46

46:                                               ; preds = %44, %33, %24
  %47 = and i32 %29, -134217729
  %48 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 21811
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 1429412171
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %46
  %56 = or i32 %47, 131072
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ %47, %51 ], [ %56, %55 ]
  %59 = icmp eq i32 %26, 2
  %60 = and i32 %58, -131073
  %61 = select i1 %59, i32 %60, i32 %58
  %62 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %63 = load i48, ptr %62, align 4
  %64 = trunc i48 %63 to i32
  %65 = shl i32 %64, 8
  %66 = and i32 %65, 536870912
  %67 = or i32 %66, %61
  %68 = lshr i48 %63, 4
  %69 = trunc i48 %68 to i32
  %70 = and i32 %69, 268435456
  %71 = or i32 %67, %70
  %72 = shl i32 %64, 2
  %73 = and i32 %72, 16777216
  %74 = or i32 %71, %73
  %75 = lshr i32 %64, 4
  %76 = and i32 %75, 524288
  %77 = or i32 %74, %76
  %78 = lshr i32 %64, 6
  %79 = and i32 %78, 262144
  %80 = or i32 %77, %79
  %81 = lshr i32 %64, 16
  %82 = and i32 %81, 512
  %83 = or i32 %80, %82
  %84 = lshr i32 %64, 18
  %85 = and i32 %84, 256
  %86 = or i32 %83, %85
  %87 = and i48 %63, 137438953472
  %88 = icmp eq i48 %87, 0
  %89 = lshr i48 %63, 37
  %90 = trunc i48 %89 to i32
  %91 = and i32 %90, 6
  %92 = select i1 %88, i32 0, i32 %91
  %93 = or i32 %86, %92
  %94 = and i48 %63, 134217728
  %95 = icmp eq i48 %94, 0
  %96 = and i32 %93, -131073
  %97 = select i1 %95, i32 %93, i32 %96
  %98 = and i48 %63, 17179869184
  %99 = icmp eq i48 %98, 0
  %100 = and i32 %97, -262145
  %101 = select i1 %99, i32 %97, i32 %100
  %102 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %103 = getelementptr i8, ptr %102, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #13, !srcloc !13
  %104 = getelementptr i8, ptr %102, i32 -49408
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %57
  %108 = tail call ptr @llvm.thread.pointer() #13
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %119 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %104, i32 noundef 49856, i32 noundef %101) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %120

120:                                              ; preds = %118, %107, %57
  %121 = load ptr, ptr %5, align 4
  %122 = getelementptr i8, ptr %121, i32 256
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %124 = getelementptr i8, ptr %121, i32 -49408
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = tail call ptr @llvm.thread.pointer() #13
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %139 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %124, i32 noundef 49664, i32 noundef %123) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %140

140:                                              ; preds = %138, %127, %120
  %141 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 12
  %144 = icmp eq i32 %143, 12
  br i1 %144, label %145, label %177

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 78
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %177, label %149

149:                                              ; preds = %145
  %150 = tail call i32 @strncmp(ptr noundef nonnull %147, ptr noundef nonnull dereferenceable(5) @.str.55, i32 noundef 4) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = and i32 %123, -17
  br label %177

154:                                              ; preds = %149
  %155 = tail call i32 @strncmp(ptr noundef nonnull %147, ptr noundef nonnull dereferenceable(5) @.str.56, i32 noundef 4) #13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %154
  %158 = or i32 %123, 16
  %159 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %160 = getelementptr i8, ptr %159, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #13, !srcloc !13
  %161 = getelementptr i8, ptr %159, i32 -49408
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %157
  %165 = tail call ptr @llvm.thread.pointer() #13
  %166 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 5
  %169 = getelementptr i32, ptr @__cpu_online_mask, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %167, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %172, %170
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %164
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %176 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %161, i32 noundef 49664, i32 noundef %158) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %177

177:                                              ; preds = %175, %164, %157, %154, %152, %145, %140
  %178 = phi i32 [ %123, %154 ], [ %153, %152 ], [ %123, %140 ], [ %158, %157 ], [ %158, %164 ], [ %158, %175 ], [ %123, %145 ]
  %179 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 37
  %180 = load i32, ptr %179, align 4
  switch i32 %180, label %187 [
    i32 1, label %181
    i32 2, label %184
  ]

181:                                              ; preds = %177
  %182 = and i32 %178, -15369
  %183 = or i32 %182, 9216
  br label %187

184:                                              ; preds = %177
  %185 = and i32 %178, -15369
  %186 = or i32 %185, 5128
  br label %187

187:                                              ; preds = %184, %181, %177
  %188 = phi i32 [ %178, %177 ], [ %186, %184 ], [ %183, %181 ]
  %189 = load i32, ptr %48, align 4
  %190 = icmp eq i32 %189, 21811
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %193 = load i32, ptr %192, align 4
  %194 = icmp ult i32 %193, 1429412171
  br i1 %194, label %197, label %195

195:                                              ; preds = %191, %187
  %196 = or i32 %188, 64
  br label %197

197:                                              ; preds = %195, %191
  %198 = phi i32 [ %188, %191 ], [ %196, %195 ]
  %199 = and i32 %198, -65
  %200 = select i1 %59, i32 %199, i32 %198
  %201 = load i48, ptr %62, align 4
  %202 = and i48 %201, 268435456
  %203 = icmp eq i48 %202, 0
  %204 = select i1 %203, i32 %200, i32 %199
  %205 = and i32 %204, -257
  %206 = trunc i48 %201 to i32
  %207 = lshr i32 %206, 21
  %208 = and i32 %207, 256
  %209 = or i32 %205, %208
  %210 = xor i32 %209, 256
  %211 = and i48 %201, 8589934592
  %212 = icmp eq i48 %211, 0
  %213 = and i32 %210, -1073741825
  %214 = select i1 %212, i32 %210, i32 %213
  %215 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %216 = getelementptr i8, ptr %215, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #13, !srcloc !13
  %217 = getelementptr i8, ptr %215, i32 -49408
  %218 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %197
  %221 = tail call ptr @llvm.thread.pointer() #13
  %222 = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 2
  %223 = load i32, ptr %222, align 8
  %224 = lshr i32 %223, 5
  %225 = getelementptr i32, ptr @__cpu_online_mask, i32 %224
  %226 = load volatile i32, ptr %225, align 4
  %227 = and i32 %223, 31
  %228 = shl nuw i32 1, %227
  %229 = and i32 %228, %226
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %220
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %232 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %217, i32 noundef 49664, i32 noundef %214) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %233

233:                                              ; preds = %231, %220, %197
  %234 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 29
  %235 = load i8, ptr %234, align 4, !range !23
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i8 1, ptr %234, align 4
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 27
  %240 = load i8, ptr %239, align 4, !range !23
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %296

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 25
  %246 = load ptr, ptr %245, align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %242
  %249 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %244, ptr noundef nonnull @.str.57, i8 noundef zeroext 0) #13
  %250 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  store ptr %249, ptr %250, align 4
  %251 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %244, ptr noundef nonnull @.str.57, i8 noundef zeroext 1) #13
  br label %256

252:                                              ; preds = %242
  %253 = tail call ptr @devm_usb_get_phy(ptr noundef %244, i32 noundef 1) #13
  %254 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  store ptr %253, ptr %254, align 4
  %255 = tail call ptr @devm_usb_get_phy(ptr noundef %244, i32 noundef 2) #13
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi ptr [ %255, %252 ], [ %251, %248 ]
  %258 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 24
  store ptr %257, ptr %258, align 4
  %259 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %260 = load ptr, ptr %259, align 4
  %261 = icmp ugt ptr %260, inttoptr (i32 -4096 to ptr)
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = ptrtoint ptr %260 to i32
  switch i32 %263, label %265 [
    i32 -6, label %264
    i32 -19, label %264
  ]

264:                                              ; preds = %262, %262
  store ptr null, ptr %259, align 4
  br label %267

265:                                              ; preds = %262
  %266 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %244, i32 noundef %263, ptr noundef nonnull @.str.58) #13
  br label %292

267:                                              ; preds = %264, %256
  %268 = icmp ugt ptr %257, inttoptr (i32 -4096 to ptr)
  br i1 %268, label %269, label %274

269:                                              ; preds = %267
  %270 = ptrtoint ptr %257 to i32
  switch i32 %270, label %272 [
    i32 -6, label %271
    i32 -19, label %271
  ]

271:                                              ; preds = %269, %269
  store ptr null, ptr %258, align 4
  br label %274

272:                                              ; preds = %269
  %273 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %244, i32 noundef %270, ptr noundef nonnull @.str.59) #13
  br label %292

274:                                              ; preds = %271, %267
  %275 = tail call ptr @devm_phy_get(ptr noundef %244, ptr noundef nonnull @.str.60) #13
  %276 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  store ptr %275, ptr %276, align 4
  %277 = icmp ugt ptr %275, inttoptr (i32 -4096 to ptr)
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = ptrtoint ptr %275 to i32
  switch i32 %279, label %281 [
    i32 -19, label %280
    i32 -38, label %280
  ]

280:                                              ; preds = %278, %278
  store ptr null, ptr %276, align 4
  br label %283

281:                                              ; preds = %278
  %282 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %244, i32 noundef %279, ptr noundef nonnull @.str.58) #13
  br label %292

283:                                              ; preds = %280, %274
  %284 = tail call ptr @devm_phy_get(ptr noundef %244, ptr noundef nonnull @.str.61) #13
  %285 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  store ptr %284, ptr %285, align 4
  %286 = icmp ugt ptr %284, inttoptr (i32 -4096 to ptr)
  br i1 %286, label %287, label %295

287:                                              ; preds = %283
  %288 = ptrtoint ptr %284 to i32
  switch i32 %288, label %290 [
    i32 -19, label %289
    i32 -38, label %289
  ]

289:                                              ; preds = %287, %287
  store ptr null, ptr %285, align 4
  br label %295

290:                                              ; preds = %287
  %291 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %244, i32 noundef %288, ptr noundef nonnull @.str.59) #13
  br label %292

292:                                              ; preds = %290, %281, %272, %265
  %293 = phi i32 [ %291, %290 ], [ %282, %281 ], [ %273, %272 ], [ %266, %265 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %945

295:                                              ; preds = %292, %289, %283
  store i8 1, ptr %239, align 4
  br label %296

296:                                              ; preds = %295, %238
  %297 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %306, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.usb_phy, ptr %298, i32 0, i32 22
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  %305 = tail call i32 %302(ptr noundef nonnull %298) #13
  br label %306

306:                                              ; preds = %304, %300, %296
  %307 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 24
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %316, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.usb_phy, ptr %308, i32 0, i32 22
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %310
  %315 = tail call i32 %312(ptr noundef nonnull %308) #13
  br label %316

316:                                              ; preds = %314, %310, %306
  %317 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %318 = load ptr, ptr %317, align 4
  %319 = tail call i32 @phy_init(ptr noundef %318) #13
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %945, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %323 = load ptr, ptr %322, align 4
  %324 = tail call i32 @phy_init(ptr noundef %323) #13
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load ptr, ptr %317, align 4
  %328 = tail call i32 @phy_exit(ptr noundef %327) #13
  br label %945

329:                                              ; preds = %321
  %330 = tail call fastcc i32 @dwc3_core_soft_reset(ptr noundef %0)
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %923

332:                                              ; preds = %329
  %333 = icmp eq i32 %4, 2
  br i1 %333, label %334, label %429

334:                                              ; preds = %332
  %335 = load i32, ptr %48, align 4
  %336 = icmp eq i32 %335, 21811
  br i1 %336, label %337, label %341

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %339 = load i32, ptr %338, align 4
  %340 = icmp ult i32 %339, 1429412171
  br i1 %340, label %429, label %341

341:                                              ; preds = %337, %334
  %342 = load i48, ptr %62, align 4
  %343 = and i48 %342, 134217728
  %344 = icmp eq i48 %343, 0
  br i1 %344, label %345, label %385

345:                                              ; preds = %341
  %346 = load ptr, ptr %5, align 4
  %347 = getelementptr i8, ptr %346, i32 448
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %349 = getelementptr i8, ptr %346, i32 -49408
  %350 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %365

352:                                              ; preds = %345
  %353 = tail call ptr @llvm.thread.pointer() #13
  %354 = getelementptr inbounds %struct.thread_info, ptr %353, i32 0, i32 2
  %355 = load i32, ptr %354, align 8
  %356 = lshr i32 %355, 5
  %357 = getelementptr i32, ptr @__cpu_online_mask, i32 %356
  %358 = load volatile i32, ptr %357, align 4
  %359 = and i32 %355, 31
  %360 = shl nuw i32 1, %359
  %361 = and i32 %360, %358
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %352
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %364 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %349, i32 noundef 49856, i32 noundef %348) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %365

365:                                              ; preds = %363, %352, %345
  %366 = or i32 %348, 131072
  %367 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %368 = getelementptr i8, ptr %367, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %368, i32 %366) #13, !srcloc !13
  %369 = getelementptr i8, ptr %367, i32 -49408
  %370 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %365
  %373 = tail call ptr @llvm.thread.pointer() #13
  %374 = getelementptr inbounds %struct.thread_info, ptr %373, i32 0, i32 2
  %375 = load i32, ptr %374, align 8
  %376 = lshr i32 %375, 5
  %377 = getelementptr i32, ptr @__cpu_online_mask, i32 %376
  %378 = load volatile i32, ptr %377, align 4
  %379 = and i32 %375, 31
  %380 = shl nuw i32 1, %379
  %381 = and i32 %380, %378
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %372
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %384 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %369, i32 noundef 49856, i32 noundef %366) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %385

385:                                              ; preds = %383, %372, %365, %341
  %386 = load i48, ptr %62, align 4
  %387 = and i48 %386, 268435456
  %388 = icmp eq i48 %387, 0
  br i1 %388, label %389, label %429

389:                                              ; preds = %385
  %390 = load ptr, ptr %5, align 4
  %391 = getelementptr i8, ptr %390, i32 256
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %391) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %393 = getelementptr i8, ptr %390, i32 -49408
  %394 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %409

396:                                              ; preds = %389
  %397 = tail call ptr @llvm.thread.pointer() #13
  %398 = getelementptr inbounds %struct.thread_info, ptr %397, i32 0, i32 2
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 5
  %401 = getelementptr i32, ptr @__cpu_online_mask, i32 %400
  %402 = load volatile i32, ptr %401, align 4
  %403 = and i32 %399, 31
  %404 = shl nuw i32 1, %403
  %405 = and i32 %404, %402
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %396
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %408 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %393, i32 noundef 49664, i32 noundef %392) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %409

409:                                              ; preds = %407, %396, %389
  %410 = or i32 %392, 64
  %411 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %412 = getelementptr i8, ptr %411, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %412, i32 %410) #13, !srcloc !13
  %413 = getelementptr i8, ptr %411, i32 -49408
  %414 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %409
  %417 = tail call ptr @llvm.thread.pointer() #13
  %418 = getelementptr inbounds %struct.thread_info, ptr %417, i32 0, i32 2
  %419 = load i32, ptr %418, align 8
  %420 = lshr i32 %419, 5
  %421 = getelementptr i32, ptr @__cpu_online_mask, i32 %420
  %422 = load volatile i32, ptr %421, align 4
  %423 = and i32 %419, 31
  %424 = shl nuw i32 1, %423
  %425 = and i32 %424, %422
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %416
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %428 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %413, i32 noundef 49664, i32 noundef %410) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %429

429:                                              ; preds = %427, %416, %409, %385, %337, %332
  %430 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 4
  %431 = load i32, ptr %430, align 4
  %432 = load ptr, ptr %5, align 4
  %433 = getelementptr i8, ptr %432, i32 16
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %435 = getelementptr i8, ptr %432, i32 -49408
  %436 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %451

438:                                              ; preds = %429
  %439 = tail call ptr @llvm.thread.pointer() #13
  %440 = getelementptr inbounds %struct.thread_info, ptr %439, i32 0, i32 2
  %441 = load i32, ptr %440, align 8
  %442 = lshr i32 %441, 5
  %443 = getelementptr i32, ptr @__cpu_online_mask, i32 %442
  %444 = load volatile i32, ptr %443, align 4
  %445 = and i32 %441, 31
  %446 = shl nuw i32 1, %445
  %447 = and i32 %446, %444
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %438
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %450 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %435, i32 noundef 49424, i32 noundef %434) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %451

451:                                              ; preds = %449, %438, %429
  %452 = and i32 %434, -49
  %453 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 1
  %454 = load i32, ptr %453, align 4
  %455 = lshr i32 %454, 24
  %456 = and i32 %455, 3
  switch i32 %456, label %477 [
    i32 1, label %457
    i32 2, label %472
  ]

457:                                              ; preds = %451
  %458 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 32
  %459 = load i32, ptr %458, align 4
  switch i32 %459, label %470 [
    i32 1, label %460
    i32 3, label %460
  ]

460:                                              ; preds = %457, %457
  %461 = load i32, ptr %48, align 4
  %462 = icmp eq i32 %461, 21811
  br i1 %462, label %463, label %470

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %465 = load i32, ptr %464, align 4
  %466 = add i32 %465, -1429414154
  %467 = icmp ult i32 %466, 1025
  br i1 %467, label %468, label %470

468:                                              ; preds = %463
  %469 = or i32 %452, 1025
  br label %477

470:                                              ; preds = %463, %460, %457
  %471 = and i32 %434, -50
  br label %477

472:                                              ; preds = %451
  %473 = lshr i32 %431, 13
  %474 = and i32 %473, 15
  %475 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 48
  store i32 %474, ptr %475, align 4
  %476 = or i32 %452, 2
  br label %477

477:                                              ; preds = %472, %470, %468, %451
  %478 = phi i32 [ %452, %451 ], [ %476, %472 ], [ %469, %468 ], [ %471, %470 ]
  %479 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 6
  %480 = load i32, ptr %479, align 4
  %481 = and i32 %480, 128
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %477
  %484 = load i48, ptr %62, align 4
  br label %490

485:                                              ; preds = %477
  %486 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %487 = load ptr, ptr %486, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %487, ptr noundef nonnull @.str.62) #14
  %488 = load i48, ptr %62, align 4
  %489 = or i48 %488, 512
  store i48 %489, ptr %62, align 4
  br label %490

490:                                              ; preds = %485, %483
  %491 = phi i48 [ %484, %483 ], [ %489, %485 ]
  %492 = and i48 %491, 524800
  %493 = icmp eq i48 %492, 524288
  %494 = load i1, ptr @dwc3_core_setup_global_control.__already_done, align 1
  %495 = xor i1 %494, true
  %496 = select i1 %493, i1 %495, i1 false
  %497 = trunc i48 %491 to i32
  br i1 %496, label %498, label %502, !prof !22

498:                                              ; preds = %490
  store i1 true, ptr @dwc3_core_setup_global_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 836, i32 noundef 9, ptr noundef nonnull @.str.64) #13
  %499 = load i48, ptr %62, align 4
  %500 = and i48 %499, 524800
  %501 = trunc i48 %499 to i32
  br label %502

502:                                              ; preds = %498, %490
  %503 = phi i48 [ %500, %498 ], [ %492, %490 ]
  %504 = phi i32 [ %501, %498 ], [ %497, %490 ]
  %505 = icmp eq i48 %503, 524800
  %506 = and i32 %478, -9
  %507 = select i1 %505, i32 8, i32 0
  %508 = or i32 %507, %506
  %509 = lshr i32 %504, 18
  %510 = and i32 %509, 4
  %511 = or i32 %508, %510
  %512 = load i32, ptr %48, align 4
  %513 = icmp eq i32 %512, 21811
  br i1 %513, label %514, label %520

514:                                              ; preds = %502
  %515 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %516 = load i32, ptr %515, align 4
  %517 = icmp ult i32 %516, 1429412106
  %518 = or i32 %511, 65536
  %519 = select i1 %517, i32 %518, i32 %511
  br label %520

520:                                              ; preds = %514, %502
  %521 = phi i32 [ %511, %502 ], [ %519, %514 ]
  %522 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %523 = getelementptr i8, ptr %522, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %523, i32 %521) #13, !srcloc !13
  %524 = getelementptr i8, ptr %522, i32 -49408
  %525 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %540

527:                                              ; preds = %520
  %528 = tail call ptr @llvm.thread.pointer() #13
  %529 = getelementptr inbounds %struct.thread_info, ptr %528, i32 0, i32 2
  %530 = load i32, ptr %529, align 8
  %531 = lshr i32 %530, 5
  %532 = getelementptr i32, ptr @__cpu_online_mask, i32 %531
  %533 = load volatile i32, ptr %532, align 4
  %534 = and i32 %530, 31
  %535 = shl nuw i32 1, %534
  %536 = and i32 %535, %533
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %527
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %539 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %524, i32 noundef 49424, i32 noundef %521) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %540

540:                                              ; preds = %538, %527, %520
  %541 = load i32, ptr %141, align 4
  %542 = lshr i32 %541, 12
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 63
  %545 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 65
  store i8 %544, ptr %545, align 1
  %546 = load i48, ptr %62, align 4
  %547 = and i48 %546, 32
  %548 = icmp eq i48 %547, 0
  br i1 %548, label %580, label %549

549:                                              ; preds = %540
  %550 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 48
  %551 = load i32, ptr %550, align 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %580, label %553

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 3
  %555 = load ptr, ptr %554, align 4
  %556 = icmp eq ptr %555, null
  br i1 %556, label %580, label %557, !prof !21

557:                                              ; preds = %553
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 506, i32 noundef 9, ptr noundef null) #13
  %558 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %559 = load ptr, ptr %558, align 4
  %560 = load ptr, ptr %554, align 4
  %561 = load i32, ptr %550, align 4
  %562 = shl i32 %561, 12
  %563 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %559, ptr noundef %560, i32 noundef %562) #13
  %564 = icmp eq i32 %563, -1
  br i1 %564, label %565, label %567

565:                                              ; preds = %557
  %566 = load ptr, ptr %558, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %566, ptr noundef nonnull @.str.65) #14
  br label %923

567:                                              ; preds = %557
  %568 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 7
  store i32 %563, ptr %568, align 4
  %569 = tail call i32 @dwc3_send_gadget_generic_command(ptr noundef %0, i32 noundef 4, i32 noundef %563) #13
  %570 = icmp slt i32 %569, 0
  br i1 %570, label %574, label %571

571:                                              ; preds = %567
  %572 = tail call i32 @dwc3_send_gadget_generic_command(ptr noundef %0, i32 noundef 5, i32 noundef 0) #13
  %573 = icmp slt i32 %572, 0
  br i1 %573, label %574, label %580

574:                                              ; preds = %571, %567
  %575 = phi i32 [ %569, %567 ], [ %572, %571 ]
  %576 = load ptr, ptr %558, align 4
  %577 = load i32, ptr %568, align 4
  %578 = load i32, ptr %550, align 4
  %579 = shl i32 %578, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %576, i32 noundef %577, i32 noundef %579, i32 noundef 0, i32 noundef 0) #13
  br label %923

580:                                              ; preds = %571, %553, %549, %540
  %581 = load i32, ptr %48, align 4
  %582 = icmp eq i32 %581, 21811
  br i1 %582, label %583, label %587

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %585 = load i32, ptr %584, align 4
  %586 = icmp ult i32 %585, 1429415178
  br i1 %586, label %637, label %587

587:                                              ; preds = %583, %580
  %588 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 41
  %589 = load i32, ptr %588, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %637, label %591

591:                                              ; preds = %587
  %592 = load ptr, ptr %5, align 4
  %593 = getelementptr i8, ptr %592, i32 1328
  %594 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %593) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %595 = getelementptr i8, ptr %592, i32 -49408
  %596 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %597 = icmp sgt i32 %596, 0
  br i1 %597, label %598, label %611

598:                                              ; preds = %591
  %599 = tail call ptr @llvm.thread.pointer() #13
  %600 = getelementptr inbounds %struct.thread_info, ptr %599, i32 0, i32 2
  %601 = load i32, ptr %600, align 8
  %602 = lshr i32 %601, 5
  %603 = getelementptr i32, ptr @__cpu_online_mask, i32 %602
  %604 = load volatile i32, ptr %603, align 4
  %605 = and i32 %601, 31
  %606 = shl nuw i32 1, %605
  %607 = and i32 %606, %604
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %611, label %609

609:                                              ; preds = %598
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %610 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %595, i32 noundef 50736, i32 noundef %594) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %611

611:                                              ; preds = %609, %598, %591
  %612 = and i32 %594, 63
  %613 = load i32, ptr %588, align 4
  %614 = icmp eq i32 %612, %613
  br i1 %614, label %637, label %615

615:                                              ; preds = %611
  %616 = and i32 %594, -192
  %617 = or i32 %616, %613
  %618 = or i32 %617, 128
  %619 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %620 = getelementptr i8, ptr %619, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 %618) #13, !srcloc !13
  %621 = getelementptr i8, ptr %619, i32 -49408
  %622 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %623 = icmp sgt i32 %622, 0
  br i1 %623, label %624, label %637

624:                                              ; preds = %615
  %625 = tail call ptr @llvm.thread.pointer() #13
  %626 = getelementptr inbounds %struct.thread_info, ptr %625, i32 0, i32 2
  %627 = load i32, ptr %626, align 8
  %628 = lshr i32 %627, 5
  %629 = getelementptr i32, ptr @__cpu_online_mask, i32 %628
  %630 = load volatile i32, ptr %629, align 4
  %631 = and i32 %627, 31
  %632 = shl nuw i32 1, %631
  %633 = and i32 %632, %630
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %637, label %635

635:                                              ; preds = %624
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %636 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %621, i32 noundef 50736, i32 noundef %618) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %637

637:                                              ; preds = %635, %624, %615, %611, %587, %583
  %638 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 42
  %639 = load i32, ptr %638, align 4
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %684, label %641

641:                                              ; preds = %637
  %642 = load ptr, ptr %5, align 4
  %643 = getelementptr i8, ptr %642, i32 44
  %644 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %643) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %645 = getelementptr i8, ptr %642, i32 -49408
  %646 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %647 = icmp sgt i32 %646, 0
  br i1 %647, label %648, label %661

648:                                              ; preds = %641
  %649 = tail call ptr @llvm.thread.pointer() #13
  %650 = getelementptr inbounds %struct.thread_info, ptr %649, i32 0, i32 2
  %651 = load i32, ptr %650, align 8
  %652 = lshr i32 %651, 5
  %653 = getelementptr i32, ptr @__cpu_online_mask, i32 %652
  %654 = load volatile i32, ptr %653, align 4
  %655 = and i32 %651, 31
  %656 = shl nuw i32 1, %655
  %657 = and i32 %656, %654
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %661, label %659

659:                                              ; preds = %648
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %660 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %645, i32 noundef 49452, i32 noundef %644) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %661

661:                                              ; preds = %659, %648, %641
  %662 = load i32, ptr %638, align 4
  %663 = and i32 %644, 4194303
  %664 = shl i32 %662, 22
  %665 = or i32 %664, %663
  %666 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %667 = getelementptr i8, ptr %666, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %667, i32 %665) #13, !srcloc !13
  %668 = getelementptr i8, ptr %666, i32 -49408
  %669 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %670 = icmp sgt i32 %669, 0
  br i1 %670, label %671, label %684

671:                                              ; preds = %661
  %672 = tail call ptr @llvm.thread.pointer() #13
  %673 = getelementptr inbounds %struct.thread_info, ptr %672, i32 0, i32 2
  %674 = load i32, ptr %673, align 8
  %675 = lshr i32 %674, 5
  %676 = getelementptr i32, ptr @__cpu_online_mask, i32 %675
  %677 = load volatile i32, ptr %676, align 4
  %678 = and i32 %674, 31
  %679 = shl nuw i32 1, %678
  %680 = and i32 %679, %677
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %684, label %682

682:                                              ; preds = %671
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %683 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %668, i32 noundef 49452, i32 noundef %665) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %684

684:                                              ; preds = %682, %671, %661, %637
  %685 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %686 = load ptr, ptr %685, align 4
  %687 = load ptr, ptr %5, align 4
  %688 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %687) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %689 = getelementptr i8, ptr %687, i32 -49408
  %690 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %691 = icmp sgt i32 %690, 0
  br i1 %691, label %692, label %705

692:                                              ; preds = %684
  %693 = tail call ptr @llvm.thread.pointer() #13
  %694 = getelementptr inbounds %struct.thread_info, ptr %693, i32 0, i32 2
  %695 = load i32, ptr %694, align 8
  %696 = lshr i32 %695, 5
  %697 = getelementptr i32, ptr @__cpu_online_mask, i32 %696
  %698 = load volatile i32, ptr %697, align 4
  %699 = and i32 %695, 31
  %700 = shl nuw i32 1, %699
  %701 = and i32 %700, %698
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %705, label %703

703:                                              ; preds = %692
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %704 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %689, i32 noundef 49408, i32 noundef %688) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %705

705:                                              ; preds = %703, %692, %684
  %706 = tail call i32 @device_property_read_u32_array(ptr noundef %686, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 0) #13
  %707 = icmp slt i32 %706, 1
  br i1 %707, label %770, label %708

708:                                              ; preds = %705
  %709 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %706, i32 4) #13
  %710 = extractvalue { i32, i1 } %709, 1
  br i1 %710, label %715, label %711, !prof !22

711:                                              ; preds = %708
  %712 = extractvalue { i32, i1 } %709, 0
  %713 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %712, i32 noundef 3520) #15
  %714 = icmp eq ptr %713, null
  br i1 %714, label %715, label %716

715:                                              ; preds = %711, %708
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %686, ptr noundef nonnull @.str.69) #14
  br label %770

716:                                              ; preds = %711
  %717 = tail call i32 @device_property_read_u32_array(ptr noundef %686, ptr noundef nonnull @.str.68, ptr noundef nonnull %713, i32 noundef %706) #13
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %720, label %719

719:                                              ; preds = %716
  tail call void @kfree(ptr noundef nonnull %713) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %686, ptr noundef nonnull @.str.70) #14
  br label %770

720:                                              ; preds = %716
  %721 = load i32, ptr %713, align 64
  %722 = icmp ugt i32 %706, 1
  br i1 %722, label %723, label %731

723:                                              ; preds = %723, %720
  %724 = phi i32 [ %729, %723 ], [ 1, %720 ]
  %725 = phi i32 [ %728, %723 ], [ %721, %720 ]
  %726 = getelementptr i32, ptr %713, i32 %724
  %727 = load i32, ptr %726, align 4
  %728 = tail call i32 @llvm.umax.i32(i32 %727, i32 %725) #13
  %729 = add nuw nsw i32 %724, 1
  %730 = icmp eq i32 %729, %706
  br i1 %730, label %731, label %723

731:                                              ; preds = %723, %720
  %732 = phi i32 [ %721, %720 ], [ %728, %723 ]
  tail call void @kfree(ptr noundef nonnull %713) #13
  %733 = and i32 %688, -256
  %734 = zext i1 %722 to i32
  %735 = or i32 %733, %734
  switch i32 %732, label %750 [
    i32 256, label %736
    i32 128, label %738
    i32 64, label %740
    i32 32, label %742
    i32 16, label %744
    i32 8, label %746
    i32 4, label %748
    i32 1, label %751
  ]

736:                                              ; preds = %731
  %737 = or i32 %735, 128
  br label %751

738:                                              ; preds = %731
  %739 = or i32 %735, 64
  br label %751

740:                                              ; preds = %731
  %741 = or i32 %735, 32
  br label %751

742:                                              ; preds = %731
  %743 = or i32 %735, 16
  br label %751

744:                                              ; preds = %731
  %745 = or i32 %735, 8
  br label %751

746:                                              ; preds = %731
  %747 = or i32 %735, 4
  br label %751

748:                                              ; preds = %731
  %749 = or i32 %735, 2
  br label %751

750:                                              ; preds = %731
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %686, ptr noundef nonnull @.str.71) #14
  br label %751

751:                                              ; preds = %750, %748, %746, %744, %742, %740, %738, %736, %731
  %752 = phi i32 [ %735, %750 ], [ %735, %731 ], [ %749, %748 ], [ %747, %746 ], [ %745, %744 ], [ %743, %742 ], [ %741, %740 ], [ %739, %738 ], [ %737, %736 ]
  %753 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %753, i32 %752) #13, !srcloc !13
  %754 = getelementptr i8, ptr %753, i32 -49408
  %755 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %756 = icmp sgt i32 %755, 0
  br i1 %756, label %757, label %770

757:                                              ; preds = %751
  %758 = tail call ptr @llvm.thread.pointer() #13
  %759 = getelementptr inbounds %struct.thread_info, ptr %758, i32 0, i32 2
  %760 = load i32, ptr %759, align 8
  %761 = lshr i32 %760, 5
  %762 = getelementptr i32, ptr @__cpu_online_mask, i32 %761
  %763 = load volatile i32, ptr %762, align 4
  %764 = and i32 %760, 31
  %765 = shl nuw i32 1, %764
  %766 = and i32 %765, %763
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %770, label %768

768:                                              ; preds = %757
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %769 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %754, i32 noundef 49408, i32 noundef %752) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %770

770:                                              ; preds = %768, %757, %751, %719, %715, %705
  %771 = load ptr, ptr %297, align 4
  %772 = icmp eq ptr %771, null
  br i1 %772, label %779, label %773

773:                                              ; preds = %770
  %774 = getelementptr inbounds %struct.usb_phy, ptr %771, i32 0, i32 26
  %775 = load ptr, ptr %774, align 4
  %776 = icmp eq ptr %775, null
  br i1 %776, label %779, label %777

777:                                              ; preds = %773
  %778 = tail call i32 %775(ptr noundef nonnull %771, i32 noundef 0) #13
  br label %779

779:                                              ; preds = %777, %773, %770
  %780 = load ptr, ptr %307, align 4
  %781 = icmp eq ptr %780, null
  br i1 %781, label %788, label %782

782:                                              ; preds = %779
  %783 = getelementptr inbounds %struct.usb_phy, ptr %780, i32 0, i32 26
  %784 = load ptr, ptr %783, align 4
  %785 = icmp eq ptr %784, null
  br i1 %785, label %788, label %786

786:                                              ; preds = %782
  %787 = tail call i32 %784(ptr noundef nonnull %780, i32 noundef 0) #13
  br label %788

788:                                              ; preds = %786, %782, %779
  %789 = load ptr, ptr %317, align 4
  %790 = tail call i32 @phy_power_on(ptr noundef %789) #13
  %791 = icmp slt i32 %790, 0
  br i1 %791, label %904, label %792

792:                                              ; preds = %788
  %793 = load ptr, ptr %322, align 4
  %794 = tail call i32 @phy_power_on(ptr noundef %793) #13
  %795 = icmp slt i32 %794, 0
  br i1 %795, label %901, label %796

796:                                              ; preds = %792
  %797 = tail call i32 @dwc3_event_buffers_setup(ptr noundef %0)
  %798 = load i32, ptr %48, align 4
  %799 = icmp eq i32 %798, 21811
  br i1 %799, label %800, label %816

800:                                              ; preds = %796
  %801 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %802 = load i32, ptr %801, align 4
  %803 = icmp ugt i32 %802, 1429418249
  br i1 %803, label %804, label %813

804:                                              ; preds = %800
  %805 = load ptr, ptr %5, align 4
  %806 = tail call fastcc i32 @dwc3_readl(ptr noundef %805, i32 noundef 49564)
  %807 = or i32 %806, 16384
  %808 = load ptr, ptr %5, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %808, i32 noundef 49564, i32 noundef %807)
  %809 = load i32, ptr %48, align 4
  %810 = icmp eq i32 %809, 21811
  br i1 %810, label %811, label %816

811:                                              ; preds = %804
  %812 = load i32, ptr %801, align 4
  br label %813

813:                                              ; preds = %811, %800
  %814 = phi i32 [ %812, %811 ], [ %802, %800 ]
  %815 = icmp ult i32 %814, 1429415178
  br i1 %815, label %845, label %816

816:                                              ; preds = %813, %804, %796
  %817 = load ptr, ptr %5, align 4
  %818 = tail call fastcc i32 @dwc3_readl(ptr noundef %817, i32 noundef 49436)
  %819 = load i32, ptr %48, align 4
  %820 = icmp eq i32 %819, 21811
  br i1 %820, label %821, label %828

821:                                              ; preds = %816
  %822 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %823 = load i32, ptr %822, align 4
  %824 = icmp ult i32 %823, 1429416202
  %825 = or i32 %818, 16777216
  %826 = select i1 %824, i32 %818, i32 %825
  %827 = icmp ult i32 %823, 1429417994
  br i1 %827, label %833, label %830

828:                                              ; preds = %816
  %829 = or i32 %818, 16777216
  br label %830

830:                                              ; preds = %828, %821
  %831 = phi i32 [ %826, %821 ], [ %829, %828 ]
  %832 = or i32 %831, -2147483648
  br label %833

833:                                              ; preds = %830, %821
  %834 = phi i32 [ %826, %821 ], [ %832, %830 ]
  %835 = load i48, ptr %62, align 4
  %836 = lshr i48 %835, 7
  %837 = trunc i48 %836 to i32
  %838 = and i32 %837, 268435456
  %839 = or i32 %838, %834
  %840 = lshr i48 %835, 19
  %841 = trunc i48 %840 to i32
  %842 = and i32 %841, 131072
  %843 = or i32 %839, %842
  %844 = load ptr, ptr %5, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %844, i32 noundef 49436, i32 noundef %843)
  br label %845

845:                                              ; preds = %833, %813
  %846 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 32
  %847 = load i32, ptr %846, align 4
  switch i32 %847, label %853 [
    i32 1, label %848
    i32 3, label %848
  ]

848:                                              ; preds = %845, %845
  %849 = load ptr, ptr %5, align 4
  %850 = tail call fastcc i32 @dwc3_readl(ptr noundef %849, i32 noundef 49452)
  %851 = or i32 %850, 16384
  %852 = load ptr, ptr %5, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %852, i32 noundef 49452, i32 noundef %851)
  br label %853

853:                                              ; preds = %848, %845
  %854 = load i32, ptr %48, align 4
  %855 = icmp eq i32 %854, 21811
  br i1 %855, label %945, label %856

856:                                              ; preds = %853
  %857 = load i32, ptr %846, align 4
  %858 = icmp eq i32 %857, 1
  br i1 %858, label %859, label %945

859:                                              ; preds = %856
  %860 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 73
  %861 = load i8, ptr %860, align 4
  %862 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 74
  %863 = load i8, ptr %862, align 1
  %864 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 75
  %865 = load i8, ptr %864, align 2
  %866 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 76
  %867 = load i8, ptr %866, align 1
  %868 = icmp ne i8 %861, 0
  %869 = icmp ne i8 %863, 0
  %870 = select i1 %868, i1 %869, i1 false
  br i1 %870, label %871, label %884

871:                                              ; preds = %859
  %872 = load ptr, ptr %5, align 4
  %873 = tail call fastcc i32 @dwc3_readl(ptr noundef %872, i32 noundef 49420)
  %874 = and i32 %873, -2048
  %875 = and i8 %861, 31
  %876 = zext i8 %875 to i32
  %877 = shl nuw nsw i32 %876, 5
  %878 = or i32 %874, %877
  %879 = and i8 %863, 31
  %880 = zext i8 %879 to i32
  %881 = or i32 %878, %880
  %882 = or i32 %881, 1024
  %883 = load ptr, ptr %5, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %883, i32 noundef 49420, i32 noundef %882)
  br label %884

884:                                              ; preds = %871, %859
  %885 = icmp ne i8 %865, 0
  %886 = icmp ne i8 %867, 0
  %887 = select i1 %885, i1 %886, i1 false
  br i1 %887, label %888, label %945

888:                                              ; preds = %884
  %889 = load ptr, ptr %5, align 4
  %890 = tail call fastcc i32 @dwc3_readl(ptr noundef %889, i32 noundef 49416)
  %891 = and i32 %890, -2048
  %892 = and i8 %865, 31
  %893 = zext i8 %892 to i32
  %894 = shl nuw nsw i32 %893, 5
  %895 = or i32 %891, %894
  %896 = and i8 %867, 31
  %897 = zext i8 %896 to i32
  %898 = or i32 %895, %897
  %899 = or i32 %898, 1024
  %900 = load ptr, ptr %5, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %900, i32 noundef 49416, i32 noundef %899)
  br label %945

901:                                              ; preds = %792
  %902 = load ptr, ptr %317, align 4
  %903 = tail call i32 @phy_power_off(ptr noundef %902) #13
  br label %904

904:                                              ; preds = %901, %788
  %905 = phi i32 [ %790, %788 ], [ %794, %901 ]
  %906 = load ptr, ptr %297, align 4
  %907 = icmp eq ptr %906, null
  br i1 %907, label %914, label %908

908:                                              ; preds = %904
  %909 = getelementptr inbounds %struct.usb_phy, ptr %906, i32 0, i32 26
  %910 = load ptr, ptr %909, align 4
  %911 = icmp eq ptr %910, null
  br i1 %911, label %914, label %912

912:                                              ; preds = %908
  %913 = tail call i32 %910(ptr noundef nonnull %906, i32 noundef 1) #13
  br label %914

914:                                              ; preds = %912, %908, %904
  %915 = load ptr, ptr %307, align 4
  %916 = icmp eq ptr %915, null
  br i1 %916, label %923, label %917

917:                                              ; preds = %914
  %918 = getelementptr inbounds %struct.usb_phy, ptr %915, i32 0, i32 26
  %919 = load ptr, ptr %918, align 4
  %920 = icmp eq ptr %919, null
  br i1 %920, label %923, label %921

921:                                              ; preds = %917
  %922 = tail call i32 %919(ptr noundef nonnull %915, i32 noundef 1) #13
  br label %923

923:                                              ; preds = %921, %917, %914, %574, %565, %329
  %924 = phi i32 [ %330, %329 ], [ -14, %565 ], [ %575, %574 ], [ %905, %914 ], [ %905, %917 ], [ %905, %921 ]
  %925 = load ptr, ptr %297, align 4
  %926 = icmp eq ptr %925, null
  br i1 %926, label %932, label %927

927:                                              ; preds = %923
  %928 = getelementptr inbounds %struct.usb_phy, ptr %925, i32 0, i32 23
  %929 = load ptr, ptr %928, align 4
  %930 = icmp eq ptr %929, null
  br i1 %930, label %932, label %931

931:                                              ; preds = %927
  tail call void %929(ptr noundef nonnull %925) #13
  br label %932

932:                                              ; preds = %931, %927, %923
  %933 = load ptr, ptr %307, align 4
  %934 = icmp eq ptr %933, null
  br i1 %934, label %940, label %935

935:                                              ; preds = %932
  %936 = getelementptr inbounds %struct.usb_phy, ptr %933, i32 0, i32 23
  %937 = load ptr, ptr %936, align 4
  %938 = icmp eq ptr %937, null
  br i1 %938, label %940, label %939

939:                                              ; preds = %935
  tail call void %937(ptr noundef nonnull %933) #13
  br label %940

940:                                              ; preds = %939, %935, %932
  %941 = load ptr, ptr %317, align 4
  %942 = tail call i32 @phy_exit(ptr noundef %941) #13
  %943 = load ptr, ptr %322, align 4
  %944 = tail call i32 @phy_exit(ptr noundef %943) #13
  br label %945

945:                                              ; preds = %940, %888, %884, %856, %853, %326, %316, %292
  %946 = phi i32 [ 0, %884 ], [ 0, %888 ], [ 0, %856 ], [ 0, %853 ], [ %319, %316 ], [ %324, %326 ], [ %924, %940 ], [ %293, %292 ]
  ret i32 %946
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_check_params(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 80
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %21 [
    i32 21811, label %13
    i32 13105, label %17
    i32 13106, label %31
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 1429417993
  br i1 %16, label %31, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 825372713
  br i1 %20, label %31, label %21

21:                                               ; preds = %17, %13, %10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.72) #14
  store i16 0, ptr %7, align 2
  br label %22

22:                                               ; preds = %21, %1
  %23 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 21811
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1429417994
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i16 1, ptr %7, align 2
  br label %31

31:                                               ; preds = %30, %26, %22, %17, %13, %10
  %32 = phi i32 [ 21811, %30 ], [ 21811, %26 ], [ %24, %22 ], [ %12, %10 ], [ 21811, %13 ], [ 13105, %17 ]
  %33 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 50
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %45 [
    i32 2, label %83
    i32 3, label %83
    i32 5, label %35
    i32 6, label %37
    i32 0, label %46
  ]

35:                                               ; preds = %31
  %36 = icmp eq i32 %6, 0
  br i1 %36, label %54, label %83

37:                                               ; preds = %31
  %38 = icmp eq i32 %32, 13106
  %39 = icmp eq i32 %6, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = icmp ne i32 %32, 13106
  %43 = icmp ne i32 %6, 2
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %54, label %56

45:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, i32 noundef %34) #14
  br label %46

46:                                               ; preds = %45, %31
  switch i32 %6, label %53 [
    i32 2, label %59
    i32 1, label %47
    i32 0, label %52
  ]

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 13106
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  store i32 5, ptr %33, align 4
  br label %83

52:                                               ; preds = %46
  store i32 3, ptr %33, align 4
  br label %83

53:                                               ; preds = %46
  store i32 5, ptr %33, align 4
  br label %83

54:                                               ; preds = %41, %37, %35
  %55 = phi ptr [ @.str.73, %35 ], [ @.str.74, %37 ], [ @.str.74, %41 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull %55) #14
  br label %56

56:                                               ; preds = %54, %41
  %57 = load i32, ptr %33, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %60, label %83

59:                                               ; preds = %47, %46
  store i32 6, ptr %33, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 52
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %71 [
    i32 1, label %63
    i32 2, label %66
    i32 3, label %66
  ]

63:                                               ; preds = %60
  %64 = icmp eq i32 %6, 1
  br i1 %64, label %65, label %83

65:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.76) #14
  br label %83

66:                                               ; preds = %60, %60
  %67 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 13105
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.77) #14
  br label %83

71:                                               ; preds = %60
  switch i32 %6, label %83 [
    i32 2, label %72
    i32 1, label %78
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 13106
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 3, ptr %61, align 4
  br label %83

77:                                               ; preds = %72
  store i32 1, ptr %61, align 4
  br label %83

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 13106
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 2, ptr %61, align 4
  br label %83

83:                                               ; preds = %82, %78, %77, %76, %71, %70, %66, %65, %63, %56, %53, %52, %51, %35, %31, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_init_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 32
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %64 [
    i32 2, label %6
    i32 1, label %31
    i32 3, label %56
  ]

6:                                                ; preds = %1
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef 2)
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_phy, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_otg, ptr %12, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef nonnull %12, i1 noundef zeroext false) #13
  br label %20

20:                                               ; preds = %18, %14, %10, %6
  %21 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @phy_set_mode_ext(ptr noundef %22, i32 noundef 6, i32 noundef 0) #13
  %24 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @phy_set_mode_ext(ptr noundef %25, i32 noundef 6, i32 noundef 0) #13
  %27 = tail call i32 @dwc3_gadget_init(ptr noundef %0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %20
  %30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %27, ptr noundef nonnull @.str.78) #13
  br label %65

31:                                               ; preds = %1
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef 1)
  %32 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.usb_phy, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 %41(ptr noundef nonnull %37, i1 noundef zeroext true) #13
  br label %45

45:                                               ; preds = %43, %39, %35, %31
  %46 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @phy_set_mode_ext(ptr noundef %47, i32 noundef 1, i32 noundef 0) #13
  %49 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @phy_set_mode_ext(ptr noundef %50, i32 noundef 1, i32 noundef 0) #13
  %52 = tail call i32 @dwc3_host_init(ptr noundef %0) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %52, ptr noundef nonnull @.str.79) #13
  br label %65

56:                                               ; preds = %1
  store i32 -32, ptr %0, align 4
  %57 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 1
  store volatile ptr %57, ptr %57, align 4
  %58 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 1, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 2
  store ptr @__dwc3_set_mode, ptr %59, align 4
  %60 = tail call i32 @dwc3_drd_init(ptr noundef %0) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %60, ptr noundef nonnull @.str.80) #13
  br label %65

64:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.81, i32 noundef %5) #14
  br label %65

65:                                               ; preds = %64, %62, %56, %54, %45, %29, %20
  %66 = phi i32 [ -22, %64 ], [ %63, %62 ], [ %55, %54 ], [ %30, %29 ], [ 0, %56 ], [ 0, %45 ], [ 0, %20 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_debugfs_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_free_scratch_buffers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %3 = load i48, ptr %2, align 4
  %4 = and i48 %3, 32
  %5 = icmp eq i48 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 48
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14, !prof !21

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 553, i32 noundef 9, ptr noundef null) #13
  %15 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %7, align 4
  %20 = shl i32 %19, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef 0, i32 noundef 0) #13
  %21 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %21) #13
  br label %22

22:                                               ; preds = %14, %10, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_free_event_buffers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %10, i32 noundef %12, i32 noundef 0) #13
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_ssp_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_soft_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %98, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1540
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %10 = getelementptr i8, ptr %7, i32 -49408
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %25 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %10, i32 noundef 50948, i32 noundef %9) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %5
  %27 = or i32 %9, 1073741824
  %28 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %29 = getelementptr i8, ptr %28, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #13, !srcloc !13
  %30 = getelementptr i8, ptr %28, i32 -49408
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = tail call ptr @llvm.thread.pointer() #13
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %45 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %30, i32 noundef 50948, i32 noundef %27) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %46

46:                                               ; preds = %44, %33, %26
  %47 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %54 [
    i32 13105, label %49
    i32 13106, label %53
  ]

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 825831465
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %49, %46
  %55 = phi i32 [ 10, %53 ], [ 1000, %49 ], [ 1000, %46 ]
  %56 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  br label %57

57:                                               ; preds = %89, %54
  %58 = phi i32 [ %55, %54 ], [ %90, %89 ]
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr i8, ptr %59, i32 1540
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %62 = getelementptr i8, ptr %59, i32 -49408
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = tail call ptr @llvm.thread.pointer() #13
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %77 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %62, i32 noundef 50948, i32 noundef %61) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %78

78:                                               ; preds = %76, %65, %57
  %79 = and i32 %61, 1073741824
  %80 = icmp eq i32 %79, 0
  %81 = load i32, ptr %47, align 4
  br i1 %80, label %92, label %82

82:                                               ; preds = %78
  switch i32 %81, label %87 [
    i32 13105, label %83
    i32 13106, label %86
  ]

83:                                               ; preds = %82
  %84 = load i32, ptr %56, align 4
  %85 = icmp ugt i32 %84, 825831465
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %82
  tail call void @msleep(i32 noundef 20) #13
  br label %89

87:                                               ; preds = %83, %82
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748) #13
  br label %89

89:                                               ; preds = %87, %86
  %90 = add nsw i32 %58, -1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %57

92:                                               ; preds = %78
  %93 = icmp eq i32 %81, 13105
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load i32, ptr %56, align 4
  %96 = icmp ult i32 %95, 825765931
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @msleep(i32 noundef 50) #13
  br label %98

98:                                               ; preds = %97, %94, %92, %89, %1
  %99 = phi i32 [ 0, %1 ], [ 0, %97 ], [ 0, %94 ], [ 0, %92 ], [ -110, %89 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #13
  %5 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %17, !prof !22

8:                                                ; preds = %3
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %9 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %9, ptr noundef %16) #13
  br label %17

17:                                               ; preds = %15, %3
  br i1 %4, label %26, label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %1 to i32
  %21 = add i32 %20, 1073741824
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %19, i32 %22
  %24 = and i32 %20, 4095
  %25 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %23, i32 noundef %24, i32 noundef %2, i32 noundef 0, i32 noundef 0) #13
  br label %26

26:                                               ; preds = %18, %17
  %27 = phi i32 [ %25, %18 ], [ -1, %17 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_send_gadget_generic_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__dwc3_set_mode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #13
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @dwc3_otg_update(ptr noundef %0, i1 noundef zeroext false) #13
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 34
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %218, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %218, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %12, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 35
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %218

23:                                               ; preds = %19, %17
  switch i32 %15, label %30 [
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
  ]

24:                                               ; preds = %23
  tail call void @dwc3_host_exit(ptr noundef %0) #13
  br label %30

25:                                               ; preds = %23
  tail call void @dwc3_gadget_exit(ptr noundef %0) #13
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %0)
  br label %30

26:                                               ; preds = %23
  tail call void @dwc3_otg_exit(ptr noundef %0) #13
  %27 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #13
  %29 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 46
  store i32 0, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #13
  tail call void @dwc3_otg_update(ptr noundef %0, i1 noundef zeroext true) #13
  br label %30

30:                                               ; preds = %26, %25, %24, %23
  %31 = load i32, ptr %11, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %114, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %38 = getelementptr i8, ptr %35, i32 -49408
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = tail call ptr @llvm.thread.pointer() #13
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %53 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %38, i32 noundef 49424, i32 noundef %37) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %54

54:                                               ; preds = %52, %41, %33
  %55 = or i32 %37, 2048
  %56 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %57 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #13, !srcloc !13
  %58 = getelementptr i8, ptr %56, i32 -49408
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = tail call ptr @llvm.thread.pointer() #13
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %73 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %58, i32 noundef 49424, i32 noundef %55) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %74

74:                                               ; preds = %72, %61, %54
  tail call void @msleep(i32 noundef 100) #13
  %75 = load ptr, ptr %34, align 4
  %76 = getelementptr i8, ptr %75, i32 16
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %78 = getelementptr i8, ptr %75, i32 -49408
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = tail call ptr @llvm.thread.pointer() #13
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %93 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %78, i32 noundef 49424, i32 noundef %77) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %94

94:                                               ; preds = %92, %81, %74
  %95 = and i32 %77, -2049
  %96 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %97 = getelementptr i8, ptr %96, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #13, !srcloc !13
  %98 = getelementptr i8, ptr %96, i32 -49408
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = tail call ptr @llvm.thread.pointer() #13
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %104, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %109, %107
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %113 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %98, i32 noundef 49424, i32 noundef %95) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %114

114:                                              ; preds = %112, %101, %94, %30
  %115 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %116 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %115) #13
  %117 = load i32, ptr %11, align 4
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef %117)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %115, i32 noundef %116) #13
  %118 = load i32, ptr %11, align 4
  switch i32 %118, label %218 [
    i32 1, label %119
    i32 2, label %190
    i32 3, label %217
  ]

119:                                              ; preds = %114
  %120 = tail call i32 @dwc3_host_init(ptr noundef %0) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.79) #14
  br label %218

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.usb_phy, ptr %126, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.usb_otg, ptr %130, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = tail call i32 %134(ptr noundef nonnull %130, i1 noundef zeroext true) #13
  br label %138

138:                                              ; preds = %136, %132, %128, %124
  %139 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 @phy_set_mode_ext(ptr noundef %140, i32 noundef 1, i32 noundef 0) #13
  %142 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %143 = load ptr, ptr %142, align 4
  %144 = tail call i32 @phy_set_mode_ext(ptr noundef %143, i32 noundef 1, i32 noundef 0) #13
  %145 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %146 = load i48, ptr %145, align 4
  %147 = and i48 %146, 2199023255552
  %148 = icmp eq i48 %147, 0
  br i1 %148, label %218, label %149

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 1292
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %154 = getelementptr i8, ptr %151, i32 -49408
  %155 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %149
  %158 = tail call ptr @llvm.thread.pointer() #13
  %159 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 5
  %162 = getelementptr i32, ptr @__cpu_online_mask, i32 %161
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %160, 31
  %165 = shl nuw i32 1, %164
  %166 = and i32 %165, %163
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %169 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %154, i32 noundef 50700, i32 noundef %153) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %170

170:                                              ; preds = %168, %157, %149
  %171 = or i32 %153, 16384
  %172 = load ptr, ptr %150, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %173 = getelementptr i8, ptr %172, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #13, !srcloc !13
  %174 = getelementptr i8, ptr %172, i32 -49408
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %218

177:                                              ; preds = %170
  %178 = tail call ptr @llvm.thread.pointer() #13
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %218, label %188

188:                                              ; preds = %177
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %189 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %174, i32 noundef 50700, i32 noundef %171) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %218

190:                                              ; preds = %114
  %191 = tail call fastcc i32 @dwc3_core_soft_reset(ptr noundef %0)
  %192 = tail call i32 @dwc3_event_buffers_setup(ptr noundef %0)
  %193 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %206, label %196

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.usb_phy, ptr %194, i32 0, i32 5
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.usb_otg, ptr %198, i32 0, i32 8
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = tail call i32 %202(ptr noundef nonnull %198, i1 noundef zeroext false) #13
  br label %206

206:                                              ; preds = %204, %200, %196, %190
  %207 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %208 = load ptr, ptr %207, align 4
  %209 = tail call i32 @phy_set_mode_ext(ptr noundef %208, i32 noundef 6, i32 noundef 0) #13
  %210 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %211 = load ptr, ptr %210, align 4
  %212 = tail call i32 @phy_set_mode_ext(ptr noundef %211, i32 noundef 6, i32 noundef 0) #13
  %213 = tail call i32 @dwc3_gadget_init(ptr noundef %0) #13
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %206
  %216 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.82) #14
  br label %218

217:                                              ; preds = %114
  tail call void @dwc3_otg_init(ptr noundef %0) #13
  tail call void @dwc3_otg_update(ptr noundef %0, i1 noundef zeroext false) #13
  br label %218

218:                                              ; preds = %217, %215, %206, %188, %177, %170, %138, %122, %114, %19, %14, %10
  %219 = load ptr, ptr %3, align 4
  %220 = tail call i64 @ktime_get_mono_fast_ns() #13
  %221 = getelementptr inbounds %struct.device, ptr %219, i32 0, i32 11, i32 22
  store volatile i64 %220, ptr %221, align 8
  %222 = load ptr, ptr %3, align 4
  %223 = tail call i32 @__pm_runtime_suspend(ptr noundef %222, i32 noundef 13) #13
  tail call void @mutex_unlock(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_drd_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_host_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_core_exit(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %0)
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef nonnull %3) #13
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 24
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef nonnull %12) #13
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @phy_exit(ptr noundef %21) #13
  %23 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @phy_exit(ptr noundef %24) #13
  %26 = load ptr, ptr %2, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.usb_phy, ptr %26, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %26, i32 noundef 1) #13
  br label %34

34:                                               ; preds = %32, %28, %19
  %35 = load ptr, ptr %11, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.usb_phy, ptr %35, i32 0, i32 26
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %39(ptr noundef nonnull %35, i32 noundef 1) #13
  br label %43

43:                                               ; preds = %41, %37, %34
  %44 = load ptr, ptr %20, align 4
  %45 = tail call i32 @phy_power_off(ptr noundef %44) #13
  %46 = load ptr, ptr %23, align 4
  %47 = tail call i32 @phy_power_off(ptr noundef %46) #13
  %48 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 21
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 20
  %51 = load ptr, ptr %50, align 4
  tail call void @clk_bulk_disable(i32 noundef %49, ptr noundef %51) #13
  tail call void @clk_bulk_unprepare(i32 noundef %49, ptr noundef %51) #13
  %52 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 22
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @reset_control_assert(ptr noundef %53) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_drd_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %53

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %9 = load i48, ptr %8, align 4
  %10 = and i48 %9, 2199023255552
  %11 = icmp eq i48 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1292
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %17 = getelementptr i8, ptr %14, i32 -49408
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = tail call ptr @llvm.thread.pointer() #13
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %32 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %17, i32 noundef 50700, i32 noundef %16) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %33

33:                                               ; preds = %31, %20, %12
  %34 = or i32 %16, 16384
  %35 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %36 = getelementptr i8, ptr %35, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #13, !srcloc !13
  %37 = getelementptr i8, ptr %35, i32 -49408
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %52 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %37, i32 noundef 50700, i32 noundef %34) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %53

53:                                               ; preds = %51, %40, %33, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @dwc3_suspend_common(ptr noundef %3, [1 x i32] [i32 2])
  %4 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #13
  %5 = tail call fastcc i32 @dwc3_resume_common(ptr noundef %3, [1 x i32] [i32 16])
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #13
  %8 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #13
  tail call void @pm_runtime_enable(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %9 = load i48, ptr %8, align 4
  %10 = and i48 %9, 1
  %11 = icmp eq i48 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  tail call fastcc void @dwc3_suspend_common(ptr noundef %3, [1 x i32] [i32 1026])
  %13 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext true) #13
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ 0, %12 ], [ -16, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext false) #13
  %5 = tail call fastcc i32 @dwc3_resume_common(ptr noundef %3, [1 x i32] [i32 1040])
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @dwc3_gadget_process_pending_events(ptr noundef %3) #13
  br label %12

12:                                               ; preds = %11, %7
  %13 = tail call i64 @ktime_get_mono_fast_ns() #13
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %12, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_runtime_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %9 = load i48, ptr %8, align 4
  %10 = and i48 %9, 1
  %11 = icmp eq i48 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7, %1
  %13 = tail call i64 @ktime_get_mono_fast_ns() #13
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %13, ptr %14, align 8
  %15 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 8) #13
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 0, %12 ], [ -16, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_suspend_common(ptr noundef %0, [1 x i32] %1) unnamed_addr #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %95 [
    i32 2, label %6
    i32 1, label %23
    i32 3, label %81
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %95, label %17

17:                                               ; preds = %12, %6
  %18 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #13
  %20 = tail call i32 @dwc3_gadget_suspend(ptr noundef %0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #13
  %21 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 43
  %22 = load i32, ptr %21, align 4
  tail call void @synchronize_irq(i32 noundef %22) #13
  tail call fastcc void @dwc3_core_exit(ptr noundef %0)
  br label %95

23:                                               ; preds = %2
  %24 = and i32 %3, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call fastcc void @dwc3_core_exit(ptr noundef %0)
  br label %95

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %29 = load i48, ptr %28, align 4
  %30 = and i48 %29, 805306368
  %31 = icmp eq i48 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 256
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %37 = getelementptr i8, ptr %34, i32 -49408
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %52 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %37, i32 noundef 49664, i32 noundef %36) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %53

53:                                               ; preds = %51, %40, %32
  %54 = or i32 %36, 320
  %55 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %56 = getelementptr i8, ptr %55, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #13, !srcloc !13
  %57 = getelementptr i8, ptr %55, i32 -49408
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = tail call ptr @llvm.thread.pointer() #13
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %72 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %57, i32 noundef 49664, i32 noundef %54) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %73

73:                                               ; preds = %71, %60, %53
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #13
  br label %74

74:                                               ; preds = %73, %27
  %75 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @phy_pm_runtime_put_sync(ptr noundef %76) #13
  %78 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @phy_pm_runtime_put_sync(ptr noundef %79) #13
  br label %95

81:                                               ; preds = %2
  %82 = and i32 %3, 1024
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 45
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %89) #13
  %91 = tail call i32 @dwc3_gadget_suspend(ptr noundef %0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %90) #13
  %92 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 43
  %93 = load i32, ptr %92, align 4
  tail call void @synchronize_irq(i32 noundef %93) #13
  br label %94

94:                                               ; preds = %88, %84
  tail call void @dwc3_otg_exit(ptr noundef %0) #13
  tail call fastcc void @dwc3_core_exit(ptr noundef %0)
  br label %95

95:                                               ; preds = %94, %81, %74, %26, %17, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_put_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_resume_common(ptr noundef %0, [1 x i32] %1) unnamed_addr #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %92 [
    i32 2, label %6
    i32 1, label %13
    i32 3, label %77
  ]

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @dwc3_core_init_for_resume(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %92

9:                                                ; preds = %6
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef 2)
  %10 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #13
  %12 = tail call i32 @dwc3_gadget_resume(ptr noundef %0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #13
  br label %92

13:                                               ; preds = %2
  %14 = and i32 %3, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @dwc3_core_init_for_resume(ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef 1)
  br label %92

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 256
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %25 = getelementptr i8, ptr %22, i32 -49408
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = tail call ptr @llvm.thread.pointer() #13
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %40 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %25, i32 noundef 49664, i32 noundef %24) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %41

41:                                               ; preds = %39, %28, %20
  %42 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %43 = load i48, ptr %42, align 4
  %44 = and i48 %43, 268435456
  %45 = icmp eq i48 %44, 0
  %46 = and i32 %24, -65
  %47 = select i1 %45, i32 %24, i32 %46
  %48 = and i48 %43, 536870912
  %49 = icmp eq i48 %48, 0
  %50 = and i32 %47, -257
  %51 = select i1 %49, i32 %47, i32 %50
  %52 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %53 = getelementptr i8, ptr %52, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #13, !srcloc !13
  %54 = getelementptr i8, ptr %52, i32 -49408
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %41
  %58 = tail call ptr @llvm.thread.pointer() #13
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %69 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %54, i32 noundef 49664, i32 noundef %51) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %70

70:                                               ; preds = %68, %57, %41
  %71 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @phy_pm_runtime_get_sync(ptr noundef %72) #13
  %74 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 26
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @phy_pm_runtime_get_sync(ptr noundef %75) #13
  br label %92

77:                                               ; preds = %2
  %78 = and i32 %3, 1024
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @dwc3_core_init_for_resume(ptr noundef %0)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, ptr %4, align 4
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef %84)
  tail call void @dwc3_otg_init(ptr noundef %0) #13
  %85 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 45
  %86 = load i32, ptr %85, align 4
  switch i32 %86, label %92 [
    i32 1, label %87
    i32 2, label %88
  ]

87:                                               ; preds = %83
  tail call void @dwc3_otg_host_init(ptr noundef %0) #13
  br label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %89) #13
  %91 = tail call i32 @dwc3_gadget_resume(ptr noundef %0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %90) #13
  br label %92

92:                                               ; preds = %88, %87, %83, %80, %77, %70, %19, %16, %9, %6, %2
  %93 = phi i32 [ %7, %6 ], [ %17, %16 ], [ %81, %80 ], [ 0, %83 ], [ 0, %2 ], [ 0, %87 ], [ 0, %88 ], [ 0, %77 ], [ 0, %70 ], [ 0, %19 ], [ 0, %9 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_init_for_resume(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_deassert(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 21
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_bulk_prepare(i32 noundef %8, ptr noundef %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = tail call i32 @clk_bulk_enable(i32 noundef %8, ptr noundef %10) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_bulk_unprepare(i32 noundef %8, ptr noundef %10) #13
  br label %23

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @dwc3_core_init(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %7, align 4
  %22 = load ptr, ptr %9, align 4
  tail call void @clk_bulk_disable(i32 noundef %21, ptr noundef %22) #13
  tail call void @clk_bulk_unprepare(i32 noundef %21, ptr noundef %22) #13
  br label %23

23:                                               ; preds = %20, %16, %6
  %24 = phi i32 [ %18, %20 ], [ %14, %16 ], [ %11, %6 ]
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 @reset_control_assert(ptr noundef %25) #13
  br label %27

27:                                               ; preds = %23, %17, %1
  %28 = phi i32 [ %24, %23 ], [ %4, %1 ], [ 0, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_get_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_process_pending_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 3930575}
!9 = !{i64 2154956906}
!10 = !{i64 2154699077}
!11 = !{i64 2154699247}
!12 = !{i64 2154957281}
!13 = !{i64 3930157}
!14 = !{i64 2154719104}
!15 = !{i64 2154719276}
!16 = !{!"auto-init"}
!17 = !{i64 2147992042}
!18 = !{i64 490352, i64 2147980323, i64 2147980349, i64 2147980396, i64 2147980418, i64 2147980446, i64 2147980466}
!19 = !{i64 476921, i64 476946, i64 476968, i64 476984, i64 476996, i64 477016, i64 477040, i64 477056, i64 477068}
!20 = !{i64 2147992168}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i8 0, i8 2}
