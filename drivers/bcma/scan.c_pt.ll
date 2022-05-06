; ModuleID = '/llk/IR/drivers/bcma/scan.c_pt.bc'
source_filename = "../drivers/bcma/scan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcma_device_id_name = type { i16, ptr }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.61, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.61 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.62, %struct.anon.63, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.62 = type { i8, i8, i8, i8 }
%struct.anon.63 = type { %struct.anon.64, %struct.anon.65 }
%struct.anon.64 = type { i8, i8, i8, i8, i8 }
%struct.anon.65 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
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

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"bus%d: Found chip with id %s, rev 0x%02X and package 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"bus%d: Core %d found: %s (manuf 0x%03X, id 0x%03X, rev 0x%02X, class 0x%X)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"bus%d: Bridge found\0A\00", align 1
@bcma_arm_device_names = internal unnamed_addr constant [4 x %struct.bcma_device_id_name] [%struct.bcma_device_id_name { i16 1500, ptr @.str.6 }, %struct.bcma_device_id_name { i16 2084, ptr @.str.7 }, %struct.bcma_device_id_name { i16 2085, ptr @.str.8 }, %struct.bcma_device_id_name { i16 2090, ptr @.str.9 }], align 4
@bcma_bcm_device_names = internal unnamed_addr constant [74 x %struct.bcma_device_id_name] [%struct.bcma_device_id_name { i16 871, ptr @.str.10 }, %struct.bcma_device_id_name { i16 1280, ptr @.str.11 }, %struct.bcma_device_id_name { i16 1294, ptr @.str.12 }, %struct.bcma_device_id_name { i16 1325, ptr @.str.13 }, %struct.bcma_device_id_name { i16 1281, ptr @.str.14 }, %struct.bcma_device_id_name { i16 1282, ptr @.str.15 }, %struct.bcma_device_id_name { i16 1283, ptr @.str.16 }, %struct.bcma_device_id_name { i16 1284, ptr @.str.17 }, %struct.bcma_device_id_name { i16 1285, ptr @.str.18 }, %struct.bcma_device_id_name { i16 1286, ptr @.str.19 }, %struct.bcma_device_id_name { i16 1287, ptr @.str.20 }, %struct.bcma_device_id_name { i16 1288, ptr @.str.21 }, %struct.bcma_device_id_name { i16 1289, ptr @.str.22 }, %struct.bcma_device_id_name { i16 1290, ptr @.str.23 }, %struct.bcma_device_id_name { i16 1291, ptr @.str.24 }, %struct.bcma_device_id_name { i16 1296, ptr @.str.25 }, %struct.bcma_device_id_name { i16 1326, ptr @.str.26 }, %struct.bcma_device_id_name { i16 1332, ptr @.str.27 }, %struct.bcma_device_id_name { i16 1792, ptr @.str.28 }, %struct.bcma_device_id_name { i16 2048, ptr @.str.29 }, %struct.bcma_device_id_name { i16 2049, ptr @.str.30 }, %struct.bcma_device_id_name { i16 2050, ptr @.str.31 }, %struct.bcma_device_id_name { i16 2051, ptr @.str.32 }, %struct.bcma_device_id_name { i16 2052, ptr @.str.33 }, %struct.bcma_device_id_name { i16 2054, ptr @.str.34 }, %struct.bcma_device_id_name { i16 2055, ptr @.str.35 }, %struct.bcma_device_id_name { i16 2056, ptr @.str.36 }, %struct.bcma_device_id_name { i16 2057, ptr @.str.37 }, %struct.bcma_device_id_name { i16 2058, ptr @.str.38 }, %struct.bcma_device_id_name { i16 2059, ptr @.str.39 }, %struct.bcma_device_id_name { i16 2060, ptr @.str.40 }, %struct.bcma_device_id_name { i16 2061, ptr @.str.41 }, %struct.bcma_device_id_name { i16 2062, ptr @.str.42 }, %struct.bcma_device_id_name { i16 2063, ptr @.str.43 }, %struct.bcma_device_id_name { i16 2064, ptr @.str.44 }, %struct.bcma_device_id_name { i16 2065, ptr @.str.45 }, %struct.bcma_device_id_name { i16 2066, ptr @.str.46 }, %struct.bcma_device_id_name { i16 2067, ptr @.str.47 }, %struct.bcma_device_id_name { i16 2068, ptr @.str.48 }, %struct.bcma_device_id_name { i16 2069, ptr @.str.49 }, %struct.bcma_device_id_name { i16 2071, ptr @.str.50 }, %struct.bcma_device_id_name { i16 2072, ptr @.str.51 }, %struct.bcma_device_id_name { i16 2073, ptr @.str.52 }, %struct.bcma_device_id_name { i16 2074, ptr @.str.53 }, %struct.bcma_device_id_name { i16 2075, ptr @.str.54 }, %struct.bcma_device_id_name { i16 2076, ptr @.str.55 }, %struct.bcma_device_id_name { i16 2077, ptr @.str.56 }, %struct.bcma_device_id_name { i16 2078, ptr @.str.57 }, %struct.bcma_device_id_name { i16 2079, ptr @.str.58 }, %struct.bcma_device_id_name { i16 2080, ptr @.str.59 }, %struct.bcma_device_id_name { i16 2081, ptr @.str.60 }, %struct.bcma_device_id_name { i16 2082, ptr @.str.61 }, %struct.bcma_device_id_name { i16 2083, ptr @.str.62 }, %struct.bcma_device_id_name { i16 2086, ptr @.str.63 }, %struct.bcma_device_id_name { i16 2087, ptr @.str.64 }, %struct.bcma_device_id_name { i16 2088, ptr @.str.65 }, %struct.bcma_device_id_name { i16 2089, ptr @.str.66 }, %struct.bcma_device_id_name { i16 2091, ptr @.str.67 }, %struct.bcma_device_id_name { i16 2093, ptr @.str.68 }, %struct.bcma_device_id_name { i16 2094, ptr @.str.69 }, %struct.bcma_device_id_name { i16 2095, ptr @.str.70 }, %struct.bcma_device_id_name { i16 2096, ptr @.str.71 }, %struct.bcma_device_id_name { i16 2097, ptr @.str.72 }, %struct.bcma_device_id_name { i16 2098, ptr @.str.73 }, %struct.bcma_device_id_name { i16 2099, ptr @.str.74 }, %struct.bcma_device_id_name { i16 2100, ptr @.str.75 }, %struct.bcma_device_id_name { i16 2101, ptr @.str.76 }, %struct.bcma_device_id_name { i16 2103, ptr @.str.77 }, %struct.bcma_device_id_name { i16 2108, ptr @.str.78 }, %struct.bcma_device_id_name { i16 2110, ptr @.str.79 }, %struct.bcma_device_id_name { i16 2112, ptr @.str.80 }, %struct.bcma_device_id_name { i16 2118, ptr @.str.81 }, %struct.bcma_device_id_name { i16 2119, ptr @.str.82 }, %struct.bcma_device_id_name { i16 4095, ptr @.str.83 }], align 4
@bcma_mips_device_names = internal unnamed_addr constant [3 x %struct.bcma_device_id_name] [%struct.bcma_device_id_name { i16 2053, ptr @.str.84 }, %struct.bcma_device_id_name { i16 2070, ptr @.str.85 }, %struct.bcma_device_id_name { i16 2092, ptr @.str.86 }], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"BCM4706 GBit MAC Common\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ARM 1176\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ARM 7TDMI\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ARM CM3\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"OOB Router\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"BCM4706 ChipCommon\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"BCM4706 SOC RAM\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"BCM4706 GBit MAC\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"PCIe Gen 2\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"SDIO3\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"USB 2.0\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"USB 3.0\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ARM Cortex A9 JTAG\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Denali DDR2/DDR3 memory controller\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ROM\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"NAND flash controller\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"SPI flash controller\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Chipcommon B\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"ARM Cortex A9 core (ihost)\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"AMEMC (DDR)\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ALTA (I2S)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"ChipCommon\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"ILine 20\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"SRAM\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"SDRAM\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Fast Ethernet\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"V90\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"USB 1.1 Hostdev\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"ADSL\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"ILine 100\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"IPSEC\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"UTOPIA\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"PCMCIA\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Internal Memory\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"MEMC SDRAM\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"EXTIF\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"IEEE 802.11\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"PHY A\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"PHY B\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"PHY G\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"USB 1.1 Host\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"USB 1.1 Device\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"USB 2.0 Host\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"USB 2.0 Device\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"SDIO Host\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Roboswitch\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"PATA\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"SATA XOR-DMA\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"GBit Ethernet\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"PCIe\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"PHY N\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"SRAM Controller\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Mini MACPHY\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"PHY LP\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"PHY SSN\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"SDIO Device\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"PHY HT\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"GBit MAC\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"DDR1/DDR2 Memory Controller\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"PCIe Root Complex\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"OCP to OCP Bridge\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Common Shared\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"OCP to AHB Bridge\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"SPI Host\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"SDR/DDR1 Memory Controller\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"SHIM\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"PCIe Gen2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"ARM CR4\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"GCI\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"CNDS DDR2/3 memory controller\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"ARM CA7\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"MIPS\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"MIPS 3302\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"MIPS 74K\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_detect_chip(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 128, i32 noundef 402653184) #6
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %11, align 2
  %16 = lshr i32 %14, 16
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 15
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6, i32 1
  store i8 %18, ptr %19, align 2
  %20 = lshr i32 %14, 20
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 15
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6, i32 2
  store i8 %22, ptr %23, align 1
  %24 = and i32 %14, 65535
  %25 = icmp ugt i16 %15, -26215
  %26 = select i1 %25, ptr @.str, ptr @.str.1
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull %26, i32 noundef %24)
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %19, align 2
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %23, align 1
  %35 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.2, i32 noundef %31, ptr noundef nonnull %2, i32 noundef %33, i32 noundef %35) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_scan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %523

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = tail call ptr @ioremap(i32 noundef %9, i32 noundef 4096) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %523, label %18

