; ModuleID = '/llk/IR/drivers/irqchip/irq-vf610-mscm-ir.c_pt.bc'
source_filename = "../drivers/irqchip/irq-vf610-mscm-ir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vf610_mscm_ir_chip_data = type { ptr, i16, [112 x i16], i8 }
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

@__of_table_vf610_mscm_ir = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-mscm-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_mscm_ir_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [45 x i8] c"\013vf610_mscm_ir: interrupt-parent not found\0A\00", align 1
@mscm_ir_data = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mscm-ir\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\013vf610_mscm_ir: unable to map mscm register\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fsl,cpucfg\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\013vf610_mscm_ir: regmap lookup for cpucfg failed\0A\00", align 1
@mscm_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_mscm_ir_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @vf610_mscm_ir_domain_translate }, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"arm,armv7m-nvic\00", align 1
@mscm_ir_notifier_block = internal global %struct.notifier_block { ptr @vf610_mscm_ir_notifier, ptr null, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vf610_mscm_ir_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.1, ptr null, ptr null, ptr @vf610_mscm_ir_enable, ptr @vf610_mscm_ir_disable, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"drivers/irqchip/irq-vf610-mscm-ir.c\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_vf610_mscm_ir], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vf610_mscm_ir_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %8 = select i1 %6, ptr null, ptr %7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  %9 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %9, i8 0, i64 68, i1 false) #7
  store ptr %8, ptr %4, align 4
  %10 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %13, i8 0, i64 68, i1 false) #7
  store ptr %8, ptr %3, align 4
  %14 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %81

18:                                               ; preds = %12, %2
  %19 = phi ptr [ %14, %12 ], [ %10, %2 ]
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %21 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 232) #9
  store ptr %21, ptr @mscm_ir_data, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %18
  %24 = call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1) #7
  %25 = load ptr, ptr @mscm_ir_data, align 4
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  %29 = load ptr, ptr @mscm_ir_data, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %78

32:                                               ; preds = %23
  %33 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = ptrtoint ptr %33 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %73

38:                                               ; preds = %32
  %39 = call i32 @regmap_read(ptr noundef %33, i32 noundef 4, ptr noundef nonnull %5) #7
  %40 = load i32, ptr %5, align 4
  %41 = shl nuw i32 1, %40
  %42 = trunc i32 %41 to i16
  %43 = load ptr, ptr @mscm_ir_data, align 4
  %44 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, ptr %43, i32 0, i32 1
  store i16 %42, ptr %44, align 4
  %45 = icmp eq ptr %0, null
  %46 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %47 = select i1 %45, ptr null, ptr %46
  %48 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %19, i32 noundef 0, i32 noundef 112, ptr noundef %47, ptr noundef nonnull @mscm_irq_domain_ops, ptr noundef %43) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %73, label %50

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.irq_domain, ptr %48, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.irq_domain, ptr %52, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %57 = or i1 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.fwnode_handle, ptr %54, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, @of_fwnode_ops
  %62 = getelementptr i8, ptr %54, i32 -12
  %63 = select i1 %61, ptr %62, ptr null
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi ptr [ null, %50 ], [ %63, %58 ]
  %66 = call i32 @of_device_is_compatible(ptr noundef %65, ptr noundef nonnull @.str.5) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @mscm_ir_data, align 4
  %70 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, ptr %69, i32 0, i32 3
  store i8 1, ptr %70, align 2
  br label %71

71:                                               ; preds = %68, %64
  %72 = call i32 @cpu_pm_register_notifier(ptr noundef nonnull @mscm_ir_notifier_block) #7
  br label %81

73:                                               ; preds = %38, %35
  %74 = phi i32 [ %36, %35 ], [ -12, %38 ]
  %75 = load ptr, ptr @mscm_ir_data, align 4
  %76 = load ptr, ptr %75, align 4
  call void @iounmap(ptr noundef %76) #7
  %77 = load ptr, ptr @mscm_ir_data, align 4
  br label %78

