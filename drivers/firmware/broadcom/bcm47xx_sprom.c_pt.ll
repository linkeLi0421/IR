; ModuleID = '/llk/IR/drivers/firmware/broadcom/bcm47xx_sprom.c_pt.bc'
source_filename = "../drivers/firmware/broadcom/bcm47xx_sprom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon, %struct.anon.0, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon = type { i8, i8, i8, i8 }
%struct.anon.0 = type { %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i8, i8, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i8, i8, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }

@.str = private unnamed_addr constant [8 x i8] c"sromrev\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ccode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"leddc\00", align 1
@bcm47xx_sprom_registered = internal unnamed_addr global i1 false, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"\014Failed to register bcma SPROM handler\0A\00", align 1
@__initcall__kmod_bcm47xx_sprom__322_726_bcm47xx_sprom_register_fallbacks5 = internal global ptr @bcm47xx_sprom_register_fallbacks, section ".initcall5.init", align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"et0macaddr\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"et0mdcport\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"et0phyaddr\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"et1macaddr\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"et1mdcport\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"et1phyaddr\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"et2macaddr\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"et2mdcport\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"et2phyaddr\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"macaddr\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"il0macaddr\00", align 1
@mac_addr_used = internal unnamed_addr global i32 2, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"\014Can not parse mac address: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"\013unable to fetch mac address\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"boardflags\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"boardflags2\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"\014can not parse nvram name %s%s with value %s got %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"\014can not parse nvram name %s%s%s with value %s got %i\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\014alpha2 is too long %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"maxp2ga\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"itt2ga\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"itt5ga\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"pa2gw0a\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"pa2gw1a\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"pa2gw2a\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"maxp5ga\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"maxp5gha\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"maxp5gla\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"pa5gw0a\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"pa5gw1a\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"pa5gw2a\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"pa5glw0a\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"pa5glw1a\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pa5glw2a\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"pa5ghw0a\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"pa5ghw1a\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"pa5ghw2a\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"pa2gw3a\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"pa5gw3a\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"pa5glw3a\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"pa5ghw3a\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"devid\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"boardrev\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"boardflags3\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"boardtype\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"boardnum\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"regrev\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"ledbh0\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"ledbh1\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"ledbh2\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"ledbh3\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"pa0b0\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"pa0b1\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"pa0b2\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"pa0itssit\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"pa0maxpwr\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"opo\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"aa2g\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"aa5g\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"ag0\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"ag1\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"ag2\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"ag3\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"pa1b0\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"pa1b1\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"pa1b2\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"pa1lob0\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"pa1lob1\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"pa1lob2\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"pa1hib0\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"pa1hib1\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"pa1hib2\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"pa1itssit\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"pa1maxpwr\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"pa1lomaxpwr\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"pa1himaxpwr\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"bxa2g\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"rssisav2g\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"rssismc2g\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"rssismf2g\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"bxa5g\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"rssisav5g\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"rssismc5g\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"rssismf5g\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"tri2g\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"tri5g\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"tri5gl\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"tri5gh\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"rxpo2g\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"rxpo5g\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"txchain\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"rxchain\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"antswitch\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"tssipos2g\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"extpagain2g\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"pdetrange2g\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"triso2g\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"antswctl2g\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"tssipos5g\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"extpagain5g\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"pdetrange5g\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"triso5g\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"antswctl5g\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"txpid2ga0\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"txpid2ga1\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"txpid2ga2\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"txpid2ga3\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"txpid5ga0\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"txpid5ga1\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"txpid5ga2\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"txpid5ga3\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"txpid5gla0\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"txpid5gla1\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"txpid5gla2\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"txpid5gla3\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"txpid5gha0\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"txpid5gha1\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"txpid5gha2\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"txpid5gha3\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"tempthresh\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"tempoffset\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"rawtempsense\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"measpower\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"tempsense_slope\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"tempcorrx\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"tempsense_option\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"freqoffset_corr\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"iqcal_swp_dis\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"hw_iqcal_en\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"elna2g\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"elna5g\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"phycal_tempdelta\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"temps_period\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"temps_hysteresis\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"measpower1\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"measpower2\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"cck2gpo\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"ofdm2gpo\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"ofdm5gpo\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"ofdm5glpo\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"ofdm5ghpo\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"mcs2gpo0\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"mcs2gpo1\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"mcs2gpo2\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"mcs2gpo3\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"mcs2gpo4\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"mcs2gpo5\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"mcs2gpo6\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"mcs2gpo7\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"mcs5gpo0\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"mcs5gpo1\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"mcs5gpo2\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"mcs5gpo3\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"mcs5gpo4\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"mcs5gpo5\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"mcs5gpo6\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"mcs5gpo7\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"mcs5glpo0\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"mcs5glpo1\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"mcs5glpo2\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"mcs5glpo3\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"mcs5glpo4\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"mcs5glpo5\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"mcs5glpo6\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"mcs5glpo7\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"mcs5ghpo0\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"mcs5ghpo1\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"mcs5ghpo2\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"mcs5ghpo3\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"mcs5ghpo4\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"mcs5ghpo5\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"mcs5ghpo6\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"mcs5ghpo7\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"cddpo\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"stbcpo\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"bw40po\00", align 1
@.str.184 = private unnamed_addr constant [8 x i8] c"bwduppo\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"cckbw202gpo\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"cckbw20ul2gpo\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"legofdmbw202gpo\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"legofdmbw20ul2gpo\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"legofdmbw205glpo\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"legofdmbw20ul5glpo\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"legofdmbw205gmpo\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"legofdmbw20ul5gmpo\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"legofdmbw205ghpo\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"legofdmbw20ul5ghpo\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"mcsbw202gpo\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"mcsbw20ul2gpo\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"mcsbw402gpo\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"mcsbw205glpo\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"mcsbw20ul5glpo\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"mcsbw405glpo\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"mcsbw205gmpo\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"mcsbw20ul5gmpo\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"mcsbw405gmpo\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"mcsbw205ghpo\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"mcsbw20ul5ghpo\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"mcsbw405ghpo\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"mcs32po\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"legofdm40duppo\00", align 1
@.str.209 = private unnamed_addr constant [16 x i8] c"pcieingress_war\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"rxgainerr2ga0\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"rxgainerr2ga1\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"rxgainerr2ga2\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"rxgainerr5gla0\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"rxgainerr5gla1\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"rxgainerr5gla2\00", align 1
@.str.216 = private unnamed_addr constant [15 x i8] c"rxgainerr5gma0\00", align 1
@.str.217 = private unnamed_addr constant [15 x i8] c"rxgainerr5gma1\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"rxgainerr5gma2\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"rxgainerr5gha0\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"rxgainerr5gha1\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"rxgainerr5gha2\00", align 1
@.str.222 = private unnamed_addr constant [15 x i8] c"rxgainerr5gua0\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"rxgainerr5gua1\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"rxgainerr5gua2\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"sar2g\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"sar5g\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"noiselvl2ga0\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"noiselvl2ga1\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"noiselvl2ga2\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"noiselvl5gla0\00", align 1
@.str.231 = private unnamed_addr constant [14 x i8] c"noiselvl5gla1\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"noiselvl5gla2\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"noiselvl5gma0\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"noiselvl5gma1\00", align 1
@.str.235 = private unnamed_addr constant [14 x i8] c"noiselvl5gma2\00", align 1
@.str.236 = private unnamed_addr constant [14 x i8] c"noiselvl5gha0\00", align 1
@.str.237 = private unnamed_addr constant [14 x i8] c"noiselvl5gha1\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"noiselvl5gha2\00", align 1
@.str.239 = private unnamed_addr constant [14 x i8] c"noiselvl5gua0\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"noiselvl5gua1\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"noiselvl5gua2\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"pci/%u/%u/\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"sb/%u/\00", align 1
@.str.244 = private unnamed_addr constant [43 x i8] c"\014Unable to fill SPROM for given bustype.\0A\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"boardvendor\00", align 1
@.str.246 = private unnamed_addr constant [10 x i8] c"devpath%d\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_bcm47xx_sprom__322_726_bcm47xx_sprom_register_fallbacks5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcm47xx_fill_sprom(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [100 x i8], align 1
  %5 = alloca i16, align 2
  %6 = alloca [100 x i8], align 1
  %7 = alloca i16, align 2
  %8 = alloca [100 x i8], align 1
  %9 = alloca i16, align 2
  %10 = alloca [100 x i8], align 1
  %11 = alloca i16, align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [100 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca [10 x i8], align 2
  %16 = alloca [100 x i8], align 1
  %17 = alloca i8, align 1
  %18 = alloca [100 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca [100 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca [40 x i8], align 1
  %23 = alloca [100 x i8], align 1
  %24 = alloca [100 x i8], align 1
  %25 = alloca [100 x i8], align 1
  %26 = alloca [100 x i8], align 1
  %27 = alloca i8, align 1
  %28 = alloca [100 x i8], align 1
  %29 = alloca i8, align 1
  %30 = alloca [100 x i8], align 1
  %31 = alloca [100 x i8], align 1
  %32 = alloca i8, align 1
  %33 = alloca [100 x i8], align 1
  %34 = alloca i8, align 1
  %35 = alloca [100 x i8], align 1
  %36 = alloca [100 x i8], align 1
  %37 = alloca i8, align 1
  %38 = alloca [100 x i8], align 1
  %39 = alloca i8, align 1
  %40 = alloca [100 x i8], align 1
  %41 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %40) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %40, i8 0, i32 100, i1 false) #8, !annotation !8
  %42 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %40, i32 noundef 100, i1 noundef zeroext %2) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 3
  %46 = call ptr @strreplace(ptr noundef nonnull %40, i8 noundef zeroext 45, i8 noundef zeroext 58) #8
  %47 = call zeroext i1 @mac_pton(ptr noundef nonnull %40, ptr noundef %45) #8
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %40) #9
  br label %50

50:                                               ; preds = %48, %44, %3
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %40) #8
  %51 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %38) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %38, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #8
  store i8 0, ptr %39, align 1, !annotation !8
  %52 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull %38, i32 noundef 100, i1 noundef zeroext %2) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = call ptr @strim(ptr noundef nonnull %38) #8
  %56 = call i32 @kstrtou8(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %39) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef nonnull %38, i32 noundef %56) #9
  br label %62

60:                                               ; preds = %54
  %61 = load i8, ptr %39, align 1
  store i8 %61, ptr %51, align 1
  br label %62

62:                                               ; preds = %60, %58, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %38) #8
  %63 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %36) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %36, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #8
  store i8 0, ptr %37, align 1, !annotation !8
  %64 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %36, i32 noundef 100, i1 noundef zeroext %2) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = call ptr @strim(ptr noundef nonnull %36) #8
  %68 = call i32 @kstrtou8(ptr noundef %67, i32 noundef 0, ptr noundef nonnull %37) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull %36, i32 noundef %68) #9
  br label %74

72:                                               ; preds = %66
  %73 = load i8, ptr %37, align 1
  store i8 %73, ptr %63, align 1
  br label %74

74:                                               ; preds = %72, %70, %62
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %36) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %35) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %35, i8 0, i32 100, i1 false) #8, !annotation !8
  %75 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %35, i32 noundef 100, i1 noundef zeroext %2) #8
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 4
  %79 = call ptr @strreplace(ptr noundef nonnull %35, i8 noundef zeroext 45, i8 noundef zeroext 58) #8
  %80 = call zeroext i1 @mac_pton(ptr noundef nonnull %35, ptr noundef %78) #8
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %35) #9
  br label %83

83:                                               ; preds = %81, %77, %74
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %35) #8
  %84 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %33) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %33, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #8
  store i8 0, ptr %34, align 1, !annotation !8
  %85 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull %33, i32 noundef 100, i1 noundef zeroext %2) #8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = call ptr @strim(ptr noundef nonnull %33) #8
  %89 = call i32 @kstrtou8(ptr noundef %88, i32 noundef 0, ptr noundef nonnull %34) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull %33, i32 noundef %89) #9
  br label %95

93:                                               ; preds = %87
  %94 = load i8, ptr %34, align 1
  store i8 %94, ptr %84, align 1
  br label %95

95:                                               ; preds = %93, %91, %83
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %33) #8
  %96 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %31) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %31, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #8
  store i8 0, ptr %32, align 1, !annotation !8
  %97 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull %31, i32 noundef 100, i1 noundef zeroext %2) #8
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = call ptr @strim(ptr noundef nonnull %31) #8
  %101 = call i32 @kstrtou8(ptr noundef %100, i32 noundef 0, ptr noundef nonnull %32) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef nonnull %31, i32 noundef %101) #9
  br label %107

105:                                              ; preds = %99
  %106 = load i8, ptr %32, align 1
  store i8 %106, ptr %96, align 1
  br label %107

107:                                              ; preds = %105, %103, %95
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %31) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %30) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %30, i8 0, i32 100, i1 false) #8, !annotation !8
  %108 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull %30, i32 noundef 100, i1 noundef zeroext %2) #8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 5
  %112 = call ptr @strreplace(ptr noundef nonnull %30, i8 noundef zeroext 45, i8 noundef zeroext 58) #8
  %113 = call zeroext i1 @mac_pton(ptr noundef nonnull %30, ptr noundef %111) #8
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %30) #9
  br label %116

116:                                              ; preds = %114, %110, %107
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %30) #8
  %117 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %28) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %28, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #8
  store i8 0, ptr %29, align 1, !annotation !8
  %118 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %28, i32 noundef 100, i1 noundef zeroext %2) #8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = call ptr @strim(ptr noundef nonnull %28) #8
  %122 = call i32 @kstrtou8(ptr noundef %121, i32 noundef 0, ptr noundef nonnull %29) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef nonnull %28, i32 noundef %122) #9
  br label %128

126:                                              ; preds = %120
  %127 = load i8, ptr %29, align 1
  store i8 %127, ptr %117, align 1
  br label %128

128:                                              ; preds = %126, %124, %116
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %28) #8
  %129 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %26) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %26, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #8
  store i8 0, ptr %27, align 1, !annotation !8
  %130 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %26, i32 noundef 100, i1 noundef zeroext %2) #8
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = call ptr @strim(ptr noundef nonnull %26) #8
  %134 = call i32 @kstrtou8(ptr noundef %133, i32 noundef 0, ptr noundef nonnull %27) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef nonnull %26, i32 noundef %134) #9
  br label %140

138:                                              ; preds = %132
  %139 = load i8, ptr %27, align 1
  store i8 %139, ptr %129, align 1
  br label %140

140:                                              ; preds = %138, %136, %128
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %26) #8
  %141 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %25) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %25, i8 0, i32 100, i1 false) #8, !annotation !8
  %142 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull %25, i32 noundef 100, i1 noundef zeroext %2) #8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = call ptr @strreplace(ptr noundef nonnull %25, i8 noundef zeroext 45, i8 noundef zeroext 58) #8
  %146 = call zeroext i1 @mac_pton(ptr noundef nonnull %25, ptr noundef %141) #8
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %25) #9
  br label %149

149:                                              ; preds = %147, %144, %140
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %25) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %24) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %24, i8 0, i32 100, i1 false) #8, !annotation !8
  %150 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull %24, i32 noundef 100, i1 noundef zeroext %2) #8
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %149
  %153 = call ptr @strreplace(ptr noundef nonnull %24, i8 noundef zeroext 45, i8 noundef zeroext 58) #8
  %154 = call zeroext i1 @mac_pton(ptr noundef nonnull %24, ptr noundef %141) #8
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %24) #9
  br label %157

157:                                              ; preds = %155, %152, %149
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %24) #8
  %158 = load i8, ptr %141, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %214

160:                                              ; preds = %157
  %161 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 2, i32 1
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, -112
  br i1 %163, label %164, label %214

164:                                              ; preds = %160
  %165 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 2, i32 2
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 76
  br i1 %167, label %168, label %214

168:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %41) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %41, i8 0, i32 6, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %23) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %23, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %22) #8
  %169 = getelementptr inbounds i8, ptr %22, i32 11
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(29) %169, i8 0, i32 29, i1 false) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %22, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i32 11, i1 false) #8
  %170 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %22, ptr noundef nonnull %23, i32 noundef 100) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %22) #8
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = call ptr @strreplace(ptr noundef nonnull %23, i8 noundef zeroext 45, i8 noundef zeroext 58) #8
  %174 = call zeroext i1 @mac_pton(ptr noundef nonnull %23, ptr noundef nonnull %41) #8
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %23) #9
  br label %177

177:                                              ; preds = %175, %172, %168
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %23) #8
  %178 = load i8, ptr %41, align 4
  %179 = icmp ne i8 %178, 0
  %180 = getelementptr inbounds i8, ptr %41, i32 1
  %181 = load i8, ptr %180, align 1
  %182 = icmp ne i8 %181, -112
  %183 = select i1 %179, i1 true, i1 %182
  %184 = getelementptr inbounds i8, ptr %41, i32 2
  %185 = load i8, ptr %184, align 2
  %186 = icmp ne i8 %185, 76
  %187 = select i1 %183, i1 true, i1 %186
  br i1 %187, label %188, label %213

188:                                              ; preds = %177
  %189 = load i32, ptr @mac_addr_used, align 4
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds i8, ptr %41, i32 5
  %192 = load i8, ptr %191, align 1
  %193 = add i8 %192, %190
  store i8 %193, ptr %191, align 1
  %194 = icmp ugt i8 %193, %190
  br i1 %194, label %207, label %195

195:                                              ; preds = %188
  %196 = getelementptr inbounds i8, ptr %41, i32 4
  %197 = load i8, ptr %196, align 4
  %198 = add i8 %197, 1
  store i8 %198, ptr %196, align 4
  %199 = icmp ugt i8 %198, 1
  br i1 %199, label %207, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds i8, ptr %41, i32 3
  %202 = load i8, ptr %201, align 1
  %203 = add i8 %202, 1
  store i8 %203, ptr %201, align 1
  %204 = icmp ult i8 %203, 2
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %213

207:                                              ; preds = %200, %195, %188
  %208 = load i32, ptr %41, align 4
  store i32 %208, ptr %141, align 4
  %209 = getelementptr inbounds i8, ptr %41, i32 4
  %210 = load i16, ptr %209, align 4
  %211 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 2, i32 4
  store i16 %210, ptr %211, align 2
  %212 = add i32 %189, 1
  store i32 %212, ptr @mac_addr_used, align 4
  br label %213

213:                                              ; preds = %207, %205, %177
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %41) #8
  br label %214

214:                                              ; preds = %213, %164, %160, %157
  %215 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 70
  %216 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 71
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %20) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %20, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  store i32 0, ptr %21, align 4, !annotation !8
  %217 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull %20, i32 noundef 100, i1 noundef zeroext %2) #8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %214
  %220 = call ptr @strim(ptr noundef nonnull %20) #8
  %221 = call i32 @kstrtouint(ptr noundef %220, i32 noundef 0, ptr noundef nonnull %21) #8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %20, i32 noundef %221) #9
  br label %230

225:                                              ; preds = %219
  %226 = load i32, ptr %21, align 4
  %227 = trunc i32 %226 to i16
  store i16 %227, ptr %215, align 2
  %228 = lshr i32 %226, 16
  %229 = trunc i32 %228 to i16
  store i16 %229, ptr %216, align 2
  br label %230

230:                                              ; preds = %225, %223, %214
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %20) #8
  %231 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 72
  %232 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 73
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %18) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %18, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  store i32 0, ptr %19, align 4, !annotation !8
  %233 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull %18, i32 noundef 100, i1 noundef zeroext %2) #8
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %230
  %236 = call ptr @strim(ptr noundef nonnull %18) #8
  %237 = call i32 @kstrtouint(ptr noundef %236, i32 noundef 0, ptr noundef nonnull %19) #8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %18, i32 noundef %237) #9
  br label %246

241:                                              ; preds = %235
  %242 = load i32, ptr %19, align 4
  %243 = trunc i32 %242 to i16
  store i16 %243, ptr %231, align 2
  %244 = lshr i32 %242, 16
  %245 = trunc i32 %244 to i16
  store i16 %245, ptr %232, align 2
  br label %246

246:                                              ; preds = %241, %239, %230
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %16) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %16, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #8
  store i8 0, ptr %17, align 1, !annotation !8
  %247 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %16, i32 noundef 100, i1 noundef zeroext %2) #8
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %246
  %250 = call ptr @strim(ptr noundef nonnull %16) #8
  %251 = call i32 @kstrtou8(ptr noundef %250, i32 noundef 0, ptr noundef nonnull %17) #8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull %16, i32 noundef %251) #9
  br label %257

255:                                              ; preds = %249
  %256 = load i8, ptr %17, align 1
  store i8 %256, ptr %0, align 1
  br label %257

257:                                              ; preds = %255, %253, %246
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %16) #8
  %258 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %15) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %15, i8 0, i32 10, i1 false) #8, !annotation !8
  %259 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull %15, i32 noundef 10, i1 noundef zeroext %2) #8
  %260 = icmp slt i32 %259, 0
  %261 = load i8, ptr %15, align 2
  %262 = icmp eq i8 %261, 48
  %263 = select i1 %260, i1 true, i1 %262
  br i1 %263, label %271, label %264

264:                                              ; preds = %257
  %265 = call i32 @strlen(ptr noundef nonnull %15) #8
  %266 = icmp ugt i32 %265, 2
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %15) #9
  br label %271

269:                                              ; preds = %264
  %270 = load i16, ptr %15, align 2
  store i16 %270, ptr %258, align 1
  br label %271

271:                                              ; preds = %269, %267, %257
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %15) #8
  %272 = load i8, ptr %0, align 4
  %273 = icmp ugt i8 %272, 2
  br i1 %273, label %274, label %293

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 18
  %276 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %13) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %13, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !annotation !8
  %277 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull %13, i32 noundef 100, i1 noundef zeroext %2) #8
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %291, label %279

279:                                              ; preds = %274
  %280 = call ptr @strim(ptr noundef nonnull %13) #8
  %281 = call i32 @kstrtouint(ptr noundef %280, i32 noundef 0, ptr noundef nonnull %14) #8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %13, i32 noundef %281) #9
  br label %291

285:                                              ; preds = %279
  %286 = load i32, ptr %14, align 4
  switch i32 %286, label %287 [
    i32 -1, label %291
    i32 65535, label %291
  ]

287:                                              ; preds = %285
  %288 = trunc i32 %286 to i8
  store i8 %288, ptr %275, align 1
  %289 = lshr i32 %286, 16
  %290 = trunc i32 %289 to i8
  store i8 %290, ptr %276, align 1
  br label %291

291:                                              ; preds = %287, %285, %285, %283, %274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %13) #8
  %292 = load i8, ptr %0, align 4
  br label %293

293:                                              ; preds = %291, %271
  %294 = phi i8 [ %292, %291 ], [ %272, %271 ]
  switch i8 %294, label %351 [
    i8 4, label %295
    i8 5, label %295
    i8 8, label %350
    i8 9, label %350
  ]

295:                                              ; preds = %293, %293
  call fastcc void @bcm47xx_fill_sprom_path_r4589(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i16 0, ptr %12, align 2, !annotation !8
  br label %296

296:                                              ; preds = %346, %295
  %297 = phi i32 [ 0, %295 ], [ %347, %346 ]
  %298 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %12, i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %297) #8
  %299 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %297, i32 6, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %10, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i16 0, ptr %11, align 2, !annotation !8
  %300 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull @.str.44, ptr noundef nonnull %10, i32 noundef 100, i1 noundef zeroext %2) #8
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %296
  %303 = call ptr @strim(ptr noundef nonnull %10) #8
  %304 = call i32 @kstrtou16(ptr noundef %303, i32 noundef 0, ptr noundef nonnull %11) #8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull %12, ptr noundef nonnull %10, i32 noundef %304) #9
  br label %310

308:                                              ; preds = %302
  %309 = load i16, ptr %11, align 2
  store i16 %309, ptr %299, align 2
  br label %310

310:                                              ; preds = %308, %306, %296
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #8
  %311 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %297, i32 8, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %8, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 0, ptr %9, align 2, !annotation !8
  %312 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull @.str.45, ptr noundef nonnull %8, i32 noundef 100, i1 noundef zeroext %2) #8
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %322, label %314

314:                                              ; preds = %310
  %315 = call ptr @strim(ptr noundef nonnull %8) #8
  %316 = call i32 @kstrtou16(ptr noundef %315, i32 noundef 0, ptr noundef nonnull %9) #8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %314
  %319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef nonnull %12, ptr noundef nonnull %8, i32 noundef %316) #9
  br label %322

320:                                              ; preds = %314
  %321 = load i16, ptr %9, align 2
  store i16 %321, ptr %311, align 2
  br label %322

322:                                              ; preds = %320, %318, %310
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #8
  %323 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %297, i32 7, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %6, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 0, ptr %7, align 2, !annotation !8
  %324 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull @.str.46, ptr noundef nonnull %6, i32 noundef 100, i1 noundef zeroext %2) #8
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %322
  %327 = call ptr @strim(ptr noundef nonnull %6) #8
  %328 = call i32 @kstrtou16(ptr noundef %327, i32 noundef 0, ptr noundef nonnull %7) #8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %326
  %331 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull %12, ptr noundef nonnull %6, i32 noundef %328) #9
  br label %334

332:                                              ; preds = %326
  %333 = load i16, ptr %7, align 2
  store i16 %333, ptr %323, align 2
  br label %334

334:                                              ; preds = %332, %330, %322
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #8
  %335 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %297, i32 9, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %4, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %336 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull @.str.47, ptr noundef nonnull %4, i32 noundef 100, i1 noundef zeroext %2) #8
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %346, label %338

338:                                              ; preds = %334
  %339 = call ptr @strim(ptr noundef nonnull %4) #8
  %340 = call i32 @kstrtou16(ptr noundef %339, i32 noundef 0, ptr noundef nonnull %5) #8
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %338
  %343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull %12, ptr noundef nonnull %4, i32 noundef %340) #9
  br label %346

344:                                              ; preds = %338
  %345 = load i16, ptr %5, align 2
  store i16 %345, ptr %335, align 2
  br label %346

346:                                              ; preds = %344, %342, %334
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #8
  %347 = add nuw nsw i32 %297, 1
  %348 = icmp eq i32 %347, 4
  br i1 %348, label %349, label %296

349:                                              ; preds = %346
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  br label %351

350:                                              ; preds = %293, %293
  call fastcc void @bcm47xx_fill_sprom_path_r4589(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  br label %351

351:                                              ; preds = %350, %349, %293
  call fastcc void @bcm47xx_sprom_fill_auto(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm47xx_fill_sprom_path_r4589(ptr nocapture noundef writeonly %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [100 x i8], align 1
  %5 = alloca i16, align 2
  %6 = alloca [100 x i8], align 1
  %7 = alloca i16, align 2
  %8 = alloca [100 x i8], align 1
  %9 = alloca i16, align 2
  %10 = alloca [100 x i8], align 1
  %11 = alloca i16, align 2
  %12 = alloca [100 x i8], align 1
  %13 = alloca i16, align 2
  %14 = alloca [100 x i8], align 1
  %15 = alloca i16, align 2
  %16 = alloca [100 x i8], align 1
  %17 = alloca i16, align 2
  %18 = alloca [100 x i8], align 1
  %19 = alloca i16, align 2
  %20 = alloca [100 x i8], align 1
  %21 = alloca i16, align 2
  %22 = alloca [100 x i8], align 1
  %23 = alloca i8, align 1
  %24 = alloca [100 x i8], align 1
  %25 = alloca i8, align 1
  %26 = alloca [100 x i8], align 1
  %27 = alloca i8, align 1
  %28 = alloca [100 x i8], align 1
  %29 = alloca i16, align 2
  %30 = alloca [100 x i8], align 1
  %31 = alloca i16, align 2
  %32 = alloca [100 x i8], align 1
  %33 = alloca i16, align 2
  %34 = alloca [100 x i8], align 1
  %35 = alloca i8, align 1
  %36 = alloca [100 x i8], align 1
  %37 = alloca i8, align 1
  %38 = alloca [100 x i8], align 1
  %39 = alloca i8, align 1
  %40 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #8
  store i16 0, ptr %40, align 2, !annotation !8
  br label %41

41:                                               ; preds = %259, %3
  %42 = phi i32 [ 0, %3 ], [ %260, %259 ]
  %43 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42
  %44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %40, i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %42)
  %45 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %38) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %38, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #8
  store i8 0, ptr %39, align 1, !annotation !8
  %46 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.26, ptr noundef nonnull %38, i32 noundef 100, i1 noundef zeroext %2) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = call ptr @strim(ptr noundef nonnull %38) #8
  %50 = call i32 @kstrtou8(ptr noundef %49, i32 noundef 0, ptr noundef nonnull %39) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %40, ptr noundef nonnull %38, i32 noundef %50) #9
  br label %56

54:                                               ; preds = %48
  %55 = load i8, ptr %39, align 1
  store i8 %55, ptr %45, align 1
  br label %56

56:                                               ; preds = %54, %52, %41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %38) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %36) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %36, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #8
  store i8 0, ptr %37, align 1, !annotation !8
  %57 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.27, ptr noundef nonnull %36, i32 noundef 100, i1 noundef zeroext %2) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = call ptr @strim(ptr noundef nonnull %36) #8
  %61 = call i32 @kstrtou8(ptr noundef %60, i32 noundef 0, ptr noundef nonnull %37) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %40, ptr noundef nonnull %36, i32 noundef %61) #9
  br label %67

65:                                               ; preds = %59
  %66 = load i8, ptr %37, align 1
  store i8 %66, ptr %43, align 1
  br label %67

67:                                               ; preds = %65, %63, %56
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %36) #8
  %68 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %34) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %34, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #8
  store i8 0, ptr %35, align 1, !annotation !8
  %69 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.28, ptr noundef nonnull %34, i32 noundef 100, i1 noundef zeroext %2) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = call ptr @strim(ptr noundef nonnull %34) #8
  %73 = call i32 @kstrtou8(ptr noundef %72, i32 noundef 0, ptr noundef nonnull %35) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %40, ptr noundef nonnull %34, i32 noundef %73) #9
  br label %79

77:                                               ; preds = %71
  %78 = load i8, ptr %35, align 1
  store i8 %78, ptr %68, align 1
  br label %79

79:                                               ; preds = %77, %75, %67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %34) #8
  %80 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %32) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %32, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #8
  store i16 0, ptr %33, align 2, !annotation !8
  %81 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.29, ptr noundef nonnull %32, i32 noundef 100, i1 noundef zeroext %2) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = call ptr @strim(ptr noundef nonnull %32) #8
  %85 = call i32 @kstrtou16(ptr noundef %84, i32 noundef 0, ptr noundef nonnull %33) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %40, ptr noundef nonnull %32, i32 noundef %85) #9
  br label %91

89:                                               ; preds = %83
  %90 = load i16, ptr %33, align 2
  store i16 %90, ptr %80, align 2
  br label %91

91:                                               ; preds = %89, %87, %79
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %32) #8
  %92 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %30) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %30, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #8
  store i16 0, ptr %31, align 2, !annotation !8
  %93 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.30, ptr noundef nonnull %30, i32 noundef 100, i1 noundef zeroext %2) #8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = call ptr @strim(ptr noundef nonnull %30) #8
  %97 = call i32 @kstrtou16(ptr noundef %96, i32 noundef 0, ptr noundef nonnull %31) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %40, ptr noundef nonnull %30, i32 noundef %97) #9
  br label %103

101:                                              ; preds = %95
  %102 = load i16, ptr %31, align 2
  store i16 %102, ptr %92, align 2
  br label %103

103:                                              ; preds = %101, %99, %91
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %30) #8
  %104 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 6, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %28) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %28, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #8
  store i16 0, ptr %29, align 2, !annotation !8
  %105 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.31, ptr noundef nonnull %28, i32 noundef 100, i1 noundef zeroext %2) #8
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = call ptr @strim(ptr noundef nonnull %28) #8
  %109 = call i32 @kstrtou16(ptr noundef %108, i32 noundef 0, ptr noundef nonnull %29) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %40, ptr noundef nonnull %28, i32 noundef %109) #9
  br label %115

113:                                              ; preds = %107
  %114 = load i16, ptr %29, align 2
  store i16 %114, ptr %104, align 2
  br label %115

115:                                              ; preds = %113, %111, %103
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %28) #8
  %116 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %26) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %26, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #8
  store i8 0, ptr %27, align 1, !annotation !8
  %117 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.32, ptr noundef nonnull %26, i32 noundef 100, i1 noundef zeroext %2) #8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = call ptr @strim(ptr noundef nonnull %26) #8
  %121 = call i32 @kstrtou8(ptr noundef %120, i32 noundef 0, ptr noundef nonnull %27) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %40, ptr noundef nonnull %26, i32 noundef %121) #9
  br label %127

125:                                              ; preds = %119
  %126 = load i8, ptr %27, align 1
  store i8 %126, ptr %116, align 1
  br label %127

127:                                              ; preds = %125, %123, %115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %26) #8
  %128 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %24) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %24, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #8
  store i8 0, ptr %25, align 1, !annotation !8
  %129 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.33, ptr noundef nonnull %24, i32 noundef 100, i1 noundef zeroext %2) #8
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = call ptr @strim(ptr noundef nonnull %24) #8
  %133 = call i32 @kstrtou8(ptr noundef %132, i32 noundef 0, ptr noundef nonnull %25) #8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %40, ptr noundef nonnull %24, i32 noundef %133) #9
  br label %139

137:                                              ; preds = %131
  %138 = load i8, ptr %25, align 1
  store i8 %138, ptr %128, align 1
  br label %139

139:                                              ; preds = %137, %135, %127
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %24) #8
  %140 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %22) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %22, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #8
  store i8 0, ptr %23, align 1, !annotation !8
  %141 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.34, ptr noundef nonnull %22, i32 noundef 100, i1 noundef zeroext %2) #8
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = call ptr @strim(ptr noundef nonnull %22) #8
  %145 = call i32 @kstrtou8(ptr noundef %144, i32 noundef 0, ptr noundef nonnull %23) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %40, ptr noundef nonnull %22, i32 noundef %145) #9
  br label %151

149:                                              ; preds = %143
  %150 = load i8, ptr %23, align 1
  store i8 %150, ptr %140, align 1
  br label %151

151:                                              ; preds = %149, %147, %139
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %22) #8
  %152 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %20) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %20, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #8
  store i16 0, ptr %21, align 2, !annotation !8
  %153 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.35, ptr noundef nonnull %20, i32 noundef 100, i1 noundef zeroext %2) #8
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = call ptr @strim(ptr noundef nonnull %20) #8
  %157 = call i32 @kstrtou16(ptr noundef %156, i32 noundef 0, ptr noundef nonnull %21) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %40, ptr noundef nonnull %20, i32 noundef %157) #9
  br label %163

161:                                              ; preds = %155
  %162 = load i16, ptr %21, align 2
  store i16 %162, ptr %152, align 2
  br label %163

163:                                              ; preds = %161, %159, %151
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %20) #8
  %164 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 8, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %18) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %18, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #8
  store i16 0, ptr %19, align 2, !annotation !8
  %165 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.36, ptr noundef nonnull %18, i32 noundef 100, i1 noundef zeroext %2) #8
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = call ptr @strim(ptr noundef nonnull %18) #8
  %169 = call i32 @kstrtou16(ptr noundef %168, i32 noundef 0, ptr noundef nonnull %19) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %40, ptr noundef nonnull %18, i32 noundef %169) #9
  br label %175

173:                                              ; preds = %167
  %174 = load i16, ptr %19, align 2
  store i16 %174, ptr %164, align 2
  br label %175

175:                                              ; preds = %173, %171, %163
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %18) #8
  %176 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 8, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %16) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %16, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #8
  store i16 0, ptr %17, align 2, !annotation !8
  %177 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.37, ptr noundef nonnull %16, i32 noundef 100, i1 noundef zeroext %2) #8
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = call ptr @strim(ptr noundef nonnull %16) #8
  %181 = call i32 @kstrtou16(ptr noundef %180, i32 noundef 0, ptr noundef nonnull %17) #8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull %40, ptr noundef nonnull %16, i32 noundef %181) #9
  br label %187

185:                                              ; preds = %179
  %186 = load i16, ptr %17, align 2
  store i16 %186, ptr %176, align 2
  br label %187

187:                                              ; preds = %185, %183, %175
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %16) #8
  %188 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %14) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %14, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #8
  store i16 0, ptr %15, align 2, !annotation !8
  %189 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.38, ptr noundef nonnull %14, i32 noundef 100, i1 noundef zeroext %2) #8
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %187
  %192 = call ptr @strim(ptr noundef nonnull %14) #8
  %193 = call i32 @kstrtou16(ptr noundef %192, i32 noundef 0, ptr noundef nonnull %15) #8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %40, ptr noundef nonnull %14, i32 noundef %193) #9
  br label %199

197:                                              ; preds = %191
  %198 = load i16, ptr %15, align 2
  store i16 %198, ptr %188, align 2
  br label %199

199:                                              ; preds = %197, %195, %187
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %14) #8
  %200 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 7, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %12) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %12, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i16 0, ptr %13, align 2, !annotation !8
  %201 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.39, ptr noundef nonnull %12, i32 noundef 100, i1 noundef zeroext %2) #8
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = call ptr @strim(ptr noundef nonnull %12) #8
  %205 = call i32 @kstrtou16(ptr noundef %204, i32 noundef 0, ptr noundef nonnull %13) #8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %203
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull %40, ptr noundef nonnull %12, i32 noundef %205) #9
  br label %211

209:                                              ; preds = %203
  %210 = load i16, ptr %13, align 2
  store i16 %210, ptr %200, align 2
  br label %211

211:                                              ; preds = %209, %207, %199
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %12) #8
  %212 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 7, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %10, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i16 0, ptr %11, align 2, !annotation !8
  %213 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.40, ptr noundef nonnull %10, i32 noundef 100, i1 noundef zeroext %2) #8
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = call ptr @strim(ptr noundef nonnull %10) #8
  %217 = call i32 @kstrtou16(ptr noundef %216, i32 noundef 0, ptr noundef nonnull %11) #8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull %40, ptr noundef nonnull %10, i32 noundef %217) #9
  br label %223

221:                                              ; preds = %215
  %222 = load i16, ptr %11, align 2
  store i16 %222, ptr %212, align 2
  br label %223