16:                                               ; preds = %5
  %17 = load ptr, ptr %6, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, ptr %10, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %19, %18 ], [ %11, %16 ]
  %22 = phi ptr [ %14, %18 ], [ %17, %16 ]
  %23 = getelementptr i32, ptr %22, i32 1024
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @pci_write_config_dword(ptr noundef %27, i32 noundef 128, i32 noundef %9) #6
  br label %29

29:                                               ; preds = %25, %20
  %30 = icmp ult ptr %22, %23
  br i1 %30, label %31, label %517

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9, i32 1
  %34 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  br label %35

35:                                               ; preds = %510, %31
  %36 = phi i32 [ 0, %31 ], [ %512, %510 ]
  %37 = phi ptr [ %22, %31 ], [ %511, %510 ]
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 560) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %517, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 14
  store volatile ptr %42, ptr %42, align 8
  %43 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 14, i32 1
  store ptr %42, ptr %43, align 4
  store ptr %0, ptr %39, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %44, 14
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %44, i32 -2
  %50 = select i1 %46, i32 -2, i32 %49
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %514, label %444

55:                                               ; preds = %41
  %56 = getelementptr i32, ptr %37, i32 1
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %58 = getelementptr i32, ptr %37, i32 2
  %59 = and i32 %57, 1
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %57, 14
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %57, i32 -2
  %64 = select i1 %60, i32 -2, i32 %63
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %444, label %66

