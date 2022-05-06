; ModuleID = '/llk/IR/drivers/pci/controller/dwc/pcie-designware-ep.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-designware-ep.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_linkup:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_linkup\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_linkup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_init_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_init_notify\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_init_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_reset_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_reset_bar\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_reset_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_raise_legacy_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_raise_legacy_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_raise_legacy_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_raise_msi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_raise_msi_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_raise_msi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_init_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_init_complete\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_init_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_ep_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_ep_init\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_ep_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_epc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.dw_pcie_ep_func = type { %struct.list_head, i8, i8, i8 }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.pci_epc_mem_window = type { i32, i32, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_msix_tbl = type { i64, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_dw_pcie_ep_linkup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_linkup = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_linkup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_linkup to i32), ptr @__kstrtab_dw_pcie_ep_linkup, ptr @__kstrtabns_dw_pcie_ep_linkup }, section "___ksymtab_gpl+dw_pcie_ep_linkup", align 4
@__kstrtab_dw_pcie_ep_init_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_init_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_init_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_init_notify to i32), ptr @__kstrtab_dw_pcie_ep_init_notify, ptr @__kstrtabns_dw_pcie_ep_init_notify }, section "___ksymtab_gpl+dw_pcie_ep_init_notify", align 4
@__kstrtab_dw_pcie_ep_reset_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_reset_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_reset_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_reset_bar to i32), ptr @__kstrtab_dw_pcie_ep_reset_bar, ptr @__kstrtabns_dw_pcie_ep_reset_bar }, section "___ksymtab_gpl+dw_pcie_ep_reset_bar", align 4
@.str = private unnamed_addr constant [31 x i8] c"EP cannot trigger legacy IRQs\0A\00", align 1
@__kstrtab_dw_pcie_ep_raise_legacy_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_raise_legacy_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_raise_legacy_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_raise_legacy_irq to i32), ptr @__kstrtab_dw_pcie_ep_raise_legacy_irq, ptr @__kstrtabns_dw_pcie_ep_raise_legacy_irq }, section "___ksymtab_gpl+dw_pcie_ep_raise_legacy_irq", align 4
@__kstrtab_dw_pcie_ep_raise_msi_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_raise_msi_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_raise_msi_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_raise_msi_irq to i32), ptr @__kstrtab_dw_pcie_ep_raise_msi_irq, ptr @__kstrtabns_dw_pcie_ep_raise_msi_irq }, section "___ksymtab_gpl+dw_pcie_ep_raise_msi_irq", align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"PCIe controller is not set to EP mode (hdr_type:0x%x)!\0A\00", align 1
@__kstrtab_dw_pcie_ep_init_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_init_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_init_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_init_complete to i32), ptr @__kstrtab_dw_pcie_ep_init_complete, ptr @__kstrtabns_dw_pcie_ep_init_complete }, section "___ksymtab_gpl+dw_pcie_ep_init_complete", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dbi2\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"addr_space\00", align 1
@epc_ops = internal constant %struct.pci_epc_ops { ptr @dw_pcie_ep_write_header, ptr @dw_pcie_ep_set_bar, ptr @dw_pcie_ep_clear_bar, ptr @dw_pcie_ep_map_addr, ptr @dw_pcie_ep_unmap_addr, ptr @dw_pcie_ep_set_msi, ptr @dw_pcie_ep_get_msi, ptr @dw_pcie_ep_set_msix, ptr @dw_pcie_ep_get_msix, ptr @dw_pcie_ep_raise_irq, ptr null, ptr @dw_pcie_ep_start, ptr @dw_pcie_ep_stop, ptr @dw_pcie_ep_get_features, ptr null }, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to create epc device\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"max-functions\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to initialize address space\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to reserve memory for MSI/MSI-X\0A\00", align 1
@__kstrtab_dw_pcie_ep_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_ep_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_ep_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_ep_init to i32), ptr @__kstrtab_dw_pcie_ep_init, ptr @__kstrtabns_dw_pcie_ep_init }, section "___ksymtab_gpl+dw_pcie_ep_init", align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to enable address\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"No free outbound window\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"No free inbound window\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to program IB window\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_dw_pcie_ep_init, ptr @__ksymtab_dw_pcie_ep_init_complete, ptr @__ksymtab_dw_pcie_ep_init_notify, ptr @__ksymtab_dw_pcie_ep_linkup, ptr @__ksymtab_dw_pcie_ep_raise_legacy_irq, ptr @__ksymtab_dw_pcie_ep_raise_msi_irq, ptr @__ksymtab_dw_pcie_ep_reset_bar], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_ep_linkup(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @pci_epc_linkup(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_ep_init_notify(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @pci_epc_init_notify(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_init_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @dw_pcie_ep_get_func_from_ep(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %6, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_ep_reset_bar(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_epc, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %2
  %9 = phi i8 [ %10, %8 ], [ 0, %2 ]
  tail call fastcc void @__dw_pcie_ep_reset_bar(ptr noundef %0, i8 noundef zeroext %9, i32 noundef %1, i32 noundef 0)
  %10 = add nuw i8 %9, 1
  %11 = icmp ult i8 %10, %6
  br i1 %11, label %8, label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dw_pcie_ep_reset_bar(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 8, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 8
  %12 = tail call i32 %8(ptr noundef %11, i8 noundef zeroext %1) #5
  %13 = add i32 %12, 16
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %13, %10 ], [ 16, %4 ]
  %16 = shl i32 %2, 2
  %17 = add i32 %15, %16
  %18 = tail call i32 @dw_pcie_read_dbi(ptr noundef %0, i32 noundef 2236, i32 noundef 4) #5
  %19 = or i32 %18, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %0, i32 noundef 2236, i32 noundef 4, i32 noundef %19) #5
  tail call void @dw_pcie_write_dbi2(ptr noundef %0, i32 noundef %17, i32 noundef 4, i32 noundef 0) #5
  tail call void @dw_pcie_write_dbi(ptr noundef %0, i32 noundef %17, i32 noundef 4, i32 noundef 0) #5
  %20 = and i32 %3, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = add i32 %17, 4
  tail call void @dw_pcie_write_dbi2(ptr noundef %0, i32 noundef %23, i32 noundef 4, i32 noundef 0) #5
  tail call void @dw_pcie_write_dbi(ptr noundef %0, i32 noundef %23, i32 noundef 4, i32 noundef 0) #5
  br label %24

24:                                               ; preds = %22, %14
  %25 = tail call i32 @dw_pcie_read_dbi(ptr noundef %0, i32 noundef 2236, i32 noundef 4) #5
  %26 = and i32 %25, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %0, i32 noundef 2236, i32 noundef 4, i32 noundef %26) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_ep_raise_legacy_irq(ptr nocapture noundef readonly %0, i8 zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -176
  %4 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #6
  ret i32 -22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_ep_raise_msi_irq(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -176
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %102, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, %1
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %102, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %9, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %102, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = tail call i32 %25(ptr noundef %0, i8 noundef zeroext %1) #5
  %29 = load i8, ptr %18, align 1
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i8 [ %29, %27 ], [ %19, %21 ]
  %32 = phi i32 [ %28, %27 ], [ 0, %21 ]
  %33 = zext i8 %31 to i32
  %34 = add i32 %32, 2
  %35 = add i32 %34, %33
  %36 = tail call i32 @dw_pcie_read_dbi(ptr noundef %4, i32 noundef %35, i32 noundef 2) #5
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  %39 = load i8, ptr %18, align 1
  %40 = zext i8 %39 to i32
  %41 = add i32 %32, 4
  %42 = add i32 %41, %40
  %43 = tail call i32 @dw_pcie_read_dbi(ptr noundef %4, i32 noundef %42, i32 noundef 4) #5
  %44 = load i8, ptr %18, align 1
  %45 = zext i8 %44 to i32
  %46 = add i32 %32, 8
  %47 = add i32 %46, %45
  br i1 %38, label %54, label %48

48:                                               ; preds = %30
  %49 = tail call i32 @dw_pcie_read_dbi(ptr noundef %4, i32 noundef %47, i32 noundef 4) #5
  %50 = load i8, ptr %18, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 %32, 12
  %53 = add i32 %52, %51
  br label %54

54:                                               ; preds = %48, %30
  %55 = phi i32 [ %53, %48 ], [ %47, %30 ]
  %56 = phi i32 [ %49, %48 ], [ 0, %30 ]
  %57 = tail call i32 @dw_pcie_read_dbi(ptr noundef %4, i32 noundef %55, i32 noundef 2) #5
  %58 = getelementptr inbounds %struct.pci_epc, ptr %5, i32 0, i32 4
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  %63 = and i32 %62, %43
  %64 = zext i32 %56 to i64
  %65 = shl nuw i64 %64, 32
  %66 = xor i32 %63, %43
  %67 = zext i32 %66 to i64
  %68 = or i64 %65, %67
  %69 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 11
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @dw_pcie_ep_map_addr(ptr noundef %5, i8 noundef zeroext %1, i8 noundef zeroext 0, i32 noundef %70, i64 noundef %68, i32 noundef %61)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %74 = and i32 %57, 65535
  %75 = zext i8 %2 to i32
  %76 = add nsw i32 %75, -1
  %77 = or i32 %74, %76
  %78 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 10
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #5, !srcloc !9
  %81 = load i32, ptr %69, align 4
  %82 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr i8, ptr %83, i32 -152
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.dw_pcie_ep, ptr %83, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %95, %87
  %91 = phi i32 [ 0, %87 ], [ %96, %95 ]
  %92 = getelementptr i32, ptr %89, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, %81
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = add nuw i32 %91, 1
  %97 = icmp eq i32 %96, %85
  br i1 %97, label %102, label %90

98:                                               ; preds = %90
  %99 = getelementptr i8, ptr %83, i32 -176
  tail call void @dw_pcie_disable_atu(ptr noundef %99, i32 noundef %91, i32 noundef 2) #5
  %100 = getelementptr inbounds %struct.dw_pcie_ep, ptr %83, i32 0, i32 9
  %101 = load ptr, ptr %100, align 4
  tail call void @_clear_bit(i32 noundef %91, ptr noundef %101) #5
  br label %102

102:                                              ; preds = %98, %95, %73, %54, %17, %15, %7
  %103 = phi i32 [ -22, %17 ], [ -22, %15 ], [ %71, %54 ], [ 0, %73 ], [ 0, %98 ], [ 0, %95 ], [ -22, %7 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_map_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -176
  %10 = getelementptr inbounds %struct.dw_pcie_ep, ptr %8, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %8, i32 -152
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @_find_first_zero_bit_le(ptr noundef %11, i32 noundef %13) #5
  %15 = load i32, ptr %12, align 8
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = zext i32 %3 to i64
  %19 = zext i32 %5 to i64
  tail call void @dw_pcie_prog_ep_outbound_atu(ptr noundef %9, i8 noundef zeroext %1, i32 noundef %14, i32 noundef 0, i64 noundef %18, i64 noundef %4, i64 noundef %19) #5
  %20 = load ptr, ptr %10, align 4
  tail call void @_set_bit(i32 noundef %14, ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.dw_pcie_ep, ptr %8, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i32, ptr %22, i32 %14
  store i32 %3, ptr %23, align 4
  br label %27

24:                                               ; preds = %6
  %25 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10) #6
  %26 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9) #6
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ -22, %24 ], [ 0, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pcie_ep_unmap_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -152
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %18, %10
  %14 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %15 = getelementptr i32, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %25, label %13

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %6, i32 -176
  tail call void @dw_pcie_disable_atu(ptr noundef %22, i32 noundef %14, i32 noundef 2) #5
  %23 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  tail call void @_clear_bit(i32 noundef %14, ptr noundef %24) #5
  br label %25

25:                                               ; preds = %21, %18, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_ep_raise_msix_irq_doorbell(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -176
  %5 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = icmp eq ptr %8, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %8, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = zext i8 %1 to i32
  %22 = shl nuw i32 %21, 24
  %23 = zext i16 %2 to i32
  %24 = add nsw i32 %23, -1
  %25 = or i32 %24, %22
  tail call void @dw_pcie_write_dbi(ptr noundef %4, i32 noundef 2376, i32 noundef 4, i32 noundef %25) #5
  br label %26

26:                                               ; preds = %20, %16, %14, %6
  %27 = phi i32 [ 0, %20 ], [ -22, %16 ], [ -22, %14 ], [ -22, %6 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_ep_raise_msix_irq(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -176
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %91, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, %1
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %91, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %9, i32 0, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %91, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = tail call i32 %25(ptr noundef %0, i8 noundef zeroext %1) #5
  %29 = add i32 %28, 4
  %30 = load i8, ptr %18, align 2
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i8 [ %30, %27 ], [ %19, %21 ]
  %33 = phi i32 [ %29, %27 ], [ 4, %21 ]
  %34 = zext i8 %32 to i32
  %35 = add i32 %33, %34
  %36 = tail call i32 @dw_pcie_read_dbi(ptr noundef %4, i32 noundef %35, i32 noundef 4) #5
  %37 = and i32 %36, 7
  %38 = and i32 %36, -8
  %39 = getelementptr %struct.dw_pcie_ep, ptr %0, i32 0, i32 12, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.pci_epf_bar, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %38
  %44 = zext i16 %2 to i32
  %45 = add nsw i32 %44, -1
  %46 = getelementptr %struct.pci_epf_msix_tbl, ptr %43, i32 %45
  %47 = getelementptr inbounds %struct.pci_epf_msix_tbl, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.pci_epf_msix_tbl, ptr %46, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %31
  %54 = load i64, ptr %46, align 8
  %55 = getelementptr inbounds %struct.pci_epc, ptr %5, i32 0, i32 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @dw_pcie_ep_map_addr(ptr noundef %5, i8 noundef zeroext %1, i8 noundef zeroext 0, i32 noundef %60, i64 noundef %54, i32 noundef %58)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %53
  %64 = add i32 %58, -1
  %65 = trunc i64 %54 to i32
  %66 = and i32 %64, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %67 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %48) #5, !srcloc !9
  %70 = load i32, ptr %59, align 4
  %71 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i32 -152
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.dw_pcie_ep, ptr %72, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %84, %76
  %80 = phi i32 [ 0, %76 ], [ %85, %84 ]
  %81 = getelementptr i32, ptr %78, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, %70
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = add nuw i32 %80, 1
  %86 = icmp eq i32 %85, %74
  br i1 %86, label %91, label %79

87:                                               ; preds = %79
  %88 = getelementptr i8, ptr %72, i32 -176
  tail call void @dw_pcie_disable_atu(ptr noundef %88, i32 noundef %80, i32 noundef 2) #5
  %89 = getelementptr inbounds %struct.dw_pcie_ep, ptr %72, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  tail call void @_clear_bit(i32 noundef %80, ptr noundef %90) #5
  br label %91

91:                                               ; preds = %87, %84, %63, %53, %31, %17, %15, %7
  %92 = phi i32 [ -22, %17 ], [ -22, %15 ], [ -1, %31 ], [ %61, %53 ], [ 0, %63 ], [ 0, %87 ], [ 0, %84 ], [ -22, %7 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_ep_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epc, ptr %2, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  tail call void @pci_epc_mem_free_addr(ptr noundef %2, i32 noundef %4, ptr noundef %6, i32 noundef %10) #5
  tail call void @pci_epc_mem_exit(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_free_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_ep_init_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -176
  %3 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 14, i32 noundef 1) #5
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i32
  %9 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %8) #6
  br label %53

10:                                               ; preds = %15, %1
  %11 = phi i32 [ %17, %15 ], [ 256, %1 ]
  %12 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef %11, i32 noundef 4) #5
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 21
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = lshr i32 %12, 20
  %17 = and i32 %16, 4092
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %11, %10 ], [ 0, %15 ]
  %21 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4) #5
  %22 = or i32 %21, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4, i32 noundef %22) #5
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %20, 8
  %26 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef %25, i32 noundef 4) #5
  %27 = lshr i32 %26, 5
  %28 = and i32 %27, 7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %24
  %31 = add nuw nsw i32 %20, 4
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %31, i32 noundef 4, i32 noundef 0) #5
  %32 = icmp eq i32 %28, 1
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = add nuw nsw i32 %20, 12
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %34, i32 noundef 4, i32 noundef 0) #5
  %35 = icmp eq i32 %28, 2
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = add nuw nsw i32 %20, 20
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %37, i32 noundef 4, i32 noundef 0) #5
  %38 = icmp eq i32 %28, 3
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %20, 28
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %40, i32 noundef 4, i32 noundef 0) #5
  %41 = icmp eq i32 %28, 4
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = add nuw nsw i32 %20, 36
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %43, i32 noundef 4, i32 noundef 0) #5
  %44 = icmp eq i32 %28, 5
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = add nuw nsw i32 %20, 44
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %46, i32 noundef 4, i32 noundef 0) #5
  %47 = icmp eq i32 %28, 6
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = add nuw nsw i32 %20, 52
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %49, i32 noundef 4, i32 noundef 0) #5
  br label %50

50:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %24, %19
  tail call void @dw_pcie_setup(ptr noundef %2) #5
  %51 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4) #5
  %52 = and i32 %51, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4, i32 noundef %52) #5
  br label %53

53:                                               ; preds = %50, %7
  %54 = phi i32 [ -5, %7 ], [ 0, %50 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_ep_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -176
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 -172
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = tail call ptr @platform_get_resource_byname(ptr noundef %4, i32 noundef 512, ptr noundef nonnull @.str.2) #5
  %14 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %3, ptr noundef %13) #5
  store ptr %14, ptr %9, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i32
  br label %214

18:                                               ; preds = %12, %1
  %19 = getelementptr i8, ptr %0, i32 -168
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = tail call ptr @platform_get_resource_byname(ptr noundef %4, i32 noundef 512, ptr noundef nonnull @.str.3) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr i8, ptr %26, i32 4096
  store ptr %27, ptr %19, align 8
  br label %33

28:                                               ; preds = %22
  %29 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %3, ptr noundef nonnull %23) #5
  store ptr %29, ptr %19, align 8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %214

33:                                               ; preds = %28, %25, %18
  tail call void @dw_pcie_iatu_detect(ptr noundef %2) #5
  %34 = tail call ptr @platform_get_resource_byname(ptr noundef %4, i32 noundef 512, ptr noundef nonnull @.str.4) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %214, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %34, align 4
  %38 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %34, align 4
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %41
  %44 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %0, i32 -156
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 31
  %48 = lshr i32 %47, 3
  %49 = and i32 %48, 536870908
  %50 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %49, i32 noundef 3520) #5
  %51 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 8
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %214, label %53

