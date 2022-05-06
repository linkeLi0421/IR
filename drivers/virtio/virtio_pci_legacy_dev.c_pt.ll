; ModuleID = '/llk/IR/drivers/virtio/virtio_pci_legacy_dev.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_legacy_dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_probe\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_remove\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_get_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_get_features\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_get_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_get_driver_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_get_driver_features\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_get_driver_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_set_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_set_features\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_set_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_get_status\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_set_status\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_queue_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_queue_vector\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_queue_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_config_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_config_vector\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_config_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_set_queue_address:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_set_queue_address\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_set_queue_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_get_queue_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_get_queue_enable\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_get_queue_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_legacy_get_queue_size:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_legacy_get_queue_size\22\09\09\09\09\09"
module asm "__kstrtabns_vp_legacy_get_queue_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.virtio_pci_legacy_device = type { ptr, ptr, ptr, %struct.virtio_device_id }
%struct.virtio_device_id = type { i32, i32 }

@.str = private unnamed_addr constant [86 x i8] c"Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"virtio-pci-legacy\00", align 1
@__kstrtab_vp_legacy_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_probe to i32), ptr @__kstrtab_vp_legacy_probe, ptr @__kstrtabns_vp_legacy_probe }, section "___ksymtab_gpl+vp_legacy_probe", align 4
@__kstrtab_vp_legacy_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_remove to i32), ptr @__kstrtab_vp_legacy_remove, ptr @__kstrtabns_vp_legacy_remove }, section "___ksymtab_gpl+vp_legacy_remove", align 4
@__kstrtab_vp_legacy_get_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_get_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_get_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_get_features to i32), ptr @__kstrtab_vp_legacy_get_features, ptr @__kstrtabns_vp_legacy_get_features }, section "___ksymtab_gpl+vp_legacy_get_features", align 4
@__kstrtab_vp_legacy_get_driver_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_get_driver_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_get_driver_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_get_driver_features to i32), ptr @__kstrtab_vp_legacy_get_driver_features, ptr @__kstrtabns_vp_legacy_get_driver_features }, section "___ksymtab_gpl+vp_legacy_get_driver_features", align 4
@__kstrtab_vp_legacy_set_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_set_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_set_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_set_features to i32), ptr @__kstrtab_vp_legacy_set_features, ptr @__kstrtabns_vp_legacy_set_features }, section "___ksymtab_gpl+vp_legacy_set_features", align 4
@__kstrtab_vp_legacy_get_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_get_status = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_get_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_get_status to i32), ptr @__kstrtab_vp_legacy_get_status, ptr @__kstrtabns_vp_legacy_get_status }, section "___ksymtab_gpl+vp_legacy_get_status", align 4
@__kstrtab_vp_legacy_set_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_set_status = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_set_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_set_status to i32), ptr @__kstrtab_vp_legacy_set_status, ptr @__kstrtabns_vp_legacy_set_status }, section "___ksymtab_gpl+vp_legacy_set_status", align 4
@__kstrtab_vp_legacy_queue_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_queue_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_queue_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_queue_vector to i32), ptr @__kstrtab_vp_legacy_queue_vector, ptr @__kstrtabns_vp_legacy_queue_vector }, section "___ksymtab_gpl+vp_legacy_queue_vector", align 4
@__kstrtab_vp_legacy_config_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_config_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_config_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_config_vector to i32), ptr @__kstrtab_vp_legacy_config_vector, ptr @__kstrtabns_vp_legacy_config_vector }, section "___ksymtab_gpl+vp_legacy_config_vector", align 4
@__kstrtab_vp_legacy_set_queue_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_set_queue_address = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_set_queue_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_set_queue_address to i32), ptr @__kstrtab_vp_legacy_set_queue_address, ptr @__kstrtabns_vp_legacy_set_queue_address }, section "___ksymtab_gpl+vp_legacy_set_queue_address", align 4
@__kstrtab_vp_legacy_get_queue_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_get_queue_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_get_queue_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_get_queue_enable to i32), ptr @__kstrtab_vp_legacy_get_queue_enable, ptr @__kstrtabns_vp_legacy_get_queue_enable }, section "___ksymtab_gpl+vp_legacy_get_queue_enable", align 4
@__kstrtab_vp_legacy_get_queue_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_legacy_get_queue_size = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_legacy_get_queue_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_legacy_get_queue_size to i32), ptr @__kstrtab_vp_legacy_get_queue_size, ptr @__kstrtabns_vp_legacy_get_queue_size }, section "___ksymtab_gpl+vp_legacy_get_queue_size", align 4
@__UNIQUE_ID_version228 = internal constant [34 x i8] c"virtio_pci_legacy_dev.version=0.1\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"virtio_pci_legacy_dev\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.3, ptr @.str.4 }, section "__modver", align 4
@__UNIQUE_ID_description229 = internal constant [59 x i8] c"virtio_pci_legacy_dev.description=Legacy Virtio PCI Device\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [72 x i8] c"virtio_pci_legacy_dev.author=Wu Zongyong <wuzongyong@linux.alibaba.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [64 x i8] c"virtio_pci_legacy_dev.file=drivers/virtio/virtio_pci_legacy_dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [34 x i8] c"virtio_pci_legacy_dev.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__UNIQUE_ID_version228, ptr @__ksymtab_vp_legacy_config_vector, ptr @__ksymtab_vp_legacy_get_driver_features, ptr @__ksymtab_vp_legacy_get_features, ptr @__ksymtab_vp_legacy_get_queue_enable, ptr @__ksymtab_vp_legacy_get_queue_size, ptr @__ksymtab_vp_legacy_get_status, ptr @__ksymtab_vp_legacy_probe, ptr @__ksymtab_vp_legacy_queue_vector, ptr @__ksymtab_vp_legacy_remove, ptr @__ksymtab_vp_legacy_set_features, ptr @__ksymtab_vp_legacy_set_queue_address, ptr @__ksymtab_vp_legacy_set_status, ptr @__modver_attr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vp_legacy_probe(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = add i16 %4, -4160
  %6 = icmp ult i16 %5, -64
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %13 = tail call i32 @dma_set_mask(ptr noundef %12, i64 noundef -1) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @dma_set_mask(ptr noundef %12, i64 noundef 4294967295) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @dma_set_coherent_mask(ptr noundef %12, i64 noundef 4294967295) #3
  br label %23

20:                                               ; preds = %11
  %21 = tail call i32 @dma_set_coherent_mask(ptr noundef %12, i64 noundef 17592186044415) #3
  br label %23

22:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str) #4
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = tail call i32 @pci_request_region(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.1) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = tail call ptr @pci_iomap(ptr noundef %2, i32 noundef 0, i32 noundef 0) #3
  %28 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @pci_release_region(ptr noundef %2, i32 noundef 0) #3
  br label %42

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %27, i32 19
  %33 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 9
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 3
  %38 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 3, i32 1
  store i32 %36, ptr %38, align 4
  %39 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 10
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  store i32 %41, ptr %37, align 4
  br label %42

