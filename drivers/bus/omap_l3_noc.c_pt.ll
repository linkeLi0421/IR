; ModuleID = '/llk/IR/drivers/bus/omap_l3_noc.c_pt.bc'
source_filename = "../drivers/bus/omap_l3_noc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_l3 = type { ptr, [3 x ptr], ptr, i32, ptr, i32, i32, i32, i32 }
%struct.l3_masters_data = type { i32, ptr }
%struct.l3_flagmux_data = type { i32, ptr, i8, i32, i32 }
%struct.l3_target_data = type { i32, ptr }
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

@__initcall__kmod_omap_l3_noc__170_371_omap_l3_init2s = internal global ptr @omap_l3_init, section ".initcall2s.init", align 4
@omap_l3_driver = internal global %struct.platform_driver { ptr @omap_l3_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @l3_noc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l3_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_l3_exit = internal global ptr @omap_l3_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [37 x i8] c"omap_l3_noc.author=Santosh Shilimkar\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [31 x i8] c"omap_l3_noc.author=Sricharan R\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [67 x i8] c"omap_l3_noc.description=OMAP L3 Interconnect error handling driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [41 x i8] c"omap_l3_noc.file=drivers/bus/omap_l3_noc\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [27 x i8] c"omap_l3_noc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"omap_l3_noc\00", align 1
@l3_noc_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-l3-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_l3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-l3-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_l3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-l3-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra_l3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-l3-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4372_l3_data }, %struct.of_device_id zeroinitializer], align 4
@l3_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l3_resume_noirq, ptr null, ptr @l3_resume_noirq, ptr null, ptr @l3_resume_noirq, ptr null, ptr null, ptr null }, align 4
@omap_l3_probe.l3 = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"OF data missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ioremap %d failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"l3-dbg-irq\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"request_irq failed for %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"l3-app-irq\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"L3 %s error: target %d mod:%d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(unclearable)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"L3 %s IRQ not handled!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"UN IDENTIFIED\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c": At Address: 0x%08X \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c": %s in %s mode during %s access\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Opcode Fetch\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Data Access\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Supervisor\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Functional\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"drivers/bus/omap_l3_noc.c\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"%s:L3 %s Error: MASTER %s TARGET %s (%s)%s%s\0A\00", align 1
@l3_transaction_type = internal unnamed_addr constant [8 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ReadEx\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Read Link\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Write Non-Posted\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Write Conditional\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Write Broadcast\00", align 1
@omap4_l3_data = internal constant %struct.omap_l3 { ptr null, [3 x ptr] zeroinitializer, ptr @omap4_l3_flagmux, i32 3, ptr @omap_l3_masters, i32 25, i32 252, i32 0, i32 0 }, align 4
@omap5_l3_data = internal constant %struct.omap_l3 { ptr null, [3 x ptr] zeroinitializer, ptr @omap5_l3_flagmux, i32 3, ptr @omap_l3_masters, i32 25, i32 2016, i32 0, i32 0 }, align 4
@dra_l3_data = internal constant %struct.omap_l3 { ptr null, [3 x ptr] [ptr null, ptr inttoptr (i32 1 to ptr), ptr null], ptr @dra_l3_flagmux, i32 3, ptr @dra_l3_masters, i32 47, i32 252, i32 0, i32 0 }, align 4
@am4372_l3_data = internal constant %struct.omap_l3 { ptr null, [3 x ptr] zeroinitializer, ptr @am4372_l3_flagmux, i32 2, ptr @am4372_l3_masters, i32 27, i32 63, i32 0, i32 0 }, align 4
@omap4_l3_flagmux = internal global [3 x ptr] [ptr @omap_l3_flagmux_clk1, ptr @omap_l3_flagmux_clk2, ptr @omap4_l3_flagmux_clk3], align 4
@omap_l3_masters = internal global [25 x %struct.l3_masters_data] [%struct.l3_masters_data { i32 0, ptr @.str.61 }, %struct.l3_masters_data { i32 4, ptr @.str.62 }, %struct.l3_masters_data { i32 5, ptr @.str.63 }, %struct.l3_masters_data { i32 8, ptr @.str.64 }, %struct.l3_masters_data { i32 12, ptr @.str.43 }, %struct.l3_masters_data { i32 16, ptr @.str.42 }, %struct.l3_masters_data { i32 17, ptr @.str.65 }, %struct.l3_masters_data { i32 18, ptr @.str.66 }, %struct.l3_masters_data { i32 20, ptr @.str.67 }, %struct.l3_masters_data { i32 21, ptr @.str.68 }, %struct.l3_masters_data { i32 22, ptr @.str.63 }, %struct.l3_masters_data { i32 23, ptr @.str.63 }, %struct.l3_masters_data { i32 24, ptr @.str.48 }, %struct.l3_masters_data { i32 28, ptr @.str.40 }, %struct.l3_masters_data { i32 32, ptr @.str.50 }, %struct.l3_masters_data { i32 34, ptr @.str.63 }, %struct.l3_masters_data { i32 35, ptr @.str.63 }, %struct.l3_masters_data { i32 36, ptr @.str.69 }, %struct.l3_masters_data { i32 40, ptr @.str.70 }, %struct.l3_masters_data { i32 41, ptr @.str.71 }, %struct.l3_masters_data { i32 42, ptr @.str.72 }, %struct.l3_masters_data { i32 44, ptr @.str.73 }, %struct.l3_masters_data { i32 48, ptr @.str.74 }, %struct.l3_masters_data { i32 49, ptr @.str.75 }, %struct.l3_masters_data { i32 50, ptr @.str.76 }], align 4
@omap_l3_flagmux_clk1 = internal global %struct.l3_flagmux_data { i32 1280, ptr @omap_l3_target_data_clk1, i8 7, i32 0, i32 0 }, align 4
@omap_l3_flagmux_clk2 = internal global %struct.l3_flagmux_data { i32 4096, ptr @omap_l3_target_data_clk2, i8 21, i32 0, i32 0 }, align 4
@omap4_l3_flagmux_clk3 = internal global %struct.l3_flagmux_data { i32 512, ptr @omap4_l3_target_data_clk3, i8 1, i32 0, i32 0 }, align 4
@omap_l3_target_data_clk1 = internal global [7 x %struct.l3_target_data] [%struct.l3_target_data { i32 256, ptr @.str.32 }, %struct.l3_target_data { i32 512, ptr @.str.33 }, %struct.l3_target_data { i32 768, ptr @.str.34 }, %struct.l3_target_data { i32 1024, ptr @.str.35 }, %struct.l3_target_data { i32 1536, ptr @.str.36 }, %struct.l3_target_data { i32 0, ptr @.str.37 }, %struct.l3_target_data { i32 2304, ptr @.str.38 }], align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"DMM1\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"DMM2\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ABE\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"L4CFG\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"CLK2PWRDISC\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"HOSTCLK1\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"L4WAKEUP\00", align 1
@omap_l3_target_data_clk2 = internal global [21 x %struct.l3_target_data] [%struct.l3_target_data { i32 1280, ptr @.str.39 }, %struct.l3_target_data { i32 768, ptr @.str.40 }, %struct.l3_target_data { i32 256, ptr @.str.41 }, %struct.l3_target_data { i32 1024, ptr @.str.42 }, %struct.l3_target_data { i32 1792, ptr @.str.43 }, %struct.l3_target_data { i32 3328, ptr @.str.44 }, %struct.l3_target_data { i32 2304, ptr @.str.45 }, %struct.l3_target_data { i32 512, ptr @.str.46 }, %struct.l3_target_data { i32 256, ptr @.str.47 }, %struct.l3_target_data { i32 1536, ptr @.str.48 }, %struct.l3_target_data { i32 2048, ptr @.str.49 }, %struct.l3_target_data { i32 5632, ptr @.str.50 }, %struct.l3_target_data { i32 4352, ptr @.str.51 }, %struct.l3_target_data { i32 3840, ptr @.str.52 }, %struct.l3_target_data { i32 3584, ptr @.str.53 }, %struct.l3_target_data { i32 3072, ptr @.str.54 }, %struct.l3_target_data { i32 2560, ptr @.str.55 }, %struct.l3_target_data { i32 2816, ptr @.str.56 }, %struct.l3_target_data { i32 0, ptr @.str.57 }, %struct.l3_target_data { i32 6144, ptr @.str.58 }, %struct.l3_target_data { i32 5888, ptr @.str.59 }], align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"CORTEXM3\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"DSS\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"GPMC\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ISS\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"IVAHD\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"AES1\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"L4PER0\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"OCMRAM\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"GPMCsERROR\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"SGX\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"SL2\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"C2C\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"PWRDISCCLK1\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"AES2\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"L4PER3\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"L4PER1\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"L4PER2\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"HOSTCLK2\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"CAL\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"LLI\00", align 1
@omap4_l3_target_data_clk3 = internal global [1 x %struct.l3_target_data] [%struct.l3_target_data { i32 256, ptr @.str.60 }], align 4
@.str.60 = private unnamed_addr constant [8 x i8] c"DEBUGSS\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"MPU\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"CS_ADP\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"DSP\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"DucatiM3\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"FaceDetect\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"SDMA_Rd\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"SDMA_Wr\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"HSI\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"MMC1\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"MMC2\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"MMC6\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"UNIPRO1\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"USBHOSTHS\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"USBOTGHS\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"USBHOSTFS\00", align 1
@omap5_l3_flagmux = internal global [3 x ptr] [ptr @omap_l3_flagmux_clk1, ptr @omap_l3_flagmux_clk2, ptr @omap5_l3_flagmux_clk3], align 4
@omap5_l3_flagmux_clk3 = internal global %struct.l3_flagmux_data { i32 512, ptr @omap5_l3_target_data_clk3, i8 3, i32 0, i32 0 }, align 4
@omap5_l3_target_data_clk3 = internal global [3 x %struct.l3_target_data] [%struct.l3_target_data { i32 256, ptr @.str.77 }, %struct.l3_target_data { i32 768, ptr @.str.60 }, %struct.l3_target_data { i32 0, ptr @.str.78 }], align 4
@.str.77 = private unnamed_addr constant [8 x i8] c"L3INSTR\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"HOSTCLK3\00", align 1
@dra_l3_flagmux = internal global [3 x ptr] [ptr @dra_l3_flagmux_clk1, ptr @dra_l3_flagmux_clk2, ptr @dra_l3_flagmux_clk3], align 4
@dra_l3_masters = internal global [47 x %struct.l3_masters_data] [%struct.l3_masters_data { i32 0, ptr @.str.61 }, %struct.l3_masters_data { i32 4, ptr @.str.129 }, %struct.l3_masters_data { i32 5, ptr @.str.130 }, %struct.l3_masters_data { i32 8, ptr @.str.131 }, %struct.l3_masters_data { i32 9, ptr @.str.132 }, %struct.l3_masters_data { i32 10, ptr @.str.133 }, %struct.l3_masters_data { i32 11, ptr @.str.134 }, %struct.l3_masters_data { i32 12, ptr @.str.135 }, %struct.l3_masters_data { i32 13, ptr @.str.136 }, %struct.l3_masters_data { i32 14, ptr @.str.137 }, %struct.l3_masters_data { i32 16, ptr @.str.138 }, %struct.l3_masters_data { i32 17, ptr @.str.139 }, %struct.l3_masters_data { i32 18, ptr @.str.140 }, %struct.l3_masters_data { i32 19, ptr @.str.141 }, %struct.l3_masters_data { i32 20, ptr @.str.142 }, %struct.l3_masters_data { i32 21, ptr @.str.143 }, %struct.l3_masters_data { i32 22, ptr @.str.144 }, %struct.l3_masters_data { i32 23, ptr @.str.145 }, %struct.l3_masters_data { i32 24, ptr @.str.95 }, %struct.l3_masters_data { i32 25, ptr @.str.96 }, %struct.l3_masters_data { i32 26, ptr @.str.146 }, %struct.l3_masters_data { i32 27, ptr @.str.147 }, %struct.l3_masters_data { i32 28, ptr @.str.148 }, %struct.l3_masters_data { i32 29, ptr @.str.149 }, %struct.l3_masters_data { i32 32, ptr @.str.40 }, %struct.l3_masters_data { i32 33, ptr @.str.103 }, %struct.l3_masters_data { i32 34, ptr @.str.87 }, %struct.l3_masters_data { i32 35, ptr @.str.120 }, %struct.l3_masters_data { i32 36, ptr @.str.150 }, %struct.l3_masters_data { i32 37, ptr @.str.151 }, %struct.l3_masters_data { i32 38, ptr @.str.152 }, %struct.l3_masters_data { i32 39, ptr @.str.153 }, %struct.l3_masters_data { i32 40, ptr @.str.154 }, %struct.l3_masters_data { i32 41, ptr @.str.109 }, %struct.l3_masters_data { i32 41, ptr @.str.155 }, %struct.l3_masters_data { i32 43, ptr @.str.156 }, %struct.l3_masters_data { i32 44, ptr @.str.157 }, %struct.l3_masters_data { i32 45, ptr @.str.158 }, %struct.l3_masters_data { i32 46, ptr @.str.159 }, %struct.l3_masters_data { i32 47, ptr @.str.160 }, %struct.l3_masters_data { i32 48, ptr @.str.161 }, %struct.l3_masters_data { i32 49, ptr @.str.162 }, %struct.l3_masters_data { i32 51, ptr @.str.163 }, %struct.l3_masters_data { i32 52, ptr @.str.164 }, %struct.l3_masters_data { i32 53, ptr @.str.165 }, %struct.l3_masters_data { i32 54, ptr @.str.166 }, %struct.l3_masters_data { i32 55, ptr @.str.167 }], align 4
@dra_l3_flagmux_clk1 = internal global %struct.l3_flagmux_data { i32 8402176, ptr @dra_l3_target_data_clk1, i8 32, i32 0, i32 0 }, align 4
@dra_l3_flagmux_clk2 = internal global %struct.l3_flagmux_data { i32 8402432, ptr @dra_l3_target_data_clk2, i8 22, i32 0, i32 0 }, align 4
@dra_l3_flagmux_clk3 = internal global %struct.l3_flagmux_data { i32 512, ptr @dra_l3_target_data_clk3, i8 3, i32 0, i32 0 }, align 4
@dra_l3_target_data_clk1 = internal global [32 x %struct.l3_target_data] [%struct.l3_target_data { i32 10752, ptr @.str.44 }, %struct.l3_target_data { i32 512, ptr @.str.79 }, %struct.l3_target_data { i32 1536, ptr @.str.80 }, %struct.l3_target_data { i32 2816, ptr @.str.81 }, %struct.l3_target_data { i32 4864, ptr @.str.82 }, %struct.l3_target_data { i32 11264, ptr @.str.53 }, %struct.l3_target_data { i32 768, ptr @.str.83 }, %struct.l3_target_data { i32 2560, ptr @.str.84 }, %struct.l3_target_data { i32 3072, ptr @.str.85 }, %struct.l3_target_data { i32 3328, ptr @.str.86 }, %struct.l3_target_data { i32 10496, ptr @.str.40 }, %struct.l3_target_data { i32 256, ptr @.str.41 }, %struct.l3_target_data { i32 14080, ptr @.str.87 }, %struct.l3_target_data { i32 5632, ptr @.str.88 }, %struct.l3_target_data { i32 6144, ptr @.str.89 }, %struct.l3_target_data { i32 1280, ptr @.str.90 }, %struct.l3_target_data { i32 7424, ptr @.str.91 }, %struct.l3_target_data { i32 14336, ptr @.str.92 }, %struct.l3_target_data { i32 13056, ptr @.str.93 }, %struct.l3_target_data { i32 4608, ptr @.str.94 }, %struct.l3_target_data { i32 4096, ptr @.str.95 }, %struct.l3_target_data { i32 4352, ptr @.str.96 }, %struct.l3_target_data { i32 8192, ptr @.str.97 }, %struct.l3_target_data { i32 11776, ptr @.str.98 }, %struct.l3_target_data { i32 11008, ptr @.str.99 }, %struct.l3_target_data { i32 1792, ptr @.str.100 }, %struct.l3_target_data { i32 9472, ptr @.str.101 }, %struct.l3_target_data { i32 3584, ptr @.str.102 }, %struct.l3_target_data { i32 8704, ptr @.str.103 }, %struct.l3_target_data { i32 5120, ptr @.str.104 }, %struct.l3_target_data { i32 5376, ptr @.str.105 }, %struct.l3_target_data { i32 2048, ptr @.str.100 }], align 4
@.str.79 = private unnamed_addr constant [7 x i8] c"DMM_P1\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"DSP2_SDMA\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"EVE2\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"DMM_P2\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"DSP1_SDMA\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"EVE1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"EVE3\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"EVE4\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"PCIE1\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"IVA_CONFIG\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"IVA_SL2IF\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"L4_CFG\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"L4_WKUP\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"PCIE2\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"SHA2_1\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"GPU\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"IPU1\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"IPU2\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"TPCC_EDMA\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"TPTC1_EDMA\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"TPTC2_EDMA\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"VCP1\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"L4_PER2_P3\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"L4_PER3_P3\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"MMU1\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"PRUSS1\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"PRUSS2\00", align 1
@dra_l3_target_data_clk2 = internal global [22 x %struct.l3_target_data] [%struct.l3_target_data { i32 0, ptr @.str.106 }, %struct.l3_target_data { i32 8388608, ptr @.str.107 }, %struct.l3_target_data { i32 57005, ptr null }, %struct.l3_target_data { i32 13312, ptr @.str.108 }, %struct.l3_target_data { i32 2304, ptr @.str.109 }, %struct.l3_target_data { i32 57005, ptr null }, %struct.l3_target_data { i32 8448, ptr @.str.110 }, %struct.l3_target_data { i32 7168, ptr @.str.111 }, %struct.l3_target_data { i32 7936, ptr @.str.112 }, %struct.l3_target_data { i32 8960, ptr @.str.113 }, %struct.l3_target_data { i32 9216, ptr @.str.114 }, %struct.l3_target_data { i32 9728, ptr @.str.115 }, %struct.l3_target_data { i32 9984, ptr @.str.116 }, %struct.l3_target_data { i32 12032, ptr @.str.117 }, %struct.l3_target_data { i32 12288, ptr @.str.118 }, %struct.l3_target_data { i32 12544, ptr @.str.119 }, %struct.l3_target_data { i32 10240, ptr @.str.120 }, %struct.l3_target_data { i32 3840, ptr @.str.121 }, %struct.l3_target_data { i32 5888, ptr @.str.122 }, %struct.l3_target_data { i32 6400, ptr @.str.123 }, %struct.l3_target_data { i32 7680, ptr @.str.124 }, %struct.l3_target_data { i32 14592, ptr @.str.125 }], align 4
@.str.106 = private unnamed_addr constant [10 x i8] c"HOST CLK1\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"HOST CLK2\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"SHA2_2\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"BB2D\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"L4_PER1_P3\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"L4_PER1_P1\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"L4_PER1_P2\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"L4_PER2_P1\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"L4_PER2_P2\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"L4_PER3_P1\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"L4_PER3_P2\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"MCASP1\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"MCASP2\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"MCASP3\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"MMU2\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"OCMC_RAM1\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"OCMC_RAM2\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"OCMC_RAM3\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"OCMC_ROM\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"QSPI\00", align 1
@dra_l3_target_data_clk3 = internal global [3 x %struct.l3_target_data] [%struct.l3_target_data { i32 256, ptr @.str.126 }, %struct.l3_target_data { i32 768, ptr @.str.127 }, %struct.l3_target_data { i32 0, ptr @.str.128 }], align 4
@.str.126 = private unnamed_addr constant [9 x i8] c"L3_INSTR\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"DEBUGSS_CT_TBR\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"HOST CLK3\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"CS_DAP\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"IEEE1500_2_OCP\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"DSP1_MDMA\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"DSP1_CFG\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"DSP1_DMA\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"DSP2_MDMA\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"DSP2_CFG\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"DSP2_DMA\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"IVA\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"EVE1_P1\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"EVE2_P1\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"EVE3_P1\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"EVE4_P1\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"PRUSS1 PRU1\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"PRUSS1 PRU2\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"PRUSS2 PRU1\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"PRUSS2 PRU2\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"SDMA\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"CDMA\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"TC1_EDMA\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"TC2_EDMA\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"VIP1\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"VIP2\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"VIP3\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"VPE\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"GPU_P1\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"GPU_P2\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"GMAC_SW\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"USB3\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"USB2_SS\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"USB2_ULPI_SS1\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"USB2_ULPI_SS2\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"CSI2_1\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"CSI2_2\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"SATA\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"EVE1_P2\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"EVE2_P2\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"EVE3_P2\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"EVE4_P2\00", align 1
@am4372_l3_flagmux = internal global [2 x ptr] [ptr @am4372_l3_flagmux_200f, ptr @am4372_l3_flagmux_100s], align 4
@am4372_l3_masters = internal global [27 x %struct.l3_masters_data] [%struct.l3_masters_data { i32 0, ptr @.str.191 }, %struct.l3_masters_data { i32 1, ptr @.str.192 }, %struct.l3_masters_data { i32 4, ptr @.str.193 }, %struct.l3_masters_data { i32 5, ptr @.str.194 }, %struct.l3_masters_data { i32 12, ptr @.str.195 }, %struct.l3_masters_data { i32 13, ptr @.str.196 }, %struct.l3_masters_data { i32 20, ptr @.str.197 }, %struct.l3_masters_data { i32 24, ptr @.str.198 }, %struct.l3_masters_data { i32 25, ptr @.str.199 }, %struct.l3_masters_data { i32 26, ptr @.str.200 }, %struct.l3_masters_data { i32 27, ptr @.str.201 }, %struct.l3_masters_data { i32 28, ptr @.str.202 }, %struct.l3_masters_data { i32 29, ptr @.str.203 }, %struct.l3_masters_data { i32 32, ptr @.str.176 }, %struct.l3_masters_data { i32 33, ptr @.str.204 }, %struct.l3_masters_data { i32 34, ptr @.str.205 }, %struct.l3_masters_data { i32 35, ptr @.str.206 }, %struct.l3_masters_data { i32 37, ptr @.str.40 }, %struct.l3_masters_data { i32 40, ptr @.str.207 }, %struct.l3_masters_data { i32 41, ptr @.str.208 }, %struct.l3_masters_data { i32 44, ptr @.str.209 }, %struct.l3_masters_data { i32 45, ptr @.str.210 }, %struct.l3_masters_data { i32 48, ptr @.str.211 }, %struct.l3_masters_data { i32 52, ptr @.str.212 }, %struct.l3_masters_data { i32 53, ptr @.str.213 }, %struct.l3_masters_data { i32 54, ptr @.str.214 }, %struct.l3_masters_data { i32 55, ptr @.str.215 }], align 4
@am4372_l3_flagmux_200f = internal global %struct.l3_flagmux_data { i32 4096, ptr @am4372_l3_target_data_200f, i8 15, i32 0, i32 0 }, align 4
@am4372_l3_flagmux_100s = internal global %struct.l3_flagmux_data { i32 1536, ptr @am4372_l3_target_data_100s, i8 13, i32 0, i32 0 }, align 4
@am4372_l3_target_data_200f = internal global [15 x %struct.l3_target_data] [%struct.l3_target_data { i32 3840, ptr @.str.168 }, %struct.l3_target_data { i32 4608, ptr @.str.169 }, %struct.l3_target_data { i32 1024, ptr @.str.170 }, %struct.l3_target_data { i32 1792, ptr @.str.171 }, %struct.l3_target_data { i32 2048, ptr @.str.172 }, %struct.l3_target_data { i32 2304, ptr @.str.173 }, %struct.l3_target_data { i32 2816, ptr @.str.174 }, %struct.l3_target_data { i32 3328, ptr @.str.60 }, %struct.l3_target_data { i32 57005, ptr null }, %struct.l3_target_data { i32 512, ptr @.str.175 }, %struct.l3_target_data { i32 3072, ptr @.str.176 }, %struct.l3_target_data { i32 1280, ptr @.str.177 }, %struct.l3_target_data { i32 2560, ptr @.str.178 }, %struct.l3_target_data { i32 768, ptr @.str.179 }, %struct.l3_target_data { i32 256, ptr @.str.180 }], align 4
@.str.168 = private unnamed_addr constant [5 x i8] c"EMIF\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"DES\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"OCMCRAM\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"TPTC0\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"TPTC1\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"TPTC2\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"TPCC\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"SHA\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"SGX530\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"AES0\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"L4_FAST\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"MPUSS_L2_RAM\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"ICSS\00", align 1
@am4372_l3_target_data_100s = internal global [13 x %struct.l3_target_data] [%struct.l3_target_data { i32 256, ptr @.str.181 }, %struct.l3_target_data { i32 512, ptr @.str.182 }, %struct.l3_target_data { i32 768, ptr @.str.183 }, %struct.l3_target_data { i32 1024, ptr @.str.184 }, %struct.l3_target_data { i32 2048, ptr @.str.185 }, %struct.l3_target_data { i32 2304, ptr @.str.186 }, %struct.l3_target_data { i32 3072, ptr @.str.187 }, %struct.l3_target_data { i32 1792, ptr @.str.41 }, %struct.l3_target_data { i32 3328, ptr @.str.188 }, %struct.l3_target_data { i32 57005, ptr null }, %struct.l3_target_data { i32 1280, ptr @.str.189 }, %struct.l3_target_data { i32 3584, ptr @.str.91 }, %struct.l3_target_data { i32 2560, ptr @.str.190 }], align 4
@.str.181 = private unnamed_addr constant [9 x i8] c"L4_PER_0\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"L4_PER_1\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"L4_PER_2\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"L4_PER_3\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"McASP0\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"McASP1\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"MMCHS2\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"L4_FW\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"ADCTSC\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"MAG_CARD\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"M1 (128-bit)\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"M2 (64-bit)\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"DAP\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"P1500\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"ICSS0\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"ICSS1\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"Wakeup Processor\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"TPTC0 Read\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"TPTC0 Write\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"TPTC1 Read\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"TPTC1 Write\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"TPTC2 Read\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"TPTC2 Write\00", align 1
@.str.204 = private unnamed_addr constant [21 x i8] c"OCP WP Traffic Probe\00", align 1
@.str.205 = private unnamed_addr constant [21 x i8] c"OCP WP DMA Profiling\00", align 1
@.str.206 = private unnamed_addr constant [19 x i8] c"OCP WP Event Trace\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"Crypto DMA RD\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"Crypto DMA WR\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"VPFE0\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"VPFE1\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"GEMAC\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"USB0 RD\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"USB0 WR\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"USB1 RD\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"USB1 WR\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_omap_l3_exit, ptr @__initcall__kmod_omap_l3_noc__170_371_omap_l3_init2s, ptr @omap_l3_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_l3_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_l3_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_l3_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_l3_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_l3_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @l3_noc_match, ptr noundef %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  br label %75

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #9
  store ptr %7, ptr @omap_l3_probe.l3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, ptr noundef align 1 dereferenceable(44) %11, i32 44, i1 false)
  store ptr %2, ptr %7, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %12, align 8
  %13 = getelementptr inbounds %struct.omap_l3, ptr %7, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %44, %9
  %17 = phi ptr [ %45, %44 ], [ %7, %9 ]
  %18 = phi i32 [ %46, %44 ], [ 0, %9 ]
  %19 = phi i32 [ %47, %44 ], [ 0, %9 ]
  %20 = getelementptr %struct.omap_l3, ptr %17, i32 0, i32 1, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, inttoptr (i32 1 to ptr)
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/bus/omap_l3_noc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 270, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

