; ModuleID = '/llk/IR/drivers/pci/setup-res.c_pt.bc'
source_filename = "../drivers/pci/setup-res.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_claim_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_claim_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_claim_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_assign_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_assign_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_assign_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_release_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_resize_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_resize_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_resize_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }

@.str = private unnamed_addr constant [45 x i8] c"can't claim BAR %d %pR: no address assigned\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"can't claim BAR %d %pR: no compatible bridge window\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"can't claim BAR %d %pR: address conflict with %s %pR\0A\00", align 1
@__kstrtab_pci_claim_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_claim_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_claim_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_claim_resource to i32), ptr @__kstrtab_pci_claim_resource, ptr @__kstrtabns_pci_claim_resource }, section "___ksymtab+pci_claim_resource", align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"BAR %d: can't assign %pR (bogus alignment)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"BAR %d: no space for %pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"BAR %d: failed to assign %pR\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BAR %d: assigned %pR\0A\00", align 1
@__kstrtab_pci_assign_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_assign_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_assign_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_assign_resource to i32), ptr @__kstrtab_pci_assign_resource, ptr @__kstrtabns_pci_assign_resource }, section "___ksymtab+pci_assign_resource", align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"BAR %d: can't reassign an unassigned resource %pR\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"BAR %d: %pR (failed to expand by %#llx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"BAR %d: reassigned %pR (expanded by %#llx)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"BAR %d: releasing %pR\0A\00", align 1
@__kstrtab_pci_release_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_release_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_release_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_release_resource to i32), ptr @__kstrtab_pci_release_resource, ptr @__kstrtabns_pci_release_resource }, section "___ksymtab+pci_release_resource", align 4
@__kstrtab_pci_resize_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_resize_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_resize_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_resize_resource to i32), ptr @__kstrtab_pci_resize_resource, ptr @__kstrtabns_pci_resize_resource }, section "___ksymtab+pci_resize_resource", align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"can't enable device: BAR %d %pR not assigned\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"can't enable device: BAR %d %pR not claimed\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"enabling device (%04x -> %04x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"BAR %d: error updating (%#08x != %#08x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"BAR %d: error updating (high %#08x != %#08x)\0A\00", align 1
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@pcibios_min_mem = external dso_local local_unnamed_addr global i32, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"BAR %d: trying firmware assignment %pR\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"BAR %d: %pR conflicts with %s %pR\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_assign_resource, ptr @__ksymtab_pci_claim_resource, ptr @__ksymtab_pci_release_resource, ptr @__ksymtab_pci_resize_resource], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_update_resource(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.pci_bus_region, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = icmp slt i32 %1, 7
  br i1 %6, label %7, label %99

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %9 = getelementptr %struct.resource, ptr %8, i32 %1
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %11 = load i40, ptr %10, align 1
  %12 = and i40 %11, 8388608
  %13 = icmp eq i40 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %7
  %15 = getelementptr %struct.resource, ptr %8, i32 %1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %16, 536870928
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  call void @pcibios_resource_to_bus(ptr noundef %23, ptr noundef nonnull %3, ptr noundef %9) #4
  %24 = load i32, ptr %3, align 8
  %25 = load i32, ptr %15, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = icmp eq i32 %1, 6
  br i1 %29, label %42, label %30

30:                                               ; preds = %28
  %31 = and i32 %25, 15
  %32 = or i32 %31, %24
  br label %37

33:                                               ; preds = %21
  %34 = and i32 %25, 3
  %35 = or i32 %34, %24
  %36 = icmp slt i32 %1, 6
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %39 = phi i32 [ -16, %30 ], [ -4, %33 ]
  %40 = shl i32 %1, 2
  %41 = add i32 %40, 16
  br label %56

42:                                               ; preds = %33, %28
  %43 = phi i32 [ -4, %33 ], [ -2048, %28 ]
  %44 = phi i32 [ %35, %33 ], [ %24, %28 ]
  %45 = and i32 %25, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i40, ptr %10, align 1
  %49 = and i40 %48, 137438953472
  %50 = icmp eq i40 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %47, %42
  %52 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  %53 = load i8, ptr %52, align 8
  %54 = zext i8 %53 to i32
  %55 = or i32 %44, %45
  br label %56

56:                                               ; preds = %51, %37
  %57 = phi i32 [ %39, %37 ], [ %43, %51 ]
  %58 = phi i32 [ %38, %37 ], [ %55, %51 ]
  %59 = phi i32 [ %41, %37 ], [ %54, %51 ]
  %60 = and i32 %25, 1048576
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %64 = load i32, ptr %63, align 2
  %65 = and i32 %64, 4096
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4) #4
  %69 = load i16, ptr %4, align 2
  %70 = and i16 %69, -3
  %71 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %70) #4
  br label %72

