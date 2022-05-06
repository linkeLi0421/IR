; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/bgmac-bcma.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac-bcma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.91, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.92, %struct.anon.93, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.92 = type { i8, i8, i8, i8 }
%struct.anon.93 = type { %struct.anon.94, %struct.anon.95 }
%struct.anon.94 = type { i8, i8, i8, i8, i8 }
%struct.anon.95 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bgmac = type { %union.anon.118, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@bgmac_bcma_driver = internal global %struct.bcma_driver { ptr @.str, ptr @bgmac_bcma_tbl, ptr @bgmac_probe, ptr @bgmac_remove, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, align 4
@__initcall__kmod_bgmac_bcma__332_362_bgmac_init6 = internal global ptr @bgmac_init, section ".initcall6.init", align 4
@__exitcall_bgmac_exit = internal global ptr @bgmac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author333 = internal constant [34 x i8] c"bgmac_bcma.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file334 = internal constant [57 x i8] c"bgmac_bcma.file=drivers/net/ethernet/broadcom/bgmac-bcma\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [23 x i8] c"bgmac_bcma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"bgmac_bcma\00", align 1
@bgmac_bcma_tbl = internal constant [3 x %struct.bcma_device_id] [%struct.bcma_device_id { i16 1215, i16 1325, i8 -1, i8 -1 }, %struct.bcma_device_id { i16 1215, i16 2093, i8 -1, i8 -1 }, %struct.bcma_device_id zeroinitializer], align 2
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported core_unit %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"GMAC CMN core not found (required for BCM4706)\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"No PHY found\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Found PHY addr: %d%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" (NOREGS)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"PCI setup not implemented\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Support for Roboswitch not implemented\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Support for ADMtek ethernet switch not implemented\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"PHY connection failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\016bgmac_bcma: Broadcom 47xx GBit MAC driver loaded\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author333, ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_license335, ptr @__exitcall_bgmac_exit, ptr @__initcall__kmod_bgmac_bcma__332_362_bgmac_init6, ptr @bgmac_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bgmac_exit() #0 section ".exit.text" {
  tail call void @bcma_driver_unregister(ptr noundef nonnull @bgmac_bcma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bgmac_init() #0 section ".init.text" {
  %1 = tail call i32 @__bcma_driver_register(ptr noundef nonnull @bgmac_bcma_driver, ptr noundef null) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_probe(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 6
  %4 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 2
  %5 = tail call ptr @bgmac_alloc(ptr noundef %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %242, label %7

7:                                                ; preds = %1
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 2
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 12
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 13
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @of_get_ethdev_address(ptr noundef %18, ptr noundef %20) #7
  switch i32 %21, label %22 [
    i32 -517, label %242
    i32 0, label %37
  ]

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 7
  %24 = load i8, ptr %23, align 2
  switch i8 %24, label %31 [
    i8 0, label %25
    i8 1, label %27
    i8 2, label %29
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 3
  br label %34

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 4
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 5
  br label %34

31:                                               ; preds = %22
  %32 = zext i8 %24 to i32
  %33 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.1, i32 noundef %32) #8
  br label %240

34:                                               ; preds = %29, %27, %25
  %35 = phi ptr [ %30, %29 ], [ %28, %27 ], [ %26, %25 ]
  %36 = load ptr, ptr %19, align 8
  tail call void @dev_addr_mod(ptr noundef %36, i32 noundef 0, ptr noundef %35, i32 noundef 6) #7
  br label %37

37:                                               ; preds = %34, %7
  %38 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = icmp eq i16 %39, 1325
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %40, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.2) #8
  br label %240

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.anon.120, ptr %5, i32 0, i32 1
  store ptr %43, ptr %49, align 4
  %50 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 7
  %51 = load i8, ptr %50, align 2
  switch i8 %51, label %52 [
    i8 0, label %54
    i8 1, label %56
    i8 2, label %58
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 16
  br label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 6
  br label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 7
  br label %60

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 8
  br label %60

60:                                               ; preds = %58, %56, %54, %52
  %61 = phi ptr [ %53, %52 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ]
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 16
  %64 = and i8 %62, 31
  store i8 %64, ptr %63, align 8
  %65 = icmp eq i8 %64, 31
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.3) #8
  br label %240

68:                                               ; preds = %60
  %69 = zext i8 %64 to i32
  %70 = load ptr, ptr %15, align 4
  %71 = icmp eq i8 %64, 30
  %72 = select i1 %71, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.4, i32 noundef %69, ptr noundef nonnull %72) #8
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.bcma_bus, ptr %73, i32 0, i32 6
  %75 = load i16, ptr %74, align 4
  switch i16 %75, label %76 [
    i16 -12526, label %109
    i16 -12506, label %109
    i16 -12518, label %109
  ]

76:                                               ; preds = %68
  %77 = load i16, ptr %3, align 2
  %78 = icmp eq i16 %77, -11963
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8, ptr %50, align 2
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %109, label %82

82:                                               ; preds = %79, %76
  %83 = tail call ptr @bcma_mdio_mii_register(ptr noundef nonnull %5) #7
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %107, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 6
  store ptr %83, ptr %86, align 8
  %87 = load i8, ptr %63, align 8
  %88 = zext i8 %87 to i32
  %89 = tail call ptr @mdiobus_get_phy(ptr noundef %83, i32 noundef %88) #7
  %90 = load i16, ptr %3, align 2
  %91 = icmp eq i16 %90, -11963
  %92 = icmp ne ptr %89, null
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.phy_device, ptr %89, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.phy_driver, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.phy_driver, ptr %96, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 1611498656
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.phy_device, ptr %89, i32 0, i32 6
  %105 = load i32, ptr %104, align 8
  %106 = or i32 %105, 16
  store i32 %106, ptr %104, align 8
  br label %109

107:                                              ; preds = %82
  %108 = ptrtoint ptr %83 to i32
  br label %240

109:                                              ; preds = %103, %94, %85, %79, %68, %68, %68
  %110 = load ptr, ptr %0, align 8
  %111 = getelementptr inbounds %struct.bcma_bus, ptr %110, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.7) #8
  br label %236

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 18, i32 70
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 16
  %120 = icmp eq i16 %119, 0
  %121 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 17
  %122 = lshr exact i16 %119, 4
  %123 = trunc i16 %122 to i8
  store i8 %123, ptr %121, align 1
  br i1 %120, label %126, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.8) #8
  br label %126

126:                                              ; preds = %124, %116
  %127 = load i16, ptr %117, align 4
  %128 = and i16 %127, 128
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.9) #8
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i16, ptr %3, align 2
  switch i16 %133, label %192 [
    i16 18198, label %137
    i16 -18374, label %134
    i16 21335, label %145
    i16 -11964, label %145
    i16 -11963, label %159
    i16 18249, label %179
    i16 -12526, label %188
    i16 -12506, label %188
    i16 -12518, label %188
  ]

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  br label %141

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = or i32 %139, 4096
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i32 [ %136, %134 ], [ %140, %137 ]
  %143 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %144 = or i32 %142, 3072
  store i32 %144, ptr %143, align 4
  br label %196