223:                                              ; preds = %221, %219, %211
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #8
  %224 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %8, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 0, ptr %9, align 2, !annotation !8
  %225 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.41, ptr noundef nonnull %8, i32 noundef 100, i1 noundef zeroext %2) #8
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %223
  %228 = call ptr @strim(ptr noundef nonnull %8) #8
  %229 = call i32 @kstrtou16(ptr noundef %228, i32 noundef 0, ptr noundef nonnull %9) #8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %40, ptr noundef nonnull %8, i32 noundef %229) #9
  br label %235

233:                                              ; preds = %227
  %234 = load i16, ptr %9, align 2
  store i16 %234, ptr %224, align 2
  br label %235

235:                                              ; preds = %233, %231, %223
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #8
  %236 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 9, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %6, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 0, ptr %7, align 2, !annotation !8
  %237 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.42, ptr noundef nonnull %6, i32 noundef 100, i1 noundef zeroext %2) #8
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %235
  %240 = call ptr @strim(ptr noundef nonnull %6) #8
  %241 = call i32 @kstrtou16(ptr noundef %240, i32 noundef 0, ptr noundef nonnull %7) #8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %40, ptr noundef nonnull %6, i32 noundef %241) #9
  br label %247

245:                                              ; preds = %239
  %246 = load i16, ptr %7, align 2
  store i16 %246, ptr %236, align 2
  br label %247

247:                                              ; preds = %245, %243, %235
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #8
  %248 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 74, i32 %42, i32 9, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %4, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %249 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull @.str.43, ptr noundef nonnull %4, i32 noundef 100, i1 noundef zeroext %2) #8
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %247
  %252 = call ptr @strim(ptr noundef nonnull %4) #8
  %253 = call i32 @kstrtou16(ptr noundef %252, i32 noundef 0, ptr noundef nonnull %5) #8
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %40, ptr noundef nonnull %4, i32 noundef %253) #9
  br label %259

257:                                              ; preds = %251
  %258 = load i16, ptr %5, align 2
  store i16 %258, ptr %248, align 2
  br label %259

259:                                              ; preds = %257, %255, %247
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #8
  %260 = add nuw nsw i32 %42, 1
  %261 = icmp eq i32 %260, 4
  br i1 %261, label %262, label %41

262:                                              ; preds = %259
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm47xx_sprom_fill_auto(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [40 x i8], align 1
  %5 = alloca [40 x i8], align 1
  %6 = alloca [100 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca [100 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca [100 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca [100 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca [100 x i8], align 1
  %15 = alloca i8, align 1
  %16 = alloca [100 x i8], align 1
  %17 = alloca i8, align 1
  %18 = alloca [100 x i8], align 1
  %19 = alloca i8, align 1
  %20 = alloca [100 x i8], align 1
  %21 = alloca i8, align 1
  %22 = alloca [100 x i8], align 1
  %23 = alloca i8, align 1
  %24 = alloca [100 x i8], align 1
  %25 = alloca i8, align 1
  %26 = alloca [100 x i8], align 1
  %27 = alloca i8, align 1
  %28 = alloca [100 x i8], align 1
  %29 = alloca i8, align 1
  %30 = alloca [100 x i8], align 1
  %31 = alloca i8, align 1
  %32 = alloca [100 x i8], align 1
  %33 = alloca i8, align 1
  %34 = alloca [100 x i8], align 1
  %35 = alloca i8, align 1
  %36 = alloca [100 x i8], align 1
  %37 = alloca i8, align 1
  %38 = alloca [100 x i8], align 1
  %39 = alloca i8, align 1
  %40 = alloca [100 x i8], align 1
  %41 = alloca i8, align 1
  %42 = alloca [100 x i8], align 1
  %43 = alloca i8, align 1
  %44 = alloca [100 x i8], align 1
  %45 = alloca i8, align 1
  %46 = alloca [100 x i8], align 1
  %47 = alloca i8, align 1
  %48 = alloca [100 x i8], align 1
  %49 = alloca i8, align 1
  %50 = alloca [100 x i8], align 1
  %51 = alloca i8, align 1
  %52 = alloca [100 x i8], align 1
  %53 = alloca i8, align 1
  %54 = alloca [100 x i8], align 1
  %55 = alloca i8, align 1
  %56 = alloca [100 x i8], align 1
  %57 = alloca i8, align 1
  %58 = alloca [100 x i8], align 1
  %59 = alloca i8, align 1
  %60 = alloca [100 x i8], align 1
  %61 = alloca i8, align 1
  %62 = alloca [100 x i8], align 1
  %63 = alloca i8, align 1
  %64 = alloca [100 x i8], align 1
  %65 = alloca i8, align 1
  %66 = alloca [100 x i8], align 1
  %67 = alloca i8, align 1
  %68 = alloca [100 x i8], align 1
  %69 = alloca i8, align 1
  %70 = alloca [100 x i8], align 1
  %71 = alloca i8, align 1
  %72 = alloca [100 x i8], align 1
  %73 = alloca i16, align 2
  %74 = alloca [100 x i8], align 1
  %75 = alloca i16, align 2
  %76 = alloca [100 x i8], align 1
  %77 = alloca i32, align 4
  %78 = alloca [100 x i8], align 1
  %79 = alloca i32, align 4
  %80 = alloca [100 x i8], align 1
  %81 = alloca i32, align 4
  %82 = alloca [100 x i8], align 1
  %83 = alloca i32, align 4
  %84 = alloca [100 x i8], align 1
  %85 = alloca i32, align 4
  %86 = alloca [100 x i8], align 1
  %87 = alloca i32, align 4
  %88 = alloca [100 x i8], align 1
  %89 = alloca i32, align 4
  %90 = alloca [100 x i8], align 1
  %91 = alloca i32, align 4
  %92 = alloca [100 x i8], align 1
  %93 = alloca i32, align 4
  %94 = alloca [100 x i8], align 1
  %95 = alloca i32, align 4
  %96 = alloca [100 x i8], align 1
  %97 = alloca i32, align 4
  %98 = alloca [100 x i8], align 1
  %99 = alloca i32, align 4
  %100 = alloca [100 x i8], align 1
  %101 = alloca i32, align 4
  %102 = alloca [100 x i8], align 1
  %103 = alloca i32, align 4
  %104 = alloca [100 x i8], align 1
  %105 = alloca i32, align 4
  %106 = alloca [100 x i8], align 1
  %107 = alloca i32, align 4
  %108 = alloca [100 x i8], align 1
  %109 = alloca i32, align 4
  %110 = alloca [100 x i8], align 1
  %111 = alloca i32, align 4
  %112 = alloca [100 x i8], align 1
  %113 = alloca i32, align 4
  %114 = alloca [100 x i8], align 1
  %115 = alloca i32, align 4
  %116 = alloca [100 x i8], align 1
  %117 = alloca i16, align 2
  %118 = alloca [100 x i8], align 1
  %119 = alloca i16, align 2
  %120 = alloca [100 x i8], align 1
  %121 = alloca i16, align 2
  %122 = alloca [100 x i8], align 1
  %123 = alloca i16, align 2
  %124 = alloca [100 x i8], align 1
  %125 = alloca i16, align 2
  %126 = alloca [100 x i8], align 1
  %127 = alloca i16, align 2
  %128 = alloca [100 x i8], align 1
  %129 = alloca i16, align 2
  %130 = alloca [100 x i8], align 1
  %131 = alloca i16, align 2
  %132 = alloca [100 x i8], align 1
  %133 = alloca i16, align 2
  %134 = alloca [100 x i8], align 1
  %135 = alloca i16, align 2
  %136 = alloca [100 x i8], align 1
  %137 = alloca i16, align 2
  %138 = alloca [100 x i8], align 1
  %139 = alloca i16, align 2
  %140 = alloca [100 x i8], align 1
  %141 = alloca i16, align 2
  %142 = alloca [100 x i8], align 1
  %143 = alloca i16, align 2
  %144 = alloca [100 x i8], align 1
  %145 = alloca i16, align 2
  %146 = alloca [100 x i8], align 1
  %147 = alloca i16, align 2
  %148 = alloca [100 x i8], align 1
  %149 = alloca i16, align 2
  %150 = alloca [100 x i8], align 1
  %151 = alloca i16, align 2
  %152 = alloca [100 x i8], align 1
  %153 = alloca i16, align 2
  %154 = alloca [100 x i8], align 1
  %155 = alloca i16, align 2
  %156 = alloca [100 x i8], align 1
  %157 = alloca i16, align 2
  %158 = alloca [100 x i8], align 1
  %159 = alloca i16, align 2
  %160 = alloca [100 x i8], align 1
  %161 = alloca i16, align 2
  %162 = alloca [100 x i8], align 1
  %163 = alloca i16, align 2
  %164 = alloca [100 x i8], align 1
  %165 = alloca i16, align 2
  %166 = alloca [100 x i8], align 1
  %167 = alloca i16, align 2
  %168 = alloca [100 x i8], align 1
  %169 = alloca i16, align 2
  %170 = alloca [100 x i8], align 1
  %171 = alloca i16, align 2
  %172 = alloca [100 x i8], align 1
  %173 = alloca i16, align 2
  %174 = alloca [100 x i8], align 1
  %175 = alloca i16, align 2
  %176 = alloca [100 x i8], align 1
  %177 = alloca i16, align 2
  %178 = alloca [100 x i8], align 1
  %179 = alloca i16, align 2
  %180 = alloca [100 x i8], align 1
  %181 = alloca i16, align 2
  %182 = alloca [100 x i8], align 1
  %183 = alloca i16, align 2
  %184 = alloca [100 x i8], align 1
  %185 = alloca i16, align 2
  %186 = alloca [100 x i8], align 1
  %187 = alloca i16, align 2
  %188 = alloca [100 x i8], align 1
  %189 = alloca i16, align 2
  %190 = alloca [100 x i8], align 1
  %191 = alloca i16, align 2
  %192 = alloca [100 x i8], align 1
  %193 = alloca i32, align 4
  %194 = alloca [100 x i8], align 1
  %195 = alloca i32, align 4
  %196 = alloca [100 x i8], align 1
  %197 = alloca i32, align 4
  %198 = alloca [100 x i8], align 1
  %199 = alloca i32, align 4
  %200 = alloca [100 x i8], align 1
  %201 = alloca i16, align 2
  %202 = alloca [100 x i8], align 1
  %203 = alloca i8, align 1
  %204 = alloca [100 x i8], align 1
  %205 = alloca i8, align 1
  %206 = alloca [100 x i8], align 1
  %207 = alloca i8, align 1
  %208 = alloca [100 x i8], align 1
  %209 = alloca i8, align 1
  %210 = alloca [100 x i8], align 1
  %211 = alloca i8, align 1
  %212 = alloca [100 x i8], align 1
  %213 = alloca i8, align 1
  %214 = alloca [100 x i8], align 1
  %215 = alloca i8, align 1
  %216 = alloca [100 x i8], align 1
  %217 = alloca i8, align 1
  %218 = alloca [100 x i8], align 1
  %219 = alloca i8, align 1
  %220 = alloca [100 x i8], align 1
  %221 = alloca i8, align 1
  %222 = alloca [100 x i8], align 1
  %223 = alloca i8, align 1
  %224 = alloca [100 x i8], align 1
  %225 = alloca i8, align 1
  %226 = alloca [100 x i8], align 1
  %227 = alloca i8, align 1
  %228 = alloca [100 x i8], align 1
  %229 = alloca i8, align 1
  %230 = alloca [100 x i8], align 1
  %231 = alloca i16, align 2
  %232 = alloca [100 x i8], align 1
  %233 = alloca i8, align 1
  %234 = alloca [100 x i8], align 1
  %235 = alloca i8, align 1
  %236 = alloca [100 x i8], align 1
  %237 = alloca i8, align 1
  %238 = alloca [100 x i8], align 1
  %239 = alloca i8, align 1
  %240 = alloca [100 x i8], align 1
  %241 = alloca i8, align 1
  %242 = alloca [100 x i8], align 1
  %243 = alloca i8, align 1
  %244 = alloca [100 x i8], align 1
  %245 = alloca i8, align 1
  %246 = alloca [100 x i8], align 1
  %247 = alloca i8, align 1
  %248 = alloca [100 x i8], align 1
  %249 = alloca i8, align 1
  %250 = alloca [100 x i8], align 1
  %251 = alloca i8, align 1
  %252 = alloca [100 x i8], align 1
  %253 = alloca i8, align 1
  %254 = alloca [100 x i8], align 1
  %255 = alloca i8, align 1
  %256 = alloca [100 x i8], align 1
  %257 = alloca i8, align 1
  %258 = alloca [100 x i8], align 1
  %259 = alloca i8, align 1
  %260 = alloca [100 x i8], align 1
  %261 = alloca i8, align 1
  %262 = alloca [100 x i8], align 1
  %263 = alloca i8, align 1
  %264 = alloca [100 x i8], align 1
  %265 = alloca i8, align 1
  %266 = alloca [100 x i8], align 1
  %267 = alloca i8, align 1
  %268 = alloca [100 x i8], align 1
  %269 = alloca i8, align 1
  %270 = alloca [100 x i8], align 1
  %271 = alloca i8, align 1
  %272 = alloca [100 x i8], align 1
  %273 = alloca i8, align 1
  %274 = alloca [100 x i8], align 1
  %275 = alloca i8, align 1
  %276 = alloca [100 x i8], align 1
  %277 = alloca i8, align 1
  %278 = alloca [100 x i8], align 1
  %279 = alloca i8, align 1
  %280 = alloca [100 x i8], align 1
  %281 = alloca i8, align 1
  %282 = alloca [100 x i8], align 1
  %283 = alloca i8, align 1
  %284 = alloca [100 x i8], align 1
  %285 = alloca i8, align 1
  %286 = alloca [100 x i8], align 1
  %287 = alloca i8, align 1
  %288 = alloca [100 x i8], align 1
  %289 = alloca i8, align 1
  %290 = alloca [100 x i8], align 1
  %291 = alloca i8, align 1
  %292 = alloca [100 x i8], align 1
  %293 = alloca i8, align 1
  %294 = alloca [100 x i8], align 1
  %295 = alloca i8, align 1
  %296 = alloca [100 x i8], align 1
  %297 = alloca i8, align 1
  %298 = alloca [100 x i8], align 1
  %299 = alloca i8, align 1
  %300 = alloca [100 x i8], align 1
  %301 = alloca i8, align 1
  %302 = alloca [100 x i8], align 1
  %303 = alloca i8, align 1
  %304 = alloca [100 x i8], align 1
  %305 = alloca i8, align 1
  %306 = alloca [100 x i8], align 1
  %307 = alloca i8, align 1
  %308 = alloca [100 x i8], align 1
  %309 = alloca i8, align 1
  %310 = alloca [100 x i8], align 1
  %311 = alloca i8, align 1
  %312 = alloca [100 x i8], align 1
  %313 = alloca i8, align 1
  %314 = alloca [100 x i8], align 1
  %315 = alloca i8, align 1
  %316 = alloca [100 x i8], align 1
  %317 = alloca i8, align 1
  %318 = alloca [100 x i8], align 1
  %319 = alloca i8, align 1
  %320 = alloca [100 x i8], align 1
  %321 = alloca i8, align 1
  %322 = alloca [100 x i8], align 1
  %323 = alloca i8, align 1
  %324 = alloca [100 x i8], align 1
  %325 = alloca i8, align 1
  %326 = alloca [100 x i8], align 1
  %327 = alloca i8, align 1
  %328 = alloca [100 x i8], align 1
  %329 = alloca i8, align 1
  %330 = alloca [100 x i8], align 1
  %331 = alloca i16, align 2
  %332 = alloca [100 x i8], align 1
  %333 = alloca i16, align 2
  %334 = alloca [100 x i8], align 1
  %335 = alloca i16, align 2
  %336 = alloca [100 x i8], align 1
  %337 = alloca i16, align 2
  %338 = alloca [100 x i8], align 1
  %339 = alloca i16, align 2
  %340 = alloca [100 x i8], align 1
  %341 = alloca i16, align 2
  %342 = alloca [100 x i8], align 1
  %343 = alloca i16, align 2
  %344 = alloca [100 x i8], align 1
  %345 = alloca i16, align 2
  %346 = alloca [100 x i8], align 1
  %347 = alloca i16, align 2
  %348 = alloca [100 x i8], align 1
  %349 = alloca i8, align 1
  %350 = alloca [100 x i8], align 1
  %351 = alloca i8, align 1
  %352 = alloca [100 x i8], align 1
  %353 = alloca i8, align 1
  %354 = alloca [100 x i8], align 1
  %355 = alloca i8, align 1
  %356 = alloca [100 x i8], align 1
  %357 = alloca i8, align 1
  %358 = alloca [100 x i8], align 1
  %359 = alloca i8, align 1
  %360 = alloca [100 x i8], align 1
  %361 = alloca i8, align 1
  %362 = alloca [100 x i8], align 1
  %363 = alloca i8, align 1
  %364 = alloca [100 x i8], align 1
  %365 = alloca i8, align 1
  %366 = alloca [100 x i8], align 1
  %367 = alloca i16, align 2
  %368 = alloca [100 x i8], align 1
  %369 = alloca i16, align 2
  %370 = alloca [100 x i8], align 1
  %371 = alloca i16, align 2
  %372 = alloca [100 x i8], align 1
  %373 = alloca i8, align 1
  %374 = alloca [100 x i8], align 1
  %375 = alloca i8, align 1
  %376 = alloca [100 x i8], align 1
  %377 = alloca i8, align 1
  %378 = alloca [100 x i8], align 1
  %379 = alloca i8, align 1
  %380 = alloca [100 x i8], align 1
  %381 = alloca i8, align 1
  %382 = alloca [100 x i8], align 1
  %383 = alloca i8, align 1
  %384 = alloca [100 x i8], align 1
  %385 = alloca i16, align 2
  %386 = alloca [100 x i8], align 1
  %387 = alloca i16, align 2
  %388 = alloca [100 x i8], align 1
  %389 = alloca i16, align 2
  %390 = alloca [100 x i8], align 1
  %391 = alloca i32, align 4
  %392 = alloca [100 x i8], align 1
  %393 = alloca i32, align 4
  %394 = alloca [100 x i8], align 1
  %395 = alloca i32, align 4
  %396 = alloca [100 x i8], align 1
  %397 = alloca i16, align 2
  %398 = alloca [100 x i8], align 1
  %399 = alloca i16, align 2
  %400 = load i8, ptr %0, align 4
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %645, label %402

402:                                              ; preds = %3
  %403 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %398) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %398, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %399) #8
  store i16 0, ptr %399, align 2, !annotation !8
  %404 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull %398, i32 noundef 100, i1 noundef zeroext %2) #8
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %414, label %406

406:                                              ; preds = %402
  %407 = call ptr @strim(ptr noundef nonnull %398) #8
  %408 = call i32 @kstrtou16(ptr noundef %407, i32 noundef 0, ptr noundef nonnull %399) #8
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %406
  %411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef nonnull %398, i32 noundef %408) #9
  br label %414

412:                                              ; preds = %406
  %413 = load i16, ptr %399, align 2
  store i16 %413, ptr %403, align 2
  br label %414

414:                                              ; preds = %412, %410, %402
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %399) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %398) #8
  %415 = load i8, ptr %0, align 4
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %645, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %396) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %396, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %397) #8
  store i16 0, ptr %397, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %5, i8 0, i32 40, i1 false) #8, !annotation !8
  %419 = icmp eq ptr %1, null
  br i1 %419, label %424, label %420

420:                                              ; preds = %417
  %421 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef nonnull %1, ptr noundef nonnull @.str.49) #8
  %422 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %5, ptr noundef nonnull %396, i32 noundef 100) #8
  %423 = icmp eq i32 %422, -2
  br i1 %423, label %424, label %426

424:                                              ; preds = %420, %417
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 1 dereferenceable(9) @.str.49, i32 9, i1 false)
  %425 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %5, ptr noundef nonnull %396, i32 noundef 100) #8
  br label %426

426:                                              ; preds = %424, %420
  %427 = phi i32 [ %422, %420 ], [ %425, %424 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %437, label %429

429:                                              ; preds = %426
  %430 = call ptr @strim(ptr noundef nonnull %396) #8
  %431 = call i32 @kstrtou16(ptr noundef %430, i32 noundef 0, ptr noundef nonnull %397) #8
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %435, label %433

433:                                              ; preds = %429
  %434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef null, ptr noundef nonnull %396, i32 noundef %431) #9
  br label %437

435:                                              ; preds = %429
  %436 = load i16, ptr %397, align 2
  store i16 %436, ptr %418, align 2
  br label %437

437:                                              ; preds = %435, %433, %426
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %397) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %396) #8
  %438 = load i8, ptr %0, align 4
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %645, label %440

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 67
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %394) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %394, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %395) #8
  store i32 0, ptr %395, align 4, !annotation !8
  %442 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull %394, i32 noundef 100, i1 noundef zeroext %2) #8
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %452, label %444

444:                                              ; preds = %440
  %445 = call ptr @strim(ptr noundef nonnull %394) #8
  %446 = call i32 @kstrtouint(ptr noundef %445, i32 noundef 0, ptr noundef nonnull %395) #8
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %444
  %449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef nonnull %394, i32 noundef %446) #9
  br label %452

450:                                              ; preds = %444
  %451 = load i32, ptr %395, align 4
  store i32 %451, ptr %441, align 4
  br label %452

452:                                              ; preds = %450, %448, %440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %395) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %394) #8
  %453 = load i8, ptr %0, align 4
  %454 = icmp ult i8 %453, 4
  br i1 %454, label %484, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 68
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %392) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %392, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %393) #8
  store i32 0, ptr %393, align 4, !annotation !8
  %457 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull %392, i32 noundef 100, i1 noundef zeroext %2) #8
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %467, label %459

459:                                              ; preds = %455
  %460 = call ptr @strim(ptr noundef nonnull %392) #8
  %461 = call i32 @kstrtouint(ptr noundef %460, i32 noundef 0, ptr noundef nonnull %393) #8
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %465, label %463

463:                                              ; preds = %459
  %464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef nonnull %392, i32 noundef %461) #9
  br label %467

465:                                              ; preds = %459
  %466 = load i32, ptr %393, align 4
  store i32 %466, ptr %456, align 4
  br label %467

467:                                              ; preds = %465, %463, %455
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %393) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %392) #8
  %468 = load i8, ptr %0, align 4
  %469 = icmp ult i8 %468, 11
  br i1 %469, label %484, label %470

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 69
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %390) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %390, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %391) #8
  store i32 0, ptr %391, align 4, !annotation !8
  %472 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull %390, i32 noundef 100, i1 noundef zeroext %2) #8
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %482, label %474

474:                                              ; preds = %470
  %475 = call ptr @strim(ptr noundef nonnull %390) #8
  %476 = call i32 @kstrtouint(ptr noundef %475, i32 noundef 0, ptr noundef nonnull %391) #8
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %480, label %478

478:                                              ; preds = %474
  %479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef nonnull %390, i32 noundef %476) #9
  br label %482

480:                                              ; preds = %474
  %481 = load i32, ptr %391, align 4
  store i32 %481, ptr %471, align 4
  br label %482

482:                                              ; preds = %480, %478, %470
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %391) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %390) #8
  %483 = load i8, ptr %0, align 4
  br label %484

484:                                              ; preds = %482, %467, %452
  %485 = phi i8 [ %468, %467 ], [ %453, %452 ], [ %483, %482 ]
  %486 = icmp eq i8 %485, 1
  br i1 %486, label %487, label %501

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %388) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %388, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %389) #8
  store i16 0, ptr %389, align 2, !annotation !8
  %489 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull %388, i32 noundef 100, i1 noundef zeroext %2) #8
  %490 = icmp slt i32 %489, 0
  br i1 %490, label %499, label %491

491:                                              ; preds = %487
  %492 = call ptr @strim(ptr noundef nonnull %388) #8
  %493 = call i32 @kstrtou16(ptr noundef %492, i32 noundef 0, ptr noundef nonnull %389) #8
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %497, label %495

495:                                              ; preds = %491
  %496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef nonnull %388, i32 noundef %493) #9
  br label %499

497:                                              ; preds = %491
  %498 = load i16, ptr %389, align 2
  store i16 %498, ptr %488, align 2
  br label %499

499:                                              ; preds = %497, %495, %487
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %389) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %388) #8
  %500 = load i8, ptr %0, align 4
  br label %501

501:                                              ; preds = %499, %484
  %502 = phi i8 [ %500, %499 ], [ %485, %484 ]
  %503 = icmp ult i8 %502, 2
  br i1 %503, label %526, label %504

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %386) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %386, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %387) #8
  store i16 0, ptr %387, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %4, i8 0, i32 40, i1 false) #8, !annotation !8
  %506 = icmp eq ptr %1, null
  br i1 %506, label %511, label %507

507:                                              ; preds = %504
  %508 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef nonnull %1, ptr noundef nonnull @.str.51) #8
  %509 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %4, ptr noundef nonnull %386, i32 noundef 100) #8
  %510 = icmp eq i32 %509, -2
  br i1 %510, label %511, label %513

511:                                              ; preds = %507, %504
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(10) @.str.51, i32 10, i1 false)
  %512 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %4, ptr noundef nonnull %386, i32 noundef 100) #8
  br label %513

513:                                              ; preds = %511, %507
  %514 = phi i32 [ %509, %507 ], [ %512, %511 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %524, label %516

516:                                              ; preds = %513
  %517 = call ptr @strim(ptr noundef nonnull %386) #8
  %518 = call i32 @kstrtou16(ptr noundef %517, i32 noundef 0, ptr noundef nonnull %387) #8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %516
  %521 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef null, ptr noundef nonnull %386, i32 noundef %518) #9
  br label %524

522:                                              ; preds = %516
  %523 = load i16, ptr %387, align 2
  store i16 %523, ptr %505, align 2
  br label %524

524:                                              ; preds = %522, %520, %513
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %387) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %386) #8
  %525 = load i8, ptr %0, align 4
  br label %526

526:                                              ; preds = %524, %501
  %527 = phi i8 [ %525, %524 ], [ %502, %501 ]
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %645, label %529

529:                                              ; preds = %526
  %530 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %384) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %384, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %385) #8
  store i16 0, ptr %385, align 2, !annotation !8
  %531 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull %384, i32 noundef 100, i1 noundef zeroext %2) #8
  %532 = icmp slt i32 %531, 0
  br i1 %532, label %541, label %533

533:                                              ; preds = %529
  %534 = call ptr @strim(ptr noundef nonnull %384) #8
  %535 = call i32 @kstrtou16(ptr noundef %534, i32 noundef 0, ptr noundef nonnull %385) #8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %539, label %537

537:                                              ; preds = %533
  %538 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef null, ptr noundef nonnull %384, i32 noundef %535) #9
  br label %541

539:                                              ; preds = %533
  %540 = load i16, ptr %385, align 2
  store i16 %540, ptr %530, align 2
  br label %541

541:                                              ; preds = %539, %537, %529
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %385) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %384) #8
  %542 = load i8, ptr %0, align 4
  %543 = icmp eq i8 %542, 1
  br i1 %543, label %544, label %558

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %382) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %382, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %383) #8
  store i8 0, ptr %383, align 1, !annotation !8
  %546 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull %382, i32 noundef 100, i1 noundef zeroext %2) #8
  %547 = icmp slt i32 %546, 0
  br i1 %547, label %556, label %548

548:                                              ; preds = %544
  %549 = call ptr @strim(ptr noundef nonnull %382) #8
  %550 = call i32 @kstrtou8(ptr noundef %549, i32 noundef 0, ptr noundef nonnull %383) #8
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %554, label %552

552:                                              ; preds = %548
  %553 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef nonnull %382, i32 noundef %550) #9
  br label %556

554:                                              ; preds = %548
  %555 = load i8, ptr %383, align 1
  store i8 %555, ptr %545, align 1
  br label %556

556:                                              ; preds = %554, %552, %544
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %383) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %382) #8
  %557 = load i8, ptr %0, align 4
  br label %558

558:                                              ; preds = %556, %541
  %559 = phi i8 [ %557, %556 ], [ %542, %541 ]
  %560 = icmp ult i8 %559, 3
  br i1 %560, label %575, label %561

561:                                              ; preds = %558
  %562 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 92
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %380) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %380, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %381) #8
  store i8 0, ptr %381, align 1, !annotation !8
  %563 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull %380, i32 noundef 100, i1 noundef zeroext %2) #8
  %564 = icmp slt i32 %563, 0
  br i1 %564, label %573, label %565

565:                                              ; preds = %561
  %566 = call ptr @strim(ptr noundef nonnull %380) #8
  %567 = call i32 @kstrtou8(ptr noundef %566, i32 noundef 0, ptr noundef nonnull %381) #8
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %571, label %569

569:                                              ; preds = %565
  %570 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef nonnull %380, i32 noundef %567) #9
  br label %573

571:                                              ; preds = %565
  %572 = load i8, ptr %381, align 1
  store i8 %572, ptr %562, align 1
  br label %573

573:                                              ; preds = %571, %569, %561
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %381) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %380) #8
  %574 = load i8, ptr %0, align 4
  br label %575

575:                                              ; preds = %573, %558
  %576 = phi i8 [ %574, %573 ], [ %559, %558 ]
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %645, label %578

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 34
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %378) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %378, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %379) #8
  store i8 0, ptr %379, align 1, !annotation !8
  %580 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull %378, i32 noundef 100, i1 noundef zeroext %2) #8
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %592, label %582

582:                                              ; preds = %578
  %583 = call ptr @strim(ptr noundef nonnull %378) #8
  %584 = call i32 @kstrtou8(ptr noundef %583, i32 noundef 0, ptr noundef nonnull %379) #8
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %588, label %586

586:                                              ; preds = %582
  %587 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef null, ptr noundef nonnull %378, i32 noundef %584) #9
  br label %592

588:                                              ; preds = %582
  %589 = load i8, ptr %379, align 1
  %590 = icmp eq i8 %589, -1
  br i1 %590, label %592, label %591

591:                                              ; preds = %588
  store i8 %589, ptr %579, align 1
  br label %592

592:                                              ; preds = %591, %588, %586, %578
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %379) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %378) #8
  %593 = load i8, ptr %0, align 4
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %645, label %595

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %376) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %376, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %377) #8
  store i8 0, ptr %377, align 1, !annotation !8
  %597 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull %376, i32 noundef 100, i1 noundef zeroext %2) #8
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %609, label %599

599:                                              ; preds = %595
  %600 = call ptr @strim(ptr noundef nonnull %376) #8
  %601 = call i32 @kstrtou8(ptr noundef %600, i32 noundef 0, ptr noundef nonnull %377) #8
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %599
  %604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef nonnull %376, i32 noundef %601) #9
  br label %609

605:                                              ; preds = %599
  %606 = load i8, ptr %377, align 1
  %607 = icmp eq i8 %606, -1
  br i1 %607, label %609, label %608

608:                                              ; preds = %605
  store i8 %606, ptr %596, align 1
  br label %609

609:                                              ; preds = %608, %605, %603, %595
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %377) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %376) #8
  %610 = load i8, ptr %0, align 4
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %645, label %612

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %374) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %374, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %375) #8
  store i8 0, ptr %375, align 1, !annotation !8
  %614 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull %374, i32 noundef 100, i1 noundef zeroext %2) #8
  %615 = icmp slt i32 %614, 0
  br i1 %615, label %626, label %616

616:                                              ; preds = %612
  %617 = call ptr @strim(ptr noundef nonnull %374) #8
  %618 = call i32 @kstrtou8(ptr noundef %617, i32 noundef 0, ptr noundef nonnull %375) #8
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %622, label %620

620:                                              ; preds = %616
  %621 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef null, ptr noundef nonnull %374, i32 noundef %618) #9
  br label %626

622:                                              ; preds = %616
  %623 = load i8, ptr %375, align 1
  %624 = icmp eq i8 %623, -1
  br i1 %624, label %626, label %625

625:                                              ; preds = %622
  store i8 %623, ptr %613, align 1
  br label %626

626:                                              ; preds = %625, %622, %620, %612
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %375) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %374) #8
  %627 = load i8, ptr %0, align 4
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %645, label %629

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %372) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %372, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %373) #8
  store i8 0, ptr %373, align 1, !annotation !8
  %631 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull %372, i32 noundef 100, i1 noundef zeroext %2) #8
  %632 = icmp slt i32 %631, 0
  br i1 %632, label %643, label %633

633:                                              ; preds = %629
  %634 = call ptr @strim(ptr noundef nonnull %372) #8
  %635 = call i32 @kstrtou8(ptr noundef %634, i32 noundef 0, ptr noundef nonnull %373) #8
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %639, label %637

637:                                              ; preds = %633
  %638 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef nonnull %372, i32 noundef %635) #9
  br label %643

639:                                              ; preds = %633
  %640 = load i8, ptr %373, align 1
  %641 = icmp eq i8 %640, -1
  br i1 %641, label %643, label %642

642:                                              ; preds = %639
  store i8 %640, ptr %630, align 1
  br label %643

643:                                              ; preds = %642, %639, %637, %629
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %373) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %372) #8
  %644 = load i8, ptr %0, align 4
  br label %645

645:                                              ; preds = %643, %626, %609, %592, %575, %526, %437, %414, %3
  %646 = phi i8 [ 0, %592 ], [ 0, %575 ], [ 0, %609 ], [ %644, %643 ], [ 0, %626 ], [ 0, %526 ], [ 0, %414 ], [ 0, %3 ], [ 0, %437 ]
  %647 = zext i8 %646 to i32
  %648 = shl nuw i32 1, %647
  %649 = and i32 %648, 1806
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %739, label %651

651:                                              ; preds = %645
  %652 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %370) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %370, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %371) #8
  store i16 0, ptr %371, align 2, !annotation !8
  %653 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull %370, i32 noundef 100, i1 noundef zeroext %2) #8
  %654 = icmp slt i32 %653, 0
  br i1 %654, label %663, label %655

655:                                              ; preds = %651
  %656 = call ptr @strim(ptr noundef nonnull %370) #8
  %657 = call i32 @kstrtou16(ptr noundef %656, i32 noundef 0, ptr noundef nonnull %371) #8
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %661, label %659

659:                                              ; preds = %655
  %660 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef nonnull %370, i32 noundef %657) #9
  br label %663

661:                                              ; preds = %655
  %662 = load i16, ptr %371, align 2
  store i16 %662, ptr %652, align 2
  br label %663

663:                                              ; preds = %661, %659, %651
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %371) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %370) #8
  %664 = load i8, ptr %0, align 4
  %665 = zext i8 %664 to i32
  %666 = shl nuw i32 1, %665
  %667 = and i32 %666, 1806
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %739, label %669

669:                                              ; preds = %663
  %670 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %368) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %368, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %369) #8
  store i16 0, ptr %369, align 2, !annotation !8
  %671 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull %368, i32 noundef 100, i1 noundef zeroext %2) #8
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %681, label %673

673:                                              ; preds = %669
  %674 = call ptr @strim(ptr noundef nonnull %368) #8
  %675 = call i32 @kstrtou16(ptr noundef %674, i32 noundef 0, ptr noundef nonnull %369) #8
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %679, label %677

677:                                              ; preds = %673
  %678 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef nonnull %368, i32 noundef %675) #9
  br label %681

679:                                              ; preds = %673
  %680 = load i16, ptr %369, align 2
  store i16 %680, ptr %670, align 2
  br label %681

681:                                              ; preds = %679, %677, %669
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %369) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %368) #8
  %682 = load i8, ptr %0, align 4
  %683 = zext i8 %682 to i32
  %684 = shl nuw i32 1, %683
  %685 = and i32 %684, 1806
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %739, label %687

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %366) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %366, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %367) #8
  store i16 0, ptr %367, align 2, !annotation !8
  %689 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull %366, i32 noundef 100, i1 noundef zeroext %2) #8
  %690 = icmp slt i32 %689, 0
  br i1 %690, label %699, label %691

691:                                              ; preds = %687
  %692 = call ptr @strim(ptr noundef nonnull %366) #8
  %693 = call i32 @kstrtou16(ptr noundef %692, i32 noundef 0, ptr noundef nonnull %367) #8
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %697, label %695

695:                                              ; preds = %691
  %696 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef nonnull %366, i32 noundef %693) #9
  br label %699

697:                                              ; preds = %691
  %698 = load i16, ptr %367, align 2
  store i16 %698, ptr %688, align 2
  br label %699

699:                                              ; preds = %697, %695, %687
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %367) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %366) #8
  %700 = load i8, ptr %0, align 4
  %701 = zext i8 %700 to i32
  %702 = shl nuw i32 1, %701
  %703 = and i32 %702, 1806
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %739, label %705

705:                                              ; preds = %699
  %706 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 43
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %364) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %364, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %365) #8
  store i8 0, ptr %365, align 1, !annotation !8
  %707 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull %364, i32 noundef 100, i1 noundef zeroext %2) #8
  %708 = icmp slt i32 %707, 0
  br i1 %708, label %717, label %709

709:                                              ; preds = %705
  %710 = call ptr @strim(ptr noundef nonnull %364) #8
  %711 = call i32 @kstrtou8(ptr noundef %710, i32 noundef 0, ptr noundef nonnull %365) #8
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %715, label %713

713:                                              ; preds = %709
  %714 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef nonnull %364, i32 noundef %711) #9
  br label %717

715:                                              ; preds = %709
  %716 = load i8, ptr %365, align 1
  store i8 %716, ptr %706, align 1
  br label %717

717:                                              ; preds = %715, %713, %705
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %365) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %364) #8
  %718 = load i8, ptr %0, align 4
  %719 = zext i8 %718 to i32
  %720 = shl nuw i32 1, %719
  %721 = and i32 %720, 1806
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %739, label %723

723:                                              ; preds = %717
  %724 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 38
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %362) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %362, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %363) #8
  store i8 0, ptr %363, align 1, !annotation !8
  %725 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull %362, i32 noundef 100, i1 noundef zeroext %2) #8
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %735, label %727

727:                                              ; preds = %723
  %728 = call ptr @strim(ptr noundef nonnull %362) #8
  %729 = call i32 @kstrtou8(ptr noundef %728, i32 noundef 0, ptr noundef nonnull %363) #8
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %733, label %731

731:                                              ; preds = %727
  %732 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef nonnull %362, i32 noundef %729) #9
  br label %735

733:                                              ; preds = %727
  %734 = load i8, ptr %363, align 1
  store i8 %734, ptr %724, align 1
  br label %735

