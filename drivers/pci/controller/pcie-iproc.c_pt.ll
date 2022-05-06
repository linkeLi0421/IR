; ModuleID = '/llk/IR/drivers/pci/controller/pcie-iproc.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-iproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_pcie_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_pcie_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_pcie_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_pcie_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_pcie_setup\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_pcie_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_pcie_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_pcie_remove\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_pcie_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iproc_pcie_ob_map = type { [4 x i32], i32 }
%struct.iproc_pcie_ib_map = type { i32, i32, [9 x i32], i32, i32, i16, i16 }
%struct.iproc_pcie = type { ptr, i32, ptr, ptr, i32, %struct.resource, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.iproc_pcie_ob, ptr, i8, %struct.iproc_pcie_ib, ptr, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iproc_pcie_ob = type { i32, i32 }
%struct.iproc_pcie_ib = type { i32 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__kstrtab_iproc_pcie_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_pcie_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_pcie_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_pcie_shutdown to i32), ptr @__kstrtab_iproc_pcie_shutdown, ptr @__kstrtabns_iproc_pcie_shutdown }, section "___ksymtab_gpl+iproc_pcie_shutdown", align 4
@.str = private unnamed_addr constant [44 x i8] c"unable to initialize controller parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to initialize PCIe PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to power on PCIe PHY\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"map failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no PCIe EP device detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"not using iProc MSI\0A\00", align 1
@iproc_pcie_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr @iproc_pcie_bus_map_cfg_bus, ptr @iproc_pcie_config_read32, ptr @iproc_pcie_config_write32 }, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to scan host: %d\0A\00", align 1
@__kstrtab_iproc_pcie_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_pcie_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_pcie_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_pcie_setup to i32), ptr @__kstrtab_iproc_pcie_setup, ptr @__kstrtabns_iproc_pcie_setup }, section "___ksymtab+iproc_pcie_setup", align 4
@__kstrtab_iproc_pcie_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_pcie_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_pcie_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_pcie_remove to i32), ptr @__kstrtab_iproc_pcie_remove, ptr @__kstrtabns_iproc_pcie_remove }, section "___ksymtab+iproc_pcie_remove", align 4
@__pci_fixup_quirk_paxc_disable_msi_parsing1570 = internal constant %struct.pci_fixup { i16 5348, i16 5872, i32 -1, i32 0, ptr @quirk_paxc_disable_msi_parsing }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_disable_msi_parsing1572 = internal constant %struct.pci_fixup { i16 5348, i16 -10238, i32 -1, i32 0, ptr @quirk_paxc_disable_msi_parsing }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_disable_msi_parsing1574 = internal constant %struct.pci_fixup { i16 5348, i16 -10236, i32 -1, i32 0, ptr @quirk_paxc_disable_msi_parsing }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1594 = internal constant %struct.pci_fixup { i16 5348, i16 5837, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1595 = internal constant %struct.pci_fixup { i16 5348, i16 5872, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1596 = internal constant %struct.pci_fixup { i16 5348, i16 -10416, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1597 = internal constant %struct.pci_fixup { i16 5348, i16 -10238, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1598 = internal constant %struct.pci_fixup { i16 5348, i16 -10236, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__UNIQUE_ID_author252 = internal constant [46 x i8] c"pcie_iproc.author=Ray Jui <rjui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [57 x i8] c"pcie_iproc.description=Broadcom iPROC PCIe common driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [50 x i8] c"pcie_iproc.file=drivers/pci/controller/pcie-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [26 x i8] c"pcie_iproc.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iproc_pcie_reg_paxb_bcma = internal unnamed_addr constant [33 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 288, i16 292, i16 504, i16 508, i16 816, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3852, i16 0], align 2
@iproc_pcie_reg_paxb = internal unnamed_addr constant [33 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 288, i16 292, i16 504, i16 508, i16 816, i16 3360, i16 3392, i16 3368, i16 3400, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3852, i16 3904], align 2
@paxb_ob_map = internal constant [2 x %struct.iproc_pcie_ob_map] [%struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }], align 4
@iproc_pcie_reg_paxb_v2 = internal unnamed_addr constant [33 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 288, i16 292, i16 504, i16 508, i16 816, i16 3360, i16 3392, i16 3368, i16 3400, i16 3424, i16 3432, i16 3568, i16 3576, i16 3328, i16 3072, i16 3336, i16 3440, i16 3344, i16 3264, i16 3584, i16 3592, i16 3688, i16 3696, i16 3808, i16 3852, i16 3904], align 2
@paxb_v2_ob_map = internal constant [4 x %struct.iproc_pcie_ob_map] [%struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 512, i32 1024], i32 4 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 512, i32 1024], i32 4 }], align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"reads of config registers that contain %#x return incorrect data\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"incompatible iProc PCIe interface\0A\00", align 1
@paxb_v2_ib_map = internal constant <{ { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 }, { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 }, %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map }> <{ { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 } { i32 1, i32 1024, <{ i32, [8 x i32] }> <{ i32 32, [8 x i32] zeroinitializer }>, i32 1, i32 8, i16 64, i16 4 }, { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 } { i32 0, i32 1048576, <{ i32, [8 x i32] }> <{ i32 8, [8 x i32] zeroinitializer }>, i32 1, i32 8, i16 4, i16 8 }, %struct.iproc_pcie_ib_map { i32 0, i32 1048576, [9 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], i32 9, i32 1, i16 4, i16 8 }, %struct.iproc_pcie_ib_map { i32 0, i32 1073741824, [9 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 0, i32 0, i32 0], i32 6, i32 8, i16 4, i16 8 }, %struct.iproc_pcie_ib_map { i32 0, i32 1073741824, [9 x i32] [i32 32, i32 64, i32 128, i32 256, i32 512, i32 0, i32 0, i32 0, i32 0], i32 5, i32 8, i16 4, i16 8 } }>, align 4
@iproc_pcie_reg_paxc = internal unnamed_addr constant <{ [11 x i16], [22 x i16] }> <{ [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 496, i16 500, i16 504, i16 508], [22 x i16] zeroinitializer }>, align 2
@iproc_pcie_reg_paxc_v2 = internal unnamed_addr constant <{ [11 x i16], [22 x i16] }> <{ [11 x i16] [i16 0, i16 80, i16 116, i16 120, i16 124, i16 128, i16 156, i16 496, i16 500, i16 504, i16 508], [22 x i16] zeroinitializer }>, align 2
@.str.12 = private unnamed_addr constant [22 x i8] c"invalid resource %pR\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"axi address %pap less than offset %pap\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"axi %pap or pci %pap not aligned\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"unable to configure outbound mapping\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"axi %pap, axi offset %pap, pci %pap, res size %pap\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"unable to configure inbound mapping\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"axi %pap, pci %pap, res size %pap\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"PHY or data link is INACTIVE!\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"in EP mode, hdr=%#02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"link: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"msi steering failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"arm,gic-v3-its\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"unable to find compatible MSI controller\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"unable to obtain MSI controller resources\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_iproc_pcie_remove, ptr @__ksymtab_iproc_pcie_setup, ptr @__ksymtab_iproc_pcie_shutdown, ptr @__pci_fixup_quirk_paxc_bridge1594, ptr @__pci_fixup_quirk_paxc_bridge1595, ptr @__pci_fixup_quirk_paxc_bridge1596, ptr @__pci_fixup_quirk_paxc_bridge1597, ptr @__pci_fixup_quirk_paxc_bridge1598, ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1570, ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1572, ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1574], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iproc_pcie_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = zext i16 %8 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %16 = load ptr, ptr %6, align 4
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = and i32 %15, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %11, align 4
  %22 = zext i16 %17 to i32
  %23 = getelementptr i8, ptr %21, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #7, !srcloc !12
  br label %24

