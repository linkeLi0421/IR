; ModuleID = '/llk/IR/drivers/bcma/host_pci.c_pt.bc'
source_filename = "../drivers/bcma/host_pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_host_pci_up:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_host_pci_up\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_host_pci_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_host_pci_down:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_host_pci_down\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_host_pci_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_host_pci_irq_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_host_pci_irq_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_host_pci_irq_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.66, %struct.anon.67, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.anon.67 = type { %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i8, i8, i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@bcma_pci_bridge_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @bcma_pci_bridge_tbl, ptr @bcma_host_pci_probe, ptr @bcma_host_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcma_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@.str = private unnamed_addr constant [5 x i8] c"bcma\00", align 1
@__kstrtab_bcma_host_pci_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_host_pci_up = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_host_pci_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_host_pci_up to i32), ptr @__kstrtab_bcma_host_pci_up, ptr @__kstrtabns_bcma_host_pci_up }, section "___ksymtab_gpl+bcma_host_pci_up", align 4
@__kstrtab_bcma_host_pci_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_host_pci_down = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_host_pci_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_host_pci_down to i32), ptr @__kstrtab_bcma_host_pci_down, ptr @__kstrtabns_bcma_host_pci_down }, section "___ksymtab_gpl+bcma_host_pci_down", align 4
@__kstrtab_bcma_host_pci_irq_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_host_pci_irq_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_host_pci_irq_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_host_pci_irq_ctl to i32), ptr @__kstrtab_bcma_host_pci_irq_ctl, ptr @__kstrtabns_bcma_host_pci_irq_ctl }, section "___ksymtab_gpl+bcma_host_pci_irq_ctl", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bcma-pci-bridge\00", align 1
@bcma_pci_bridge_tbl = internal constant [21 x %struct.pci_device_id] [%struct.pci_device_id { i32 5348, i32 1398, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17171, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43224, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17201, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17239, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17240, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17248, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4136, i32 22, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4136, i32 24, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4187, i32 57490, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4156, i32 32842, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17312, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17321, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17322, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17329, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 18215, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43227, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43228, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@bcma_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcma_host_pci_suspend, ptr @bcma_host_pci_resume, ptr @bcma_host_pci_suspend, ptr @bcma_host_pci_resume, ptr @bcma_host_pci_suspend, ptr @bcma_host_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"bus%d: PCI card detected, they are not supported.\0A\00", align 1
@bcma_host_pci_ops = internal constant %struct.bcma_host_ops { ptr @bcma_host_pci_read8, ptr @bcma_host_pci_read16, ptr @bcma_host_pci_read32, ptr @bcma_host_pci_write8, ptr @bcma_host_pci_write16, ptr @bcma_host_pci_write32, ptr @bcma_host_pci_aread32, ptr @bcma_host_pci_awrite32 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_bcma_host_pci_down, ptr @__ksymtab_bcma_host_pci_irq_ctl, ptr @__ksymtab_bcma_host_pci_up, ptr @bcma_host_pci_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @bcma_host_pci_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @bcma_pci_bridge_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @bcma_host_pci_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @bcma_pci_bridge_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_host_pci_up(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 15
  tail call void @bcma_core_pcie2_up(ptr noundef %10) #6
  br label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 14
  tail call void @bcma_core_pci_up(ptr noundef %12) #6
  br label %13

13:                                               ; preds = %11, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pcie2_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_host_pci_down(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 14
  tail call void @bcma_core_pci_down(ptr noundef %10) #6
  br label %11

11:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_host_pci_irq_ctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef 148, ptr noundef nonnull %4) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 256, %16
  br i1 %2, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, ptr %4, align 4
  %20 = or i32 %19, %17
  br label %25

21:                                               ; preds = %13
  %22 = xor i32 %17, -1
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, %22
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %24, %21 ], [ %20, %18 ]
  store i32 %26, ptr %4, align 4
  %27 = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 148, i32 noundef %26) #6
  br label %28

28:                                               ; preds = %25, %8, %3
  %29 = phi i32 [ 0, %3 ], [ %11, %8 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1020) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @pci_enable_device(ptr noundef %0) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %7
  %11 = tail call i32 @pci_request_regions(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  tail call void @pci_set_master(ptr noundef %0) #6
  %14 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %3) #6
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 65280
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = and i32 %15, -65281
  %20 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 64, i32 noundef %19) #6
  br label %21

21:                                               ; preds = %18, %13
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 11
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %29) #8
  br label %61

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  store ptr %31, ptr %5, align 8
  %32 = call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef -1) #6
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 5
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 3
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  store ptr @bcma_host_pci_ops, ptr %38, align 8
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %40 = load i16, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 7
  store i16 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %43 = load i16, ptr %42, align 2
  %44 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 7, i32 1
  store i16 %43, ptr %44, align 2
  call void @bcma_init_bus(ptr noundef nonnull %5) #6
  %45 = call i32 @bcma_bus_scan(ptr noundef nonnull %5) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = call ptr @bcma_find_core_unit(ptr noundef nonnull %5, i16 noundef zeroext 2108, i8 noundef zeroext 0) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 4
  store i8 1, ptr %51, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = call i32 @bcma_bus_register(ptr noundef nonnull %5) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %5, ptr %56, align 8
  br label %67

