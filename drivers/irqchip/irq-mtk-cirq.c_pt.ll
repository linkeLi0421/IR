; ModuleID = '/llk/IR/drivers/irqchip/irq-mtk-cirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mtk-cirq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mtk_cirq_chip_data = type { ptr, i32, i32, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_mtk_cirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-cirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_cirq_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [40 x i8] c"\013mtk_cirq: interrupt-parent not found\0A\00", align 1
@cirq_data = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"\013mtk_cirq: unable to map cirq register\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mediatek,ext-irq-range\00", align 1
@cirq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @mtk_cirq_domain_translate }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"drivers/irqchip/irq-mtk-cirq.c\00", align 1
@mtk_cirq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cirq_mask, ptr null, ptr @mtk_cirq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @mtk_cirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"MT_CIRQ\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@mtk_cirq_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mtk_cirq_suspend, ptr @mtk_cirq_resume, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_mtk_cirq], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_cirq_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %7 = select i1 %5, ptr null, ptr %6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %8, i8 0, i64 68, i1 false) #10
  store ptr %7, ptr %4, align 4
  %9 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %12, i8 0, i64 68, i1 false) #10
  store ptr %7, ptr %3, align 4
  %13 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %60

17:                                               ; preds = %11, %2
  %18 = phi ptr [ %13, %11 ], [ %9, %2 ]
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 16) #12
  store ptr %20, ptr @cirq_data, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %17
  %23 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #10
  %24 = load ptr, ptr @cirq_data, align 4
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %57

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %24, i32 0, i32 1
  %30 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %29) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load ptr, ptr @cirq_data, align 4
  %34 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %33, i32 0, i32 2
  %35 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %34) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load ptr, ptr @cirq_data, align 4
  %39 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %38, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %40, 1
  %44 = sub i32 %43, %42
  %45 = icmp eq ptr %0, null
  %46 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %47 = select i1 %45, ptr null, ptr %46
  %48 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %18, i32 noundef 0, i32 noundef %44, ptr noundef %47, ptr noundef nonnull @cirq_domain_ops, ptr noundef %38) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load ptr, ptr @cirq_data, align 4
  %52 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %51, i32 0, i32 3
  store ptr %48, ptr %52, align 4
  call void @register_syscore_ops(ptr noundef nonnull @mtk_cirq_syscore_ops) #10
  br label %60

53:                                               ; preds = %37, %32, %28
  %54 = phi i32 [ %30, %28 ], [ %35, %32 ], [ -12, %37 ]
  %55 = load ptr, ptr @cirq_data, align 4
  %56 = load ptr, ptr %55, align 4
  call void @iounmap(ptr noundef %56) #10
  br label %57

57:                                               ; preds = %53, %26
  %58 = phi i32 [ %54, %53 ], [ -6, %26 ]
  %59 = load ptr, ptr @cirq_data, align 4
  call void @kfree(ptr noundef %59) #10
  br label %60

60:                                               ; preds = %57, %50, %17, %15
  %61 = phi i32 [ %58, %57 ], [ 0, %50 ], [ -22, %15 ], [ -12, %17 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cirq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #6 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %46, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @of_fwnode_ops
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr @cirq_data, align 4
  %26 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %25, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %24, %31
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %2, 1
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 142, i32 noundef 9, ptr noundef null) #10
  br label %46

36:                                               ; preds = %33
  %37 = sub i32 %24, %27
  %38 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %37, ptr noundef nonnull @mtk_cirq_chip, ptr noundef %39) #10
  %41 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.irq_domain, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %5, align 4
  %45 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %5) #10
  br label %46

