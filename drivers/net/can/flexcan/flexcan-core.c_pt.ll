; ModuleID = '/llk/IR/drivers/net/can/flexcan/flexcan-core.c_pt.bc'
source_filename = "../drivers/net/can/flexcan/flexcan-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.flexcan_devtype_data = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.flexcan_platform_data = type { i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.flexcan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.137, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], %union.anon.138, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], i32, i32, i32, [199 x i32], %union.anon.141 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { [2 x [512 x i8]], [256 x i32], [64 x i32], [24 x i32], i32, [39 x i32], [6 x i32], [2 x i32], i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [18 x i32], [18 x i32], [18 x i32] }
%struct.can_berr_counter = type { i16, i16 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.144, i8, i8, i8, [8 x i8] }
%union.anon.144 = type { i8 }
%struct.flexcan_mb = type { i32, i32, [0 x i32] }
%struct.flexcan_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i64, i64, i32, ptr, ptr, %struct.flexcan_devtype_data, ptr, %struct.flexcan_stop_mode, i32, i32, ptr, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.flexcan_stop_mode = type { ptr, i8, i8 }

@flexcan_of_match = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx8qm_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx8mp_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx6q_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx28_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx25_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx25_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_imx25_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1010-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_p1010_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_vf610_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021ar2-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_ls1021a_r2_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160ar1-flexcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_lx2160a_r1_devtype_data }, %struct.of_device_id zeroinitializer], align 4
@flexcan_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"flexcan-mcf5441x\00\00\00\00", i32 ptrtoint (ptr @fsl_mcf5441x_devtype_data to i32) }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author542 = internal constant [87 x i8] c"author=Sascha Hauer <kernel@pengutronix.de>, Marc Kleine-Budde <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_license543 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description544 = internal constant [51 x i8] c"description=CAN port driver for flexcan based chip\00", section ".modinfo", align 1
@fsl_imx8qm_devtype_data = internal constant %struct.flexcan_devtype_data { i32 51820 }, align 4
@fsl_imx8mp_devtype_data = internal global %struct.flexcan_devtype_data { i32 51068 }, align 4
@fsl_imx6q_devtype_data = internal constant %struct.flexcan_devtype_data { i32 49516 }, align 4
@fsl_imx28_devtype_data = internal constant %struct.flexcan_devtype_data { i32 81984 }, align 4
@fsl_imx25_devtype_data = internal constant %struct.flexcan_devtype_data { i32 81986 }, align 4
@fsl_p1010_devtype_data = internal constant %struct.flexcan_devtype_data { i32 82114 }, align 4
@fsl_vf610_devtype_data = internal constant %struct.flexcan_devtype_data { i32 50300 }, align 4
@fsl_ls1021a_r2_devtype_data = internal constant %struct.flexcan_devtype_data { i32 49260 }, align 4
@fsl_lx2160a_r1_devtype_data = internal constant %struct.flexcan_devtype_data { i32 50812 }, align 4
@fsl_mcf5441x_devtype_data = internal constant %struct.flexcan_devtype_data { i32 94272 }, align 4
@flexcan_driver = internal global %struct.platform_driver { ptr @flexcan_probe, ptr @flexcan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @flexcan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flexcan_pm_ops, ptr null, ptr null }, ptr @flexcan_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"flexcan\00", align 1
@flexcan_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @flexcan_suspend, ptr @flexcan_resume, ptr @flexcan_suspend, ptr @flexcan_resume, ptr @flexcan_suspend, ptr @flexcan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flexcan_noirq_suspend, ptr @flexcan_noirq_resume, ptr @flexcan_noirq_suspend, ptr @flexcan_noirq_resume, ptr @flexcan_noirq_suspend, ptr @flexcan_noirq_resume, ptr @flexcan_runtime_suspend, ptr @flexcan_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"xceiver\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fsl,clk-source\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"no ipg clock defined\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"no per clock defined\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"CAN-FD mode doesn't work in RX-FIFO mode!\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"Quirks (0x%08x) inconsistent: RX_MAILBOX_RX supported but not RX_MAILBOX\0A\00", align 1
@flexcan_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @flexcan_open, ptr @flexcan_close, ptr @flexcan_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@flexcan_fd_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"flexcan\00\00\00\00\00\00\00\00\00", i32 2, i32 96, i32 2, i32 32, i32 16, i32 1, i32 1024, i32 1 }, align 4
@flexcan_fd_data_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"flexcan\00\00\00\00\00\00\00\00\00", i32 2, i32 39, i32 2, i32 8, i32 4, i32 1, i32 1024, i32 1 }, align 4
@flexcan_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"flexcan\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 1, i32 256, i32 1 }, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"registering netdev failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"setup stop mode failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Three Samples mode and CAN-FD mode can't be used together\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"drivers/net/can/flexcan/flexcan-core.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [125 x i8] c"Data brp=%d and brp=%d don't match, this may result in a phase error. Consider using different bitrate and/or data bitrate.\0A\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"include/linux/can/skb.h\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Could not enable RX FIFO, unsupported core\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"fsl,scu-index\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"fsl,stop-mode\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author542, ptr @__UNIQUE_ID_description544, ptr @__UNIQUE_ID_license543], section "llvm.metadata"

@__mod_of__flexcan_of_match_device_table = dso_local alias [12 x %struct.of_device_id], ptr @flexcan_of_match
@__mod_platform__flexcan_id_table_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @flexcan_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @flexcan_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @flexcan_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_probe(ptr noundef %0) #2 {
  %2 = alloca [3 x i32], align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call ptr @devm_regulator_get_optional(ptr noundef %6, ptr noundef nonnull @.str.1) #8
  %8 = ptrtoint ptr %7 to i32
  switch i32 %8, label %9 [
    i32 -517, label %348
    i32 -19, label %11
  ]

9:                                                ; preds = %1
  %10 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %348, label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %7, %9 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %18 = load ptr, ptr %13, align 8
  %19 = call i32 @of_property_read_variable_u8_array(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %20 = load i32, ptr %5, align 4
  br label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 4
  store i32 %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.flexcan_platform_data, ptr %23, i32 0, i32 1
  %28 = load i8, ptr %27, align 4
  store i8 %28, ptr %4, align 1
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %26, %25 ], [ %20, %16 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29, %21
  %33 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.4) #8
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #9
  %36 = ptrtoint ptr %33 to i32
  br label %348

37:                                               ; preds = %32
  %38 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.6) #8
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  %41 = ptrtoint ptr %38 to i32
  br label %348

42:                                               ; preds = %37
  %43 = call i32 @clk_get_rate(ptr noundef %38) #8
  store i32 %43, ptr %5, align 4
  br label %44

44:                                               ; preds = %42, %29
  %45 = phi ptr [ null, %29 ], [ %33, %42 ]
  %46 = phi ptr [ null, %29 ], [ %38, %42 ]
  %47 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %348, label %49

49:                                               ; preds = %44
  %50 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %50 to i32
  br label %348

54:                                               ; preds = %49
  %55 = call ptr @of_match_device(ptr noundef nonnull @flexcan_of_match, ptr noundef %6) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.of_device_id, ptr %55, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  br label %68

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.platform_device_id, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %348, label %66

66:                                               ; preds = %60
  %67 = inttoptr i32 %64 to ptr
  br label %68

68:                                               ; preds = %66, %57
  %69 = phi ptr [ %59, %57 ], [ %67, %66 ]
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 512
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %70, 114720
  %74 = icmp eq i32 %73, 49184
  %75 = or i1 %72, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %348

77:                                               ; preds = %68
  %78 = and i32 %70, 49152
  %79 = icmp eq i32 %78, 32768
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %70) #9
  br label %348

81:                                               ; preds = %77
  %82 = call ptr @alloc_candev_mqs(i32 noundef 624, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %348, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %82, ptr %85, align 8
  %86 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 111, i32 1
  store ptr %6, ptr %86, align 4
  %87 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 16
  store ptr @flexcan_netdev_ops, ptr %87, align 8
  call void @flexcan_set_ethtool_ops(ptr noundef nonnull %82) #8
  %88 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 59
  store i32 %47, ptr %88, align 8
  %89 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 14
  %90 = load i32, ptr %89, align 8
  %91 = or i32 %90, 262144
  store i32 %91, ptr %89, align 8
  %92 = getelementptr i8, ptr %82, i32 1408
  %93 = getelementptr i8, ptr %82, i32 1996
  %94 = load i32, ptr %69, align 4
  store i32 %94, ptr %93, align 4
  %95 = load ptr, ptr %13, align 8
  %96 = call ptr @of_find_property(ptr noundef %95, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %97 = icmp eq ptr %96, null
  %98 = load i32, ptr %93, align 4
  %99 = and i32 %98, 128
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %97, i1 %100, i1 false
  %102 = select i1 %101, ptr @flexcan_read_le, ptr @flexcan_read_be
  %103 = select i1 %101, ptr @flexcan_write_le, ptr @flexcan_write_be
  %104 = getelementptr i8, ptr %82, i32 2024
  store ptr %102, ptr %104, align 8
  %105 = getelementptr i8, ptr %82, i32 2028
  store ptr %103, ptr %105, align 4
  %106 = getelementptr i8, ptr %82, i32 1944
  store ptr %6, ptr %106, align 8
  %107 = load i32, ptr %5, align 4
  %108 = getelementptr i8, ptr %82, i32 1544
  store i32 %107, ptr %108, align 8
  %109 = getelementptr i8, ptr %82, i32 1644
  store ptr @flexcan_set_mode, ptr %109, align 4
  %110 = getelementptr i8, ptr %82, i32 1656
  store ptr @flexcan_get_berr_counter, ptr %110, align 8
  %111 = getelementptr i8, ptr %82, i32 1584
  store i32 23, ptr %111, align 8
  %112 = getelementptr i8, ptr %82, i32 1948
  store ptr %50, ptr %112, align 4
  %113 = getelementptr i8, ptr %82, i32 1988
  store ptr %45, ptr %113, align 4
  %114 = getelementptr i8, ptr %82, i32 1992
  store ptr %46, ptr %114, align 8
  %115 = load i8, ptr %4, align 1
  %116 = getelementptr i8, ptr %82, i32 1963
  store i8 %115, ptr %116, align 1
  %117 = getelementptr i8, ptr %82, i32 2000
  store ptr %12, ptr %117, align 8
  %118 = and i32 %98, 4096
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %84
  %121 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #8
  %122 = getelementptr i8, ptr %82, i32 2012
  store i32 %121, ptr %122, align 4
  %123 = icmp slt i32 %121, 1
  br i1 %123, label %346, label %124

124:                                              ; preds = %120
  %125 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 2) #8
  %126 = getelementptr i8, ptr %82, i32 2016
  store i32 %125, ptr %126, align 8
  %127 = icmp slt i32 %125, 1
  br i1 %127, label %346, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %93, align 4
  br label %130

130:                                              ; preds = %128, %84
  %131 = phi i32 [ %129, %128 ], [ %98, %84 ]
  %132 = and i32 %131, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %111, align 8
  %136 = or i32 %135, 160
  store i32 %136, ptr %111, align 8
  %137 = getelementptr i8, ptr %82, i32 1440
  store ptr @flexcan_fd_data_bittiming_const, ptr %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi ptr [ @flexcan_fd_bittiming_const, %134 ], [ @flexcan_bittiming_const, %130 ]
  %140 = getelementptr i8, ptr %82, i32 1436
  store ptr %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #8, !srcloc !8
  %142 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #8, !srcloc !9
  %143 = call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %6) #8
  %144 = load ptr, ptr %112, align 4
  %145 = call fastcc i32 @flexcan_clks_enable(ptr noundef %92) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %274

147:                                              ; preds = %138
  %148 = load ptr, ptr %112, align 4
  %149 = getelementptr i8, ptr %82, i32 2024
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 %150(ptr noundef %148) #8
  %152 = or i32 %151, -2147483648
  %153 = getelementptr i8, ptr %82, i32 2028
  %154 = load ptr, ptr %153, align 4
  call void %154(i32 noundef %152, ptr noundef %148) #8
  %155 = load ptr, ptr %112, align 4
  br label %156

156:                                              ; preds = %162, %147
  %157 = phi i32 [ 24, %147 ], [ %164, %162 ]
  %158 = load ptr, ptr %149, align 8
  %159 = call i32 %158(ptr noundef %155) #8
  %160 = and i32 %159, 1048576
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %163(i32 noundef 2147480) #8
  %164 = add nsw i32 %157, -1
  %165 = icmp eq i32 %157, 0
  br i1 %165, label %166, label %156