24:                                               ; preds = %19, %10, %5
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 53687000) #7
  br label %26

26:                                               ; preds = %24, %1
  tail call void @msleep(i32 noundef 500) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iproc_pcie_setup(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.resource_entry, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr i8, ptr %0, i32 -576
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %47 [
    i32 0, label %48
    i32 1, label %17
    i32 2, label %25
    i32 3, label %38
    i32 4, label %42
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 11
  store i8 1, ptr %18, align 1
  %19 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 13
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 15
  store ptr @paxb_ob_map, ptr %23, align 4
  %24 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 14, i32 1
  store i32 2, ptr %24, align 4
  br label %48

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 9
  store i8 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 11
  store i8 1, ptr %27, align 1
  %28 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 13
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 15
  store ptr @paxb_v2_ob_map, ptr %32, align 4
  %33 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 14, i32 1
  store i32 4, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 17
  store i32 5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 18
  store ptr @paxb_v2_ib_map, ptr %36, align 4
  %37 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 19
  store i8 1, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.7, i32 noundef -65535) #8
  br label %48

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 8
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 9
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 10
  store i8 1, ptr %41, align 2
  br label %48

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 8
  store i8 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 9
  store i8 1, ptr %44, align 1
  %45 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 10
  store i8 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 19
  store i8 1, ptr %46, align 4
  br label %48

47:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #8
  br label %80

48:                                               ; preds = %42, %38, %34, %22, %17, %2
  %49 = phi ptr [ @iproc_pcie_reg_paxc_v2, %42 ], [ @iproc_pcie_reg_paxc, %38 ], [ @iproc_pcie_reg_paxb_v2, %34 ], [ @iproc_pcie_reg_paxb, %22 ], [ @iproc_pcie_reg_paxb, %17 ], [ @iproc_pcie_reg_paxb_bcma, %2 ]
  %50 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 66, i32 noundef 3520) #7
  %51 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %80, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %15, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i16, ptr %49, align 2
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i16 [ %57, %56 ], [ -1, %53 ]
  store i16 %59, ptr %50, align 2
  %60 = getelementptr i16, ptr %49, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, 0
  %63 = select i1 %62, i16 -1, i16 %61
  %64 = getelementptr i16, ptr %50, i32 1
  store i16 %63, ptr %64, align 2
  %65 = getelementptr i16, ptr %49, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %66, 0
  %68 = select i1 %67, i16 -1, i16 %66
  %69 = getelementptr i16, ptr %50, i32 2
  store i16 %68, ptr %69, align 2
  br label %70

70:                                               ; preds = %70, %58
  %71 = phi i32 [ 3, %58 ], [ %78, %70 ]
  %72 = load ptr, ptr %51, align 4
  %73 = getelementptr i16, ptr %49, i32 %71
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 0
  %76 = select i1 %75, i16 -1, i16 %74
  %77 = getelementptr i16, ptr %72, i32 %71
  store i16 %76, ptr %77, align 2
  %78 = add nuw nsw i32 %71, 1
  %79 = icmp eq i32 %78, 33
  br i1 %79, label %82, label %70

80:                                               ; preds = %48, %47
  %81 = phi i32 [ -12, %48 ], [ -22, %47 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str) #8
  br label %541

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @phy_init(ptr noundef %84) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #8
  br label %541

88:                                               ; preds = %82
  %89 = load ptr, ptr %83, align 4
  %90 = tail call i32 @phy_power_on(ptr noundef %89) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2) #8
  br label %537

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 8
  %95 = load i8, ptr %94, align 4, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %194

97:                                               ; preds = %93
  %98 = load ptr, ptr %51, align 4
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, -1
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = zext i16 %99 to i32
  %105 = getelementptr i8, ptr %103, i32 %104
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %107 = load ptr, ptr %51, align 4
  %108 = load i16, ptr %107, align 2
  %109 = icmp eq i16 %108, -1
  br i1 %109, label %115, label %110

110:                                              ; preds = %101
  %111 = and i32 %106, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %112 = load ptr, ptr %102, align 4
  %113 = zext i16 %108 to i32
  %114 = getelementptr i8, ptr %112, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %111) #7, !srcloc !12
  br label %115

115:                                              ; preds = %110, %101, %97
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 53687000) #7
  %117 = load i8, ptr %94, align 4
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %194

119:                                              ; preds = %115
  %120 = load ptr, ptr %51, align 4
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, -1
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = zext i16 %121 to i32
  %127 = getelementptr i8, ptr %125, i32 %126
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %129 = load ptr, ptr %51, align 4
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %130, -1
  br i1 %131, label %137, label %132

132:                                              ; preds = %123
  %133 = or i32 %128, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %134 = load ptr, ptr %124, align 4
  %135 = zext i16 %130 to i32
  %136 = getelementptr i8, ptr %134, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %133) #7, !srcloc !12
  br label %137

137:                                              ; preds = %132, %123, %119
  tail call void @msleep(i32 noundef 100) #7
  %138 = load i8, ptr %94, align 4
  %139 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 17
  %140 = icmp eq i8 %138, 0
  br i1 %140, label %141, label %194

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 13
  %143 = load i8, ptr %142, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %167, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 14, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, -1
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  br label %152

152:                                              ; preds = %164, %150
  %153 = phi i32 [ %148, %150 ], [ %165, %164 ]
  %154 = shl nuw i32 %153, 1
  %155 = add i32 %154, 12
  %156 = load ptr, ptr %51, align 4
  %157 = getelementptr i16, ptr %156, i32 %155
  %158 = load i16, ptr %157, align 2
  %159 = icmp eq i16 %158, -1
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %161 = load ptr, ptr %151, align 4
  %162 = zext i16 %158 to i32
  %163 = getelementptr i8, ptr %161, i32 %162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 0) #7, !srcloc !12
  br label %164

164:                                              ; preds = %160, %152
  %165 = add i32 %153, -1
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %152, label %167

167:                                              ; preds = %164, %145, %141
  %168 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 16
  %169 = load i8, ptr %168, align 4, !range !8
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %194, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %139, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  br label %176

176:                                              ; preds = %190, %174
  %177 = phi i32 [ %172, %174 ], [ %191, %190 ]
  %178 = phi i32 [ 0, %174 ], [ %192, %190 ]
  %179 = shl i32 %178, 1
  %180 = add i32 %179, 20
  %181 = load ptr, ptr %51, align 4
  %182 = getelementptr i16, ptr %181, i32 %180
  %183 = load i16, ptr %182, align 2
  %184 = icmp eq i16 %183, -1
  br i1 %184, label %190, label %185

