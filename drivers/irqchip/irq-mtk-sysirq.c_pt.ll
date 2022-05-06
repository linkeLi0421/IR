; ModuleID = '/llk/IR/drivers/irqchip/irq-mtk-sysirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mtk-sysirq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mtk_sysirq_chip_data = type { %struct.raw_spinlock, i32, ptr, ptr, ptr, ptr }
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

@__of_table_mtk_sysirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-sysirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_sysirq_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [42 x i8] c"\013mtk_sysirq: interrupt-parent not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\013mtk_sysirq: base address not specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\013%pOF: couldn't map region %d\0A\00", align 1
@sysirq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_sysirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @mtk_sysirq_domain_translate }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mtk_sysirq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @mtk_sysirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"MT_SYSIRQ\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_mtk_sysirq], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_sysirq_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.resource, align 4
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %8 = select i1 %6, ptr null, ptr %7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  %9 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %9, i8 0, i64 68, i1 false) #11
  store ptr %8, ptr %4, align 4
  %10 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %13, i8 0, i64 68, i1 false) #11
  store ptr %8, ptr %3, align 4
  %14 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %150

18:                                               ; preds = %12, %2
  %19 = phi ptr [ %14, %12 ], [ %10, %2 ]
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 24) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %150, label %23

23:                                               ; preds = %18
  %24 = call ptr @__of_get_address(ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %26, %23
  %27 = phi i32 [ %28, %26 ], [ 0, %23 ]
  %28 = add i32 %27, 1
  %29 = call ptr @__of_get_address(ptr noundef %0, i32 noundef %28, i32 noundef -1, ptr noundef null, ptr noundef null) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26

31:                                               ; preds = %26
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %31, %23
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %148

35:                                               ; preds = %31
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #11
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  br i1 %37, label %39, label %41, !prof !8

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %21, i32 0, i32 3
  store ptr null, ptr %40, align 4
  br label %148

41:                                               ; preds = %35
  %42 = call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #14
  %43 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %21, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %148, label %45

45:                                               ; preds = %41
  %46 = call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #14
  %47 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %21, i32 0, i32 2
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %145, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  br label %51

51:                                               ; preds = %75, %49
  %52 = phi i32 [ 0, %49 ], [ %76, %75 ]
  %53 = phi i32 [ 0, %49 ], [ %60, %75 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %54 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %52, ptr noundef nonnull %5) #11
  %55 = load i32, ptr %50, align 4
  %56 = load i32, ptr %5, align 4
  %57 = add i32 %55, 1
  %58 = sub i32 %57, %56
  %59 = shl i32 %58, 3
  %60 = add i32 %59, %53
  %61 = sdiv i32 %58, 4
  %62 = load ptr, ptr %43, align 4
  %63 = getelementptr i32, ptr %62, i32 %52
  store i32 %61, ptr %63, align 4
  %64 = call ptr @of_iomap(ptr noundef %0, i32 noundef %52) #11
  %65 = load ptr, ptr %47, align 8
  %66 = getelementptr ptr, ptr %65, i32 %52
  store ptr %64, ptr %66, align 4
  %67 = icmp eq i32 %54, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load ptr, ptr %47, align 8
  %70 = getelementptr ptr, ptr %69, i32 %52
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %51
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef %52) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %131

75:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %76 = add nuw nsw i32 %52, 1
  %77 = icmp eq i32 %52, %27
  br i1 %77, label %78, label %51

78:                                               ; preds = %75
  %79 = call noalias align 64 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #14
  %80 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %21, i32 0, i32 4
  store ptr %79, ptr %80, align 8
  %81 = icmp eq ptr %79, null
  br i1 %81, label %131, label %82

82:                                               ; preds = %78
  %83 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %60, i32 2) #11
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %85, label %87, !prof !8

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %21, i32 0, i32 5
  store ptr null, ptr %86, align 4
  br label %129

87:                                               ; preds = %82
  %88 = extractvalue { i32, i1 } %83, 0
  %89 = call noalias align 64 ptr @__kmalloc(i32 noundef %88, i32 noundef 3520) #14
  %90 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %21, i32 0, i32 5
  store ptr %89, ptr %90, align 4
  %91 = icmp eq ptr %89, null
  br i1 %91, label %129, label %92

92:                                               ; preds = %87
  %93 = icmp eq i32 %60, 0
  br i1 %93, label %120, label %94

94:                                               ; preds = %109, %92
  %95 = phi i32 [ %118, %109 ], [ 0, %92 ]
  %96 = lshr i32 %95, 5
  %97 = load ptr, ptr %43, align 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %100, %94
  %101 = phi i32 [ %107, %100 ], [ %98, %94 ]
  %102 = phi i32 [ %105, %100 ], [ 0, %94 ]
  %103 = phi i32 [ %104, %100 ], [ %96, %94 ]
  %104 = sub i32 %103, %101
  %105 = add i32 %102, 1
  %106 = getelementptr i32, ptr %97, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %100