46:                                               ; preds = %36, %35, %29, %22, %18, %14, %10, %4
  %47 = phi i32 [ -22, %35 ], [ %45, %36 ], [ -22, %14 ], [ -22, %18 ], [ -22, %29 ], [ -22, %22 ], [ -22, %10 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #10
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mtk_cirq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr @cirq_data, align 4
  %25 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %24, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %23, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = sub i32 %23, %26
  store i32 %33, ptr %2, align 4
  %34 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 15
  store i32 %36, ptr %3, align 4
  br label %37

37:                                               ; preds = %32, %28, %21, %17, %13, %9, %4
  %38 = phi i32 [ 0, %32 ], [ -22, %13 ], [ -22, %17 ], [ -22, %28 ], [ -22, %21 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cirq_mask(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 192
  %10 = lshr i32 %5, 3
  %11 = and i32 %10, 536870908
  %12 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #10, !srcloc !9
  tail call void @irq_chip_mask_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cirq_unmask(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 256
  %10 = lshr i32 %5, 3
  %11 = and i32 %10, 536870908
  %12 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #10, !srcloc !9
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cirq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = and i32 %1, 15
  switch i32 %3, label %88 [
    i32 2, label %4
    i32 1, label %25
    i32 8, label %46
    i32 4, label %67
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 31
  %10 = shl nuw i32 1, %9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 640
  %13 = lshr i32 %8, 3
  %14 = and i32 %13, 536870908
  %15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %10) #10, !srcloc !9
  %16 = load ptr, ptr %5, align 4
  %17 = load i32, ptr %7, align 4
  %18 = and i32 %17, 31
  %19 = shl nuw i32 1, %18
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 448
  %22 = lshr i32 %17, 3
  %23 = and i32 %22, 536870908
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %19) #10, !srcloc !9
  br label %88

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 31
  %31 = shl nuw i32 1, %30
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 576
  %34 = lshr i32 %29, 3
  %35 = and i32 %34, 536870908
  %36 = getelementptr i8, ptr %33, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %31) #10, !srcloc !9
  %37 = load ptr, ptr %26, align 4
  %38 = load i32, ptr %28, align 4
  %39 = and i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr i8, ptr %41, i32 448
  %43 = lshr i32 %38, 3
  %44 = and i32 %43, 536870908
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %40) #10, !srcloc !9
  br label %88

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 31
  %52 = shl nuw i32 1, %51
  %53 = load ptr, ptr %48, align 4
  %54 = getelementptr i8, ptr %53, i32 640
  %55 = lshr i32 %50, 3
  %56 = and i32 %55, 536870908
  %57 = getelementptr i8, ptr %54, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %52) #10, !srcloc !9
  %58 = load ptr, ptr %47, align 4
  %59 = load i32, ptr %49, align 4
  %60 = and i32 %59, 31
  %61 = shl nuw i32 1, %60
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr i8, ptr %62, i32 384
  %64 = lshr i32 %59, 3
  %65 = and i32 %64, 536870908
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %61) #10, !srcloc !9
  br label %88

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 31
  %73 = shl nuw i32 1, %72
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr i8, ptr %74, i32 576
  %76 = lshr i32 %71, 3
  %77 = and i32 %76, 536870908
  %78 = getelementptr i8, ptr %75, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %73) #10, !srcloc !9
  %79 = load ptr, ptr %68, align 4
  %80 = load i32, ptr %70, align 4
  %81 = and i32 %80, 31
  %82 = shl nuw i32 1, %81
  %83 = load ptr, ptr %79, align 4
  %84 = getelementptr i8, ptr %83, i32 384
  %85 = lshr i32 %80, 3
  %86 = and i32 %85, 536870908
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %82) #10, !srcloc !9
  br label %88

88:                                               ; preds = %67, %46, %25, %4, %2
  %89 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.irq_data, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.irq_chip, ptr %92, i32 0, i32 13
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 %94(ptr noundef %90, i32 noundef %1) #10
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cirq_suspend() #6 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !10
  %4 = load ptr, ptr @cirq_data, align 4
  %5 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, 1
  %10 = icmp eq i32 %9, %8
  br i1 %10, label %49, label %11

11:                                               ; preds = %0
  %12 = sub i32 %9, %8
  %13 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %14

14:                                               ; preds = %45, %11
  %15 = phi ptr [ %4, %11 ], [ %48, %45 ]
  %16 = phi i32 [ 0, %11 ], [ %46, %45 ]
  %17 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %15, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  store i32 0, ptr %1, align 4, !annotation !10
  %19 = call ptr @__irq_resolve_mapping(ptr noundef %18, i32 noundef %16, ptr noundef nonnull %1) #10
  %20 = icmp eq ptr %19, null
  %21 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %14
  %25 = call i32 @irq_get_irqchip_state(i32 noundef %21, i32 noundef 0, ptr noundef nonnull %2) #10
  %26 = call i32 @irq_get_irqchip_state(i32 noundef %21, i32 noundef 2, ptr noundef nonnull %3) #10
  %27 = icmp eq i32 %25, 0
  %28 = icmp eq i32 %26, 0
  %29 = select i1 %27, i1 %28, i1 false
  %30 = load i8, ptr %2, align 1
  %31 = icmp ne i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  %33 = load i8, ptr %3, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %45, label %36

36:                                               ; preds = %24, %14
  %37 = and i32 %16, 31
  %38 = shl nuw i32 1, %37
  %39 = load ptr, ptr @cirq_data, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 64
  %42 = sdiv i32 %16, 32
  %43 = shl nsw i32 %42, 2
  %44 = getelementptr i8, ptr %41, i32 %43
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %38) #10, !srcloc !9
  br label %45

45:                                               ; preds = %36, %24
  %46 = add nuw i32 %16, 1
  %47 = icmp eq i32 %46, %13
  %48 = load ptr, ptr @cirq_data, align 4
  br i1 %47, label %49, label %14

49:                                               ; preds = %45, %0
  %50 = phi ptr [ %4, %0 ], [ %48, %45 ]
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 768
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !11
  %54 = or i32 %53, 3
  %55 = load ptr, ptr @cirq_data, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #10, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cirq_resume() #6 {
  %1 = load ptr, ptr @cirq_data, align 4
  %2 = load ptr, ptr %1, align 4
  %3 = getelementptr i8, ptr %2, i32 768
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !11
  %5 = or i32 %4, 4
  %6 = load ptr, ptr @cirq_data, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #10, !srcloc !9
  %9 = load ptr, ptr @cirq_data, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 768
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !11
  %13 = and i32 %12, -4
  %14 = load ptr, ptr @cirq_data, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #10, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 3055929}
!10 = !{!"auto-init"}
!11 = !{i64 3056347}
