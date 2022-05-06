; ModuleID = '/llk/IR/drivers/bcma/main.c_pt.bc'
source_filename = "../drivers/bcma/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_find_core_unit:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_find_core_unit\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_find_core_unit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_irq\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bcma_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__bcma_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___bcma_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.61, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.61 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.62, %struct.anon.63, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.62 = type { i8, i8, i8, i8 }
%struct.anon.63 = type { %struct.anon.64, %struct.anon.65 }
%struct.anon.64 = type { i8, i8, i8, i8, i8 }
%struct.anon.65 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description228 = internal constant [49 x i8] c"bcma.description=Broadcom's specific AMBA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [28 x i8] c"bcma.file=drivers/bcma/bcma\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [17 x i8] c"bcma.license=GPL\00", section ".modinfo", align 1
@__kstrtab_bcma_find_core_unit = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_find_core_unit = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_find_core_unit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_find_core_unit to i32), ptr @__kstrtab_bcma_find_core_unit, ptr @__kstrtabns_bcma_find_core_unit }, section "___ksymtab_gpl+bcma_find_core_unit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [45 x i8] c"bus%d: Timeout waiting for register 0x%04X!\0A\00", align 1
@__kstrtab_bcma_core_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_irq to i32), ptr @__kstrtab_bcma_core_irq, ptr @__kstrtabns_bcma_core_irq }, section "___ksymtab+bcma_core_irq", align 4
@bcma_bus_type = internal global %struct.bus_type { ptr @.str.10, ptr null, ptr null, ptr null, ptr @bcma_device_groups, ptr null, ptr @bcma_bus_match, ptr @bcma_device_uevent, ptr @bcma_device_probe, ptr null, ptr @bcma_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bcma%d:%d\00", align 1
@bcma_buses_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bcma_buses_mutex, i64 12), ptr getelementptr (i8, ptr @bcma_buses_mutex, i64 12) } }, align 4
@bcma_bus_next_num = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bus%d: Failed to scan: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"bus%d: No SPROM available\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"bus%d: Failed to get SPROM: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"bus%d: Bus registered\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"bus%d: Some GPIOs are still in use.\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"bus%d: Can not unregister GPIO driver: %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"bus%d: Failed to scan bus: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"bus%d: Early bus registered\0A\00", align 1
@__kstrtab___bcma_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___bcma_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___bcma_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bcma_driver_register to i32), ptr @__kstrtab___bcma_driver_register, ptr @__kstrtabns___bcma_driver_register }, section "___ksymtab_gpl+__bcma_driver_register", align 4
@__kstrtab_bcma_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_driver_unregister to i32), ptr @__kstrtab_bcma_driver_unregister, ptr @__kstrtabns_bcma_driver_unregister }, section "___ksymtab_gpl+bcma_driver_unregister", align 4
@__initcall__kmod_bcma__231_659_bcma_init_bus_register5 = internal global ptr @bcma_init_bus_register, section ".initcall5.init", align 4
@__initcall__kmod_bcma__232_686_bcma_modinit6 = internal global ptr @bcma_modinit, section ".initcall6.init", align 4
@__exitcall_bcma_modexit = internal global ptr @bcma_modexit, section ".exitcall.exit", align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"bcma\00", align 1
@bcma_device_groups = internal global [2 x ptr] [ptr @bcma_device_group, ptr null], align 4
@bcma_device_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bcma_device_attrs, ptr null }, align 4
@bcma_device_attrs = internal global [5 x ptr] [ptr @dev_attr_manuf, ptr @dev_attr_id, ptr @dev_attr_rev, ptr @dev_attr_class, ptr null], align 4
@dev_attr_manuf = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @manuf_show, ptr null }, align 4
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @id_show, ptr null }, align 4
@dev_attr_rev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @rev_show, ptr null }, align 4
@dev_attr_class = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @class_show, ptr null }, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"manuf\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"0x%03X\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0x%02X\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"MODALIAS=bcma:m%04Xid%04Xrev%02Xcl%02X\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"bus%d: Could not register dev for core 0x%03X\0A\00", align 1
@bcma_sflash_dev = external dso_local global %struct.platform_device, align 8
@.str.20 = private unnamed_addr constant [39 x i8] c"bus%d: Error registering serial flash\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"bus%d: Error registering GPIO driver: %i\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"bus%d: Error registering watchdog driver\0A\00", align 1
@bcma_bus_registered = internal unnamed_addr global i1 false, align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"\013bcma: SoC host initialization failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\013bcma: PCI host initialization failed\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_bcma_modexit, ptr @__initcall__kmod_bcma__231_659_bcma_init_bus_register5, ptr @__initcall__kmod_bcma__232_686_bcma_modinit6, ptr @__ksymtab___bcma_driver_register, ptr @__ksymtab_bcma_core_irq, ptr @__ksymtab_bcma_driver_unregister, ptr @__ksymtab_bcma_find_core_unit, ptr @bcma_modexit], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @bcma_find_core_unit(ptr noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %21, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -546
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -54
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %21, label %7

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %8, i32 -552
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = phi ptr [ %20, %19 ], [ null, %3 ], [ null, %16 ]
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @bcma_wait_value(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = add i32 %6, %4
  br label %8

8:                                                ; preds = %17, %5
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i16 noundef zeroext %1) #10
  %15 = and i32 %14, %2
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %29, label %17

17:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #10
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %19, %7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %8, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 11
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %27, i32 noundef %28) #11
  br label %29

29:                                               ; preds = %22, %8
  ret i1 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_core_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [1 x i32], align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %49 [
    i32 0, label %8
    i32 2, label %13
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %12 = load i32, ptr %11, align 4
  br label %49

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp eq i32 %1, 0
  %18 = and i1 %17, %16
  br i1 %18, label %49, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #10, !annotation !10
  %23 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %27 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 2, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = call i32 @of_irq_parse_one(ptr noundef nonnull %28, i32 noundef %1, ptr noundef nonnull %4) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %23, align 8
  br label %36

35:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %45

36:                                               ; preds = %33, %26
  %37 = phi ptr [ %34, %33 ], [ %24, %26 ]
  store ptr %37, ptr %4, align 4
  %38 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 2
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #10
  store i32 %42, ptr %3, align 4
  %43 = call i32 @of_irq_parse_raw(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36, %35
  %46 = call i32 @irq_create_of_mapping(ptr noundef nonnull %4) #10
  br label %47

47:                                               ; preds = %45, %36, %22
  %48 = phi i32 [ %46, %45 ], [ 0, %22 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  br label %49

49:                                               ; preds = %47, %19, %13, %8, %2
  %50 = phi i32 [ %48, %47 ], [ %12, %8 ], [ 0, %19 ], [ 0, %2 ], [ 2, %13 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_prepare_core(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [1 x i32], align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 33
  store ptr @bcma_release_core_dev, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 5
  store ptr @bcma_bus_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %14) #10
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 1
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %74, label %20

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !10
  %21 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @of_get_next_child(ptr noundef nonnull %22, ptr noundef null) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 8
  br label %29

29:                                               ; preds = %38, %27
  %30 = phi ptr [ %25, %27 ], [ %40, %38 ]
  %31 = call ptr @__of_get_address(ptr noundef nonnull %30, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %5, ptr noundef null) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = call i64 @of_translate_address(ptr noundef nonnull %30, ptr noundef nonnull %31) #10
  %35 = load i32, ptr %28, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33, %29
  %39 = load ptr, ptr %21, align 8
  %40 = call ptr @of_get_next_child(ptr noundef %39, ptr noundef nonnull %30) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29

42:                                               ; preds = %38, %24, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %45

43:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %44 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 25
  store ptr %30, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi ptr [ null, %42 ], [ %30, %43 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #10, !annotation !10
  %47 = load ptr, ptr %21, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %50 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 25
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = call i32 @of_irq_parse_one(ptr noundef nonnull %51, i32 noundef 0, ptr noundef nonnull %4) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %21, align 8
  br label %59

58:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %68

59:                                               ; preds = %56, %49
  %60 = phi ptr [ %57, %56 ], [ %47, %49 ]
  store ptr %60, ptr %4, align 4
  %61 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  store i32 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 2
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #10
  store i32 %65, ptr %3, align 4
  %66 = call i32 @of_irq_parse_raw(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59, %58
  %69 = call i32 @irq_create_of_mapping(ptr noundef nonnull %4) #10
  br label %70

70:                                               ; preds = %68, %59, %45
  %71 = phi i32 [ %69, %68 ], [ 0, %45 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %72 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 4
  store i32 %71, ptr %72, align 4
  %73 = call i32 @of_dma_configure_id(ptr noundef %6, ptr noundef %46, i1 noundef zeroext false, ptr noundef null) #10
  br label %74

74:                                               ; preds = %70, %2
  %75 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  switch i32 %76, label %94 [
    i32 0, label %77
    i32 2, label %85
  ]

77:                                               ; preds = %74
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 3
  store ptr %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 46
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 4
  store i32 %83, ptr %84, align 4
  br label %94

85:                                               ; preds = %74
  %86 = load ptr, ptr %0, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 3
  store ptr %86, ptr %89, align 8
  br label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 17
  %92 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 16
  store ptr %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 3
  store ptr %6, ptr %93, align 8
  br label %94

94:                                               ; preds = %90, %88, %77, %74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_release_core_dev(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 524
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @iounmap(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 528
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @iounmap(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %12) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_init_bus(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @bcma_buses_mutex) #10
  %2 = load i32, ptr @bcma_bus_next_num, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @bcma_bus_next_num, align 4
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  store i8 %4, ptr %5, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @bcma_buses_mutex) #10
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 10
  store i8 0, ptr %8, align 4
  tail call void @bcma_detect_chip(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_detect_chip(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_unregister_cores(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %18, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %7, %16 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %6, i32 -56
  %9 = load i8, ptr %8, align 8, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %7, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %15 = getelementptr i8, ptr %6, i32 -536
  tail call void @device_unregister(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %11, %5
  %17 = icmp eq ptr %7, %2
  br i1 %17, label %18, label %5

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12, i32 9
  %24 = load ptr, ptr %23, align 4
  tail call void @platform_device_unregister(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %22, %18
  %26 = load ptr, ptr %2, align 4
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %36, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %30, %28 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  store volatile ptr %30, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %34 = getelementptr i8, ptr %29, i32 -536
  tail call void @put_device(ptr noundef %34) #10
  %35 = icmp eq ptr %30, %2
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_register(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @bcma_bus_scan(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %8, i32 noundef %2) #11
  br label %318

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 21248
  %13 = select i1 %12, i16 1280, i16 2048
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %55, label %17

17:                                               ; preds = %26, %9
  %18 = phi ptr [ %27, %26 ], [ %15, %9 ]
  %19 = getelementptr i8, ptr %18, i32 -546
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, %13
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -54
  %24 = load i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %35, label %17

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %18, i32 -552
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  store ptr %30, ptr %33, align 4
  tail call void @bcma_core_chipcommon_early_init(ptr noundef %33) #10
  %34 = load ptr, ptr %14, align 4
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi ptr [ %34, %32 ], [ %15, %29 ], [ %15, %26 ]
  %37 = icmp eq ptr %36, %14
  br i1 %37, label %55, label %38

38:                                               ; preds = %47, %35
  %39 = phi ptr [ %48, %47 ], [ %36, %35 ]
  %40 = getelementptr i8, ptr %39, i32 -546
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 2080
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %39, i32 -54
  %45 = load i8, ptr %44, align 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %38
  %48 = load ptr, ptr %39, align 4
  %49 = icmp eq ptr %48, %14
  br i1 %49, label %55, label %38

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %39, i32 -552
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 14
  store ptr %51, ptr %54, align 4
  tail call void @bcma_core_pci_early_init(ptr noundef %54) #10
  br label %55

55:                                               ; preds = %53, %50, %47, %35, %9
  %56 = load ptr, ptr %0, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @of_platform_default_populate(ptr noundef %60, ptr noundef null, ptr noundef nonnull %56) #10
  br label %62

62:                                               ; preds = %58, %55
  %63 = load ptr, ptr %14, align 4
  %64 = icmp eq ptr %63, %14
  br i1 %64, label %88, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  br label %67

67:                                               ; preds = %85, %65
  %68 = phi ptr [ %63, %65 ], [ %86, %85 ]
  %69 = getelementptr i8, ptr %68, i32 -546
  %70 = load i16, ptr %69, align 2
  %71 = add i16 %70, -1289
  %72 = icmp ult i16 %71, 2
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = getelementptr i8, ptr %68, i32 -536
  %75 = tail call i32 @device_add(ptr noundef %74) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 4
  %79 = load i8, ptr %66, align 1
  %80 = zext i8 %79 to i32
  %81 = load i16, ptr %69, align 2
  %82 = zext i16 %81 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.19, i32 noundef %80, i32 noundef %82) #11
  br label %85

83:                                               ; preds = %73
  %84 = getelementptr i8, ptr %68, i32 -56
  store i8 1, ptr %84, align 8
  br label %85

85:                                               ; preds = %83, %77, %67
  %86 = load ptr, ptr %68, align 4
  %87 = icmp eq ptr %86, %14
  br i1 %87, label %88, label %67

88:                                               ; preds = %85, %62
  %89 = tail call i32 @bcma_sprom_get(ptr noundef %0) #10
  switch i32 %89, label %95 [
    i32 -2, label %90
    i32 0, label %100
  ]

90:                                               ; preds = %88
  %91 = load ptr, ptr %0, align 4
  %92 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.3, i32 noundef %94) #11
  br label %100

95:                                               ; preds = %88
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.4, i32 noundef %99, i32 noundef %89) #11
  br label %100

100:                                              ; preds = %95, %90, %88
  %101 = load i16, ptr %10, align 4
  %102 = icmp eq i16 %101, 21248
  %103 = select i1 %102, i16 1280, i16 2048
  %104 = load ptr, ptr %14, align 4
  %105 = icmp eq ptr %104, %14
  br i1 %105, label %281, label %106

106:                                              ; preds = %115, %100
  %107 = phi ptr [ %116, %115 ], [ %104, %100 ]
  %108 = getelementptr i8, ptr %107, i32 -546
  %109 = load i16, ptr %108, align 2
  %110 = icmp eq i16 %109, %103
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = getelementptr i8, ptr %107, i32 -54
  %113 = load i8, ptr %112, align 2
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111, %106
  %116 = load ptr, ptr %107, align 4
  %117 = icmp eq ptr %116, %14
  br i1 %117, label %124, label %106

118:                                              ; preds = %111
  %119 = getelementptr i8, ptr %107, i32 -552
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  store ptr %119, ptr %122, align 4
  tail call void @bcma_core_chipcommon_init(ptr noundef %122) #10
  %123 = load ptr, ptr %14, align 4
  br label %124

124:                                              ; preds = %121, %118, %115
  %125 = phi ptr [ %123, %121 ], [ %104, %118 ], [ %104, %115 ]
  %126 = icmp eq ptr %125, %14
  br i1 %126, label %281, label %127

127:                                              ; preds = %136, %124
  %128 = phi ptr [ %137, %136 ], [ %125, %124 ]
  %129 = getelementptr i8, ptr %128, i32 -546
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %130, 1291
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = getelementptr i8, ptr %128, i32 -54
  %134 = load i8, ptr %133, align 2
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132, %127
  %137 = load ptr, ptr %128, align 4
  %138 = icmp eq ptr %137, %14
  br i1 %138, label %146, label %127

139:                                              ; preds = %132
  %140 = getelementptr i8, ptr %128, i32 -552
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 13
  store ptr %140, ptr %143, align 4
  %144 = tail call i32 @bcma_core_chipcommon_b_init(ptr noundef %143) #10
  %145 = load ptr, ptr %14, align 4
  br label %146

146:                                              ; preds = %142, %139, %136
  %147 = phi ptr [ %145, %142 ], [ %125, %139 ], [ %125, %136 ]
  %148 = icmp eq ptr %147, %14
  br i1 %148, label %281, label %149

149:                                              ; preds = %158, %146
  %150 = phi ptr [ %159, %158 ], [ %147, %146 ]
  %151 = getelementptr i8, ptr %150, i32 -546
  %152 = load i16, ptr %151, align 2
  %153 = icmp eq i16 %152, 2092
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = getelementptr i8, ptr %150, i32 -54
  %156 = load i8, ptr %155, align 2
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154, %149
  %159 = load ptr, ptr %150, align 4
  %160 = icmp eq ptr %159, %14
  br i1 %160, label %166, label %149

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %150, i32 -552
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 16
  store ptr %162, ptr %165, align 4
  br label %166

166:                                              ; preds = %164, %161, %158
  br label %167

167:                                              ; preds = %176, %166
  %168 = phi ptr [ %177, %176 ], [ %147, %166 ]
  %169 = getelementptr i8, ptr %168, i32 -546
  %170 = load i16, ptr %169, align 2
  %171 = icmp eq i16 %170, 2080
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = getelementptr i8, ptr %168, i32 -54
  %174 = load i8, ptr %173, align 2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %172, %167
  %177 = load ptr, ptr %168, align 4
  %178 = icmp eq ptr %177, %14
  br i1 %178, label %185, label %167

179:                                              ; preds = %172
  %180 = getelementptr i8, ptr %168, i32 -552
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 14
  store ptr %180, ptr %183, align 4
  tail call void @bcma_core_pci_init(ptr noundef %183) #10
  %184 = load ptr, ptr %14, align 4
  br label %185

185:                                              ; preds = %182, %179, %176
  %186 = phi ptr [ %184, %182 ], [ %147, %179 ], [ %147, %176 ]
  %187 = icmp eq ptr %186, %14
  br i1 %187, label %281, label %188

188:                                              ; preds = %197, %185
  %189 = phi ptr [ %198, %197 ], [ %186, %185 ]
  %190 = getelementptr i8, ptr %189, i32 -546
  %191 = load i16, ptr %190, align 2
  %192 = icmp eq i16 %191, 2080
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = getelementptr i8, ptr %189, i32 -54
  %195 = load i8, ptr %194, align 2
  %196 = icmp eq i8 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %193, %188
  %198 = load ptr, ptr %189, align 4
  %199 = icmp eq ptr %198, %14
  br i1 %199, label %206, label %188

200:                                              ; preds = %193
  %201 = getelementptr i8, ptr %189, i32 -552
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = getelementptr %struct.bcma_bus, ptr %0, i32 0, i32 14, i32 1
  store ptr %201, ptr %204, align 4
  tail call void @bcma_core_pci_init(ptr noundef %204) #10
  %205 = load ptr, ptr %14, align 4
  br label %206

206:                                              ; preds = %203, %200, %197
  %207 = phi ptr [ %205, %203 ], [ %186, %200 ], [ %186, %197 ]
  %208 = icmp eq ptr %207, %14
  br i1 %208, label %281, label %209

209:                                              ; preds = %218, %206
  %210 = phi ptr [ %219, %218 ], [ %207, %206 ]
  %211 = getelementptr i8, ptr %210, i32 -546
  %212 = load i16, ptr %211, align 2
  %213 = icmp eq i16 %212, 2108
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = getelementptr i8, ptr %210, i32 -54
  %216 = load i8, ptr %215, align 2
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214, %209
  %219 = load ptr, ptr %210, align 4
  %220 = icmp eq ptr %219, %14
  br i1 %220, label %227, label %209

221:                                              ; preds = %214
  %222 = getelementptr i8, ptr %210, i32 -552
  %223 = icmp eq ptr %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 15
  store ptr %222, ptr %225, align 4
  tail call void @bcma_core_pcie2_init(ptr noundef %225) #10
  %226 = load ptr, ptr %14, align 4
  br label %227

227:                                              ; preds = %224, %221, %218
  %228 = phi ptr [ %226, %224 ], [ %207, %221 ], [ %207, %218 ]
  %229 = icmp eq ptr %228, %14
  br i1 %229, label %281, label %230

230:                                              ; preds = %239, %227
  %231 = phi ptr [ %240, %239 ], [ %228, %227 ]
  %232 = getelementptr i8, ptr %231, i32 -546
  %233 = load i16, ptr %232, align 2
  %234 = icmp eq i16 %233, 1500
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = getelementptr i8, ptr %231, i32 -54
  %237 = load i8, ptr %236, align 2
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235, %230
  %240 = load ptr, ptr %231, align 4
  %241 = icmp eq ptr %240, %14
  br i1 %241, label %248, label %230

242:                                              ; preds = %235
  %243 = getelementptr i8, ptr %231, i32 -552
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 17
  store ptr %243, ptr %246, align 4
  tail call void @bcma_core_gmac_cmn_init(ptr noundef %246) #10
  %247 = load ptr, ptr %14, align 4
  br label %248

248:                                              ; preds = %245, %242, %239
  %249 = phi ptr [ %247, %245 ], [ %228, %242 ], [ %228, %239 ]
  %250 = icmp eq ptr %249, %14
  br i1 %250, label %281, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  br label %253

253:                                              ; preds = %278, %251
  %254 = phi ptr [ %249, %251 ], [ %279, %278 ]
  %255 = getelementptr i8, ptr %254, i32 -546
  %256 = load i16, ptr %255, align 2
  switch i16 %256, label %257 [
    i16 1280, label %278
    i16 2048, label %278
    i16 1291, label %278
    i16 2052, label %278
    i16 2080, label %278
    i16 2108, label %278
    i16 2092, label %278
    i16 1500, label %278
  ]

257:                                              ; preds = %253
  %258 = add i16 %256, -1289
  %259 = icmp ult i16 %258, 2
  br i1 %259, label %278, label %260

260:                                              ; preds = %257
  %261 = icmp eq i16 %256, 1325
  br i1 %261, label %262, label %266

262:                                              ; preds = %260
  %263 = getelementptr i8, ptr %254, i32 -54
  %264 = load i8, ptr %263, align 2
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %262, %260
  %267 = getelementptr i8, ptr %254, i32 -536
  %268 = tail call i32 @device_add(ptr noundef %267) #10
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %0, align 4
  %272 = load i8, ptr %252, align 1
  %273 = zext i8 %272 to i32
  %274 = load i16, ptr %255, align 2
  %275 = zext i16 %274 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.19, i32 noundef %273, i32 noundef %275) #11
  br label %278

276:                                              ; preds = %266
  %277 = getelementptr i8, ptr %254, i32 -56
  store i8 1, ptr %277, align 8
  br label %278

278:                                              ; preds = %276, %270, %262, %257, %253, %253, %253, %253, %253, %253, %253, %253
  %279 = load ptr, ptr %254, align 4
  %280 = icmp eq ptr %279, %14
  br i1 %280, label %281, label %253

281:                                              ; preds = %278, %248, %227, %206, %185, %146, %124, %100
  %282 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  %283 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12, i32 7
  %284 = load i8, ptr %283, align 4, !range !11
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %281
  %287 = tail call i32 @platform_device_register(ptr noundef nonnull @bcma_sflash_dev) #10
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %0, align 4
  %291 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.20, i32 noundef %293) #11
  br label %294

294:                                              ; preds = %289, %286, %281
  %295 = tail call i32 @bcma_gpio_init(ptr noundef %282) #10
  switch i32 %295, label %296 [
    i32 -524, label %301
    i32 0, label %301
  ]

296:                                              ; preds = %294
  %297 = load ptr, ptr %0, align 4
  %298 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %297, ptr noundef nonnull @.str.21, i32 noundef %300, i32 noundef %295) #11
  br label %301

301:                                              ; preds = %296, %294, %294
  %302 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %303 = load i32, ptr %302, align 4
  %304 = icmp eq i32 %303, 2
  br i1 %304, label %305, label %313

305:                                              ; preds = %301
  %306 = tail call i32 @bcma_chipco_watchdog_register(ptr noundef %282) #10
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %305
  %309 = load ptr, ptr %0, align 4
  %310 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.22, i32 noundef %312) #11
  br label %313

313:                                              ; preds = %308, %305, %301
  %314 = load ptr, ptr %0, align 4
  %315 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %314, ptr noundef nonnull @.str.5, i32 noundef %317) #11
  br label %318

318:                                              ; preds = %313, %4
  %319 = phi i32 [ %2, %4 ], [ 0, %313 ]
  ret i32 %319
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_scan(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_chipcommon_early_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_early_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_sprom_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_chipcommon_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_chipcommon_b_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pcie2_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_gmac_cmn_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_bus_unregister(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  %3 = tail call i32 @bcma_gpio_unregister(ptr noundef %2) #10
  switch i32 %3, label %9 [
    i32 -16, label %4
    i32 0, label %14
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %8) #11
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef %13, i32 noundef %3) #11
  br label %14

14:                                               ; preds = %9, %4, %1
  %15 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 13
  tail call void @bcma_core_chipcommon_b_free(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %32, label %19

19:                                               ; preds = %30, %14
  %20 = phi ptr [ %21, %30 ], [ %17, %14 ]
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %20, i32 -56
  %23 = load i8, ptr %22, align 8, !range !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %21, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %29 = getelementptr i8, ptr %20, i32 -536
  tail call void @device_unregister(ptr noundef %29) #10
  br label %30

30:                                               ; preds = %25, %19
  %31 = icmp eq ptr %21, %16
  br i1 %31, label %32, label %19

32:                                               ; preds = %30, %14
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12, i32 9
  %38 = load ptr, ptr %37, align 4
  tail call void @platform_device_unregister(ptr noundef %38) #10
  br label %39

39:                                               ; preds = %36, %32
  %40 = load ptr, ptr %16, align 4
  %41 = icmp eq ptr %40, %16
  br i1 %41, label %50, label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %44, %42 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %44, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  %48 = getelementptr i8, ptr %43, i32 -536
  tail call void @put_device(ptr noundef %48) #10
  %49 = icmp eq ptr %44, %16
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_gpio_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_chipcommon_b_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_early_register(ptr noundef %0) local_unnamed_addr #5 section ".init.text" {
  %2 = tail call i32 @bcma_bus_scan(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %8, i32 noundef %2) #11
  br label %60

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 21248
  %13 = select i1 %12, i16 1280, i16 2048
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %55, label %17

17:                                               ; preds = %26, %9
  %18 = phi ptr [ %27, %26 ], [ %15, %9 ]
  %19 = getelementptr i8, ptr %18, i32 -546
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, %13
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -54
  %24 = load i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %35, label %17

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %18, i32 -552
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  store ptr %30, ptr %33, align 4
  tail call void @bcma_core_chipcommon_early_init(ptr noundef %33) #10
  %34 = load ptr, ptr %14, align 4
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi ptr [ %34, %32 ], [ %15, %29 ], [ %15, %26 ]
  %37 = icmp eq ptr %36, %14
  br i1 %37, label %55, label %38

38:                                               ; preds = %47, %35
  %39 = phi ptr [ %48, %47 ], [ %36, %35 ]
  %40 = getelementptr i8, ptr %39, i32 -546
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 2092
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %39, i32 -54
  %45 = load i8, ptr %44, align 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %38
  %48 = load ptr, ptr %39, align 4
  %49 = icmp eq ptr %48, %14
  br i1 %49, label %55, label %38

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %39, i32 -552
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 16
  store ptr %51, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %50, %47, %35, %9
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 11
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.9, i32 noundef %59) #11
  br label %60

60:                                               ; preds = %55, %4
  %61 = phi i32 [ -1, %4 ], [ 0, %55 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_suspend(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %1
  %6 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -552
  %8 = getelementptr i8, ptr %6, i32 -480
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %9, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %7) #10
  br label %17

17:                                               ; preds = %15, %11, %5
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_resume(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 12, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, -2
  store i8 %8, ptr %6, align 4
  tail call void @bcma_core_chipcommon_init(ptr noundef %2) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %28, label %13

13:                                               ; preds = %25, %9
  %14 = phi ptr [ %26, %25 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -552
  %16 = getelementptr i8, ptr %14, i32 -480
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %17, i32 -8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %15) #10
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = load ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %28, label %13

28:                                               ; preds = %25, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__bcma_driver_register(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.bcma_driver, ptr %0, i32 0, i32 7
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bcma_driver, ptr %0, i32 0, i32 7, i32 1
  store ptr @bcma_bus_type, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bcma_driver, ptr %0, i32 0, i32 7, i32 2
  store ptr %1, ptr %6, align 4
  %7 = tail call i32 @driver_register(ptr noundef %4) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_driver_unregister(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcma_driver, ptr %0, i32 0, i32 7
  tail call void @driver_unregister(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcma_init_bus_register() #5 section ".init.text" {
  %1 = load i1, ptr @bcma_bus_registered, align 4
  br i1 %1, label %6, label %2

2:                                                ; preds = %0
  %3 = tail call i32 @bus_register(ptr noundef nonnull @bcma_bus_type) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i1 true, ptr @bcma_bus_registered, align 4
  br label %6

6:                                                ; preds = %5, %2, %0
  %7 = phi i32 [ 0, %0 ], [ 0, %5 ], [ %3, %2 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcma_modinit() #5 section ".init.text" {
  %1 = load i1, ptr @bcma_bus_registered, align 4
  br i1 %1, label %6, label %2

2:                                                ; preds = %0
  %3 = tail call i32 @bus_register(ptr noundef nonnull @bcma_bus_type) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  store i1 true, ptr @bcma_bus_registered, align 4
  br label %6

6:                                                ; preds = %5, %0
  %7 = tail call i32 @bcma_host_soc_register_driver() #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %11

11:                                               ; preds = %9, %6
  %12 = tail call i32 @bcma_host_pci_init() #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %16

16:                                               ; preds = %14, %11, %2
  %17 = phi i32 [ 0, %14 ], [ 0, %11 ], [ %3, %2 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcma_modexit() #5 section ".exit.text" {
  tail call void @bcma_host_pci_exit() #11
  tail call void @bcma_host_soc_unregister_driver() #11
  tail call void @bus_unregister(ptr noundef nonnull @bcma_bus_type) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bcma_host_pci_exit() local_unnamed_addr #3 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bcma_host_soc_unregister_driver() local_unnamed_addr #3 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_raw(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @bcma_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %1, i32 -24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -10
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = getelementptr i8, ptr %0, i32 -7
  br label %9

9:                                                ; preds = %47, %2
  %10 = phi ptr [ %5, %2 ], [ %48, %47 ]
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bcma_device_id, ptr %10, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bcma_device_id, ptr %10, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %17, %13, %9
  %22 = load i16, ptr %3, align 2
  %23 = icmp eq i16 %11, %22
  %24 = icmp eq i16 %11, -1
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bcma_device_id, ptr %10, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = load i16, ptr %6, align 2
  %30 = icmp eq i16 %28, %29
  %31 = icmp eq i16 %28, -1
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.bcma_device_id, ptr %10, i32 0, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = load i8, ptr %7, align 2
  %37 = icmp eq i8 %35, %36
  %38 = icmp eq i8 %35, -1
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.bcma_device_id, ptr %10, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = load i8, ptr %8, align 1
  %44 = icmp eq i8 %42, %43
  %45 = icmp eq i8 %42, -1
  %46 = or i1 %45, %44
  br i1 %46, label %49, label %47

47:                                               ; preds = %40, %33, %26, %21
  %48 = getelementptr %struct.bcma_device_id, ptr %10, i32 1
  br label %9

49:                                               ; preds = %40, %17
  %50 = phi i32 [ 1, %40 ], [ 0, %17 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_device_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr i8, ptr %0, i32 -10
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %0, i32 -7
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_device_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @get_device(ptr noundef %0) #10
  %5 = getelementptr i8, ptr %3, i32 -20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = tail call i32 %6(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @put_device(ptr noundef %0) #10
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = phi i32 [ %10, %12 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_device_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  tail call void %5(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %7, %1
  tail call void @put_device(ptr noundef %0) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @manuf_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -10
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -7
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_gpio_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_watchdog_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @bcma_host_soc_register_driver() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @bcma_host_pci_init() local_unnamed_addr #3 section ".init.text"

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2153673299}
!9 = !{i64 2153673141}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