66:                                               ; preds = %55
  %67 = trunc i32 %50 to i8
  %68 = lshr i8 %67, 4
  %69 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 1
  %70 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 1, i32 3
  store i8 %68, ptr %70, align 1
  %71 = lshr i32 %50, 8
  %72 = trunc i32 %71 to i16
  %73 = and i16 %72, 4095
  %74 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 1, i32 1
  store i16 %73, ptr %74, align 2
  %75 = lshr i32 %50, 20
  %76 = trunc i32 %75 to i16
  store i16 %76, ptr %69, align 4
  %77 = lshr i32 %64, 4
  %78 = and i32 %77, 31
  %79 = lshr i32 %64, 9
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 31
  %82 = lshr i32 %64, 14
  %83 = and i32 %82, 31
  %84 = lshr i32 %64, 19
  %85 = and i32 %84, 31
  %86 = lshr i32 %64, 24
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 1, i32 2
  store i8 %87, ptr %88, align 8
  %89 = icmp eq i16 %76, 1083
  br i1 %89, label %90, label %94

90:                                               ; preds = %66
  %91 = icmp eq i16 %73, 4095
  %92 = icmp eq i8 %81, 0
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %96, label %111

94:                                               ; preds = %66
  %95 = icmp eq i8 %81, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %110, %96
  %98 = phi ptr [ %58, %96 ], [ %100, %110 ]
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %100 = getelementptr i32, ptr %98, i32 1
  %101 = and i32 %99, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = and i32 %99, 14
  %105 = icmp eq i32 %104, 0
  %106 = icmp eq i32 %99, 15
  %107 = or i1 %106, %105
  br i1 %107, label %440, label %110

108:                                              ; preds = %97
  %109 = icmp eq i32 %99, 15
  br i1 %109, label %440, label %110

110:                                              ; preds = %108, %103
  br label %97

