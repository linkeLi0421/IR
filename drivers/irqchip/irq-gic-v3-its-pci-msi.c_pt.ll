; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v3-its-pci-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-its-pci-msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.71] }
%union.anon.71 = type { i32 }

@__initcall__kmod_irq_gic_v3_its_pci_msi__238_202_its_pci_msi_initearly = internal global ptr @its_pci_msi_init, section ".initcallearly.init", align 4
@its_device_id = internal global [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\016PCI/MSI: %pOF domain created\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\013%s: Unable to locate ITS domain\0A\00", align 1
@its_pci_msi_domain_info = internal global %struct.msi_domain_info { i32 15, ptr @its_pci_msi_ops, ptr @its_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\013%s: Unable to create PCI domain\0A\00", align 1
@its_pci_msi_ops = internal global %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @its_pci_msi_prepare, ptr null, ptr null, ptr null }, align 4
@its_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_mask_msi_irq, ptr null, ptr @its_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ITS-MSI\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_irq_gic_v3_its_pci_msi__238_202_its_pci_msi_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @its_pci_msi_init() #0 section ".init.text" {
  tail call fastcc void @its_pci_of_msi_init() #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @its_pci_of_msi_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @its_device_id, ptr noundef null) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %17, %0
  %4 = phi ptr [ %18, %17 ], [ %1, %0 ]
  %5 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %4) #9
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef null) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc i32 @its_pci_msi_init_one(ptr noundef %10, ptr noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #10
  br label %17

17:                                               ; preds = %15, %9, %6, %3
  %18 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %4, ptr noundef nonnull @its_device_id, ptr noundef null) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3

20:                                               ; preds = %17, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @its_pci_msi_init_one(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %4, i8 0, i64 68, i1 false) #9
  store ptr %0, ptr %3, align 4
  %5 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 5) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = call ptr @msi_get_domain_info(ptr noundef nonnull %5) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call ptr @pci_msi_create_irq_domain(ptr noundef %0, ptr noundef nonnull @its_pci_msi_domain_info, ptr noundef nonnull %5) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %7, %2
  %14 = phi ptr [ @.str.2, %2 ], [ @.str.2, %7 ], [ @.str.3, %10 ]
  %15 = phi i32 [ -6, %2 ], [ -6, %7 ], [ -12, %10 ]
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %14, ptr noundef %1) #10
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ 0, %10 ], [ %15, %13 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_get_domain_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_pci_msi_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @pci_bus_type
  br i1 %9, label %10, label %47

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @msi_get_domain_info(ptr noundef %12) #9
  %14 = getelementptr i8, ptr %1, i32 -136
  %15 = call i32 @pci_for_each_dma_alias(ptr noundef %14, ptr noundef nonnull @its_get_pci_alias, ptr noundef nonnull %5) #9
  %16 = load ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, %14
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call void @pci_walk_bus(ptr noundef nonnull %20, ptr noundef nonnull @its_pci_msi_vec_count, ptr noundef nonnull %6) #9
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.msi_alloc_info, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %10
  %28 = call i32 @pci_msi_domain_get_msi_rid(ptr noundef %0, ptr noundef %14) #9
  %29 = getelementptr inbounds %struct.msi_alloc_info, ptr %3, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = icmp eq i32 %28, 0
  %31 = select i1 %30, i32 32, i32 1
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @llvm.smax.i32(i32 %32, i32 %2)
  %34 = add i32 %33, -1
  %35 = icmp eq i32 %34, 0
  %36 = call i32 @llvm.ctlz.i32(i32 %34, i1 false) #9, !range !9
  %37 = sub nuw nsw i32 32, %36
  %38 = shl nuw i32 1, %37
  %39 = select i1 %35, i32 1, i32 %38
  %40 = call i32 @llvm.smax.i32(i32 %31, i32 %39)
  %41 = getelementptr inbounds %struct.msi_domain_info, ptr %13, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.msi_domain_ops, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %11, align 4
  %46 = call i32 %44(ptr noundef %45, ptr noundef %1, i32 noundef %40, ptr noundef %3) #9
  br label %47

47:                                               ; preds = %27, %4
  %48 = phi i32 [ %46, %27 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @its_get_pci_alias(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2) #6 {
  store ptr %0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_pci_msi_vec_count(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = tail call i32 @pci_msi_vec_count(ptr noundef %0) #9
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %5 = tail call i32 @pci_msix_vec_count(ptr noundef %0) #9
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %6)
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %7, %8
  store i32 %9, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_domain_get_msi_rid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_vec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msix_vec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_mask_msi_irq(ptr noundef %0) #5 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #9
  tail call void @irq_chip_mask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @its_unmask_msi_irq(ptr noundef %0) #5 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #9
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
