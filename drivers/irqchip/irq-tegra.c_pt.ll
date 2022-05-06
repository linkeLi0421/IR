; ModuleID = '/llk/IR/drivers/irqchip/irq-tegra.c_pt.bc'
source_filename = "../drivers/irqchip/irq-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_ictlr_soc = type { i32 }
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
%struct.tegra_ictlr_info = type { [6 x ptr], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32] }

@__of_table_tegra20_ictlr = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ictlr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_ictlr_init }, section "__irqchip_of_table", align 4
@__of_table_tegra30_ictlr = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ictlr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_ictlr_init }, section "__irqchip_of_table", align 4
@__of_table_tegra210_ictlr = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-ictlr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_ictlr_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [30 x i8] c"\013%pOF: no parent, giving up\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", align 1
@ictlr_matches = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-ictlr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_ictlr_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ictlr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_ictlr_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ictlr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_ictlr_soc }, %struct.of_device_id zeroinitializer], align 4
@lic = internal unnamed_addr global ptr null, align 4
@num_ictlrs = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%pOF: no valid regions, giving up\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"drivers/irqchip/irq-tegra.c\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%pOF: Found %u interrupt controllers in DT; expected %u.\0A\00", align 1
@tegra_ictlr_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ictlr_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @tegra_ictlr_domain_translate }, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"\013%pOF: failed to allocated domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\016%pOF: %d interrupts forwarded to %pOF\0A\00", align 1
@tegra210_ictlr_soc = internal constant %struct.tegra_ictlr_soc { i32 6 }, align 4
@tegra30_ictlr_soc = internal constant %struct.tegra_ictlr_soc { i32 5 }, align 4
@tegra20_ictlr_soc = internal constant %struct.tegra_ictlr_soc { i32 4 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tegra_ictlr_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_mask, ptr null, ptr @tegra_unmask, ptr @tegra_eoi, ptr @irq_chip_set_affinity_parent, ptr @tegra_retrigger, ptr @irq_chip_set_type_parent, ptr @tegra_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"LIC\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@tegra_ictlr_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @tegra_ictlr_suspend, ptr @tegra_ictlr_resume, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_tegra20_ictlr, ptr @__of_table_tegra210_ictlr, ptr @__of_table_tegra30_ictlr], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_ictlr_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #9
  br label %81

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #10
  store ptr %9, ptr %4, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #10
  store ptr %9, ptr %3, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  br label %81

19:                                               ; preds = %13, %8
  %20 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %21 = call ptr @of_match_node(ptr noundef nonnull @ictlr_matches, ptr noundef %0) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.of_device_id, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 144) #11
  store ptr %27, ptr @lic, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %81, label %29

29:                                               ; preds = %35, %23
  %30 = phi i32 [ %42, %35 ], [ 0, %23 ]
  %31 = call ptr @of_iomap(ptr noundef %0, i32 noundef %30) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, ptr @num_ictlrs, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load ptr, ptr @lic, align 4
  %37 = getelementptr [6 x ptr], ptr %36, i32 0, i32 %30
  store ptr %31, ptr %37, align 4
  %38 = getelementptr i8, ptr %31, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1) #10, !srcloc !8
  %39 = getelementptr i8, ptr %31, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #10, !srcloc !8
  %40 = load i32, ptr @num_ictlrs, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr @num_ictlrs, align 4
  %42 = add nuw nsw i32 %30, 1
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %29

44:                                               ; preds = %35, %33
  %45 = phi i32 [ %34, %33 ], [ %41, %35 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %79

49:                                               ; preds = %44
  %50 = load i32, ptr %25, align 4
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %54, label %52, !prof !9

52:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 330, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %0, i32 noundef %45, i32 noundef %50) #10
  %53 = load i32, ptr @num_ictlrs, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %53, %52 ], [ %45, %49 ]
  %56 = shl i32 %55, 5
  %57 = load ptr, ptr @lic, align 4
  %58 = icmp eq ptr %0, null
  %59 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %60 = select i1 %58, ptr null, ptr %59
  %61 = call ptr @irq_domain_create_hierarchy(ptr noundef %20, i32 noundef 0, i32 noundef %56, ptr noundef %60, ptr noundef nonnull @tegra_ictlr_domain_ops, ptr noundef %57) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #9
  %65 = load i32, ptr @num_ictlrs, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %71

67:                                               ; preds = %54
  call void @register_syscore_ops(ptr noundef nonnull @tegra_ictlr_syscore_ops) #10
  %68 = load i32, ptr @num_ictlrs, align 4
  %69 = shl i32 %68, 5
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0, i32 noundef %69, ptr noundef nonnull %1) #9
  br label %81

71:                                               ; preds = %71, %63
  %72 = phi i32 [ %76, %71 ], [ 0, %63 ]
  %73 = load ptr, ptr @lic, align 4
  %74 = getelementptr [6 x ptr], ptr %73, i32 0, i32 %72
  %75 = load ptr, ptr %74, align 4
  call void @iounmap(ptr noundef %75) #10
  %76 = add nuw i32 %72, 1
  %77 = load i32, ptr @num_ictlrs, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %71, label %79

79:                                               ; preds = %71, %63, %47
  %80 = load ptr, ptr @lic, align 4
  call void @kfree(ptr noundef %80) #10
  br label %81