111:                                              ; preds = %94, %90
  %112 = sub nsw i32 0, %85
  %113 = icmp eq i32 %83, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = trunc i32 %71 to i12
  switch i12 %115, label %116 [
    i12 1500, label %130
    i12 1291, label %130
    i12 -2009, label %130
    i12 -1984, label %130
  ]

116:                                              ; preds = %129, %114
  %117 = phi ptr [ %119, %129 ], [ %58, %114 ]
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %119 = getelementptr i32, ptr %117, i32 1
  %120 = and i32 %118, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = and i32 %118, 14
  %124 = icmp eq i32 %123, 0
  %125 = icmp eq i32 %118, 15
  %126 = or i1 %125, %124
  br i1 %126, label %440, label %129

127:                                              ; preds = %116
  %128 = icmp eq i32 %118, 15
  br i1 %128, label %440, label %129

129:                                              ; preds = %127, %122
  br label %116

130:                                              ; preds = %114, %114, %114, %114, %111
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %132 = and i32 %131, 199
  %133 = icmp eq i32 %132, 69
  br i1 %133, label %134, label %148

134:                                              ; preds = %147, %130
  %135 = phi ptr [ %137, %147 ], [ %58, %130 ]
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %137 = getelementptr i32, ptr %135, i32 1
  %138 = and i32 %136, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = and i32 %136, 14
  %142 = icmp eq i32 %141, 0
  %143 = icmp eq i32 %136, 15
  %144 = or i1 %143, %142
  br i1 %144, label %440, label %147

145:                                              ; preds = %134
  %146 = icmp eq i32 %136, 15
  br i1 %146, label %440, label %147

147:                                              ; preds = %145, %140
  br label %134

148:                                              ; preds = %130
  %149 = trunc i32 %36 to i16
  br label %150

150:                                              ; preds = %154, %148
  %151 = phi ptr [ %32, %148 ], [ %152, %154 ]
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, %32
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %152, i32 -55
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i16
  %158 = icmp eq i16 %157, %149
  br i1 %158, label %159, label %150

159:                                              ; preds = %154
  %160 = getelementptr i8, ptr %152, i32 -552
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159, %150
  %163 = icmp eq i32 %78, 0
  br i1 %163, label %188, label %181

164:                                              ; preds = %177, %159
  %165 = phi ptr [ %167, %177 ], [ %58, %159 ]
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %167 = getelementptr i32, ptr %165, i32 1
  %168 = and i32 %166, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %164
  %171 = and i32 %166, 14
  %172 = icmp eq i32 %171, 0
  %173 = icmp eq i32 %166, 15
  %174 = or i1 %173, %172
  br i1 %174, label %442, label %177

175:                                              ; preds = %164
  %176 = icmp eq i32 %166, 15
  br i1 %176, label %442, label %177

177:                                              ; preds = %175, %170
  br label %164

178:                                              ; preds = %181
  %179 = add nuw nsw i32 %183, 1
  %180 = icmp eq i32 %179, %78
  br i1 %180, label %188, label %181

181:                                              ; preds = %178, %162
  %182 = phi ptr [ %185, %178 ], [ %58, %162 ]
  %183 = phi i32 [ %179, %178 ], [ 0, %162 ]
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %185 = getelementptr i32, ptr %182, i32 1
  %186 = and i32 %184, -2147483633
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %178, label %444

188:                                              ; preds = %178, %162
  %189 = phi ptr [ %58, %162 ], [ %185, %178 ]
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %191 = getelementptr i32, ptr %189, i32 1
  %192 = and i32 %190, 4039
  %193 = icmp eq i32 %192, 5
  br i1 %193, label %194, label %216

194:                                              ; preds = %188
  %195 = and i32 %190, -4096
  %196 = and i32 %190, 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %200 = getelementptr i32, ptr %189, i32 2
  br label %201

201:                                              ; preds = %198, %194
  %202 = phi ptr [ %191, %194 ], [ %200, %198 ]
  %203 = and i32 %190, 48
  %204 = icmp eq i32 %203, 48
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %207 = getelementptr i32, ptr %202, i32 1
  %208 = and i32 %206, 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %212 = getelementptr i32, ptr %202, i32 2
  br label %213

213:                                              ; preds = %210, %205, %201
  %214 = phi ptr [ %207, %205 ], [ %202, %201 ], [ %212, %210 ]
  %215 = icmp ult i32 %190, 4096
  br i1 %215, label %216, label %247