185:                                              ; preds = %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %186 = load ptr, ptr %175, align 4
  %187 = zext i16 %183 to i32
  %188 = getelementptr i8, ptr %186, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 0) #7, !srcloc !12
  %189 = load i32, ptr %139, align 4
  br label %190

190:                                              ; preds = %185, %176
  %191 = phi i32 [ %177, %176 ], [ %189, %185 ]
  %192 = add nuw i32 %178, 1
  %193 = icmp ult i32 %192, %191
  br i1 %193, label %176, label %194

194:                                              ; preds = %190, %171, %167, %137, %115, %93
  %195 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 13
  %196 = load i8, ptr %195, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %353, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %0, align 4
  %200 = load ptr, ptr %1, align 4
  %201 = icmp eq ptr %200, %1
  br i1 %201, label %353, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 14
  %204 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 14, i32 1
  %205 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 15
  %206 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  br label %207

207:                                              ; preds = %348, %202
  %208 = phi ptr [ %200, %202 ], [ %349, %348 ]
  %209 = getelementptr inbounds %struct.resource_entry, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.resource, ptr %210, i32 0, i32 3
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, 7936
  switch i32 %213, label %347 [
    i32 256, label %348
    i32 4096, label %348
    i32 512, label %214
  ]

214:                                              ; preds = %207
  %215 = load i32, ptr %210, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.resource_entry, ptr %208, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = sub i32 %215, %218
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.resource, ptr %210, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = sub i32 1, %215
  %224 = add i32 %222, %223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  store i64 %216, ptr %10, align 8
  store i64 %220, ptr %11, align 8
  store i32 %224, ptr %12, align 4
  %225 = load ptr, ptr %0, align 4
  %226 = load i32, ptr %203, align 4
  %227 = icmp ult i32 %215, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %214
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.13, ptr noundef nonnull %10, ptr noundef %203) #8
  br label %343

229:                                              ; preds = %214
  %230 = zext i32 %226 to i64
  %231 = sub nsw i64 %216, %230
  store i64 %231, ptr %10, align 8
  %232 = load i32, ptr %204, align 4
  %233 = add i32 %232, -1
  %234 = icmp sgt i32 %233, -1
  br i1 %234, label %235, label %344

235:                                              ; preds = %336, %229
  %236 = phi i64 [ %337, %336 ], [ %220, %229 ]
  %237 = phi i64 [ %338, %336 ], [ %231, %229 ]
  %238 = phi i32 [ %339, %336 ], [ %224, %229 ]
  %239 = phi i32 [ %341, %336 ], [ %233, %229 ]
  %240 = phi i32 [ %340, %336 ], [ -22, %229 ]
  %241 = load ptr, ptr %205, align 4
  %242 = getelementptr %struct.iproc_pcie_ob_map, ptr %241, i32 %239
  %243 = shl nuw i32 %239, 1
  %244 = add i32 %243, 12
  %245 = load ptr, ptr %51, align 4
  %246 = getelementptr i16, ptr %245, i32 %244
  %247 = load i16, ptr %246, align 2
  %248 = icmp eq i16 %247, -1
  br i1 %248, label %256, label %249

249:                                              ; preds = %235
  %250 = load ptr, ptr %206, align 4
  %251 = zext i16 %247 to i32
  %252 = getelementptr i8, ptr %250, i32 %251
  %253 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %336

256:                                              ; preds = %249, %235
  %257 = getelementptr %struct.iproc_pcie_ob_map, ptr %241, i32 %239, i32 1
  %258 = load i32, ptr %257, align 4
  %259 = icmp ne i32 %239, 0
  br label %260

260:                                              ; preds = %269, %256
  %261 = phi i32 [ %258, %256 ], [ %262, %269 ]
  %262 = add i32 %261, -1
  %263 = icmp sgt i32 %262, -1
  br i1 %263, label %264, label %336

264:                                              ; preds = %260
  %265 = getelementptr [4 x i32], ptr %242, i32 0, i32 %262
  %266 = load i32, ptr %265, align 4
  %267 = shl i32 %266, 20
  %268 = icmp ult i32 %238, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %264
  %270 = icmp ne i32 %262, 0
  %271 = select i1 %270, i1 true, i1 %259
  br i1 %271, label %260, label %272

272:                                              ; preds = %269
  %273 = add i32 %267, -1
  %274 = zext i32 %273 to i64
  %275 = zext i32 %267 to i64
  %276 = add nsw i64 %275, -1
  %277 = sub nsw i64 %276, %274
  %278 = add i64 %277, %237
  %279 = sub nsw i64 0, %275
  %280 = and i64 %278, %279
  store i64 %280, ptr %10, align 8
  %281 = add i64 %277, %236
  %282 = and i64 %281, %279
  store i64 %282, ptr %11, align 8
  store i32 %267, ptr %12, align 4
  br label %286

283:                                              ; preds = %264
  %284 = zext i32 %267 to i64
  %285 = add nsw i64 %284, -1
  br label %286

286:                                              ; preds = %283, %272
  %287 = phi i64 [ %285, %283 ], [ %276, %272 ]
  %288 = phi i64 [ %284, %283 ], [ %275, %272 ]
  %289 = phi i32 [ %238, %283 ], [ %267, %272 ]
  %290 = phi i64 [ %236, %283 ], [ %282, %272 ]
  %291 = phi i64 [ %237, %283 ], [ %280, %272 ]
  %292 = and i64 %291, %287
  %293 = icmp eq i64 %292, 0
  %294 = and i64 %290, %287
  %295 = icmp eq i64 %294, 0
  %296 = select i1 %293, i1 %295, i1 false
  br i1 %296, label %298, label %297

297:                                              ; preds = %286
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.14, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  br label %343

298:                                              ; preds = %286
  %299 = load ptr, ptr %51, align 4
  %300 = getelementptr i16, ptr %299, i32 %244
  %301 = load i16, ptr %300, align 2
  %302 = add i32 %243, 13
  %303 = getelementptr i16, ptr %299, i32 %302
  %304 = load i16, ptr %303, align 2
  %305 = icmp eq i16 %301, -1
  %306 = icmp eq i16 %304, -1
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %344, label %308

308:                                              ; preds = %298
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  call void @arm_heavy_mb() #7
  %309 = trunc i64 %291 to i32
  %310 = shl nuw i32 %262, 1
  %311 = or i32 %310, %309
  %312 = or i32 %311, 1
  %313 = load ptr, ptr %206, align 4
  %314 = zext i16 %301 to i32
  %315 = getelementptr i8, ptr %313, i32 %314
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %312) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %316 = lshr i64 %291, 32
  %317 = trunc i64 %316 to i32
  %318 = load ptr, ptr %206, align 4
  %319 = getelementptr i8, ptr %318, i32 4
  %320 = getelementptr i8, ptr %319, i32 %314
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %317) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  call void @arm_heavy_mb() #7
  %321 = trunc i64 %290 to i32
  %322 = load ptr, ptr %206, align 4
  %323 = zext i16 %304 to i32
  %324 = getelementptr i8, ptr %322, i32 %323
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %321) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  %325 = lshr i64 %290, 32
  %326 = trunc i64 %325 to i32
  %327 = load ptr, ptr %206, align 4
  %328 = getelementptr i8, ptr %327, i32 4
  %329 = getelementptr i8, ptr %328, i32 %323
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %326) #7, !srcloc !12
  %330 = sub i32 %289, %267
  store i32 %330, ptr %12, align 4
  %331 = icmp eq i32 %289, %267
  br i1 %331, label %332, label %333