78:                                               ; preds = %73, %27
  %79 = phi ptr [ %29, %27 ], [ %77, %73 ]
  %80 = phi i32 [ %31, %27 ], [ %74, %73 ]
  call void @kfree(ptr noundef %79) #7
  br label %81

81:                                               ; preds = %78, %71, %18, %16
  %82 = phi i32 [ %80, %78 ], [ 0, %71 ], [ -22, %16 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_mscm_ir_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #6 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 60, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %61, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ne ptr %16, @of_fwnode_ops
  %18 = getelementptr i8, ptr %10, i32 -12
  %19 = icmp eq ptr %18, null
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %61, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %37, %31 ]
  %33 = add i32 %32, %1
  %34 = add i32 %32, %27
  %35 = load ptr, ptr %30, align 4
  %36 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull @vf610_mscm_ir_irq_chip, ptr noundef %35) #7
  %37 = add nuw i32 %32, 1
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %31

39:                                               ; preds = %31
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.irq_domain, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %25
  %44 = phi ptr [ %42, %39 ], [ %10, %25 ]
  store ptr %44, ptr %5, align 4
  %45 = load ptr, ptr @mscm_ir_data, align 4
  %46 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, ptr %45, i32 0, i32 3
  %47 = load i8, ptr %46, align 2, !range !9
  %48 = icmp eq i8 %47, 0
  %49 = load i32, ptr %26, align 4
  br i1 %48, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %49, ptr %51, align 4
  %52 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = phi i32 [ 3, %50 ], [ 1, %43 ]
  %57 = phi i32 [ 0, %50 ], [ %49, %43 ]
  %58 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 %57, ptr %59, align 4
  %60 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #7
  br label %61

61:                                               ; preds = %55, %21, %14, %4
  %62 = phi i32 [ %60, %55 ], [ -22, %21 ], [ -22, %4 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_mscm_ir_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 165, i32 noundef 9, ptr noundef null) #7
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_mscm_ir_enable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %3, 1
  %8 = add i32 %7, 128
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #7, !srcloc !11
  %11 = and i16 %10, 3
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, ptr %5, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 95, i32 noundef 9, ptr noundef null) #7
  %20 = load i16, ptr %13, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i16 [ %20, %19 ], [ %14, %1 ]
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #7, !srcloc !13
  tail call void @irq_chip_enable_parent(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_mscm_ir_disable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %3, 1
  %8 = add i32 %7, 128
  %9 = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #7, !srcloc !13
  tail call void @irq_chip_disable_parent(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_enable_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_disable_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_mscm_ir_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #6 {
  switch i32 %1, label %28 [
    i32 3, label %4
    i32 4, label %16
    i32 5, label %16
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr @mscm_ir_data, align 4
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ 0, %4 ], [ %14, %6 ]
  %8 = load ptr, ptr %5, align 4
  %9 = shl nuw i32 %7, 1
  %10 = add nuw nsw i32 %9, 128
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #7, !srcloc !11
  %13 = getelementptr %struct.vf610_mscm_ir_chip_data, ptr %5, i32 0, i32 2, i32 %7
  store i16 %12, ptr %13, align 2
  %14 = add nuw nsw i32 %7, 1
  %15 = icmp eq i32 %14, 112
  br i1 %15, label %28, label %6

16:                                               ; preds = %3, %3
  %17 = load ptr, ptr @mscm_ir_data, align 4
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %26, %18 ]
  %20 = getelementptr %struct.vf610_mscm_ir_chip_data, ptr %17, i32 0, i32 2, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = load ptr, ptr %17, align 4
  %23 = shl nuw i32 %19, 1
  %24 = add nuw nsw i32 %23, 128
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %21) #7, !srcloc !13
  %26 = add nuw nsw i32 %19, 1
  %27 = icmp eq i32 %26, 112
  br i1 %27, label %28, label %18

28:                                               ; preds = %18, %6, %3
  ret i32 1
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 1693982}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 1693782}