216:                                              ; preds = %213, %188
  %217 = phi ptr [ %214, %213 ], [ %189, %188 ]
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %219 = getelementptr i32, ptr %217, i32 1
  %220 = and i32 %218, 4039
  %221 = icmp eq i32 %220, 69
  br i1 %221, label %222, label %444

222:                                              ; preds = %216
  %223 = and i32 %218, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %227 = getelementptr i32, ptr %217, i32 2
  br label %228

228:                                              ; preds = %225, %222
  %229 = phi ptr [ %219, %222 ], [ %227, %225 ]
  %230 = and i32 %218, 48
  %231 = icmp eq i32 %230, 48
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %234 = getelementptr i32, ptr %229, i32 1
  %235 = and i32 %233, 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %239 = getelementptr i32, ptr %229, i32 2
  br label %240

240:                                              ; preds = %237, %232, %228
  %241 = phi ptr [ %234, %232 ], [ %229, %228 ], [ %239, %237 ]
  %242 = icmp ult i32 %218, 4096
  br i1 %242, label %444, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %0, align 4
  %245 = load i8, ptr %34, align 1
  %246 = zext i8 %245 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %244, ptr noundef nonnull @.str.4, i32 noundef %246) #7
  br label %440

247:                                              ; preds = %213
  %248 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 8
  store i32 %195, ptr %248, align 4
  %249 = icmp eq i8 %81, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %247
  %251 = zext i8 %81 to i32
  br label %252

252:                                              ; preds = %303, %250
  %253 = phi ptr [ %214, %250 ], [ %305, %303 ]
  %254 = phi i32 [ 0, %250 ], [ %306, %303 ]
  %255 = phi i8 [ 0, %250 ], [ %304, %303 ]
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %257 = and i32 %256, 199
  %258 = icmp eq i32 %257, 5
  br i1 %258, label %264, label %303

259:                                              ; preds = %303, %247
  %260 = phi ptr [ %214, %247 ], [ %305, %303 ]
  %261 = icmp eq i32 %83, 0
  br i1 %261, label %320, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 10
  br label %308

264:                                              ; preds = %298, %252
  %265 = phi ptr [ %292, %298 ], [ %253, %252 ]
  %266 = phi i32 [ %300, %298 ], [ %256, %252 ]
  %267 = phi i8 [ %299, %298 ], [ %255, %252 ]
  %268 = getelementptr i32, ptr %265, i32 1
  %269 = lshr i32 %266, 8
  %270 = and i32 %269, 15
  %271 = icmp eq i32 %270, %254
  br i1 %271, label %272, label %303

272:                                              ; preds = %264
  %273 = and i32 %266, -4096
  %274 = and i32 %266, 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %278 = getelementptr i32, ptr %265, i32 2
  br label %279

279:                                              ; preds = %276, %272
  %280 = phi ptr [ %268, %272 ], [ %278, %276 ]
  %281 = and i32 %266, 48
  %282 = icmp eq i32 %281, 48
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %285 = getelementptr i32, ptr %280, i32 1
  %286 = and i32 %284, 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %283
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %290 = getelementptr i32, ptr %280, i32 2
  br label %291

291:                                              ; preds = %288, %283, %279
  %292 = phi ptr [ %285, %283 ], [ %290, %288 ], [ %280, %279 ]
  %293 = icmp ult i8 %267, 8
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = zext i8 %267 to i32
  %296 = getelementptr %struct.bcma_device, ptr %39, i32 0, i32 9, i32 %295
  store i32 %273, ptr %296, align 4
  %297 = add nuw nsw i8 %267, 1
  br label %298

298:                                              ; preds = %294, %291
  %299 = phi i8 [ %297, %294 ], [ %267, %291 ]
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %301 = and i32 %300, 199
  %302 = icmp eq i32 %301, 5
  br i1 %302, label %264, label %303

303:                                              ; preds = %298, %264, %252
  %304 = phi i8 [ %255, %252 ], [ %299, %298 ], [ %267, %264 ]
  %305 = phi ptr [ %253, %252 ], [ %292, %298 ], [ %265, %264 ]
  %306 = add nuw nsw i32 %254, 1
  %307 = icmp eq i32 %306, %251
  br i1 %307, label %259, label %252

308:                                              ; preds = %365, %262
  %309 = phi ptr [ %260, %262 ], [ %366, %365 ]
  %310 = phi i32 [ 0, %262 ], [ %367, %365 ]
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %312 = and i32 %311, 199
  %313 = icmp eq i32 %312, 197
  %314 = lshr i32 %311, 8
  %315 = and i32 %314, 15
  %316 = icmp eq i32 %315, %310
  %317 = select i1 %313, i1 %316, i1 false
  br i1 %317, label %318, label %365

