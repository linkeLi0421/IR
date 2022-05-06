; ModuleID = '/llk/IR/drivers/soc/bcm/brcmstb/pm/pm-arm.c_pt.bc'
source_filename = "../drivers/soc/bcm/brcmstb/pm/pm-arm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmstb_pm_control = type { ptr, ptr, [3 x %struct.brcmstb_memc], ptr, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.brcmstb_memc = type { ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ddr_phy_ofdata = type { i8, i32, i32, i32, i32, i32 }
%struct.ddr_seq_ofdata = type { i8, i32 }
%struct.brcmstb_s3_params = type <{ [64 x i8], i32, i64, [4 x i32], i32, i64, [70 x i32], [2048 x i8], [2 x %struct.brcmstb_bootloader_dtu_table] }>
%struct.brcmstb_bootloader_dtu_table = type { [8192 x i32], [512 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@ctrl = internal unnamed_addr global %struct.brcmstb_pm_control zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"\016brcmstb-pm: key loading failed\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__initcall__kmod_pm_arm__249_833_brcmstb_pm_init6 = internal global ptr @brcmstb_pm_init, section ".initcall6.init", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"brcm,bcm74371a0\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"\013brcmstb-pm: error: timeout waiting for BSP (%x)\0A\00", align 1
@brcmstb_pm_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aon_ctrl_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"brcmstb-pm\00", align 1
@aon_ctrl_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-aon-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"\013brcmstb-pm: error mapping AON_CTRL\0A\00", align 1
@ddr_phy_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v71.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_71_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v72.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_72_0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v225.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_225_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v240.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_240_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v240.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_240_1 }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"\013brcmstb-pm: error mapping DDR PHY\0A\00", align 1
@ddr_shimphy_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-shimphy-v1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"\014brcmstb-pm: too many MEMCs (max %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\013brcmstb-pm: error mapping DDR SHIMPHY %d\0A\00", align 1
@brcmstb_memc_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.2.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.2.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.3.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq }, %struct.of_device_id zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"\013brcmstb-pm: error mapping DDR Sequencer %d\0A\00", align 1
@sram_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmio-sram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"\013brcmstb-pm: SRAM not found\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\013brcmstb-pm: error setting up SRAM for PM\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\013brcmstb-pm: error mapping DMA memory\0A\00", align 1
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@brcmstb_pm_panic_nb = internal global %struct.notifier_block { ptr @brcmstb_pm_panic_notify, ptr null, i32 0 }, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@brcmstb_pm_ops = internal constant %struct.platform_suspend_ops { ptr @brcmstb_pm_valid, ptr null, ptr null, ptr null, ptr @brcmstb_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"\014brcmstb-pm: PM: initialization failed with code %d\0A\00", align 1
@ddr_phy_71_1 = internal global %struct.ddr_phy_ofdata { i8 1, i32 12, i32 1, i32 44, i32 408, i32 -1 }, align 4
@ddr_phy_72_0 = internal global %struct.ddr_phy_ofdata { i8 1, i32 16, i32 1, i32 64, i32 676, i32 2212 }, align 4
@ddr_phy_225_1 = internal global %struct.ddr_phy_ofdata { i8 0, i32 4, i32 0, i32 0, i32 0, i32 0 }, align 4
@ddr_phy_240_1 = internal global %struct.ddr_phy_ofdata { i8 1, i32 4, i32 0, i32 0, i32 0, i32 0 }, align 4
@ddr_seq = internal constant %struct.ddr_seq_ofdata { i8 1, i32 0 }, align 4
@ddr_seq_b22 = internal constant %struct.ddr_seq_ofdata { i8 0, i32 44 }, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"\013brcmstb-pm: BSP handshake failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"\013brcmstb-pm: %s: standby failed\0A\00", align 1
@__func__.brcmstb_pm_standby = private unnamed_addr constant [19 x i8] c"brcmstb_pm_standby\00", align 1
@brcmstb_pm_do_s2_sz = external dso_local local_unnamed_addr constant i32, align 4
@brcmstb_pm_do_s2_sram = internal unnamed_addr global ptr null, align 4
@.str.17 = private unnamed_addr constant [49 x i8] c"\013brcmstb-pm: standby code will not fit in SRAM\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pm_arm__249_833_brcmstb_pm_init6], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmstb_pm_s3_finish() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 8), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 9), align 4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume_arm to i32), i32 -2130706432, i32 8454144) #10, !srcloc !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(2432) %1, i8 0, i32 2432, i1 false)
  %4 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !9
  %6 = tail call fastcc i32 @do_bsp_initiate_command(i32 noundef 74)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %87

10:                                               ; preds = %0
  %11 = and i32 %5, 24
  %12 = getelementptr inbounds %struct.brcmstb_s3_params, ptr %1, i32 0, i32 1
  store i32 1526640647, ptr %12, align 1
  %13 = zext i32 %3 to i64
  %14 = getelementptr inbounds %struct.brcmstb_s3_params, ptr %1, i32 0, i32 2
  store i64 %13, ptr %14, align 1
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %15() #11
  %16 = or i32 %11, 1526595589
  %17 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #11, !srcloc !10
  %18 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %2) #11, !srcloc !10
  %20 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #11, !srcloc !10
  %22 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  switch i32 %22, label %87 [
    i32 0, label %23
    i32 1, label %47
  ]