145:                                              ; preds = %132, %132
  %146 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = or i32 %147, 6688
  store i32 %148, ptr %146, align 4
  %149 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 6, i32 2
  %150 = load i8, ptr %149, align 1
  %151 = add i8 %150, -9
  %152 = icmp ult i8 %151, 2
  br i1 %152, label %153, label %196

153:                                              ; preds = %145
  %154 = or i32 %147, 6820
  store i32 %154, ptr %146, align 4
  %155 = load i8, ptr %149, align 1
  %156 = icmp eq i8 %155, 9
  br i1 %156, label %157, label %196

157:                                              ; preds = %153
  %158 = or i32 %147, 6884
  store i32 %158, ptr %146, align 4
  br label %196

159:                                              ; preds = %132
  %160 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %161, 6144
  store i32 %162, ptr %160, align 4
  %163 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 6, i32 2
  %164 = load i8, ptr %163, align 1
  %165 = icmp eq i8 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = or i32 %161, 6148
  store i32 %167, ptr %160, align 4
  br label %168

168:                                              ; preds = %166, %159
  %169 = phi i32 [ %167, %166 ], [ %162, %159 ]
  %170 = load i8, ptr %50, align 2
  switch i8 %170, label %196 [
    i8 0, label %171
    i8 1, label %177
  ]