26:                                               ; preds = %23
  %27 = add nsw i32 %19, -1
  %28 = getelementptr %struct.omap_l3, ptr %17, i32 0, i32 1, i32 %27
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %20, align 4
  br label %44

30:                                               ; preds = %16
  %31 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %18) #9
  %32 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %31) #9
  %33 = load ptr, ptr @omap_l3_probe.l3, align 4
  %34 = getelementptr %struct.omap_l3, ptr %33, i32 0, i32 1, i32 %19
  store ptr %32, ptr %34, align 4
  %35 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = add i32 %18, 1
  br label %44

38:                                               ; preds = %30
  %39 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef %19) #10
  %40 = load ptr, ptr @omap_l3_probe.l3, align 4
  %41 = getelementptr %struct.omap_l3, ptr %40, i32 0, i32 1, i32 %19
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %75

44:                                               ; preds = %36, %26
  %45 = phi ptr [ %33, %36 ], [ %17, %26 ]
  %46 = phi i32 [ %37, %36 ], [ %18, %26 ]
  %47 = add nuw nsw i32 %19, 1
  %48 = getelementptr inbounds %struct.omap_l3, ptr %45, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %16, label %51

51:                                               ; preds = %44, %9
  %52 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %53 = load ptr, ptr @omap_l3_probe.l3, align 4
  %54 = getelementptr inbounds %struct.omap_l3, ptr %53, i32 0, i32 7
  store i32 %52, ptr %54, align 4
  %55 = load ptr, ptr %53, align 4
  %56 = tail call i32 @devm_request_threaded_irq(ptr noundef %55, i32 noundef %52, ptr noundef nonnull @l3_interrupt_handler, ptr noundef null, i32 noundef 65536, ptr noundef nonnull @.str.3, ptr noundef %53) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr @omap_l3_probe.l3, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.omap_l3, ptr %59, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.4, i32 noundef %62) #10
  br label %75