23:                                               ; preds = %10
  %24 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %29, %26
  %30 = phi i32 [ %38, %29 ], [ 0, %26 ]
  %31 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %30, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 140
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !9
  %35 = or i32 %34, 768
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr i8, ptr %36, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #11, !srcloc !10
  %38 = add nuw nsw i32 %30, 1
  %39 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %29, label %41

41:                                               ; preds = %29, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  br label %42

42:                                               ; preds = %41, %23
  %43 = load ptr, ptr @ctrl, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 54) #11, !srcloc !10
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 55) #11, !srcloc !10
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !9
  tail call void asm sideeffect "wfi", "~{memory}"() #11, !srcloc !13
  br label %87

47:                                               ; preds = %10
  %48 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !11
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %53, %50
  %54 = phi i32 [ %63, %53 ], [ 0, %50 ]
  %55 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %54, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 140
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !9
  %59 = and i32 %58, -15728641
  %60 = or i32 %59, 3145728
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr i8, ptr %61, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #11, !srcloc !10
  %63 = add nuw nsw i32 %54, 1
  %64 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %53, label %66

66:                                               ; preds = %53, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %70, %67
  %71 = phi i32 [ %81, %70 ], [ 0, %67 ]
  %72 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %71, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %75 = getelementptr i8, ptr %73, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #11, !srcloc !9
  %77 = or i32 %76, 1
  %78 = load ptr, ptr %72, align 4
  %79 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %80 = getelementptr i8, ptr %78, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #11, !srcloc !10
  %81 = add nuw nsw i32 %71, 1
  %82 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %70, label %84

84:                                               ; preds = %70, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %85 = load ptr, ptr @ctrl, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 1048755) #11, !srcloc !10
  tail call void asm sideeffect "wfi", "~{memory}"() #11, !srcloc !13
  br label %87

87:                                               ; preds = %84, %42, %10, %8
  %88 = phi i32 [ -5, %8 ], [ -22, %10 ], [ -4, %84 ], [ -4, %42 ]
  ret i32 %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume_arm() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_bsp_initiate_command(i32 noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @ctrl, align 4
  %3 = getelementptr i8, ptr %2, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #11, !srcloc !10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !9
  %5 = shl i32 %0, 1
  %6 = or i32 %5, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %6) #11, !srcloc !10
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #11
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11
  br i1 %8, label %10, label %13

10:                                               ; preds = %1
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %29

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #11
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #11
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #11
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #11
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #11
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #11
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #11
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #11
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #11
  br label %40

24:                                               ; preds = %29
  %25 = add nsw i32 %30, -50
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %32) #12
  br label %35

29:                                               ; preds = %24, %10
  %30 = phi i32 [ %25, %24 ], [ 1000000, %10 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 10737400) #11
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !9
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24

35:                                               ; preds = %29, %27, %10
  %36 = phi i32 [ %32, %27 ], [ %9, %10 ], [ %32, %29 ]
  %37 = and i32 %36, 255
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %35, %13
  %41 = phi i32 [ %39, %35 ], [ 0, %13 ]
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_init() #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_pm_driver, ptr noundef nonnull @brcmstb_pm_probe, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_probe(ptr noundef %0) #4 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !15
  %6 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @aon_ctrl_dt_ids, ptr noundef nonnull %5) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr @of_io_request_and_map(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %18

14:                                               ; preds = %9, %8
  %15 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %12, %9 ]
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  %17 = ptrtoint ptr %15 to i32
  br label %168