72:                                               ; preds = %67, %62, %56
  %73 = phi i1 [ true, %67 ], [ false, %62 ], [ false, %56 ]
  %74 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %59, i32 noundef %58) #4
  %75 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %59, ptr noundef nonnull %5) #4
  %76 = load i32, ptr %5, align 4
  %77 = xor i32 %76, %58
  %78 = and i32 %77, %57
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %58, i32 noundef %76) #5
  br label %82

82:                                               ; preds = %80, %72
  %83 = load i32, ptr %15, align 4
  %84 = and i32 %83, 1048576
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = add i32 %59, 4
  %88 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %87, i32 noundef 0) #4
  %89 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %87, ptr noundef nonnull %5) #4
  %90 = load i32, ptr %5, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef 0, i32 noundef %90) #5
  br label %94

94:                                               ; preds = %92, %86, %82
  br i1 %73, label %95, label %98

95:                                               ; preds = %94
  %96 = load i16, ptr %4, align 2
  %97 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %96) #4
  br label %98

98:                                               ; preds = %95, %94, %47, %14, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  br label %99

99:                                               ; preds = %98, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_claim_resource(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 536870912
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef %3) #5
  br label %29

10:                                               ; preds = %2
  %11 = and i32 %5, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = tail call ptr @pci_find_parent_resource(ptr noundef %0, ptr noundef %3) #4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef %3) #5
  %18 = load i32, ptr %4, align 4
  %19 = or i32 %18, 536870912
  store i32 %19, ptr %4, align 4
  br label %29

20:                                               ; preds = %13
  %21 = tail call ptr @request_resource_conflict(ptr noundef nonnull %14, ptr noundef %3) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %25 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %3, ptr noundef %26, ptr noundef nonnull %21) #5
  %27 = load i32, ptr %4, align 4
  %28 = or i32 %27, 536870912
  store i32 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %23, %20, %16, %10, %8
  %30 = phi i32 [ -22, %8 ], [ -16, %23 ], [ -22, %16 ], [ 0, %10 ], [ 0, %20 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_parent_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_bridge_window(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 32, i32 noundef 65520) #4
  %3 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 44, i32 noundef 0) #4
  %4 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 36, i32 noundef 65520) #4
  %5 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 40, i32 noundef -1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_retrieve_fw_addr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_align_resource(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %1, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_assign_resource(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %4 = getelementptr %struct.resource, ptr %3, i32 %1
  %5 = getelementptr %struct.resource, ptr %3, i32 %1, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = or i32 %6, 536870912
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -256
  %14 = icmp eq i32 %13, 395008
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @pci_cardbus_resource_alignment(ptr noundef %4) #4
  br label %19

17:                                               ; preds = %9
  %18 = tail call i32 @resource_alignment(ptr noundef %4) #4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef %4) #5
  br label %43

24:                                               ; preds = %19
  %25 = getelementptr %struct.resource, ptr %3, i32 %1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %26, 1
  %29 = sub i32 %28, %27
  %30 = tail call fastcc i32 @_pci_assign_resource(ptr noundef %0, i32 noundef %1, i32 noundef %29, i32 noundef %20)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef %4) #5
  %34 = tail call fastcc i32 @pci_revert_fw_address(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %29)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.5, i32 noundef %1, ptr noundef %4) #5
  br label %43

37:                                               ; preds = %32, %24
  %38 = load i32, ptr %5, align 4
  %39 = and i32 %38, -537395201
  store i32 %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %1, ptr noundef %4) #5
  %41 = icmp slt i32 %1, 7
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @pci_update_resource(ptr noundef %0, i32 noundef %1)
  br label %43