63:                                               ; preds = %51
  %64 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #9
  %65 = load ptr, ptr @omap_l3_probe.l3, align 4
  %66 = getelementptr inbounds %struct.omap_l3, ptr %65, i32 0, i32 8
  store i32 %64, ptr %66, align 4
  %67 = load ptr, ptr %65, align 4
  %68 = tail call i32 @devm_request_threaded_irq(ptr noundef %67, i32 noundef %64, ptr noundef nonnull @l3_interrupt_handler, ptr noundef null, i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef %65) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr @omap_l3_probe.l3, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.omap_l3, ptr %71, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.4, i32 noundef %74) #10
  br label %75

75:                                               ; preds = %70, %63, %58, %38, %6, %5
  %76 = phi i32 [ %43, %38 ], [ %56, %58 ], [ -22, %5 ], [ -12, %6 ], [ %68, %70 ], [ 0, %63 ]
  ret i32 %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l3_interrupt_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [30 x i8], align 1
  %4 = alloca [60 x i8], align 1
  %5 = getelementptr inbounds %struct.omap_l3, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  %8 = getelementptr inbounds %struct.omap_l3, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %136

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.omap_l3, ptr %1, i32 0, i32 2
  %13 = select i1 %7, i32 0, i32 8
  br label %14

14:                                               ; preds = %132, %11
  %15 = phi i32 [ 0, %11 ], [ %133, %132 ]
  %16 = getelementptr %struct.omap_l3, ptr %1, i32 0, i32 1, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr ptr, ptr %18, i32 %15
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %17, i32 12
  %23 = getelementptr i8, ptr %22, i32 %13
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !10
  %26 = getelementptr inbounds %struct.l3_flagmux_data, ptr %20, i32 0, i32 3
  %27 = getelementptr inbounds %struct.l3_flagmux_data, ptr %20, i32 0, i32 4
  %28 = select i1 %7, ptr %27, ptr %26
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %25, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %132, label %33