57:                                               ; preds = %52
  call void @bcma_unregister_cores(ptr noundef nonnull %5) #6
  br label %58

58:                                               ; preds = %57, %35
  %59 = phi i32 [ %45, %35 ], [ %53, %57 ]
  %60 = load ptr, ptr %33, align 4
  call void @pci_iounmap(ptr noundef %0, ptr noundef %60) #6
  br label %61

61:                                               ; preds = %58, %30, %25
  %62 = phi i32 [ %59, %58 ], [ -12, %30 ], [ -6, %25 ]
  call void @pci_release_regions(ptr noundef %0) #6
  br label %63

63:                                               ; preds = %61, %10
  %64 = phi i32 [ %11, %10 ], [ %62, %61 ]
  call void @pci_disable_device(ptr noundef %0) #6
  br label %65

65:                                               ; preds = %63, %7
  %66 = phi i32 [ %8, %7 ], [ %64, %63 ]
  call void @kfree(ptr noundef nonnull %5) #6
  br label %67

67:                                               ; preds = %65, %55, %2
  %68 = phi i32 [ %66, %65 ], [ 0, %55 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_host_pci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @bcma_bus_unregister(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef %5) #6
  tail call void @pci_release_regions(ptr noundef %0) #6
  tail call void @pci_disable_device(ptr noundef %0) #6
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_init_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_unregister_cores(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @bcma_host_pci_read8(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %6 [
    i16 2048, label %29
    i16 2080, label %5
  ]

5:                                                ; preds = %2
  br label %29

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 4
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 172, i32 112
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @pci_write_config_dword(ptr noundef %17, i32 noundef 128, i32 noundef %19) #6
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @pci_write_config_dword(ptr noundef %23, i32 noundef %15, i32 noundef %25) #6
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 8
  store ptr %0, ptr %28, align 4
  br label %29

29:                                               ; preds = %11, %6, %5, %2
  %30 = phi i16 [ 8192, %5 ], [ 12288, %2 ], [ 0, %11 ], [ 0, %6 ]
  %31 = add i16 %30, %1
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = zext i16 %31 to i32
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @bcma_host_pci_read16(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %6 [
    i16 2048, label %29
    i16 2080, label %5
  ]

5:                                                ; preds = %2
  br label %29

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 4
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 172, i32 112
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @pci_write_config_dword(ptr noundef %17, i32 noundef 128, i32 noundef %19) #6
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @pci_write_config_dword(ptr noundef %23, i32 noundef %15, i32 noundef %25) #6
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 8
  store ptr %0, ptr %28, align 4
  br label %29

29:                                               ; preds = %11, %6, %5, %2
  %30 = phi i16 [ 8192, %5 ], [ 12288, %2 ], [ 0, %11 ], [ 0, %6 ]
  %31 = add i16 %30, %1
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = zext i16 %31 to i32
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  ret i16 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_read32(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %6 [
    i16 2048, label %29
    i16 2080, label %5
  ]

5:                                                ; preds = %2
  br label %29

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 4
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 172, i32 112
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @pci_write_config_dword(ptr noundef %17, i32 noundef 128, i32 noundef %19) #6
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @pci_write_config_dword(ptr noundef %23, i32 noundef %15, i32 noundef %25) #6
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 8
  store ptr %0, ptr %28, align 4
  br label %29

29:                                               ; preds = %11, %6, %5, %2
  %30 = phi i16 [ 8192, %5 ], [ 12288, %2 ], [ 0, %11 ], [ 0, %6 ]
  %31 = add i16 %30, %1
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = zext i16 %31 to i32
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_host_pci_write8(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 2
  switch i16 %5, label %7 [
    i16 2048, label %30
    i16 2080, label %6
  ]

6:                                                ; preds = %3
  br label %30

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 172, i32 112
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 128, i32 noundef %20) #6
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef %16, i32 noundef %26) #6
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 8
  store ptr %0, ptr %29, align 4
  br label %30

30:                                               ; preds = %12, %7, %6, %3
  %31 = phi i16 [ 8192, %6 ], [ 12288, %3 ], [ 0, %12 ], [ 0, %7 ]
  %32 = add i16 %31, %1
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = zext i16 %32 to i32
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %2) #6, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_host_pci_write16(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 2
  switch i16 %5, label %7 [
    i16 2048, label %30
    i16 2080, label %6
  ]

6:                                                ; preds = %3
  br label %30

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 172, i32 112
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 128, i32 noundef %20) #6
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef %16, i32 noundef %26) #6
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 8
  store ptr %0, ptr %29, align 4
  br label %30

30:                                               ; preds = %12, %7, %6, %3
  %31 = phi i16 [ 8192, %6 ], [ 12288, %3 ], [ 0, %12 ], [ 0, %7 ]
  %32 = add i16 %31, %1
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = zext i16 %32 to i32
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %2) #6, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_host_pci_write32(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 2
  switch i16 %5, label %7 [
    i16 2048, label %30
    i16 2080, label %6
  ]