42:                                               ; preds = %31, %30, %23, %7, %1
  %43 = phi i32 [ 0, %31 ], [ -5, %30 ], [ -19, %1 ], [ -19, %7 ], [ %24, %23 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_legacy_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @pci_iounmap(ptr noundef %2, ptr noundef %4) #3
  tail call void @pci_release_region(ptr noundef %2, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vp_legacy_get_features(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vp_legacy_get_driver_features(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_legacy_set_features(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @vp_legacy_get_status(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 18
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_legacy_set_status(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 18
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %1) #3, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_legacy_queue_vector(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %1) #3, !srcloc !17
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %2) #3, !srcloc !17
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 22
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #3, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_legacy_config_vector(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %1) #3, !srcloc !17
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #3, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  ret i16 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_legacy_set_queue_address(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %1) #3, !srcloc !17
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %2) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @vp_legacy_get_queue_enable(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %1) #3, !srcloc !17
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_legacy_get_queue_size(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_legacy_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %1) #3, !srcloc !17
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #3, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  ret i16 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3828870}
!9 = !{i64 2151368323}
!10 = !{i64 2151369545}
!11 = !{i64 3828452}
!12 = !{i64 3828650}
!13 = !{i64 2151367377}
!14 = !{i64 2151368675}
!15 = !{i64 3828255}
!16 = !{i64 2151369072}
!17 = !{i64 3827832}
!18 = !{i64 3828032}
!19 = !{i64 2151367850}