53:                                               ; preds = %36
  %54 = getelementptr i8, ptr %0, i32 -152
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, 31
  %57 = lshr i32 %56, 3
  %58 = and i32 %57, 536870908
  %59 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %58, i32 noundef 3520) #5
  %60 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 9
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %214, label %62

62:                                               ; preds = %53
  %63 = load i32, ptr %54, align 8
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 4) #5
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %214, label %66, !prof !11

66:                                               ; preds = %62
  %67 = extractvalue { i32, i1 } %64, 0
  %68 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %67, i32 noundef 3520) #5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %214, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 7
  store ptr %68, ptr %71, align 4
  %72 = getelementptr i8, ptr %0, i32 92
  %73 = load i32, ptr %72, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = tail call i32 @of_pci_get_max_link_speed(ptr noundef %6) #5
  store i32 %76, ptr %72, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = tail call ptr @__devm_pci_epc_create(ptr noundef %3, ptr noundef nonnull @epc_ops, ptr noundef null) #5
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %81 = ptrtoint ptr %78 to i32
  br label %214

82:                                               ; preds = %77
  store ptr %78, ptr %0, align 4
  %83 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 8
  store ptr %0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.pci_epc, ptr %78, i32 0, i32 6
  %85 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %84, i32 noundef 1, i32 noundef 0) #5
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i8 1, ptr %84, align 8
  br label %91