6:                                                ; preds = %3
  br label %30

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 172, i32 112
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 128, i32 noundef %20) #6
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef %16, i32 noundef %26) #6
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 8
  store ptr %0, ptr %29, align 4
  br label %30

30:                                               ; preds = %12, %7, %6, %3
  %31 = phi i16 [ 8192, %6 ], [ 12288, %3 ], [ 0, %12 ], [ 0, %7 ]
  %32 = add i16 %31, %1
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = zext i16 %32 to i32
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %2) #6, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_aread32(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 172, i32 112
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @pci_write_config_dword(ptr noundef %13, i32 noundef 128, i32 noundef %15) #6
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef %11, i32 noundef %21) #6
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 8
  store ptr %0, ptr %24, align 4
  %25 = load ptr, ptr %0, align 8
  br label %26

26:                                               ; preds = %7, %2
  %27 = phi ptr [ %25, %7 ], [ %3, %2 ]
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 4096
  %31 = zext i16 %1 to i32
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_host_pci_awrite32(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 172, i32 112
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @pci_write_config_dword(ptr noundef %14, i32 noundef 128, i32 noundef %16) #6
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef %12, i32 noundef %22) #6
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 8
  store ptr %0, ptr %25, align 4
  %26 = load ptr, ptr %0, align 8
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi ptr [ %26, %8 ], [ %4, %3 ]
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 4096
  %32 = zext i16 %1 to i32
  %33 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %2) #6, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 8
  store ptr null, ptr %4, align 4
  %5 = tail call i32 @bcma_bus_suspend(ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @bcma_bus_resume(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 3845138}
!11 = !{i64 2151383865}
!12 = !{i64 3844520}
!13 = !{i64 2151384338}
!14 = !{i64 3845358}
!15 = !{i64 2151384811}
!16 = !{i64 2151385163}
!17 = !{i64 3844743}
!18 = !{i64 2151385560}
!19 = !{i64 3844320}
!20 = !{i64 2151386033}
!21 = !{i64 3844940}