735:                                              ; preds = %733, %731, %723
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %363) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %362) #8
  %736 = load i8, ptr %0, align 4
  %737 = zext i8 %736 to i32
  %738 = shl nuw i32 1, %737
  br label %739

739:                                              ; preds = %735, %717, %699, %681, %663, %645
  %740 = phi i32 [ %738, %735 ], [ %720, %717 ], [ %702, %699 ], [ %684, %681 ], [ %666, %663 ], [ %648, %645 ]
  %741 = phi i8 [ %736, %735 ], [ %718, %717 ], [ %700, %699 ], [ %682, %681 ], [ %664, %663 ], [ %646, %645 ]
  %742 = and i32 %740, 1804
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %758, label %744

744:                                              ; preds = %739
  %745 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 81
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %360) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %360, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %361) #8
  store i8 0, ptr %361, align 1, !annotation !8
  %746 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull %360, i32 noundef 100, i1 noundef zeroext %2) #8
  %747 = icmp slt i32 %746, 0
  br i1 %747, label %756, label %748

748:                                              ; preds = %744
  %749 = call ptr @strim(ptr noundef nonnull %360) #8
  %750 = call i32 @kstrtou8(ptr noundef %749, i32 noundef 0, ptr noundef nonnull %361) #8
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %754, label %752

752:                                              ; preds = %748
  %753 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef nonnull %360, i32 noundef %750) #9
  br label %756

754:                                              ; preds = %748
  %755 = load i8, ptr %361, align 1
  store i8 %755, ptr %745, align 1
  br label %756

756:                                              ; preds = %754, %752, %744
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %361) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %360) #8
  %757 = load i8, ptr %0, align 4
  br label %758

758:                                              ; preds = %756, %739
  %759 = phi i8 [ %757, %756 ], [ %741, %739 ]
  %760 = icmp eq i8 %759, 0
  br i1 %760, label %790, label %761

761:                                              ; preds = %758
  %762 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %358) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %358, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %359) #8
  store i8 0, ptr %359, align 1, !annotation !8
  %763 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull %358, i32 noundef 100, i1 noundef zeroext %2) #8
  %764 = icmp slt i32 %763, 0
  br i1 %764, label %773, label %765

765:                                              ; preds = %761
  %766 = call ptr @strim(ptr noundef nonnull %358) #8
  %767 = call i32 @kstrtou8(ptr noundef %766, i32 noundef 0, ptr noundef nonnull %359) #8
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %771, label %769

769:                                              ; preds = %765
  %770 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.65, ptr noundef null, ptr noundef nonnull %358, i32 noundef %767) #9
  br label %773

771:                                              ; preds = %765
  %772 = load i8, ptr %359, align 1
  store i8 %772, ptr %762, align 1
  br label %773

773:                                              ; preds = %771, %769, %761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %359) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %358) #8
  %774 = load i8, ptr %0, align 4
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %790, label %776

776:                                              ; preds = %773
  %777 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %356) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %356, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %357) #8
  store i8 0, ptr %357, align 1, !annotation !8
  %778 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull %356, i32 noundef 100, i1 noundef zeroext %2) #8
  %779 = icmp slt i32 %778, 0
  br i1 %779, label %788, label %780

780:                                              ; preds = %776
  %781 = call ptr @strim(ptr noundef nonnull %356) #8
  %782 = call i32 @kstrtou8(ptr noundef %781, i32 noundef 0, ptr noundef nonnull %357) #8
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %786, label %784

784:                                              ; preds = %780
  %785 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef nonnull %356, i32 noundef %782) #9
  br label %788

786:                                              ; preds = %780
  %787 = load i8, ptr %357, align 1
  store i8 %787, ptr %777, align 1
  br label %788

788:                                              ; preds = %786, %784, %776
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %357) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %356) #8
  %789 = load i8, ptr %0, align 4
  br label %790

790:                                              ; preds = %788, %773, %758
  %791 = phi i8 [ %789, %788 ], [ 0, %773 ], [ 0, %758 ]
  %792 = zext i8 %791 to i32
  %793 = shl nuw i32 1, %792
  %794 = and i32 %793, 2046
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %830, label %796

796:                                              ; preds = %790
  %797 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 75
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %354) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %354, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %355) #8
  store i8 0, ptr %355, align 1, !annotation !8
  %798 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull %354, i32 noundef 100, i1 noundef zeroext %2) #8
  %799 = icmp slt i32 %798, 0
  br i1 %799, label %808, label %800

800:                                              ; preds = %796
  %801 = call ptr @strim(ptr noundef nonnull %354) #8
  %802 = call i32 @kstrtos8(ptr noundef %801, i32 noundef 0, ptr noundef nonnull %355) #8
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %806, label %804

804:                                              ; preds = %800
  %805 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef nonnull %354, i32 noundef %802) #9
  br label %808

806:                                              ; preds = %800
  %807 = load i8, ptr %355, align 1
  store i8 %807, ptr %797, align 1
  br label %808

808:                                              ; preds = %806, %804, %796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %355) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %354) #8
  %809 = load i8, ptr %0, align 4
  %810 = zext i8 %809 to i32
  %811 = shl nuw i32 1, %810
  %812 = and i32 %811, 2046
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %830, label %814

814:                                              ; preds = %808
  %815 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 75, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %352) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %352, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %353) #8
  store i8 0, ptr %353, align 1, !annotation !8
  %816 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull %352, i32 noundef 100, i1 noundef zeroext %2) #8
  %817 = icmp slt i32 %816, 0
  br i1 %817, label %826, label %818

818:                                              ; preds = %814
  %819 = call ptr @strim(ptr noundef nonnull %352) #8
  %820 = call i32 @kstrtos8(ptr noundef %819, i32 noundef 0, ptr noundef nonnull %353) #8
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %824, label %822

822:                                              ; preds = %818
  %823 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef nonnull %352, i32 noundef %820) #9
  br label %826

824:                                              ; preds = %818
  %825 = load i8, ptr %353, align 1
  store i8 %825, ptr %815, align 1
  br label %826

826:                                              ; preds = %824, %822, %814
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %353) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %352) #8
  %827 = load i8, ptr %0, align 4
  %828 = zext i8 %827 to i32
  %829 = shl nuw i32 1, %828
  br label %830

830:                                              ; preds = %826, %808, %790
  %831 = phi i32 [ %829, %826 ], [ %811, %808 ], [ %793, %790 ]
  %832 = phi i8 [ %827, %826 ], [ %809, %808 ], [ %791, %790 ]
  %833 = and i32 %831, 2032
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %869, label %835

835:                                              ; preds = %830
  %836 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 75, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %350) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %350, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %351) #8
  store i8 0, ptr %351, align 1, !annotation !8
  %837 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull %350, i32 noundef 100, i1 noundef zeroext %2) #8
  %838 = icmp slt i32 %837, 0
  br i1 %838, label %847, label %839

839:                                              ; preds = %835
  %840 = call ptr @strim(ptr noundef nonnull %350) #8
  %841 = call i32 @kstrtos8(ptr noundef %840, i32 noundef 0, ptr noundef nonnull %351) #8
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %845, label %843

843:                                              ; preds = %839
  %844 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef nonnull %350, i32 noundef %841) #9
  br label %847

845:                                              ; preds = %839
  %846 = load i8, ptr %351, align 1
  store i8 %846, ptr %836, align 1
  br label %847

847:                                              ; preds = %845, %843, %835
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %351) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %350) #8
  %848 = load i8, ptr %0, align 4
  %849 = zext i8 %848 to i32
  %850 = shl nuw i32 1, %849
  %851 = and i32 %850, 2032
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %869, label %853

853:                                              ; preds = %847
  %854 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 75, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %348) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %348, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %349) #8
  store i8 0, ptr %349, align 1, !annotation !8
  %855 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull %348, i32 noundef 100, i1 noundef zeroext %2) #8
  %856 = icmp slt i32 %855, 0
  br i1 %856, label %865, label %857

857:                                              ; preds = %853
  %858 = call ptr @strim(ptr noundef nonnull %348) #8
  %859 = call i32 @kstrtos8(ptr noundef %858, i32 noundef 0, ptr noundef nonnull %349) #8
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %863, label %861

861:                                              ; preds = %857
  %862 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef nonnull %348, i32 noundef %859) #9
  br label %865

863:                                              ; preds = %857
  %864 = load i8, ptr %349, align 1
  store i8 %864, ptr %854, align 1
  br label %865

865:                                              ; preds = %863, %861, %853
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %349) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %348) #8
  %866 = load i8, ptr %0, align 4
  %867 = zext i8 %866 to i32
  %868 = shl nuw i32 1, %867
  br label %869

869:                                              ; preds = %865, %847, %830
  %870 = phi i32 [ %868, %865 ], [ %850, %847 ], [ %831, %830 ]
  %871 = phi i8 [ %866, %865 ], [ %848, %847 ], [ %832, %830 ]
  %872 = and i32 %870, 1806
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %926, label %874

874:                                              ; preds = %869
  %875 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %346) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %346, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %347) #8
  store i16 0, ptr %347, align 2, !annotation !8
  %876 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull %346, i32 noundef 100, i1 noundef zeroext %2) #8
  %877 = icmp slt i32 %876, 0
  br i1 %877, label %886, label %878

878:                                              ; preds = %874
  %879 = call ptr @strim(ptr noundef nonnull %346) #8
  %880 = call i32 @kstrtou16(ptr noundef %879, i32 noundef 0, ptr noundef nonnull %347) #8
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %884, label %882

882:                                              ; preds = %878
  %883 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef nonnull %346, i32 noundef %880) #9
  br label %886

884:                                              ; preds = %878
  %885 = load i16, ptr %347, align 2
  store i16 %885, ptr %875, align 2
  br label %886

886:                                              ; preds = %884, %882, %874
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %347) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %346) #8
  %887 = load i8, ptr %0, align 4
  %888 = zext i8 %887 to i32
  %889 = shl nuw i32 1, %888
  %890 = and i32 %889, 1806
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %926, label %892

892:                                              ; preds = %886
  %893 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %344) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %344, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %345) #8
  store i16 0, ptr %345, align 2, !annotation !8
  %894 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull %344, i32 noundef 100, i1 noundef zeroext %2) #8
  %895 = icmp slt i32 %894, 0
  br i1 %895, label %904, label %896

896:                                              ; preds = %892
  %897 = call ptr @strim(ptr noundef nonnull %344) #8
  %898 = call i32 @kstrtou16(ptr noundef %897, i32 noundef 0, ptr noundef nonnull %345) #8
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %902, label %900

900:                                              ; preds = %896
  %901 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef nonnull %344, i32 noundef %898) #9
  br label %904

902:                                              ; preds = %896
  %903 = load i16, ptr %345, align 2
  store i16 %903, ptr %893, align 2
  br label %904

904:                                              ; preds = %902, %900, %892
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %345) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %344) #8
  %905 = load i8, ptr %0, align 4
  %906 = zext i8 %905 to i32
  %907 = shl nuw i32 1, %906
  %908 = and i32 %907, 1806
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %926, label %910

910:                                              ; preds = %904
  %911 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %342) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %342, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %343) #8
  store i16 0, ptr %343, align 2, !annotation !8
  %912 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull %342, i32 noundef 100, i1 noundef zeroext %2) #8
  %913 = icmp slt i32 %912, 0
  br i1 %913, label %922, label %914

914:                                              ; preds = %910
  %915 = call ptr @strim(ptr noundef nonnull %342) #8
  %916 = call i32 @kstrtou16(ptr noundef %915, i32 noundef 0, ptr noundef nonnull %343) #8
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %920, label %918

918:                                              ; preds = %914
  %919 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef nonnull %342, i32 noundef %916) #9
  br label %922

920:                                              ; preds = %914
  %921 = load i16, ptr %343, align 2
  store i16 %921, ptr %911, align 2
  br label %922

922:                                              ; preds = %920, %918, %910
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %343) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %342) #8
  %923 = load i8, ptr %0, align 4
  %924 = zext i8 %923 to i32
  %925 = shl nuw i32 1, %924
  br label %926

926:                                              ; preds = %922, %904, %886, %869
  %927 = phi i32 [ %925, %922 ], [ %907, %904 ], [ %889, %886 ], [ %870, %869 ]
  %928 = phi i8 [ %923, %922 ], [ %905, %904 ], [ %887, %886 ], [ %871, %869 ]
  %929 = and i32 %927, 1804
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %1037, label %931

931:                                              ; preds = %926
  %932 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %340) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %340, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %341) #8
  store i16 0, ptr %341, align 2, !annotation !8
  %933 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull %340, i32 noundef 100, i1 noundef zeroext %2) #8
  %934 = icmp slt i32 %933, 0
  br i1 %934, label %943, label %935

935:                                              ; preds = %931
  %936 = call ptr @strim(ptr noundef nonnull %340) #8
  %937 = call i32 @kstrtou16(ptr noundef %936, i32 noundef 0, ptr noundef nonnull %341) #8
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %941, label %939

939:                                              ; preds = %935
  %940 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef nonnull %340, i32 noundef %937) #9
  br label %943

941:                                              ; preds = %935
  %942 = load i16, ptr %341, align 2
  store i16 %942, ptr %932, align 2
  br label %943

943:                                              ; preds = %941, %939, %931
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %341) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %340) #8
  %944 = load i8, ptr %0, align 4
  %945 = zext i8 %944 to i32
  %946 = shl nuw i32 1, %945
  %947 = and i32 %946, 1804
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %1037, label %949

949:                                              ; preds = %943
  %950 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %338) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %338, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %339) #8
  store i16 0, ptr %339, align 2, !annotation !8
  %951 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull %338, i32 noundef 100, i1 noundef zeroext %2) #8
  %952 = icmp slt i32 %951, 0
  br i1 %952, label %961, label %953

953:                                              ; preds = %949
  %954 = call ptr @strim(ptr noundef nonnull %338) #8
  %955 = call i32 @kstrtou16(ptr noundef %954, i32 noundef 0, ptr noundef nonnull %339) #8
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %959, label %957

957:                                              ; preds = %953
  %958 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef nonnull %338, i32 noundef %955) #9
  br label %961

959:                                              ; preds = %953
  %960 = load i16, ptr %339, align 2
  store i16 %960, ptr %950, align 2
  br label %961

961:                                              ; preds = %959, %957, %949
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %339) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %338) #8
  %962 = load i8, ptr %0, align 4
  %963 = zext i8 %962 to i32
  %964 = shl nuw i32 1, %963
  %965 = and i32 %964, 1804
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %1037, label %967

967:                                              ; preds = %961
  %968 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %336) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %336, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %337) #8
  store i16 0, ptr %337, align 2, !annotation !8
  %969 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull %336, i32 noundef 100, i1 noundef zeroext %2) #8
  %970 = icmp slt i32 %969, 0
  br i1 %970, label %979, label %971

971:                                              ; preds = %967
  %972 = call ptr @strim(ptr noundef nonnull %336) #8
  %973 = call i32 @kstrtou16(ptr noundef %972, i32 noundef 0, ptr noundef nonnull %337) #8
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %977, label %975

975:                                              ; preds = %971
  %976 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef nonnull %336, i32 noundef %973) #9
  br label %979

977:                                              ; preds = %971
  %978 = load i16, ptr %337, align 2
  store i16 %978, ptr %968, align 2
  br label %979

979:                                              ; preds = %977, %975, %967
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %337) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %336) #8
  %980 = load i8, ptr %0, align 4
  %981 = zext i8 %980 to i32
  %982 = shl nuw i32 1, %981
  %983 = and i32 %982, 1804
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1037, label %985

985:                                              ; preds = %979
  %986 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %334) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %334, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %335) #8
  store i16 0, ptr %335, align 2, !annotation !8
  %987 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull %334, i32 noundef 100, i1 noundef zeroext %2) #8
  %988 = icmp slt i32 %987, 0
  br i1 %988, label %997, label %989

989:                                              ; preds = %985
  %990 = call ptr @strim(ptr noundef nonnull %334) #8
  %991 = call i32 @kstrtou16(ptr noundef %990, i32 noundef 0, ptr noundef nonnull %335) #8
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %995, label %993

993:                                              ; preds = %989
  %994 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef nonnull %334, i32 noundef %991) #9
  br label %997

995:                                              ; preds = %989
  %996 = load i16, ptr %335, align 2
  store i16 %996, ptr %986, align 2
  br label %997

997:                                              ; preds = %995, %993, %985
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %335) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %334) #8
  %998 = load i8, ptr %0, align 4
  %999 = zext i8 %998 to i32
  %1000 = shl nuw i32 1, %999
  %1001 = and i32 %1000, 1804
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1037, label %1003

1003:                                             ; preds = %997
  %1004 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %332) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %332, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %333) #8
  store i16 0, ptr %333, align 2, !annotation !8
  %1005 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %332, i32 noundef 100, i1 noundef zeroext %2) #8
  %1006 = icmp slt i32 %1005, 0
  br i1 %1006, label %1015, label %1007

1007:                                             ; preds = %1003
  %1008 = call ptr @strim(ptr noundef nonnull %332) #8
  %1009 = call i32 @kstrtou16(ptr noundef %1008, i32 noundef 0, ptr noundef nonnull %333) #8
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1013, label %1011

1011:                                             ; preds = %1007
  %1012 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef nonnull %332, i32 noundef %1009) #9
  br label %1015

1013:                                             ; preds = %1007
  %1014 = load i16, ptr %333, align 2
  store i16 %1014, ptr %1004, align 2
  br label %1015

1015:                                             ; preds = %1013, %1011, %1003
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %333) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %332) #8
  %1016 = load i8, ptr %0, align 4
  %1017 = zext i8 %1016 to i32
  %1018 = shl nuw i32 1, %1017
  %1019 = and i32 %1018, 1804
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1037, label %1021

1021:                                             ; preds = %1015
  %1022 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %330) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %330, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %331) #8
  store i16 0, ptr %331, align 2, !annotation !8
  %1023 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull %330, i32 noundef 100, i1 noundef zeroext %2) #8
  %1024 = icmp slt i32 %1023, 0
  br i1 %1024, label %1033, label %1025

1025:                                             ; preds = %1021
  %1026 = call ptr @strim(ptr noundef nonnull %330) #8
  %1027 = call i32 @kstrtou16(ptr noundef %1026, i32 noundef 0, ptr noundef nonnull %331) #8
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1031, label %1029

1029:                                             ; preds = %1025
  %1030 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef nonnull %330, i32 noundef %1027) #9
  br label %1033

1031:                                             ; preds = %1025
  %1032 = load i16, ptr %331, align 2
  store i16 %1032, ptr %1022, align 2
  br label %1033

1033:                                             ; preds = %1031, %1029, %1021
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %331) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %330) #8
  %1034 = load i8, ptr %0, align 4
  %1035 = zext i8 %1034 to i32
  %1036 = shl nuw i32 1, %1035
  br label %1037

1037:                                             ; preds = %1033, %1015, %997, %979, %961, %943, %926
  %1038 = phi i32 [ %1036, %1033 ], [ %1018, %1015 ], [ %1000, %997 ], [ %982, %979 ], [ %964, %961 ], [ %946, %943 ], [ %927, %926 ]
  %1039 = phi i8 [ %1034, %1033 ], [ %1016, %1015 ], [ %998, %997 ], [ %980, %979 ], [ %962, %961 ], [ %944, %943 ], [ %928, %926 ]
  %1040 = and i32 %1038, 1806
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1076, label %1042

1042:                                             ; preds = %1037
  %1043 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %328) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %328, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %329) #8
  store i8 0, ptr %329, align 1, !annotation !8
  %1044 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull %328, i32 noundef 100, i1 noundef zeroext %2) #8
  %1045 = icmp slt i32 %1044, 0
  br i1 %1045, label %1054, label %1046

1046:                                             ; preds = %1042
  %1047 = call ptr @strim(ptr noundef nonnull %328) #8
  %1048 = call i32 @kstrtou8(ptr noundef %1047, i32 noundef 0, ptr noundef nonnull %329) #8
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1052, label %1050

1050:                                             ; preds = %1046
  %1051 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef nonnull %328, i32 noundef %1048) #9
  br label %1054

1052:                                             ; preds = %1046
  %1053 = load i8, ptr %329, align 1
  store i8 %1053, ptr %1043, align 1
  br label %1054

1054:                                             ; preds = %1052, %1050, %1042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %329) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %328) #8
  %1055 = load i8, ptr %0, align 4
  %1056 = zext i8 %1055 to i32
  %1057 = shl nuw i32 1, %1056
  %1058 = and i32 %1057, 1806
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1076, label %1060

1060:                                             ; preds = %1054
  %1061 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %326) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %326, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %327) #8
  store i8 0, ptr %327, align 1, !annotation !8
  %1062 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull %326, i32 noundef 100, i1 noundef zeroext %2) #8
  %1063 = icmp slt i32 %1062, 0
  br i1 %1063, label %1072, label %1064

1064:                                             ; preds = %1060
  %1065 = call ptr @strim(ptr noundef nonnull %326) #8
  %1066 = call i32 @kstrtou8(ptr noundef %1065, i32 noundef 0, ptr noundef nonnull %327) #8
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1070, label %1068

1068:                                             ; preds = %1064
  %1069 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef nonnull %326, i32 noundef %1066) #9
  br label %1072

1070:                                             ; preds = %1064
  %1071 = load i8, ptr %327, align 1
  store i8 %1071, ptr %1061, align 1
  br label %1072

1072:                                             ; preds = %1070, %1068, %1060
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %327) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %326) #8
  %1073 = load i8, ptr %0, align 4
  %1074 = zext i8 %1073 to i32
  %1075 = shl nuw i32 1, %1074
  br label %1076

1076:                                             ; preds = %1072, %1054, %1037
  %1077 = phi i32 [ %1075, %1072 ], [ %1057, %1054 ], [ %1038, %1037 ]
  %1078 = phi i8 [ %1073, %1072 ], [ %1055, %1054 ], [ %1039, %1037 ]
  %1079 = and i32 %1077, 1804
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1115, label %1081

1081:                                             ; preds = %1076
  %1082 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %324) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %324, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %325) #8
  store i8 0, ptr %325, align 1, !annotation !8
  %1083 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull %324, i32 noundef 100, i1 noundef zeroext %2) #8
  %1084 = icmp slt i32 %1083, 0
  br i1 %1084, label %1093, label %1085

1085:                                             ; preds = %1081
  %1086 = call ptr @strim(ptr noundef nonnull %324) #8
  %1087 = call i32 @kstrtou8(ptr noundef %1086, i32 noundef 0, ptr noundef nonnull %325) #8
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1091, label %1089

1089:                                             ; preds = %1085
  %1090 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef nonnull %324, i32 noundef %1087) #9
  br label %1093

1091:                                             ; preds = %1085
  %1092 = load i8, ptr %325, align 1
  store i8 %1092, ptr %1082, align 1
  br label %1093

1093:                                             ; preds = %1091, %1089, %1081
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %325) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %324) #8
  %1094 = load i8, ptr %0, align 4
  %1095 = zext i8 %1094 to i32
  %1096 = shl nuw i32 1, %1095
  %1097 = and i32 %1096, 1804
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1115, label %1099

1099:                                             ; preds = %1093
  %1100 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 41
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %322) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %322, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %323) #8
  store i8 0, ptr %323, align 1, !annotation !8
  %1101 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull %322, i32 noundef 100, i1 noundef zeroext %2) #8
  %1102 = icmp slt i32 %1101, 0
  br i1 %1102, label %1111, label %1103

1103:                                             ; preds = %1099
  %1104 = call ptr @strim(ptr noundef nonnull %322) #8
  %1105 = call i32 @kstrtou8(ptr noundef %1104, i32 noundef 0, ptr noundef nonnull %323) #8
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1109, label %1107

1107:                                             ; preds = %1103
  %1108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef nonnull %322, i32 noundef %1105) #9
  br label %1111

1109:                                             ; preds = %1103
  %1110 = load i8, ptr %323, align 1
  store i8 %1110, ptr %1100, align 1
  br label %1111

1111:                                             ; preds = %1109, %1107, %1099
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %323) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %322) #8
  %1112 = load i8, ptr %0, align 4
  %1113 = zext i8 %1112 to i32
  %1114 = shl nuw i32 1, %1113
  br label %1115

1115:                                             ; preds = %1111, %1093, %1076
  %1116 = phi i32 [ %1114, %1111 ], [ %1096, %1093 ], [ %1077, %1076 ]
  %1117 = phi i8 [ %1112, %1111 ], [ %1094, %1093 ], [ %1078, %1076 ]
  %1118 = and i32 %1116, 1800
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1368, label %1120

1120:                                             ; preds = %1115
  %1121 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 57
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %320) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %320, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %321) #8
  store i8 0, ptr %321, align 1, !annotation !8
  %1122 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull %320, i32 noundef 100, i1 noundef zeroext %2) #8
  %1123 = icmp slt i32 %1122, 0
  br i1 %1123, label %1132, label %1124

1124:                                             ; preds = %1120
  %1125 = call ptr @strim(ptr noundef nonnull %320) #8
  %1126 = call i32 @kstrtou8(ptr noundef %1125, i32 noundef 0, ptr noundef nonnull %321) #8
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1130, label %1128

1128:                                             ; preds = %1124
  %1129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef nonnull %320, i32 noundef %1126) #9
  br label %1132

1130:                                             ; preds = %1124
  %1131 = load i8, ptr %321, align 1
  store i8 %1131, ptr %1121, align 1
  br label %1132

1132:                                             ; preds = %1130, %1128, %1120
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %321) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %320) #8
  %1133 = load i8, ptr %0, align 4
  %1134 = zext i8 %1133 to i32
  %1135 = shl nuw i32 1, %1134
  %1136 = and i32 %1135, 1800
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1368, label %1138

1138:                                             ; preds = %1132
  %1139 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 54
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %318) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %318, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %319) #8
  store i8 0, ptr %319, align 1, !annotation !8
  %1140 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull %318, i32 noundef 100, i1 noundef zeroext %2) #8
  %1141 = icmp slt i32 %1140, 0
  br i1 %1141, label %1150, label %1142

1142:                                             ; preds = %1138
  %1143 = call ptr @strim(ptr noundef nonnull %318) #8
  %1144 = call i32 @kstrtou8(ptr noundef %1143, i32 noundef 0, ptr noundef nonnull %319) #8
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1148, label %1146

1146:                                             ; preds = %1142
  %1147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef nonnull %318, i32 noundef %1144) #9
  br label %1150

1148:                                             ; preds = %1142
  %1149 = load i8, ptr %319, align 1
  store i8 %1149, ptr %1139, align 1
  br label %1150

1150:                                             ; preds = %1148, %1146, %1138
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %319) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %318) #8
  %1151 = load i8, ptr %0, align 4
  %1152 = zext i8 %1151 to i32
  %1153 = shl nuw i32 1, %1152
  %1154 = and i32 %1153, 1800
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1368, label %1156

1156:                                             ; preds = %1150
  %1157 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 55
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %316) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %316, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %317) #8
  store i8 0, ptr %317, align 1, !annotation !8
  %1158 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull %316, i32 noundef 100, i1 noundef zeroext %2) #8
  %1159 = icmp slt i32 %1158, 0
  br i1 %1159, label %1168, label %1160

1160:                                             ; preds = %1156
  %1161 = call ptr @strim(ptr noundef nonnull %316) #8
  %1162 = call i32 @kstrtou8(ptr noundef %1161, i32 noundef 0, ptr noundef nonnull %317) #8
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1166, label %1164

1164:                                             ; preds = %1160
  %1165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef null, ptr noundef nonnull %316, i32 noundef %1162) #9
  br label %1168

1166:                                             ; preds = %1160
  %1167 = load i8, ptr %317, align 1
  store i8 %1167, ptr %1157, align 1
  br label %1168

1168:                                             ; preds = %1166, %1164, %1156
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %317) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %316) #8
  %1169 = load i8, ptr %0, align 4
  %1170 = zext i8 %1169 to i32
  %1171 = shl nuw i32 1, %1170
  %1172 = and i32 %1171, 1800
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1368, label %1174

1174:                                             ; preds = %1168
  %1175 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 56
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %314) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %314, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %315) #8
  store i8 0, ptr %315, align 1, !annotation !8
  %1176 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull %314, i32 noundef 100, i1 noundef zeroext %2) #8
  %1177 = icmp slt i32 %1176, 0
  br i1 %1177, label %1186, label %1178

1178:                                             ; preds = %1174
  %1179 = call ptr @strim(ptr noundef nonnull %314) #8
  %1180 = call i32 @kstrtou8(ptr noundef %1179, i32 noundef 0, ptr noundef nonnull %315) #8
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1184, label %1182

1182:                                             ; preds = %1178
  %1183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef nonnull %314, i32 noundef %1180) #9
  br label %1186

1184:                                             ; preds = %1178
  %1185 = load i8, ptr %315, align 1
  store i8 %1185, ptr %1175, align 1
  br label %1186

1186:                                             ; preds = %1184, %1182, %1174
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %315) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %314) #8
  %1187 = load i8, ptr %0, align 4
  %1188 = zext i8 %1187 to i32
  %1189 = shl nuw i32 1, %1188
  %1190 = and i32 %1189, 1800
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1368, label %1192

1192:                                             ; preds = %1186
  %1193 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 61
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %312) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %312, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %313) #8
  store i8 0, ptr %313, align 1, !annotation !8
  %1194 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull %312, i32 noundef 100, i1 noundef zeroext %2) #8
  %1195 = icmp slt i32 %1194, 0
  br i1 %1195, label %1204, label %1196

1196:                                             ; preds = %1192
  %1197 = call ptr @strim(ptr noundef nonnull %312) #8
  %1198 = call i32 @kstrtou8(ptr noundef %1197, i32 noundef 0, ptr noundef nonnull %313) #8
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1202, label %1200

1200:                                             ; preds = %1196
  %1201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef nonnull %312, i32 noundef %1198) #9
  br label %1204

1202:                                             ; preds = %1196
  %1203 = load i8, ptr %313, align 1
  store i8 %1203, ptr %1193, align 1
  br label %1204

1204:                                             ; preds = %1202, %1200, %1192
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %313) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %312) #8
  %1205 = load i8, ptr %0, align 4
  %1206 = zext i8 %1205 to i32
  %1207 = shl nuw i32 1, %1206
  %1208 = and i32 %1207, 1800
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1368, label %1210

1210:                                             ; preds = %1204
  %1211 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %310) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %310, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %311) #8
  store i8 0, ptr %311, align 1, !annotation !8
  %1212 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull %310, i32 noundef 100, i1 noundef zeroext %2) #8
  %1213 = icmp slt i32 %1212, 0
  br i1 %1213, label %1222, label %1214

1214:                                             ; preds = %1210
  %1215 = call ptr @strim(ptr noundef nonnull %310) #8
  %1216 = call i32 @kstrtou8(ptr noundef %1215, i32 noundef 0, ptr noundef nonnull %311) #8
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1220, label %1218

1218:                                             ; preds = %1214
  %1219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef nonnull %310, i32 noundef %1216) #9
  br label %1222

1220:                                             ; preds = %1214
  %1221 = load i8, ptr %311, align 1
  store i8 %1221, ptr %1211, align 1
  br label %1222

1222:                                             ; preds = %1220, %1218, %1210
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %311) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %310) #8
  %1223 = load i8, ptr %0, align 4
  %1224 = zext i8 %1223 to i32
  %1225 = shl nuw i32 1, %1224
  %1226 = and i32 %1225, 1800
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1368, label %1228

1228:                                             ; preds = %1222
  %1229 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 59
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %308) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %308, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %309) #8
  store i8 0, ptr %309, align 1, !annotation !8
  %1230 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull %308, i32 noundef 100, i1 noundef zeroext %2) #8
  %1231 = icmp slt i32 %1230, 0
  br i1 %1231, label %1240, label %1232

1232:                                             ; preds = %1228
  %1233 = call ptr @strim(ptr noundef nonnull %308) #8
  %1234 = call i32 @kstrtou8(ptr noundef %1233, i32 noundef 0, ptr noundef nonnull %309) #8
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1238, label %1236

1236:                                             ; preds = %1232
  %1237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef nonnull %308, i32 noundef %1234) #9
  br label %1240

1238:                                             ; preds = %1232
  %1239 = load i8, ptr %309, align 1
  store i8 %1239, ptr %1229, align 1
  br label %1240

1240:                                             ; preds = %1238, %1236, %1228
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %309) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %308) #8
  %1241 = load i8, ptr %0, align 4
  %1242 = zext i8 %1241 to i32
  %1243 = shl nuw i32 1, %1242
  %1244 = and i32 %1243, 1800
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1368, label %1246

1246:                                             ; preds = %1240
  %1247 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 60
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %306) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %306, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %307) #8
  store i8 0, ptr %307, align 1, !annotation !8
  %1248 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull %306, i32 noundef 100, i1 noundef zeroext %2) #8
  %1249 = icmp slt i32 %1248, 0
  br i1 %1249, label %1258, label %1250

1250:                                             ; preds = %1246
  %1251 = call ptr @strim(ptr noundef nonnull %306) #8
  %1252 = call i32 @kstrtou8(ptr noundef %1251, i32 noundef 0, ptr noundef nonnull %307) #8
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1256, label %1254

1254:                                             ; preds = %1250
  %1255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef nonnull %306, i32 noundef %1252) #9
  br label %1258

1256:                                             ; preds = %1250
  %1257 = load i8, ptr %307, align 1
  store i8 %1257, ptr %1247, align 1
  br label %1258

1258:                                             ; preds = %1256, %1254, %1246
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %307) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %306) #8
  %1259 = load i8, ptr %0, align 4
  %1260 = zext i8 %1259 to i32
  %1261 = shl nuw i32 1, %1260
  %1262 = and i32 %1261, 1800
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1368, label %1264

1264:                                             ; preds = %1258
  %1265 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %304) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %304, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %305) #8
  store i8 0, ptr %305, align 1, !annotation !8
  %1266 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull %304, i32 noundef 100, i1 noundef zeroext %2) #8
  %1267 = icmp slt i32 %1266, 0
  br i1 %1267, label %1276, label %1268

1268:                                             ; preds = %1264
  %1269 = call ptr @strim(ptr noundef nonnull %304) #8
  %1270 = call i32 @kstrtou8(ptr noundef %1269, i32 noundef 0, ptr noundef nonnull %305) #8
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1274, label %1272

1272:                                             ; preds = %1268
  %1273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef nonnull %304, i32 noundef %1270) #9
  br label %1276

1274:                                             ; preds = %1268
  %1275 = load i8, ptr %305, align 1
  store i8 %1275, ptr %1265, align 1
  br label %1276

1276:                                             ; preds = %1274, %1272, %1264
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %305) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %304) #8
  %1277 = load i8, ptr %0, align 4
  %1278 = zext i8 %1277 to i32
  %1279 = shl nuw i32 1, %1278
  %1280 = and i32 %1279, 1800
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1368, label %1282

1282:                                             ; preds = %1276
  %1283 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 46
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %302) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %302, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %303) #8
  store i8 0, ptr %303, align 1, !annotation !8
  %1284 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull %302, i32 noundef 100, i1 noundef zeroext %2) #8
  %1285 = icmp slt i32 %1284, 0
  br i1 %1285, label %1294, label %1286

1286:                                             ; preds = %1282
  %1287 = call ptr @strim(ptr noundef nonnull %302) #8
  %1288 = call i32 @kstrtou8(ptr noundef %1287, i32 noundef 0, ptr noundef nonnull %303) #8
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1292, label %1290

1290:                                             ; preds = %1286
  %1291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef nonnull %302, i32 noundef %1288) #9
  br label %1294

1292:                                             ; preds = %1286
  %1293 = load i8, ptr %303, align 1
  store i8 %1293, ptr %1283, align 1
  br label %1294

1294:                                             ; preds = %1292, %1290, %1282
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %303) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %302) #8
  %1295 = load i8, ptr %0, align 4
  %1296 = zext i8 %1295 to i32
  %1297 = shl nuw i32 1, %1296
  %1298 = and i32 %1297, 1800
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1368, label %1300

1300:                                             ; preds = %1294
  %1301 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %300) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %300, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %301) #8
  store i8 0, ptr %301, align 1, !annotation !8
  %1302 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull %300, i32 noundef 100, i1 noundef zeroext %2) #8
  %1303 = icmp slt i32 %1302, 0
  br i1 %1303, label %1312, label %1304

1304:                                             ; preds = %1300
  %1305 = call ptr @strim(ptr noundef nonnull %300) #8
  %1306 = call i32 @kstrtou8(ptr noundef %1305, i32 noundef 0, ptr noundef nonnull %301) #8
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1310, label %1308

1308:                                             ; preds = %1304
  %1309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef null, ptr noundef nonnull %300, i32 noundef %1306) #9
  br label %1312

1310:                                             ; preds = %1304
  %1311 = load i8, ptr %301, align 1
  store i8 %1311, ptr %1301, align 1
  br label %1312

1312:                                             ; preds = %1310, %1308, %1300
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %301) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %300) #8
  %1313 = load i8, ptr %0, align 4
  %1314 = zext i8 %1313 to i32
  %1315 = shl nuw i32 1, %1314
  %1316 = and i32 %1315, 1800
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %1368, label %1318

1318:                                             ; preds = %1312
  %1319 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 47
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %298) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %298, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %299) #8
  store i8 0, ptr %299, align 1, !annotation !8
  %1320 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull %298, i32 noundef 100, i1 noundef zeroext %2) #8
  %1321 = icmp slt i32 %1320, 0
  br i1 %1321, label %1330, label %1322

1322:                                             ; preds = %1318
  %1323 = call ptr @strim(ptr noundef nonnull %298) #8
  %1324 = call i32 @kstrtou8(ptr noundef %1323, i32 noundef 0, ptr noundef nonnull %299) #8
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1328, label %1326

1326:                                             ; preds = %1322
  %1327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef nonnull %298, i32 noundef %1324) #9
  br label %1330

1328:                                             ; preds = %1322
  %1329 = load i8, ptr %299, align 1
  store i8 %1329, ptr %1319, align 1
  br label %1330

1330:                                             ; preds = %1328, %1326, %1318
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %299) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %298) #8
  %1331 = load i8, ptr %0, align 4
  %1332 = zext i8 %1331 to i32
  %1333 = shl nuw i32 1, %1332
  %1334 = and i32 %1333, 1800
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1368, label %1336