88:                                               ; preds = %82
  %89 = load i8, ptr %84, align 8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %178, label %91

91:                                               ; preds = %88, %87
  %92 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 2
  br label %93

93:                                               ; preds = %170, %91
  %94 = phi i8 [ 0, %91 ], [ %175, %170 ]
  %95 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %214, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %95, i32 0, i32 1
  store i8 %94, ptr %98, align 4
  %99 = load ptr, ptr %92, align 4
  %100 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = tail call i32 %101(ptr noundef %0, i8 noundef zeroext %94) #5
  %105 = add i32 %104, 52
  br label %106

106:                                              ; preds = %103, %97
  %107 = phi i32 [ %105, %103 ], [ 52, %97 ]
  %108 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef %107, i32 noundef 2) #5
  %109 = trunc i32 %108 to i8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %133, label %115

111:                                              ; preds = %130
  %112 = lshr i32 %127, 8
  %113 = trunc i32 %112 to i8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %111, %106
  %116 = phi i8 [ %113, %111 ], [ %109, %106 ]
  %117 = load ptr, ptr %92, align 4
  %118 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %115
  %122 = tail call i32 %119(ptr noundef %0, i8 noundef zeroext %94) #5
  br label %123

123:                                              ; preds = %121, %115
  %124 = phi i32 [ %122, %121 ], [ 0, %115 ]
  %125 = zext i8 %116 to i32
  %126 = add i32 %124, %125
  %127 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef %126, i32 noundef 2) #5
  %128 = and i32 %127, 255
  %129 = icmp ugt i32 %128, 20
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = trunc i32 %127 to i8
  %132 = icmp eq i8 %131, 5
  br i1 %132, label %133, label %111