43:                                               ; preds = %42, %37, %36, %22, %2
  %44 = phi i32 [ %34, %36 ], [ -22, %22 ], [ 0, %2 ], [ 0, %42 ], [ 0, %37 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_pci_assign_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %8 = getelementptr %struct.resource, ptr %7, i32 %1
  %9 = getelementptr %struct.resource, ptr %7, i32 %1, i32 3
  br label %10

10:                                               ; preds = %42, %4
  %11 = phi ptr [ %6, %4 ], [ %40, %42 ]
  %12 = load i32, ptr %9, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr @pcibios_min_io, align 4
  %16 = load i32, ptr @pcibios_min_mem, align 4
  %17 = select i1 %14, i32 %16, i32 %15
  %18 = tail call i32 @pci_bus_alloc_resource(ptr noundef %11, ptr noundef %8, i32 noundef %2, i32 noundef %3, i32 noundef %17, i32 noundef 1056768, ptr noundef nonnull @pcibios_align_resource, ptr noundef %0) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %10
  %21 = load i32, ptr %9, align 4
  %22 = and i32 %21, 1056768
  %23 = icmp eq i32 %22, 1056768
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = tail call i32 @pci_bus_alloc_resource(ptr noundef %11, ptr noundef %8, i32 noundef %2, i32 noundef %3, i32 noundef %17, i32 noundef 8192, ptr noundef nonnull @pcibios_align_resource, ptr noundef %0) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4
  %29 = and i32 %28, 1056768
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ %29, %27 ], [ %22, %20 ]
  %32 = phi i32 [ %25, %27 ], [ %18, %20 ]
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @pci_bus_alloc_resource(ptr noundef %11, ptr noundef %8, i32 noundef %2, i32 noundef %3, i32 noundef %17, i32 noundef 0, ptr noundef nonnull @pcibios_align_resource, ptr noundef %0) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %35, %34 ], [ %32, %30 ]
  %39 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 49
  %46 = load i40, ptr %45, align 1
  %47 = and i40 %46, 1
  %48 = icmp eq i40 %47, 0
  br i1 %48, label %49, label %10