18:                                               ; preds = %9
  store ptr %12, ptr @ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !15
  %19 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @aon_ctrl_dt_ids, ptr noundef nonnull %4) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @of_io_request_and_map(ptr noundef nonnull %19, i32 noundef 1, ptr noundef %23) #11
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi ptr [ %24, %21 ], [ inttoptr (i32 -22 to ptr), %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %28 = load ptr, ptr @ctrl, align 4
  %29 = getelementptr i8, ptr %28, i32 512
  %30 = select i1 %27, ptr %29, ptr %26
  store ptr %30, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %31 = getelementptr i8, ptr %30, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #11, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !15
  %32 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ddr_phy_dt_ids, ptr noundef nonnull %3) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %43

35:                                               ; preds = %25
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.of_device_id, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.device_node, ptr %32, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = call ptr @of_io_request_and_map(ptr noundef nonnull %32, i32 noundef 0, ptr noundef %40) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %35, %34
  %44 = phi ptr [ inttoptr (i32 -22 to ptr), %34 ], [ %41, %35 ]
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %46 = ptrtoint ptr %44 to i32
  br label %168

47:                                               ; preds = %35
  %48 = load i8, ptr %38, align 4, !range !11
  store i8 %48, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4
  %49 = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %38, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 6), align 4
  store ptr %41, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2), align 4
  %51 = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %38, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  %53 = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %38, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 12), align 4
  %55 = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %38, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 13), align 4
  %57 = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %38, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %59 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ddr_shimphy_dt_ids, ptr noundef null) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %78, %47
  %62 = phi ptr [ %82, %78 ], [ %59, %47 ]
  %63 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 3) #12
  br label %84

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.device_node, ptr %62, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call ptr @of_io_request_and_map(ptr noundef nonnull %62, i32 noundef 0, ptr noundef %69) #11
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4, !range !11
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %63) #12
  %77 = ptrtoint ptr %70 to i32
  br label %168

78:                                               ; preds = %67
  %79 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %63, i32 1
  store ptr %70, ptr %79, align 4
  %80 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %82 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %62, ptr noundef nonnull @ddr_shimphy_dt_ids, ptr noundef null) #11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %61

84:                                               ; preds = %78, %72, %65, %47
  %85 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @brcmstb_memc_of_match, ptr noundef null) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %106, %84
  %88 = phi ptr [ %109, %106 ], [ %85, %84 ]
  %89 = phi i32 [ %108, %106 ], [ 0, %84 ]
  %90 = call ptr @of_iomap(ptr noundef nonnull %88, i32 noundef 0) #11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %89) #12
  br label %168

94:                                               ; preds = %87
  %95 = call ptr @of_match_node(ptr noundef nonnull @brcmstb_memc_of_match, ptr noundef nonnull %88) #11
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  call void @iounmap(ptr noundef nonnull %90) #11
  br label %168

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.of_device_id, ptr %95, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = load i8, ptr %100, align 4, !range !11
  store i8 %101, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4
  %102 = getelementptr inbounds %struct.ddr_seq_ofdata, ptr %100, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  store i32 %103, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %89, i32 2
  store ptr %90, ptr %107, align 4
  %108 = add i32 %89, 1
  %109 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %88, ptr noundef nonnull @brcmstb_memc_of_match, ptr noundef null) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %87

111:                                              ; preds = %106, %84
  %112 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @sram_dt_ids, ptr noundef null) #11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %168

116:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #11, !annotation !15
  %117 = call i32 @of_address_to_resource(ptr noundef nonnull %112, i32 noundef 0, ptr noundef nonnull %2) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, ptr %2, align 4
  %121 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 1, %120
  %124 = add i32 %123, %122
  %125 = call ptr @__arm_ioremap_exec(i32 noundef %120, i32 noundef %124, i1 noundef zeroext false) #11
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %119, %116
  %128 = phi i32 [ -12, %119 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %168

130:                                              ; preds = %119
  store ptr %125, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %131 = load i32, ptr %121, align 4
  %132 = load i32, ptr %2, align 4
  %133 = add i32 %131, 1
  %134 = sub i32 %133, %132
  store i32 %134, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 4), align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  store ptr %0, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 15), align 4
  %135 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 72064, i32 noundef 3264, i32 noundef 5) #13
  store ptr %135, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 8), align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %168, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %139 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %135) #11
  %140 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %141 = xor i1 %140, true
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %143, label %152, !prof !16

143:                                              ; preds = %137
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %144 = call ptr @dev_driver_string(ptr noundef %138) #11
  %145 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load ptr, ptr %138, align 4
  br label %150