133:                                              ; preds = %130, %123, %111, %106
  %134 = phi i8 [ 0, %106 ], [ %116, %130 ], [ 0, %123 ], [ 0, %111 ]
  %135 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %95, i32 0, i32 2
  store i8 %134, ptr %135, align 1
  %136 = load ptr, ptr %92, align 4
  %137 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %136, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %133
  %141 = tail call i32 %138(ptr noundef %0, i8 noundef zeroext %94) #5
  %142 = add i32 %141, 52
  br label %143

143:                                              ; preds = %140, %133
  %144 = phi i32 [ %142, %140 ], [ 52, %133 ]
  %145 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef %144, i32 noundef 2) #5
  %146 = trunc i32 %145 to i8
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %170, label %152

148:                                              ; preds = %167
  %149 = lshr i32 %164, 8
  %150 = trunc i32 %149 to i8
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %170, label %152

152:                                              ; preds = %148, %143
  %153 = phi i8 [ %150, %148 ], [ %146, %143 ]
  %154 = load ptr, ptr %92, align 4
  %155 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %154, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = tail call i32 %156(ptr noundef %0, i8 noundef zeroext %94) #5
  br label %160

160:                                              ; preds = %158, %152
  %161 = phi i32 [ %159, %158 ], [ 0, %152 ]
  %162 = zext i8 %153 to i32
  %163 = add i32 %161, %162
  %164 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef %163, i32 noundef 2) #5
  %165 = and i32 %164, 255
  %166 = icmp ugt i32 %165, 20
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = trunc i32 %164 to i8
  %169 = icmp eq i8 %168, 17
  br i1 %169, label %170, label %148