33:                                               ; preds = %14
  %34 = tail call i32 @llvm.cttz.i32(i32 %31, i1 true) #9, !range !11
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %3, i8 0, i32 30, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %4, i8 0, i32 60, i1 false) #9
  %35 = getelementptr inbounds %struct.l3_flagmux_data, ptr %20, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.l3_flagmux_data, ptr %20, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.l3_target_data, ptr %41, i32 %34
  %43 = getelementptr %struct.l3_target_data, ptr %41, i32 %34, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %42, align 4
  %46 = getelementptr i8, ptr %17, i32 %45
  %47 = icmp eq ptr %44, null
  br i1 %47, label %115, label %48

48:                                               ; preds = %39
  %49 = getelementptr i8, ptr %46, i32 72
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !10
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %46, i32 92
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !10
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 30, ptr noundef nonnull @.str.13, i32 noundef %55) #9
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 80, %53 ], [ 104, %48 ]
  %59 = phi i32 [ 76, %53 ], [ 108, %48 ]
  %60 = phi i32 [ 88, %53 ], [ 100, %48 ]
  %61 = phi ptr [ @.str.12, %53 ], [ @.str.14, %48 ]
  %62 = getelementptr i8, ptr %46, i32 %58
  %63 = getelementptr i8, ptr %46, i32 %59
  %64 = getelementptr i8, ptr %46, i32 %60
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !10
  %66 = getelementptr inbounds %struct.omap_l3, ptr %1, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, %65
  %69 = tail call i32 @llvm.cttz.i32(i32 %67, i1 false) #9, !range !11
  %70 = lshr i32 %68, %69
  %71 = getelementptr inbounds %struct.omap_l3, ptr %1, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.omap_l3, ptr %1, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %85, %74
  %78 = phi i32 [ %86, %85 ], [ 0, %74 ]
  %79 = phi ptr [ %87, %85 ], [ %76, %74 ]
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %70, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.l3_masters_data, ptr %79, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  br label %89