171:                                              ; preds = %168
  %172 = or i32 %169, 131072
  store i32 %172, ptr %160, align 4
  %173 = load i8, ptr %163, align 1
  %174 = icmp eq i8 %173, 1
  br i1 %174, label %175, label %196

175:                                              ; preds = %171
  %176 = or i32 %169, 393216
  store i32 %176, ptr %160, align 4
  br label %196

177:                                              ; preds = %168
  %178 = or i32 %169, 589824
  store i32 %178, ptr %160, align 4
  br label %196

179:                                              ; preds = %132
  %180 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %181 = load i32, ptr %180, align 4
  %182 = or i32 %181, 6688
  store i32 %182, ptr %180, align 4
  %183 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 6, i32 2
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, 10
  br i1 %185, label %186, label %196

186:                                              ; preds = %179
  %187 = or i32 %181, 6820
  store i32 %187, ptr %180, align 4
  br label %196

188:                                              ; preds = %132, %132, %132
  %189 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %190, 20488
  store i32 %191, ptr %189, align 4
  br label %196

192:                                              ; preds = %132
  %193 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = or i32 %194, 6144
  store i32 %195, ptr %193, align 4
  br label %196

196:                                              ; preds = %192, %188, %186, %179, %177, %175, %171, %168, %157, %153, %145, %141
  %197 = phi i32 [ %148, %145 ], [ %169, %168 ], [ %182, %179 ], [ %187, %186 ], [ %176, %175 ], [ %172, %171 ], [ %178, %177 ], [ %154, %153 ], [ %158, %157 ], [ %195, %192 ], [ %191, %188 ], [ %144, %141 ]
  %198 = load ptr, ptr %0, align 8
  %199 = getelementptr inbounds %struct.bcma_bus, ptr %198, i32 0, i32 6
  %200 = load i16, ptr %199, align 4
  switch i16 %200, label %201 [
    i16 -12526, label %208
    i16 -12506, label %208
    i16 -12518, label %208
  ]

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 2
  %203 = load i8, ptr %202, align 4
  %204 = icmp ugt i8 %203, 2
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %207 = or i32 %197, 16
  store i32 %207, ptr %206, align 4
  br label %208

208:                                              ; preds = %205, %201, %196, %196, %196
  %209 = phi i32 [ %197, %196 ], [ %197, %196 ], [ %197, %196 ], [ %207, %205 ], [ %197, %201 ]
  %210 = load i16, ptr %38, align 2
  %211 = icmp eq i16 %210, 1325
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %214 = or i32 %209, 8448
  store i32 %214, ptr %213, align 4
  br label %215

215:                                              ; preds = %212, %208
  %216 = phi i32 [ %214, %212 ], [ %209, %208 ]
  %217 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 2
  %218 = load i8, ptr %217, align 4
  %219 = icmp ugt i8 %218, 3
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 3
  %222 = or i32 %216, 32771
  store i32 %222, ptr %221, align 4
  br label %223