318:                                              ; preds = %308
  %319 = icmp eq i32 %310, 0
  br label %328

320:                                              ; preds = %365, %259
  %321 = phi ptr [ %260, %259 ], [ %366, %365 ]
  %322 = icmp eq i32 %85, 0
  br i1 %322, label %420, label %323

323:                                              ; preds = %320
  %324 = icmp ne i8 %81, 1
  %325 = icmp ne i32 %83, 0
  %326 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 10
  %327 = zext i1 %324 to i32
  br label %369

328:                                              ; preds = %356, %318
  %329 = phi ptr [ %309, %318 ], [ %352, %356 ]
  %330 = phi i32 [ %311, %318 ], [ %358, %356 ]
  %331 = phi i8 [ 0, %318 ], [ %357, %356 ]
  %332 = getelementptr i32, ptr %329, i32 1
  %333 = and i32 %330, -4096
  %334 = and i32 %330, 8
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %328
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %338 = getelementptr i32, ptr %329, i32 2
  br label %339

339:                                              ; preds = %336, %328
  %340 = phi ptr [ %332, %328 ], [ %338, %336 ]
  %341 = and i32 %330, 48
  %342 = icmp eq i32 %341, 48
  br i1 %342, label %343, label %351

343:                                              ; preds = %339
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %340) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %345 = getelementptr i32, ptr %340, i32 1
  %346 = and i32 %344, 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %343
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %350 = getelementptr i32, ptr %340, i32 2
  br label %351

351:                                              ; preds = %348, %343, %339
  %352 = phi ptr [ %345, %343 ], [ %350, %348 ], [ %340, %339 ]
  %353 = icmp eq i8 %331, 0
  %354 = select i1 %319, i1 %353, i1 false
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  store i32 %333, ptr %263, align 8
  br label %356

356:                                              ; preds = %355, %351
  %357 = add i8 %331, 1
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %352) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %359 = and i32 %358, 199
  %360 = icmp eq i32 %359, 197
  %361 = lshr i32 %358, 8
  %362 = and i32 %361, 15
  %363 = icmp eq i32 %362, %310
  %364 = select i1 %360, i1 %363, i1 false
  br i1 %364, label %328, label %365

365:                                              ; preds = %356, %308
  %366 = phi ptr [ %309, %308 ], [ %352, %356 ]
  %367 = add nuw nsw i32 %310, 1
  %368 = icmp eq i32 %367, %83
  br i1 %368, label %320, label %308

369:                                              ; preds = %416, %323
  %370 = phi ptr [ %321, %323 ], [ %417, %416 ]
  %371 = phi i32 [ 0, %323 ], [ %418, %416 ]
  %372 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %373 = and i32 %372, 199
  %374 = icmp eq i32 %373, 133
  br i1 %374, label %375, label %416

375:                                              ; preds = %369
  %376 = add nuw nsw i32 %371, %327
  %377 = icmp ne i32 %371, 0
  %378 = select i1 %325, i1 true, i1 %377
  br label %379

379:                                              ; preds = %411, %375
  %380 = phi ptr [ %370, %375 ], [ %407, %411 ]
  %381 = phi i32 [ %372, %375 ], [ %413, %411 ]
  %382 = phi i8 [ 0, %375 ], [ %412, %411 ]
  %383 = getelementptr i32, ptr %380, i32 1
  %384 = lshr i32 %381, 8
  %385 = and i32 %384, 15
  %386 = icmp eq i32 %385, %376
  br i1 %386, label %387, label %416

387:                                              ; preds = %379
  %388 = and i32 %381, -4096
  %389 = and i32 %381, 8
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %394, label %391

391:                                              ; preds = %387
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %383) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %393 = getelementptr i32, ptr %380, i32 2
  br label %394

394:                                              ; preds = %391, %387
  %395 = phi ptr [ %383, %387 ], [ %393, %391 ]
  %396 = and i32 %381, 48
  %397 = icmp eq i32 %396, 48
  br i1 %397, label %398, label %406

398:                                              ; preds = %394
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %395) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %400 = getelementptr i32, ptr %395, i32 1
  %401 = and i32 %399, 8
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %398
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %400) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %405 = getelementptr i32, ptr %395, i32 2
  br label %406