332:                                              ; preds = %308
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  br label %348

333:                                              ; preds = %308
  %334 = add i64 %291, %288
  store i64 %334, ptr %10, align 8
  %335 = add i64 %290, %288
  store i64 %335, ptr %11, align 8
  br label %336

336:                                              ; preds = %333, %260, %249
  %337 = phi i64 [ %335, %333 ], [ %236, %249 ], [ %236, %260 ]
  %338 = phi i64 [ %334, %333 ], [ %237, %249 ], [ %237, %260 ]
  %339 = phi i32 [ %330, %333 ], [ %238, %249 ], [ %238, %260 ]
  %340 = phi i32 [ 0, %333 ], [ %240, %249 ], [ %240, %260 ]
  %341 = add i32 %239, -1
  %342 = icmp sgt i32 %341, -1
  br i1 %342, label %235, label %344

343:                                              ; preds = %297, %228
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  br label %351

344:                                              ; preds = %336, %298, %229
  %345 = phi i32 [ -22, %229 ], [ -22, %298 ], [ %340, %336 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.15) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.16, ptr noundef nonnull %10, ptr noundef %203, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %348, label %351

347:                                              ; preds = %207
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.12, ptr noundef %210) #8
  br label %351

348:                                              ; preds = %344, %332, %207, %207
  %349 = load ptr, ptr %208, align 4
  %350 = icmp eq ptr %349, %1
  br i1 %350, label %353, label %207

351:                                              ; preds = %347, %344, %343
  %352 = phi i32 [ -22, %347 ], [ -22, %343 ], [ %345, %344 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3) #8
  br label %533

353:                                              ; preds = %348, %198, %194
  %354 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 16
  %355 = load i8, ptr %354, align 4, !range !8
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %365, label %357

357:                                              ; preds = %353
  %358 = getelementptr i8, ptr %0, i32 -72
  br label %359

359:                                              ; preds = %363, %357
  %360 = phi ptr [ %358, %357 ], [ %361, %363 ]
  %361 = load ptr, ptr %360, align 4
  %362 = icmp eq ptr %361, %358
  br i1 %362, label %365, label %363

363:                                              ; preds = %359
  %364 = call fastcc i32 @iproc_pcie_setup_ib(ptr noundef %0, ptr noundef %361, i32 noundef 0) #7
  switch i32 %364, label %533 [
    i32 0, label %359
    i32 -2, label %365
  ]

365:                                              ; preds = %363, %359, %353
  %366 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !17
  %367 = load i8, ptr %94, align 4, !range !8
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %369, label %434

369:                                              ; preds = %365
  %370 = load ptr, ptr %51, align 4
  %371 = getelementptr i16, ptr %370, i32 31
  %372 = load i16, ptr %371, align 2
  %373 = icmp eq i16 %372, -1
  br i1 %373, label %382, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %376 = load ptr, ptr %375, align 4
  %377 = zext i16 %372 to i32
  %378 = getelementptr i8, ptr %376, i32 %377
  %379 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %378) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %380 = and i32 %379, 12
  %381 = icmp eq i32 %380, 12
  br i1 %381, label %383, label %382

382:                                              ; preds = %374, %369
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %366, ptr noundef nonnull @.str.19) #8
  br label %432

383:                                              ; preds = %374
  %384 = load ptr, ptr %51, align 4
  %385 = getelementptr i16, ptr %384, i32 7
  %386 = load i16, ptr %385, align 2
  %387 = icmp eq i16 %386, -1
  br i1 %387, label %393, label %388

388:                                              ; preds = %383
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %389 = load ptr, ptr %375, align 4
  %390 = zext i16 %386 to i32
  %391 = getelementptr i8, ptr %389, i32 %390
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %391, i32 12) #7, !srcloc !12
  %392 = load ptr, ptr %51, align 4
  br label %393

393:                                              ; preds = %388, %383
  %394 = phi ptr [ %384, %383 ], [ %392, %388 ]
  %395 = getelementptr i16, ptr %394, i32 8
  %396 = load i16, ptr %395, align 2
  %397 = icmp eq i16 %396, -1
  br i1 %397, label %409, label %398

398:                                              ; preds = %393
  %399 = load ptr, ptr %375, align 4
  %400 = zext i16 %396 to i32
  %401 = getelementptr i8, ptr %399, i32 %400
  %402 = icmp eq ptr %401, null
  br i1 %402, label %409, label %403

403:                                              ; preds = %398
  %404 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %401) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %405 = lshr i32 %404, 16
  %406 = and i32 %405, 255
  %407 = and i32 %404, 8323072
  %408 = icmp eq i32 %407, 65536
  br i1 %408, label %411, label %409

409:                                              ; preds = %403, %398, %393
  %410 = phi i32 [ %406, %403 ], [ 0, %393 ], [ 0, %398 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %366, ptr noundef nonnull @.str.20, i32 noundef %410) #8
  br label %432

411:                                              ; preds = %403
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %0, i32 noundef 1084, i32 noundef 4, ptr noundef nonnull %9) #7
  %412 = load i32, ptr %9, align 4
  %413 = and i32 %412, -16776961
  %414 = or i32 %413, 394240
  call fastcc void @iproc_pci_raw_config_write32(ptr noundef %0, i32 noundef 1084, i32 noundef %414) #7
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %0, i32 noundef 190, i32 noundef 2, ptr noundef nonnull %8) #7
  %415 = load i32, ptr %8, align 4
  %416 = and i32 %415, 1008
  %417 = icmp eq i32 %416, 0
  %418 = xor i1 %417, true
  br i1 %417, label %419, label %431

419:                                              ; preds = %411
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %0, i32 noundef 220, i32 noundef 4, ptr noundef nonnull %7) #7
  %420 = load i32, ptr %7, align 4
  %421 = and i32 %420, 15
  %422 = icmp eq i32 %421, 2
  br i1 %422, label %423, label %430

423:                                              ; preds = %419
  %424 = and i32 %420, -16
  %425 = or i32 %424, 1
  call fastcc void @iproc_pci_raw_config_write32(ptr noundef %0, i32 noundef 220, i32 noundef %425) #7
  call void @msleep(i32 noundef 100) #7
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %0, i32 noundef 190, i32 noundef 2, ptr noundef nonnull %8) #7
  %426 = load i32, ptr %8, align 4
  %427 = and i32 %426, 1008
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, i1 true, i1 %418
  br i1 %429, label %431, label %430

430:                                              ; preds = %423, %419
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %366, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #8
  br label %432

431:                                              ; preds = %423, %411
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %366, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  br label %434

