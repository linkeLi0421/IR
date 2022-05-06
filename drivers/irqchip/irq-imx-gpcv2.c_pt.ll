; ModuleID = '/llk/IR/drivers/irqchip/irq-imx-gpcv2.c_pt.bc'
source_filename = "../drivers/irqchip/irq-imx-gpcv2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.gpcv2_irqchip_data = type { %struct.raw_spinlock, ptr, [4 x i32], [4 x i32], i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_imx_gpcv2_imx7d = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_gpcv2_irqchip_init }, section "__irqchip_of_table", align 4
@__of_table_imx_gpcv2_imx8mq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_gpcv2_irqchip_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [30 x i8] c"\013%pOF: no parent, giving up\0A\00", align 1
@gpcv2_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\013%pOF: unknown compatibility string\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%pOF: unable to get parent domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%pOF: unable to map gpc registers\0A\00", align 1
@gpcv2_irqchip_data_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpcv2_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @imx_gpcv2_domain_translate }, align 4
@imx_gpcv2_instance = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@imx_gpcv2_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @gpcv2_wakeup_source_save, ptr @gpcv2_wakeup_source_restore, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gpcv2_irqchip_data_chip = internal global %struct.irq_chip { ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpcv2_irq_mask, ptr null, ptr @imx_gpcv2_irq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr @imx_gpcv2_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"GPCv2\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_imx_gpcv2_imx7d, ptr @__of_table_imx_gpcv2_imx8mq], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_irqchip_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #9
  br label %67

8:                                                ; preds = %2
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @gpcv2_of_match, ptr noundef %0) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  br label %67

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %18, i8 0, i64 68, i1 false) #10
  store ptr %17, ptr %4, align 4
  %19 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %22 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %22, i8 0, i64 68, i1 false) #10
  store ptr %17, ptr %3, align 4
  %23 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %67

27:                                               ; preds = %21, %13
  %28 = phi ptr [ %23, %21 ], [ %19, %13 ]
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 44) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %27
  store i32 0, ptr %30, align 8
  %33 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #10
  %34 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %30, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #9
  call void @kfree(ptr noundef nonnull %30) #10
  br label %67

38:                                               ; preds = %32
  %39 = icmp eq ptr %0, null
  %40 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %41 = select i1 %39, ptr null, ptr %40
  %42 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %28, i32 noundef 0, i32 noundef 128, ptr noundef %41, ptr noundef nonnull @gpcv2_irqchip_data_domain_ops, ptr noundef nonnull %30) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load ptr, ptr %34, align 4
  call void @iounmap(ptr noundef %45) #10
  call void @kfree(ptr noundef nonnull %30) #10
  br label %67

46:                                               ; preds = %38
  call void @irq_set_default_host(ptr noundef nonnull %42) #10
  br label %47

47:                                               ; preds = %58, %46
  %48 = phi i32 [ 0, %46 ], [ %60, %58 ]
  %49 = load ptr, ptr %34, align 4
  %50 = shl i32 %48, 2
  %51 = getelementptr i8, ptr %49, i32 %50
  switch i32 %16, label %58 [
    i32 4, label %52
    i32 2, label %55
  ]

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %51, i32 448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -1) #10, !srcloc !8
  %54 = getelementptr i8, ptr %51, i32 464
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 -1) #10, !srcloc !8
  br label %55

55:                                               ; preds = %52, %47
  %56 = getelementptr i8, ptr %51, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -1) #10, !srcloc !8
  %57 = getelementptr i8, ptr %51, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #10, !srcloc !8
  br label %58

58:                                               ; preds = %55, %47
  %59 = getelementptr %struct.gpcv2_irqchip_data, ptr %30, i32 0, i32 2, i32 %48
  store i32 -1, ptr %59, align 4
  %60 = add nuw nsw i32 %48, 1
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %47

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %30, i32 0, i32 4
  store i32 48, ptr %63, align 8
  %64 = load ptr, ptr %34, align 4
  %65 = getelementptr i8, ptr %64, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 -2) #10, !srcloc !8
  store ptr %30, ptr @imx_gpcv2_instance, align 4
  call void @register_syscore_ops(ptr noundef nonnull @imx_gpcv2_syscore_ops) #10
  %66 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %66) #10
  br label %67

67:                                               ; preds = %62, %44, %36, %27, %25, %11, %6
  %68 = phi i32 [ 0, %62 ], [ -12, %44 ], [ -12, %36 ], [ -6, %25 ], [ -19, %11 ], [ -19, %6 ], [ -12, %27 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_default_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #10
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %44, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @of_fwnode_ops
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 127
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 0, %28 ], [ %36, %30 ]
  %32 = add i32 %31, %1
  %33 = add i32 %31, %24
  %34 = load ptr, ptr %29, align 4
  %35 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %32, i32 noundef %33, ptr noundef nonnull @gpcv2_irqchip_data_chip, ptr noundef %34) #10
  %36 = add nuw i32 %31, 1
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %26
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %39 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.irq_domain, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  store ptr %42, ptr %5, align 4
  %43 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #10
  br label %44

44:                                               ; preds = %38, %22, %18, %14, %10, %4
  %45 = phi i32 [ %43, %38 ], [ -22, %22 ], [ -22, %14 ], [ -22, %18 ], [ -22, %10 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #10
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_gpcv2_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %21, %17, %13, %9, %4
  %27 = phi i32 [ 0, %21 ], [ -22, %13 ], [ -22, %17 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_gpcv2_irq_mask(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = lshr i32 %5, 3
  %12 = and i32 %11, 536870908
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %18) #10, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @irq_chip_mask_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_gpcv2_irq_unmask(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = lshr i32 %5, 3
  %12 = and i32 %11, 536870908
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %19) #10, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, 31
  %11 = shl nuw i32 1, %10
  %12 = getelementptr %struct.gpcv2_irqchip_data, ptr %4, i32 0, i32 2, i32 %7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %1, 0
  %15 = xor i32 %11, -1
  %16 = and i32 %13, %15
  %17 = or i32 %11, %13
  %18 = select i1 %14, i32 %17, i32 %16
  store i32 %18, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %8) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpcv2_wakeup_source_save() #7 {
  %1 = load ptr, ptr @imx_gpcv2_instance, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %4, align 4
  %7 = load i32, ptr %5, align 4
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !9
  %10 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 0
  store i32 %9, ptr %10, align 4
  %11 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 2, i32 0
  %12 = load i32, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #10, !srcloc !8
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !9
  %18 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %20) #10, !srcloc !8
  %21 = load ptr, ptr %4, align 4
  %22 = load i32, ptr %5, align 4
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !9
  %26 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %28) #10, !srcloc !8
  %29 = load ptr, ptr %4, align 4
  %30 = load i32, ptr %5, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = getelementptr i8, ptr %31, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !9
  %34 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 2, i32 3
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %36) #10, !srcloc !8
  br label %37

37:                                               ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpcv2_wakeup_source_restore() #7 {
  %1 = load ptr, ptr @imx_gpcv2_instance, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 4
  %6 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #10, !srcloc !8
  %11 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #10, !srcloc !8
  %17 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #10, !srcloc !8
  %23 = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 3, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = load i32, ptr %5, align 4
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #10, !srcloc !8
  br label %29

29:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 2810564}
!9 = !{i64 2810982}
!10 = !{i64 2149056962}
!11 = !{i64 2149052786}
!12 = !{i64 2149052861, i64 2149052888, i64 2149052935, i64 2149052957, i64 2149052985, i64 2149053005}
!13 = !{i64 2149079965}