406:                                              ; preds = %403, %398, %394
  %407 = phi ptr [ %400, %398 ], [ %405, %403 ], [ %395, %394 ]
  %408 = icmp ne i8 %382, 0
  %409 = select i1 %378, i1 true, i1 %408
  br i1 %409, label %411, label %410

410:                                              ; preds = %406
  store i32 %388, ptr %326, align 8
  br label %411

411:                                              ; preds = %410, %406
  %412 = add i8 %382, 1
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %414 = and i32 %413, 199
  %415 = icmp eq i32 %414, 133
  br i1 %415, label %379, label %416

416:                                              ; preds = %411, %379, %369
  %417 = phi ptr [ %370, %369 ], [ %407, %411 ], [ %380, %379 ]
  %418 = add nuw nsw i32 %371, 1
  %419 = icmp eq i32 %418, %85
  br i1 %419, label %420, label %369

420:                                              ; preds = %416, %320
  %421 = phi ptr [ %321, %320 ], [ %417, %416 ]
  %422 = load i32, ptr %10, align 4
  %423 = icmp eq i32 %422, 2
  br i1 %423, label %424, label %447

424:                                              ; preds = %420
  %425 = load i32, ptr %248, align 4
  %426 = tail call ptr @ioremap(i32 noundef %425, i32 noundef 4096) #6
  %427 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 11
  store ptr %426, ptr %427, align 4
  %428 = icmp eq ptr %426, null
  br i1 %428, label %444, label %429

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 10
  %431 = load i32, ptr %430, align 8
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %447, label %433

433:                                              ; preds = %429
  %434 = tail call ptr @ioremap(i32 noundef %431, i32 noundef 4096) #6
  %435 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 12
  store ptr %434, ptr %435, align 8
  %436 = icmp eq ptr %434, null
  br i1 %436, label %437, label %447

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 11
  %439 = load ptr, ptr %438, align 4
  tail call void @iounmap(ptr noundef %439) #6
  br label %444

440:                                              ; preds = %243, %145, %140, %127, %122, %108, %103
  %441 = phi ptr [ %241, %243 ], [ %98, %108 ], [ %98, %103 ], [ %117, %127 ], [ %117, %122 ], [ %135, %145 ], [ %135, %140 ]
  tail call void @kfree(ptr noundef nonnull %39) #6
  br label %510

442:                                              ; preds = %175, %170
  tail call void @kfree(ptr noundef nonnull %39) #6
  %443 = add i32 %36, 1
  br label %510

444:                                              ; preds = %437, %424, %240, %216, %181, %55, %52
  %445 = phi ptr [ %37, %52 ], [ %421, %437 ], [ %185, %181 ], [ %217, %216 ], [ %421, %424 ], [ %241, %240 ], [ %58, %55 ]
  %446 = phi i32 [ -84, %52 ], [ -12, %437 ], [ -84, %181 ], [ -84, %216 ], [ -12, %424 ], [ -84, %240 ], [ -84, %55 ]
  br label %514

447:                                              ; preds = %433, %429, %420
  %448 = add i32 %36, 1
  %449 = trunc i32 %36 to i8
  %450 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 6
  store i8 %449, ptr %450, align 1
  %451 = load i8, ptr %2, align 4
  %452 = add i8 %451, 1
  store i8 %452, ptr %2, align 4
  %453 = load i16, ptr %74, align 2
  %454 = load ptr, ptr %33, align 4
  %455 = icmp eq ptr %454, %32
  br i1 %455, label %472, label %456

456:                                              ; preds = %461, %447
  %457 = phi ptr [ %463, %461 ], [ %454, %447 ]
  %458 = getelementptr i8, ptr %457, i32 -546
  %459 = load i16, ptr %458, align 2
  %460 = icmp eq i16 %459, %453
  br i1 %460, label %465, label %461

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.list_head, ptr %457, i32 0, i32 1
  %463 = load ptr, ptr %462, align 4
  %464 = icmp eq ptr %463, %32
  br i1 %464, label %472, label %456

465:                                              ; preds = %456
  %466 = getelementptr i8, ptr %457, i32 -552
  %467 = icmp eq ptr %466, null
  br i1 %467, label %472, label %468

468:                                              ; preds = %465
  %469 = getelementptr i8, ptr %457, i32 -54
  %470 = load i8, ptr %469, align 2
  %471 = add i8 %470, 1
  br label %472