432:                                              ; preds = %430, %409, %382
  %433 = phi i32 [ -19, %430 ], [ -19, %382 ], [ -14, %409 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4) #8
  br label %533

434:                                              ; preds = %431, %365
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %435 = load ptr, ptr %51, align 4
  %436 = getelementptr i16, ptr %435, i32 11
  %437 = load i16, ptr %436, align 2
  %438 = icmp eq i16 %437, -1
  br i1 %438, label %444, label %439

439:                                              ; preds = %434
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %440 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %441 = load ptr, ptr %440, align 4
  %442 = zext i16 %437 to i32
  %443 = getelementptr i8, ptr %441, i32 %442
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %443, i32 15) #7, !srcloc !12
  br label %444

444:                                              ; preds = %439, %434
  %445 = load ptr, ptr %0, align 4
  %446 = getelementptr inbounds %struct.device, ptr %445, i32 0, i32 25
  %447 = load ptr, ptr %446, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #7, !annotation !17
  %448 = call i32 @__of_parse_phandle_with_args(ptr noundef %447, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #7
  %449 = icmp ne i32 %448, 0
  %450 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %451 = icmp eq ptr %450, null
  %452 = select i1 %449, i1 true, i1 %451
  br i1 %452, label %453, label %466

453:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !17
  %454 = load ptr, ptr %0, align 4
  %455 = getelementptr inbounds %struct.device, ptr %454, i32 0, i32 25
  %456 = load ptr, ptr %455, align 8
  %457 = call ptr @of_get_property(ptr noundef %456, ptr noundef nonnull @.str.25, ptr noundef nonnull %6) #7
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %460

459:                                              ; preds = %453
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %498

460:                                              ; preds = %453
  %461 = getelementptr i32, ptr %457, i32 1
  %462 = load i32, ptr %461, align 4
  %463 = call i32 @llvm.bswap.i32(i32 %462) #7
  %464 = call ptr @of_find_node_by_phandle(i32 noundef %463) #7
  %465 = icmp eq ptr %464, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br i1 %465, label %498, label %466

466:                                              ; preds = %460, %444
  %467 = phi ptr [ %450, %444 ], [ %464, %460 ]
  %468 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 19
  %469 = load i8, ptr %468, align 4, !range !8
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %495, label %471

471:                                              ; preds = %466
  %472 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !17
  %473 = call i32 @of_device_is_compatible(ptr noundef nonnull %467, ptr noundef nonnull @.str.27) #7
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %471
  %476 = call i32 @of_address_to_resource(ptr noundef nonnull %467, i32 noundef 0, ptr noundef nonnull %4) #7
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %475, %471
  %479 = phi ptr [ @.str.28, %471 ], [ @.str.29, %475 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %472, ptr noundef nonnull %479) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %472, ptr noundef nonnull @.str.26) #8
  br label %494

480:                                              ; preds = %475
  %481 = load i32, ptr %4, align 4
  %482 = add i32 %481, 65600
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %483 = load i32, ptr %15, align 4
  switch i32 %483, label %494 [
    i32 2, label %484
    i32 4, label %492
  ]

484:                                              ; preds = %480
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  %485 = getelementptr inbounds %struct.resource_entry, ptr %3, i32 0, i32 3
  %486 = getelementptr inbounds %struct.resource_entry, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i64 48, i1 false) #7
  store ptr %485, ptr %486, align 4
  %487 = and i32 %482, -32768
  store i32 %487, ptr %485, align 4
  %488 = or i32 %482, 32767
  %489 = getelementptr inbounds %struct.resource_entry, ptr %3, i32 0, i32 3, i32 1
  store i32 %488, ptr %489, align 4
  %490 = call fastcc i32 @iproc_pcie_setup_ib(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %495, label %494

492:                                              ; preds = %480
  %493 = zext i32 %482 to i64
  call fastcc void @iproc_pcie_paxc_v2_msi_steer(ptr noundef %0, i64 noundef %493, i1 noundef zeroext true) #7
  br label %495

494:                                              ; preds = %484, %480, %478
  call void @of_node_put(ptr noundef nonnull %467) #7
  br label %498

495:                                              ; preds = %492, %484, %466
  %496 = call i32 @iproc_msi_init(ptr noundef %0, ptr noundef nonnull %467) #7
  call void @of_node_put(ptr noundef nonnull %467) #7
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %495, %494, %460, %459
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.5) #8
  br label %499

499:                                              ; preds = %498, %495
  %500 = getelementptr i8, ptr %0, i32 -100
  store ptr @iproc_pcie_ops, ptr %500, align 4
  %501 = getelementptr i8, ptr %0, i32 -92
  store ptr %0, ptr %501, align 4
  %502 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 7
  %503 = load ptr, ptr %502, align 4
  %504 = getelementptr i8, ptr %0, i32 -60
  store ptr %503, ptr %504, align 4
  %505 = call i32 @pci_host_probe(ptr noundef %13) #7
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %499
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %505) #8
  br label %533

508:                                              ; preds = %499
  %509 = getelementptr i8, ptr %0, i32 -104
  %510 = load ptr, ptr %509, align 8
  %511 = getelementptr inbounds %struct.pci_bus, ptr %510, i32 0, i32 3
  %512 = load ptr, ptr %511, align 4
  %513 = icmp eq ptr %512, %511
  br i1 %513, label %541, label %514

514:                                              ; preds = %528, %508
  %515 = phi ptr [ %529, %528 ], [ %510, %508 ]
  %516 = phi ptr [ %530, %528 ], [ %512, %508 ]
  %517 = getelementptr inbounds %struct.pci_dev, ptr %516, i32 0, i32 13
  %518 = load i8, ptr %517, align 1
  %519 = add i8 %518, -1
  %520 = icmp ult i8 %519, 2
  br i1 %520, label %521, label %528

521:                                              ; preds = %514
  %522 = getelementptr inbounds %struct.pci_dev, ptr %516, i32 0, i32 24
  %523 = load i16, ptr %522, align 2
  %524 = and i16 %523, 240
  %525 = icmp eq i16 %524, 64
  br i1 %525, label %526, label %528

526:                                              ; preds = %521
  call void @pcie_print_link_status(ptr noundef %516) #7
  %527 = load ptr, ptr %509, align 8
  br label %528

528:                                              ; preds = %526, %521, %514
  %529 = phi ptr [ %515, %514 ], [ %527, %526 ], [ %515, %521 ]
  %530 = load ptr, ptr %516, align 4
  %531 = getelementptr inbounds %struct.pci_bus, ptr %529, i32 0, i32 3
  %532 = icmp eq ptr %530, %531
  br i1 %532, label %541, label %514

533:                                              ; preds = %507, %432, %363, %351
  %534 = phi i32 [ %352, %351 ], [ %433, %432 ], [ %505, %507 ], [ %364, %363 ]
  %535 = load ptr, ptr %83, align 4
  %536 = call i32 @phy_power_off(ptr noundef %535) #7
  br label %537

537:                                              ; preds = %533, %92
  %538 = phi i32 [ %90, %92 ], [ %534, %533 ]
  %539 = load ptr, ptr %83, align 4
  %540 = call i32 @phy_exit(ptr noundef %539) #7
  br label %541