150:                                              ; preds = %148, %143
  %151 = phi ptr [ %149, %148 ], [ %146, %143 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %144, ptr noundef %151) #11
  br label %152

152:                                              ; preds = %150, %137
  br i1 %139, label %153, label %154

153:                                              ; preds = %152
  store i32 -1, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 9), align 4
  br label %162

154:                                              ; preds = %152
  %155 = load ptr, ptr @mem_map, align 4
  %156 = ptrtoint ptr %135 to i32
  %157 = add i32 %156, 1073741824
  %158 = lshr exact i32 %157, 12
  %159 = getelementptr %struct.page, ptr %155, i32 %158
  %160 = call i32 @dma_map_page_attrs(ptr noundef %138, ptr noundef %159, i32 noundef 0, i32 noundef 72064, i32 noundef 1, i32 noundef 0) #11
  store i32 %160, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 9), align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %166

162:                                              ; preds = %154, %153
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  %164 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 8), align 4
  call void @kfree(ptr noundef %164) #11
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef -12) #12
  br label %168

166:                                              ; preds = %154
  %167 = call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @brcmstb_pm_panic_nb) #11
  store ptr @brcmstb_pm_poweroff, ptr @pm_power_off, align 4
  call void @suspend_set_ops(ptr noundef nonnull @brcmstb_pm_ops) #11
  br label %168

168:                                              ; preds = %166, %162, %130, %127, %114, %97, %92, %75, %43, %14
  %169 = phi i32 [ %17, %14 ], [ %46, %43 ], [ -22, %97 ], [ -12, %92 ], [ %128, %127 ], [ -12, %162 ], [ 0, %166 ], [ -22, %114 ], [ %77, %75 ], [ -12, %130 ]
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_pm_poweroff() #4 {
  %1 = load ptr, ptr @ctrl, align 4
  %2 = getelementptr i8, ptr %1, i32 140
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !9
  %4 = and i32 %3, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #11, !srcloc !10
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !9
  %6 = tail call fastcc i32 @do_bsp_initiate_command(i32 noundef 0) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %10

10:                                               ; preds = %8, %0
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #11
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #11
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #11
  %14 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #11, !srcloc !10
  %15 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !9
  %17 = load ptr, ptr @ctrl, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 16) #11, !srcloc !10
  %19 = load ptr, ptr @ctrl, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !9
  %22 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %64

24:                                               ; preds = %10
  %25 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %40, %30 ], [ 0, %27 ]
  %32 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %31, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 140
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !9
  %36 = and i32 %35, -15728641
  %37 = or i32 %36, 3145728
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr i8, ptr %38, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #11, !srcloc !10
  %40 = add nuw nsw i32 %31, 1
  %41 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %30, label %43

43:                                               ; preds = %30, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %47, %44
  %48 = phi i32 [ %58, %47 ], [ 0, %44 ]
  %49 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %48, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !9
  %54 = and i32 %53, -2
  %55 = load ptr, ptr %49, align 4
  %56 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #11, !srcloc !10
  %58 = add nuw nsw i32 %48, 1
  %59 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %47, label %61

61:                                               ; preds = %47, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %62 = load ptr, ptr @ctrl, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 1048723) #11, !srcloc !10
  tail call void asm sideeffect "wfi", "~{memory}"() #11, !srcloc !13
  br label %69

64:                                               ; preds = %10
  %65 = load ptr, ptr @ctrl, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 18) #11, !srcloc !10
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #11, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 19) #11, !srcloc !10
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #11, !srcloc !9
  tail call void asm sideeffect "wfi", "~{memory}"() #11, !srcloc !13
  br label %69

69:                                               ; preds = %64, %61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_panic_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1361973598) #11, !srcloc !10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_pm_valid(i32 noundef %0) #8 {
  switch i32 %0, label %5 [
    i32 2, label %6
    i32 3, label %2
  ]