472:                                              ; preds = %468, %465, %461, %447
  %473 = phi i8 [ %471, %468 ], [ 0, %465 ], [ 0, %447 ], [ 0, %461 ]
  %474 = getelementptr inbounds %struct.bcma_device, ptr %39, i32 0, i32 7
  store i8 %473, ptr %474, align 2
  tail call void @bcma_prepare_core(ptr noundef %0, ptr noundef nonnull %39) #6
  %475 = load ptr, ptr %0, align 4
  %476 = load i8, ptr %34, align 1
  %477 = zext i8 %476 to i32
  %478 = load i8, ptr %450, align 1
  %479 = zext i8 %478 to i32
  %480 = load i16, ptr %69, align 4
  switch i16 %480, label %481 [
    i16 1083, label %485
    i16 1215, label %483
    i16 1191, label %484
  ]

481:                                              ; preds = %472
  %482 = load i16, ptr %74, align 2
  br label %500

483:                                              ; preds = %472
  br label %485

484:                                              ; preds = %472
  br label %485

485:                                              ; preds = %484, %483, %472
  %486 = phi ptr [ @bcma_mips_device_names, %484 ], [ @bcma_bcm_device_names, %483 ], [ @bcma_arm_device_names, %472 ]
  %487 = phi i32 [ 3, %484 ], [ 74, %483 ], [ 4, %472 ]
  %488 = load i16, ptr %74, align 2
  br label %489

489:                                              ; preds = %497, %485
  %490 = phi i32 [ 0, %485 ], [ %498, %497 ]
  %491 = getelementptr %struct.bcma_device_id_name, ptr %486, i32 %490
  %492 = load i16, ptr %491, align 4
  %493 = icmp eq i16 %492, %488
  br i1 %493, label %494, label %497

494:                                              ; preds = %489
  %495 = getelementptr %struct.bcma_device_id_name, ptr %486, i32 %490, i32 1
  %496 = load ptr, ptr %495, align 4
  br label %500

497:                                              ; preds = %489
  %498 = add nuw nsw i32 %490, 1
  %499 = icmp eq i32 %498, %487
  br i1 %499, label %500, label %489

500:                                              ; preds = %497, %494, %481
  %501 = phi i16 [ %488, %494 ], [ %482, %481 ], [ %488, %497 ]
  %502 = phi ptr [ %496, %494 ], [ @.str.5, %481 ], [ @.str.5, %497 ]
  %503 = zext i16 %480 to i32
  %504 = zext i16 %501 to i32
  %505 = load i8, ptr %88, align 8
  %506 = zext i8 %505 to i32
  %507 = load i8, ptr %70, align 1
  %508 = zext i8 %507 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %475, ptr noundef nonnull @.str.3, i32 noundef %477, i32 noundef %479, ptr noundef %502, i32 noundef %503, i32 noundef %504, i32 noundef %506, i32 noundef %508) #7
  %509 = load ptr, ptr %33, align 4
  store ptr %42, ptr %33, align 4
  store ptr %32, ptr %42, align 8
  store ptr %509, ptr %43, align 4
  store volatile ptr %42, ptr %509, align 4
  br label %510

510:                                              ; preds = %500, %442, %440
  %511 = phi ptr [ %165, %442 ], [ %421, %500 ], [ %441, %440 ]
  %512 = phi i32 [ %443, %442 ], [ %448, %500 ], [ %36, %440 ]
  %513 = icmp ult ptr %511, %23
  br i1 %513, label %35, label %517

514:                                              ; preds = %444, %52
  %515 = phi ptr [ %445, %444 ], [ %37, %52 ]
  %516 = phi i32 [ %446, %444 ], [ 0, %52 ]
  tail call void @kfree(ptr noundef nonnull %39) #6
  br label %517

517:                                              ; preds = %514, %510, %35, %29
  %518 = phi ptr [ %22, %29 ], [ %515, %514 ], [ %511, %510 ], [ %37, %35 ]
  %519 = phi i32 [ 0, %29 ], [ %516, %514 ], [ 0, %510 ], [ -12, %35 ]
  %520 = load i32, ptr %10, align 4
  %521 = icmp eq i32 %520, 2
  br i1 %521, label %522, label %523

522:                                              ; preds = %517
  tail call void @iounmap(ptr noundef %518) #6
  br label %523

523:                                              ; preds = %522, %517, %13, %1
  %524 = phi i32 [ 0, %1 ], [ -12, %13 ], [ %519, %522 ], [ %519, %517 ]
  ret i32 %524
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_prepare_core(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 3851314}
!10 = !{i64 2153599159}
!11 = !{i64 2153599471}