170:                                              ; preds = %167, %160, %148, %143
  %171 = phi i8 [ 0, %143 ], [ %153, %167 ], [ 0, %160 ], [ 0, %148 ]
  %172 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %95, i32 0, i32 3
  store i8 %171, ptr %172, align 2
  %173 = load ptr, ptr %8, align 4
  store ptr %95, ptr %8, align 4
  store ptr %7, ptr %95, align 4
  %174 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %173, ptr %174, align 4
  store volatile ptr %95, ptr %173, align 4
  %175 = add nuw i8 %94, 1
  %176 = load i8, ptr %84, align 8
  %177 = icmp ult i8 %175, %176
  br i1 %177, label %93, label %178

178:                                              ; preds = %170, %88
  %179 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  tail call void %181(ptr noundef %0) #5
  br label %184

184:                                              ; preds = %183, %178
  %185 = load i32, ptr %38, align 4
  %186 = load i32, ptr %44, align 4
  %187 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 5
  %188 = load i32, ptr %187, align 4
  %189 = tail call i32 @pci_epc_mem_init(ptr noundef %78, i32 noundef %185, i32 noundef %186, i32 noundef %188) #5
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  br label %214

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 11
  %194 = getelementptr inbounds %struct.pci_epc, ptr %78, i32 0, i32 4
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %195, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = tail call ptr @pci_epc_mem_alloc_addr(ptr noundef %78, ptr noundef %193, i32 noundef %197) #5
  %199 = getelementptr inbounds %struct.dw_pcie_ep, ptr %0, i32 0, i32 10
  store ptr %198, ptr %199, align 4
  %200 = icmp eq ptr %198, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %214

202:                                              ; preds = %192
  %203 = load ptr, ptr %179, align 4
  %204 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %203, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = tail call ptr %205(ptr noundef %0) #5
  %209 = load i8, ptr %208, align 8
  %210 = and i8 %209, 2
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207, %202
  %213 = tail call i32 @dw_pcie_ep_init_complete(ptr noundef %0)
  br label %214

214:                                              ; preds = %212, %207, %201, %191, %93, %80, %66, %62, %53, %36, %33, %31, %16
  %215 = phi i32 [ %81, %80 ], [ %189, %191 ], [ %213, %212 ], [ -12, %201 ], [ %32, %31 ], [ %17, %16 ], [ -22, %33 ], [ -12, %36 ], [ -12, %53 ], [ -12, %66 ], [ 0, %207 ], [ -12, %62 ], [ -12, %93 ]
  ret i32 %215
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_iatu_detect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_pci_epc_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_mem_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_mem_alloc_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_prog_ep_outbound_atu(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_disable_atu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_write_header(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call i32 %10(ptr noundef %6, i8 noundef zeroext %1) #5
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ 0, %4 ]
  %16 = getelementptr i8, ptr %6, i32 -176
  %17 = tail call i32 @dw_pcie_read_dbi(ptr noundef %16, i32 noundef 2236, i32 noundef 4) #5
  %18 = or i32 %17, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef 2236, i32 noundef 4, i32 noundef %18) #5
  %19 = load i16, ptr %3, align 4
  %20 = zext i16 %19 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %15, i32 noundef 2, i32 noundef %20) #5
  %21 = add i32 %15, 2
  %22 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %21, i32 noundef 2, i32 noundef %24) #5
  %25 = add i32 %15, 8
  %26 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %25, i32 noundef 1, i32 noundef %28) #5
  %29 = add i32 %15, 9
  %30 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %29, i32 noundef 1, i32 noundef %32) #5
  %33 = add i32 %15, 10
  %34 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 4
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %40, %36
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %33, i32 noundef 2, i32 noundef %41) #5
  %42 = add i32 %15, 12
  %43 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 6
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %42, i32 noundef 1, i32 noundef %45) #5
  %46 = add i32 %15, 44
  %47 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 7
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %46, i32 noundef 2, i32 noundef %49) #5
  %50 = add i32 %15, 46
  %51 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 8
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %50, i32 noundef 2, i32 noundef %53) #5
  %54 = add i32 %15, 61
  %55 = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 255
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef %54, i32 noundef 1, i32 noundef %57) #5
  %58 = tail call i32 @dw_pcie_read_dbi(ptr noundef %16, i32 noundef 2236, i32 noundef 4) #5
  %59 = and i32 %58, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %16, i32 noundef 2236, i32 noundef 4, i32 noundef %59) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_set_bar(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -176
  %8 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = tail call i32 %17(ptr noundef %6, i8 noundef zeroext %1) #5
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %23 = shl i32 %9, 2
  %24 = add i32 %23, 16
  %25 = add i32 %24, %22
  %26 = load i32, ptr %3, align 4
  %27 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %6, i32 -156
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @_find_first_zero_bit_le(ptr noundef %28, i32 noundef %30) #5
  %32 = load i32, ptr %29, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %21
  %35 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11) #6
  br label %60