223:                                              ; preds = %220, %215
  %224 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 19
  store ptr @bcma_bgmac_read, ptr %224, align 4
  %225 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 20
  store ptr @bcma_bgmac_write, ptr %225, align 8
  %226 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 21
  store ptr @bcma_bgmac_idm_read, ptr %226, align 4
  %227 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 22
  store ptr @bcma_bgmac_idm_write, ptr %227, align 8
  %228 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 23
  store ptr @bcma_bgmac_clk_enabled, ptr %228, align 4
  %229 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 24
  store ptr @bcma_bgmac_clk_enable, ptr %229, align 8
  %230 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 25
  store ptr @bcma_bgmac_cco_ctl_maskset, ptr %230, align 4
  %231 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 26
  store ptr @bcma_bgmac_get_bus_clock, ptr %231, align 8
  %232 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 27
  store ptr @bcma_bgmac_cmn_maskset32, ptr %232, align 4
  %233 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 28
  store ptr @bcma_phy_connect, ptr %233, align 8
  %234 = tail call i32 @bgmac_enet_probe(ptr noundef nonnull %5) #7
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %223, %114
  %237 = phi i32 [ -524, %114 ], [ %234, %223 ]
  %238 = getelementptr inbounds %struct.bgmac, ptr %5, i32 0, i32 6
  %239 = load ptr, ptr %238, align 8
  tail call void @bcma_mdio_mii_unregister(ptr noundef %239) #7
  br label %240

240:                                              ; preds = %236, %107, %66, %46, %31
  %241 = phi i32 [ -524, %31 ], [ -19, %66 ], [ %237, %236 ], [ %108, %107 ], [ -19, %46 ]
  store ptr null, ptr %14, align 4
  br label %242

242:                                              ; preds = %240, %223, %7, %1
  %243 = phi i32 [ %241, %240 ], [ -12, %1 ], [ %21, %7 ], [ 0, %223 ]
  ret i32 %243
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgmac_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bgmac, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  tail call void @bcma_mdio_mii_unregister(ptr noundef %5) #7
  tail call void @bgmac_enet_remove(ptr noundef %3) #7
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bgmac_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_mdio_mii_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_bgmac_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i16 noundef zeroext %1) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_bgmac_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %4, i16 noundef zeroext %1, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_bgmac_idm_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i16 noundef zeroext %1) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_bgmac_idm_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %4, i16 noundef zeroext %1, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @bcma_bgmac_clk_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call zeroext i1 @bcma_core_is_enabled(ptr noundef %2) #7
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_bgmac_clk_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @bcma_core_enable(ptr noundef %3, i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_bgmac_cco_ctl_maskset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 12
  tail call void @bcma_chipco_chipctl_maskset(ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_bgmac_get_bus_clock(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12
  %5 = tail call i32 @bcma_pmu_get_bus_clock(ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_bgmac_cmn_maskset32(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.anon.120, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %6, i16 noundef zeroext %1) #7
  %13 = and i32 %12, %2
  %14 = or i32 %13, %3
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %6, i16 noundef zeroext %1, i32 noundef %14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_phy_connect(ptr noundef %0) #2 {
  %2 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_phy_get_and_connect(ptr noundef %4, ptr noundef %8, ptr noundef nonnull @bgmac_adjust_link) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 16
  %17 = load i8, ptr %16, align 8
  %18 = icmp eq i8 %17, 30
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 2
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef %21, i32 noundef %20)
  %23 = load ptr, ptr %3, align 8
  %24 = call ptr @phy_connect(ptr noundef %23, ptr noundef nonnull %2, ptr noundef nonnull @bgmac_adjust_link, i32 noundef 2) #7
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.11) #8
  %28 = ptrtoint ptr %24 to i32
  br label %31

29:                                               ; preds = %15, %11
  %30 = tail call i32 @bgmac_phy_connect_direct(ptr noundef %0) #7
  br label %31

31:                                               ; preds = %29, %26, %19, %1
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ], [ 0, %1 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #7
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_mdio_mii_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bcma_core_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_chipctl_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_bus_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_adjust_link(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_phy_connect_direct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_enet_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bcma_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