2:                                                ; preds = %1
  %3 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4, !range !11
  %4 = zext i8 %3 to i32
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %2, %1
  %7 = phi i32 [ 0, %5 ], [ %4, %2 ], [ 1, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_enter(i32 noundef %0) #4 {
  switch i32 %0, label %6 [
    i32 2, label %3
    i32 3, label %2
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1
  %4 = phi i1 [ true, %2 ], [ false, %1 ]
  %5 = tail call fastcc i32 @brcmstb_pm_standby(i1 noundef zeroext %4)
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ -22, %1 ], [ %5, %3 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_pm_standby(i1 noundef zeroext %0) unnamed_addr #4 {
  %2 = load ptr, ptr @ctrl, align 4
  %3 = getelementptr i8, ptr %2, i32 140
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !9
  %5 = and i32 %4, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #11, !srcloc !10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !9
  %7 = tail call fastcc i32 @do_bsp_initiate_command(i32 noundef 0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #11
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #11
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #11
  br label %105

14:                                               ; preds = %1
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #11
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #11
  br i1 %0, label %18, label %24

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 4), align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @cpu_suspend(i32 noundef %22, ptr noundef nonnull @brcmstb_pm_do_s3) #11
  br label %99

24:                                               ; preds = %14
  %25 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %33, %30
  %34 = phi i32 [ %42, %33 ], [ 0, %30 ]
  %35 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %34, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 140
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !9
  %39 = and i32 %38, -15728641
  %40 = load ptr, ptr %35, align 4
  %41 = getelementptr i8, ptr %40, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !10
  %42 = add nuw nsw i32 %34, 1
  %43 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %33, label %45

45:                                               ; preds = %33, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %49, %46
  %50 = phi i32 [ %60, %49 ], [ 0, %46 ]
  %51 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %50, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %54 = getelementptr i8, ptr %52, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !9
  %56 = and i32 %55, -2
  %57 = load ptr, ptr %51, align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %59 = getelementptr i8, ptr %57, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #11, !srcloc !10
  %60 = add nuw nsw i32 %50, 1
  %61 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %49, label %63

63:                                               ; preds = %49, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i32, ptr @brcmstb_pm_do_s2_sz, align 4
  %66 = add i32 %65, 7
  %67 = and i32 %66, -8
  %68 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 4), align 4
  %69 = icmp ult i32 %68, %67
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %102

72:                                               ; preds = %64
  %73 = tail call i32 asm "", "=r,0"(ptr nonnull @brcmstb_pm_do_s2) #10, !srcloc !17
  %74 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = and i32 %75, 7
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %73, 6
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 true, i1 %79, !prof !16
  br i1 %80, label %81, label %82, !prof !16

81:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/bcm/brcmstb/pm/pm-arm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

82:                                               ; preds = %72
  %83 = and i32 %73, -2
  %84 = inttoptr i32 %83 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 2 %84, i32 %67, i1 false) #11
  %85 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %86 = add i32 %67, %75
  tail call void %85(i32 noundef %75, i32 noundef %86) #11
  %87 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = and i32 %73, 1
  %90 = or i32 %89, %88
  %91 = tail call ptr asm "", "=r,0"(i32 %90) #10, !srcloc !19
  store ptr %91, ptr @brcmstb_pm_do_s2_sram, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %82
  %94 = load ptr, ptr @ctrl, align 4
  %95 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2), align 4
  %96 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 6), align 4
  %97 = getelementptr i8, ptr %95, i32 %96
  %98 = tail call i32 %91(ptr noundef %94, ptr noundef %97) #11
  br label %99

99:                                               ; preds = %93, %18
  %100 = phi i32 [ %23, %18 ], [ %98, %93 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99, %82, %70
  %103 = phi i32 [ %100, %99 ], [ -22, %82 ], [ -22, %70 ]
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmstb_pm_standby) #12
  br label %105

105:                                              ; preds = %102, %99, %9
  %106 = phi i32 [ %103, %102 ], [ 0, %99 ], [ -5, %9 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_do_s3(i32 noundef %0) #4 {
  %2 = tail call { i32, i32 } asm sideeffect "mov\09$0, sp\0Amov\09sp, $2\0Abl\09brcmstb_pm_s3_finish\0Amov\09$1, r0\0Amov\09$2, sp\0Amov\09sp, $0\0A", "=&r,=&r,r"(i32 %0) #11, !srcloc !20
  %3 = extractvalue { i32, i32 } %2, 1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_pm_do_s2(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

attributes #0 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 2148743787, i64 2148743810, i64 2148743842, i64 2148743874, i64 2148743912, i64 2148743942}
!9 = !{i64 4978804}
!10 = !{i64 4978386}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153607604}
!13 = !{i64 2153611210}
!14 = !{i64 2153608318}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153612998}
!18 = !{i64 2153614175, i64 2153614675, i64 2153614212, i64 2153614268, i64 2153614302, i64 2153614326, i64 2153614367, i64 2153614388, i64 2153614416, i64 2153614450}
!19 = !{i64 2153613493}
!20 = !{i64 11533, i64 11556, i64 11577, i64 11607, i64 11628, i64 11649}