166:                                              ; preds = %162, %156
  %167 = load ptr, ptr %149, align 8
  %168 = call i32 %167(ptr noundef %155) #8
  %169 = and i32 %168, 1048576
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %269, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr %149, align 8
  %173 = getelementptr inbounds %struct.flexcan_regs, ptr %144, i32 0, i32 1
  %174 = call i32 %172(ptr noundef %173) #8
  %175 = load i8, ptr %116, align 1
  %176 = icmp eq i8 %175, 0
  %177 = and i32 %174, -8193
  %178 = select i1 %176, i32 0, i32 8192
  %179 = or i32 %178, %177
  %180 = load ptr, ptr %153, align 4
  call void %180(i32 noundef %179, ptr noundef %173) #8
  %181 = load ptr, ptr %112, align 4
  %182 = load ptr, ptr %149, align 8
  %183 = call i32 %182(ptr noundef %181) #8
  %184 = and i32 %183, 2147483647
  %185 = load ptr, ptr %153, align 4
  call void %185(i32 noundef %184, ptr noundef %181) #8
  %186 = load ptr, ptr %112, align 4
  br label %187

187:                                              ; preds = %193, %171
  %188 = phi i32 [ 24, %171 ], [ %195, %193 ]
  %189 = load ptr, ptr %149, align 8
  %190 = call i32 %189(ptr noundef %186) #8
  %191 = and i32 %190, 1048576
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %187
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %194(i32 noundef 2147480) #8
  %195 = add nsw i32 %188, -1
  %196 = icmp eq i32 %188, 0
  br i1 %196, label %197, label %187

197:                                              ; preds = %193, %187
  %198 = load ptr, ptr %149, align 8
  %199 = call i32 %198(ptr noundef %186) #8
  %200 = and i32 %199, 1048576
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %248

202:                                              ; preds = %197
  %203 = load ptr, ptr %112, align 4
  %204 = getelementptr i8, ptr %82, i32 1444
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = udiv i32 10000000, %205
  br label %209

209:                                              ; preds = %207, %202
  %210 = phi i32 [ %208, %207 ], [ 25, %202 ]
  %211 = load ptr, ptr %149, align 8
  %212 = call i32 %211(ptr noundef %203) #8
  %213 = or i32 %212, 1342177280
  %214 = load ptr, ptr %153, align 4
  call void %214(i32 noundef %213, ptr noundef %203) #8
  %215 = icmp eq i32 %210, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %222, %209
  %217 = phi i32 [ %223, %222 ], [ %210, %209 ]
  %218 = load ptr, ptr %149, align 8
  %219 = call i32 %218(ptr noundef %203) #8
  %220 = and i32 %219, 16777216
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = add nsw i32 %217, -1
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %224(i32 noundef 21474800) #8
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %226, label %216

226:                                              ; preds = %222, %216, %209
  %227 = load ptr, ptr %149, align 8
  %228 = call i32 %227(ptr noundef %203) #8
  %229 = and i32 %228, 16777216
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %248, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr %149, align 8
  %233 = call i32 %232(ptr noundef %144) #8
  %234 = or i32 %233, 545259520
  %235 = load ptr, ptr %153, align 4
  call void %235(i32 noundef %234, ptr noundef %144) #8
  %236 = load ptr, ptr %149, align 8
  %237 = call i32 %236(ptr noundef %144) #8
  %238 = and i32 %237, 536870912
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %231
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.17) #9
  br label %248

241:                                              ; preds = %231
  %242 = call i32 @register_candev(ptr noundef %82) #8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = call fastcc i32 @flexcan_chip_disable(ptr noundef %92) #8
  %246 = load ptr, ptr %106, align 8
  %247 = call i32 @__pm_runtime_idle(ptr noundef %246, i32 noundef 5) #8
  br label %276

248:                                              ; preds = %241, %240, %226, %197
  %249 = phi i32 [ -110, %197 ], [ -110, %226 ], [ %242, %241 ], [ -19, %240 ]
  %250 = load ptr, ptr %112, align 4
  %251 = load ptr, ptr %149, align 8
  %252 = call i32 %251(ptr noundef %250) #8
  %253 = or i32 %252, -2147483648
  %254 = load ptr, ptr %153, align 4
  call void %254(i32 noundef %253, ptr noundef %250) #8
  %255 = load ptr, ptr %112, align 4
  br label %256

256:                                              ; preds = %262, %248
  %257 = phi i32 [ 24, %248 ], [ %264, %262 ]
  %258 = load ptr, ptr %149, align 8
  %259 = call i32 %258(ptr noundef %255) #8
  %260 = and i32 %259, 1048576
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %263(i32 noundef 2147480) #8
  %264 = add nsw i32 %257, -1
  %265 = icmp eq i32 %257, 0
  br i1 %265, label %266, label %256

266:                                              ; preds = %262, %256
  %267 = load ptr, ptr %149, align 8
  %268 = call i32 %267(ptr noundef %255) #8
  br label %269