109:                                              ; preds = %100, %94
  %110 = phi i32 [ %96, %94 ], [ %104, %100 ]
  %111 = phi i32 [ 0, %94 ], [ %105, %100 ]
  %112 = trunc i32 %111 to i8
  %113 = load ptr, ptr %80, align 8
  %114 = getelementptr i8, ptr %113, i32 %95
  store i8 %112, ptr %114, align 1
  %115 = trunc i32 %110 to i16
  %116 = load ptr, ptr %90, align 4
  %117 = getelementptr i16, ptr %116, i32 %95
  store i16 %115, ptr %117, align 2
  %118 = add nuw nsw i32 %95, 1
  %119 = icmp eq i32 %118, %60
  br i1 %119, label %120, label %94

120:                                              ; preds = %109, %92
  %121 = icmp eq ptr %0, null
  %122 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %123 = select i1 %121, ptr null, ptr %122
  %124 = call ptr @irq_domain_create_hierarchy(ptr noundef %19, i32 noundef 0, i32 noundef %60, ptr noundef %123, ptr noundef nonnull @sysirq_domain_ops, ptr noundef nonnull %21) #11
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load ptr, ptr %90, align 4
  call void @kfree(ptr noundef %127) #11
  br label %129

128:                                              ; preds = %120
  store i32 0, ptr %21, align 8
  br label %150

129:                                              ; preds = %126, %87, %85
  %130 = load ptr, ptr %80, align 8
  call void @kfree(ptr noundef %130) #11
  br label %131

131:                                              ; preds = %129, %78, %73
  %132 = phi i32 [ -19, %73 ], [ -12, %129 ], [ -12, %78 ]
  br label %133

133:                                              ; preds = %140, %131
  %134 = phi i32 [ %141, %140 ], [ 0, %131 ]
  %135 = load ptr, ptr %47, align 8
  %136 = getelementptr ptr, ptr %135, i32 %134
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  call void @iounmap(ptr noundef nonnull %137) #11
  br label %140

140:                                              ; preds = %139, %133
  %141 = add nuw nsw i32 %134, 1
  %142 = icmp eq i32 %134, %27
  br i1 %142, label %143, label %133

143:                                              ; preds = %140
  %144 = load ptr, ptr %47, align 8
  call void @kfree(ptr noundef %144) #11
  br label %145

145:                                              ; preds = %143, %45
  %146 = phi i32 [ %132, %143 ], [ -12, %45 ]
  %147 = load ptr, ptr %43, align 4
  call void @kfree(ptr noundef %147) #11
  br label %148

148:                                              ; preds = %145, %41, %39, %33
  %149 = phi i32 [ -22, %33 ], [ %146, %145 ], [ -12, %39 ], [ -12, %41 ]
  call void @kfree(ptr noundef nonnull %21) #11
  br label %150

150:                                              ; preds = %148, %128, %18, %16
  %151 = phi i32 [ %149, %148 ], [ 0, %128 ], [ -22, %16 ], [ -12, %18 ]
  ret i32 %151
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_sysirq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #9 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %33

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %25, %19 ]
  %21 = add i32 %20, %1
  %22 = add i32 %20, %15
  %23 = load ptr, ptr %18, align 4
  %24 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %21, i32 noundef %22, ptr noundef nonnull @mtk_sysirq_chip, ptr noundef %23) #11
  %25 = add nuw i32 %20, 1
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %13
  %28 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.irq_domain, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %5, align 4
  %32 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #11
  br label %33

33:                                               ; preds = %27, %9, %4
  %34 = phi i32 [ %32, %27 ], [ -22, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mtk_sysirq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #10 {
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
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_sysirq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %4
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = zext i8 %10 to i32
  %14 = getelementptr ptr, ptr %12, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %6, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i16, ptr %17, i32 %4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %4, 31
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %23 = shl nuw nsw i32 %20, 2
  %24 = getelementptr i8, ptr %15, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  switch i32 %1, label %31 [
    i32 8, label %27
    i32 2, label %26
  ]

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %2
  %28 = phi i32 [ 1, %26 ], [ 4, %2 ]
  %29 = shl nuw i32 1, %21
  %30 = or i32 %25, %29
  br label %35

31:                                               ; preds = %2
  %32 = shl nuw i32 1, %21
  %33 = xor i32 %32, -1
  %34 = and i32 %25, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %30, %27 ], [ %34, %31 ]
  %37 = phi i32 [ %28, %27 ], [ %1, %31 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %36) #11, !srcloc !11
  %38 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.irq_data, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.irq_chip, ptr %41, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %39, i32 noundef %37) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %22) #11
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2461981}
!11 = !{i64 2461563}