1336:                                             ; preds = %1330
  %1337 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 52
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %296) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %296, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %297) #8
  store i8 0, ptr %297, align 1, !annotation !8
  %1338 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull %296, i32 noundef 100, i1 noundef zeroext %2) #8
  %1339 = icmp slt i32 %1338, 0
  br i1 %1339, label %1348, label %1340

1340:                                             ; preds = %1336
  %1341 = call ptr @strim(ptr noundef nonnull %296) #8
  %1342 = call i32 @kstrtos8(ptr noundef %1341, i32 noundef 0, ptr noundef nonnull %297) #8
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1346, label %1344

1344:                                             ; preds = %1340
  %1345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef nonnull %296, i32 noundef %1342) #9
  br label %1348

1346:                                             ; preds = %1340
  %1347 = load i8, ptr %297, align 1
  store i8 %1347, ptr %1337, align 1
  br label %1348

1348:                                             ; preds = %1346, %1344, %1336
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %297) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %296) #8
  %1349 = load i8, ptr %0, align 4
  %1350 = zext i8 %1349 to i32
  %1351 = shl nuw i32 1, %1350
  %1352 = and i32 %1351, 1800
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1368, label %1354

1354:                                             ; preds = %1348
  %1355 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %294) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %294, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %295) #8
  store i8 0, ptr %295, align 1, !annotation !8
  %1356 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull %294, i32 noundef 100, i1 noundef zeroext %2) #8
  %1357 = icmp slt i32 %1356, 0
  br i1 %1357, label %1366, label %1358

1358:                                             ; preds = %1354
  %1359 = call ptr @strim(ptr noundef nonnull %294) #8
  %1360 = call i32 @kstrtos8(ptr noundef %1359, i32 noundef 0, ptr noundef nonnull %295) #8
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1364, label %1362

1362:                                             ; preds = %1358
  %1363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef nonnull %294, i32 noundef %1360) #9
  br label %1366

1364:                                             ; preds = %1358
  %1365 = load i8, ptr %295, align 1
  store i8 %1365, ptr %1355, align 1
  br label %1366

1366:                                             ; preds = %1364, %1362, %1354
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %295) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %294) #8
  %1367 = load i8, ptr %0, align 4
  br label %1368

1368:                                             ; preds = %1366, %1348, %1330, %1312, %1294, %1276, %1258, %1240, %1222, %1204, %1186, %1168, %1150, %1132, %1115
  %1369 = phi i8 [ %1367, %1366 ], [ %1349, %1348 ], [ %1331, %1330 ], [ %1313, %1312 ], [ %1295, %1294 ], [ %1277, %1276 ], [ %1259, %1258 ], [ %1241, %1240 ], [ %1223, %1222 ], [ %1205, %1204 ], [ %1187, %1186 ], [ %1169, %1168 ], [ %1151, %1150 ], [ %1133, %1132 ], [ %1117, %1115 ]
  %1370 = icmp ult i8 %1369, 4
  br i1 %1370, label %1421, label %1371

1371:                                             ; preds = %1368
  %1372 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 93
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %292) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %292, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %293) #8
  store i8 0, ptr %293, align 1, !annotation !8
  %1373 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull %292, i32 noundef 100, i1 noundef zeroext %2) #8
  %1374 = icmp slt i32 %1373, 0
  br i1 %1374, label %1385, label %1375

1375:                                             ; preds = %1371
  %1376 = call ptr @strim(ptr noundef nonnull %292) #8
  %1377 = call i32 @kstrtou8(ptr noundef %1376, i32 noundef 0, ptr noundef nonnull %293) #8
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1381, label %1379

1379:                                             ; preds = %1375
  %1380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef nonnull %292, i32 noundef %1377) #9
  br label %1385

1381:                                             ; preds = %1375
  %1382 = load i8, ptr %293, align 1
  %1383 = icmp eq i8 %1382, 15
  br i1 %1383, label %1385, label %1384

1384:                                             ; preds = %1381
  store i8 %1382, ptr %1372, align 1
  br label %1385

1385:                                             ; preds = %1384, %1381, %1379, %1371
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %293) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %292) #8
  %1386 = load i8, ptr %0, align 4
  %1387 = icmp ult i8 %1386, 4
  br i1 %1387, label %1421, label %1388

1388:                                             ; preds = %1385
  %1389 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 94
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %290) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %290, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %291) #8
  store i8 0, ptr %291, align 1, !annotation !8
  %1390 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull %290, i32 noundef 100, i1 noundef zeroext %2) #8
  %1391 = icmp slt i32 %1390, 0
  br i1 %1391, label %1402, label %1392

1392:                                             ; preds = %1388
  %1393 = call ptr @strim(ptr noundef nonnull %290) #8
  %1394 = call i32 @kstrtou8(ptr noundef %1393, i32 noundef 0, ptr noundef nonnull %291) #8
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1398, label %1396

1396:                                             ; preds = %1392
  %1397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef nonnull %290, i32 noundef %1394) #9
  br label %1402

1398:                                             ; preds = %1392
  %1399 = load i8, ptr %291, align 1
  %1400 = icmp eq i8 %1399, 15
  br i1 %1400, label %1402, label %1401

1401:                                             ; preds = %1398
  store i8 %1399, ptr %1389, align 1
  br label %1402

1402:                                             ; preds = %1401, %1398, %1396, %1388
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %291) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %290) #8
  %1403 = load i8, ptr %0, align 4
  %1404 = icmp ult i8 %1403, 4
  br i1 %1404, label %1421, label %1405

1405:                                             ; preds = %1402
  %1406 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 95
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %288) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %288, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %289) #8
  store i8 0, ptr %289, align 1, !annotation !8
  %1407 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull %288, i32 noundef 100, i1 noundef zeroext %2) #8
  %1408 = icmp slt i32 %1407, 0
  br i1 %1408, label %1419, label %1409

1409:                                             ; preds = %1405
  %1410 = call ptr @strim(ptr noundef nonnull %288) #8
  %1411 = call i32 @kstrtou8(ptr noundef %1410, i32 noundef 0, ptr noundef nonnull %289) #8
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1415, label %1413

1413:                                             ; preds = %1409
  %1414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.100, ptr noundef null, ptr noundef nonnull %288, i32 noundef %1411) #9
  br label %1419

1415:                                             ; preds = %1409
  %1416 = load i8, ptr %289, align 1
  %1417 = icmp eq i8 %1416, -1
  br i1 %1417, label %1419, label %1418

1418:                                             ; preds = %1415
  store i8 %1416, ptr %1406, align 1
  br label %1419

1419:                                             ; preds = %1418, %1415, %1413, %1405
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %289) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %288) #8
  %1420 = load i8, ptr %0, align 4
  br label %1421

1421:                                             ; preds = %1419, %1402, %1385, %1368
  %1422 = phi i8 [ %1386, %1385 ], [ %1420, %1419 ], [ %1403, %1402 ], [ %1369, %1368 ]
  %1423 = zext i8 %1422 to i32
  %1424 = shl nuw i32 1, %1423
  %1425 = and i32 %1424, 1792
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1605, label %1427

1427:                                             ; preds = %1421
  %1428 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %286) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %286, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %287) #8
  store i8 0, ptr %287, align 1, !annotation !8
  %1429 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull %286, i32 noundef 100, i1 noundef zeroext %2) #8
  %1430 = icmp slt i32 %1429, 0
  br i1 %1430, label %1439, label %1431

1431:                                             ; preds = %1427
  %1432 = call ptr @strim(ptr noundef nonnull %286) #8
  %1433 = call i32 @kstrtou8(ptr noundef %1432, i32 noundef 0, ptr noundef nonnull %287) #8
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1437, label %1435

1435:                                             ; preds = %1431
  %1436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef nonnull %286, i32 noundef %1433) #9
  br label %1439

1437:                                             ; preds = %1431
  %1438 = load i8, ptr %287, align 1
  store i8 %1438, ptr %1428, align 1
  br label %1439

1439:                                             ; preds = %1437, %1435, %1427
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %287) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %286) #8
  %1440 = load i8, ptr %0, align 4
  %1441 = zext i8 %1440 to i32
  %1442 = shl nuw i32 1, %1441
  %1443 = and i32 %1442, 1792
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1605, label %1445

1445:                                             ; preds = %1439
  %1446 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %284) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %284, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %285) #8
  store i8 0, ptr %285, align 1, !annotation !8
  %1447 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull %284, i32 noundef 100, i1 noundef zeroext %2) #8
  %1448 = icmp slt i32 %1447, 0
  br i1 %1448, label %1457, label %1449

1449:                                             ; preds = %1445
  %1450 = call ptr @strim(ptr noundef nonnull %284) #8
  %1451 = call i32 @kstrtou8(ptr noundef %1450, i32 noundef 0, ptr noundef nonnull %285) #8
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1455, label %1453

1453:                                             ; preds = %1449
  %1454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef nonnull %284, i32 noundef %1451) #9
  br label %1457

1455:                                             ; preds = %1449
  %1456 = load i8, ptr %285, align 1
  store i8 %1456, ptr %1446, align 1
  br label %1457

1457:                                             ; preds = %1455, %1453, %1445
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %285) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %284) #8
  %1458 = load i8, ptr %0, align 4
  %1459 = zext i8 %1458 to i32
  %1460 = shl nuw i32 1, %1459
  %1461 = and i32 %1460, 1792
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1605, label %1463

1463:                                             ; preds = %1457
  %1464 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %282) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %282, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %283) #8
  store i8 0, ptr %283, align 1, !annotation !8
  %1465 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull %282, i32 noundef 100, i1 noundef zeroext %2) #8
  %1466 = icmp slt i32 %1465, 0
  br i1 %1466, label %1475, label %1467

1467:                                             ; preds = %1463
  %1468 = call ptr @strim(ptr noundef nonnull %282) #8
  %1469 = call i32 @kstrtou8(ptr noundef %1468, i32 noundef 0, ptr noundef nonnull %283) #8
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1473, label %1471

1471:                                             ; preds = %1467
  %1472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef nonnull %282, i32 noundef %1469) #9
  br label %1475

1473:                                             ; preds = %1467
  %1474 = load i8, ptr %283, align 1
  store i8 %1474, ptr %1464, align 1
  br label %1475

1475:                                             ; preds = %1473, %1471, %1463
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %283) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %282) #8
  %1476 = load i8, ptr %0, align 4
  %1477 = zext i8 %1476 to i32
  %1478 = shl nuw i32 1, %1477
  %1479 = and i32 %1478, 1792
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1605, label %1481

1481:                                             ; preds = %1475
  %1482 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %280) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %280, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %281) #8
  store i8 0, ptr %281, align 1, !annotation !8
  %1483 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull %280, i32 noundef 100, i1 noundef zeroext %2) #8
  %1484 = icmp slt i32 %1483, 0
  br i1 %1484, label %1493, label %1485

1485:                                             ; preds = %1481
  %1486 = call ptr @strim(ptr noundef nonnull %280) #8
  %1487 = call i32 @kstrtou8(ptr noundef %1486, i32 noundef 0, ptr noundef nonnull %281) #8
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1491, label %1489

1489:                                             ; preds = %1485
  %1490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef nonnull %280, i32 noundef %1487) #9
  br label %1493

1491:                                             ; preds = %1485
  %1492 = load i8, ptr %281, align 1
  store i8 %1492, ptr %1482, align 1
  br label %1493

1493:                                             ; preds = %1491, %1489, %1481
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %281) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %280) #8
  %1494 = load i8, ptr %0, align 4
  %1495 = zext i8 %1494 to i32
  %1496 = shl nuw i32 1, %1495
  %1497 = and i32 %1496, 1792
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1605, label %1499

1499:                                             ; preds = %1493
  %1500 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %278) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %278, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %279) #8
  store i8 0, ptr %279, align 1, !annotation !8
  %1501 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull %278, i32 noundef 100, i1 noundef zeroext %2) #8
  %1502 = icmp slt i32 %1501, 0
  br i1 %1502, label %1511, label %1503

1503:                                             ; preds = %1499
  %1504 = call ptr @strim(ptr noundef nonnull %278) #8
  %1505 = call i32 @kstrtou8(ptr noundef %1504, i32 noundef 0, ptr noundef nonnull %279) #8
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1509, label %1507

1507:                                             ; preds = %1503
  %1508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef nonnull %278, i32 noundef %1505) #9
  br label %1511

1509:                                             ; preds = %1503
  %1510 = load i8, ptr %279, align 1
  store i8 %1510, ptr %1500, align 1
  br label %1511

1511:                                             ; preds = %1509, %1507, %1499
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %279) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %278) #8
  %1512 = load i8, ptr %0, align 4
  %1513 = zext i8 %1512 to i32
  %1514 = shl nuw i32 1, %1513
  %1515 = and i32 %1514, 1792
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1605, label %1517

1517:                                             ; preds = %1511
  %1518 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %276) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %276, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %277) #8
  store i8 0, ptr %277, align 1, !annotation !8
  %1519 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull %276, i32 noundef 100, i1 noundef zeroext %2) #8
  %1520 = icmp slt i32 %1519, 0
  br i1 %1520, label %1529, label %1521

1521:                                             ; preds = %1517
  %1522 = call ptr @strim(ptr noundef nonnull %276) #8
  %1523 = call i32 @kstrtou8(ptr noundef %1522, i32 noundef 0, ptr noundef nonnull %277) #8
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1527, label %1525

1525:                                             ; preds = %1521
  %1526 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef nonnull %276, i32 noundef %1523) #9
  br label %1529

1527:                                             ; preds = %1521
  %1528 = load i8, ptr %277, align 1
  store i8 %1528, ptr %1518, align 1
  br label %1529

1529:                                             ; preds = %1527, %1525, %1517
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %277) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %276) #8
  %1530 = load i8, ptr %0, align 4
  %1531 = zext i8 %1530 to i32
  %1532 = shl nuw i32 1, %1531
  %1533 = and i32 %1532, 1792
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1605, label %1535

1535:                                             ; preds = %1529
  %1536 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %274) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %274, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %275) #8
  store i8 0, ptr %275, align 1, !annotation !8
  %1537 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull %274, i32 noundef 100, i1 noundef zeroext %2) #8
  %1538 = icmp slt i32 %1537, 0
  br i1 %1538, label %1547, label %1539

1539:                                             ; preds = %1535
  %1540 = call ptr @strim(ptr noundef nonnull %274) #8
  %1541 = call i32 @kstrtou8(ptr noundef %1540, i32 noundef 0, ptr noundef nonnull %275) #8
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1545, label %1543

1543:                                             ; preds = %1539
  %1544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef nonnull %274, i32 noundef %1541) #9
  br label %1547

1545:                                             ; preds = %1539
  %1546 = load i8, ptr %275, align 1
  store i8 %1546, ptr %1536, align 1
  br label %1547

1547:                                             ; preds = %1545, %1543, %1535
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %275) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %274) #8
  %1548 = load i8, ptr %0, align 4
  %1549 = zext i8 %1548 to i32
  %1550 = shl nuw i32 1, %1549
  %1551 = and i32 %1550, 1792
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1605, label %1553

1553:                                             ; preds = %1547
  %1554 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %272) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %272, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %273) #8
  store i8 0, ptr %273, align 1, !annotation !8
  %1555 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull %272, i32 noundef 100, i1 noundef zeroext %2) #8
  %1556 = icmp slt i32 %1555, 0
  br i1 %1556, label %1565, label %1557

1557:                                             ; preds = %1553
  %1558 = call ptr @strim(ptr noundef nonnull %272) #8
  %1559 = call i32 @kstrtou8(ptr noundef %1558, i32 noundef 0, ptr noundef nonnull %273) #8
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1563, label %1561

1561:                                             ; preds = %1557
  %1562 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef nonnull %272, i32 noundef %1559) #9
  br label %1565

1563:                                             ; preds = %1557
  %1564 = load i8, ptr %273, align 1
  store i8 %1564, ptr %1554, align 1
  br label %1565

1565:                                             ; preds = %1563, %1561, %1553
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %273) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %272) #8
  %1566 = load i8, ptr %0, align 4
  %1567 = zext i8 %1566 to i32
  %1568 = shl nuw i32 1, %1567
  %1569 = and i32 %1568, 1792
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1605, label %1571

1571:                                             ; preds = %1565
  %1572 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %270) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %270, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %271) #8
  store i8 0, ptr %271, align 1, !annotation !8
  %1573 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull %270, i32 noundef 100, i1 noundef zeroext %2) #8
  %1574 = icmp slt i32 %1573, 0
  br i1 %1574, label %1583, label %1575

1575:                                             ; preds = %1571
  %1576 = call ptr @strim(ptr noundef nonnull %270) #8
  %1577 = call i32 @kstrtou8(ptr noundef %1576, i32 noundef 0, ptr noundef nonnull %271) #8
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1581, label %1579

1579:                                             ; preds = %1575
  %1580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef nonnull %270, i32 noundef %1577) #9
  br label %1583

1581:                                             ; preds = %1575
  %1582 = load i8, ptr %271, align 1
  store i8 %1582, ptr %1572, align 1
  br label %1583

1583:                                             ; preds = %1581, %1579, %1571
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %271) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %270) #8
  %1584 = load i8, ptr %0, align 4
  %1585 = zext i8 %1584 to i32
  %1586 = shl nuw i32 1, %1585
  %1587 = and i32 %1586, 1792
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1605, label %1589

1589:                                             ; preds = %1583
  %1590 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 76, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %268) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %268, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %269) #8
  store i8 0, ptr %269, align 1, !annotation !8
  %1591 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull %268, i32 noundef 100, i1 noundef zeroext %2) #8
  %1592 = icmp slt i32 %1591, 0
  br i1 %1592, label %1601, label %1593

1593:                                             ; preds = %1589
  %1594 = call ptr @strim(ptr noundef nonnull %268) #8
  %1595 = call i32 @kstrtou8(ptr noundef %1594, i32 noundef 0, ptr noundef nonnull %269) #8
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1599, label %1597

1597:                                             ; preds = %1593
  %1598 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef nonnull %268, i32 noundef %1595) #9
  br label %1601

1599:                                             ; preds = %1593
  %1600 = load i8, ptr %269, align 1
  store i8 %1600, ptr %1590, align 1
  br label %1601

1601:                                             ; preds = %1599, %1597, %1589
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %269) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %268) #8
  %1602 = load i8, ptr %0, align 4
  %1603 = zext i8 %1602 to i32
  %1604 = shl nuw i32 1, %1603
  br label %1605

1605:                                             ; preds = %1601, %1583, %1565, %1547, %1529, %1511, %1493, %1475, %1457, %1439, %1421
  %1606 = phi i32 [ %1604, %1601 ], [ %1586, %1583 ], [ %1568, %1565 ], [ %1550, %1547 ], [ %1532, %1529 ], [ %1514, %1511 ], [ %1496, %1493 ], [ %1478, %1475 ], [ %1460, %1457 ], [ %1442, %1439 ], [ %1424, %1421 ]
  %1607 = phi i8 [ %1602, %1601 ], [ %1584, %1583 ], [ %1566, %1565 ], [ %1548, %1547 ], [ %1530, %1529 ], [ %1512, %1511 ], [ %1494, %1493 ], [ %1476, %1475 ], [ %1458, %1457 ], [ %1440, %1439 ], [ %1422, %1421 ]
  %1608 = and i32 %1606, 240
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1894, label %1610

1610:                                             ; preds = %1605
  %1611 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 48
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %266) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %266, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %267) #8
  store i8 0, ptr %267, align 1, !annotation !8
  %1612 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull %266, i32 noundef 100, i1 noundef zeroext %2) #8
  %1613 = icmp slt i32 %1612, 0
  br i1 %1613, label %1622, label %1614

1614:                                             ; preds = %1610
  %1615 = call ptr @strim(ptr noundef nonnull %266) #8
  %1616 = call i32 @kstrtou8(ptr noundef %1615, i32 noundef 0, ptr noundef nonnull %267) #8
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1620, label %1618

1618:                                             ; preds = %1614
  %1619 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef nonnull %266, i32 noundef %1616) #9
  br label %1622

1620:                                             ; preds = %1614
  %1621 = load i8, ptr %267, align 1
  store i8 %1621, ptr %1611, align 1
  br label %1622

1622:                                             ; preds = %1620, %1618, %1610
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %267) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %266) #8
  %1623 = load i8, ptr %0, align 4
  %1624 = zext i8 %1623 to i32
  %1625 = shl nuw i32 1, %1624
  %1626 = and i32 %1625, 240
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1894, label %1628

1628:                                             ; preds = %1622
  %1629 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 48, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %264) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %264, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %265) #8
  store i8 0, ptr %265, align 1, !annotation !8
  %1630 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull %264, i32 noundef 100, i1 noundef zeroext %2) #8
  %1631 = icmp slt i32 %1630, 0
  br i1 %1631, label %1640, label %1632

1632:                                             ; preds = %1628
  %1633 = call ptr @strim(ptr noundef nonnull %264) #8
  %1634 = call i32 @kstrtou8(ptr noundef %1633, i32 noundef 0, ptr noundef nonnull %265) #8
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1638, label %1636

1636:                                             ; preds = %1632
  %1637 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef nonnull %264, i32 noundef %1634) #9
  br label %1640

1638:                                             ; preds = %1632
  %1639 = load i8, ptr %265, align 1
  store i8 %1639, ptr %1629, align 1
  br label %1640

1640:                                             ; preds = %1638, %1636, %1628
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %265) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %264) #8
  %1641 = load i8, ptr %0, align 4
  %1642 = zext i8 %1641 to i32
  %1643 = shl nuw i32 1, %1642
  %1644 = and i32 %1643, 240
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1894, label %1646

1646:                                             ; preds = %1640
  %1647 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 48, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %262) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %262, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %263) #8
  store i8 0, ptr %263, align 1, !annotation !8
  %1648 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull %262, i32 noundef 100, i1 noundef zeroext %2) #8
  %1649 = icmp slt i32 %1648, 0
  br i1 %1649, label %1658, label %1650

1650:                                             ; preds = %1646
  %1651 = call ptr @strim(ptr noundef nonnull %262) #8
  %1652 = call i32 @kstrtou8(ptr noundef %1651, i32 noundef 0, ptr noundef nonnull %263) #8
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1656, label %1654

1654:                                             ; preds = %1650
  %1655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef nonnull %262, i32 noundef %1652) #9
  br label %1658

1656:                                             ; preds = %1650
  %1657 = load i8, ptr %263, align 1
  store i8 %1657, ptr %1647, align 1
  br label %1658

1658:                                             ; preds = %1656, %1654, %1646
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %263) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %262) #8
  %1659 = load i8, ptr %0, align 4
  %1660 = zext i8 %1659 to i32
  %1661 = shl nuw i32 1, %1660
  %1662 = and i32 %1661, 240
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1894, label %1664

1664:                                             ; preds = %1658
  %1665 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 48, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %260) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %260, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %261) #8
  store i8 0, ptr %261, align 1, !annotation !8
  %1666 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull %260, i32 noundef 100, i1 noundef zeroext %2) #8
  %1667 = icmp slt i32 %1666, 0
  br i1 %1667, label %1676, label %1668

1668:                                             ; preds = %1664
  %1669 = call ptr @strim(ptr noundef nonnull %260) #8
  %1670 = call i32 @kstrtou8(ptr noundef %1669, i32 noundef 0, ptr noundef nonnull %261) #8
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1674, label %1672

1672:                                             ; preds = %1668
  %1673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef nonnull %260, i32 noundef %1670) #9
  br label %1676

1674:                                             ; preds = %1668
  %1675 = load i8, ptr %261, align 1
  store i8 %1675, ptr %1665, align 1
  br label %1676

1676:                                             ; preds = %1674, %1672, %1664
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %261) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %260) #8
  %1677 = load i8, ptr %0, align 4
  %1678 = zext i8 %1677 to i32
  %1679 = shl nuw i32 1, %1678
  %1680 = and i32 %1679, 240
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1894, label %1682

1682:                                             ; preds = %1676
  %1683 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 50
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %258) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %258, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %259) #8
  store i8 0, ptr %259, align 1, !annotation !8
  %1684 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull %258, i32 noundef 100, i1 noundef zeroext %2) #8
  %1685 = icmp slt i32 %1684, 0
  br i1 %1685, label %1694, label %1686

1686:                                             ; preds = %1682
  %1687 = call ptr @strim(ptr noundef nonnull %258) #8
  %1688 = call i32 @kstrtou8(ptr noundef %1687, i32 noundef 0, ptr noundef nonnull %259) #8
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1692, label %1690

1690:                                             ; preds = %1686
  %1691 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.115, ptr noundef null, ptr noundef nonnull %258, i32 noundef %1688) #9
  br label %1694

1692:                                             ; preds = %1686
  %1693 = load i8, ptr %259, align 1
  store i8 %1693, ptr %1683, align 1
  br label %1694

1694:                                             ; preds = %1692, %1690, %1682
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %259) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %258) #8
  %1695 = load i8, ptr %0, align 4
  %1696 = zext i8 %1695 to i32
  %1697 = shl nuw i32 1, %1696
  %1698 = and i32 %1697, 240
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1894, label %1700

1700:                                             ; preds = %1694
  %1701 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 50, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %256) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %256, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %257) #8
  store i8 0, ptr %257, align 1, !annotation !8
  %1702 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull %256, i32 noundef 100, i1 noundef zeroext %2) #8
  %1703 = icmp slt i32 %1702, 0
  br i1 %1703, label %1712, label %1704

1704:                                             ; preds = %1700
  %1705 = call ptr @strim(ptr noundef nonnull %256) #8
  %1706 = call i32 @kstrtou8(ptr noundef %1705, i32 noundef 0, ptr noundef nonnull %257) #8
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1710, label %1708

1708:                                             ; preds = %1704
  %1709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef nonnull %256, i32 noundef %1706) #9
  br label %1712

1710:                                             ; preds = %1704
  %1711 = load i8, ptr %257, align 1
  store i8 %1711, ptr %1701, align 1
  br label %1712

1712:                                             ; preds = %1710, %1708, %1700
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %257) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %256) #8
  %1713 = load i8, ptr %0, align 4
  %1714 = zext i8 %1713 to i32
  %1715 = shl nuw i32 1, %1714
  %1716 = and i32 %1715, 240
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1894, label %1718

1718:                                             ; preds = %1712
  %1719 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 50, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %254) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %254, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %255) #8
  store i8 0, ptr %255, align 1, !annotation !8
  %1720 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull %254, i32 noundef 100, i1 noundef zeroext %2) #8
  %1721 = icmp slt i32 %1720, 0
  br i1 %1721, label %1730, label %1722

1722:                                             ; preds = %1718
  %1723 = call ptr @strim(ptr noundef nonnull %254) #8
  %1724 = call i32 @kstrtou8(ptr noundef %1723, i32 noundef 0, ptr noundef nonnull %255) #8
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %1728, label %1726

1726:                                             ; preds = %1722
  %1727 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.117, ptr noundef null, ptr noundef nonnull %254, i32 noundef %1724) #9
  br label %1730

1728:                                             ; preds = %1722
  %1729 = load i8, ptr %255, align 1
  store i8 %1729, ptr %1719, align 1
  br label %1730

1730:                                             ; preds = %1728, %1726, %1718
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %255) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %254) #8
  %1731 = load i8, ptr %0, align 4
  %1732 = zext i8 %1731 to i32
  %1733 = shl nuw i32 1, %1732
  %1734 = and i32 %1733, 240
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %1894, label %1736

1736:                                             ; preds = %1730
  %1737 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 50, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %252) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %252, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %253) #8
  store i8 0, ptr %253, align 1, !annotation !8
  %1738 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull %252, i32 noundef 100, i1 noundef zeroext %2) #8
  %1739 = icmp slt i32 %1738, 0
  br i1 %1739, label %1748, label %1740

1740:                                             ; preds = %1736
  %1741 = call ptr @strim(ptr noundef nonnull %252) #8
  %1742 = call i32 @kstrtou8(ptr noundef %1741, i32 noundef 0, ptr noundef nonnull %253) #8
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1746, label %1744

1744:                                             ; preds = %1740
  %1745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef nonnull %252, i32 noundef %1742) #9
  br label %1748

1746:                                             ; preds = %1740
  %1747 = load i8, ptr %253, align 1
  store i8 %1747, ptr %1737, align 1
  br label %1748

1748:                                             ; preds = %1746, %1744, %1736
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %253) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %252) #8
  %1749 = load i8, ptr %0, align 4
  %1750 = zext i8 %1749 to i32
  %1751 = shl nuw i32 1, %1750
  %1752 = and i32 %1751, 240
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1894, label %1754

1754:                                             ; preds = %1748
  %1755 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 49
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %250) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %250, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %251) #8
  store i8 0, ptr %251, align 1, !annotation !8
  %1756 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull %250, i32 noundef 100, i1 noundef zeroext %2) #8
  %1757 = icmp slt i32 %1756, 0
  br i1 %1757, label %1766, label %1758

1758:                                             ; preds = %1754
  %1759 = call ptr @strim(ptr noundef nonnull %250) #8
  %1760 = call i32 @kstrtou8(ptr noundef %1759, i32 noundef 0, ptr noundef nonnull %251) #8
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1764, label %1762

1762:                                             ; preds = %1758
  %1763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef nonnull %250, i32 noundef %1760) #9
  br label %1766

1764:                                             ; preds = %1758
  %1765 = load i8, ptr %251, align 1
  store i8 %1765, ptr %1755, align 1
  br label %1766

1766:                                             ; preds = %1764, %1762, %1754
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %251) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %250) #8
  %1767 = load i8, ptr %0, align 4
  %1768 = zext i8 %1767 to i32
  %1769 = shl nuw i32 1, %1768
  %1770 = and i32 %1769, 240
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %1894, label %1772

1772:                                             ; preds = %1766
  %1773 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 49, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %248) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %248, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %249) #8
  store i8 0, ptr %249, align 1, !annotation !8
  %1774 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull %248, i32 noundef 100, i1 noundef zeroext %2) #8
  %1775 = icmp slt i32 %1774, 0
  br i1 %1775, label %1784, label %1776

1776:                                             ; preds = %1772
  %1777 = call ptr @strim(ptr noundef nonnull %248) #8
  %1778 = call i32 @kstrtou8(ptr noundef %1777, i32 noundef 0, ptr noundef nonnull %249) #8
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1782, label %1780

1780:                                             ; preds = %1776
  %1781 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.120, ptr noundef null, ptr noundef nonnull %248, i32 noundef %1778) #9
  br label %1784

1782:                                             ; preds = %1776
  %1783 = load i8, ptr %249, align 1
  store i8 %1783, ptr %1773, align 1
  br label %1784

1784:                                             ; preds = %1782, %1780, %1772
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %249) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %248) #8
  %1785 = load i8, ptr %0, align 4
  %1786 = zext i8 %1785 to i32
  %1787 = shl nuw i32 1, %1786
  %1788 = and i32 %1787, 240
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1894, label %1790

1790:                                             ; preds = %1784
  %1791 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 49, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %246) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %246, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %247) #8
  store i8 0, ptr %247, align 1, !annotation !8
  %1792 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull %246, i32 noundef 100, i1 noundef zeroext %2) #8
  %1793 = icmp slt i32 %1792, 0
  br i1 %1793, label %1802, label %1794

1794:                                             ; preds = %1790
  %1795 = call ptr @strim(ptr noundef nonnull %246) #8
  %1796 = call i32 @kstrtou8(ptr noundef %1795, i32 noundef 0, ptr noundef nonnull %247) #8
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1800, label %1798

1798:                                             ; preds = %1794
  %1799 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef nonnull %246, i32 noundef %1796) #9
  br label %1802

1800:                                             ; preds = %1794
  %1801 = load i8, ptr %247, align 1
  store i8 %1801, ptr %1791, align 1
  br label %1802

1802:                                             ; preds = %1800, %1798, %1790
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %247) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %246) #8
  %1803 = load i8, ptr %0, align 4
  %1804 = zext i8 %1803 to i32
  %1805 = shl nuw i32 1, %1804
  %1806 = and i32 %1805, 240
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %1894, label %1808

1808:                                             ; preds = %1802
  %1809 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 49, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %244) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %244, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %245) #8
  store i8 0, ptr %245, align 1, !annotation !8
  %1810 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull %244, i32 noundef 100, i1 noundef zeroext %2) #8
  %1811 = icmp slt i32 %1810, 0
  br i1 %1811, label %1820, label %1812

1812:                                             ; preds = %1808
  %1813 = call ptr @strim(ptr noundef nonnull %244) #8
  %1814 = call i32 @kstrtou8(ptr noundef %1813, i32 noundef 0, ptr noundef nonnull %245) #8
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1818, label %1816

1816:                                             ; preds = %1812
  %1817 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef nonnull %244, i32 noundef %1814) #9
  br label %1820

1818:                                             ; preds = %1812
  %1819 = load i8, ptr %245, align 1
  store i8 %1819, ptr %1809, align 1
  br label %1820

1820:                                             ; preds = %1818, %1816, %1808
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %245) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %244) #8
  %1821 = load i8, ptr %0, align 4
  %1822 = zext i8 %1821 to i32
  %1823 = shl nuw i32 1, %1822
  %1824 = and i32 %1823, 240
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1894, label %1826

1826:                                             ; preds = %1820
  %1827 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 51
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %242) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %242, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %243) #8
  store i8 0, ptr %243, align 1, !annotation !8
  %1828 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull %242, i32 noundef 100, i1 noundef zeroext %2) #8
  %1829 = icmp slt i32 %1828, 0
  br i1 %1829, label %1838, label %1830

1830:                                             ; preds = %1826
  %1831 = call ptr @strim(ptr noundef nonnull %242) #8
  %1832 = call i32 @kstrtou8(ptr noundef %1831, i32 noundef 0, ptr noundef nonnull %243) #8
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1836, label %1834

1834:                                             ; preds = %1830
  %1835 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef nonnull %242, i32 noundef %1832) #9
  br label %1838

1836:                                             ; preds = %1830
  %1837 = load i8, ptr %243, align 1
  store i8 %1837, ptr %1827, align 1
  br label %1838

1838:                                             ; preds = %1836, %1834, %1826
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %243) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %242) #8
  %1839 = load i8, ptr %0, align 4
  %1840 = zext i8 %1839 to i32
  %1841 = shl nuw i32 1, %1840
  %1842 = and i32 %1841, 240
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1894, label %1844

1844:                                             ; preds = %1838
  %1845 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 51, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %240) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %240, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %241) #8
  store i8 0, ptr %241, align 1, !annotation !8
  %1846 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull %240, i32 noundef 100, i1 noundef zeroext %2) #8
  %1847 = icmp slt i32 %1846, 0
  br i1 %1847, label %1856, label %1848

1848:                                             ; preds = %1844
  %1849 = call ptr @strim(ptr noundef nonnull %240) #8
  %1850 = call i32 @kstrtou8(ptr noundef %1849, i32 noundef 0, ptr noundef nonnull %241) #8
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1854, label %1852

1852:                                             ; preds = %1848
  %1853 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.124, ptr noundef null, ptr noundef nonnull %240, i32 noundef %1850) #9
  br label %1856

1854:                                             ; preds = %1848
  %1855 = load i8, ptr %241, align 1
  store i8 %1855, ptr %1845, align 1
  br label %1856

1856:                                             ; preds = %1854, %1852, %1844
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %241) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %240) #8
  %1857 = load i8, ptr %0, align 4
  %1858 = zext i8 %1857 to i32
  %1859 = shl nuw i32 1, %1858
  %1860 = and i32 %1859, 240
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %1894, label %1862

1862:                                             ; preds = %1856
  %1863 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 51, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %238) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %238, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %239) #8
  store i8 0, ptr %239, align 1, !annotation !8
  %1864 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull %238, i32 noundef 100, i1 noundef zeroext %2) #8
  %1865 = icmp slt i32 %1864, 0
  br i1 %1865, label %1874, label %1866

1866:                                             ; preds = %1862
  %1867 = call ptr @strim(ptr noundef nonnull %238) #8
  %1868 = call i32 @kstrtou8(ptr noundef %1867, i32 noundef 0, ptr noundef nonnull %239) #8
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1872, label %1870

1870:                                             ; preds = %1866
  %1871 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef nonnull %238, i32 noundef %1868) #9
  br label %1874

1872:                                             ; preds = %1866
  %1873 = load i8, ptr %239, align 1
  store i8 %1873, ptr %1863, align 1
  br label %1874

1874:                                             ; preds = %1872, %1870, %1862
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %239) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %238) #8
  %1875 = load i8, ptr %0, align 4
  %1876 = zext i8 %1875 to i32
  %1877 = shl nuw i32 1, %1876
  %1878 = and i32 %1877, 240
  %1879 = icmp eq i32 %1878, 0
  br i1 %1879, label %1894, label %1880

1880:                                             ; preds = %1874
  %1881 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 51, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %236) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %236, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %237) #8
  store i8 0, ptr %237, align 1, !annotation !8
  %1882 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull %236, i32 noundef 100, i1 noundef zeroext %2) #8
  %1883 = icmp slt i32 %1882, 0
  br i1 %1883, label %1892, label %1884

1884:                                             ; preds = %1880
  %1885 = call ptr @strim(ptr noundef nonnull %236) #8
  %1886 = call i32 @kstrtou8(ptr noundef %1885, i32 noundef 0, ptr noundef nonnull %237) #8
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1890, label %1888

1888:                                             ; preds = %1884
  %1889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef nonnull %236, i32 noundef %1886) #9
  br label %1892

1890:                                             ; preds = %1884
  %1891 = load i8, ptr %237, align 1
  store i8 %1891, ptr %1881, align 1
  br label %1892

1892:                                             ; preds = %1890, %1888, %1880
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %237) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %236) #8
  %1893 = load i8, ptr %0, align 4
  br label %1894

1894:                                             ; preds = %1892, %1874, %1856, %1838, %1820, %1802, %1784, %1766, %1748, %1730, %1712, %1694, %1676, %1658, %1640, %1622, %1605
  %1895 = phi i8 [ %1893, %1892 ], [ %1875, %1874 ], [ %1857, %1856 ], [ %1839, %1838 ], [ %1821, %1820 ], [ %1803, %1802 ], [ %1785, %1784 ], [ %1767, %1766 ], [ %1749, %1748 ], [ %1731, %1730 ], [ %1713, %1712 ], [ %1695, %1694 ], [ %1677, %1676 ], [ %1659, %1658 ], [ %1641, %1640 ], [ %1623, %1622 ], [ %1607, %1605 ]
  %1896 = icmp ult i8 %1895, 8
  br i1 %1896, label %2001, label %1897