81:                                               ; preds = %79, %67, %23, %19, %17, %6
  %82 = phi i32 [ 0, %67 ], [ -12, %79 ], [ -6, %17 ], [ -19, %6 ], [ -19, %19 ], [ -12, %23 ]
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ictlr_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #6 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %39

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @num_ictlrs, align 4
  %19 = shl i32 %18, 5
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %31, %23 ], [ 0, %21 ]
  %25 = add i32 %24, %17
  %26 = lshr i32 %25, 5
  %27 = add i32 %24, %1
  %28 = getelementptr [6 x ptr], ptr %7, i32 0, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %27, i32 noundef %25, ptr noundef nonnull @tegra_ictlr_chip, ptr noundef %29) #10
  %31 = add nuw i32 %24, 1
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %33, label %23

33:                                               ; preds = %23, %21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %34 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.irq_domain, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %5, align 4
  %38 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #10
  br label %39

39:                                               ; preds = %33, %15, %11, %4
  %40 = phi i32 [ %38, %33 ], [ -22, %4 ], [ -22, %11 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #10
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_ictlr_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 15
  store i32 %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %21, %17, %13, %9, %4
  %28 = phi i32 [ 0, %21 ], [ -22, %13 ], [ -22, %17 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_mask(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #10, !srcloc !8
  tail call void @irq_chip_mask_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_unmask(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #10, !srcloc !8
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_eoi(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #10, !srcloc !8
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_retrigger(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #10, !srcloc !8
  %9 = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %0) #10
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 5
  %6 = and i32 %4, 31
  %7 = shl nuw i32 1, %6
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @lic, align 4
  %11 = getelementptr %struct.tegra_ictlr_info, ptr %10, i32 0, i32 5, i32 %5
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %7
  store i32 %13, ptr %11, align 4
  br label %20

14:                                               ; preds = %2
  %15 = xor i32 %7, -1
  %16 = load ptr, ptr @lic, align 4
  %17 = getelementptr %struct.tegra_ictlr_info, ptr %16, i32 0, i32 5, i32 %5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %14, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ictlr_suspend() #6 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !10
  %2 = load i32, ptr @num_ictlrs, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %34, label %4

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %31, %4 ], [ 0, %0 ]
  %6 = load ptr, ptr @lic, align 4
  %7 = getelementptr [6 x ptr], ptr %6, i32 0, i32 %5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !11
  %11 = load ptr, ptr @lic, align 4
  %12 = getelementptr %struct.tegra_ictlr_info, ptr %11, i32 0, i32 3, i32 %5
  store i32 %10, ptr %12, align 4
  %13 = getelementptr i8, ptr %8, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  %15 = load ptr, ptr @lic, align 4
  %16 = getelementptr %struct.tegra_ictlr_info, ptr %15, i32 0, i32 4, i32 %5
  store i32 %14, ptr %16, align 4
  %17 = getelementptr i8, ptr %8, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !11
  %19 = load ptr, ptr @lic, align 4
  %20 = getelementptr %struct.tegra_ictlr_info, ptr %19, i32 0, i32 1, i32 %5
  store i32 %18, ptr %20, align 4
  %21 = getelementptr i8, ptr %8, i32 60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !11
  %23 = load ptr, ptr @lic, align 4
  %24 = getelementptr %struct.tegra_ictlr_info, ptr %23, i32 0, i32 2, i32 %5
  store i32 %22, ptr %24, align 4
  %25 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #10, !srcloc !8
  %26 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #10, !srcloc !8
  %27 = load ptr, ptr @lic, align 4
  %28 = getelementptr %struct.tegra_ictlr_info, ptr %27, i32 0, i32 5, i32 %5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #10, !srcloc !8
  %31 = add nuw i32 %5, 1
  %32 = load i32, ptr @num_ictlrs, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %4, label %34

34:                                               ; preds = %4, %0
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #10, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_ictlr_resume() #6 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !10
  %2 = load i32, ptr @num_ictlrs, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %26, %4 ], [ 0, %0 ]
  %6 = load ptr, ptr @lic, align 4
  %7 = getelementptr [6 x ptr], ptr %6, i32 0, i32 %5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.tegra_ictlr_info, ptr %6, i32 0, i32 4, i32 %5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #10, !srcloc !8
  %12 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #10, !srcloc !8
  %13 = load ptr, ptr @lic, align 4
  %14 = getelementptr %struct.tegra_ictlr_info, ptr %13, i32 0, i32 3, i32 %5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !8
  %17 = load ptr, ptr @lic, align 4
  %18 = getelementptr %struct.tegra_ictlr_info, ptr %17, i32 0, i32 2, i32 %5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #10, !srcloc !8
  %21 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #10, !srcloc !8
  %22 = load ptr, ptr @lic, align 4
  %23 = getelementptr %struct.tegra_ictlr_info, ptr %22, i32 0, i32 1, i32 %5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #10, !srcloc !8
  %26 = add nuw i32 %5, 1
  %27 = load i32, ptr @num_ictlrs, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %4, label %29

29:                                               ; preds = %4, %0
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #10, !srcloc !12
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 367651}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 508588, i64 508649}
!11 = !{i64 368069}
!12 = !{i64 511605}