269:                                              ; preds = %266, %166
  %270 = phi i32 [ -110, %166 ], [ %249, %266 ]
  %271 = load ptr, ptr %114, align 8
  call void @clk_disable(ptr noundef %271) #8
  call void @clk_unprepare(ptr noundef %271) #8
  %272 = load ptr, ptr %113, align 4
  call void @clk_disable(ptr noundef %272) #8
  call void @clk_unprepare(ptr noundef %272) #8
  %273 = icmp eq i32 %270, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %269, %138
  %275 = phi i32 [ %270, %269 ], [ %145, %138 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #9
  br label %339

276:                                              ; preds = %269, %244
  %277 = load ptr, ptr %85, align 8
  %278 = getelementptr i8, ptr %277, i32 1996
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, 2048
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !10
  %283 = load ptr, ptr %13, align 8
  %284 = call i32 @of_property_read_variable_u8_array(ptr noundef %283, ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %285 = call i32 @llvm.smin.i32(i32 %284, i32 0) #8
  %286 = icmp slt i32 %284, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %282
  %288 = load i8, ptr %3, align 1
  %289 = getelementptr i8, ptr %277, i32 1964
  store i8 %288, ptr %289, align 4
  br label %290

290:                                              ; preds = %287, %282
  %291 = phi i32 [ -524, %287 ], [ %285, %282 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %323

292:                                              ; preds = %276
  %293 = and i32 %279, 256
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %337, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #8, !annotation !10
  %297 = icmp eq ptr %296, null
  br i1 %297, label %321, label %298

298:                                              ; preds = %295
  %299 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %296, ptr noundef nonnull @.str.20, ptr noundef nonnull %2, i32 noundef 3, i32 noundef 0) #8
  %300 = call i32 @llvm.smin.i32(i32 %299, i32 0) #8
  %301 = icmp sgt i32 %299, -1
  br i1 %301, label %302, label %321

302:                                              ; preds = %298
  %303 = load i32, ptr %2, align 4
  %304 = call ptr @of_find_node_by_phandle(i32 noundef %303) #8
  %305 = icmp eq ptr %304, null
  br i1 %305, label %321, label %306

306:                                              ; preds = %302
  %307 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %304) #8
  %308 = getelementptr i8, ptr %277, i32 2004
  store ptr %307, ptr %308, align 4
  %309 = icmp ugt ptr %307, inttoptr (i32 -4096 to ptr)
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = ptrtoint ptr %307 to i32
  call void @of_node_put(ptr noundef nonnull %304) #8
  br label %321

312:                                              ; preds = %306
  %313 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = trunc i32 %314 to i8
  %316 = getelementptr i8, ptr %277, i32 2008
  store i8 %315, ptr %316, align 4
  %317 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 2
  %318 = load i32, ptr %317, align 4
  %319 = trunc i32 %318 to i8
  %320 = getelementptr i8, ptr %277, i32 2009
  store i8 %319, ptr %320, align 1
  br label %321

321:                                              ; preds = %312, %310, %302, %298, %295
  %322 = phi i32 [ %311, %310 ], [ 0, %312 ], [ -22, %295 ], [ %300, %298 ], [ -19, %302 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br label %323

323:                                              ; preds = %321, %290
  %324 = phi i32 [ %291, %290 ], [ %322, %321 ]
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  call void @device_set_wakeup_capable(ptr noundef %6, i1 noundef zeroext true) #8
  %327 = load ptr, ptr %13, align 8
  %328 = call ptr @of_find_property(ptr noundef %327, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %329 = icmp eq ptr %328, null
  br i1 %329, label %337, label %330

330:                                              ; preds = %326
  %331 = call i32 @device_set_wakeup_enable(ptr noundef %6, i1 noundef zeroext true) #8
  br label %337

332:                                              ; preds = %323
  %333 = icmp slt i32 %324, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %332
  %335 = icmp eq i32 %324, -517
  br i1 %335, label %338, label %336

336:                                              ; preds = %334
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  br label %338

337:                                              ; preds = %332, %330, %326, %292
  call void @of_can_transceiver(ptr noundef nonnull %82) #8
  br label %348

338:                                              ; preds = %336, %334
  call void @unregister_candev(ptr noundef %82) #8
  br label %339

339:                                              ; preds = %338, %274
  %340 = phi i32 [ %275, %274 ], [ %324, %338 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #8, !srcloc !8
  %341 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 0, i32 -1, ptr elementtype(i32) %141) #8, !srcloc !12
  %342 = extractvalue { i32, i32, i32 } %341, 0
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %345

345:                                              ; preds = %344, %339
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #8
  br label %346

346:                                              ; preds = %345, %124, %120
  %347 = phi i32 [ %340, %345 ], [ -19, %120 ], [ -19, %124 ]
  call void @free_candev(ptr noundef nonnull %82) #8
  br label %348

348:                                              ; preds = %346, %337, %81, %80, %76, %60, %52, %44, %40, %35, %9, %1
  %349 = phi i32 [ %53, %52 ], [ -22, %80 ], [ %347, %346 ], [ 0, %337 ], [ -22, %76 ], [ %36, %35 ], [ %41, %40 ], [ %8, %1 ], [ -19, %44 ], [ -19, %60 ], [ -12, %81 ], [ %8, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %349
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @device_set_wakeup_enable(ptr noundef %4, i1 noundef zeroext false) #8
  tail call void @device_set_wakeup_capable(ptr noundef %4, i1 noundef zeroext false) #8
  tail call void @unregister_candev(ptr noundef %3) #8
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  tail call void @free_candev(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcan_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_read_be(ptr noundef %0) #5 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flexcan_write_be(i32 noundef %0, ptr noundef %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #8, !srcloc !17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_read_le(ptr noundef %0) #5 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  ret i32 %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flexcan_write_le(i32 noundef %0, ptr noundef %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %0) #8, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %32

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @flexcan_chip_start(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1948
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %11 = load i32, ptr %10, align 8
  tail call void @disable_irq(i32 noundef %11) #8
  %12 = getelementptr i8, ptr %0, i32 2028
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 1984
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.flexcan_regs, ptr %9, i32 0, i32 1
  tail call void %13(i32 noundef %15, ptr noundef %16) #8
  %17 = getelementptr i8, ptr %0, i32 1968
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i32 1976
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, %18
  %22 = load ptr, ptr %12, align 4
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.flexcan_regs, ptr %9, i32 0, i32 9
  tail call void %22(i32 noundef %24, ptr noundef %25) #8
  %26 = load ptr, ptr %12, align 4
  %27 = trunc i64 %21 to i32
  %28 = getelementptr inbounds %struct.flexcan_regs, ptr %9, i32 0, i32 10
  tail call void %26(i32 noundef %27, ptr noundef %28) #8
  %29 = load i32, ptr %10, align 8
  tail call void @enable_irq(i32 noundef %29) #8
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %31 = load ptr, ptr %30, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %31) #8
  br label %32

32:                                               ; preds = %7, %4, %2
  %33 = phi i32 [ 0, %7 ], [ %5, %4 ], [ -95, %2 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_get_berr_counter(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1944
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 1948
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 2024
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.flexcan_regs, ptr %16, i32 0, i32 7
  %20 = tail call i32 %18(ptr noundef %19) #8
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, 255
  store i16 %22, ptr %1, align 2
  %23 = lshr i16 %21, 8
  %24 = getelementptr inbounds %struct.can_berr_counter, ptr %1, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = load ptr, ptr %3, align 8
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 5) #8
  br label %27

27:                                               ; preds = %14, %13, %7
  %28 = phi i32 [ 0, %14 ], [ %5, %7 ], [ %5, %13 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_can_transceiver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1580
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 36
  %5 = icmp eq i32 %4, 36
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  br label %163

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1944
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #8, !srcloc !12
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %163, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %163

19:                                               ; preds = %7
  %20 = tail call i32 @open_candev(ptr noundef %0) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %159

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i32 2000
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @regulator_enable(ptr noundef nonnull %24) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %157

29:                                               ; preds = %26, %22
  %30 = load i32, ptr %2, align 4
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i8 16, i8 72
  %34 = getelementptr i8, ptr %0, i32 1962
  store i8 %33, ptr %34, align 2
  %35 = getelementptr i8, ptr %0, i32 1996
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = zext i8 %33 to i16
  %41 = udiv i16 512, %40
  %42 = trunc i16 %41 to i8
  %43 = shl nuw nsw i8 %42, 1
  br label %44

44:                                               ; preds = %39, %29
  %45 = phi i8 [ %43, %39 ], [ 16, %29 ]
  %46 = getelementptr i8, ptr %0, i32 1961
  store i8 %45, ptr %46, align 1
  %47 = and i32 %36, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %0, i32 1948
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.flexcan_regs, ptr %51, i32 0, i32 25
  %53 = zext i8 %33 to i16
  %54 = udiv i16 512, %53
  %55 = zext i8 %33 to i32
  br label %71

56:                                               ; preds = %44
  %57 = zext i8 %33 to i16
  %58 = udiv i16 512, %57
  %59 = xor i1 %32, true
  %60 = getelementptr i8, ptr %0, i32 1948
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.flexcan_regs, ptr %61, i32 0, i32 25
  %63 = zext i1 %59 to i32
  %64 = zext i8 %33 to i32
  %65 = sub nsw i16 8, %58
  %66 = and i16 %65, 255
  %67 = zext i16 %66 to i32
  %68 = select i1 %32, i32 8, i32 %67
  %69 = mul nuw nsw i32 %68, %64
  %70 = getelementptr [2 x [512 x i8]], ptr %62, i32 0, i32 %63, i32 %69
  br label %71

71:                                               ; preds = %56, %49
  %72 = phi i32 [ %64, %56 ], [ %55, %49 ]
  %73 = phi i16 [ %58, %56 ], [ %54, %49 ]
  %74 = phi ptr [ %61, %56 ], [ %51, %49 ]
  %75 = phi ptr [ %70, %56 ], [ %52, %49 ]
  %76 = getelementptr i8, ptr %0, i32 1956
  store ptr %75, ptr %76, align 4
  %77 = add nsw i8 %45, -1
  %78 = getelementptr i8, ptr %0, i32 1960
  store i8 %77, ptr %78, align 8
  %79 = zext i8 %77 to i16
  %80 = icmp ule i16 %73, %79
  %81 = trunc i16 %73 to i8
  %82 = select i1 %80, i8 %81, i8 0
  %83 = sub nsw i8 %77, %82
  %84 = getelementptr inbounds %struct.flexcan_regs, ptr %74, i32 0, i32 25
  %85 = zext i1 %80 to i32
  %86 = zext i8 %83 to i32
  %87 = mul nuw nsw i32 %72, %86
  %88 = getelementptr [2 x [512 x i8]], ptr %84, i32 0, i32 %85, i32 %87
  %89 = getelementptr i8, ptr %0, i32 1952
  store ptr %88, ptr %89, align 8
  %90 = zext i8 %77 to i64
  %91 = shl nuw i64 1, %90
  %92 = getelementptr i8, ptr %0, i32 1976
  store i64 %91, ptr %92, align 8
  %93 = getelementptr i8, ptr %0, i32 1664
  %94 = getelementptr i8, ptr %0, i32 1668
  store ptr @flexcan_mailbox_read, ptr %94, align 4
  br i1 %48, label %106, label %95

95:                                               ; preds = %71
  %96 = getelementptr i8, ptr %0, i32 1708
  store i32 1, ptr %96, align 4
  %97 = zext i8 %45 to i32
  %98 = add nsw i32 %97, -2
  %99 = getelementptr i8, ptr %0, i32 1712
  store i32 %98, ptr %99, align 8
  %100 = sub nuw nsw i32 65, %97
  %101 = zext i32 %100 to i64
  %102 = lshr i64 -1, %101
  %103 = and i64 %102, -2
  %104 = getelementptr i8, ptr %0, i32 1968
  store i64 %103, ptr %104, align 8
  %105 = tail call i32 @can_rx_offload_add_timestamp(ptr noundef %0, ptr noundef %93) #8
  br label %109

106:                                              ; preds = %71
  %107 = getelementptr i8, ptr %0, i32 1968
  store i64 160, ptr %107, align 8
  %108 = tail call i32 @can_rx_offload_add_fifo(ptr noundef %0, ptr noundef %93, i32 noundef 10) #8
  br label %109

109:                                              ; preds = %106, %95
  %110 = phi i32 [ %105, %95 ], [ %108, %106 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %151

112:                                              ; preds = %109
  %113 = tail call fastcc i32 @flexcan_chip_start(ptr noundef %0)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %112
  tail call void @can_rx_offload_enable(ptr noundef %93) #8
  %116 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %117 = load i32, ptr %116, align 8
  %118 = tail call i32 @request_threaded_irq(i32 noundef %117, ptr noundef nonnull @flexcan_irq, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %115
  %121 = load i32, ptr %35, align 4
  %122 = and i32 %121, 4096
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %0, i32 2012
  %126 = load i32, ptr %125, align 4
  %127 = tail call i32 @request_threaded_irq(i32 noundef %126, ptr noundef nonnull @flexcan_irq, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = getelementptr i8, ptr %0, i32 2016
  %131 = load i32, ptr %130, align 8
  %132 = tail call i32 @request_threaded_irq(i32 noundef %131, ptr noundef nonnull @flexcan_irq, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129, %120
  tail call fastcc void @flexcan_chip_interrupts_enable(ptr noundef %0)
  %135 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %136 = load ptr, ptr %135, align 64
  %137 = getelementptr inbounds %struct.netdev_queue, ptr %136, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %137) #8
  br label %163

138:                                              ; preds = %129
  %139 = load i32, ptr %125, align 4
  %140 = tail call ptr @free_irq(i32 noundef %139, ptr noundef %0) #8
  br label %141

141:                                              ; preds = %138, %124
  %142 = phi i32 [ %127, %124 ], [ %132, %138 ]
  %143 = load i32, ptr %116, align 8
  %144 = tail call ptr @free_irq(i32 noundef %143, ptr noundef %0) #8
  br label %145

145:                                              ; preds = %141, %115
  %146 = phi i32 [ %118, %115 ], [ %142, %141 ]
  %147 = getelementptr i8, ptr %0, i32 1720
  tail call void @napi_disable(ptr noundef %147) #8
  %148 = tail call fastcc i32 @__flexcan_chip_stop(ptr noundef %0, i1 noundef zeroext false) #8
  br label %149

149:                                              ; preds = %145, %112
  %150 = phi i32 [ %113, %112 ], [ %146, %145 ]
  tail call void @can_rx_offload_del(ptr noundef %93) #8
  br label %151

151:                                              ; preds = %149, %109
  %152 = phi i32 [ %110, %109 ], [ %150, %149 ]
  %153 = load ptr, ptr %23, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = tail call i32 @regulator_disable(ptr noundef nonnull %153) #8
  br label %157

157:                                              ; preds = %155, %151, %26
  %158 = phi i32 [ %27, %26 ], [ %152, %151 ], [ %152, %155 ]
  tail call void @close_candev(ptr noundef %0) #8
  br label %159

159:                                              ; preds = %157, %19
  %160 = phi i32 [ %20, %19 ], [ %158, %157 ]
  %161 = load ptr, ptr %8, align 8
  %162 = tail call i32 @__pm_runtime_idle(ptr noundef %161, i32 noundef 5) #8
  br label %163

163:                                              ; preds = %159, %134, %18, %12, %6
  %164 = phi i32 [ -22, %6 ], [ %160, %159 ], [ 0, %134 ], [ %10, %12 ], [ %10, %18 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #8
  %5 = getelementptr i8, ptr %0, i32 1948
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 2028
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 9
  tail call void %8(i32 noundef 0, ptr noundef %9) #8
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 10
  tail call void %10(i32 noundef 0, ptr noundef %11) #8
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %0, i32 1984
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -52225
  %16 = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 1
  tail call void %12(i32 noundef %15, ptr noundef %16) #8
  %17 = getelementptr i8, ptr %0, i32 1996
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4096
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = getelementptr i8, ptr %0, i32 2016
  %23 = load i32, ptr %22, align 8
  %24 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %0) #8
  %25 = getelementptr i8, ptr %0, i32 2012
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %0) #8
  br label %28

28:                                               ; preds = %21, %1
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %30 = load i32, ptr %29, align 8
  %31 = tail call ptr @free_irq(i32 noundef %30, ptr noundef %0) #8
  %32 = getelementptr i8, ptr %0, i32 1664
  %33 = getelementptr i8, ptr %0, i32 1720
  tail call void @napi_disable(ptr noundef %33) #8
  %34 = tail call fastcc i32 @__flexcan_chip_stop(ptr noundef %0, i1 noundef zeroext true) #8
  tail call void @can_rx_offload_del(ptr noundef %32) #8
  %35 = getelementptr i8, ptr %0, i32 2000
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = tail call i32 @regulator_disable(ptr noundef nonnull %36) #8
  br label %40

40:                                               ; preds = %38, %28
  tail call void @close_candev(ptr noundef %0) #8
  %41 = getelementptr i8, ptr %0, i32 1944
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %6) #8
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %12 = load i16, ptr %11, align 8
  switch i16 %12, label %71 [
    i16 3072, label %13
    i16 3328, label %21
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %71, !prof !20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.canfd_frame, ptr %10, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 8
  br i1 %20, label %71, label %29, !prof !21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 72
  br i1 %24, label %25, label %71, !prof !20

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.canfd_frame, ptr %10, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp ugt i8 %27, 64
  br i1 %28, label %71, label %29, !prof !21

29:                                               ; preds = %25, %17
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %10 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = icmp ult i32 %34, 16
  %36 = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !21

39:                                               ; preds = %29
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 104, i32 noundef 9, ptr noundef null) #8
  br label %40

40:                                               ; preds = %39, %29
  br i1 %35, label %71, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 96
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %30, align 8
  store i32 %48, ptr %49, align 8
  %50 = load ptr, ptr %30, align 8
  %51 = getelementptr inbounds %struct.can_skb_priv, ptr %50, i32 0, i32 1
  store i32 0, ptr %51, align 4
  %52 = load i16, ptr %42, align 8
  %53 = and i16 %52, -97
  %54 = or i16 %53, 32
  store i16 %54, ptr %42, align 8
  %55 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 262144
  %58 = icmp eq i32 %57, 0
  %59 = and i16 %54, -72
  %60 = or i16 %59, 5
  %61 = select i1 %58, i16 %59, i16 %60
  store i16 %61, ptr %42, align 8
  %62 = load ptr, ptr %3, align 4
  %63 = load ptr, ptr %30, align 8
  %64 = ptrtoint ptr %62 to i32
  %65 = ptrtoint ptr %63 to i32
  %66 = sub i32 %64, %65
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %67, ptr %68, align 2
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %67, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %67, ptr %70, align 2
  br label %75

71:                                               ; preds = %40, %25, %21, %17, %13, %2
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  %72 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  br label %134

75:                                               ; preds = %46, %41
  %76 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %77 = load ptr, ptr %76, align 64
  %78 = getelementptr inbounds %struct.netdev_queue, ptr %77, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %78) #8
  %79 = load i32, ptr %4, align 8
  %80 = icmp sgt i32 %79, -1
  %81 = and i32 %79, 536870911
  %82 = shl i32 %79, 18
  %83 = and i32 %82, 536608768
  %84 = select i1 %80, i32 %83, i32 %81
  %85 = select i1 %80, i32 201326592, i32 207618048
  %86 = or i32 %85, %9
  %87 = lshr i32 %79, 10
  %88 = and i32 %87, 1048576
  %89 = or i32 %86, %88
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 72
  br i1 %92, label %93, label %100

93:                                               ; preds = %75
  %94 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 -2147483648, i32 -1073741824
  %99 = or i32 %98, %89
  br label %100

100:                                              ; preds = %93, %75
  %101 = phi i32 [ %89, %75 ], [ %99, %93 ]
  %102 = load i8, ptr %5, align 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %1, i32 2028
  %106 = getelementptr i8, ptr %1, i32 1952
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i32 [ 0, %104 ], [ %116, %107 ]
  %109 = getelementptr %struct.canfd_frame, ptr %4, i32 0, i32 5, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #8
  %112 = load ptr, ptr %105, align 4
  %113 = load ptr, ptr %106, align 8
  %114 = lshr exact i32 %108, 2
  %115 = getelementptr %struct.flexcan_mb, ptr %113, i32 0, i32 2, i32 %114
  tail call void %112(i32 noundef %111, ptr noundef %115) #8
  %116 = add nuw nsw i32 %108, 4
  %117 = load i8, ptr %5, align 4
  %118 = zext i8 %117 to i32
  %119 = icmp ult i32 %116, %118
  br i1 %119, label %107, label %120

120:                                              ; preds = %107, %100
  %121 = tail call i32 @can_put_echo_skb(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #8
  %122 = getelementptr i8, ptr %1, i32 2028
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %1, i32 1952
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.flexcan_mb, ptr %125, i32 0, i32 1
  tail call void %123(i32 noundef %84, ptr noundef %126) #8
  %127 = load ptr, ptr %122, align 4
  %128 = load ptr, ptr %124, align 8
  tail call void %127(i32 noundef %101, ptr noundef %128) #8
  %129 = load ptr, ptr %122, align 4
  %130 = getelementptr i8, ptr %1, i32 1956
  %131 = load ptr, ptr %130, align 4
  tail call void %129(i32 noundef 134217728, ptr noundef %131) #8
  %132 = load ptr, ptr %122, align 4
  %133 = load ptr, ptr %130, align 4
  tail call void %132(i32 noundef 134217728, ptr noundef %133) #8
  br label %134

134:                                              ; preds = %120, %71
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_chip_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1948
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 2024
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %3) #8
  %7 = and i32 %6, 2147483647
  %8 = getelementptr i8, ptr %0, i32 2028
  %9 = load ptr, ptr %8, align 4
  tail call void %9(i32 noundef %7, ptr noundef %3) #8
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %17, %1
  %12 = phi i32 [ 24, %1 ], [ %19, %17 ]
  %13 = load ptr, ptr %4, align 8
  %14 = tail call i32 %13(ptr noundef %10) #8
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #8
  %19 = add nsw i32 %12, -1
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %21, label %11

21:                                               ; preds = %17, %11
  %22 = load ptr, ptr %4, align 8
  %23 = tail call i32 %22(ptr noundef %10) #8
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %521

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 4
  %28 = load ptr, ptr %8, align 4
  tail call void %28(i32 noundef 33554432, ptr noundef %27) #8
  br label %29

29:                                               ; preds = %35, %26
  %30 = phi i32 [ 24, %26 ], [ %37, %35 ]
  %31 = load ptr, ptr %4, align 8
  %32 = tail call i32 %31(ptr noundef %27) #8
  %33 = and i32 %32, 33554432
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #8
  %37 = add nsw i32 %30, -1
  %38 = icmp eq i32 %30, 0
  br i1 %38, label %39, label %29

39:                                               ; preds = %35, %29
  %40 = load ptr, ptr %4, align 8
  %41 = tail call i32 %40(ptr noundef %27) #8
  %42 = and i32 %41, 33554432
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %501

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %0, i32 1996
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %2, align 4
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds %struct.flexcan_regs, ptr %50, i32 0, i32 13
  %53 = tail call i32 %51(ptr noundef %52) #8
  %54 = or i32 %53, 268435456
  %55 = load ptr, ptr %8, align 4
  tail call void %55(i32 noundef %54, ptr noundef %52) #8
  %56 = getelementptr inbounds %struct.flexcan_regs, ptr %50, i32 0, i32 25
  tail call void @mmioset(ptr noundef %56, i32 noundef 0, i32 noundef 2656) #8
  %57 = getelementptr i8, ptr %0, i32 1580
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.flexcan_regs, ptr %50, i32 0, i32 39
  tail call void @mmioset(ptr noundef %62, i32 noundef 0, i32 noundef 216) #8
  br label %63

63:                                               ; preds = %61, %49
  %64 = and i32 %53, -268435457
  %65 = load ptr, ptr %8, align 4
  tail call void %65(i32 noundef %64, ptr noundef %52) #8
  br label %66

66:                                               ; preds = %63, %44
  %67 = load ptr, ptr %2, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.flexcan_regs, ptr %67, i32 0, i32 1
  %70 = tail call i32 %68(ptr noundef %69) #8
  %71 = and i32 %70, -4233
  %72 = getelementptr i8, ptr %0, i32 1580
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 12
  %75 = and i32 %74, 4096
  %76 = or i32 %75, %71
  %77 = shl i32 %73, 2
  %78 = and i32 %77, 8
  %79 = or i32 %76, %78
  %80 = shl i32 %73, 5
  %81 = and i32 %80, 128
  %82 = or i32 %79, %81
  %83 = load ptr, ptr %8, align 4
  tail call void %83(i32 noundef %82, ptr noundef %69) #8
  %84 = getelementptr i8, ptr %0, i32 1584
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %2, align 4
  br i1 %87, label %219, label %89

89:                                               ; preds = %66
  %90 = getelementptr i8, ptr %0, i32 1460
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %91, 32
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = add i32 %91, -32
  %95 = getelementptr i8, ptr %0, i32 1456
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %94, %96
  store i32 %97, ptr %95, align 4
  store i32 32, ptr %90, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi i32 [ %91, %89 ], [ 32, %93 ]
  %100 = getelementptr i8, ptr %0, i32 1472
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %0, i32 1468
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i8, ptr %0, i32 1456
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %0, i32 1464
  %107 = load i32, ptr %106, align 4
  %108 = shl i32 %101, 21
  %109 = add i32 %108, 2145386496
  %110 = shl i32 %103, 16
  %111 = add i32 %110, 2031616
  %112 = and i32 %111, 2031616
  %113 = or i32 %112, %109
  %114 = shl i32 %105, 10
  %115 = add i32 %114, 64512
  %116 = and i32 %115, 64512
  %117 = or i32 %116, %113
  %118 = shl nuw nsw i32 %99, 5
  %119 = add nuw nsw i32 %118, 992
  %120 = and i32 %119, 992
  %121 = or i32 %117, %120
  %122 = add i32 %107, 31
  %123 = and i32 %122, 31
  %124 = or i32 %123, %121
  %125 = or i32 %124, -2147483648
  %126 = load ptr, ptr %8, align 4
  %127 = getelementptr inbounds %struct.flexcan_regs, ptr %88, i32 0, i32 20
  tail call void %126(i32 noundef %125, ptr noundef %127) #8
  %128 = load i32, ptr %72, align 4
  %129 = and i32 %128, 32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %188, label %131

131:                                              ; preds = %98
  %132 = load i32, ptr %100, align 4
  %133 = getelementptr i8, ptr %0, i32 1504
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %134, i32 noundef %132) #9
  br label %137

137:                                              ; preds = %136, %131
  %138 = getelementptr i8, ptr %0, i32 1492
  %139 = load i32, ptr %138, align 4
  %140 = icmp ugt i32 %139, 8
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = add i32 %139, -8
  %143 = getelementptr i8, ptr %0, i32 1488
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %142, %144
  store i32 %145, ptr %143, align 4
  store i32 8, ptr %138, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load ptr, ptr %4, align 8
  %148 = getelementptr inbounds %struct.flexcan_regs, ptr %88, i32 0, i32 36
  %149 = tail call i32 %147(ptr noundef %148) #8
  %150 = and i32 %149, -1073183976
  %151 = load i32, ptr %133, align 4
  %152 = getelementptr i8, ptr %0, i32 1500
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %0, i32 1488
  %155 = load i32, ptr %154, align 4
  %156 = load i32, ptr %138, align 4
  %157 = getelementptr i8, ptr %0, i32 1496
  %158 = load i32, ptr %157, align 4
  %159 = shl i32 %151, 20
  %160 = add i32 %159, 1072693248
  %161 = and i32 %160, 1072693248
  %162 = shl i32 %153, 16
  %163 = add i32 %162, 458752
  %164 = and i32 %163, 458752
  %165 = shl i32 %155, 10
  %166 = and i32 %165, 31744
  %167 = shl i32 %156, 5
  %168 = add i32 %167, 224
  %169 = and i32 %168, 224
  %170 = add i32 %158, 7
  %171 = and i32 %170, 7
  %172 = or i32 %161, %150
  %173 = or i32 %172, %164
  %174 = or i32 %173, %166
  %175 = or i32 %174, %169
  %176 = or i32 %175, %171
  %177 = load ptr, ptr %8, align 4
  tail call void %177(i32 noundef %176, ptr noundef %148) #8
  %178 = load ptr, ptr %4, align 8
  %179 = getelementptr inbounds %struct.flexcan_regs, ptr %88, i32 0, i32 13
  %180 = tail call i32 %178(ptr noundef %179) #8
  %181 = and i32 %180, -4097
  %182 = load i32, ptr %72, align 4
  %183 = shl i32 %182, 5
  %184 = and i32 %183, 4096
  %185 = or i32 %184, %181
  %186 = xor i32 %185, 4096
  %187 = load ptr, ptr %8, align 4
  tail call void %187(i32 noundef %186, ptr noundef %179) #8
  br label %188

188:                                              ; preds = %146, %98
  %189 = load ptr, ptr %4, align 8
  %190 = getelementptr inbounds %struct.flexcan_regs, ptr %88, i32 0, i32 35
  %191 = tail call i32 %189(ptr noundef %190) #8
  %192 = and i32 %191, 2147475711
  %193 = load i32, ptr %72, align 4
  %194 = and i32 %193, 32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %188
  %197 = and i32 %193, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = and i32 %191, 2147442943
  %201 = or i32 %200, -2147483648
  br label %216

202:                                              ; preds = %196
  %203 = getelementptr i8, ptr %0, i32 1504
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr i8, ptr %0, i32 1488
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr i8, ptr %0, i32 1492
  %208 = load i32, ptr %207, align 4
  %209 = add i32 %206, %208
  %210 = add i32 %209, 33
  %211 = shl i32 %204, 8
  %212 = mul i32 %211, %210
  %213 = and i32 %212, 7936
  %214 = or i32 %192, %213
  %215 = or i32 %214, -2147450880
  br label %216

216:                                              ; preds = %202, %199, %188
  %217 = phi i32 [ %201, %199 ], [ %215, %202 ], [ %192, %188 ]
  %218 = load ptr, ptr %8, align 4
  tail call void %218(i32 noundef %217, ptr noundef %190) #8
  br label %253

219:                                              ; preds = %66
  %220 = load ptr, ptr %4, align 8
  %221 = getelementptr inbounds %struct.flexcan_regs, ptr %88, i32 0, i32 1
  %222 = tail call i32 %220(ptr noundef %221) #8
  %223 = and i32 %222, 65528
  %224 = getelementptr i8, ptr %0, i32 1472
  %225 = load i32, ptr %224, align 4
  %226 = shl i32 %225, 24
  %227 = add i32 %226, -16777216
  %228 = getelementptr i8, ptr %0, i32 1460
  %229 = load i32, ptr %228, align 4
  %230 = shl i32 %229, 19
  %231 = add i32 %230, 3670016
  %232 = and i32 %231, 3670016
  %233 = or i32 %232, %227
  %234 = getelementptr i8, ptr %0, i32 1464
  %235 = load i32, ptr %234, align 4
  %236 = shl i32 %235, 16
  %237 = add i32 %236, 458752
  %238 = and i32 %237, 458752
  %239 = or i32 %233, %238
  %240 = getelementptr i8, ptr %0, i32 1468
  %241 = load i32, ptr %240, align 4
  %242 = shl i32 %241, 22
  %243 = add i32 %242, 12582912
  %244 = and i32 %243, 12582912
  %245 = or i32 %239, %244
  %246 = getelementptr i8, ptr %0, i32 1456
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, 7
  %249 = and i32 %248, 7
  %250 = or i32 %245, %249
  %251 = or i32 %250, %223
  %252 = load ptr, ptr %8, align 4
  tail call void %252(i32 noundef %251, ptr noundef %221) #8
  br label %253

253:                                              ; preds = %219, %216
  %254 = load ptr, ptr %2, align 4
  %255 = getelementptr i8, ptr %0, i32 1444
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %253
  %259 = udiv i32 10000000, %256
  br label %260

260:                                              ; preds = %258, %253
  %261 = phi i32 [ %259, %258 ], [ 25, %253 ]
  %262 = load ptr, ptr %4, align 8
  %263 = tail call i32 %262(ptr noundef %254) #8
  %264 = or i32 %263, 1342177280
  %265 = load ptr, ptr %8, align 4
  tail call void %265(i32 noundef %264, ptr noundef %254) #8
  %266 = icmp eq i32 %261, 0
  br i1 %266, label %277, label %267

267:                                              ; preds = %273, %260
  %268 = phi i32 [ %274, %273 ], [ %261, %260 ]
  %269 = load ptr, ptr %4, align 8
  %270 = tail call i32 %269(ptr noundef %254) #8
  %271 = and i32 %270, 16777216
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = add nsw i32 %268, -1
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %275(i32 noundef 21474800) #8
  %276 = icmp eq i32 %274, 0
  br i1 %276, label %277, label %267

277:                                              ; preds = %273, %267, %260
  %278 = load ptr, ptr %4, align 8
  %279 = tail call i32 %278(ptr noundef %254) #8
  %280 = and i32 %279, 16777216
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %501, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %4, align 8
  %284 = tail call i32 %283(ptr noundef %3) #8
  %285 = and i32 %284, -547555968
  %286 = getelementptr i8, ptr %0, i32 1960
  %287 = load i8, ptr %286, align 8
  %288 = and i8 %287, 127
  %289 = zext i8 %288 to i32
  %290 = load i32, ptr %45, align 4
  %291 = shl i32 %290, 24
  %292 = and i32 %291, 536870912
  %293 = load i32, ptr %72, align 4
  %294 = shl i32 %293, 17
  %295 = and i32 %294, 131072
  %296 = shl i32 %293, 6
  %297 = and i32 %296, 2048
  %298 = or i32 %285, %289
  %299 = or i32 %298, %292
  %300 = or i32 %299, %295
  %301 = or i32 %300, %297
  %302 = xor i32 %301, 547553792
  %303 = load ptr, ptr %8, align 4
  tail call void %303(i32 noundef %302, ptr noundef %3) #8
  %304 = load ptr, ptr %4, align 8
  %305 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 1
  %306 = tail call i32 %304(ptr noundef %305) #8
  %307 = and i32 %306, -52337
  %308 = load i32, ptr %45, align 4
  %309 = and i32 %308, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %282
  %312 = load i32, ptr %72, align 4
  %313 = and i32 %312, 16
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %314, i32 35920, i32 52304
  br label %316

316:                                              ; preds = %311, %282
  %317 = phi i32 [ 52304, %282 ], [ %315, %311 ]
  %318 = or i32 %307, %317
  %319 = getelementptr i8, ptr %0, i32 1984
  store i32 %318, ptr %319, align 8
  %320 = or i32 %307, 80
  %321 = load ptr, ptr %8, align 4
  tail call void %321(i32 noundef %320, ptr noundef %305) #8
  %322 = load i32, ptr %45, align 4
  %323 = and i32 %322, 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %316
  %326 = load ptr, ptr %4, align 8
  %327 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 13
  %328 = tail call i32 %326(ptr noundef %327) #8
  %329 = or i32 %328, 196608
  %330 = load ptr, ptr %8, align 4
  tail call void %330(i32 noundef %329, ptr noundef %327) #8
  br label %331

331:                                              ; preds = %325, %316
  %332 = load i32, ptr %84, align 8
  %333 = and i32 %332, 32
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %346, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %4, align 8
  %337 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 35
  %338 = tail call i32 %336(ptr noundef %337) #8
  %339 = load i32, ptr %72, align 4
  %340 = and i32 %339, 32
  %341 = icmp eq i32 %340, 0
  %342 = and i32 %338, -1769473
  %343 = select i1 %341, i32 0, i32 1769472
  %344 = or i32 %343, %342
  %345 = load ptr, ptr %8, align 4
  tail call void %345(i32 noundef %344, ptr noundef %337) #8
  br label %346

346:                                              ; preds = %335, %331
  %347 = load i32, ptr %45, align 4
  %348 = and i32 %347, 32
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %346
  %351 = getelementptr i8, ptr %0, i32 1961
  %352 = load i8, ptr %351, align 1
  %353 = icmp ugt i8 %352, 8
  br i1 %353, label %354, label %426

354:                                              ; preds = %350
  %355 = getelementptr i8, ptr %0, i32 1962
  br label %395

356:                                              ; preds = %346
  %357 = getelementptr i8, ptr %0, i32 1708
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr i8, ptr %0, i32 1712
  %360 = load i32, ptr %359, align 8
  %361 = icmp ugt i32 %358, %360
  br i1 %361, label %426, label %362

362:                                              ; preds = %356
  %363 = getelementptr i8, ptr %0, i32 1961
  %364 = getelementptr i8, ptr %0, i32 1962
  br label %365

365:                                              ; preds = %389, %362
  %366 = phi i32 [ %358, %362 ], [ %392, %389 ]
  %367 = trunc i32 %366 to i8
  %368 = load i8, ptr %363, align 1
  %369 = icmp ugt i8 %368, %367
  br i1 %369, label %371, label %370, !prof !20

370:                                              ; preds = %365
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %389

371:                                              ; preds = %365
  %372 = load i8, ptr %364, align 2
  %373 = zext i8 %372 to i16
  %374 = udiv i16 512, %373
  %375 = and i16 %374, 255
  %376 = trunc i32 %366 to i16
  %377 = and i16 %376, 255
  %378 = icmp ule i16 %375, %377
  %379 = select i1 %378, i16 %374, i16 0
  %380 = zext i16 %379 to i32
  %381 = sub i32 %366, %380
  %382 = load ptr, ptr %2, align 4
  %383 = getelementptr inbounds %struct.flexcan_regs, ptr %382, i32 0, i32 25
  %384 = zext i1 %378 to i32
  %385 = zext i8 %372 to i32
  %386 = and i32 %381, 255
  %387 = mul nuw nsw i32 %386, %385
  %388 = getelementptr [2 x [512 x i8]], ptr %383, i32 0, i32 %384, i32 %387
  br label %389

389:                                              ; preds = %371, %370
  %390 = phi ptr [ null, %370 ], [ %388, %371 ]
  %391 = load ptr, ptr %8, align 4
  tail call void %391(i32 noundef 67108864, ptr noundef %390) #8
  %392 = add i32 %366, 1
  %393 = load i32, ptr %359, align 8
  %394 = icmp ugt i32 %392, %393
  br i1 %394, label %426, label %365

395:                                              ; preds = %419, %354
  %396 = phi i8 [ %352, %354 ], [ %423, %419 ]
  %397 = phi i32 [ 8, %354 ], [ %422, %419 ]
  %398 = trunc i32 %397 to i8
  %399 = icmp ugt i8 %396, %398
  br i1 %399, label %401, label %400, !prof !20

400:                                              ; preds = %395
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %419

401:                                              ; preds = %395
  %402 = load i8, ptr %355, align 2
  %403 = zext i8 %402 to i16
  %404 = udiv i16 512, %403
  %405 = and i16 %404, 255
  %406 = trunc i32 %397 to i16
  %407 = and i16 %406, 255
  %408 = icmp ule i16 %405, %407
  %409 = select i1 %408, i16 %404, i16 0
  %410 = zext i16 %409 to i32
  %411 = sub nsw i32 %397, %410
  %412 = load ptr, ptr %2, align 4
  %413 = getelementptr inbounds %struct.flexcan_regs, ptr %412, i32 0, i32 25
  %414 = zext i1 %408 to i32
  %415 = zext i8 %402 to i32
  %416 = and i32 %411, 255
  %417 = mul nuw nsw i32 %416, %415
  %418 = getelementptr [2 x [512 x i8]], ptr %413, i32 0, i32 %414, i32 %417
  br label %419

419:                                              ; preds = %401, %400
  %420 = phi ptr [ null, %400 ], [ %418, %401 ]
  %421 = load ptr, ptr %8, align 4
  tail call void %421(i32 noundef 0, ptr noundef %420) #8
  %422 = add nuw nsw i32 %397, 1
  %423 = load i8, ptr %351, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp ult i32 %422, %424
  br i1 %425, label %395, label %426

426:                                              ; preds = %419, %389, %356, %350
  %427 = load ptr, ptr %8, align 4
  %428 = getelementptr i8, ptr %0, i32 1956
  %429 = load ptr, ptr %428, align 4
  tail call void %427(i32 noundef 134217728, ptr noundef %429) #8
  %430 = load ptr, ptr %8, align 4
  %431 = getelementptr i8, ptr %0, i32 1952
  %432 = load ptr, ptr %431, align 8
  tail call void %430(i32 noundef 134217728, ptr noundef %432) #8
  %433 = load ptr, ptr %8, align 4
  %434 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 4
  tail call void %433(i32 noundef 0, ptr noundef %434) #8
  %435 = load ptr, ptr %8, align 4
  %436 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 5
  tail call void %435(i32 noundef 0, ptr noundef %436) #8
  %437 = load ptr, ptr %8, align 4
  %438 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 6
  tail call void %437(i32 noundef 0, ptr noundef %438) #8
  %439 = load i32, ptr %45, align 4
  %440 = and i32 %439, 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %426
  %443 = load ptr, ptr %8, align 4
  %444 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 18
  tail call void %443(i32 noundef 0, ptr noundef %444) #8
  br label %445

445:                                              ; preds = %442, %426
  %446 = getelementptr i8, ptr %0, i32 1961
  %447 = load i8, ptr %446, align 1
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %457, label %449

449:                                              ; preds = %449, %445
  %450 = phi i32 [ %453, %449 ], [ 0, %445 ]
  %451 = load ptr, ptr %8, align 4
  %452 = getelementptr %struct.flexcan_regs, ptr %3, i32 0, i32 25, i32 0, i32 2, i32 %450
  tail call void %451(i32 noundef 0, ptr noundef %452) #8
  %453 = add nuw nsw i32 %450, 1
  %454 = load i8, ptr %446, align 1
  %455 = zext i8 %454 to i32
  %456 = icmp ult i32 %453, %455
  br i1 %456, label %449, label %457

457:                                              ; preds = %449, %445
  %458 = load i32, ptr %45, align 4
  %459 = and i32 %458, 16
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %478, label %461

461:                                              ; preds = %457
  %462 = load ptr, ptr %4, align 8
  %463 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 13
  %464 = tail call i32 %462(ptr noundef %463) #8
  %465 = or i32 %464, 536870912
  %466 = load ptr, ptr %8, align 4
  tail call void %466(i32 noundef %465, ptr noundef %463) #8
  %467 = load ptr, ptr %4, align 8
  %468 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 26
  %469 = tail call i32 %467(ptr noundef %468) #8
  %470 = and i32 %469, 2147483647
  %471 = load ptr, ptr %8, align 4
  tail call void %471(i32 noundef %470, ptr noundef %468) #8
  %472 = and i32 %469, 2146697087
  %473 = load ptr, ptr %8, align 4
  tail call void %473(i32 noundef %472, ptr noundef %468) #8
  %474 = or i32 %472, -2147483648
  %475 = load ptr, ptr %8, align 4
  tail call void %475(i32 noundef %474, ptr noundef %468) #8
  %476 = and i32 %464, -536870913
  %477 = load ptr, ptr %8, align 4
  tail call void %477(i32 noundef %476, ptr noundef %463) #8
  br label %478

478:                                              ; preds = %461, %457
  %479 = load ptr, ptr %2, align 4
  %480 = load ptr, ptr %4, align 8
  %481 = tail call i32 %480(ptr noundef %479) #8
  %482 = and i32 %481, -268435457
  %483 = load ptr, ptr %8, align 4
  tail call void %483(i32 noundef %482, ptr noundef %479) #8
  br label %484

484:                                              ; preds = %490, %478
  %485 = phi i32 [ 24, %478 ], [ %492, %490 ]
  %486 = load ptr, ptr %4, align 8
  %487 = tail call i32 %486(ptr noundef %479) #8
  %488 = and i32 %487, 16777216
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %494, label %490

490:                                              ; preds = %484
  %491 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %491(i32 noundef 2147480) #8
  %492 = add nsw i32 %485, -1
  %493 = icmp eq i32 %485, 0
  br i1 %493, label %494, label %484

494:                                              ; preds = %490, %484
  %495 = load ptr, ptr %4, align 8
  %496 = tail call i32 %495(ptr noundef %479) #8
  %497 = and i32 %496, 16777216
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %501

499:                                              ; preds = %494
  %500 = getelementptr i8, ptr %0, i32 1576
  store i32 0, ptr %500, align 8
  br label %521

501:                                              ; preds = %494, %277, %39
  %502 = load ptr, ptr %2, align 4
  %503 = load ptr, ptr %4, align 8
  %504 = tail call i32 %503(ptr noundef %502) #8
  %505 = or i32 %504, -2147483648
  %506 = load ptr, ptr %8, align 4
  tail call void %506(i32 noundef %505, ptr noundef %502) #8
  %507 = load ptr, ptr %2, align 4
  br label %508

508:                                              ; preds = %514, %501
  %509 = phi i32 [ 24, %501 ], [ %516, %514 ]
  %510 = load ptr, ptr %4, align 8
  %511 = tail call i32 %510(ptr noundef %507) #8
  %512 = and i32 %511, 1048576
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %508
  %515 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %515(i32 noundef 2147480) #8
  %516 = add nsw i32 %509, -1
  %517 = icmp eq i32 %509, 0
  br i1 %517, label %518, label %508

518:                                              ; preds = %514, %508
  %519 = load ptr, ptr %4, align 8
  %520 = tail call i32 %519(ptr noundef %507) #8
  br label %521

521:                                              ; preds = %518, %499, %21
  %522 = phi i32 [ -110, %518 ], [ 0, %499 ], [ -110, %21 ]
  ret i32 %522
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %1, i32 1948
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %1, i32 1576
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %1, i32 1996
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %1, i32 1664
  %15 = getelementptr i8, ptr %1, i32 1968
  %16 = getelementptr i8, ptr %1, i32 2024
  br label %17

17:                                               ; preds = %45, %13
  %18 = phi ptr [ %46, %45 ], [ %6, %13 ]
  %19 = phi i32 [ 1, %45 ], [ 0, %13 ]
  %20 = getelementptr inbounds %struct.flexcan_regs, ptr %18, i32 0, i32 12
  %21 = load i64, ptr %15, align 8
  %22 = icmp ult i64 %21, 4294967296
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %16, align 8
  %25 = getelementptr %struct.flexcan_regs, ptr %18, i32 0, i32 11
  %26 = tail call i32 %24(ptr noundef %25) #8
  %27 = zext i32 %26 to i64
  %28 = shl nuw i64 %27, 32
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i64 [ %28, %23 ], [ 0, %17 ]
  %31 = trunc i64 %21 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %16, align 8
  %35 = tail call i32 %34(ptr noundef %20) #8
  %36 = zext i32 %35 to i64
  %37 = or i64 %30, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i64 [ %37, %33 ], [ %30, %29 ]
  %40 = and i64 %39, %21
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @can_rx_offload_irq_offload_timestamp(ptr noundef %14, i64 noundef %40) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 4
  br label %17

47:                                               ; preds = %2
  %48 = getelementptr i8, ptr %1, i32 2024
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 12
  %51 = tail call i32 %49(ptr noundef %50) #8
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = getelementptr i8, ptr %1, i32 1664
  %56 = tail call i32 @can_rx_offload_irq_offload_fifo(ptr noundef %55) #8
  br label %57

57:                                               ; preds = %54, %47
  %58 = phi i32 [ 1, %54 ], [ 0, %47 ]
  %59 = and i32 %51, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %1, i32 2028
  %63 = load ptr, ptr %62, align 4
  tail call void %63(i32 noundef 128, ptr noundef %50) #8
  %64 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8
  br label %70

70:                                               ; preds = %61, %57, %42, %38
  %71 = phi i32 [ 1, %61 ], [ %58, %57 ], [ %19, %38 ], [ 1, %42 ]
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds %struct.flexcan_regs, ptr %72, i32 0, i32 12
  %74 = getelementptr i8, ptr %1, i32 1976
  %75 = load i64, ptr %74, align 8
  %76 = icmp ult i64 %75, 4294967296
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = getelementptr i8, ptr %1, i32 2024
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr %struct.flexcan_regs, ptr %72, i32 0, i32 11
  %81 = tail call i32 %79(ptr noundef %80) #8
  %82 = zext i32 %81 to i64
  %83 = shl nuw i64 %82, 32
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i64 [ %83, %77 ], [ 0, %70 ]
  %86 = trunc i64 %75 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %1, i32 2024
  %90 = load ptr, ptr %89, align 8
  %91 = tail call i32 %90(ptr noundef %73) #8
  %92 = zext i32 %91 to i64
  %93 = or i64 %85, %92
  br label %94

94:                                               ; preds = %88, %84
  %95 = phi i64 [ %93, %88 ], [ %85, %84 ]
  %96 = and i64 %95, %75
  %97 = load i64, ptr %74, align 8
  %98 = and i64 %96, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %134, label %100

100:                                              ; preds = %94
  %101 = getelementptr i8, ptr %1, i32 2024
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr i8, ptr %1, i32 1952
  %104 = load ptr, ptr %103, align 8
  %105 = tail call i32 %102(ptr noundef %104) #8
  %106 = getelementptr i8, ptr %1, i32 1664
  %107 = shl i32 %105, 16
  %108 = tail call i32 @can_rx_offload_get_echo_skb(ptr noundef %106, i32 noundef 0, i32 noundef %107, ptr noundef null) #8
  %109 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 4
  %115 = getelementptr i8, ptr %1, i32 2028
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %103, align 8
  tail call void %116(i32 noundef 134217728, ptr noundef %117) #8
  %118 = load i64, ptr %74, align 8
  %119 = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 12
  %120 = lshr i64 %118, 32
  %121 = trunc i64 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %100
  %124 = load ptr, ptr %115, align 4
  %125 = getelementptr %struct.flexcan_regs, ptr %6, i32 0, i32 11
  tail call void %124(i32 noundef %121, ptr noundef %125) #8
  br label %126

126:                                              ; preds = %123, %100
  %127 = trunc i64 %118 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %115, align 4
  tail call void %130(i32 noundef %127, ptr noundef %119) #8
  br label %131

131:                                              ; preds = %129, %126
  %132 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %133 = load ptr, ptr %132, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %133) #8
  br label %134

134:                                              ; preds = %131, %94
  %135 = phi i32 [ 1, %131 ], [ %71, %94 ]
  %136 = getelementptr i8, ptr %1, i32 2024
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.flexcan_regs, ptr %6, i32 0, i32 8
  %139 = tail call i32 %137(ptr noundef %138) #8
  %140 = and i32 %139, 196615
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %134
  %143 = getelementptr i8, ptr %1, i32 2028
  %144 = load ptr, ptr %143, align 4
  tail call void %144(i32 noundef %140, ptr noundef %138) #8
  br label %145

145:                                              ; preds = %142, %134
  %146 = phi i32 [ 1, %142 ], [ %135, %134 ]
  %147 = and i32 %139, 196612
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, ptr %9, align 4
  %151 = and i32 %150, 66
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %202, label %153

153:                                              ; preds = %149, %145
  %154 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !10
  %155 = and i32 %139, 48
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163, !prof !20

157:                                              ; preds = %153
  %158 = lshr i32 %139, 9
  %159 = and i32 %158, 1
  %160 = lshr i32 %139, 8
  %161 = and i32 %160, 1
  %162 = tail call i32 @llvm.umax.i32(i32 %159, i32 %161) #8
  br label %176

163:                                              ; preds = %153
  %164 = load ptr, ptr %136, align 8
  %165 = getelementptr inbounds %struct.flexcan_regs, ptr %154, i32 0, i32 7
  %166 = tail call i32 %164(ptr noundef %165) #8
  %167 = trunc i32 %166 to i16
  %168 = and i16 %167, 255
  %169 = lshr i16 %167, 8
  %170 = icmp eq i32 %155, 16
  %171 = select i1 %170, i32 2, i32 3
  %172 = icmp ult i16 %169, %168
  %173 = select i1 %172, i32 0, i32 %171
  %174 = icmp ugt i16 %169, %168
  %175 = select i1 %174, i32 0, i32 %171
  br label %176

176:                                              ; preds = %163, %157
  %177 = phi i32 [ %162, %157 ], [ %171, %163 ]
  %178 = phi i32 [ %161, %157 ], [ %173, %163 ]
  %179 = phi i32 [ %159, %157 ], [ %175, %163 ]
  %180 = load i32, ptr %7, align 8
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %201, label %182, !prof !20

182:                                              ; preds = %176
  %183 = load ptr, ptr %136, align 8
  %184 = getelementptr inbounds %struct.flexcan_regs, ptr %154, i32 0, i32 2
  %185 = tail call i32 %183(ptr noundef %184) #8
  %186 = shl i32 %185, 16
  %187 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %4) #8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %201, label %189, !prof !21

189:                                              ; preds = %182
  %190 = load ptr, ptr %4, align 4
  call void @can_change_state(ptr noundef %1, ptr noundef %190, i32 noundef %179, i32 noundef %178) #8
  %191 = icmp eq i32 %177, 3
  br i1 %191, label %192, label %193, !prof !21

192:                                              ; preds = %189
  call void @can_bus_off(ptr noundef %1) #8
  br label %193

193:                                              ; preds = %192, %189
  %194 = getelementptr i8, ptr %1, i32 1664
  %195 = call i32 @can_rx_offload_queue_sorted(ptr noundef %194, ptr noundef nonnull %187, i32 noundef %186) #8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %199 = load i32, ptr %198, align 8
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 8
  br label %201

201:                                              ; preds = %197, %193, %182, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %202

202:                                              ; preds = %201, %149
  %203 = and i32 %139, 64512
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %303, label %205

205:                                              ; preds = %202
  %206 = getelementptr i8, ptr %1, i32 1580
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %303, label %210

210:                                              ; preds = %205
  %211 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !10
  %212 = load ptr, ptr %136, align 8
  %213 = getelementptr inbounds %struct.flexcan_regs, ptr %211, i32 0, i32 2
  %214 = call i32 %212(ptr noundef %213) #8
  %215 = shl i32 %214, 16
  %216 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %3) #8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %302, label %218, !prof !21

218:                                              ; preds = %210
  %219 = load ptr, ptr %3, align 4
  %220 = load i32, ptr %219, align 8
  %221 = or i32 %220, 136
  store i32 %221, ptr %219, align 8
  %222 = and i32 %139, 32768
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %218
  %225 = load ptr, ptr %3, align 4
  %226 = getelementptr %struct.can_frame, ptr %225, i32 0, i32 5, i32 2
  %227 = load i8, ptr %226, align 2
  %228 = or i8 %227, 16
  store i8 %228, ptr %226, align 2
  br label %229

229:                                              ; preds = %224, %218
  %230 = xor i1 %223, true
  %231 = and i32 %139, 16384
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %3, align 4
  %235 = getelementptr %struct.can_frame, ptr %234, i32 0, i32 5, i32 2
  %236 = load i8, ptr %235, align 2
  %237 = or i8 %236, 8
  store i8 %237, ptr %235, align 2
  br label %238

238:                                              ; preds = %233, %229
  %239 = phi i1 [ true, %233 ], [ %230, %229 ]
  %240 = and i32 %139, 8192
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr %3, align 4
  %244 = load i32, ptr %243, align 8
  %245 = or i32 %244, 32
  store i32 %245, ptr %243, align 8
  %246 = load ptr, ptr %3, align 4
  %247 = getelementptr %struct.can_frame, ptr %246, i32 0, i32 5, i32 3
  store i8 25, ptr %247, align 1
  br label %248

248:                                              ; preds = %242, %238
  %249 = phi i1 [ true, %242 ], [ %239, %238 ]
  %250 = and i32 %139, 4096
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %248
  %253 = load ptr, ptr %3, align 4
  %254 = getelementptr %struct.can_frame, ptr %253, i32 0, i32 5, i32 2
  %255 = load i8, ptr %254, align 2
  %256 = or i8 %255, 1
  store i8 %256, ptr %254, align 2
  %257 = load ptr, ptr %3, align 4
  %258 = getelementptr %struct.can_frame, ptr %257, i32 0, i32 5, i32 3
  store i8 8, ptr %258, align 1
  br label %259

259:                                              ; preds = %252, %248
  %260 = and i32 %139, 2048
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = and i32 %139, 1024
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %277, label %272

265:                                              ; preds = %259
  %266 = load ptr, ptr %3, align 4
  %267 = getelementptr %struct.can_frame, ptr %266, i32 0, i32 5, i32 2
  %268 = load i8, ptr %267, align 2
  %269 = or i8 %268, 2
  store i8 %269, ptr %267, align 2
  %270 = and i32 %139, 1024
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %281, label %272

272:                                              ; preds = %265, %262
  %273 = load ptr, ptr %3, align 4
  %274 = getelementptr %struct.can_frame, ptr %273, i32 0, i32 5, i32 2
  %275 = load i8, ptr %274, align 2
  %276 = or i8 %275, 4
  store i8 %276, ptr %274, align 2
  br label %281

277:                                              ; preds = %262
  %278 = getelementptr i8, ptr %1, i32 1412
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %279, 1
  store i32 %280, ptr %278, align 4
  br i1 %251, label %289, label %285

281:                                              ; preds = %272, %265
  %282 = getelementptr i8, ptr %1, i32 1412
  %283 = load i32, ptr %282, align 4
  %284 = add i32 %283, 1
  store i32 %284, ptr %282, align 4
  br label %285

285:                                              ; preds = %281, %277
  %286 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %287 = load i32, ptr %286, align 8
  %288 = add i32 %287, 1
  store i32 %288, ptr %286, align 8
  br label %289

289:                                              ; preds = %285, %277
  br i1 %249, label %290, label %294

290:                                              ; preds = %289
  %291 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %292 = load i32, ptr %291, align 4
  %293 = add i32 %292, 1
  store i32 %293, ptr %291, align 4
  br label %294

294:                                              ; preds = %290, %289
  %295 = getelementptr i8, ptr %1, i32 1664
  %296 = call i32 @can_rx_offload_queue_sorted(ptr noundef %295, ptr noundef nonnull %216, i32 noundef %215) #8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %300 = load i32, ptr %299, align 8
  %301 = add i32 %300, 1
  store i32 %301, ptr %299, align 8
  br label %302

302:                                              ; preds = %298, %294, %210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %303

303:                                              ; preds = %302, %205, %202
  %304 = load i32, ptr %7, align 8
  %305 = icmp eq i32 %8, %304
  br i1 %305, label %342, label %306

306:                                              ; preds = %303
  %307 = load i32, ptr %9, align 4
  %308 = and i32 %307, 64
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %342, label %310

310:                                              ; preds = %306
  %311 = getelementptr i8, ptr %1, i32 1580
  %312 = load i32, ptr %311, align 4
  %313 = and i32 %312, 16
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %342

315:                                              ; preds = %310
  switch i32 %304, label %342 [
    i32 0, label %316
    i32 1, label %326
    i32 2, label %331
    i32 3, label %331
  ]

316:                                              ; preds = %315
  %317 = and i32 %307, 2
  %318 = icmp eq i32 %317, 0
  %319 = load ptr, ptr %5, align 4
  %320 = getelementptr i8, ptr %1, i32 1984
  %321 = load i32, ptr %320, align 8
  br i1 %318, label %324, label %322

322:                                              ; preds = %316
  %323 = or i32 %321, 16384
  br label %336

324:                                              ; preds = %316
  %325 = and i32 %321, -16385
  br label %336

326:                                              ; preds = %315
  %327 = load ptr, ptr %5, align 4
  %328 = getelementptr i8, ptr %1, i32 1984
  %329 = load i32, ptr %328, align 8
  %330 = or i32 %329, 16384
  br label %336

331:                                              ; preds = %315, %315
  %332 = load ptr, ptr %5, align 4
  %333 = getelementptr i8, ptr %1, i32 1984
  %334 = load i32, ptr %333, align 8
  %335 = and i32 %334, -16385
  br label %336

336:                                              ; preds = %331, %326, %324, %322
  %337 = phi ptr [ %327, %326 ], [ %332, %331 ], [ %319, %324 ], [ %319, %322 ]
  %338 = phi i32 [ %330, %326 ], [ %335, %331 ], [ %325, %324 ], [ %323, %322 ]
  %339 = getelementptr i8, ptr %1, i32 2028
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.flexcan_regs, ptr %337, i32 0, i32 1
  call void %340(i32 noundef %338, ptr noundef %341) #8
  br label %342

342:                                              ; preds = %336, %315, %310, %306, %303
  %343 = icmp eq i32 %146, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %342
  %345 = getelementptr i8, ptr %1, i32 1664
  call void @can_rx_offload_irq_finish(ptr noundef %345) #8
  br label %346

346:                                              ; preds = %344, %342
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flexcan_chip_interrupts_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1948
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %5 = load i32, ptr %4, align 8
  tail call void @disable_irq(i32 noundef %5) #8
  %6 = getelementptr i8, ptr %0, i32 2028
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 1984
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 1
  tail call void %7(i32 noundef %9, ptr noundef %10) #8
  %11 = getelementptr i8, ptr %0, i32 1968
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr i8, ptr %0, i32 1976
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, %12
  %16 = load ptr, ptr %6, align 4
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 9
  tail call void %16(i32 noundef %18, ptr noundef %19) #8
  %20 = load ptr, ptr %6, align 4
  %21 = trunc i64 %15 to i32
  %22 = getelementptr inbounds %struct.flexcan_regs, ptr %3, i32 0, i32 10
  tail call void %20(i32 noundef %21, ptr noundef %22) #8
  %23 = load i32, ptr %4, align 8
  tail call void @enable_irq(i32 noundef %23) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @flexcan_mailbox_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr i8, ptr %0, i32 284
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !10
  br i1 %3, label %148, label %8, !prof !21

8:                                                ; preds = %4
  %9 = trunc i32 %1 to i8
  %10 = getelementptr i8, ptr %0, i32 297
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, %9
  br i1 %12, label %14, label %13, !prof !20

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %32

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 298
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i16
  %18 = udiv i16 512, %17
  %19 = and i16 %18, 255
  %20 = trunc i32 %1 to i16
  %21 = and i16 %20, 255
  %22 = icmp ule i16 %19, %21
  %23 = select i1 %22, i16 %18, i16 0
  %24 = zext i16 %23 to i32
  %25 = sub i32 %1, %24
  %26 = getelementptr inbounds %struct.flexcan_regs, ptr %7, i32 0, i32 25
  %27 = zext i1 %22 to i32
  %28 = zext i8 %16 to i32
  %29 = and i32 %25, 255
  %30 = mul nuw nsw i32 %29, %28
  %31 = getelementptr [2 x [512 x i8]], ptr %26, i32 0, i32 %27, i32 %30
  br label %32

32:                                               ; preds = %14, %13
  %33 = phi ptr [ null, %13 ], [ %31, %14 ]
  %34 = getelementptr i8, ptr %0, i32 332
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr i8, ptr %0, i32 360
  br i1 %37, label %59, label %39

39:                                               ; preds = %39, %32
  %40 = load ptr, ptr %38, align 8
  %41 = tail call i32 %40(ptr noundef %33) #8
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %39

44:                                               ; preds = %39
  %45 = and i32 %41, 184549376
  %46 = icmp eq i32 %45, 33554432
  br i1 %46, label %47, label %180

47:                                               ; preds = %44
  %48 = and i32 %41, 251658240
  %49 = icmp eq i32 %48, 100663296
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 36, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8
  br label %68

59:                                               ; preds = %32
  %60 = load ptr, ptr %38, align 8
  %61 = getelementptr inbounds %struct.flexcan_regs, ptr %7, i32 0, i32 12
  %62 = tail call i32 %60(ptr noundef %61) #8
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %180, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %38, align 8
  %67 = tail call i32 %66(ptr noundef %33) #8
  br label %68

68:                                               ; preds = %65, %50, %47
  %69 = phi i32 [ %67, %65 ], [ %41, %50 ], [ %41, %47 ]
  %70 = icmp sgt i32 %69, -1
  %71 = load ptr, ptr %0, align 8
  br i1 %70, label %74, label %72

72:                                               ; preds = %68
  %73 = call ptr @alloc_canfd_skb(ptr noundef %71, ptr noundef nonnull %5) #8
  br label %76

74:                                               ; preds = %68
  %75 = call ptr @alloc_can_skb(ptr noundef %71, ptr noundef nonnull %5) #8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %148, label %79, !prof !21

79:                                               ; preds = %76
  %80 = shl i32 %69, 16
  store i32 %80, ptr %2, align 4
  %81 = getelementptr i8, ptr %0, i32 360
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.flexcan_mb, ptr %33, i32 0, i32 1
  %84 = call i32 %82(ptr noundef %83) #8
  %85 = and i32 %69, 2097152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = and i32 %84, 536870911
  %89 = or i32 %88, -2147483648
  %90 = load ptr, ptr %5, align 4
  store i32 %89, ptr %90, align 8
  br label %95

91:                                               ; preds = %79
  %92 = lshr i32 %84, 18
  %93 = and i32 %92, 2047
  %94 = load ptr, ptr %5, align 4
  store i32 %93, ptr %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = lshr i32 %69, 16
  br i1 %70, label %109, label %97

97:                                               ; preds = %95
  %98 = trunc i32 %96 to i8
  %99 = and i8 %98, 15
  %100 = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %99) #8
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr inbounds %struct.canfd_frame, ptr %101, i32 0, i32 1
  store i8 %100, ptr %102, align 4
  %103 = and i32 %69, 1073741824
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.canfd_frame, ptr %101, i32 0, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = or i8 %107, 1
  store i8 %108, ptr %106, align 1
  br label %120

109:                                              ; preds = %95
  %110 = and i32 %96, 15
  %111 = call i32 @llvm.umin.i32(i32 %110, i32 8)
  %112 = trunc i32 %111 to i8
  %113 = load ptr, ptr %5, align 4
  %114 = getelementptr inbounds %struct.canfd_frame, ptr %113, i32 0, i32 1
  store i8 %112, ptr %114, align 4
  %115 = and i32 %69, 1048576
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i32, ptr %113, align 8
  %119 = or i32 %118, 1073741824
  store i32 %119, ptr %113, align 8
  br label %120

120:                                              ; preds = %117, %109, %105, %97
  %121 = and i32 %69, 536870912
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %5, align 4
  br i1 %122, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.canfd_frame, ptr %123, i32 0, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = or i8 %126, 2
  store i8 %127, ptr %125, align 1
  br label %128

128:                                              ; preds = %124, %120
  %129 = getelementptr inbounds %struct.canfd_frame, ptr %123, i32 0, i32 1
  %130 = load i8, ptr %129, align 4
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %132, %128
  %133 = phi i32 [ %142, %132 ], [ 0, %128 ]
  %134 = load ptr, ptr %81, align 8
  %135 = lshr exact i32 %133, 2
  %136 = getelementptr %struct.flexcan_mb, ptr %33, i32 0, i32 2, i32 %135
  %137 = call i32 %134(ptr noundef %136) #8
  %138 = call i32 @llvm.bswap.i32(i32 %137)
  %139 = load ptr, ptr %5, align 4
  %140 = getelementptr inbounds %struct.canfd_frame, ptr %139, i32 0, i32 5
  %141 = getelementptr i8, ptr %140, i32 %133
  store i32 %138, ptr %141, align 4
  %142 = add nuw nsw i32 %133, 4
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr inbounds %struct.canfd_frame, ptr %143, i32 0, i32 1
  %145 = load i8, ptr %144, align 4
  %146 = zext i8 %145 to i32
  %147 = icmp ult i32 %142, %146
  br i1 %147, label %132, label %148

148:                                              ; preds = %132, %128, %76, %4
  %149 = phi ptr [ inttoptr (i32 -105 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %76 ], [ %77, %128 ], [ %77, %132 ]
  %150 = getelementptr i8, ptr %0, i32 332
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %148
  %155 = zext i32 %1 to i64
  %156 = shl nuw i64 1, %155
  %157 = getelementptr inbounds %struct.flexcan_regs, ptr %7, i32 0, i32 12
  %158 = lshr i64 %156, 32
  %159 = trunc i64 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %0, i32 364
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr %struct.flexcan_regs, ptr %7, i32 0, i32 11
  call void %163(i32 noundef %159, ptr noundef %164) #8
  br label %165

165:                                              ; preds = %161, %154
  %166 = trunc i64 %156 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %165
  %169 = getelementptr i8, ptr %0, i32 364
  %170 = load ptr, ptr %169, align 4
  call void %170(i32 noundef %166, ptr noundef %157) #8
  br label %175

171:                                              ; preds = %148
  %172 = getelementptr i8, ptr %0, i32 364
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.flexcan_regs, ptr %7, i32 0, i32 12
  call void %173(i32 noundef 32, ptr noundef %174) #8
  br label %175

175:                                              ; preds = %171, %168, %165
  %176 = getelementptr i8, ptr %0, i32 360
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.flexcan_regs, ptr %7, i32 0, i32 2
  %179 = call i32 %177(ptr noundef %178) #8
  br label %180

180:                                              ; preds = %175, %59, %44
  %181 = phi ptr [ %149, %175 ], [ null, %59 ], [ null, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret ptr %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_add_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_add_fifo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_chip_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.flexcan_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.flexcan_priv, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %3) #8
  %7 = or i32 %6, -2147483648
  %8 = getelementptr inbounds %struct.flexcan_priv, ptr %0, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  tail call void %9(i32 noundef %7, ptr noundef %3) #8
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %17, %1
  %12 = phi i32 [ 24, %1 ], [ %19, %17 ]
  %13 = load ptr, ptr %4, align 8
  %14 = tail call i32 %13(ptr noundef %10) #8
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #8
  %19 = add nsw i32 %12, -1
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %21, label %11

21:                                               ; preds = %17, %11
  %22 = load ptr, ptr %4, align 8
  %23 = tail call i32 %22(ptr noundef %10) #8
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -110, i32 0
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_irq_offload_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_irq_offload_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_get_echo_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_irq_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_queue_sorted(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__flexcan_chip_stop(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1948
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1444
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = udiv i32 10000000, %6
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 25, %2 ]
  %12 = getelementptr i8, ptr %0, i32 2024
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 %13(ptr noundef %4) #8
  %15 = or i32 %14, 1342177280
  %16 = getelementptr i8, ptr %0, i32 2028
  %17 = load ptr, ptr %16, align 4
  tail call void %17(i32 noundef %15, ptr noundef %4) #8
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %25, %10
  %20 = phi i32 [ %26, %25 ], [ %11, %10 ]
  %21 = load ptr, ptr %12, align 8
  %22 = tail call i32 %21(ptr noundef %4) #8
  %23 = and i32 %22, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = add nsw i32 %20, -1
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #8
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %19

29:                                               ; preds = %25, %19, %10
  %30 = load ptr, ptr %12, align 8
  %31 = tail call i32 %30(ptr noundef %4) #8
  %32 = and i32 %31, 16777216
  %33 = icmp ne i32 %32, 0
  %34 = or i1 %33, %1
  br i1 %34, label %35, label %81

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 4
  %37 = load ptr, ptr %12, align 8
  %38 = tail call i32 %37(ptr noundef %36) #8
  %39 = or i32 %38, -2147483648
  %40 = load ptr, ptr %16, align 4
  tail call void %40(i32 noundef %39, ptr noundef %36) #8
  %41 = load ptr, ptr %3, align 4
  br label %42

42:                                               ; preds = %48, %35
  %43 = phi i32 [ 24, %35 ], [ %50, %48 ]
  %44 = load ptr, ptr %12, align 8
  %45 = tail call i32 %44(ptr noundef %41) #8
  %46 = and i32 %45, 1048576
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #8
  %50 = add nsw i32 %43, -1
  %51 = icmp eq i32 %43, 0
  br i1 %51, label %52, label %42

52:                                               ; preds = %48, %42
  %53 = load ptr, ptr %12, align 8
  %54 = tail call i32 %53(ptr noundef %41) #8
  %55 = and i32 %54, 1048576
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 -110, i32 0
  %58 = xor i1 %56, true
  %59 = or i1 %58, %1
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = getelementptr i8, ptr %0, i32 1576
  store i32 4, ptr %61, align 8
  br label %81

62:                                               ; preds = %52
  %63 = load ptr, ptr %3, align 4
  %64 = load ptr, ptr %12, align 8
  %65 = tail call i32 %64(ptr noundef %63) #8
  %66 = and i32 %65, -268435457
  %67 = load ptr, ptr %16, align 4
  tail call void %67(i32 noundef %66, ptr noundef %63) #8
  br label %68

68:                                               ; preds = %74, %62
  %69 = phi i32 [ 24, %62 ], [ %76, %74 ]
  %70 = load ptr, ptr %12, align 8
  %71 = tail call i32 %70(ptr noundef %63) #8
  %72 = and i32 %71, 16777216
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #8
  %76 = add nsw i32 %69, -1
  %77 = icmp eq i32 %69, 0
  br i1 %77, label %78, label %68

78:                                               ; preds = %74, %68
  %79 = load ptr, ptr %12, align 8
  %80 = tail call i32 %79(ptr noundef %63) #8
  br label %81

81:                                               ; preds = %78, %60, %29
  %82 = phi i32 [ 0, %60 ], [ %57, %78 ], [ -110, %29 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @flexcan_clks_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.flexcan_priv, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %26

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.flexcan_priv, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @clk_prepare(ptr noundef nonnull %14) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef nonnull %14) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef nonnull %14) #8
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ %20, %22 ], [ %17, %16 ]
  %25 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  tail call void @clk_unprepare(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %23, %19, %12, %11, %5
  %27 = phi i32 [ %24, %23 ], [ 0, %12 ], [ 0, %19 ], [ %9, %11 ], [ %6, %5 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 1) #8
  %21 = getelementptr i8, ptr %3, i32 1948
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %3, i32 2024
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 %24(ptr noundef %22) #8
  %26 = or i32 %25, 4194304
  %27 = getelementptr i8, ptr %3, i32 2028
  %28 = load ptr, ptr %27, align 4
  tail call void %28(i32 noundef %26, ptr noundef %22) #8
  %29 = getelementptr i8, ptr %3, i32 1996
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %17
  %34 = getelementptr i8, ptr %3, i32 2004
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %3, i32 2008
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %3, i32 2009
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 1, %41
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %38, i32 noundef %42, i32 noundef %42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %44 = load ptr, ptr %21, align 4
  br label %45

45:                                               ; preds = %51, %33
  %46 = phi i32 [ 24, %33 ], [ %53, %51 ]
  %47 = load ptr, ptr %23, align 8
  %48 = tail call i32 %47(ptr noundef %44) #8
  %49 = and i32 %48, 1048576
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 2147480) #8
  %53 = add nsw i32 %46, -1
  %54 = icmp eq i32 %46, 0
  br i1 %54, label %55, label %45

55:                                               ; preds = %51, %45
  %56 = load ptr, ptr %23, align 8
  %57 = tail call i32 %56(ptr noundef %44) #8
  %58 = and i32 %57, 1048576
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %84, label %78

60:                                               ; preds = %13, %8
  %61 = tail call fastcc i32 @__flexcan_chip_stop(ptr noundef %3, i1 noundef zeroext false) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %3, i32 1948
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %3, i32 2028
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.flexcan_regs, ptr %65, i32 0, i32 9
  tail call void %67(i32 noundef 0, ptr noundef %68) #8
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr inbounds %struct.flexcan_regs, ptr %65, i32 0, i32 10
  tail call void %69(i32 noundef 0, ptr noundef %70) #8
  %71 = load ptr, ptr %66, align 4
  %72 = getelementptr i8, ptr %3, i32 1984
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, -52225
  %75 = getelementptr inbounds %struct.flexcan_regs, ptr %65, i32 0, i32 1
  tail call void %71(i32 noundef %74, ptr noundef %75) #8
  %76 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %63, %55
  %79 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %80 = load ptr, ptr %79, align 64
  %81 = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %81) #8
  tail call void @netif_device_detach(ptr noundef %3) #8
  br label %82

82:                                               ; preds = %78, %1
  %83 = getelementptr i8, ptr %3, i32 1576
  store i32 5, ptr %83, align 8
  br label %84

84:                                               ; preds = %82, %63, %60, %55, %17
  %85 = phi i32 [ 0, %82 ], [ %61, %60 ], [ %76, %63 ], [ -524, %17 ], [ -110, %55 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1576
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %95, label %9

9:                                                ; preds = %1
  tail call void @netif_device_attach(ptr noundef %3) #8
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 0) #8
  %25 = getelementptr i8, ptr %3, i32 1996
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %3, i32 1948
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %3, i32 2004
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %3, i32 2008
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %3, i32 2009
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 1, %39
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %36, i32 noundef %40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %42 = getelementptr i8, ptr %3, i32 2024
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 %43(ptr noundef %31) #8
  %45 = and i32 %44, -4194305
  %46 = getelementptr i8, ptr %3, i32 2028
  %47 = load ptr, ptr %46, align 4
  tail call void %47(i32 noundef %45, ptr noundef %31) #8
  %48 = load ptr, ptr %30, align 4
  br label %49

49:                                               ; preds = %55, %29
  %50 = phi i32 [ 24, %29 ], [ %57, %55 ]
  %51 = load ptr, ptr %42, align 8
  %52 = tail call i32 %51(ptr noundef %48) #8
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #8
  %57 = add nsw i32 %50, -1
  %58 = icmp eq i32 %50, 0
  br i1 %58, label %59, label %49

59:                                               ; preds = %55, %49
  %60 = load ptr, ptr %42, align 8
  %61 = tail call i32 %60(ptr noundef %48) #8
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %95, label %64

64:                                               ; preds = %59, %21
  %65 = phi i32 [ -524, %21 ], [ -110, %59 ]
  br label %95

66:                                               ; preds = %17, %9
  %67 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @flexcan_chip_start(ptr noundef %3)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %3, i32 1948
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %76 = load i32, ptr %75, align 8
  tail call void @disable_irq(i32 noundef %76) #8
  %77 = getelementptr i8, ptr %3, i32 2028
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %3, i32 1984
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.flexcan_regs, ptr %74, i32 0, i32 1
  tail call void %78(i32 noundef %80, ptr noundef %81) #8
  %82 = getelementptr i8, ptr %3, i32 1968
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr i8, ptr %3, i32 1976
  %85 = load i64, ptr %84, align 8
  %86 = or i64 %85, %83
  %87 = load ptr, ptr %77, align 4
  %88 = lshr i64 %86, 32
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.flexcan_regs, ptr %74, i32 0, i32 9
  tail call void %87(i32 noundef %89, ptr noundef %90) #8
  %91 = load ptr, ptr %77, align 4
  %92 = trunc i64 %86 to i32
  %93 = getelementptr inbounds %struct.flexcan_regs, ptr %74, i32 0, i32 10
  tail call void %91(i32 noundef %92, ptr noundef %93) #8
  %94 = load i32, ptr %75, align 8
  tail call void @enable_irq(i32 noundef %94) #8
  br label %95

95:                                               ; preds = %72, %69, %66, %64, %59, %1
  %96 = phi i32 [ %67, %66 ], [ %70, %69 ], [ %65, %64 ], [ 0, %59 ], [ 0, %72 ], [ 0, %1 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_noirq_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %3, i32 1948
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %3, i32 2024
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 %21(ptr noundef %19) #8
  %23 = or i32 %22, 67108864
  %24 = getelementptr i8, ptr %3, i32 2028
  %25 = load ptr, ptr %24, align 4
  tail call void %25(i32 noundef %23, ptr noundef %19) #8
  br label %26

26:                                               ; preds = %17, %13, %8
  %27 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %1
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ 0, %29 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_noirq_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %3, i32 1948
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %3, i32 2024
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 %24(ptr noundef %22) #8
  %26 = and i32 %25, -67108865
  %27 = getelementptr i8, ptr %3, i32 2028
  %28 = load ptr, ptr %27, align 4
  tail call void %28(i32 noundef %26, ptr noundef %22) #8
  br label %29

29:                                               ; preds = %20, %16, %11, %8, %1
  %30 = phi i32 [ 0, %20 ], [ 0, %1 ], [ %9, %8 ], [ 0, %16 ], [ 0, %11 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1992
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = getelementptr i8, ptr %3, i32 1988
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexcan_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = tail call fastcc i32 @flexcan_clks_enable(ptr noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 598204, i64 2148088175, i64 2148088201, i64 2148088248, i64 2148088270, i64 2148088298, i64 2148088318}
!9 = !{i64 2148100387, i64 2148100413, i64 2148100442, i64 2148100476, i64 2148100507, i64 2148100530}
!10 = !{!"auto-init"}
!11 = !{i64 2148099894}
!12 = !{i64 584773, i64 584798, i64 584820, i64 584836, i64 584848, i64 584868, i64 584892, i64 584908, i64 584920}
!13 = !{i64 2148100020}
!14 = !{i64 5363077}
!15 = !{i64 2156006686}
!16 = !{i64 2156007054}
!17 = !{i64 5362659}
!18 = !{i64 2152902530}
!19 = !{i64 2152903752}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