541:                                              ; preds = %537, %528, %508, %87, %80
  %542 = phi i32 [ %81, %80 ], [ %85, %87 ], [ %538, %537 ], [ 0, %508 ], [ 0, %528 ]
  ret i32 %542
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_print_link_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iproc_pcie_remove(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = load ptr, ptr %2, align 8
  tail call void @pci_stop_root_bus(ptr noundef %3) #7
  %4 = load ptr, ptr %2, align 8
  tail call void @pci_remove_root_bus(ptr noundef %4) #7
  tail call void @iproc_msi_exit(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @phy_power_off(ptr noundef %6) #7
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 @phy_exit(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_paxc_disable_msi_parsing(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i16, ptr %11, i32 6
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = zext i16 %13 to i32
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i16, ptr %21, i32 6
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = and i32 %20, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %27 = load ptr, ptr %16, align 4
  %28 = zext i16 %23 to i32
  %29 = getelementptr i8, ptr %27, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #7, !srcloc !12
  br label %30

30:                                               ; preds = %25, %15, %9, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_paxc_bridge(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 394240, ptr %6, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -8
  %11 = or i8 %10, 2
  store i8 %11, ptr %8, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iproc_pcie_setup_ib(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %9 = getelementptr inbounds %struct.resource_entry, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %13 = load i32, ptr %10, align 4
  %14 = getelementptr inbounds %struct.resource_entry, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = zext i32 %16 to i64
  store i64 %17, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %18 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %10, align 4
  %21 = add i32 %19, 1
  %22 = sub i32 %21, %20
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %137, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 18
  %27 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 2
  %28 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  br label %29

29:                                               ; preds = %133, %25
  %30 = phi i32 [ 0, %25 ], [ %134, %133 ]
  %31 = load ptr, ptr %26, align 4
  %32 = shl i32 %30, 1
  %33 = add i32 %32, 20
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i16, ptr %34, i32 %33
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, -1
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %28, align 4
  %40 = zext i16 %36 to i32
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %43

43:                                               ; preds = %38, %29
  %44 = phi i32 [ %42, %38 ], [ 0, %29 ]
  %45 = getelementptr %struct.iproc_pcie_ib_map, ptr %31, i32 %30, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %133

51:                                               ; preds = %43
  %52 = getelementptr %struct.iproc_pcie_ib_map, ptr %31, i32 %30
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, %2
  %55 = icmp eq i32 %46, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %133, label %57

57:                                               ; preds = %51
  %58 = getelementptr %struct.iproc_pcie_ib_map, ptr %31, i32 %30, i32 1
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %130, %57
  %61 = phi i32 [ 0, %57 ], [ %131, %130 ]
  %62 = getelementptr %struct.iproc_pcie_ib_map, ptr %31, i32 %30, i32 2, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %59, %63
  %65 = icmp eq i32 %22, %64
  br i1 %65, label %66, label %130

66:                                               ; preds = %60
  %67 = zext i32 %22 to i64
  %68 = add nsw i64 %67, -1
  %69 = and i64 %68, %12
  %70 = icmp eq i64 %69, 0
  %71 = and i64 %68, %17
  %72 = icmp eq i64 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  br label %138

75:                                               ; preds = %66
  %76 = add i32 %32, 21
  %77 = getelementptr %struct.iproc_pcie_ib_map, ptr %31, i32 %30, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %26, align 4
  %80 = load ptr, ptr %27, align 4
  %81 = getelementptr i16, ptr %80, i32 %33
  %82 = load i16, ptr %81, align 2
  %83 = getelementptr i16, ptr %80, i32 %76
  %84 = load i16, ptr %83, align 2
  %85 = icmp eq i16 %82, -1
  %86 = icmp eq i16 %84, -1
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %137, label %88

88:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %89 = shl nuw i32 1, %61
  %90 = or i32 %89, %16
  %91 = load ptr, ptr %28, align 4
  %92 = zext i16 %82 to i32
  %93 = getelementptr i8, ptr %91, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %90) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %94 = load ptr, ptr %28, align 4
  %95 = getelementptr i8, ptr %94, i32 4
  %96 = getelementptr i8, ptr %95, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #7, !srcloc !12
  %97 = icmp sgt i32 %78, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %88
  %99 = tail call i32 @llvm.ctlz.i32(i32 %78, i1 true) #7, !range !21
  %100 = xor i32 %99, 31
  %101 = lshr i32 %22, %100
  %102 = getelementptr %struct.iproc_pcie_ib_map, ptr %79, i32 %30, i32 5
  %103 = getelementptr %struct.iproc_pcie_ib_map, ptr %79, i32 %30, i32 6
  %104 = zext i32 %101 to i64
  br label %105

105:                                              ; preds = %105, %98
  %106 = phi i64 [ %12, %98 ], [ %127, %105 ]
  %107 = phi i32 [ 0, %98 ], [ %128, %105 ]
  %108 = phi i16 [ %84, %98 ], [ %126, %105 ]
  %109 = load ptr, ptr %28, align 4
  %110 = zext i16 %108 to i32
  %111 = getelementptr i8, ptr %109, i32 %110
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %113 = trunc i64 %106 to i32
  %114 = or i32 %112, %113
  %115 = or i32 %114, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %116 = load ptr, ptr %28, align 4
  %117 = getelementptr i8, ptr %116, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %118 = lshr i64 %106, 32
  %119 = trunc i64 %118 to i32
  %120 = load ptr, ptr %28, align 4
  %121 = getelementptr i8, ptr %120, i32 %110
  %122 = load i16, ptr %102, align 4
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %121, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %119) #7, !srcloc !12
  %125 = load i16, ptr %103, align 2
  %126 = add i16 %125, %108
  %127 = add i64 %106, %104
  %128 = add nuw nsw i32 %107, 1
  %129 = icmp eq i32 %128, %78
  br i1 %129, label %138, label %105

130:                                              ; preds = %60
  %131 = add nuw i32 %61, 1
  %132 = icmp ult i32 %131, %46
  br i1 %132, label %60, label %133

133:                                              ; preds = %130, %51, %43
  %134 = add nuw i32 %30, 1
  %135 = load i32, ptr %8, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %29, label %137

137:                                              ; preds = %133, %75, %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  br label %138

138:                                              ; preds = %137, %105, %88, %74
  %139 = phi i32 [ -22, %137 ], [ -22, %74 ], [ 0, %88 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %139
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iproc_pci_raw_config_read32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i16, ptr %6, i32 7
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = and i32 %1, 8188
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %12 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = zext i16 %8 to i32
  %15 = getelementptr i8, ptr %13, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #7, !srcloc !12
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi ptr [ %6, %4 ], [ %16, %10 ]
  %19 = getelementptr i16, ptr %18, i32 8
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, -1
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = zext i16 %20 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %30 = icmp slt i32 %2, 3
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = shl i32 %1, 3
  %33 = and i32 %32, 24
  %34 = lshr i32 %29, %33
  %35 = shl i32 %2, 3
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %38, %31 ], [ %29, %28 ]
  store i32 %40, ptr %3, align 4
  br label %41

41:                                               ; preds = %39, %22, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iproc_pci_raw_config_write32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = and i32 %1, 8188
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %11 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = zext i16 %7 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #7, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi ptr [ %5, %3 ], [ %15, %9 ]
  %18 = getelementptr i16, ptr %17, i32 8
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = zext i16 %19 to i32
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %2) #7, !srcloc !12
  br label %28

28:                                               ; preds = %27, %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iproc_msi_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iproc_pcie_paxc_v2_msi_steer(ptr nocapture noundef readonly %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br i1 %2, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr i16, ptr %5, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %118, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = zext i16 %8 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i16, ptr %16, i32 6
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -1
  br i1 %19, label %118, label %20

20:                                               ; preds = %10
  %21 = and i32 %15, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %22 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = zext i16 %18 to i32
  %25 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #7, !srcloc !12
  br label %118

26:                                               ; preds = %3
  %27 = getelementptr i16, ptr %5, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = lshr i64 %1, 13
  %32 = trunc i64 %31 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %33 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = zext i16 %28 to i32
  %36 = getelementptr i8, ptr %34, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #7, !srcloc !12
  %37 = load ptr, ptr %4, align 4
  br label %38

38:                                               ; preds = %30, %26
  %39 = phi ptr [ %5, %26 ], [ %37, %30 ]
  %40 = getelementptr i16, ptr %39, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, -1
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %44 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = zext i16 %41 to i32
  %47 = getelementptr i8, ptr %45, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #7, !srcloc !12
  %48 = load ptr, ptr %4, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %39, %38 ], [ %48, %43 ]
  %51 = getelementptr i16, ptr %50, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, -1
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = zext i16 %52 to i32
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i16, ptr %60, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, -1
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = or i32 %59, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %66 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = zext i16 %62 to i32
  %69 = getelementptr i8, ptr %67, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %65) #7, !srcloc !12
  %70 = load ptr, ptr %4, align 4
  br label %71

71:                                               ; preds = %64, %54, %49
  %72 = phi ptr [ %60, %54 ], [ %70, %64 ], [ %50, %49 ]
  %73 = lshr i64 %1, 2
  %74 = getelementptr i16, ptr %72, i32 5
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, -1
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = lshr i64 %1, 34
  %79 = trunc i64 %78 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %80 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = zext i16 %75 to i32
  %83 = getelementptr i8, ptr %81, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %79) #7, !srcloc !12
  %84 = load ptr, ptr %4, align 4
  br label %85

85:                                               ; preds = %77, %71
  %86 = phi ptr [ %72, %71 ], [ %84, %77 ]
  %87 = getelementptr i16, ptr %86, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = icmp eq i16 %88, -1
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = trunc i64 %73 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %92 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = zext i16 %88 to i32
  %95 = getelementptr i8, ptr %93, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %91) #7, !srcloc !12
  %96 = load ptr, ptr %4, align 4
  br label %97