85:                                               ; preds = %77
  %86 = add nuw nsw i32 %78, 1
  %87 = getelementptr %struct.l3_masters_data, ptr %79, i32 1
  %88 = icmp eq i32 %86, %72
  br i1 %88, label %89, label %77

89:                                               ; preds = %85, %82, %57
  %90 = phi ptr [ %84, %82 ], [ @.str.11, %57 ], [ @.str.11, %85 ]
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !10
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !10
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, ptr @.str.17, ptr @.str.16
  %96 = and i32 %92, 2
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, ptr @.str.19, ptr @.str.18
  %99 = and i32 %92, 8
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr @.str.21, ptr @.str.20
  %102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 60, ptr noundef nonnull @.str.15, ptr noundef nonnull %95, ptr noundef nonnull %98, ptr noundef nonnull %101) #9
  %103 = and i32 %91, 7
  %104 = load ptr, ptr %1, align 4
  %105 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %89
  %109 = load ptr, ptr %104, align 4
  br label %110

110:                                              ; preds = %108, %89
  %111 = phi ptr [ %109, %108 ], [ %106, %89 ]
  %112 = getelementptr [8 x ptr], ptr @l3_transaction_type, i32 0, i32 %103
  %113 = load ptr, ptr %112, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %111, ptr noundef nonnull %61, ptr noundef %90, ptr noundef nonnull %44, ptr noundef %113, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %114 = or i32 %50, -2147483648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %114) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #9
  br label %139

