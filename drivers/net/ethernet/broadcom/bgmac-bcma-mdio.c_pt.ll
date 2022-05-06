; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_mdio_mii_register:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_mdio_mii_register\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_mdio_mii_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_mdio_mii_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_mdio_mii_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_mdio_mii_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.116, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.116 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.117, %struct.anon.118, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.117 = type { i8, i8, i8, i8 }
%struct.anon.118 = type { %struct.anon.119, %struct.anon.120 }
%struct.anon.119 = type { i8, i8, i8, i8, i8 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.bgmac = type { %union.anon.113, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"bcma_mdio mii bus\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bcma_mdio\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Registration of mii bus failed\0A\00", align 1
@__kstrtab_bcma_mdio_mii_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_mdio_mii_register = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_mdio_mii_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_mdio_mii_register to i32), ptr @__kstrtab_bcma_mdio_mii_register, ptr @__kstrtabns_bcma_mdio_mii_register }, section "___ksymtab_gpl+bcma_mdio_mii_register", align 4
@__kstrtab_bcma_mdio_mii_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_mdio_mii_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_mdio_mii_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_mdio_mii_unregister to i32), ptr @__kstrtab_bcma_mdio_mii_unregister, ptr @__kstrtabns_bcma_mdio_mii_unregister }, section "___ksymtab_gpl+bcma_mdio_mii_unregister", align 4
@__UNIQUE_ID_author341 = internal constant [39 x i8] c"bgmac_bcma_mdio.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [67 x i8] c"bgmac_bcma_mdio.file=drivers/net/ethernet/broadcom/bgmac-bcma-mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [28 x i8] c"bgmac_bcma_mdio.license=GPL\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Reading PHY %d register 0x%X failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Timeout waiting for reg 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Error setting MDIO int\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Writing to PHY %d register 0x%X failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"PHY reset failed\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__ksymtab_bcma_mdio_mii_register, ptr @__ksymtab_bcma_mdio_mii_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bcma_mdio_mii_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 1
  store ptr @.str, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 11
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 7
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %11, i32 noundef %14)
  %16 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 3
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  store ptr @bcma_mdio_mii_read, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  store ptr @bcma_mdio_mii_write, ptr %18, align 8
  %19 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 6
  store ptr @bcma_mdio_phy_reset, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 2
  %21 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 9
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 16
  %23 = load i8, ptr %22, align 8
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 13
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 2, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr @of_get_child_by_name(ptr noundef %29, ptr noundef nonnull @.str.3) #4
  %31 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %3, ptr noundef %30) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.4) #5
  tail call void @mdiobus_free(ptr noundef nonnull %3) #4
  %34 = inttoptr i32 %31 to ptr
  br label %35

35:                                               ; preds = %33, %5, %1
  %36 = phi ptr [ %3, %5 ], [ %34, %33 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_mdio_mii_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = trunc i32 %1 to i8
  %7 = trunc i32 %2 to i8
  %8 = tail call fastcc zeroext i16 @bcma_mdio_phy_read(ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7)
  %9 = zext i16 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_mdio_mii_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = trunc i32 %1 to i8
  %8 = trunc i32 %2 to i8
  %9 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i16 noundef zeroext %3)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_mdio_phy_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bgmac, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, 30
  br i1 %6, label %85, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext 0, i16 noundef zeroext -32768)
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #4
  %10 = tail call fastcc zeroext i16 @bcma_mdio_phy_read(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext 0)
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bgmac, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.9) #5
  br label %15

15:                                               ; preds = %12, %7
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 6
  %19 = load i16, ptr %18, align 2
  switch i16 %19, label %75 [
    i16 21334, label %20
    i16 21335, label %46
    i16 18249, label %50
    i16 -11964, label %54
  ]

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %22 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %23 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %24 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %25 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %26 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %27 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %28 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %29 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %30 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %31 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %32 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %33 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %34 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %35 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %36 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %37 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %38 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %39 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %40 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %41 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %42 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %43 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %44 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %45 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  br label %85

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 6, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 10
  br i1 %49, label %75, label %58

50:                                               ; preds = %15
  %51 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 6, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 10
  br i1 %53, label %75, label %58

54:                                               ; preds = %15
  %55 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 6, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 9
  br i1 %57, label %75, label %58

58:                                               ; preds = %54, %50, %46
  %59 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 12
  tail call void @bcma_chipco_chipctl_maskset(ptr noundef %59, i32 noundef 2, i32 noundef 1073741823, i32 noundef 0) #4
  tail call void @bcma_chipco_chipctl_maskset(ptr noundef %59, i32 noundef 4, i32 noundef 2147483647, i32 noundef 0) #4
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i8 [ 0, %58 ], [ %73, %60 ]
  %62 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %63 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 22, i16 noundef zeroext 21124) #4
  %64 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %65 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 23, i16 noundef zeroext 16) #4
  %66 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %67 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 22, i16 noundef zeroext 21142) #4
  %68 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 23, i16 noundef zeroext 4211) #4
  %69 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 23, i16 noundef zeroext -28557) #4
  %70 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 22, i16 noundef zeroext 21174) #4
  %71 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 23, i16 noundef zeroext -28045) #4
  %72 = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %3, i8 noundef zeroext %61, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %73 = add nuw nsw i8 %61, 1
  %74 = icmp ult i8 %61, 4
  br i1 %74, label %60, label %85