36:                                               ; preds = %21
  %37 = and i32 %13, 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 2
  %40 = zext i32 %26 to i64
  %41 = tail call i32 @dw_pcie_prog_inbound_atu(ptr noundef %7, i8 noundef zeroext %1, i32 noundef %31, i32 noundef %9, i64 noundef %40, i32 noundef %39) #5
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.12) #6
  br label %60

45:                                               ; preds = %36
  %46 = trunc i32 %31 to i8
  %47 = getelementptr %struct.dw_pcie_ep, ptr %6, i32 0, i32 6, i32 %9
  store i8 %46, ptr %47, align 1
  %48 = load ptr, ptr %27, align 4
  tail call void @_set_bit(i32 noundef %31, ptr noundef %48) #5
  %49 = tail call i32 @dw_pcie_read_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4) #5
  %50 = or i32 %49, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4, i32 noundef %50) #5
  %51 = add i32 %11, -1
  tail call void @dw_pcie_write_dbi2(ptr noundef %7, i32 noundef %25, i32 noundef 4, i32 noundef %51) #5
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef %25, i32 noundef 4, i32 noundef %13) #5
  %52 = and i32 %13, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = add i32 %25, 4
  tail call void @dw_pcie_write_dbi2(ptr noundef %7, i32 noundef %55, i32 noundef 4, i32 noundef 0) #5
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef %55, i32 noundef 4, i32 noundef 0) #5
  br label %56

56:                                               ; preds = %54, %45
  %57 = getelementptr %struct.dw_pcie_ep, ptr %6, i32 0, i32 12, i32 %9
  store ptr %3, ptr %57, align 4
  %58 = tail call i32 @dw_pcie_read_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4) #5
  %59 = and i32 %58, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4, i32 noundef %59) #5
  br label %60

60:                                               ; preds = %56, %43, %34
  %61 = phi i32 [ 0, %56 ], [ %41, %43 ], [ -22, %34 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pcie_ep_clear_bar(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -176
  %8 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.dw_pcie_ep, ptr %6, i32 0, i32 6, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  tail call fastcc void @__dw_pcie_ep_reset_bar(ptr noundef %7, i8 noundef zeroext %1, i32 noundef %9, i32 noundef %14)
  tail call void @dw_pcie_disable_atu(ptr noundef %7, i32 noundef %12, i32 noundef 1) #5
  %15 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void @_clear_bit(i32 noundef %12, ptr noundef %16) #5
  %17 = getelementptr %struct.dw_pcie_ep, ptr %6, i32 0, i32 12, i32 %9
  store ptr null, ptr %17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_set_msi(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -176
  %8 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 1
  br label %9

9:                                                ; preds = %13, %4
  %10 = phi ptr [ %8, %4 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %11, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = icmp eq ptr %11, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %11, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dw_pcie_ep, ptr %6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = tail call i32 %27(ptr noundef %6, i8 noundef zeroext %1) #5
  %31 = add i32 %30, 2
  %32 = load i8, ptr %20, align 1
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i8 [ %32, %29 ], [ %21, %23 ]
  %35 = phi i32 [ %31, %29 ], [ 2, %23 ]
  %36 = zext i8 %34 to i32
  %37 = add i32 %35, %36
  %38 = tail call i32 @dw_pcie_read_dbi(ptr noundef %7, i32 noundef %37, i32 noundef 2) #5
  %39 = and i32 %38, 65521
  %40 = zext i8 %3 to i32
  %41 = shl nuw nsw i32 %40, 1
  %42 = and i32 %41, 14
  %43 = or i32 %39, %42
  %44 = tail call i32 @dw_pcie_read_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4) #5
  %45 = or i32 %44, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4, i32 noundef %45) #5
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef %37, i32 noundef 2, i32 noundef %43) #5
  %46 = tail call i32 @dw_pcie_read_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4) #5
  %47 = and i32 %46, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %7, i32 noundef 2236, i32 noundef 4, i32 noundef %47) #5
  br label %48