115:                                              ; preds = %39, %33
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #9
  %116 = load ptr, ptr %1, align 4
  %117 = select i1 %7, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.6, ptr noundef nonnull %117, i32 noundef %34, i32 noundef %15, ptr noundef nonnull @.str.9) #10
  %118 = load i32, ptr %20, align 4
  %119 = getelementptr i8, ptr %17, i32 %118
  %120 = getelementptr i8, ptr %119, i32 8
  %121 = getelementptr i8, ptr %120, i32 %13
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9, !srcloc !10
  %123 = shl nuw i32 1, %34
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %125) #9, !srcloc !12
  br i1 %7, label %129, label %126

126:                                              ; preds = %115
  %127 = load i32, ptr %26, align 4
  %128 = or i32 %127, %123
  store i32 %128, ptr %26, align 4
  br label %139

129:                                              ; preds = %115
  %130 = load i32, ptr %27, align 4
  %131 = or i32 %130, %123
  store i32 %131, ptr %27, align 4
  br label %139

132:                                              ; preds = %14
  %133 = add nuw nsw i32 %15, 1
  %134 = load i32, ptr %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %14, label %136

136:                                              ; preds = %132, %2
  %137 = load ptr, ptr %1, align 4
  %138 = select i1 %7, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.10, ptr noundef nonnull %138) #10
  br label %139