97:                                               ; preds = %90, %85
  %98 = phi ptr [ %86, %85 ], [ %96, %90 ]
  %99 = getelementptr i16, ptr %98, i32 6
  %100 = load i16, ptr %99, align 2
  %101 = icmp eq i16 %100, -1
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = zext i16 %100 to i32
  %106 = getelementptr i8, ptr %104, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr i16, ptr %108, i32 6
  %110 = load i16, ptr %109, align 2
  %111 = icmp eq i16 %110, -1
  br i1 %111, label %118, label %112

112:                                              ; preds = %102
  %113 = or i32 %107, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %114 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = zext i16 %110 to i32
  %117 = getelementptr i8, ptr %115, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %113) #7, !srcloc !12
  br label %118

118:                                              ; preds = %112, %102, %97, %20, %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @iproc_pcie_bus_map_cfg_bus(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = and i32 %1, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i16, ptr %15, i32 7
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, -1
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = and i32 %2, 8188
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %21 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = zext i16 %17 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #7, !srcloc !12
  %25 = load ptr, ptr %14, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi ptr [ %15, %13 ], [ %25, %19 ]
  %28 = getelementptr i16, ptr %27, i32 8
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, -1
  br i1 %30, label %61, label %55

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i16, ptr %33, i32 9
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = shl nuw nsw i32 %8, 20
  %39 = shl i32 %1, 12
  %40 = and i32 %39, 1044480
  %41 = and i32 %2, 4092
  %42 = or i32 %38, %40
  %43 = or i32 %42, %41
  %44 = or i32 %43, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %45 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = zext i16 %35 to i32
  %48 = getelementptr i8, ptr %46, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %44) #7, !srcloc !12
  %49 = load ptr, ptr %32, align 4
  br label %50

50:                                               ; preds = %37, %31
  %51 = phi ptr [ %33, %31 ], [ %49, %37 ]
  %52 = getelementptr i16, ptr %51, i32 10
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %50, %26
  %56 = phi i16 [ %29, %26 ], [ %53, %50 ]
  %57 = getelementptr inbounds %struct.iproc_pcie, ptr %5, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = zext i16 %56 to i32
  %60 = getelementptr i8, ptr %58, i32 %59
  br label %61

61:                                               ; preds = %55, %50, %26, %10
  %62 = phi ptr [ null, %10 ], [ null, %26 ], [ null, %50 ], [ %60, %55 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pcie_config_read32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 11
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i16, ptr %17, i32 32
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = zext i16 %19 to i32
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i16, ptr %27, i32 32
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, -1
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = and i32 %26, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %22, align 4
  %34 = zext i16 %29 to i32
  %35 = getelementptr i8, ptr %33, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #7, !srcloc !12
  br label %36

36:                                               ; preds = %31, %21, %15, %11, %5
  %37 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 9
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %150, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %6, align 4
  %42 = load i8, ptr %8, align 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = tail call i32 @pci_generic_config_read32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %152

47:                                               ; preds = %44
  %48 = and i32 %2, -4
  switch i32 %48, label %152 [
    i32 0, label %49
    i32 72, label %58
    i32 172, label %66
    i32 200, label %71
  ]

49:                                               ; preds = %47
  %50 = load i32, ptr %4, align 4
  %51 = lshr i32 %50, 16
  %52 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 12
  %53 = trunc i32 %51 to i16
  switch i16 %53, label %152 [
    i16 5837, label %54
    i16 5872, label %55
    i16 -10238, label %56
    i16 -10236, label %57
  ]

54:                                               ; preds = %49
  store i8 1, ptr %52, align 4
  br label %152

55:                                               ; preds = %49
  store i8 1, ptr %52, align 4
  br label %152

56:                                               ; preds = %49
  store i8 1, ptr %52, align 4
  br label %152

57:                                               ; preds = %49
  store i8 1, ptr %52, align 4
  br label %152

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 12
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %152, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %4, align 4
  %64 = and i32 %63, -65536
  %65 = or i32 %64, 44033
  store i32 %65, ptr %4, align 4
  br label %152

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 12
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %152, label %70

70:                                               ; preds = %66
  store i32 4325392, ptr %4, align 4
  br label %152

71:                                               ; preds = %47
  %72 = load i32, ptr %4, align 4
  %73 = and i32 %72, -65537
  store i32 %73, ptr %4, align 4
  br label %152

74:                                               ; preds = %40
  %75 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i16, ptr %76, i32 9
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %78, -1
  br i1 %79, label %94, label %80

80:                                               ; preds = %74
  %81 = zext i8 %42 to i32
  %82 = shl nuw nsw i32 %81, 20
  %83 = shl i32 %1, 12
  %84 = and i32 %83, 1044480
  %85 = and i32 %2, 4092
  %86 = or i32 %82, %84
  %87 = or i32 %86, %85
  %88 = or i32 %87, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %89 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = zext i16 %78 to i32
  %92 = getelementptr i8, ptr %90, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %88) #7, !srcloc !12
  %93 = load ptr, ptr %75, align 4
  br label %94