1897:                                             ; preds = %1894
  %1898 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 100
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %234) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %234, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %235) #8
  store i8 0, ptr %235, align 1, !annotation !8
  %1899 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull %234, i32 noundef 100, i1 noundef zeroext %2) #8
  %1900 = icmp slt i32 %1899, 0
  br i1 %1900, label %1909, label %1901

1901:                                             ; preds = %1897
  %1902 = call ptr @strim(ptr noundef nonnull %234) #8
  %1903 = call i32 @kstrtou8(ptr noundef %1902, i32 noundef 0, ptr noundef nonnull %235) #8
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1907, label %1905

1905:                                             ; preds = %1901
  %1906 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef nonnull %234, i32 noundef %1903) #9
  br label %1909

1907:                                             ; preds = %1901
  %1908 = load i8, ptr %235, align 1
  store i8 %1908, ptr %1898, align 1
  br label %1909

1909:                                             ; preds = %1907, %1905, %1897
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %235) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %234) #8
  %1910 = load i8, ptr %0, align 4
  %1911 = icmp ult i8 %1910, 8
  br i1 %1911, label %2001, label %1912

1912:                                             ; preds = %1909
  %1913 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 101
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %232) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %232, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %233) #8
  store i8 0, ptr %233, align 1, !annotation !8
  %1914 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull %232, i32 noundef 100, i1 noundef zeroext %2) #8
  %1915 = icmp slt i32 %1914, 0
  br i1 %1915, label %1924, label %1916

1916:                                             ; preds = %1912
  %1917 = call ptr @strim(ptr noundef nonnull %232) #8
  %1918 = call i32 @kstrtou8(ptr noundef %1917, i32 noundef 0, ptr noundef nonnull %233) #8
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %1922, label %1920

1920:                                             ; preds = %1916
  %1921 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef nonnull %232, i32 noundef %1918) #9
  br label %1924

1922:                                             ; preds = %1916
  %1923 = load i8, ptr %233, align 1
  store i8 %1923, ptr %1913, align 1
  br label %1924

1924:                                             ; preds = %1922, %1920, %1912
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %233) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %232) #8
  %1925 = load i8, ptr %0, align 4
  %1926 = icmp ult i8 %1925, 8
  br i1 %1926, label %2001, label %1927

1927:                                             ; preds = %1924
  %1928 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 102
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %230) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %230, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %231) #8
  store i16 0, ptr %231, align 2, !annotation !8
  %1929 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull %230, i32 noundef 100, i1 noundef zeroext %2) #8
  %1930 = icmp slt i32 %1929, 0
  br i1 %1930, label %1939, label %1931

1931:                                             ; preds = %1927
  %1932 = call ptr @strim(ptr noundef nonnull %230) #8
  %1933 = call i32 @kstrtou16(ptr noundef %1932, i32 noundef 0, ptr noundef nonnull %231) #8
  %1934 = icmp eq i32 %1933, 0
  br i1 %1934, label %1937, label %1935

1935:                                             ; preds = %1931
  %1936 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef nonnull %230, i32 noundef %1933) #9
  br label %1939

1937:                                             ; preds = %1931
  %1938 = load i16, ptr %231, align 2
  store i16 %1938, ptr %1928, align 2
  br label %1939

1939:                                             ; preds = %1937, %1935, %1927
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %231) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %230) #8
  %1940 = load i8, ptr %0, align 4
  %1941 = icmp ult i8 %1940, 8
  br i1 %1941, label %2001, label %1942

1942:                                             ; preds = %1939
  %1943 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 103
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %228) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %228, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %229) #8
  store i8 0, ptr %229, align 1, !annotation !8
  %1944 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull %228, i32 noundef 100, i1 noundef zeroext %2) #8
  %1945 = icmp slt i32 %1944, 0
  br i1 %1945, label %1954, label %1946

1946:                                             ; preds = %1942
  %1947 = call ptr @strim(ptr noundef nonnull %228) #8
  %1948 = call i32 @kstrtou8(ptr noundef %1947, i32 noundef 0, ptr noundef nonnull %229) #8
  %1949 = icmp eq i32 %1948, 0
  br i1 %1949, label %1952, label %1950

1950:                                             ; preds = %1946
  %1951 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.130, ptr noundef null, ptr noundef nonnull %228, i32 noundef %1948) #9
  br label %1954

1952:                                             ; preds = %1946
  %1953 = load i8, ptr %229, align 1
  store i8 %1953, ptr %1943, align 1
  br label %1954

1954:                                             ; preds = %1952, %1950, %1942
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %229) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %228) #8
  %1955 = load i8, ptr %0, align 4
  %1956 = icmp ult i8 %1955, 8
  br i1 %1956, label %2001, label %1957

1957:                                             ; preds = %1954
  %1958 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 104
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %226) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %226, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %227) #8
  store i8 0, ptr %227, align 1, !annotation !8
  %1959 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull %226, i32 noundef 100, i1 noundef zeroext %2) #8
  %1960 = icmp slt i32 %1959, 0
  br i1 %1960, label %1969, label %1961

1961:                                             ; preds = %1957
  %1962 = call ptr @strim(ptr noundef nonnull %226) #8
  %1963 = call i32 @kstrtou8(ptr noundef %1962, i32 noundef 0, ptr noundef nonnull %227) #8
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %1967, label %1965

1965:                                             ; preds = %1961
  %1966 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef nonnull %226, i32 noundef %1963) #9
  br label %1969

1967:                                             ; preds = %1961
  %1968 = load i8, ptr %227, align 1
  store i8 %1968, ptr %1958, align 1
  br label %1969

1969:                                             ; preds = %1967, %1965, %1957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %227) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %226) #8
  %1970 = load i8, ptr %0, align 4
  %1971 = icmp ult i8 %1970, 8
  br i1 %1971, label %2001, label %1972

1972:                                             ; preds = %1969
  %1973 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 105
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %224) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %224, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %225) #8
  store i8 0, ptr %225, align 1, !annotation !8
  %1974 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull %224, i32 noundef 100, i1 noundef zeroext %2) #8
  %1975 = icmp slt i32 %1974, 0
  br i1 %1975, label %1984, label %1976

1976:                                             ; preds = %1972
  %1977 = call ptr @strim(ptr noundef nonnull %224) #8
  %1978 = call i32 @kstrtou8(ptr noundef %1977, i32 noundef 0, ptr noundef nonnull %225) #8
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1982, label %1980

1980:                                             ; preds = %1976
  %1981 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef null, ptr noundef nonnull %224, i32 noundef %1978) #9
  br label %1984

1982:                                             ; preds = %1976
  %1983 = load i8, ptr %225, align 1
  store i8 %1983, ptr %1973, align 1
  br label %1984

1984:                                             ; preds = %1982, %1980, %1972
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %225) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %224) #8
  %1985 = load i8, ptr %0, align 4
  %1986 = icmp ult i8 %1985, 8
  br i1 %1986, label %2001, label %1987

1987:                                             ; preds = %1984
  %1988 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 106
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %222) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %222, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %223) #8
  store i8 0, ptr %223, align 1, !annotation !8
  %1989 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull %222, i32 noundef 100, i1 noundef zeroext %2) #8
  %1990 = icmp slt i32 %1989, 0
  br i1 %1990, label %1999, label %1991

1991:                                             ; preds = %1987
  %1992 = call ptr @strim(ptr noundef nonnull %222) #8
  %1993 = call i32 @kstrtou8(ptr noundef %1992, i32 noundef 0, ptr noundef nonnull %223) #8
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %1997, label %1995

1995:                                             ; preds = %1991
  %1996 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.133, ptr noundef null, ptr noundef nonnull %222, i32 noundef %1993) #9
  br label %1999

1997:                                             ; preds = %1991
  %1998 = load i8, ptr %223, align 1
  store i8 %1998, ptr %1988, align 1
  br label %1999

1999:                                             ; preds = %1997, %1995, %1987
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %223) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %222) #8
  %2000 = load i8, ptr %0, align 4
  br label %2001

2001:                                             ; preds = %1999, %1984, %1969, %1954, %1939, %1924, %1909, %1894
  %2002 = phi i8 [ %1910, %1909 ], [ %1925, %1924 ], [ %1955, %1954 ], [ %1940, %1939 ], [ %1970, %1969 ], [ %2000, %1999 ], [ %1985, %1984 ], [ %1895, %1894 ]
  %2003 = zext i8 %2002 to i32
  %2004 = shl nuw i32 1, %2003
  %2005 = and i32 %2004, 1792
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2093, label %2007

2007:                                             ; preds = %2001
  %2008 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 107
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %220) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %220, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %221) #8
  store i8 0, ptr %221, align 1, !annotation !8
  %2009 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull %220, i32 noundef 100, i1 noundef zeroext %2) #8
  %2010 = icmp slt i32 %2009, 0
  br i1 %2010, label %2019, label %2011

2011:                                             ; preds = %2007
  %2012 = call ptr @strim(ptr noundef nonnull %220) #8
  %2013 = call i32 @kstrtou8(ptr noundef %2012, i32 noundef 0, ptr noundef nonnull %221) #8
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2017, label %2015

2015:                                             ; preds = %2011
  %2016 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef null, ptr noundef nonnull %220, i32 noundef %2013) #9
  br label %2019

2017:                                             ; preds = %2011
  %2018 = load i8, ptr %221, align 1
  store i8 %2018, ptr %2008, align 1
  br label %2019

2019:                                             ; preds = %2017, %2015, %2007
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %221) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %220) #8
  %2020 = load i8, ptr %0, align 4
  %2021 = zext i8 %2020 to i32
  %2022 = shl nuw i32 1, %2021
  %2023 = and i32 %2022, 1792
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2093, label %2025

2025:                                             ; preds = %2019
  %2026 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 108
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %218) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %218, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %219) #8
  store i8 0, ptr %219, align 1, !annotation !8
  %2027 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull %218, i32 noundef 100, i1 noundef zeroext %2) #8
  %2028 = icmp slt i32 %2027, 0
  br i1 %2028, label %2037, label %2029

2029:                                             ; preds = %2025
  %2030 = call ptr @strim(ptr noundef nonnull %218) #8
  %2031 = call i32 @kstrtou8(ptr noundef %2030, i32 noundef 0, ptr noundef nonnull %219) #8
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2035, label %2033

2033:                                             ; preds = %2029
  %2034 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef nonnull %218, i32 noundef %2031) #9
  br label %2037

2035:                                             ; preds = %2029
  %2036 = load i8, ptr %219, align 1
  store i8 %2036, ptr %2026, align 1
  br label %2037

2037:                                             ; preds = %2035, %2033, %2025
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %219) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %218) #8
  %2038 = load i8, ptr %0, align 4
  %2039 = zext i8 %2038 to i32
  %2040 = shl nuw i32 1, %2039
  %2041 = and i32 %2040, 1792
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2093, label %2043

2043:                                             ; preds = %2037
  %2044 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 109
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %216) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %216, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %217) #8
  store i8 0, ptr %217, align 1, !annotation !8
  %2045 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %216, i32 noundef 100, i1 noundef zeroext %2) #8
  %2046 = icmp slt i32 %2045, 0
  br i1 %2046, label %2055, label %2047

2047:                                             ; preds = %2043
  %2048 = call ptr @strim(ptr noundef nonnull %216) #8
  %2049 = call i32 @kstrtou8(ptr noundef %2048, i32 noundef 0, ptr noundef nonnull %217) #8
  %2050 = icmp eq i32 %2049, 0
  br i1 %2050, label %2053, label %2051

2051:                                             ; preds = %2047
  %2052 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef nonnull %216, i32 noundef %2049) #9
  br label %2055

2053:                                             ; preds = %2047
  %2054 = load i8, ptr %217, align 1
  store i8 %2054, ptr %2044, align 1
  br label %2055

2055:                                             ; preds = %2053, %2051, %2043
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %217) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %216) #8
  %2056 = load i8, ptr %0, align 4
  %2057 = zext i8 %2056 to i32
  %2058 = shl nuw i32 1, %2057
  %2059 = and i32 %2058, 1792
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2093, label %2061

2061:                                             ; preds = %2055
  %2062 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 110
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %214) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %214, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %215) #8
  store i8 0, ptr %215, align 1, !annotation !8
  %2063 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull %214, i32 noundef 100, i1 noundef zeroext %2) #8
  %2064 = icmp slt i32 %2063, 0
  br i1 %2064, label %2073, label %2065

2065:                                             ; preds = %2061
  %2066 = call ptr @strim(ptr noundef nonnull %214) #8
  %2067 = call i32 @kstrtou8(ptr noundef %2066, i32 noundef 0, ptr noundef nonnull %215) #8
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2071, label %2069

2069:                                             ; preds = %2065
  %2070 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.137, ptr noundef null, ptr noundef nonnull %214, i32 noundef %2067) #9
  br label %2073

2071:                                             ; preds = %2065
  %2072 = load i8, ptr %215, align 1
  store i8 %2072, ptr %2062, align 1
  br label %2073

2073:                                             ; preds = %2071, %2069, %2061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %215) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %214) #8
  %2074 = load i8, ptr %0, align 4
  %2075 = zext i8 %2074 to i32
  %2076 = shl nuw i32 1, %2075
  %2077 = and i32 %2076, 1792
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2093, label %2079

2079:                                             ; preds = %2073
  %2080 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 111
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %212) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %212, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %213) #8
  store i8 0, ptr %213, align 1, !annotation !8
  %2081 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull %212, i32 noundef 100, i1 noundef zeroext %2) #8
  %2082 = icmp slt i32 %2081, 0
  br i1 %2082, label %2091, label %2083

2083:                                             ; preds = %2079
  %2084 = call ptr @strim(ptr noundef nonnull %212) #8
  %2085 = call i32 @kstrtou8(ptr noundef %2084, i32 noundef 0, ptr noundef nonnull %213) #8
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2089, label %2087

2087:                                             ; preds = %2083
  %2088 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef nonnull %212, i32 noundef %2085) #9
  br label %2091

2089:                                             ; preds = %2083
  %2090 = load i8, ptr %213, align 1
  store i8 %2090, ptr %2080, align 1
  br label %2091

2091:                                             ; preds = %2089, %2087, %2079
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %213) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %212) #8
  %2092 = load i8, ptr %0, align 4
  br label %2093

2093:                                             ; preds = %2091, %2073, %2055, %2037, %2019, %2001
  %2094 = phi i8 [ %2092, %2091 ], [ %2074, %2073 ], [ %2056, %2055 ], [ %2038, %2037 ], [ %2020, %2019 ], [ %2002, %2001 ]
  %2095 = icmp ult i8 %2094, 8
  br i1 %2095, label %2169, label %2096

2096:                                             ; preds = %2093
  %2097 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 112
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %210) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %210, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %211) #8
  store i8 0, ptr %211, align 1, !annotation !8
  %2098 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull %210, i32 noundef 100, i1 noundef zeroext %2) #8
  %2099 = icmp slt i32 %2098, 0
  br i1 %2099, label %2108, label %2100

2100:                                             ; preds = %2096
  %2101 = call ptr @strim(ptr noundef nonnull %210) #8
  %2102 = call i32 @kstrtou8(ptr noundef %2101, i32 noundef 0, ptr noundef nonnull %211) #8
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2106, label %2104

2104:                                             ; preds = %2100
  %2105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef nonnull %210, i32 noundef %2102) #9
  br label %2108

2106:                                             ; preds = %2100
  %2107 = load i8, ptr %211, align 1
  store i8 %2107, ptr %2097, align 1
  br label %2108

2108:                                             ; preds = %2106, %2104, %2096
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %211) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %210) #8
  %2109 = load i8, ptr %0, align 4
  %2110 = icmp ult i8 %2109, 8
  br i1 %2110, label %2169, label %2111

2111:                                             ; preds = %2108
  %2112 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 113
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %208) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %208, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %209) #8
  store i8 0, ptr %209, align 1, !annotation !8
  %2113 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull %208, i32 noundef 100, i1 noundef zeroext %2) #8
  %2114 = icmp slt i32 %2113, 0
  br i1 %2114, label %2123, label %2115

2115:                                             ; preds = %2111
  %2116 = call ptr @strim(ptr noundef nonnull %208) #8
  %2117 = call i32 @kstrtou8(ptr noundef %2116, i32 noundef 0, ptr noundef nonnull %209) #8
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %2121, label %2119

2119:                                             ; preds = %2115
  %2120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef nonnull %208, i32 noundef %2117) #9
  br label %2123

2121:                                             ; preds = %2115
  %2122 = load i8, ptr %209, align 1
  store i8 %2122, ptr %2112, align 1
  br label %2123

2123:                                             ; preds = %2121, %2119, %2111
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %209) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %208) #8
  %2124 = load i8, ptr %0, align 4
  %2125 = icmp ult i8 %2124, 8
  br i1 %2125, label %2169, label %2126

2126:                                             ; preds = %2123
  %2127 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 114
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %206) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %206, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %207) #8
  store i8 0, ptr %207, align 1, !annotation !8
  %2128 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull %206, i32 noundef 100, i1 noundef zeroext %2) #8
  %2129 = icmp slt i32 %2128, 0
  br i1 %2129, label %2138, label %2130

2130:                                             ; preds = %2126
  %2131 = call ptr @strim(ptr noundef nonnull %206) #8
  %2132 = call i32 @kstrtou8(ptr noundef %2131, i32 noundef 0, ptr noundef nonnull %207) #8
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2136, label %2134

2134:                                             ; preds = %2130
  %2135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef nonnull %206, i32 noundef %2132) #9
  br label %2138

2136:                                             ; preds = %2130
  %2137 = load i8, ptr %207, align 1
  store i8 %2137, ptr %2127, align 1
  br label %2138

2138:                                             ; preds = %2136, %2134, %2126
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %207) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %206) #8
  %2139 = load i8, ptr %0, align 4
  %2140 = icmp ult i8 %2139, 8
  br i1 %2140, label %2169, label %2141

2141:                                             ; preds = %2138
  %2142 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 115
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %204) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %204, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %205) #8
  store i8 0, ptr %205, align 1, !annotation !8
  %2143 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull %204, i32 noundef 100, i1 noundef zeroext %2) #8
  %2144 = icmp slt i32 %2143, 0
  br i1 %2144, label %2153, label %2145

2145:                                             ; preds = %2141
  %2146 = call ptr @strim(ptr noundef nonnull %204) #8
  %2147 = call i32 @kstrtou8(ptr noundef %2146, i32 noundef 0, ptr noundef nonnull %205) #8
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2151, label %2149

2149:                                             ; preds = %2145
  %2150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef nonnull %204, i32 noundef %2147) #9
  br label %2153

2151:                                             ; preds = %2145
  %2152 = load i8, ptr %205, align 1
  store i8 %2152, ptr %2142, align 1
  br label %2153

2153:                                             ; preds = %2151, %2149, %2141
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %205) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %204) #8
  %2154 = load i8, ptr %0, align 4
  %2155 = icmp ult i8 %2154, 8
  br i1 %2155, label %2169, label %2156

2156:                                             ; preds = %2153
  %2157 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 116
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %202) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %202, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %203) #8
  store i8 0, ptr %203, align 1, !annotation !8
  %2158 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull %202, i32 noundef 100, i1 noundef zeroext %2) #8
  %2159 = icmp slt i32 %2158, 0
  br i1 %2159, label %2168, label %2160

2160:                                             ; preds = %2156
  %2161 = call ptr @strim(ptr noundef nonnull %202) #8
  %2162 = call i32 @kstrtou8(ptr noundef %2161, i32 noundef 0, ptr noundef nonnull %203) #8
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %2166, label %2164

2164:                                             ; preds = %2160
  %2165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.143, ptr noundef null, ptr noundef nonnull %202, i32 noundef %2162) #9
  br label %2168

2166:                                             ; preds = %2160
  %2167 = load i8, ptr %203, align 1
  store i8 %2167, ptr %2157, align 1
  br label %2168

2168:                                             ; preds = %2166, %2164, %2156
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %203) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %202) #8
  br label %2169

2169:                                             ; preds = %2168, %2153, %2138, %2123, %2108, %2093
  %2170 = load i8, ptr %0, align 4
  %2171 = zext i8 %2170 to i32
  %2172 = shl nuw i32 1, %2171
  %2173 = and i32 %2172, 496
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2909, label %2175

2175:                                             ; preds = %2169
  %2176 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 62
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %200) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %200, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %201) #8
  store i16 0, ptr %201, align 2, !annotation !8
  %2177 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull %200, i32 noundef 100, i1 noundef zeroext %2) #8
  %2178 = icmp slt i32 %2177, 0
  br i1 %2178, label %2187, label %2179

2179:                                             ; preds = %2175
  %2180 = call ptr @strim(ptr noundef nonnull %200) #8
  %2181 = call i32 @kstrtou16(ptr noundef %2180, i32 noundef 0, ptr noundef nonnull %201) #8
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2185, label %2183

2183:                                             ; preds = %2179
  %2184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.144, ptr noundef null, ptr noundef nonnull %200, i32 noundef %2181) #9
  br label %2187

2185:                                             ; preds = %2179
  %2186 = load i16, ptr %201, align 2
  store i16 %2186, ptr %2176, align 2
  br label %2187

2187:                                             ; preds = %2185, %2183, %2175
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %201) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %200) #8
  %2188 = load i8, ptr %0, align 4
  %2189 = zext i8 %2188 to i32
  %2190 = shl nuw i32 1, %2189
  %2191 = and i32 %2190, 496
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2909, label %2193

2193:                                             ; preds = %2187
  %2194 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 63
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %198) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %198, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %199) #8
  store i32 0, ptr %199, align 4, !annotation !8
  %2195 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull %198, i32 noundef 100, i1 noundef zeroext %2) #8
  %2196 = icmp slt i32 %2195, 0
  br i1 %2196, label %2205, label %2197

2197:                                             ; preds = %2193
  %2198 = call ptr @strim(ptr noundef nonnull %198) #8
  %2199 = call i32 @kstrtouint(ptr noundef %2198, i32 noundef 0, ptr noundef nonnull %199) #8
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2203, label %2201

2201:                                             ; preds = %2197
  %2202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.145, ptr noundef null, ptr noundef nonnull %198, i32 noundef %2199) #9
  br label %2205

2203:                                             ; preds = %2197
  %2204 = load i32, ptr %199, align 4
  store i32 %2204, ptr %2194, align 4
  br label %2205

2205:                                             ; preds = %2203, %2201, %2193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %199) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %198) #8
  %2206 = load i8, ptr %0, align 4
  %2207 = zext i8 %2206 to i32
  %2208 = shl nuw i32 1, %2207
  %2209 = and i32 %2208, 496
  %2210 = icmp eq i32 %2209, 0
  br i1 %2210, label %2909, label %2211

2211:                                             ; preds = %2205
  %2212 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 65
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %196) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %196, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %197) #8
  store i32 0, ptr %197, align 4, !annotation !8
  %2213 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull %196, i32 noundef 100, i1 noundef zeroext %2) #8
  %2214 = icmp slt i32 %2213, 0
  br i1 %2214, label %2223, label %2215

2215:                                             ; preds = %2211
  %2216 = call ptr @strim(ptr noundef nonnull %196) #8
  %2217 = call i32 @kstrtouint(ptr noundef %2216, i32 noundef 0, ptr noundef nonnull %197) #8
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2221, label %2219

2219:                                             ; preds = %2215
  %2220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef nonnull %196, i32 noundef %2217) #9
  br label %2223

2221:                                             ; preds = %2215
  %2222 = load i32, ptr %197, align 4
  store i32 %2222, ptr %2212, align 4
  br label %2223

2223:                                             ; preds = %2221, %2219, %2211
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %197) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %196) #8
  %2224 = load i8, ptr %0, align 4
  %2225 = zext i8 %2224 to i32
  %2226 = shl nuw i32 1, %2225
  %2227 = and i32 %2226, 496
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2909, label %2229

2229:                                             ; preds = %2223
  %2230 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 64
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %194) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %194, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %195) #8
  store i32 0, ptr %195, align 4, !annotation !8
  %2231 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull %194, i32 noundef 100, i1 noundef zeroext %2) #8
  %2232 = icmp slt i32 %2231, 0
  br i1 %2232, label %2241, label %2233

2233:                                             ; preds = %2229
  %2234 = call ptr @strim(ptr noundef nonnull %194) #8
  %2235 = call i32 @kstrtouint(ptr noundef %2234, i32 noundef 0, ptr noundef nonnull %195) #8
  %2236 = icmp eq i32 %2235, 0
  br i1 %2236, label %2239, label %2237

2237:                                             ; preds = %2233
  %2238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef null, ptr noundef nonnull %194, i32 noundef %2235) #9
  br label %2241

2239:                                             ; preds = %2233
  %2240 = load i32, ptr %195, align 4
  store i32 %2240, ptr %2230, align 4
  br label %2241

2241:                                             ; preds = %2239, %2237, %2229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %195) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %194) #8
  %2242 = load i8, ptr %0, align 4
  %2243 = zext i8 %2242 to i32
  %2244 = shl nuw i32 1, %2243
  %2245 = and i32 %2244, 496
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2909, label %2247

2247:                                             ; preds = %2241
  %2248 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 66
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %192) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %192, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %193) #8
  store i32 0, ptr %193, align 4, !annotation !8
  %2249 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull %192, i32 noundef 100, i1 noundef zeroext %2) #8
  %2250 = icmp slt i32 %2249, 0
  br i1 %2250, label %2259, label %2251

2251:                                             ; preds = %2247
  %2252 = call ptr @strim(ptr noundef nonnull %192) #8
  %2253 = call i32 @kstrtouint(ptr noundef %2252, i32 noundef 0, ptr noundef nonnull %193) #8
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %2257, label %2255

2255:                                             ; preds = %2251
  %2256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef null, ptr noundef nonnull %192, i32 noundef %2253) #9
  br label %2259

2257:                                             ; preds = %2251
  %2258 = load i32, ptr %193, align 4
  store i32 %2258, ptr %2248, align 4
  br label %2259

2259:                                             ; preds = %2257, %2255, %2247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %193) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %192) #8
  %2260 = load i8, ptr %0, align 4
  %2261 = zext i8 %2260 to i32
  %2262 = shl nuw i32 1, %2261
  %2263 = and i32 %2262, 496
  %2264 = icmp eq i32 %2263, 0
  br i1 %2264, label %2909, label %2265

2265:                                             ; preds = %2259
  %2266 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 77
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %190) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %190, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %191) #8
  store i16 0, ptr %191, align 2, !annotation !8
  %2267 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull %190, i32 noundef 100, i1 noundef zeroext %2) #8
  %2268 = icmp slt i32 %2267, 0
  br i1 %2268, label %2277, label %2269

2269:                                             ; preds = %2265
  %2270 = call ptr @strim(ptr noundef nonnull %190) #8
  %2271 = call i32 @kstrtou16(ptr noundef %2270, i32 noundef 0, ptr noundef nonnull %191) #8
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2275, label %2273

2273:                                             ; preds = %2269
  %2274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef null, ptr noundef nonnull %190, i32 noundef %2271) #9
  br label %2277

2275:                                             ; preds = %2269
  %2276 = load i16, ptr %191, align 2
  store i16 %2276, ptr %2266, align 2
  br label %2277

2277:                                             ; preds = %2275, %2273, %2265
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %191) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %190) #8
  %2278 = load i8, ptr %0, align 4
  %2279 = zext i8 %2278 to i32
  %2280 = shl nuw i32 1, %2279
  %2281 = and i32 %2280, 496
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2909, label %2283

2283:                                             ; preds = %2277
  %2284 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %188) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %188, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %189) #8
  store i16 0, ptr %189, align 2, !annotation !8
  %2285 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull %188, i32 noundef 100, i1 noundef zeroext %2) #8
  %2286 = icmp slt i32 %2285, 0
  br i1 %2286, label %2295, label %2287

2287:                                             ; preds = %2283
  %2288 = call ptr @strim(ptr noundef nonnull %188) #8
  %2289 = call i32 @kstrtou16(ptr noundef %2288, i32 noundef 0, ptr noundef nonnull %189) #8
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %2293, label %2291

2291:                                             ; preds = %2287
  %2292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef nonnull %188, i32 noundef %2289) #9
  br label %2295

2293:                                             ; preds = %2287
  %2294 = load i16, ptr %189, align 2
  store i16 %2294, ptr %2284, align 2
  br label %2295

2295:                                             ; preds = %2293, %2291, %2283
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %189) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %188) #8
  %2296 = load i8, ptr %0, align 4
  %2297 = zext i8 %2296 to i32
  %2298 = shl nuw i32 1, %2297
  %2299 = and i32 %2298, 496
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2909, label %2301

2301:                                             ; preds = %2295
  %2302 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %186) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %186, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %187) #8
  store i16 0, ptr %187, align 2, !annotation !8
  %2303 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull %186, i32 noundef 100, i1 noundef zeroext %2) #8
  %2304 = icmp slt i32 %2303, 0
  br i1 %2304, label %2313, label %2305

2305:                                             ; preds = %2301
  %2306 = call ptr @strim(ptr noundef nonnull %186) #8
  %2307 = call i32 @kstrtou16(ptr noundef %2306, i32 noundef 0, ptr noundef nonnull %187) #8
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2311, label %2309

2309:                                             ; preds = %2305
  %2310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.151, ptr noundef null, ptr noundef nonnull %186, i32 noundef %2307) #9
  br label %2313

2311:                                             ; preds = %2305
  %2312 = load i16, ptr %187, align 2
  store i16 %2312, ptr %2302, align 2
  br label %2313

2313:                                             ; preds = %2311, %2309, %2301
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %187) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %186) #8
  %2314 = load i8, ptr %0, align 4
  %2315 = zext i8 %2314 to i32
  %2316 = shl nuw i32 1, %2315
  %2317 = and i32 %2316, 496
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2909, label %2319

2319:                                             ; preds = %2313
  %2320 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %184) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %184, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %185) #8
  store i16 0, ptr %185, align 2, !annotation !8
  %2321 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull %184, i32 noundef 100, i1 noundef zeroext %2) #8
  %2322 = icmp slt i32 %2321, 0
  br i1 %2322, label %2331, label %2323

2323:                                             ; preds = %2319
  %2324 = call ptr @strim(ptr noundef nonnull %184) #8
  %2325 = call i32 @kstrtou16(ptr noundef %2324, i32 noundef 0, ptr noundef nonnull %185) #8
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2329, label %2327

2327:                                             ; preds = %2323
  %2328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.152, ptr noundef null, ptr noundef nonnull %184, i32 noundef %2325) #9
  br label %2331

2329:                                             ; preds = %2323
  %2330 = load i16, ptr %185, align 2
  store i16 %2330, ptr %2320, align 2
  br label %2331

2331:                                             ; preds = %2329, %2327, %2319
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %185) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %184) #8
  %2332 = load i8, ptr %0, align 4
  %2333 = zext i8 %2332 to i32
  %2334 = shl nuw i32 1, %2333
  %2335 = and i32 %2334, 496
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2909, label %2337

2337:                                             ; preds = %2331
  %2338 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %182) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %182, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %183) #8
  store i16 0, ptr %183, align 2, !annotation !8
  %2339 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull %182, i32 noundef 100, i1 noundef zeroext %2) #8
  %2340 = icmp slt i32 %2339, 0
  br i1 %2340, label %2349, label %2341

2341:                                             ; preds = %2337
  %2342 = call ptr @strim(ptr noundef nonnull %182) #8
  %2343 = call i32 @kstrtou16(ptr noundef %2342, i32 noundef 0, ptr noundef nonnull %183) #8
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2347, label %2345

2345:                                             ; preds = %2341
  %2346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.153, ptr noundef null, ptr noundef nonnull %182, i32 noundef %2343) #9
  br label %2349

2347:                                             ; preds = %2341
  %2348 = load i16, ptr %183, align 2
  store i16 %2348, ptr %2338, align 2
  br label %2349

2349:                                             ; preds = %2347, %2345, %2337
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %183) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %182) #8
  %2350 = load i8, ptr %0, align 4
  %2351 = zext i8 %2350 to i32
  %2352 = shl nuw i32 1, %2351
  %2353 = and i32 %2352, 496
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2909, label %2355

2355:                                             ; preds = %2349
  %2356 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %180) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %180, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %181) #8
  store i16 0, ptr %181, align 2, !annotation !8
  %2357 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull %180, i32 noundef 100, i1 noundef zeroext %2) #8
  %2358 = icmp slt i32 %2357, 0
  br i1 %2358, label %2367, label %2359

2359:                                             ; preds = %2355
  %2360 = call ptr @strim(ptr noundef nonnull %180) #8
  %2361 = call i32 @kstrtou16(ptr noundef %2360, i32 noundef 0, ptr noundef nonnull %181) #8
  %2362 = icmp eq i32 %2361, 0
  br i1 %2362, label %2365, label %2363

2363:                                             ; preds = %2359
  %2364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef nonnull %180, i32 noundef %2361) #9
  br label %2367

2365:                                             ; preds = %2359
  %2366 = load i16, ptr %181, align 2
  store i16 %2366, ptr %2356, align 2
  br label %2367

2367:                                             ; preds = %2365, %2363, %2355
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %181) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %180) #8
  %2368 = load i8, ptr %0, align 4
  %2369 = zext i8 %2368 to i32
  %2370 = shl nuw i32 1, %2369
  %2371 = and i32 %2370, 496
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2909, label %2373

2373:                                             ; preds = %2367
  %2374 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %178) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %178, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %179) #8
  store i16 0, ptr %179, align 2, !annotation !8
  %2375 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull %178, i32 noundef 100, i1 noundef zeroext %2) #8
  %2376 = icmp slt i32 %2375, 0
  br i1 %2376, label %2385, label %2377

2377:                                             ; preds = %2373
  %2378 = call ptr @strim(ptr noundef nonnull %178) #8
  %2379 = call i32 @kstrtou16(ptr noundef %2378, i32 noundef 0, ptr noundef nonnull %179) #8
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2383, label %2381

2381:                                             ; preds = %2377
  %2382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.155, ptr noundef null, ptr noundef nonnull %178, i32 noundef %2379) #9
  br label %2385

2383:                                             ; preds = %2377
  %2384 = load i16, ptr %179, align 2
  store i16 %2384, ptr %2374, align 2
  br label %2385

2385:                                             ; preds = %2383, %2381, %2373
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %179) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %178) #8
  %2386 = load i8, ptr %0, align 4
  %2387 = zext i8 %2386 to i32
  %2388 = shl nuw i32 1, %2387
  %2389 = and i32 %2388, 496
  %2390 = icmp eq i32 %2389, 0
  br i1 %2390, label %2909, label %2391

2391:                                             ; preds = %2385
  %2392 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 77, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %176) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %176, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %177) #8
  store i16 0, ptr %177, align 2, !annotation !8
  %2393 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull %176, i32 noundef 100, i1 noundef zeroext %2) #8
  %2394 = icmp slt i32 %2393, 0
  br i1 %2394, label %2403, label %2395

2395:                                             ; preds = %2391
  %2396 = call ptr @strim(ptr noundef nonnull %176) #8
  %2397 = call i32 @kstrtou16(ptr noundef %2396, i32 noundef 0, ptr noundef nonnull %177) #8
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2401, label %2399

2399:                                             ; preds = %2395
  %2400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef nonnull %176, i32 noundef %2397) #9
  br label %2403

2401:                                             ; preds = %2395
  %2402 = load i16, ptr %177, align 2
  store i16 %2402, ptr %2392, align 2
  br label %2403

2403:                                             ; preds = %2401, %2399, %2391
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %177) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %176) #8
  %2404 = load i8, ptr %0, align 4
  %2405 = zext i8 %2404 to i32
  %2406 = shl nuw i32 1, %2405
  %2407 = and i32 %2406, 496
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2909, label %2409

2409:                                             ; preds = %2403
  %2410 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 78
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %174) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %174, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %175) #8
  store i16 0, ptr %175, align 2, !annotation !8
  %2411 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull %174, i32 noundef 100, i1 noundef zeroext %2) #8
  %2412 = icmp slt i32 %2411, 0
  br i1 %2412, label %2421, label %2413

2413:                                             ; preds = %2409
  %2414 = call ptr @strim(ptr noundef nonnull %174) #8
  %2415 = call i32 @kstrtou16(ptr noundef %2414, i32 noundef 0, ptr noundef nonnull %175) #8
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2419, label %2417

2417:                                             ; preds = %2413
  %2418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef nonnull %174, i32 noundef %2415) #9
  br label %2421

2419:                                             ; preds = %2413
  %2420 = load i16, ptr %175, align 2
  store i16 %2420, ptr %2410, align 2
  br label %2421

2421:                                             ; preds = %2419, %2417, %2409
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %175) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %174) #8
  %2422 = load i8, ptr %0, align 4
  %2423 = zext i8 %2422 to i32
  %2424 = shl nuw i32 1, %2423
  %2425 = and i32 %2424, 496
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2909, label %2427

2427:                                             ; preds = %2421
  %2428 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %172) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %172, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %173) #8
  store i16 0, ptr %173, align 2, !annotation !8
  %2429 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull %172, i32 noundef 100, i1 noundef zeroext %2) #8
  %2430 = icmp slt i32 %2429, 0
  br i1 %2430, label %2439, label %2431

2431:                                             ; preds = %2427
  %2432 = call ptr @strim(ptr noundef nonnull %172) #8
  %2433 = call i32 @kstrtou16(ptr noundef %2432, i32 noundef 0, ptr noundef nonnull %173) #8
  %2434 = icmp eq i32 %2433, 0
  br i1 %2434, label %2437, label %2435

2435:                                             ; preds = %2431
  %2436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef nonnull %172, i32 noundef %2433) #9
  br label %2439

2437:                                             ; preds = %2431
  %2438 = load i16, ptr %173, align 2
  store i16 %2438, ptr %2428, align 2
  br label %2439

2439:                                             ; preds = %2437, %2435, %2427
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %173) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %172) #8
  %2440 = load i8, ptr %0, align 4
  %2441 = zext i8 %2440 to i32
  %2442 = shl nuw i32 1, %2441
  %2443 = and i32 %2442, 496
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2909, label %2445