139:                                              ; preds = %136, %129, %126, %110
  %140 = phi i32 [ 0, %136 ], [ 1, %126 ], [ 1, %129 ], [ 1, %110 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l3_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_l3, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_l3, ptr %3, i32 0, i32 2
  br label %9

9:                                                ; preds = %42, %7
  %10 = phi i32 [ %5, %7 ], [ %43, %42 ]
  %11 = phi i32 [ 0, %7 ], [ %45, %42 ]
  %12 = phi ptr [ null, %7 ], [ %44, %42 ]
  %13 = getelementptr %struct.omap_l3, ptr %3, i32 0, i32 1, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr ptr, ptr %15, i32 %11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.l3_flagmux_data, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.l3_flagmux_data, ptr %17, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21, %9
  %26 = load i32, ptr %17, align 4
  %27 = getelementptr i8, ptr %14, i32 8
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !10
  %30 = load i32, ptr %18, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %32) #9, !srcloc !12
  %33 = load i32, ptr %17, align 4
  %34 = getelementptr i8, ptr %14, i32 16
  %35 = getelementptr i8, ptr %34, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !10
  %37 = getelementptr inbounds %struct.l3_flagmux_data, ptr %17, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %40) #9, !srcloc !12
  %41 = load i32, ptr %4, align 4
  br label %42

42:                                               ; preds = %25, %21
  %43 = phi i32 [ %41, %25 ], [ %10, %21 ]
  %44 = phi ptr [ %35, %25 ], [ %12, %21 ]
  %45 = add nuw nsw i32 %11, 1
  %46 = icmp slt i32 %45, %43
  br i1 %46, label %9, label %47

47:                                               ; preds = %42
  %48 = icmp eq ptr %44, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %51

51:                                               ; preds = %49, %47, %1
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151697927, i64 2151702478, i64 2151697964, i64 2151698020, i64 2151698054, i64 2151698078, i64 2151698119, i64 2151698140, i64 2151698168, i64 2151698202}
!10 = !{i64 3059636}
!11 = !{i32 0, i32 33}
!12 = !{i64 3059218}
!13 = !{i64 2151705384}