75:                                               ; preds = %54, %50, %46, %15
  %76 = getelementptr inbounds %struct.bgmac, ptr %3, i32 0, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 120
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = tail call i32 @phy_init_hw(ptr noundef nonnull %81) #4
  br label %85

85:                                               ; preds = %83, %79, %75, %60, %20, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_mdio_mii_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @mdiobus_unregister(ptr noundef nonnull %0) #4
  tail call void @mdiobus_free(ptr noundef nonnull %0) #4
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bcma_mdio_phy_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.bcma_device, ptr %4, i32 0, i32 1, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 1325
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %11, %8 ], [ %4, %3 ]
  %14 = phi i16 [ 256, %8 ], [ 384, %3 ]
  %15 = phi i16 [ 260, %8 ], [ 392, %3 ]
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %13, i16 noundef zeroext %15) #4
  %22 = and i32 %21, -32
  %23 = zext i8 %1 to i32
  %24 = or i32 %22, %23
  %25 = load ptr, ptr %13, align 8
  %26 = getelementptr inbounds %struct.bcma_bus, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bcma_host_ops, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %13, i16 noundef zeroext %15, i32 noundef %24) #4
  %30 = shl nuw nsw i32 %23, 16
  %31 = zext i8 %2 to i32
  %32 = shl nuw i32 %31, 24
  %33 = or i32 %32, %30
  %34 = or i32 %33, 1073741824
  %35 = load ptr, ptr %13, align 8
  %36 = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %13, i16 noundef zeroext %14, i32 noundef %34) #4
  %40 = load ptr, ptr %13, align 8
  %41 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %13, i16 noundef zeroext %14) #4
  %46 = and i32 %45, 1073741824
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %57

48:                                               ; preds = %57
  %49 = load ptr, ptr %13, align 8
  %50 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %13, i16 noundef zeroext %14) #4
  %55 = and i32 %54, 1073741824
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %48, %12
  %58 = phi i32 [ %60, %48 ], [ 0, %12 ]
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #4
  %60 = add nuw nsw i32 %58, 1
  %61 = icmp eq i32 %60, 100
  br i1 %61, label %62, label %48

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bcma_device, ptr %13, i32 0, i32 2
  %64 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.6, i32 noundef %64) #5
  %65 = getelementptr inbounds %struct.bcma_device, ptr %13, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.5, i32 noundef %23, i32 noundef %31) #5
  br label %74

66:                                               ; preds = %48, %12
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds %struct.bcma_bus, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef %13, i16 noundef zeroext %14) #4
  %73 = trunc i32 %72 to i16
  br label %74

74:                                               ; preds = %66, %62
  %75 = phi i16 [ %73, %66 ], [ -1, %62 ]
  ret i16 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcma_mdio_phy_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 1325
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %12, %9 ], [ %5, %4 ]
  %15 = phi i16 [ 256, %9 ], [ 384, %4 ]
  %16 = phi i16 [ 260, %9 ], [ 392, %4 ]
  %17 = load ptr, ptr %14, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %14, i16 noundef zeroext %16) #4
  %23 = and i32 %22, -32
  %24 = zext i8 %1 to i32
  %25 = or i32 %23, %24
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %14, i16 noundef zeroext %16, i32 noundef %25) #4
  %31 = load ptr, ptr %0, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %31, i16 noundef zeroext 32, i32 noundef 16) #4
  %37 = load ptr, ptr %0, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %37, i16 noundef zeroext 32) #4
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.bcma_device, ptr %14, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.7) #5
  br label %48

48:                                               ; preds = %46, %13
  %49 = shl nuw nsw i32 %24, 16
  %50 = zext i8 %2 to i32
  %51 = shl nuw i32 %50, 24
  %52 = or i32 %51, %49
  %53 = zext i16 %3 to i32
  %54 = or i32 %52, %53
  %55 = or i32 %54, 1610612736
  %56 = load ptr, ptr %14, align 8
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bcma_host_ops, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  tail call void %60(ptr noundef %14, i16 noundef zeroext %15, i32 noundef %55) #4
  %61 = load ptr, ptr %14, align 8
  %62 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.bcma_host_ops, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %14, i16 noundef zeroext %15) #4
  %67 = and i32 %66, 1073741824
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %78

69:                                               ; preds = %78
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds %struct.bcma_bus, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.bcma_host_ops, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 %74(ptr noundef %14, i16 noundef zeroext %15) #4
  %76 = and i32 %75, 1073741824
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %69, %48
  %79 = phi i32 [ %81, %69 ], [ 0, %48 ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #4
  %81 = add nuw nsw i32 %79, 1
  %82 = icmp eq i32 %81, 100
  br i1 %82, label %83, label %69

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bcma_device, ptr %14, i32 0, i32 2
  %85 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.6, i32 noundef %85) #5
  %86 = getelementptr inbounds %struct.bcma_device, ptr %14, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.8, i32 noundef %24, i32 noundef %50) #5
  br label %87

87:                                               ; preds = %83, %69, %48
  %88 = phi i32 [ -110, %83 ], [ 0, %48 ], [ 0, %69 ]
  ret i32 %88
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_chipctl_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