2445:                                             ; preds = %2439
  %2446 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %170) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %170, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %171) #8
  store i16 0, ptr %171, align 2, !annotation !8
  %2447 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull %170, i32 noundef 100, i1 noundef zeroext %2) #8
  %2448 = icmp slt i32 %2447, 0
  br i1 %2448, label %2457, label %2449

2449:                                             ; preds = %2445
  %2450 = call ptr @strim(ptr noundef nonnull %170) #8
  %2451 = call i32 @kstrtou16(ptr noundef %2450, i32 noundef 0, ptr noundef nonnull %171) #8
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2455, label %2453

2453:                                             ; preds = %2449
  %2454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.159, ptr noundef null, ptr noundef nonnull %170, i32 noundef %2451) #9
  br label %2457

2455:                                             ; preds = %2449
  %2456 = load i16, ptr %171, align 2
  store i16 %2456, ptr %2446, align 2
  br label %2457

2457:                                             ; preds = %2455, %2453, %2445
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %171) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %170) #8
  %2458 = load i8, ptr %0, align 4
  %2459 = zext i8 %2458 to i32
  %2460 = shl nuw i32 1, %2459
  %2461 = and i32 %2460, 496
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2909, label %2463

2463:                                             ; preds = %2457
  %2464 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %168) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %168, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %169) #8
  store i16 0, ptr %169, align 2, !annotation !8
  %2465 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull %168, i32 noundef 100, i1 noundef zeroext %2) #8
  %2466 = icmp slt i32 %2465, 0
  br i1 %2466, label %2475, label %2467

2467:                                             ; preds = %2463
  %2468 = call ptr @strim(ptr noundef nonnull %168) #8
  %2469 = call i32 @kstrtou16(ptr noundef %2468, i32 noundef 0, ptr noundef nonnull %169) #8
  %2470 = icmp eq i32 %2469, 0
  br i1 %2470, label %2473, label %2471

2471:                                             ; preds = %2467
  %2472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.160, ptr noundef null, ptr noundef nonnull %168, i32 noundef %2469) #9
  br label %2475

2473:                                             ; preds = %2467
  %2474 = load i16, ptr %169, align 2
  store i16 %2474, ptr %2464, align 2
  br label %2475

2475:                                             ; preds = %2473, %2471, %2463
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %169) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %168) #8
  %2476 = load i8, ptr %0, align 4
  %2477 = zext i8 %2476 to i32
  %2478 = shl nuw i32 1, %2477
  %2479 = and i32 %2478, 496
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2909, label %2481

2481:                                             ; preds = %2475
  %2482 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %166) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %166, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %167) #8
  store i16 0, ptr %167, align 2, !annotation !8
  %2483 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull %166, i32 noundef 100, i1 noundef zeroext %2) #8
  %2484 = icmp slt i32 %2483, 0
  br i1 %2484, label %2493, label %2485

2485:                                             ; preds = %2481
  %2486 = call ptr @strim(ptr noundef nonnull %166) #8
  %2487 = call i32 @kstrtou16(ptr noundef %2486, i32 noundef 0, ptr noundef nonnull %167) #8
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2491, label %2489

2489:                                             ; preds = %2485
  %2490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef nonnull %166, i32 noundef %2487) #9
  br label %2493

2491:                                             ; preds = %2485
  %2492 = load i16, ptr %167, align 2
  store i16 %2492, ptr %2482, align 2
  br label %2493

2493:                                             ; preds = %2491, %2489, %2481
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %167) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %166) #8
  %2494 = load i8, ptr %0, align 4
  %2495 = zext i8 %2494 to i32
  %2496 = shl nuw i32 1, %2495
  %2497 = and i32 %2496, 496
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2909, label %2499

2499:                                             ; preds = %2493
  %2500 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %164) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %164, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %165) #8
  store i16 0, ptr %165, align 2, !annotation !8
  %2501 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull %164, i32 noundef 100, i1 noundef zeroext %2) #8
  %2502 = icmp slt i32 %2501, 0
  br i1 %2502, label %2511, label %2503

2503:                                             ; preds = %2499
  %2504 = call ptr @strim(ptr noundef nonnull %164) #8
  %2505 = call i32 @kstrtou16(ptr noundef %2504, i32 noundef 0, ptr noundef nonnull %165) #8
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2509, label %2507

2507:                                             ; preds = %2503
  %2508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.162, ptr noundef null, ptr noundef nonnull %164, i32 noundef %2505) #9
  br label %2511

2509:                                             ; preds = %2503
  %2510 = load i16, ptr %165, align 2
  store i16 %2510, ptr %2500, align 2
  br label %2511

2511:                                             ; preds = %2509, %2507, %2499
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %165) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %164) #8
  %2512 = load i8, ptr %0, align 4
  %2513 = zext i8 %2512 to i32
  %2514 = shl nuw i32 1, %2513
  %2515 = and i32 %2514, 496
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2909, label %2517

2517:                                             ; preds = %2511
  %2518 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %162) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %162, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %163) #8
  store i16 0, ptr %163, align 2, !annotation !8
  %2519 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull %162, i32 noundef 100, i1 noundef zeroext %2) #8
  %2520 = icmp slt i32 %2519, 0
  br i1 %2520, label %2529, label %2521

2521:                                             ; preds = %2517
  %2522 = call ptr @strim(ptr noundef nonnull %162) #8
  %2523 = call i32 @kstrtou16(ptr noundef %2522, i32 noundef 0, ptr noundef nonnull %163) #8
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2527, label %2525

2525:                                             ; preds = %2521
  %2526 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef nonnull %162, i32 noundef %2523) #9
  br label %2529

2527:                                             ; preds = %2521
  %2528 = load i16, ptr %163, align 2
  store i16 %2528, ptr %2518, align 2
  br label %2529

2529:                                             ; preds = %2527, %2525, %2517
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %163) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %162) #8
  %2530 = load i8, ptr %0, align 4
  %2531 = zext i8 %2530 to i32
  %2532 = shl nuw i32 1, %2531
  %2533 = and i32 %2532, 496
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2909, label %2535

2535:                                             ; preds = %2529
  %2536 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 78, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %160) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %160, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %161) #8
  store i16 0, ptr %161, align 2, !annotation !8
  %2537 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull %160, i32 noundef 100, i1 noundef zeroext %2) #8
  %2538 = icmp slt i32 %2537, 0
  br i1 %2538, label %2547, label %2539

2539:                                             ; preds = %2535
  %2540 = call ptr @strim(ptr noundef nonnull %160) #8
  %2541 = call i32 @kstrtou16(ptr noundef %2540, i32 noundef 0, ptr noundef nonnull %161) #8
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2545, label %2543

2543:                                             ; preds = %2539
  %2544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.164, ptr noundef null, ptr noundef nonnull %160, i32 noundef %2541) #9
  br label %2547

2545:                                             ; preds = %2539
  %2546 = load i16, ptr %161, align 2
  store i16 %2546, ptr %2536, align 2
  br label %2547

2547:                                             ; preds = %2545, %2543, %2535
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %161) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %160) #8
  %2548 = load i8, ptr %0, align 4
  %2549 = zext i8 %2548 to i32
  %2550 = shl nuw i32 1, %2549
  %2551 = and i32 %2550, 496
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2909, label %2553

2553:                                             ; preds = %2547
  %2554 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %158) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %158, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %159) #8
  store i16 0, ptr %159, align 2, !annotation !8
  %2555 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull %158, i32 noundef 100, i1 noundef zeroext %2) #8
  %2556 = icmp slt i32 %2555, 0
  br i1 %2556, label %2565, label %2557

2557:                                             ; preds = %2553
  %2558 = call ptr @strim(ptr noundef nonnull %158) #8
  %2559 = call i32 @kstrtou16(ptr noundef %2558, i32 noundef 0, ptr noundef nonnull %159) #8
  %2560 = icmp eq i32 %2559, 0
  br i1 %2560, label %2563, label %2561

2561:                                             ; preds = %2557
  %2562 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.165, ptr noundef null, ptr noundef nonnull %158, i32 noundef %2559) #9
  br label %2565

2563:                                             ; preds = %2557
  %2564 = load i16, ptr %159, align 2
  store i16 %2564, ptr %2554, align 2
  br label %2565

2565:                                             ; preds = %2563, %2561, %2553
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %159) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %158) #8
  %2566 = load i8, ptr %0, align 4
  %2567 = zext i8 %2566 to i32
  %2568 = shl nuw i32 1, %2567
  %2569 = and i32 %2568, 496
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2909, label %2571

2571:                                             ; preds = %2565
  %2572 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %156) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %156, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %157) #8
  store i16 0, ptr %157, align 2, !annotation !8
  %2573 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull %156, i32 noundef 100, i1 noundef zeroext %2) #8
  %2574 = icmp slt i32 %2573, 0
  br i1 %2574, label %2583, label %2575

2575:                                             ; preds = %2571
  %2576 = call ptr @strim(ptr noundef nonnull %156) #8
  %2577 = call i32 @kstrtou16(ptr noundef %2576, i32 noundef 0, ptr noundef nonnull %157) #8
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2581, label %2579

2579:                                             ; preds = %2575
  %2580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef nonnull %156, i32 noundef %2577) #9
  br label %2583

2581:                                             ; preds = %2575
  %2582 = load i16, ptr %157, align 2
  store i16 %2582, ptr %2572, align 2
  br label %2583

2583:                                             ; preds = %2581, %2579, %2571
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %157) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %156) #8
  %2584 = load i8, ptr %0, align 4
  %2585 = zext i8 %2584 to i32
  %2586 = shl nuw i32 1, %2585
  %2587 = and i32 %2586, 496
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2909, label %2589

2589:                                             ; preds = %2583
  %2590 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %154) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %154, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %155) #8
  store i16 0, ptr %155, align 2, !annotation !8
  %2591 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull %154, i32 noundef 100, i1 noundef zeroext %2) #8
  %2592 = icmp slt i32 %2591, 0
  br i1 %2592, label %2601, label %2593

2593:                                             ; preds = %2589
  %2594 = call ptr @strim(ptr noundef nonnull %154) #8
  %2595 = call i32 @kstrtou16(ptr noundef %2594, i32 noundef 0, ptr noundef nonnull %155) #8
  %2596 = icmp eq i32 %2595, 0
  br i1 %2596, label %2599, label %2597

2597:                                             ; preds = %2593
  %2598 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.167, ptr noundef null, ptr noundef nonnull %154, i32 noundef %2595) #9
  br label %2601

2599:                                             ; preds = %2593
  %2600 = load i16, ptr %155, align 2
  store i16 %2600, ptr %2590, align 2
  br label %2601

2601:                                             ; preds = %2599, %2597, %2589
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %155) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %154) #8
  %2602 = load i8, ptr %0, align 4
  %2603 = zext i8 %2602 to i32
  %2604 = shl nuw i32 1, %2603
  %2605 = and i32 %2604, 496
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2909, label %2607

2607:                                             ; preds = %2601
  %2608 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %152) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %152, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %153) #8
  store i16 0, ptr %153, align 2, !annotation !8
  %2609 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull %152, i32 noundef 100, i1 noundef zeroext %2) #8
  %2610 = icmp slt i32 %2609, 0
  br i1 %2610, label %2619, label %2611

2611:                                             ; preds = %2607
  %2612 = call ptr @strim(ptr noundef nonnull %152) #8
  %2613 = call i32 @kstrtou16(ptr noundef %2612, i32 noundef 0, ptr noundef nonnull %153) #8
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2617, label %2615

2615:                                             ; preds = %2611
  %2616 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef nonnull %152, i32 noundef %2613) #9
  br label %2619

2617:                                             ; preds = %2611
  %2618 = load i16, ptr %153, align 2
  store i16 %2618, ptr %2608, align 2
  br label %2619

2619:                                             ; preds = %2617, %2615, %2607
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %153) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %152) #8
  %2620 = load i8, ptr %0, align 4
  %2621 = zext i8 %2620 to i32
  %2622 = shl nuw i32 1, %2621
  %2623 = and i32 %2622, 496
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2909, label %2625

2625:                                             ; preds = %2619
  %2626 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %150) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %150, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %151) #8
  store i16 0, ptr %151, align 2, !annotation !8
  %2627 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull %150, i32 noundef 100, i1 noundef zeroext %2) #8
  %2628 = icmp slt i32 %2627, 0
  br i1 %2628, label %2637, label %2629

2629:                                             ; preds = %2625
  %2630 = call ptr @strim(ptr noundef nonnull %150) #8
  %2631 = call i32 @kstrtou16(ptr noundef %2630, i32 noundef 0, ptr noundef nonnull %151) #8
  %2632 = icmp eq i32 %2631, 0
  br i1 %2632, label %2635, label %2633

2633:                                             ; preds = %2629
  %2634 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef nonnull %150, i32 noundef %2631) #9
  br label %2637

2635:                                             ; preds = %2629
  %2636 = load i16, ptr %151, align 2
  store i16 %2636, ptr %2626, align 2
  br label %2637

2637:                                             ; preds = %2635, %2633, %2625
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %151) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %150) #8
  %2638 = load i8, ptr %0, align 4
  %2639 = zext i8 %2638 to i32
  %2640 = shl nuw i32 1, %2639
  %2641 = and i32 %2640, 496
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2909, label %2643

2643:                                             ; preds = %2637
  %2644 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %148) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %148, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %149) #8
  store i16 0, ptr %149, align 2, !annotation !8
  %2645 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull %148, i32 noundef 100, i1 noundef zeroext %2) #8
  %2646 = icmp slt i32 %2645, 0
  br i1 %2646, label %2655, label %2647

2647:                                             ; preds = %2643
  %2648 = call ptr @strim(ptr noundef nonnull %148) #8
  %2649 = call i32 @kstrtou16(ptr noundef %2648, i32 noundef 0, ptr noundef nonnull %149) #8
  %2650 = icmp eq i32 %2649, 0
  br i1 %2650, label %2653, label %2651

2651:                                             ; preds = %2647
  %2652 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef nonnull %148, i32 noundef %2649) #9
  br label %2655

2653:                                             ; preds = %2647
  %2654 = load i16, ptr %149, align 2
  store i16 %2654, ptr %2644, align 2
  br label %2655

2655:                                             ; preds = %2653, %2651, %2643
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %149) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %148) #8
  %2656 = load i8, ptr %0, align 4
  %2657 = zext i8 %2656 to i32
  %2658 = shl nuw i32 1, %2657
  %2659 = and i32 %2658, 496
  %2660 = icmp eq i32 %2659, 0
  br i1 %2660, label %2909, label %2661

2661:                                             ; preds = %2655
  %2662 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %146) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %146, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %147) #8
  store i16 0, ptr %147, align 2, !annotation !8
  %2663 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull %146, i32 noundef 100, i1 noundef zeroext %2) #8
  %2664 = icmp slt i32 %2663, 0
  br i1 %2664, label %2673, label %2665

2665:                                             ; preds = %2661
  %2666 = call ptr @strim(ptr noundef nonnull %146) #8
  %2667 = call i32 @kstrtou16(ptr noundef %2666, i32 noundef 0, ptr noundef nonnull %147) #8
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2671, label %2669

2669:                                             ; preds = %2665
  %2670 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef nonnull %146, i32 noundef %2667) #9
  br label %2673

2671:                                             ; preds = %2665
  %2672 = load i16, ptr %147, align 2
  store i16 %2672, ptr %2662, align 2
  br label %2673

2673:                                             ; preds = %2671, %2669, %2661
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %147) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %146) #8
  %2674 = load i8, ptr %0, align 4
  %2675 = zext i8 %2674 to i32
  %2676 = shl nuw i32 1, %2675
  %2677 = and i32 %2676, 496
  %2678 = icmp eq i32 %2677, 0
  br i1 %2678, label %2909, label %2679

2679:                                             ; preds = %2673
  %2680 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 79, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %144) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %144, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %145) #8
  store i16 0, ptr %145, align 2, !annotation !8
  %2681 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull %144, i32 noundef 100, i1 noundef zeroext %2) #8
  %2682 = icmp slt i32 %2681, 0
  br i1 %2682, label %2691, label %2683

2683:                                             ; preds = %2679
  %2684 = call ptr @strim(ptr noundef nonnull %144) #8
  %2685 = call i32 @kstrtou16(ptr noundef %2684, i32 noundef 0, ptr noundef nonnull %145) #8
  %2686 = icmp eq i32 %2685, 0
  br i1 %2686, label %2689, label %2687

2687:                                             ; preds = %2683
  %2688 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef nonnull %144, i32 noundef %2685) #9
  br label %2691

2689:                                             ; preds = %2683
  %2690 = load i16, ptr %145, align 2
  store i16 %2690, ptr %2680, align 2
  br label %2691

2691:                                             ; preds = %2689, %2687, %2679
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %145) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %144) #8
  %2692 = load i8, ptr %0, align 4
  %2693 = zext i8 %2692 to i32
  %2694 = shl nuw i32 1, %2693
  %2695 = and i32 %2694, 496
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %2909, label %2697

2697:                                             ; preds = %2691
  %2698 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 80
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %142) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %142, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %143) #8
  store i16 0, ptr %143, align 2, !annotation !8
  %2699 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull %142, i32 noundef 100, i1 noundef zeroext %2) #8
  %2700 = icmp slt i32 %2699, 0
  br i1 %2700, label %2709, label %2701

2701:                                             ; preds = %2697
  %2702 = call ptr @strim(ptr noundef nonnull %142) #8
  %2703 = call i32 @kstrtou16(ptr noundef %2702, i32 noundef 0, ptr noundef nonnull %143) #8
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2707, label %2705

2705:                                             ; preds = %2701
  %2706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef nonnull %142, i32 noundef %2703) #9
  br label %2709

2707:                                             ; preds = %2701
  %2708 = load i16, ptr %143, align 2
  store i16 %2708, ptr %2698, align 2
  br label %2709

2709:                                             ; preds = %2707, %2705, %2697
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %143) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %142) #8
  %2710 = load i8, ptr %0, align 4
  %2711 = zext i8 %2710 to i32
  %2712 = shl nuw i32 1, %2711
  %2713 = and i32 %2712, 496
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2909, label %2715

2715:                                             ; preds = %2709
  %2716 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %140) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %140, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %141) #8
  store i16 0, ptr %141, align 2, !annotation !8
  %2717 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull %140, i32 noundef 100, i1 noundef zeroext %2) #8
  %2718 = icmp slt i32 %2717, 0
  br i1 %2718, label %2727, label %2719

2719:                                             ; preds = %2715
  %2720 = call ptr @strim(ptr noundef nonnull %140) #8
  %2721 = call i32 @kstrtou16(ptr noundef %2720, i32 noundef 0, ptr noundef nonnull %141) #8
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2725, label %2723

2723:                                             ; preds = %2719
  %2724 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef nonnull %140, i32 noundef %2721) #9
  br label %2727

2725:                                             ; preds = %2719
  %2726 = load i16, ptr %141, align 2
  store i16 %2726, ptr %2716, align 2
  br label %2727

2727:                                             ; preds = %2725, %2723, %2715
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %141) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %140) #8
  %2728 = load i8, ptr %0, align 4
  %2729 = zext i8 %2728 to i32
  %2730 = shl nuw i32 1, %2729
  %2731 = and i32 %2730, 496
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2909, label %2733

2733:                                             ; preds = %2727
  %2734 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %138) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %138, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %139) #8
  store i16 0, ptr %139, align 2, !annotation !8
  %2735 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull %138, i32 noundef 100, i1 noundef zeroext %2) #8
  %2736 = icmp slt i32 %2735, 0
  br i1 %2736, label %2745, label %2737

2737:                                             ; preds = %2733
  %2738 = call ptr @strim(ptr noundef nonnull %138) #8
  %2739 = call i32 @kstrtou16(ptr noundef %2738, i32 noundef 0, ptr noundef nonnull %139) #8
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2743, label %2741

2741:                                             ; preds = %2737
  %2742 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef nonnull %138, i32 noundef %2739) #9
  br label %2745

2743:                                             ; preds = %2737
  %2744 = load i16, ptr %139, align 2
  store i16 %2744, ptr %2734, align 2
  br label %2745

2745:                                             ; preds = %2743, %2741, %2733
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %139) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %138) #8
  %2746 = load i8, ptr %0, align 4
  %2747 = zext i8 %2746 to i32
  %2748 = shl nuw i32 1, %2747
  %2749 = and i32 %2748, 496
  %2750 = icmp eq i32 %2749, 0
  br i1 %2750, label %2909, label %2751

2751:                                             ; preds = %2745
  %2752 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %136) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %136, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %137) #8
  store i16 0, ptr %137, align 2, !annotation !8
  %2753 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull %136, i32 noundef 100, i1 noundef zeroext %2) #8
  %2754 = icmp slt i32 %2753, 0
  br i1 %2754, label %2763, label %2755

2755:                                             ; preds = %2751
  %2756 = call ptr @strim(ptr noundef nonnull %136) #8
  %2757 = call i32 @kstrtou16(ptr noundef %2756, i32 noundef 0, ptr noundef nonnull %137) #8
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2761, label %2759

2759:                                             ; preds = %2755
  %2760 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.176, ptr noundef null, ptr noundef nonnull %136, i32 noundef %2757) #9
  br label %2763

2761:                                             ; preds = %2755
  %2762 = load i16, ptr %137, align 2
  store i16 %2762, ptr %2752, align 2
  br label %2763

2763:                                             ; preds = %2761, %2759, %2751
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %137) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %136) #8
  %2764 = load i8, ptr %0, align 4
  %2765 = zext i8 %2764 to i32
  %2766 = shl nuw i32 1, %2765
  %2767 = and i32 %2766, 496
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2909, label %2769

2769:                                             ; preds = %2763
  %2770 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %134) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %134, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %135) #8
  store i16 0, ptr %135, align 2, !annotation !8
  %2771 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull %134, i32 noundef 100, i1 noundef zeroext %2) #8
  %2772 = icmp slt i32 %2771, 0
  br i1 %2772, label %2781, label %2773

2773:                                             ; preds = %2769
  %2774 = call ptr @strim(ptr noundef nonnull %134) #8
  %2775 = call i32 @kstrtou16(ptr noundef %2774, i32 noundef 0, ptr noundef nonnull %135) #8
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2779, label %2777

2777:                                             ; preds = %2773
  %2778 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef null, ptr noundef nonnull %134, i32 noundef %2775) #9
  br label %2781

2779:                                             ; preds = %2773
  %2780 = load i16, ptr %135, align 2
  store i16 %2780, ptr %2770, align 2
  br label %2781

2781:                                             ; preds = %2779, %2777, %2769
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %135) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %134) #8
  %2782 = load i8, ptr %0, align 4
  %2783 = zext i8 %2782 to i32
  %2784 = shl nuw i32 1, %2783
  %2785 = and i32 %2784, 496
  %2786 = icmp eq i32 %2785, 0
  br i1 %2786, label %2909, label %2787

2787:                                             ; preds = %2781
  %2788 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %132) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %132, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %133) #8
  store i16 0, ptr %133, align 2, !annotation !8
  %2789 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull %132, i32 noundef 100, i1 noundef zeroext %2) #8
  %2790 = icmp slt i32 %2789, 0
  br i1 %2790, label %2799, label %2791

2791:                                             ; preds = %2787
  %2792 = call ptr @strim(ptr noundef nonnull %132) #8
  %2793 = call i32 @kstrtou16(ptr noundef %2792, i32 noundef 0, ptr noundef nonnull %133) #8
  %2794 = icmp eq i32 %2793, 0
  br i1 %2794, label %2797, label %2795

2795:                                             ; preds = %2791
  %2796 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef nonnull %132, i32 noundef %2793) #9
  br label %2799

2797:                                             ; preds = %2791
  %2798 = load i16, ptr %133, align 2
  store i16 %2798, ptr %2788, align 2
  br label %2799

2799:                                             ; preds = %2797, %2795, %2787
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %133) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %132) #8
  %2800 = load i8, ptr %0, align 4
  %2801 = zext i8 %2800 to i32
  %2802 = shl nuw i32 1, %2801
  %2803 = and i32 %2802, 496
  %2804 = icmp eq i32 %2803, 0
  br i1 %2804, label %2909, label %2805

2805:                                             ; preds = %2799
  %2806 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %130) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %130, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %131) #8
  store i16 0, ptr %131, align 2, !annotation !8
  %2807 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull %130, i32 noundef 100, i1 noundef zeroext %2) #8
  %2808 = icmp slt i32 %2807, 0
  br i1 %2808, label %2817, label %2809

2809:                                             ; preds = %2805
  %2810 = call ptr @strim(ptr noundef nonnull %130) #8
  %2811 = call i32 @kstrtou16(ptr noundef %2810, i32 noundef 0, ptr noundef nonnull %131) #8
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2815, label %2813

2813:                                             ; preds = %2809
  %2814 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.179, ptr noundef null, ptr noundef nonnull %130, i32 noundef %2811) #9
  br label %2817

2815:                                             ; preds = %2809
  %2816 = load i16, ptr %131, align 2
  store i16 %2816, ptr %2806, align 2
  br label %2817

2817:                                             ; preds = %2815, %2813, %2805
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %131) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %130) #8
  %2818 = load i8, ptr %0, align 4
  %2819 = zext i8 %2818 to i32
  %2820 = shl nuw i32 1, %2819
  %2821 = and i32 %2820, 496
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %2909, label %2823

2823:                                             ; preds = %2817
  %2824 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 80, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %128) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %128, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %129) #8
  store i16 0, ptr %129, align 2, !annotation !8
  %2825 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull %128, i32 noundef 100, i1 noundef zeroext %2) #8
  %2826 = icmp slt i32 %2825, 0
  br i1 %2826, label %2835, label %2827

2827:                                             ; preds = %2823
  %2828 = call ptr @strim(ptr noundef nonnull %128) #8
  %2829 = call i32 @kstrtou16(ptr noundef %2828, i32 noundef 0, ptr noundef nonnull %129) #8
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2833, label %2831

2831:                                             ; preds = %2827
  %2832 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef nonnull %128, i32 noundef %2829) #9
  br label %2835

2833:                                             ; preds = %2827
  %2834 = load i16, ptr %129, align 2
  store i16 %2834, ptr %2824, align 2
  br label %2835

2835:                                             ; preds = %2833, %2831, %2823
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %129) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %128) #8
  %2836 = load i8, ptr %0, align 4
  %2837 = zext i8 %2836 to i32
  %2838 = shl nuw i32 1, %2837
  %2839 = and i32 %2838, 496
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2909, label %2841

2841:                                             ; preds = %2835
  %2842 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 96
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %126) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %126, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %127) #8
  store i16 0, ptr %127, align 2, !annotation !8
  %2843 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull %126, i32 noundef 100, i1 noundef zeroext %2) #8
  %2844 = icmp slt i32 %2843, 0
  br i1 %2844, label %2853, label %2845

2845:                                             ; preds = %2841
  %2846 = call ptr @strim(ptr noundef nonnull %126) #8
  %2847 = call i32 @kstrtou16(ptr noundef %2846, i32 noundef 0, ptr noundef nonnull %127) #8
  %2848 = icmp eq i32 %2847, 0
  br i1 %2848, label %2851, label %2849

2849:                                             ; preds = %2845
  %2850 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull %126, i32 noundef %2847) #9
  br label %2853

2851:                                             ; preds = %2845
  %2852 = load i16, ptr %127, align 2
  store i16 %2852, ptr %2842, align 2
  br label %2853

2853:                                             ; preds = %2851, %2849, %2841
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %127) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %126) #8
  %2854 = load i8, ptr %0, align 4
  %2855 = zext i8 %2854 to i32
  %2856 = shl nuw i32 1, %2855
  %2857 = and i32 %2856, 496
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2909, label %2859

2859:                                             ; preds = %2853
  %2860 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 97
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %124) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %124, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %125) #8
  store i16 0, ptr %125, align 2, !annotation !8
  %2861 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull %124, i32 noundef 100, i1 noundef zeroext %2) #8
  %2862 = icmp slt i32 %2861, 0
  br i1 %2862, label %2871, label %2863

2863:                                             ; preds = %2859
  %2864 = call ptr @strim(ptr noundef nonnull %124) #8
  %2865 = call i32 @kstrtou16(ptr noundef %2864, i32 noundef 0, ptr noundef nonnull %125) #8
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2869, label %2867

2867:                                             ; preds = %2863
  %2868 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef nonnull %124, i32 noundef %2865) #9
  br label %2871

2869:                                             ; preds = %2863
  %2870 = load i16, ptr %125, align 2
  store i16 %2870, ptr %2860, align 2
  br label %2871

2871:                                             ; preds = %2869, %2867, %2859
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %125) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %124) #8
  %2872 = load i8, ptr %0, align 4
  %2873 = zext i8 %2872 to i32
  %2874 = shl nuw i32 1, %2873
  %2875 = and i32 %2874, 496
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2909, label %2877

2877:                                             ; preds = %2871
  %2878 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 98
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %122) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %122, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %123) #8
  store i16 0, ptr %123, align 2, !annotation !8
  %2879 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull %122, i32 noundef 100, i1 noundef zeroext %2) #8
  %2880 = icmp slt i32 %2879, 0
  br i1 %2880, label %2889, label %2881

2881:                                             ; preds = %2877
  %2882 = call ptr @strim(ptr noundef nonnull %122) #8
  %2883 = call i32 @kstrtou16(ptr noundef %2882, i32 noundef 0, ptr noundef nonnull %123) #8
  %2884 = icmp eq i32 %2883, 0
  br i1 %2884, label %2887, label %2885

2885:                                             ; preds = %2881
  %2886 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.183, ptr noundef null, ptr noundef nonnull %122, i32 noundef %2883) #9
  br label %2889

2887:                                             ; preds = %2881
  %2888 = load i16, ptr %123, align 2
  store i16 %2888, ptr %2878, align 2
  br label %2889

2889:                                             ; preds = %2887, %2885, %2877
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %123) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %122) #8
  %2890 = load i8, ptr %0, align 4
  %2891 = zext i8 %2890 to i32
  %2892 = shl nuw i32 1, %2891
  %2893 = and i32 %2892, 496
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2909, label %2895

2895:                                             ; preds = %2889
  %2896 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 99
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %120) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %120, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %121) #8
  store i16 0, ptr %121, align 2, !annotation !8
  %2897 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull %120, i32 noundef 100, i1 noundef zeroext %2) #8
  %2898 = icmp slt i32 %2897, 0
  br i1 %2898, label %2907, label %2899

2899:                                             ; preds = %2895
  %2900 = call ptr @strim(ptr noundef nonnull %120) #8
  %2901 = call i32 @kstrtou16(ptr noundef %2900, i32 noundef 0, ptr noundef nonnull %121) #8
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2905, label %2903

2903:                                             ; preds = %2899
  %2904 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef nonnull %120, i32 noundef %2901) #9
  br label %2907

2905:                                             ; preds = %2899
  %2906 = load i16, ptr %121, align 2
  store i16 %2906, ptr %2896, align 2
  br label %2907

2907:                                             ; preds = %2905, %2903, %2895
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %121) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %120) #8
  %2908 = load i8, ptr %0, align 4
  br label %2909

2909:                                             ; preds = %2907, %2889, %2871, %2853, %2835, %2817, %2799, %2781, %2763, %2745, %2727, %2709, %2691, %2673, %2655, %2637, %2619, %2601, %2583, %2565, %2547, %2529, %2511, %2493, %2475, %2457, %2439, %2421, %2403, %2385, %2367, %2349, %2331, %2313, %2295, %2277, %2259, %2241, %2223, %2205, %2187, %2169
  %2910 = phi i8 [ %2908, %2907 ], [ %2890, %2889 ], [ %2872, %2871 ], [ %2854, %2853 ], [ %2836, %2835 ], [ %2818, %2817 ], [ %2800, %2799 ], [ %2782, %2781 ], [ %2764, %2763 ], [ %2746, %2745 ], [ %2728, %2727 ], [ %2710, %2709 ], [ %2692, %2691 ], [ %2674, %2673 ], [ %2656, %2655 ], [ %2638, %2637 ], [ %2620, %2619 ], [ %2602, %2601 ], [ %2584, %2583 ], [ %2566, %2565 ], [ %2548, %2547 ], [ %2530, %2529 ], [ %2512, %2511 ], [ %2494, %2493 ], [ %2476, %2475 ], [ %2458, %2457 ], [ %2440, %2439 ], [ %2422, %2421 ], [ %2404, %2403 ], [ %2386, %2385 ], [ %2368, %2367 ], [ %2350, %2349 ], [ %2332, %2331 ], [ %2314, %2313 ], [ %2296, %2295 ], [ %2278, %2277 ], [ %2260, %2259 ], [ %2242, %2241 ], [ %2224, %2223 ], [ %2206, %2205 ], [ %2188, %2187 ], [ %2170, %2169 ]
  %2911 = icmp ult i8 %2910, 9
  br i1 %2911, label %2941, label %2912

2912:                                             ; preds = %2909
  %2913 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 118
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %118) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %118, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %119) #8
  store i16 0, ptr %119, align 2, !annotation !8
  %2914 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull %118, i32 noundef 100, i1 noundef zeroext %2) #8
  %2915 = icmp slt i32 %2914, 0
  br i1 %2915, label %2924, label %2916

2916:                                             ; preds = %2912
  %2917 = call ptr @strim(ptr noundef nonnull %118) #8
  %2918 = call i32 @kstrtou16(ptr noundef %2917, i32 noundef 0, ptr noundef nonnull %119) #8
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %2922, label %2920

2920:                                             ; preds = %2916
  %2921 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef nonnull %118, i32 noundef %2918) #9
  br label %2924

2922:                                             ; preds = %2916
  %2923 = load i16, ptr %119, align 2
  store i16 %2923, ptr %2913, align 2
  br label %2924

2924:                                             ; preds = %2922, %2920, %2912
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %119) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %118) #8
  %2925 = load i8, ptr %0, align 4
  %2926 = icmp ult i8 %2925, 9
  br i1 %2926, label %2941, label %2927

2927:                                             ; preds = %2924
  %2928 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 119
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %116) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %116, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %117) #8
  store i16 0, ptr %117, align 2, !annotation !8
  %2929 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull %116, i32 noundef 100, i1 noundef zeroext %2) #8
  %2930 = icmp slt i32 %2929, 0
  br i1 %2930, label %2939, label %2931

2931:                                             ; preds = %2927
  %2932 = call ptr @strim(ptr noundef nonnull %116) #8
  %2933 = call i32 @kstrtou16(ptr noundef %2932, i32 noundef 0, ptr noundef nonnull %117) #8
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %2937, label %2935

2935:                                             ; preds = %2931
  %2936 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef nonnull %116, i32 noundef %2933) #9
  br label %2939

2937:                                             ; preds = %2931
  %2938 = load i16, ptr %117, align 2
  store i16 %2938, ptr %2928, align 2
  br label %2939

2939:                                             ; preds = %2937, %2935, %2927
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %117) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %116) #8
  %2940 = load i8, ptr %0, align 4
  br label %2941

2941:                                             ; preds = %2939, %2924, %2909
  %2942 = phi i8 [ %2940, %2939 ], [ %2925, %2924 ], [ %2910, %2909 ]
  %2943 = zext i8 %2942 to i32
  %2944 = shl nuw i32 1, %2943
  %2945 = and i32 %2944, 1536
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %3087, label %2947

2947:                                             ; preds = %2941
  %2948 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 120
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %114) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %114, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %115) #8
  store i32 0, ptr %115, align 4, !annotation !8
  %2949 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull %114, i32 noundef 100, i1 noundef zeroext %2) #8
  %2950 = icmp slt i32 %2949, 0
  br i1 %2950, label %2959, label %2951

2951:                                             ; preds = %2947
  %2952 = call ptr @strim(ptr noundef nonnull %114) #8
  %2953 = call i32 @kstrtouint(ptr noundef %2952, i32 noundef 0, ptr noundef nonnull %115) #8
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %2957, label %2955

2955:                                             ; preds = %2951
  %2956 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef nonnull %114, i32 noundef %2953) #9
  br label %2959

2957:                                             ; preds = %2951
  %2958 = load i32, ptr %115, align 4
  store i32 %2958, ptr %2948, align 4
  br label %2959

2959:                                             ; preds = %2957, %2955, %2947
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %115) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %114) #8
  %2960 = load i8, ptr %0, align 4
  %2961 = zext i8 %2960 to i32
  %2962 = shl nuw i32 1, %2961
  %2963 = and i32 %2962, 1536
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %3087, label %2965

2965:                                             ; preds = %2959
  %2966 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 121
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %112) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %112, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %113) #8
  store i32 0, ptr %113, align 4, !annotation !8
  %2967 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull %112, i32 noundef 100, i1 noundef zeroext %2) #8
  %2968 = icmp slt i32 %2967, 0
  br i1 %2968, label %2977, label %2969

2969:                                             ; preds = %2965
  %2970 = call ptr @strim(ptr noundef nonnull %112) #8
  %2971 = call i32 @kstrtouint(ptr noundef %2970, i32 noundef 0, ptr noundef nonnull %113) #8
  %2972 = icmp eq i32 %2971, 0
  br i1 %2972, label %2975, label %2973

2973:                                             ; preds = %2969
  %2974 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.188, ptr noundef null, ptr noundef nonnull %112, i32 noundef %2971) #9
  br label %2977

2975:                                             ; preds = %2969
  %2976 = load i32, ptr %113, align 4
  store i32 %2976, ptr %2966, align 4
  br label %2977

2977:                                             ; preds = %2975, %2973, %2965
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %113) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %112) #8
  %2978 = load i8, ptr %0, align 4
  %2979 = zext i8 %2978 to i32
  %2980 = shl nuw i32 1, %2979
  %2981 = and i32 %2980, 1536
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %3087, label %2983

2983:                                             ; preds = %2977
  %2984 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 122
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %110) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %110, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %111) #8
  store i32 0, ptr %111, align 4, !annotation !8
  %2985 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull %110, i32 noundef 100, i1 noundef zeroext %2) #8
  %2986 = icmp slt i32 %2985, 0
  br i1 %2986, label %2995, label %2987

2987:                                             ; preds = %2983
  %2988 = call ptr @strim(ptr noundef nonnull %110) #8
  %2989 = call i32 @kstrtouint(ptr noundef %2988, i32 noundef 0, ptr noundef nonnull %111) #8
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %2993, label %2991

2991:                                             ; preds = %2987
  %2992 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef nonnull %110, i32 noundef %2989) #9
  br label %2995

