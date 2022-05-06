; ModuleID = '/llk/IR/drivers/irqchip/irq-ls-extirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-ls-extirq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ls_extirq_data = type { ptr, i32, i8, i32, [12 x %struct.irq_fwspec] }
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

@__of_table_ls1021a_extirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-extirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls_extirq_of_init }, section "__irqchip_of_table", align 4
@__of_table_ls1043a_extirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-extirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls_extirq_of_init }, section "__irqchip_of_table", align 4
@__of_table_ls1088a_extirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-extirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls_extirq_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [44 x i8] c"\013irq-ls-extirq: Cannot find parent domain\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\013irq-ls-extirq: Failed to lookup parent regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013irq-ls-extirq: Missing INTPCR offset value\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"fsl,ls1021a-extirq\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"fsl,ls1043a-extirq\00", align 1
@extirq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @irq_domain_xlate_twocell, ptr @ls_extirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@ls_extirq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @ls_extirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17 }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"ls-extirq\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_ls1021a_extirq, ptr @__of_table_ls1043a_extirq, ptr @__of_table_ls1088a_extirq], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ls_extirq_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = alloca %struct.irq_fwspec, align 4
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #8
  store ptr %9, ptr %6, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #8
  store ptr %9, ptr %5, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %5, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %118

19:                                               ; preds = %13, %2
  %20 = phi ptr [ %15, %13 ], [ %11, %2 ]
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 880) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %118, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr @syscon_node_to_regmap(ptr noundef %26) #8
  store ptr %27, ptr %22, align 8
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %113, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ls_extirq_data, ptr %22, i32 0, i32 1
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %30, i32 noundef 1, i32 noundef 0) #8
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %116

35:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %36 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %94, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 4
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %38
  %43 = lshr i32 %39, 2
  store i32 %43, ptr %3, align 4
  %44 = icmp ult i32 %39, 4
  br i1 %44, label %96, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ls_extirq_data, ptr %22, i32 0, i32 3
  br label %51

47:                                               ; preds = %83, %80
  %48 = phi ptr [ %67, %80 ], [ %86, %83 ]
  %49 = sub i32 %78, %77
  store i32 %49, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %96, label %51

51:                                               ; preds = %47, %45
  %52 = phi ptr [ %36, %45 ], [ %48, %47 ]
  %53 = phi i32 [ %43, %45 ], [ %49, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %92, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %52, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  %58 = icmp ugt i32 %57, 11
  br i1 %58, label %92, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %46, align 4
  %61 = add nuw nsw i32 %57, 1
  %62 = call i32 @llvm.umax.i32(i32 %60, i32 %61) #8
  store i32 %62, ptr %46, align 4
  %63 = getelementptr i32, ptr %52, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  %66 = call ptr @of_find_node_by_phandle(i32 noundef %65) #8
  %67 = getelementptr i32, ptr %52, i32 3
  %68 = load i32, ptr %3, align 4
  %69 = add i32 %68, -3
  store i32 %69, ptr %3, align 4
  %70 = icmp eq ptr %66, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.device_node, ptr %66, i32 0, i32 3
  %73 = getelementptr %struct.ls_extirq_data, ptr %22, i32 0, i32 4, i32 %57
  store ptr %72, ptr %73, align 8
  %74 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %66, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load i32, ptr %4, align 4
  %78 = load i32, ptr %3, align 4
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.ls_extirq_data, ptr %22, i32 0, i32 4, i32 %57, i32 1
  store i32 %77, ptr %81, align 4
  %82 = icmp eq i32 %77, 0
  br i1 %82, label %47, label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %86, %83 ], [ %67, %80 ]
  %85 = phi i32 [ %90, %83 ], [ 0, %80 ]
  %86 = getelementptr i32, ptr %84, i32 1
  %87 = load i32, ptr %84, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #8
  %89 = getelementptr %struct.ls_extirq_data, ptr %22, i32 0, i32 4, i32 %57, i32 2, i32 %85
  store i32 %88, ptr %89, align 4
  %90 = add nuw i32 %85, 1
  %91 = icmp eq i32 %90, %77
  br i1 %91, label %47, label %83

92:                                               ; preds = %76, %71, %59, %55, %51
  %93 = phi i32 [ %74, %71 ], [ -22, %51 ], [ -22, %55 ], [ -22, %59 ], [ -22, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %94

94:                                               ; preds = %92, %38, %35
  %95 = phi i32 [ %93, %92 ], [ -22, %38 ], [ -2, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %116

96:                                               ; preds = %47, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %97 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.5) #8
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ true, %96 ], [ %101, %99 ]
  %104 = getelementptr inbounds %struct.ls_extirq_data, ptr %22, i32 0, i32 2
  %105 = zext i1 %103 to i8
  store i8 %105, ptr %104, align 8
  %106 = getelementptr inbounds %struct.ls_extirq_data, ptr %22, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq ptr %0, null
  %109 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %110 = select i1 %108, ptr null, ptr %109
  %111 = call ptr @irq_domain_create_hierarchy(ptr noundef %20, i32 noundef 0, i32 noundef %107, ptr noundef %110, ptr noundef nonnull @extirq_domain_ops, ptr noundef nonnull %22) #8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %118

113:                                              ; preds = %24
  %114 = ptrtoint ptr %27 to i32
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %116

116:                                              ; preds = %113, %102, %94, %33
  %117 = phi i32 [ %114, %113 ], [ %95, %94 ], [ %31, %33 ], [ -12, %102 ]
  call void @kfree(ptr noundef nonnull %22) #8
  br label %118

118:                                              ; preds = %116, %102, %19, %17
  %119 = phi i32 [ -19, %17 ], [ -12, %19 ], [ %117, %116 ], [ 0, %102 ]
  ret i32 %119
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls_extirq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ls_extirq_data, ptr %6, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %12, ptr noundef nonnull @ls_extirq_chip, ptr noundef %6) #8
  %18 = getelementptr %struct.ls_extirq_data, ptr %6, i32 0, i32 4, i32 %12
  %19 = tail call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef %18) #8
  br label %20

20:                                               ; preds = %16, %10, %4
  %21 = phi i32 [ %19, %16 ], [ -22, %4 ], [ -22, %10 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls_extirq_set_type(ptr noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ls_extirq_data, ptr %4, i32 0, i32 2
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = sub i32 31, %6
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = shl nuw i32 1, %11
  switch i32 %1, label %23 [
    i32 8, label %15
    i32 2, label %13
    i32 4, label %14
    i32 1, label %14
  ]

13:                                               ; preds = %2
  br label %15

14:                                               ; preds = %2, %2
  br label %15

15:                                               ; preds = %14, %13, %2
  %16 = phi i32 [ %1, %14 ], [ 1, %13 ], [ 4, %2 ]
  %17 = phi i32 [ 0, %14 ], [ %12, %13 ], [ %12, %2 ]
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.ls_extirq_data, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef %12, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %16) #8
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi i32 [ %22, %15 ], [ -22, %2 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