48:                                               ; preds = %33, %19, %17, %9
  %49 = phi i32 [ 0, %33 ], [ -22, %19 ], [ -22, %17 ], [ -22, %9 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_get_msi(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -176
  %7 = getelementptr inbounds %struct.dw_pcie_ep, ptr %5, i32 0, i32 1
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %10, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dw_pcie_ep, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef %5, i8 noundef zeroext %1) #5
  %30 = add i32 %29, 2
  %31 = load i8, ptr %19, align 1
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i8 [ %31, %28 ], [ %20, %22 ]
  %34 = phi i32 [ %30, %28 ], [ 2, %22 ]
  %35 = zext i8 %33 to i32
  %36 = add i32 %34, %35
  %37 = tail call i32 @dw_pcie_read_dbi(ptr noundef %6, i32 noundef %36, i32 noundef 2) #5
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = lshr i32 %37, 4
  %42 = and i32 %41, 7
  br label %43

43:                                               ; preds = %40, %32, %18, %16, %8
  %44 = phi i32 [ %42, %40 ], [ -22, %18 ], [ -22, %16 ], [ -22, %32 ], [ -22, %8 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_set_msix(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -176
  %10 = getelementptr inbounds %struct.dw_pcie_ep, ptr %8, i32 0, i32 1
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %61, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %13, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, %1
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = icmp eq ptr %13, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %13, i32 0, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @dw_pcie_read_dbi(ptr noundef %9, i32 noundef 2236, i32 noundef 4) #5
  %27 = or i32 %26, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %9, i32 noundef 2236, i32 noundef 4, i32 noundef %27) #5
  %28 = getelementptr inbounds %struct.dw_pcie_ep, ptr %8, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = tail call i32 %31(ptr noundef %8, i8 noundef zeroext %1) #5
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi i32 [ %34, %33 ], [ 0, %25 ]
  %37 = load i8, ptr %22, align 2
  %38 = zext i8 %37 to i32
  %39 = add i32 %36, 2
  %40 = add i32 %39, %38
  %41 = tail call i32 @dw_pcie_read_dbi(ptr noundef %9, i32 noundef %40, i32 noundef 2) #5
  %42 = trunc i32 %41 to i16
  %43 = and i16 %42, -2048
  %44 = zext i16 %3 to i32
  %45 = or i16 %43, %3
  %46 = zext i16 %45 to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %9, i32 noundef %40, i32 noundef 2, i32 noundef %46) #5
  %47 = load i8, ptr %22, align 2
  %48 = zext i8 %47 to i32
  %49 = add i32 %36, 4
  %50 = add i32 %49, %48
  %51 = or i32 %5, %4
  tail call void @dw_pcie_write_dbi(ptr noundef %9, i32 noundef %50, i32 noundef 4, i32 noundef %51) #5
  %52 = load i8, ptr %22, align 2
  %53 = zext i8 %52 to i32
  %54 = add i32 %36, 8
  %55 = add i32 %54, %53
  %56 = shl nuw nsw i32 %44, 4
  %57 = add i32 %56, %5
  %58 = or i32 %57, %4
  tail call void @dw_pcie_write_dbi(ptr noundef %9, i32 noundef %55, i32 noundef 4, i32 noundef %58) #5
  %59 = tail call i32 @dw_pcie_read_dbi(ptr noundef %9, i32 noundef 2236, i32 noundef 4) #5
  %60 = and i32 %59, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %9, i32 noundef 2236, i32 noundef 4, i32 noundef %60) #5
  br label %61

61:                                               ; preds = %35, %21, %19, %11
  %62 = phi i32 [ 0, %35 ], [ -22, %21 ], [ -22, %19 ], [ -22, %11 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_get_msix(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -176
  %7 = getelementptr inbounds %struct.dw_pcie_ep, ptr %5, i32 0, i32 1
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %42, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.dw_pcie_ep_func, ptr %10, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dw_pcie_ep, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef %5, i8 noundef zeroext %1) #5
  %30 = add i32 %29, 2
  %31 = load i8, ptr %19, align 2
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i8 [ %31, %28 ], [ %20, %22 ]
  %34 = phi i32 [ %30, %28 ], [ 2, %22 ]
  %35 = zext i8 %33 to i32
  %36 = add i32 %34, %35
  %37 = tail call i32 @dw_pcie_read_dbi(ptr noundef %6, i32 noundef %36, i32 noundef 2) #5
  %38 = and i32 %37, 32768
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %37, 2047
  %41 = select i1 %39, i32 -22, i32 %40
  br label %42

42:                                               ; preds = %32, %18, %16, %8
  %43 = phi i32 [ -22, %18 ], [ -22, %16 ], [ %41, %32 ], [ -22, %8 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_raise_irq(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dw_pcie_ep, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 %11(ptr noundef %7, i8 noundef zeroext %1, i32 noundef %3, i16 noundef zeroext %4) #5
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %14, %13 ], [ -22, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_ep_start(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -176
  %5 = getelementptr i8, ptr %3, i32 80
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_pcie_ops, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %4) #5
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi i32 [ %13, %12 ], [ -22, %8 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pcie_ep_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -176
  %5 = getelementptr i8, ptr %3, i32 80
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_pcie_ops, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %4) #5
  br label %13

13:                                               ; preds = %12, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dw_pcie_ep_get_features(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dw_pcie_ep, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dw_pcie_ep_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call ptr %9(ptr noundef %5) #5
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_prog_inbound_atu(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2153407600}
!9 = !{i64 5139365}
!10 = !{i64 2153416456}
!11 = !{!"branch_weights", i32 1, i32 2000}