94:                                               ; preds = %80, %74
  %95 = phi ptr [ %76, %74 ], [ %93, %80 ]
  %96 = getelementptr i16, ptr %95, i32 10
  %97 = load i16, ptr %96, align 2
  %98 = icmp eq i16 %97, -1
  br i1 %98, label %152, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = zext i16 %97 to i32
  %103 = getelementptr i8, ptr %101, i32 %102
  %104 = icmp eq ptr %103, null
  br i1 %104, label %152, label %105

105:                                              ; preds = %99
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %103) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %107 = icmp eq i32 %106, -65535
  br i1 %107, label %108, label %127

108:                                              ; preds = %123, %105
  %109 = phi i32 [ %110, %123 ], [ 500000, %105 ]
  %110 = add nsw i32 %109, -1
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %75, align 4
  %114 = getelementptr i16, ptr %113, i32 30
  %115 = load i16, ptr %114, align 2
  %116 = icmp eq i16 %115, -1
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %100, align 4
  %119 = zext i16 %115 to i32
  %120 = getelementptr i8, ptr %118, i32 %119
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748) #7
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %103) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %126 = icmp eq i32 %125, -65535
  br i1 %126, label %108, label %127

127:                                              ; preds = %123, %117, %112, %108, %105
  %128 = phi i32 [ %106, %105 ], [ -65535, %112 ], [ -1, %108 ], [ %125, %123 ], [ -65535, %117 ]
  %129 = icmp slt i32 %3, 3
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = shl i32 %2, 3
  %132 = and i32 %131, 24
  %133 = lshr i32 %128, %132
  %134 = shl i32 %3, 3
  %135 = shl nsw i32 -1, %134
  %136 = xor i32 %135, -1
  %137 = and i32 %133, %136
  br label %138

138:                                              ; preds = %130, %127
  %139 = phi i32 [ %137, %130 ], [ %128, %127 ]
  store i32 %139, ptr %4, align 4
  %140 = getelementptr inbounds %struct.iproc_pcie, ptr %41, i32 0, i32 10
  %141 = load i8, ptr %140, align 2, !range !8
  %142 = icmp ne i8 %141, 0
  %143 = and i32 %2, 4092
  %144 = icmp eq i32 %143, 0
  %145 = and i1 %144, %142
  %146 = and i32 %139, -65536
  %147 = icmp eq i32 %146, 378404864
  %148 = select i1 %145, i1 %147, i1 false
  %149 = select i1 %148, i32 129, i32 0
  br label %152

150:                                              ; preds = %36
  %151 = tail call i32 @pci_generic_config_read32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #7
  br label %152

152:                                              ; preds = %150, %138, %99, %94, %71, %70, %66, %62, %58, %57, %56, %55, %54, %49, %47, %44
  %153 = phi i32 [ %151, %150 ], [ %45, %44 ], [ 134, %99 ], [ 0, %47 ], [ 0, %49 ], [ 0, %54 ], [ 0, %55 ], [ 0, %56 ], [ 0, %57 ], [ 0, %58 ], [ 0, %62 ], [ 0, %66 ], [ 0, %70 ], [ 0, %71 ], [ 134, %94 ], [ %149, %138 ]
  %154 = load ptr, ptr %6, align 4
  %155 = load i8, ptr %8, align 4
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %182, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.iproc_pcie, ptr %154, i32 0, i32 11
  %159 = load i8, ptr %158, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %182, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.iproc_pcie, ptr %154, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i16, ptr %163, i32 32
  %165 = load i16, ptr %164, align 2
  %166 = icmp eq i16 %165, -1
  br i1 %166, label %182, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.iproc_pcie, ptr %154, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = zext i16 %165 to i32
  %171 = getelementptr i8, ptr %169, i32 %170
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %173 = load ptr, ptr %162, align 4
  %174 = getelementptr i16, ptr %173, i32 32
  %175 = load i16, ptr %174, align 2
  %176 = icmp eq i16 %175, -1
  br i1 %176, label %182, label %177

177:                                              ; preds = %167
  %178 = or i32 %172, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %179 = load ptr, ptr %168, align 4
  %180 = zext i16 %175 to i32
  %181 = getelementptr i8, ptr %179, i32 %180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %178) #7, !srcloc !12
  br label %182

182:                                              ; preds = %177, %167, %161, %157, %152
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pcie_config_write32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 11
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i16, ptr %17, i32 32
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = zext i16 %19 to i32
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i16, ptr %27, i32 32
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, -1
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = and i32 %26, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %22, align 4
  %34 = zext i16 %29 to i32
  %35 = getelementptr i8, ptr %33, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #7, !srcloc !12
  br label %36

36:                                               ; preds = %31, %21, %15, %11, %5
  %37 = tail call i32 @pci_generic_config_write32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7
  %38 = load ptr, ptr %6, align 4
  %39 = load i8, ptr %8, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.iproc_pcie, ptr %38, i32 0, i32 11
  %43 = load i8, ptr %42, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.iproc_pcie, ptr %38, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i16, ptr %47, i32 32
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, -1
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.iproc_pcie, ptr %38, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = zext i16 %49 to i32
  %55 = getelementptr i8, ptr %53, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %57 = load ptr, ptr %46, align 4
  %58 = getelementptr i16, ptr %57, i32 32
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %51
  %62 = or i32 %56, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %63 = load ptr, ptr %52, align 4
  %64 = zext i16 %59 to i32
  %65 = getelementptr i8, ptr %63, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #7, !srcloc !12
  br label %66

66:                                               ; preds = %61, %51, %45, %41, %36
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_msi_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 3855992}
!10 = !{i64 2154160110}
!11 = !{i64 2154160466}
!12 = !{i64 3855574}
!13 = !{i64 2154170415}
!14 = !{i64 2154170975}
!15 = !{i64 2154171437}
!16 = !{i64 2154171899}
!17 = !{!"auto-init"}
!18 = !{i64 2154164252}
!19 = !{i64 2154185378}
!20 = !{i64 2154185914}
!21 = !{i32 0, i32 33}
!22 = !{i64 2154188141}
!23 = !{i64 2154188467}
!24 = !{i64 2154188890}
!25 = !{i64 2154164434}
!26 = !{i64 2154162347}
!27 = !{i64 2154163209}