2993:                                             ; preds = %2987
  %2994 = load i32, ptr %111, align 4
  store i32 %2994, ptr %2984, align 4
  br label %2995

2995:                                             ; preds = %2993, %2991, %2983
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %111) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %110) #8
  %2996 = load i8, ptr %0, align 4
  %2997 = zext i8 %2996 to i32
  %2998 = shl nuw i32 1, %2997
  %2999 = and i32 %2998, 1536
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3087, label %3001

3001:                                             ; preds = %2995
  %3002 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 123
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %108) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %108, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %109) #8
  store i32 0, ptr %109, align 4, !annotation !8
  %3003 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull %108, i32 noundef 100, i1 noundef zeroext %2) #8
  %3004 = icmp slt i32 %3003, 0
  br i1 %3004, label %3013, label %3005

3005:                                             ; preds = %3001
  %3006 = call ptr @strim(ptr noundef nonnull %108) #8
  %3007 = call i32 @kstrtouint(ptr noundef %3006, i32 noundef 0, ptr noundef nonnull %109) #8
  %3008 = icmp eq i32 %3007, 0
  br i1 %3008, label %3011, label %3009

3009:                                             ; preds = %3005
  %3010 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.190, ptr noundef null, ptr noundef nonnull %108, i32 noundef %3007) #9
  br label %3013

3011:                                             ; preds = %3005
  %3012 = load i32, ptr %109, align 4
  store i32 %3012, ptr %3002, align 4
  br label %3013

3013:                                             ; preds = %3011, %3009, %3001
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %109) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %108) #8
  %3014 = load i8, ptr %0, align 4
  %3015 = zext i8 %3014 to i32
  %3016 = shl nuw i32 1, %3015
  %3017 = and i32 %3016, 1536
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3087, label %3019

3019:                                             ; preds = %3013
  %3020 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 124
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %106) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %106, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %107) #8
  store i32 0, ptr %107, align 4, !annotation !8
  %3021 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull %106, i32 noundef 100, i1 noundef zeroext %2) #8
  %3022 = icmp slt i32 %3021, 0
  br i1 %3022, label %3031, label %3023

3023:                                             ; preds = %3019
  %3024 = call ptr @strim(ptr noundef nonnull %106) #8
  %3025 = call i32 @kstrtouint(ptr noundef %3024, i32 noundef 0, ptr noundef nonnull %107) #8
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3029, label %3027

3027:                                             ; preds = %3023
  %3028 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.191, ptr noundef null, ptr noundef nonnull %106, i32 noundef %3025) #9
  br label %3031

3029:                                             ; preds = %3023
  %3030 = load i32, ptr %107, align 4
  store i32 %3030, ptr %3020, align 4
  br label %3031

3031:                                             ; preds = %3029, %3027, %3019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %107) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %106) #8
  %3032 = load i8, ptr %0, align 4
  %3033 = zext i8 %3032 to i32
  %3034 = shl nuw i32 1, %3033
  %3035 = and i32 %3034, 1536
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3087, label %3037

3037:                                             ; preds = %3031
  %3038 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 125
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %104) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %104, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %105) #8
  store i32 0, ptr %105, align 4, !annotation !8
  %3039 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull %104, i32 noundef 100, i1 noundef zeroext %2) #8
  %3040 = icmp slt i32 %3039, 0
  br i1 %3040, label %3049, label %3041

3041:                                             ; preds = %3037
  %3042 = call ptr @strim(ptr noundef nonnull %104) #8
  %3043 = call i32 @kstrtouint(ptr noundef %3042, i32 noundef 0, ptr noundef nonnull %105) #8
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3047, label %3045

3045:                                             ; preds = %3041
  %3046 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.192, ptr noundef null, ptr noundef nonnull %104, i32 noundef %3043) #9
  br label %3049

3047:                                             ; preds = %3041
  %3048 = load i32, ptr %105, align 4
  store i32 %3048, ptr %3038, align 4
  br label %3049

3049:                                             ; preds = %3047, %3045, %3037
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %105) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %104) #8
  %3050 = load i8, ptr %0, align 4
  %3051 = zext i8 %3050 to i32
  %3052 = shl nuw i32 1, %3051
  %3053 = and i32 %3052, 1536
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3087, label %3055

3055:                                             ; preds = %3049
  %3056 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 126
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %102) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %102, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %103) #8
  store i32 0, ptr %103, align 4, !annotation !8
  %3057 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull %102, i32 noundef 100, i1 noundef zeroext %2) #8
  %3058 = icmp slt i32 %3057, 0
  br i1 %3058, label %3067, label %3059

3059:                                             ; preds = %3055
  %3060 = call ptr @strim(ptr noundef nonnull %102) #8
  %3061 = call i32 @kstrtouint(ptr noundef %3060, i32 noundef 0, ptr noundef nonnull %103) #8
  %3062 = icmp eq i32 %3061, 0
  br i1 %3062, label %3065, label %3063

3063:                                             ; preds = %3059
  %3064 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.193, ptr noundef null, ptr noundef nonnull %102, i32 noundef %3061) #9
  br label %3067

3065:                                             ; preds = %3059
  %3066 = load i32, ptr %103, align 4
  store i32 %3066, ptr %3056, align 4
  br label %3067

3067:                                             ; preds = %3065, %3063, %3055
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %103) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %102) #8
  %3068 = load i8, ptr %0, align 4
  %3069 = zext i8 %3068 to i32
  %3070 = shl nuw i32 1, %3069
  %3071 = and i32 %3070, 1536
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3087, label %3073

3073:                                             ; preds = %3067
  %3074 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 127
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %100) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %100, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %101) #8
  store i32 0, ptr %101, align 4, !annotation !8
  %3075 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull %100, i32 noundef 100, i1 noundef zeroext %2) #8
  %3076 = icmp slt i32 %3075, 0
  br i1 %3076, label %3085, label %3077

3077:                                             ; preds = %3073
  %3078 = call ptr @strim(ptr noundef nonnull %100) #8
  %3079 = call i32 @kstrtouint(ptr noundef %3078, i32 noundef 0, ptr noundef nonnull %101) #8
  %3080 = icmp eq i32 %3079, 0
  br i1 %3080, label %3083, label %3081

3081:                                             ; preds = %3077
  %3082 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.194, ptr noundef null, ptr noundef nonnull %100, i32 noundef %3079) #9
  br label %3085

3083:                                             ; preds = %3077
  %3084 = load i32, ptr %101, align 4
  store i32 %3084, ptr %3074, align 4
  br label %3085

3085:                                             ; preds = %3083, %3081, %3073
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %101) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %100) #8
  %3086 = load i8, ptr %0, align 4
  br label %3087

3087:                                             ; preds = %3085, %3067, %3049, %3031, %3013, %2995, %2977, %2959, %2941
  %3088 = phi i8 [ %3086, %3085 ], [ %3068, %3067 ], [ %3050, %3049 ], [ %3032, %3031 ], [ %3014, %3013 ], [ %2996, %2995 ], [ %2978, %2977 ], [ %2960, %2959 ], [ %2942, %2941 ]
  %3089 = icmp ult i8 %3088, 9
  br i1 %3089, label %3104, label %3090

3090:                                             ; preds = %3087
  %3091 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 128
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %98) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %98, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %99) #8
  store i32 0, ptr %99, align 4, !annotation !8
  %3092 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull %98, i32 noundef 100, i1 noundef zeroext %2) #8
  %3093 = icmp slt i32 %3092, 0
  br i1 %3093, label %3102, label %3094

3094:                                             ; preds = %3090
  %3095 = call ptr @strim(ptr noundef nonnull %98) #8
  %3096 = call i32 @kstrtouint(ptr noundef %3095, i32 noundef 0, ptr noundef nonnull %99) #8
  %3097 = icmp eq i32 %3096, 0
  br i1 %3097, label %3100, label %3098

3098:                                             ; preds = %3094
  %3099 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.195, ptr noundef null, ptr noundef nonnull %98, i32 noundef %3096) #9
  br label %3102

3100:                                             ; preds = %3094
  %3101 = load i32, ptr %99, align 4
  store i32 %3101, ptr %3091, align 4
  br label %3102

3102:                                             ; preds = %3100, %3098, %3090
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %99) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %98) #8
  %3103 = load i8, ptr %0, align 4
  br label %3104

3104:                                             ; preds = %3102, %3087
  %3105 = phi i8 [ %3103, %3102 ], [ %3088, %3087 ]
  %3106 = zext i8 %3105 to i32
  %3107 = shl nuw i32 1, %3106
  %3108 = and i32 %3107, 1536
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3124, label %3110

3110:                                             ; preds = %3104
  %3111 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 129
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %96) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %96, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %97) #8
  store i32 0, ptr %97, align 4, !annotation !8
  %3112 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull %96, i32 noundef 100, i1 noundef zeroext %2) #8
  %3113 = icmp slt i32 %3112, 0
  br i1 %3113, label %3122, label %3114

3114:                                             ; preds = %3110
  %3115 = call ptr @strim(ptr noundef nonnull %96) #8
  %3116 = call i32 @kstrtouint(ptr noundef %3115, i32 noundef 0, ptr noundef nonnull %97) #8
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3120, label %3118

3118:                                             ; preds = %3114
  %3119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.196, ptr noundef null, ptr noundef nonnull %96, i32 noundef %3116) #9
  br label %3122

3120:                                             ; preds = %3114
  %3121 = load i32, ptr %97, align 4
  store i32 %3121, ptr %3111, align 4
  br label %3122

3122:                                             ; preds = %3120, %3118, %3110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %97) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %96) #8
  %3123 = load i8, ptr %0, align 4
  br label %3124

3124:                                             ; preds = %3122, %3104
  %3125 = phi i8 [ %3123, %3122 ], [ %3105, %3104 ]
  %3126 = icmp ult i8 %3125, 9
  br i1 %3126, label %3156, label %3127

3127:                                             ; preds = %3124
  %3128 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 130
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %94) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %94, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %95) #8
  store i32 0, ptr %95, align 4, !annotation !8
  %3129 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull %94, i32 noundef 100, i1 noundef zeroext %2) #8
  %3130 = icmp slt i32 %3129, 0
  br i1 %3130, label %3139, label %3131

3131:                                             ; preds = %3127
  %3132 = call ptr @strim(ptr noundef nonnull %94) #8
  %3133 = call i32 @kstrtouint(ptr noundef %3132, i32 noundef 0, ptr noundef nonnull %95) #8
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3137, label %3135

3135:                                             ; preds = %3131
  %3136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.197, ptr noundef null, ptr noundef nonnull %94, i32 noundef %3133) #9
  br label %3139

3137:                                             ; preds = %3131
  %3138 = load i32, ptr %95, align 4
  store i32 %3138, ptr %3128, align 4
  br label %3139

3139:                                             ; preds = %3137, %3135, %3127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %95) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %94) #8
  %3140 = load i8, ptr %0, align 4
  %3141 = icmp ult i8 %3140, 9
  br i1 %3141, label %3156, label %3142

3142:                                             ; preds = %3139
  %3143 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 131
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %92) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %92, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %93) #8
  store i32 0, ptr %93, align 4, !annotation !8
  %3144 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull %92, i32 noundef 100, i1 noundef zeroext %2) #8
  %3145 = icmp slt i32 %3144, 0
  br i1 %3145, label %3154, label %3146

3146:                                             ; preds = %3142
  %3147 = call ptr @strim(ptr noundef nonnull %92) #8
  %3148 = call i32 @kstrtouint(ptr noundef %3147, i32 noundef 0, ptr noundef nonnull %93) #8
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3152, label %3150

3150:                                             ; preds = %3146
  %3151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.198, ptr noundef null, ptr noundef nonnull %92, i32 noundef %3148) #9
  br label %3154

3152:                                             ; preds = %3146
  %3153 = load i32, ptr %93, align 4
  store i32 %3153, ptr %3143, align 4
  br label %3154

3154:                                             ; preds = %3152, %3150, %3142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %93) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %92) #8
  %3155 = load i8, ptr %0, align 4
  br label %3156

3156:                                             ; preds = %3154, %3139, %3124
  %3157 = phi i8 [ %3155, %3154 ], [ %3140, %3139 ], [ %3125, %3124 ]
  %3158 = zext i8 %3157 to i32
  %3159 = shl nuw i32 1, %3158
  %3160 = and i32 %3159, 1536
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3176, label %3162

3162:                                             ; preds = %3156
  %3163 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 132
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %90) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %90, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %91) #8
  store i32 0, ptr %91, align 4, !annotation !8
  %3164 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull %90, i32 noundef 100, i1 noundef zeroext %2) #8
  %3165 = icmp slt i32 %3164, 0
  br i1 %3165, label %3174, label %3166

3166:                                             ; preds = %3162
  %3167 = call ptr @strim(ptr noundef nonnull %90) #8
  %3168 = call i32 @kstrtouint(ptr noundef %3167, i32 noundef 0, ptr noundef nonnull %91) #8
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3172, label %3170

3170:                                             ; preds = %3166
  %3171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.199, ptr noundef null, ptr noundef nonnull %90, i32 noundef %3168) #9
  br label %3174

3172:                                             ; preds = %3166
  %3173 = load i32, ptr %91, align 4
  store i32 %3173, ptr %3163, align 4
  br label %3174

3174:                                             ; preds = %3172, %3170, %3162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %91) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %90) #8
  %3175 = load i8, ptr %0, align 4
  br label %3176

3176:                                             ; preds = %3174, %3156
  %3177 = phi i8 [ %3175, %3174 ], [ %3157, %3156 ]
  %3178 = icmp ult i8 %3177, 9
  br i1 %3178, label %3208, label %3179

3179:                                             ; preds = %3176
  %3180 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 133
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %88) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %88, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %89) #8
  store i32 0, ptr %89, align 4, !annotation !8
  %3181 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull %88, i32 noundef 100, i1 noundef zeroext %2) #8
  %3182 = icmp slt i32 %3181, 0
  br i1 %3182, label %3191, label %3183

3183:                                             ; preds = %3179
  %3184 = call ptr @strim(ptr noundef nonnull %88) #8
  %3185 = call i32 @kstrtouint(ptr noundef %3184, i32 noundef 0, ptr noundef nonnull %89) #8
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3189, label %3187

3187:                                             ; preds = %3183
  %3188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.200, ptr noundef null, ptr noundef nonnull %88, i32 noundef %3185) #9
  br label %3191

3189:                                             ; preds = %3183
  %3190 = load i32, ptr %89, align 4
  store i32 %3190, ptr %3180, align 4
  br label %3191

3191:                                             ; preds = %3189, %3187, %3179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %89) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %88) #8
  %3192 = load i8, ptr %0, align 4
  %3193 = icmp ult i8 %3192, 9
  br i1 %3193, label %3208, label %3194

3194:                                             ; preds = %3191
  %3195 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 134
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %86) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %86, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %87) #8
  store i32 0, ptr %87, align 4, !annotation !8
  %3196 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull %86, i32 noundef 100, i1 noundef zeroext %2) #8
  %3197 = icmp slt i32 %3196, 0
  br i1 %3197, label %3206, label %3198

3198:                                             ; preds = %3194
  %3199 = call ptr @strim(ptr noundef nonnull %86) #8
  %3200 = call i32 @kstrtouint(ptr noundef %3199, i32 noundef 0, ptr noundef nonnull %87) #8
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3204, label %3202

3202:                                             ; preds = %3198
  %3203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.201, ptr noundef null, ptr noundef nonnull %86, i32 noundef %3200) #9
  br label %3206

3204:                                             ; preds = %3198
  %3205 = load i32, ptr %87, align 4
  store i32 %3205, ptr %3195, align 4
  br label %3206

3206:                                             ; preds = %3204, %3202, %3194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %87) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %86) #8
  %3207 = load i8, ptr %0, align 4
  br label %3208

3208:                                             ; preds = %3206, %3191, %3176
  %3209 = phi i8 [ %3207, %3206 ], [ %3192, %3191 ], [ %3177, %3176 ]
  %3210 = zext i8 %3209 to i32
  %3211 = shl nuw i32 1, %3210
  %3212 = and i32 %3211, 1536
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3228, label %3214

3214:                                             ; preds = %3208
  %3215 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 135
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %84) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %84, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %85) #8
  store i32 0, ptr %85, align 4, !annotation !8
  %3216 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull %84, i32 noundef 100, i1 noundef zeroext %2) #8
  %3217 = icmp slt i32 %3216, 0
  br i1 %3217, label %3226, label %3218

3218:                                             ; preds = %3214
  %3219 = call ptr @strim(ptr noundef nonnull %84) #8
  %3220 = call i32 @kstrtouint(ptr noundef %3219, i32 noundef 0, ptr noundef nonnull %85) #8
  %3221 = icmp eq i32 %3220, 0
  br i1 %3221, label %3224, label %3222

3222:                                             ; preds = %3218
  %3223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.202, ptr noundef null, ptr noundef nonnull %84, i32 noundef %3220) #9
  br label %3226

3224:                                             ; preds = %3218
  %3225 = load i32, ptr %85, align 4
  store i32 %3225, ptr %3215, align 4
  br label %3226

3226:                                             ; preds = %3224, %3222, %3214
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %85) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %84) #8
  %3227 = load i8, ptr %0, align 4
  br label %3228

3228:                                             ; preds = %3226, %3208
  %3229 = phi i8 [ %3227, %3226 ], [ %3209, %3208 ]
  %3230 = icmp ult i8 %3229, 9
  br i1 %3230, label %3260, label %3231

3231:                                             ; preds = %3228
  %3232 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 136
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %82) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %82, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %83) #8
  store i32 0, ptr %83, align 4, !annotation !8
  %3233 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull %82, i32 noundef 100, i1 noundef zeroext %2) #8
  %3234 = icmp slt i32 %3233, 0
  br i1 %3234, label %3243, label %3235

3235:                                             ; preds = %3231
  %3236 = call ptr @strim(ptr noundef nonnull %82) #8
  %3237 = call i32 @kstrtouint(ptr noundef %3236, i32 noundef 0, ptr noundef nonnull %83) #8
  %3238 = icmp eq i32 %3237, 0
  br i1 %3238, label %3241, label %3239

3239:                                             ; preds = %3235
  %3240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.203, ptr noundef null, ptr noundef nonnull %82, i32 noundef %3237) #9
  br label %3243

3241:                                             ; preds = %3235
  %3242 = load i32, ptr %83, align 4
  store i32 %3242, ptr %3232, align 4
  br label %3243

3243:                                             ; preds = %3241, %3239, %3231
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %83) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %82) #8
  %3244 = load i8, ptr %0, align 4
  %3245 = icmp ult i8 %3244, 9
  br i1 %3245, label %3260, label %3246

3246:                                             ; preds = %3243
  %3247 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 137
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %80) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %80, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %81) #8
  store i32 0, ptr %81, align 4, !annotation !8
  %3248 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull %80, i32 noundef 100, i1 noundef zeroext %2) #8
  %3249 = icmp slt i32 %3248, 0
  br i1 %3249, label %3258, label %3250

3250:                                             ; preds = %3246
  %3251 = call ptr @strim(ptr noundef nonnull %80) #8
  %3252 = call i32 @kstrtouint(ptr noundef %3251, i32 noundef 0, ptr noundef nonnull %81) #8
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3256, label %3254

3254:                                             ; preds = %3250
  %3255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.204, ptr noundef null, ptr noundef nonnull %80, i32 noundef %3252) #9
  br label %3258

3256:                                             ; preds = %3250
  %3257 = load i32, ptr %81, align 4
  store i32 %3257, ptr %3247, align 4
  br label %3258

3258:                                             ; preds = %3256, %3254, %3246
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %81) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %80) #8
  %3259 = load i8, ptr %0, align 4
  br label %3260

3260:                                             ; preds = %3258, %3243, %3228
  %3261 = phi i8 [ %3259, %3258 ], [ %3244, %3243 ], [ %3229, %3228 ]
  %3262 = zext i8 %3261 to i32
  %3263 = shl nuw i32 1, %3262
  %3264 = and i32 %3263, 1536
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3280, label %3266

3266:                                             ; preds = %3260
  %3267 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 138
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %78) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %78, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %79) #8
  store i32 0, ptr %79, align 4, !annotation !8
  %3268 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull %78, i32 noundef 100, i1 noundef zeroext %2) #8
  %3269 = icmp slt i32 %3268, 0
  br i1 %3269, label %3278, label %3270

3270:                                             ; preds = %3266
  %3271 = call ptr @strim(ptr noundef nonnull %78) #8
  %3272 = call i32 @kstrtouint(ptr noundef %3271, i32 noundef 0, ptr noundef nonnull %79) #8
  %3273 = icmp eq i32 %3272, 0
  br i1 %3273, label %3276, label %3274

3274:                                             ; preds = %3270
  %3275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.205, ptr noundef null, ptr noundef nonnull %78, i32 noundef %3272) #9
  br label %3278

3276:                                             ; preds = %3270
  %3277 = load i32, ptr %79, align 4
  store i32 %3277, ptr %3267, align 4
  br label %3278

3278:                                             ; preds = %3276, %3274, %3266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %79) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %78) #8
  %3279 = load i8, ptr %0, align 4
  br label %3280

3280:                                             ; preds = %3278, %3260
  %3281 = phi i8 [ %3279, %3278 ], [ %3261, %3260 ]
  %3282 = icmp ult i8 %3281, 9
  br i1 %3282, label %3297, label %3283

3283:                                             ; preds = %3280
  %3284 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 139
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %76) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %76, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %77) #8
  store i32 0, ptr %77, align 4, !annotation !8
  %3285 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull %76, i32 noundef 100, i1 noundef zeroext %2) #8
  %3286 = icmp slt i32 %3285, 0
  br i1 %3286, label %3295, label %3287

3287:                                             ; preds = %3283
  %3288 = call ptr @strim(ptr noundef nonnull %76) #8
  %3289 = call i32 @kstrtouint(ptr noundef %3288, i32 noundef 0, ptr noundef nonnull %77) #8
  %3290 = icmp eq i32 %3289, 0
  br i1 %3290, label %3293, label %3291

3291:                                             ; preds = %3287
  %3292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.206, ptr noundef null, ptr noundef nonnull %76, i32 noundef %3289) #9
  br label %3295

3293:                                             ; preds = %3287
  %3294 = load i32, ptr %77, align 4
  store i32 %3294, ptr %3284, align 4
  br label %3295

3295:                                             ; preds = %3293, %3291, %3283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %77) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %76) #8
  %3296 = load i8, ptr %0, align 4
  br label %3297

3297:                                             ; preds = %3295, %3280
  %3298 = phi i8 [ %3296, %3295 ], [ %3281, %3280 ]
  %3299 = zext i8 %3298 to i32
  %3300 = shl nuw i32 1, %3299
  %3301 = and i32 %3300, 1536
  %3302 = icmp eq i32 %3301, 0
  br i1 %3302, label %3337, label %3303

3303:                                             ; preds = %3297
  %3304 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 140
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %74) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %74, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %75) #8
  store i16 0, ptr %75, align 2, !annotation !8
  %3305 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull %74, i32 noundef 100, i1 noundef zeroext %2) #8
  %3306 = icmp slt i32 %3305, 0
  br i1 %3306, label %3315, label %3307

3307:                                             ; preds = %3303
  %3308 = call ptr @strim(ptr noundef nonnull %74) #8
  %3309 = call i32 @kstrtou16(ptr noundef %3308, i32 noundef 0, ptr noundef nonnull %75) #8
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3313, label %3311

3311:                                             ; preds = %3307
  %3312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef nonnull %74, i32 noundef %3309) #9
  br label %3315

3313:                                             ; preds = %3307
  %3314 = load i16, ptr %75, align 2
  store i16 %3314, ptr %3304, align 2
  br label %3315

3315:                                             ; preds = %3313, %3311, %3303
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %75) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %74) #8
  %3316 = load i8, ptr %0, align 4
  %3317 = zext i8 %3316 to i32
  %3318 = shl nuw i32 1, %3317
  %3319 = and i32 %3318, 1536
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3337, label %3321

3321:                                             ; preds = %3315
  %3322 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 141
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %72) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %72, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %73) #8
  store i16 0, ptr %73, align 2, !annotation !8
  %3323 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull %72, i32 noundef 100, i1 noundef zeroext %2) #8
  %3324 = icmp slt i32 %3323, 0
  br i1 %3324, label %3333, label %3325

3325:                                             ; preds = %3321
  %3326 = call ptr @strim(ptr noundef nonnull %72) #8
  %3327 = call i32 @kstrtou16(ptr noundef %3326, i32 noundef 0, ptr noundef nonnull %73) #8
  %3328 = icmp eq i32 %3327, 0
  br i1 %3328, label %3331, label %3329

3329:                                             ; preds = %3325
  %3330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef nonnull %72, i32 noundef %3327) #9
  br label %3333

3331:                                             ; preds = %3325
  %3332 = load i16, ptr %73, align 2
  store i16 %3332, ptr %3322, align 2
  br label %3333

3333:                                             ; preds = %3331, %3329, %3321
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %73) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %72) #8
  %3334 = load i8, ptr %0, align 4
  %3335 = zext i8 %3334 to i32
  %3336 = shl nuw i32 1, %3335
  br label %3337

3337:                                             ; preds = %3333, %3315, %3297
  %3338 = phi i32 [ %3336, %3333 ], [ %3318, %3315 ], [ %3300, %3297 ]
  %3339 = phi i8 [ %3334, %3333 ], [ %3316, %3315 ], [ %3298, %3297 ]
  %3340 = and i32 %3338, 1792
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3626, label %3342

3342:                                             ; preds = %3337
  %3343 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 117
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %70) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %70, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %71) #8
  store i8 0, ptr %71, align 1, !annotation !8
  %3344 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull %70, i32 noundef 100, i1 noundef zeroext %2) #8
  %3345 = icmp slt i32 %3344, 0
  br i1 %3345, label %3354, label %3346

3346:                                             ; preds = %3342
  %3347 = call ptr @strim(ptr noundef nonnull %70) #8
  %3348 = call i32 @kstrtou8(ptr noundef %3347, i32 noundef 0, ptr noundef nonnull %71) #8
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3352, label %3350

3350:                                             ; preds = %3346
  %3351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.209, ptr noundef null, ptr noundef nonnull %70, i32 noundef %3348) #9
  br label %3354

3352:                                             ; preds = %3346
  %3353 = load i8, ptr %71, align 1
  store i8 %3353, ptr %3343, align 1
  br label %3354

3354:                                             ; preds = %3352, %3350, %3342
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %71) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %70) #8
  %3355 = load i8, ptr %0, align 4
  %3356 = zext i8 %3355 to i32
  %3357 = shl nuw i32 1, %3356
  %3358 = and i32 %3357, 1792
  %3359 = icmp eq i32 %3358, 0
  br i1 %3359, label %3626, label %3360

3360:                                             ; preds = %3354
  %3361 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 82
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %68) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %68, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %69) #8
  store i8 0, ptr %69, align 1, !annotation !8
  %3362 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull %68, i32 noundef 100, i1 noundef zeroext %2) #8
  %3363 = icmp slt i32 %3362, 0
  br i1 %3363, label %3372, label %3364

3364:                                             ; preds = %3360
  %3365 = call ptr @strim(ptr noundef nonnull %68) #8
  %3366 = call i32 @kstrtou8(ptr noundef %3365, i32 noundef 0, ptr noundef nonnull %69) #8
  %3367 = icmp eq i32 %3366, 0
  br i1 %3367, label %3370, label %3368

3368:                                             ; preds = %3364
  %3369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef nonnull %68, i32 noundef %3366) #9
  br label %3372

3370:                                             ; preds = %3364
  %3371 = load i8, ptr %69, align 1
  store i8 %3371, ptr %3361, align 1
  br label %3372

3372:                                             ; preds = %3370, %3368, %3360
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %69) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %68) #8
  %3373 = load i8, ptr %0, align 4
  %3374 = zext i8 %3373 to i32
  %3375 = shl nuw i32 1, %3374
  %3376 = and i32 %3375, 1792
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3626, label %3378

3378:                                             ; preds = %3372
  %3379 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 82, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %66) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %66, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %67) #8
  store i8 0, ptr %67, align 1, !annotation !8
  %3380 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull %66, i32 noundef 100, i1 noundef zeroext %2) #8
  %3381 = icmp slt i32 %3380, 0
  br i1 %3381, label %3390, label %3382

3382:                                             ; preds = %3378
  %3383 = call ptr @strim(ptr noundef nonnull %66) #8
  %3384 = call i32 @kstrtou8(ptr noundef %3383, i32 noundef 0, ptr noundef nonnull %67) #8
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3388, label %3386

3386:                                             ; preds = %3382
  %3387 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.211, ptr noundef null, ptr noundef nonnull %66, i32 noundef %3384) #9
  br label %3390

3388:                                             ; preds = %3382
  %3389 = load i8, ptr %67, align 1
  store i8 %3389, ptr %3379, align 1
  br label %3390

3390:                                             ; preds = %3388, %3386, %3378
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %67) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %66) #8
  %3391 = load i8, ptr %0, align 4
  %3392 = zext i8 %3391 to i32
  %3393 = shl nuw i32 1, %3392
  %3394 = and i32 %3393, 1792
  %3395 = icmp eq i32 %3394, 0
  br i1 %3395, label %3626, label %3396

3396:                                             ; preds = %3390
  %3397 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 82, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %64) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %64, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %65) #8
  store i8 0, ptr %65, align 1, !annotation !8
  %3398 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull %64, i32 noundef 100, i1 noundef zeroext %2) #8
  %3399 = icmp slt i32 %3398, 0
  br i1 %3399, label %3408, label %3400

3400:                                             ; preds = %3396
  %3401 = call ptr @strim(ptr noundef nonnull %64) #8
  %3402 = call i32 @kstrtou8(ptr noundef %3401, i32 noundef 0, ptr noundef nonnull %65) #8
  %3403 = icmp eq i32 %3402, 0
  br i1 %3403, label %3406, label %3404

3404:                                             ; preds = %3400
  %3405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.212, ptr noundef null, ptr noundef nonnull %64, i32 noundef %3402) #9
  br label %3408

3406:                                             ; preds = %3400
  %3407 = load i8, ptr %65, align 1
  store i8 %3407, ptr %3397, align 1
  br label %3408

3408:                                             ; preds = %3406, %3404, %3396
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %65) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %64) #8
  %3409 = load i8, ptr %0, align 4
  %3410 = zext i8 %3409 to i32
  %3411 = shl nuw i32 1, %3410
  %3412 = and i32 %3411, 1792
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3626, label %3414

3414:                                             ; preds = %3408
  %3415 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 83
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %62) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %62, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %63) #8
  store i8 0, ptr %63, align 1, !annotation !8
  %3416 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull %62, i32 noundef 100, i1 noundef zeroext %2) #8
  %3417 = icmp slt i32 %3416, 0
  br i1 %3417, label %3426, label %3418

3418:                                             ; preds = %3414
  %3419 = call ptr @strim(ptr noundef nonnull %62) #8
  %3420 = call i32 @kstrtou8(ptr noundef %3419, i32 noundef 0, ptr noundef nonnull %63) #8
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3424, label %3422

3422:                                             ; preds = %3418
  %3423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.213, ptr noundef null, ptr noundef nonnull %62, i32 noundef %3420) #9
  br label %3426

3424:                                             ; preds = %3418
  %3425 = load i8, ptr %63, align 1
  store i8 %3425, ptr %3415, align 1
  br label %3426

3426:                                             ; preds = %3424, %3422, %3414
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %63) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %62) #8
  %3427 = load i8, ptr %0, align 4
  %3428 = zext i8 %3427 to i32
  %3429 = shl nuw i32 1, %3428
  %3430 = and i32 %3429, 1792
  %3431 = icmp eq i32 %3430, 0
  br i1 %3431, label %3626, label %3432

3432:                                             ; preds = %3426
  %3433 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 83, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %60) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %60, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %61) #8
  store i8 0, ptr %61, align 1, !annotation !8
  %3434 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull %60, i32 noundef 100, i1 noundef zeroext %2) #8
  %3435 = icmp slt i32 %3434, 0
  br i1 %3435, label %3444, label %3436

3436:                                             ; preds = %3432
  %3437 = call ptr @strim(ptr noundef nonnull %60) #8
  %3438 = call i32 @kstrtou8(ptr noundef %3437, i32 noundef 0, ptr noundef nonnull %61) #8
  %3439 = icmp eq i32 %3438, 0
  br i1 %3439, label %3442, label %3440

3440:                                             ; preds = %3436
  %3441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.214, ptr noundef null, ptr noundef nonnull %60, i32 noundef %3438) #9
  br label %3444

3442:                                             ; preds = %3436
  %3443 = load i8, ptr %61, align 1
  store i8 %3443, ptr %3433, align 1
  br label %3444

3444:                                             ; preds = %3442, %3440, %3432
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %61) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %60) #8
  %3445 = load i8, ptr %0, align 4
  %3446 = zext i8 %3445 to i32
  %3447 = shl nuw i32 1, %3446
  %3448 = and i32 %3447, 1792
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3626, label %3450

3450:                                             ; preds = %3444
  %3451 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 83, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %58) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %58, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %59) #8
  store i8 0, ptr %59, align 1, !annotation !8
  %3452 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull %58, i32 noundef 100, i1 noundef zeroext %2) #8
  %3453 = icmp slt i32 %3452, 0
  br i1 %3453, label %3462, label %3454

3454:                                             ; preds = %3450
  %3455 = call ptr @strim(ptr noundef nonnull %58) #8
  %3456 = call i32 @kstrtou8(ptr noundef %3455, i32 noundef 0, ptr noundef nonnull %59) #8
  %3457 = icmp eq i32 %3456, 0
  br i1 %3457, label %3460, label %3458

3458:                                             ; preds = %3454
  %3459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.215, ptr noundef null, ptr noundef nonnull %58, i32 noundef %3456) #9
  br label %3462

3460:                                             ; preds = %3454
  %3461 = load i8, ptr %59, align 1
  store i8 %3461, ptr %3451, align 1
  br label %3462

3462:                                             ; preds = %3460, %3458, %3450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %58) #8
  %3463 = load i8, ptr %0, align 4
  %3464 = zext i8 %3463 to i32
  %3465 = shl nuw i32 1, %3464
  %3466 = and i32 %3465, 1792
  %3467 = icmp eq i32 %3466, 0
  br i1 %3467, label %3626, label %3468

3468:                                             ; preds = %3462
  %3469 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 84
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %56) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %56, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %57) #8
  store i8 0, ptr %57, align 1, !annotation !8
  %3470 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull %56, i32 noundef 100, i1 noundef zeroext %2) #8
  %3471 = icmp slt i32 %3470, 0
  br i1 %3471, label %3480, label %3472

3472:                                             ; preds = %3468
  %3473 = call ptr @strim(ptr noundef nonnull %56) #8
  %3474 = call i32 @kstrtou8(ptr noundef %3473, i32 noundef 0, ptr noundef nonnull %57) #8
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3478, label %3476

3476:                                             ; preds = %3472
  %3477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.216, ptr noundef null, ptr noundef nonnull %56, i32 noundef %3474) #9
  br label %3480

3478:                                             ; preds = %3472
  %3479 = load i8, ptr %57, align 1
  store i8 %3479, ptr %3469, align 1
  br label %3480

3480:                                             ; preds = %3478, %3476, %3468
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %57) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %56) #8
  %3481 = load i8, ptr %0, align 4
  %3482 = zext i8 %3481 to i32
  %3483 = shl nuw i32 1, %3482
  %3484 = and i32 %3483, 1792
  %3485 = icmp eq i32 %3484, 0
  br i1 %3485, label %3626, label %3486

3486:                                             ; preds = %3480
  %3487 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 84, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %54) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %54, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %55) #8
  store i8 0, ptr %55, align 1, !annotation !8
  %3488 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull %54, i32 noundef 100, i1 noundef zeroext %2) #8
  %3489 = icmp slt i32 %3488, 0
  br i1 %3489, label %3498, label %3490

3490:                                             ; preds = %3486
  %3491 = call ptr @strim(ptr noundef nonnull %54) #8
  %3492 = call i32 @kstrtou8(ptr noundef %3491, i32 noundef 0, ptr noundef nonnull %55) #8
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %3496, label %3494

3494:                                             ; preds = %3490
  %3495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.217, ptr noundef null, ptr noundef nonnull %54, i32 noundef %3492) #9
  br label %3498

3496:                                             ; preds = %3490
  %3497 = load i8, ptr %55, align 1
  store i8 %3497, ptr %3487, align 1
  br label %3498

3498:                                             ; preds = %3496, %3494, %3486
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %55) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %54) #8
  %3499 = load i8, ptr %0, align 4
  %3500 = zext i8 %3499 to i32
  %3501 = shl nuw i32 1, %3500
  %3502 = and i32 %3501, 1792
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3626, label %3504

3504:                                             ; preds = %3498
  %3505 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 84, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %52) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %52, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %53) #8
  store i8 0, ptr %53, align 1, !annotation !8
  %3506 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull %52, i32 noundef 100, i1 noundef zeroext %2) #8
  %3507 = icmp slt i32 %3506, 0
  br i1 %3507, label %3516, label %3508

3508:                                             ; preds = %3504
  %3509 = call ptr @strim(ptr noundef nonnull %52) #8
  %3510 = call i32 @kstrtou8(ptr noundef %3509, i32 noundef 0, ptr noundef nonnull %53) #8
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3514, label %3512

3512:                                             ; preds = %3508
  %3513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.218, ptr noundef null, ptr noundef nonnull %52, i32 noundef %3510) #9
  br label %3516

3514:                                             ; preds = %3508
  %3515 = load i8, ptr %53, align 1
  store i8 %3515, ptr %3505, align 1
  br label %3516

3516:                                             ; preds = %3514, %3512, %3504
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %53) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %52) #8
  %3517 = load i8, ptr %0, align 4
  %3518 = zext i8 %3517 to i32
  %3519 = shl nuw i32 1, %3518
  %3520 = and i32 %3519, 1792
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3626, label %3522

3522:                                             ; preds = %3516
  %3523 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 85
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %50) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %50, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %51) #8
  store i8 0, ptr %51, align 1, !annotation !8
  %3524 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull %50, i32 noundef 100, i1 noundef zeroext %2) #8
  %3525 = icmp slt i32 %3524, 0
  br i1 %3525, label %3534, label %3526