49:                                               ; preds = %42, %37, %34, %24, %10
  %50 = phi i32 [ %38, %37 ], [ %38, %42 ], [ 0, %34 ], [ 0, %10 ], [ 0, %24 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_revert_fw_address(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call i32 @pcibios_retrieve_fw_addr(ptr noundef %1, i32 noundef %2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %5, ptr %0, align 4
  %11 = add i32 %3, -1
  %12 = add i32 %11, %5
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -536870913
  store i32 %15, ptr %13, align 4
  %16 = tail call ptr @pci_find_parent_resource(ptr noundef %1, ptr noundef %0) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = load i32, ptr %13, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @iomem_resource, ptr @ioport_resource
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi ptr [ %16, %7 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef %2, ptr noundef %0) #5
  %26 = tail call ptr @request_resource_conflict(ptr noundef %24, ptr noundef %0) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %2, ptr noundef %0, ptr noundef %30, ptr noundef nonnull %26) #5
  store i32 %8, ptr %0, align 4
  store i32 %10, ptr %9, align 4
  %31 = load i32, ptr %13, align 4
  %32 = or i32 %31, 536870912
  store i32 %32, ptr %13, align 4
  br label %33

33:                                               ; preds = %28, %23, %4
  %34 = phi i32 [ -16, %28 ], [ -12, %4 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_reassign_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %6 = getelementptr %struct.resource, ptr %5, i32 %1
  %7 = getelementptr %struct.resource, ptr %5, i32 %1, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = or i32 %8, 536870912
  store i32 %12, ptr %7, align 4
  %13 = getelementptr %struct.resource, ptr %5, i32 %1, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %6) #5
  br label %37

18:                                               ; preds = %11
  %19 = getelementptr %struct.resource, ptr %5, i32 %1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = add i32 %2, 1
  %23 = add i32 %22, %20
  %24 = sub i32 %23, %21
  %25 = tail call fastcc i32 @_pci_assign_resource(ptr noundef %0, i32 noundef %1, i32 noundef %24, i32 noundef %3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  store i32 %8, ptr %7, align 4
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %29 = zext i32 %2 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef %6, i64 noundef %29) #5
  br label %37

30:                                               ; preds = %18
  %31 = load i32, ptr %7, align 4
  %32 = and i32 %31, -537395201
  store i32 %32, ptr %7, align 4
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %34 = zext i32 %2 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef %6, i64 noundef %34) #5
  %35 = icmp slt i32 %1, 7
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @pci_update_resource(ptr noundef %0, i32 noundef %1)
  br label %37

37:                                               ; preds = %36, %30, %27, %16, %4
  %38 = phi i32 [ %25, %27 ], [ -22, %16 ], [ 0, %4 ], [ 0, %36 ], [ 0, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_release_resource(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %4 = getelementptr %struct.resource, ptr %3, i32 %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef %4) #5
  %6 = getelementptr %struct.resource, ptr %3, i32 %1, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @release_resource(ptr noundef %4) #4
  %11 = getelementptr %struct.resource, ptr %3, i32 %1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %12, %13
  store i32 %14, ptr %11, align 4
  store i32 0, ptr %4, align 4
  %15 = getelementptr %struct.resource, ptr %3, i32 %1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 536870912
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_resize_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %6 = getelementptr %struct.resource, ptr %5, i32 %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @pci_find_host_bridge(ptr noundef %8) #4
  %10 = getelementptr inbounds %struct.pci_host_bridge, ptr %9, i32 0, i32 13
  %11 = load i16, ptr %10, align 16
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %3
  %15 = getelementptr %struct.resource, ptr %5, i32 %1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %14
  %20 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4) #4
  %21 = load i16, ptr %4, align 2
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = call i32 @pci_rebar_get_possible_sizes(ptr noundef %0, i32 noundef %1) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %24
  %28 = shl nuw i32 1, %2
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %27
  %32 = call i32 @pci_rebar_get_current_size(ptr noundef %0, i32 noundef %1) #4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = call i32 @pci_rebar_set_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %2, 20
  %40 = zext i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, -1
  %44 = add i32 %43, %38
  %45 = getelementptr %struct.resource, ptr %5, i32 %1, i32 1
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.pci_bus, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %37
  %51 = load i32, ptr %15, align 4
  %52 = call i32 @pci_reassign_bridge_resources(ptr noundef nonnull %48, i32 noundef %51) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = call i32 @pci_rebar_set_size(ptr noundef %0, i32 noundef %1, i32 noundef %32) #4
  %56 = load i32, ptr %6, align 4
  %57 = add nuw i32 %32, 20
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 1, %58
  %60 = trunc i64 %59 to i32
  %61 = add i32 %60, -1
  %62 = add i32 %61, %56
  store i32 %62, ptr %45, align 4
  br label %63

63:                                               ; preds = %54, %50, %37, %34, %31, %27, %24, %19, %14, %3
  %64 = phi i32 [ %52, %54 ], [ -524, %3 ], [ -16, %14 ], [ -16, %19 ], [ -524, %24 ], [ -22, %27 ], [ %32, %31 ], [ %35, %34 ], [ 0, %50 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rebar_get_possible_sizes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rebar_get_current_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rebar_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reassign_bridge_resources(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_resources(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #4
  %5 = load i16, ptr %3, align 2
  br label %6

6:                                                ; preds = %43, %2
  %7 = phi i16 [ %5, %2 ], [ %44, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ]
  %9 = phi i16 [ %5, %2 ], [ %45, %43 ]
  %10 = shl nuw nsw i32 1, %8
  %11 = and i32 %10, %1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %6
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %8, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %13
  %19 = icmp eq i32 %8, 6
  %20 = and i32 %15, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = and i32 %15, 536870912
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %8
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %8, ptr noundef %27) #5
  br label %56

29:                                               ; preds = %23
  %30 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %8, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %8
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef %8, ptr noundef %34) #5
  br label %56

36:                                               ; preds = %29
  %37 = trunc i32 %15 to i16
  %38 = lshr i16 %37, 8
  %39 = and i16 %38, 2
  %40 = and i16 %38, 1
  %41 = or i16 %9, %40
  %42 = or i16 %39, %41
  store i16 %42, ptr %3, align 2
  br label %43

43:                                               ; preds = %36, %18, %13, %6
  %44 = phi i16 [ %7, %18 ], [ %7, %13 ], [ %7, %6 ], [ %42, %36 ]
  %45 = phi i16 [ %9, %18 ], [ %9, %13 ], [ %9, %6 ], [ %42, %36 ]
  %46 = add nuw nsw i32 %8, 1
  %47 = icmp eq i32 %46, 11
  br i1 %47, label %48, label %6

48:                                               ; preds = %43
  %49 = icmp eq i16 %44, %5
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = zext i16 %5 to i32
  %52 = zext i16 %44 to i32
  %53 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.13, i32 noundef %51, i32 noundef %52) #5
  %54 = load i16, ptr %3, align 2
  %55 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %54) #4
  br label %56

56:                                               ; preds = %50, %48, %33, %26
  %57 = phi i32 [ -22, %26 ], [ -22, %33 ], [ 0, %50 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  ret i32 %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_cardbus_resource_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