3526:                                             ; preds = %3522
  %3527 = call ptr @strim(ptr noundef nonnull %50) #8
  %3528 = call i32 @kstrtou8(ptr noundef %3527, i32 noundef 0, ptr noundef nonnull %51) #8
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3532, label %3530

3530:                                             ; preds = %3526
  %3531 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.219, ptr noundef null, ptr noundef nonnull %50, i32 noundef %3528) #9
  br label %3534

3532:                                             ; preds = %3526
  %3533 = load i8, ptr %51, align 1
  store i8 %3533, ptr %3523, align 1
  br label %3534

3534:                                             ; preds = %3532, %3530, %3522
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %51) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %50) #8
  %3535 = load i8, ptr %0, align 4
  %3536 = zext i8 %3535 to i32
  %3537 = shl nuw i32 1, %3536
  %3538 = and i32 %3537, 1792
  %3539 = icmp eq i32 %3538, 0
  br i1 %3539, label %3626, label %3540

3540:                                             ; preds = %3534
  %3541 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 85, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %48) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %48, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %49) #8
  store i8 0, ptr %49, align 1, !annotation !8
  %3542 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull %48, i32 noundef 100, i1 noundef zeroext %2) #8
  %3543 = icmp slt i32 %3542, 0
  br i1 %3543, label %3552, label %3544

3544:                                             ; preds = %3540
  %3545 = call ptr @strim(ptr noundef nonnull %48) #8
  %3546 = call i32 @kstrtou8(ptr noundef %3545, i32 noundef 0, ptr noundef nonnull %49) #8
  %3547 = icmp eq i32 %3546, 0
  br i1 %3547, label %3550, label %3548

3548:                                             ; preds = %3544
  %3549 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.220, ptr noundef null, ptr noundef nonnull %48, i32 noundef %3546) #9
  br label %3552

3550:                                             ; preds = %3544
  %3551 = load i8, ptr %49, align 1
  store i8 %3551, ptr %3541, align 1
  br label %3552

3552:                                             ; preds = %3550, %3548, %3540
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %49) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %48) #8
  %3553 = load i8, ptr %0, align 4
  %3554 = zext i8 %3553 to i32
  %3555 = shl nuw i32 1, %3554
  %3556 = and i32 %3555, 1792
  %3557 = icmp eq i32 %3556, 0
  br i1 %3557, label %3626, label %3558

3558:                                             ; preds = %3552
  %3559 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 85, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %46) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %46, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %47) #8
  store i8 0, ptr %47, align 1, !annotation !8
  %3560 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull %46, i32 noundef 100, i1 noundef zeroext %2) #8
  %3561 = icmp slt i32 %3560, 0
  br i1 %3561, label %3570, label %3562

3562:                                             ; preds = %3558
  %3563 = call ptr @strim(ptr noundef nonnull %46) #8
  %3564 = call i32 @kstrtou8(ptr noundef %3563, i32 noundef 0, ptr noundef nonnull %47) #8
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3568, label %3566

3566:                                             ; preds = %3562
  %3567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.221, ptr noundef null, ptr noundef nonnull %46, i32 noundef %3564) #9
  br label %3570

3568:                                             ; preds = %3562
  %3569 = load i8, ptr %47, align 1
  store i8 %3569, ptr %3559, align 1
  br label %3570

3570:                                             ; preds = %3568, %3566, %3558
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %47) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %46) #8
  %3571 = load i8, ptr %0, align 4
  %3572 = zext i8 %3571 to i32
  %3573 = shl nuw i32 1, %3572
  %3574 = and i32 %3573, 1792
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3626, label %3576

3576:                                             ; preds = %3570
  %3577 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %44) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %44, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %45) #8
  store i8 0, ptr %45, align 1, !annotation !8
  %3578 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull %44, i32 noundef 100, i1 noundef zeroext %2) #8
  %3579 = icmp slt i32 %3578, 0
  br i1 %3579, label %3588, label %3580

3580:                                             ; preds = %3576
  %3581 = call ptr @strim(ptr noundef nonnull %44) #8
  %3582 = call i32 @kstrtou8(ptr noundef %3581, i32 noundef 0, ptr noundef nonnull %45) #8
  %3583 = icmp eq i32 %3582, 0
  br i1 %3583, label %3586, label %3584

3584:                                             ; preds = %3580
  %3585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.222, ptr noundef null, ptr noundef nonnull %44, i32 noundef %3582) #9
  br label %3588

3586:                                             ; preds = %3580
  %3587 = load i8, ptr %45, align 1
  store i8 %3587, ptr %3577, align 1
  br label %3588

3588:                                             ; preds = %3586, %3584, %3576
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %45) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %44) #8
  %3589 = load i8, ptr %0, align 4
  %3590 = zext i8 %3589 to i32
  %3591 = shl nuw i32 1, %3590
  %3592 = and i32 %3591, 1792
  %3593 = icmp eq i32 %3592, 0
  br i1 %3593, label %3626, label %3594

3594:                                             ; preds = %3588
  %3595 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 86, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %42) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %42, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #8
  store i8 0, ptr %43, align 1, !annotation !8
  %3596 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull %42, i32 noundef 100, i1 noundef zeroext %2) #8
  %3597 = icmp slt i32 %3596, 0
  br i1 %3597, label %3606, label %3598

3598:                                             ; preds = %3594
  %3599 = call ptr @strim(ptr noundef nonnull %42) #8
  %3600 = call i32 @kstrtou8(ptr noundef %3599, i32 noundef 0, ptr noundef nonnull %43) #8
  %3601 = icmp eq i32 %3600, 0
  br i1 %3601, label %3604, label %3602

3602:                                             ; preds = %3598
  %3603 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.223, ptr noundef null, ptr noundef nonnull %42, i32 noundef %3600) #9
  br label %3606

3604:                                             ; preds = %3598
  %3605 = load i8, ptr %43, align 1
  store i8 %3605, ptr %3595, align 1
  br label %3606

3606:                                             ; preds = %3604, %3602, %3594
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %42) #8
  %3607 = load i8, ptr %0, align 4
  %3608 = zext i8 %3607 to i32
  %3609 = shl nuw i32 1, %3608
  %3610 = and i32 %3609, 1792
  %3611 = icmp eq i32 %3610, 0
  br i1 %3611, label %3626, label %3612

3612:                                             ; preds = %3606
  %3613 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 86, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %40) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %40, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %41) #8
  store i8 0, ptr %41, align 1, !annotation !8
  %3614 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull %40, i32 noundef 100, i1 noundef zeroext %2) #8
  %3615 = icmp slt i32 %3614, 0
  br i1 %3615, label %3624, label %3616

3616:                                             ; preds = %3612
  %3617 = call ptr @strim(ptr noundef nonnull %40) #8
  %3618 = call i32 @kstrtou8(ptr noundef %3617, i32 noundef 0, ptr noundef nonnull %41) #8
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3622, label %3620

3620:                                             ; preds = %3616
  %3621 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.224, ptr noundef null, ptr noundef nonnull %40, i32 noundef %3618) #9
  br label %3624

3622:                                             ; preds = %3616
  %3623 = load i8, ptr %41, align 1
  store i8 %3623, ptr %3613, align 1
  br label %3624

3624:                                             ; preds = %3622, %3620, %3612
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %41) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %40) #8
  %3625 = load i8, ptr %0, align 4
  br label %3626

3626:                                             ; preds = %3624, %3606, %3588, %3570, %3552, %3534, %3516, %3498, %3480, %3462, %3444, %3426, %3408, %3390, %3372, %3354, %3337
  %3627 = phi i8 [ %3625, %3624 ], [ %3607, %3606 ], [ %3589, %3588 ], [ %3571, %3570 ], [ %3553, %3552 ], [ %3535, %3534 ], [ %3517, %3516 ], [ %3499, %3498 ], [ %3481, %3480 ], [ %3463, %3462 ], [ %3445, %3444 ], [ %3427, %3426 ], [ %3409, %3408 ], [ %3391, %3390 ], [ %3373, %3372 ], [ %3355, %3354 ], [ %3339, %3337 ]
  %3628 = icmp ult i8 %3627, 9
  br i1 %3628, label %3658, label %3629

3629:                                             ; preds = %3626
  %3630 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 142
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %38) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %38, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #8
  store i8 0, ptr %39, align 1, !annotation !8
  %3631 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull %38, i32 noundef 100, i1 noundef zeroext %2) #8
  %3632 = icmp slt i32 %3631, 0
  br i1 %3632, label %3641, label %3633

3633:                                             ; preds = %3629
  %3634 = call ptr @strim(ptr noundef nonnull %38) #8
  %3635 = call i32 @kstrtou8(ptr noundef %3634, i32 noundef 0, ptr noundef nonnull %39) #8
  %3636 = icmp eq i32 %3635, 0
  br i1 %3636, label %3639, label %3637

3637:                                             ; preds = %3633
  %3638 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef nonnull %38, i32 noundef %3635) #9
  br label %3641

3639:                                             ; preds = %3633
  %3640 = load i8, ptr %39, align 1
  store i8 %3640, ptr %3630, align 1
  br label %3641

3641:                                             ; preds = %3639, %3637, %3629
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %38) #8
  %3642 = load i8, ptr %0, align 4
  %3643 = icmp ult i8 %3642, 9
  br i1 %3643, label %3658, label %3644

3644:                                             ; preds = %3641
  %3645 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 143
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %36) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %36, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #8
  store i8 0, ptr %37, align 1, !annotation !8
  %3646 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull %36, i32 noundef 100, i1 noundef zeroext %2) #8
  %3647 = icmp slt i32 %3646, 0
  br i1 %3647, label %3656, label %3648

3648:                                             ; preds = %3644
  %3649 = call ptr @strim(ptr noundef nonnull %36) #8
  %3650 = call i32 @kstrtou8(ptr noundef %3649, i32 noundef 0, ptr noundef nonnull %37) #8
  %3651 = icmp eq i32 %3650, 0
  br i1 %3651, label %3654, label %3652

3652:                                             ; preds = %3648
  %3653 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.226, ptr noundef null, ptr noundef nonnull %36, i32 noundef %3650) #9
  br label %3656

3654:                                             ; preds = %3648
  %3655 = load i8, ptr %37, align 1
  store i8 %3655, ptr %3645, align 1
  br label %3656

3656:                                             ; preds = %3654, %3652, %3644
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %36) #8
  %3657 = load i8, ptr %0, align 4
  br label %3658

3658:                                             ; preds = %3656, %3641, %3626
  %3659 = phi i8 [ %3657, %3656 ], [ %3642, %3641 ], [ %3627, %3626 ]
  %3660 = zext i8 %3659 to i32
  %3661 = shl nuw i32 1, %3660
  %3662 = and i32 %3661, 1792
  %3663 = icmp eq i32 %3662, 0
  br i1 %3663, label %3929, label %3664

3664:                                             ; preds = %3658
  %3665 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 87
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %34) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %34, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #8
  store i8 0, ptr %35, align 1, !annotation !8
  %3666 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull %34, i32 noundef 100, i1 noundef zeroext %2) #8
  %3667 = icmp slt i32 %3666, 0
  br i1 %3667, label %3676, label %3668

3668:                                             ; preds = %3664
  %3669 = call ptr @strim(ptr noundef nonnull %34) #8
  %3670 = call i32 @kstrtou8(ptr noundef %3669, i32 noundef 0, ptr noundef nonnull %35) #8
  %3671 = icmp eq i32 %3670, 0
  br i1 %3671, label %3674, label %3672

3672:                                             ; preds = %3668
  %3673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.227, ptr noundef null, ptr noundef nonnull %34, i32 noundef %3670) #9
  br label %3676

3674:                                             ; preds = %3668
  %3675 = load i8, ptr %35, align 1
  store i8 %3675, ptr %3665, align 1
  br label %3676

3676:                                             ; preds = %3674, %3672, %3664
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %34) #8
  %3677 = load i8, ptr %0, align 4
  %3678 = zext i8 %3677 to i32
  %3679 = shl nuw i32 1, %3678
  %3680 = and i32 %3679, 1792
  %3681 = icmp eq i32 %3680, 0
  br i1 %3681, label %3929, label %3682

3682:                                             ; preds = %3676
  %3683 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 87, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %32) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %32, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #8
  store i8 0, ptr %33, align 1, !annotation !8
  %3684 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull %32, i32 noundef 100, i1 noundef zeroext %2) #8
  %3685 = icmp slt i32 %3684, 0
  br i1 %3685, label %3694, label %3686

3686:                                             ; preds = %3682
  %3687 = call ptr @strim(ptr noundef nonnull %32) #8
  %3688 = call i32 @kstrtou8(ptr noundef %3687, i32 noundef 0, ptr noundef nonnull %33) #8
  %3689 = icmp eq i32 %3688, 0
  br i1 %3689, label %3692, label %3690

3690:                                             ; preds = %3686
  %3691 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.228, ptr noundef null, ptr noundef nonnull %32, i32 noundef %3688) #9
  br label %3694

3692:                                             ; preds = %3686
  %3693 = load i8, ptr %33, align 1
  store i8 %3693, ptr %3683, align 1
  br label %3694

3694:                                             ; preds = %3692, %3690, %3682
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %32) #8
  %3695 = load i8, ptr %0, align 4
  %3696 = zext i8 %3695 to i32
  %3697 = shl nuw i32 1, %3696
  %3698 = and i32 %3697, 1792
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3929, label %3700

3700:                                             ; preds = %3694
  %3701 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 87, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %30) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %30, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #8
  store i8 0, ptr %31, align 1, !annotation !8
  %3702 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull %30, i32 noundef 100, i1 noundef zeroext %2) #8
  %3703 = icmp slt i32 %3702, 0
  br i1 %3703, label %3712, label %3704

3704:                                             ; preds = %3700
  %3705 = call ptr @strim(ptr noundef nonnull %30) #8
  %3706 = call i32 @kstrtou8(ptr noundef %3705, i32 noundef 0, ptr noundef nonnull %31) #8
  %3707 = icmp eq i32 %3706, 0
  br i1 %3707, label %3710, label %3708

3708:                                             ; preds = %3704
  %3709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.229, ptr noundef null, ptr noundef nonnull %30, i32 noundef %3706) #9
  br label %3712

3710:                                             ; preds = %3704
  %3711 = load i8, ptr %31, align 1
  store i8 %3711, ptr %3701, align 1
  br label %3712

3712:                                             ; preds = %3710, %3708, %3700
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %30) #8
  %3713 = load i8, ptr %0, align 4
  %3714 = zext i8 %3713 to i32
  %3715 = shl nuw i32 1, %3714
  %3716 = and i32 %3715, 1792
  %3717 = icmp eq i32 %3716, 0
  br i1 %3717, label %3929, label %3718

3718:                                             ; preds = %3712
  %3719 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 88
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %28) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %28, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #8
  store i8 0, ptr %29, align 1, !annotation !8
  %3720 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull %28, i32 noundef 100, i1 noundef zeroext %2) #8
  %3721 = icmp slt i32 %3720, 0
  br i1 %3721, label %3730, label %3722

3722:                                             ; preds = %3718
  %3723 = call ptr @strim(ptr noundef nonnull %28) #8
  %3724 = call i32 @kstrtou8(ptr noundef %3723, i32 noundef 0, ptr noundef nonnull %29) #8
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3728, label %3726

3726:                                             ; preds = %3722
  %3727 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.230, ptr noundef null, ptr noundef nonnull %28, i32 noundef %3724) #9
  br label %3730

3728:                                             ; preds = %3722
  %3729 = load i8, ptr %29, align 1
  store i8 %3729, ptr %3719, align 1
  br label %3730

3730:                                             ; preds = %3728, %3726, %3718
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %28) #8
  %3731 = load i8, ptr %0, align 4
  %3732 = zext i8 %3731 to i32
  %3733 = shl nuw i32 1, %3732
  %3734 = and i32 %3733, 1792
  %3735 = icmp eq i32 %3734, 0
  br i1 %3735, label %3929, label %3736

3736:                                             ; preds = %3730
  %3737 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 88, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %26) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %26, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #8
  store i8 0, ptr %27, align 1, !annotation !8
  %3738 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull %26, i32 noundef 100, i1 noundef zeroext %2) #8
  %3739 = icmp slt i32 %3738, 0
  br i1 %3739, label %3748, label %3740

3740:                                             ; preds = %3736
  %3741 = call ptr @strim(ptr noundef nonnull %26) #8
  %3742 = call i32 @kstrtou8(ptr noundef %3741, i32 noundef 0, ptr noundef nonnull %27) #8
  %3743 = icmp eq i32 %3742, 0
  br i1 %3743, label %3746, label %3744

3744:                                             ; preds = %3740
  %3745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef nonnull %26, i32 noundef %3742) #9
  br label %3748

3746:                                             ; preds = %3740
  %3747 = load i8, ptr %27, align 1
  store i8 %3747, ptr %3737, align 1
  br label %3748

3748:                                             ; preds = %3746, %3744, %3736
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %26) #8
  %3749 = load i8, ptr %0, align 4
  %3750 = zext i8 %3749 to i32
  %3751 = shl nuw i32 1, %3750
  %3752 = and i32 %3751, 1792
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %3929, label %3754

3754:                                             ; preds = %3748
  %3755 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 88, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %24) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %24, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #8
  store i8 0, ptr %25, align 1, !annotation !8
  %3756 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull %24, i32 noundef 100, i1 noundef zeroext %2) #8
  %3757 = icmp slt i32 %3756, 0
  br i1 %3757, label %3766, label %3758

3758:                                             ; preds = %3754
  %3759 = call ptr @strim(ptr noundef nonnull %24) #8
  %3760 = call i32 @kstrtou8(ptr noundef %3759, i32 noundef 0, ptr noundef nonnull %25) #8
  %3761 = icmp eq i32 %3760, 0
  br i1 %3761, label %3764, label %3762

3762:                                             ; preds = %3758
  %3763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef nonnull %24, i32 noundef %3760) #9
  br label %3766

3764:                                             ; preds = %3758
  %3765 = load i8, ptr %25, align 1
  store i8 %3765, ptr %3755, align 1
  br label %3766

3766:                                             ; preds = %3764, %3762, %3754
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %24) #8
  %3767 = load i8, ptr %0, align 4
  %3768 = zext i8 %3767 to i32
  %3769 = shl nuw i32 1, %3768
  %3770 = and i32 %3769, 1792
  %3771 = icmp eq i32 %3770, 0
  br i1 %3771, label %3929, label %3772

3772:                                             ; preds = %3766
  %3773 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 89
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %22) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %22, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #8
  store i8 0, ptr %23, align 1, !annotation !8
  %3774 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull %22, i32 noundef 100, i1 noundef zeroext %2) #8
  %3775 = icmp slt i32 %3774, 0
  br i1 %3775, label %3784, label %3776

3776:                                             ; preds = %3772
  %3777 = call ptr @strim(ptr noundef nonnull %22) #8
  %3778 = call i32 @kstrtou8(ptr noundef %3777, i32 noundef 0, ptr noundef nonnull %23) #8
  %3779 = icmp eq i32 %3778, 0
  br i1 %3779, label %3782, label %3780

3780:                                             ; preds = %3776
  %3781 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.233, ptr noundef null, ptr noundef nonnull %22, i32 noundef %3778) #9
  br label %3784

3782:                                             ; preds = %3776
  %3783 = load i8, ptr %23, align 1
  store i8 %3783, ptr %3773, align 1
  br label %3784

3784:                                             ; preds = %3782, %3780, %3772
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %22) #8
  %3785 = load i8, ptr %0, align 4
  %3786 = zext i8 %3785 to i32
  %3787 = shl nuw i32 1, %3786
  %3788 = and i32 %3787, 1792
  %3789 = icmp eq i32 %3788, 0
  br i1 %3789, label %3929, label %3790

3790:                                             ; preds = %3784
  %3791 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 89, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %20) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %20, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #8
  store i8 0, ptr %21, align 1, !annotation !8
  %3792 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull %20, i32 noundef 100, i1 noundef zeroext %2) #8
  %3793 = icmp slt i32 %3792, 0
  br i1 %3793, label %3802, label %3794

3794:                                             ; preds = %3790
  %3795 = call ptr @strim(ptr noundef nonnull %20) #8
  %3796 = call i32 @kstrtou8(ptr noundef %3795, i32 noundef 0, ptr noundef nonnull %21) #8
  %3797 = icmp eq i32 %3796, 0
  br i1 %3797, label %3800, label %3798

3798:                                             ; preds = %3794
  %3799 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.234, ptr noundef null, ptr noundef nonnull %20, i32 noundef %3796) #9
  br label %3802

3800:                                             ; preds = %3794
  %3801 = load i8, ptr %21, align 1
  store i8 %3801, ptr %3791, align 1
  br label %3802

3802:                                             ; preds = %3800, %3798, %3790
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %20) #8
  %3803 = load i8, ptr %0, align 4
  %3804 = zext i8 %3803 to i32
  %3805 = shl nuw i32 1, %3804
  %3806 = and i32 %3805, 1792
  %3807 = icmp eq i32 %3806, 0
  br i1 %3807, label %3929, label %3808

3808:                                             ; preds = %3802
  %3809 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 89, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %18) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %18, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #8
  store i8 0, ptr %19, align 1, !annotation !8
  %3810 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull %18, i32 noundef 100, i1 noundef zeroext %2) #8
  %3811 = icmp slt i32 %3810, 0
  br i1 %3811, label %3820, label %3812

3812:                                             ; preds = %3808
  %3813 = call ptr @strim(ptr noundef nonnull %18) #8
  %3814 = call i32 @kstrtou8(ptr noundef %3813, i32 noundef 0, ptr noundef nonnull %19) #8
  %3815 = icmp eq i32 %3814, 0
  br i1 %3815, label %3818, label %3816

3816:                                             ; preds = %3812
  %3817 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.235, ptr noundef null, ptr noundef nonnull %18, i32 noundef %3814) #9
  br label %3820

3818:                                             ; preds = %3812
  %3819 = load i8, ptr %19, align 1
  store i8 %3819, ptr %3809, align 1
  br label %3820

3820:                                             ; preds = %3818, %3816, %3808
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %18) #8
  %3821 = load i8, ptr %0, align 4
  %3822 = zext i8 %3821 to i32
  %3823 = shl nuw i32 1, %3822
  %3824 = and i32 %3823, 1792
  %3825 = icmp eq i32 %3824, 0
  br i1 %3825, label %3929, label %3826

3826:                                             ; preds = %3820
  %3827 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 90
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %16) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %16, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #8
  store i8 0, ptr %17, align 1, !annotation !8
  %3828 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull %16, i32 noundef 100, i1 noundef zeroext %2) #8
  %3829 = icmp slt i32 %3828, 0
  br i1 %3829, label %3838, label %3830

3830:                                             ; preds = %3826
  %3831 = call ptr @strim(ptr noundef nonnull %16) #8
  %3832 = call i32 @kstrtou8(ptr noundef %3831, i32 noundef 0, ptr noundef nonnull %17) #8
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3836, label %3834

3834:                                             ; preds = %3830
  %3835 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.236, ptr noundef null, ptr noundef nonnull %16, i32 noundef %3832) #9
  br label %3838

3836:                                             ; preds = %3830
  %3837 = load i8, ptr %17, align 1
  store i8 %3837, ptr %3827, align 1
  br label %3838

3838:                                             ; preds = %3836, %3834, %3826
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %16) #8
  %3839 = load i8, ptr %0, align 4
  %3840 = zext i8 %3839 to i32
  %3841 = shl nuw i32 1, %3840
  %3842 = and i32 %3841, 1792
  %3843 = icmp eq i32 %3842, 0
  br i1 %3843, label %3929, label %3844

3844:                                             ; preds = %3838
  %3845 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 90, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %14) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %14, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  store i8 0, ptr %15, align 1, !annotation !8
  %3846 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull %14, i32 noundef 100, i1 noundef zeroext %2) #8
  %3847 = icmp slt i32 %3846, 0
  br i1 %3847, label %3856, label %3848

3848:                                             ; preds = %3844
  %3849 = call ptr @strim(ptr noundef nonnull %14) #8
  %3850 = call i32 @kstrtou8(ptr noundef %3849, i32 noundef 0, ptr noundef nonnull %15) #8
  %3851 = icmp eq i32 %3850, 0
  br i1 %3851, label %3854, label %3852

3852:                                             ; preds = %3848
  %3853 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.237, ptr noundef null, ptr noundef nonnull %14, i32 noundef %3850) #9
  br label %3856

3854:                                             ; preds = %3848
  %3855 = load i8, ptr %15, align 1
  store i8 %3855, ptr %3845, align 1
  br label %3856

3856:                                             ; preds = %3854, %3852, %3844
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %14) #8
  %3857 = load i8, ptr %0, align 4
  %3858 = zext i8 %3857 to i32
  %3859 = shl nuw i32 1, %3858
  %3860 = and i32 %3859, 1792
  %3861 = icmp eq i32 %3860, 0
  br i1 %3861, label %3929, label %3862

3862:                                             ; preds = %3856
  %3863 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 90, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %12) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %12, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 0, ptr %13, align 1, !annotation !8
  %3864 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull %12, i32 noundef 100, i1 noundef zeroext %2) #8
  %3865 = icmp slt i32 %3864, 0
  br i1 %3865, label %3874, label %3866

3866:                                             ; preds = %3862
  %3867 = call ptr @strim(ptr noundef nonnull %12) #8
  %3868 = call i32 @kstrtou8(ptr noundef %3867, i32 noundef 0, ptr noundef nonnull %13) #8
  %3869 = icmp eq i32 %3868, 0
  br i1 %3869, label %3872, label %3870

3870:                                             ; preds = %3866
  %3871 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.238, ptr noundef null, ptr noundef nonnull %12, i32 noundef %3868) #9
  br label %3874

3872:                                             ; preds = %3866
  %3873 = load i8, ptr %13, align 1
  store i8 %3873, ptr %3863, align 1
  br label %3874

3874:                                             ; preds = %3872, %3870, %3862
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %12) #8
  %3875 = load i8, ptr %0, align 4
  %3876 = zext i8 %3875 to i32
  %3877 = shl nuw i32 1, %3876
  %3878 = and i32 %3877, 1792
  %3879 = icmp eq i32 %3878, 0
  br i1 %3879, label %3929, label %3880

3880:                                             ; preds = %3874
  %3881 = getelementptr inbounds %struct.ssb_sprom, ptr %0, i32 0, i32 91
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %10, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 0, ptr %11, align 1, !annotation !8
  %3882 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull %10, i32 noundef 100, i1 noundef zeroext %2) #8
  %3883 = icmp slt i32 %3882, 0
  br i1 %3883, label %3892, label %3884

3884:                                             ; preds = %3880
  %3885 = call ptr @strim(ptr noundef nonnull %10) #8
  %3886 = call i32 @kstrtou8(ptr noundef %3885, i32 noundef 0, ptr noundef nonnull %11) #8
  %3887 = icmp eq i32 %3886, 0
  br i1 %3887, label %3890, label %3888

3888:                                             ; preds = %3884
  %3889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.239, ptr noundef null, ptr noundef nonnull %10, i32 noundef %3886) #9
  br label %3892

3890:                                             ; preds = %3884
  %3891 = load i8, ptr %11, align 1
  store i8 %3891, ptr %3881, align 1
  br label %3892

3892:                                             ; preds = %3890, %3888, %3880
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #8
  %3893 = load i8, ptr %0, align 4
  %3894 = zext i8 %3893 to i32
  %3895 = shl nuw i32 1, %3894
  %3896 = and i32 %3895, 1792
  %3897 = icmp eq i32 %3896, 0
  br i1 %3897, label %3929, label %3898

3898:                                             ; preds = %3892
  %3899 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 91, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %8, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !8
  %3900 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull %8, i32 noundef 100, i1 noundef zeroext %2) #8
  %3901 = icmp slt i32 %3900, 0
  br i1 %3901, label %3910, label %3902

3902:                                             ; preds = %3898
  %3903 = call ptr @strim(ptr noundef nonnull %8) #8
  %3904 = call i32 @kstrtou8(ptr noundef %3903, i32 noundef 0, ptr noundef nonnull %9) #8
  %3905 = icmp eq i32 %3904, 0
  br i1 %3905, label %3908, label %3906

3906:                                             ; preds = %3902
  %3907 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.240, ptr noundef null, ptr noundef nonnull %8, i32 noundef %3904) #9
  br label %3910

3908:                                             ; preds = %3902
  %3909 = load i8, ptr %9, align 1
  store i8 %3909, ptr %3899, align 1
  br label %3910

3910:                                             ; preds = %3908, %3906, %3898
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #8
  %3911 = load i8, ptr %0, align 4
  %3912 = zext i8 %3911 to i32
  %3913 = shl nuw i32 1, %3912
  %3914 = and i32 %3913, 1792
  %3915 = icmp eq i32 %3914, 0
  br i1 %3915, label %3929, label %3916

3916:                                             ; preds = %3910
  %3917 = getelementptr %struct.ssb_sprom, ptr %0, i32 0, i32 91, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %6, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !8
  %3918 = call fastcc i32 @get_nvram_var(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull %6, i32 noundef 100, i1 noundef zeroext %2) #8
  %3919 = icmp slt i32 %3918, 0
  br i1 %3919, label %3928, label %3920

3920:                                             ; preds = %3916
  %3921 = call ptr @strim(ptr noundef nonnull %6) #8
  %3922 = call i32 @kstrtou8(ptr noundef %3921, i32 noundef 0, ptr noundef nonnull %7) #8
  %3923 = icmp eq i32 %3922, 0
  br i1 %3923, label %3926, label %3924

3924:                                             ; preds = %3920
  %3925 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull @.str.241, ptr noundef null, ptr noundef nonnull %6, i32 noundef %3922) #9
  br label %3928

3926:                                             ; preds = %3920
  %3927 = load i8, ptr %7, align 1
  store i8 %3927, ptr %3917, align 1
  br label %3928

3928:                                             ; preds = %3926, %3924, %3916
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #8
  br label %3929

3929:                                             ; preds = %3928, %3910, %3892, %3874, %3856, %3838, %3820, %3802, %3784, %3766, %3748, %3730, %3712, %3694, %3676, %3658
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_sprom_register_fallbacks() #0 {
  %1 = load i1, ptr @bcm47xx_sprom_registered, align 4
  br i1 %1, label %8, label %2

2:                                                ; preds = %0
  %3 = tail call i32 @bcma_arch_register_fallback_sprom(ptr noundef nonnull @bcm47xx_get_sprom_bcma) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %7

7:                                                ; preds = %5, %2
  store i1 true, ptr @bcm47xx_sprom_registered, align 4
  br label %8

8:                                                ; preds = %7, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_arch_register_fallback_sprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_get_sprom_bcma(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [40 x i8], align 1
  %4 = alloca [40 x i8], align 1
  %5 = alloca [100 x i8], align 1
  %6 = alloca i16, align 2
  %7 = alloca [100 x i8], align 1
  %8 = alloca i16, align 2
  %9 = alloca [10 x i8], align 1
  %10 = alloca [20 x i8], align 1
  %11 = alloca [10 x i8], align 1
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %11) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %11, i8 0, i32 10, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %95 [
    i32 0, label %15
    i32 2, label %87
  ]

15:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(540) %1, i8 0, i32 540, i1 false)
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 16
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  %23 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 12
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %11, i32 noundef 10, ptr noundef nonnull @.str.242, i32 noundef %22, i32 noundef %25)
  %27 = call i32 @strlen(ptr noundef nonnull %11) #8
  %28 = add i32 %27, -1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %9, i8 0, i32 10, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %10, i8 0, i32 20, i1 false) #8, !annotation !8
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %15
  %31 = getelementptr i8, ptr %11, i32 %28
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 47
  br i1 %33, label %34, label %86

34:                                               ; preds = %30
  %35 = icmp eq i32 %28, 0
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 10, ptr noundef nonnull @.str.246, i32 noundef 0) #8
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 20) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %38
  %42 = call i32 @strcmp(ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  br i1 %35, label %54, label %45

45:                                               ; preds = %44
  %46 = call i32 @strlen(ptr noundef nonnull %10) #8
  %47 = icmp eq i32 %46, %28
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = call i32 @strncmp(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %28) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %83, %76, %67, %60, %48, %41
  %52 = phi i32 [ 0, %48 ], [ 0, %41 ], [ 1, %60 ], [ 1, %67 ], [ 2, %76 ], [ 2, %83 ]
  %53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %11, i32 noundef 10, ptr noundef nonnull @.str.247, i32 noundef %52) #8
  br label %86

54:                                               ; preds = %48, %45, %44, %38, %34
  %55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 10, ptr noundef nonnull @.str.246, i32 noundef 1) #8
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 20) #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = call i32 @strcmp(ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %51, label %63

63:                                               ; preds = %60
  br i1 %35, label %70, label %64

64:                                               ; preds = %63
  %65 = call i32 @strlen(ptr noundef nonnull %10) #8
  %66 = icmp eq i32 %65, %28
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @strncmp(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %28) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %51, label %70

70:                                               ; preds = %67, %64, %63, %57, %54
  %71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 10, ptr noundef nonnull @.str.246, i32 noundef 2) #8
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 20) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = call i32 @strcmp(ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %51, label %79

79:                                               ; preds = %76
  br i1 %35, label %86, label %80

80:                                               ; preds = %79
  %81 = call i32 @strlen(ptr noundef nonnull %10) #8
  %82 = icmp eq i32 %81, %28
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = call i32 @strncmp(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %28) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %51, label %86

86:                                               ; preds = %83, %80, %79, %73, %70, %51, %30, %15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #8
  br label %99

87:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(540) %1, i8 0, i32 540, i1 false)
  %88 = tail call ptr @bcma_find_core_unit(ptr noundef %0, i16 noundef zeroext 2066, i8 noundef zeroext 0) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.bcma_device, ptr %88, i32 0, i32 6
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %11, i32 noundef 10, ptr noundef nonnull @.str.243, i32 noundef %93)
  br label %99

95:                                               ; preds = %2
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244) #9
  br label %149

97:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %7, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %98 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(28) %98, i8 0, i32 28, i1 false)
  br label %104

99:                                               ; preds = %90, %86
  %100 = phi i1 [ false, %86 ], [ true, %90 ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %7, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %4, i8 0, i32 40, i1 false) #8, !annotation !8
  %101 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef nonnull %11, ptr noundef nonnull @.str.245) #8
  %102 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 100) #8
  %103 = icmp eq i32 %102, -2
  br i1 %103, label %104, label %109

104:                                              ; preds = %99, %97
  %105 = phi ptr [ null, %97 ], [ %11, %99 ]
  %106 = phi i1 [ false, %97 ], [ %100, %99 ]
  %107 = phi i1 [ false, %97 ], [ true, %99 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @.str.245, i32 12, i1 false)
  %108 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 100) #8
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi ptr [ %11, %99 ], [ %105, %104 ]
  %111 = phi i1 [ %100, %99 ], [ %106, %104 ]
  %112 = phi i1 [ true, %99 ], [ %107, %104 ]
  %113 = phi i32 [ %102, %99 ], [ %108, %104 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = call ptr @strim(ptr noundef nonnull %7) #8
  %117 = call i32 @kstrtou16(ptr noundef %116, i32 noundef 0, ptr noundef nonnull %8) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %110, ptr noundef nonnull @.str.245, ptr noundef null, ptr noundef nonnull %7, i32 noundef %117) #9
  br label %123

121:                                              ; preds = %115
  %122 = load i16, ptr %8, align 2
  store i16 %122, ptr %12, align 2
  br label %125

123:                                              ; preds = %119, %109
  %124 = load i16, ptr %12, align 2
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i16 [ %124, %123 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #8
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i16 5348, ptr %12, align 2
  br label %129

129:                                              ; preds = %128, %125
  %130 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 7, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %5, i8 0, i32 100, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %3, i8 0, i32 40, i1 false) #8, !annotation !8
  br i1 %112, label %131, label %135

131:                                              ; preds = %129
  %132 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef nonnull %110, ptr noundef nonnull @.str.51) #8
  %133 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 100) #8
  %134 = icmp eq i32 %133, -2
  br i1 %134, label %135, label %137

135:                                              ; preds = %131, %129
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @.str.51, i32 10, i1 false)
  %136 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 100) #8
  br label %137

137:                                              ; preds = %135, %131
  %138 = phi i32 [ %133, %131 ], [ %136, %135 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %137
  %141 = call ptr @strim(ptr noundef nonnull %5) #8
  %142 = call i32 @kstrtou16(ptr noundef %141, i32 noundef 0, ptr noundef nonnull %6) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %110, ptr noundef nonnull @.str.51, ptr noundef null, ptr noundef nonnull %5, i32 noundef %142) #9
  br label %148

146:                                              ; preds = %140
  %147 = load i16, ptr %6, align 2
  store i16 %147, ptr %130, align 2
  br label %148

148:                                              ; preds = %146, %144, %137
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #8
  call void @bcm47xx_fill_sprom(ptr noundef %1, ptr noundef %110, i1 noundef zeroext %111)
  br label %149

149:                                              ; preds = %148, %95
  %150 = phi i32 [ -22, %95 ], [ 0, %148 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %11) #8
  ret i32 %150
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_nvram_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca [40 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !8
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 40, ptr noundef nonnull @.str.16, ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %1) #8
  br label %21

13:                                               ; preds = %6
  br i1 %8, label %14, label %16

14:                                               ; preds = %13
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef nonnull %0, ptr noundef %2) #8
  br label %21

16:                                               ; preds = %13
  br i1 %9, label %17, label %19

17:                                               ; preds = %16
  %18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef %2, ptr noundef nonnull %1) #8
  br label %21

19:                                               ; preds = %16
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 40, ptr noundef nonnull @.str.18, ptr noundef %2) #8
  br label %21

21:                                               ; preds = %19, %17, %14, %11
  %22 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %4) #8
  %23 = icmp eq i32 %22, -2
  %24 = select i1 %5, i1 %23, i1 false
  %25 = and i1 %8, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  br i1 %9, label %27, label %29

27:                                               ; preds = %26
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 40, ptr noundef nonnull @.str.17, ptr noundef %2, ptr noundef nonnull %1) #8
  br label %31

29:                                               ; preds = %26
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 40, ptr noundef nonnull @.str.18, ptr noundef %2) #8
  br label %31

31:                                               ; preds = %29, %27
  %32 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %4) #8
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi i32 [ %32, %31 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #8
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm47xx_nvram_getenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
