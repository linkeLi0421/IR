; ModuleID = '/llk/IR/drivers/irqchip/irq-crossbar.c_pt.bc'
source_filename = "../drivers/irqchip/irq-crossbar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.crossbar_device = type { %struct.raw_spinlock, i32, i32, i32, ptr, ptr, ptr, ptr }
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

@__of_table_ti_irqcrossbar = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,irq-crossbar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @irqcrossbar_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [30 x i8] c"\013%pOF: no parent, giving up\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", align 1
@cb = internal unnamed_addr global ptr null, align 4
@crossbar_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crossbar_domain_alloc, ptr @crossbar_domain_free, ptr null, ptr null, ptr @crossbar_domain_translate }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%pOF: failed to allocated domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ti,max-crossbar-sources\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\013missing 'ti,max-crossbar-sources' property\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ti,max-irqs\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013missing 'ti,max-irqs' property\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ti,irqs-reserved\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\013Invalid reserved entry\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ti,irqs-skip\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\013Invalid skip entry\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ti,reg-size\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"\013Invalid reg-size property\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ti,irqs-safe-map\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@crossbar_chip = internal global %struct.irq_chip { ptr null, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"CBAR\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ti_irqcrossbar], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irqcrossbar_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #10
  br label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #11
  store ptr %9, ptr %4, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #11
  store ptr %9, ptr %3, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #10
  br label %34

19:                                               ; preds = %13, %8
  %20 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %21 = call fastcc i32 @crossbar_of_init(ptr noundef %0) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load ptr, ptr @cb, align 4
  %25 = getelementptr inbounds %struct.crossbar_device, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq ptr %0, null
  %28 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %29 = select i1 %27, ptr null, ptr %28
  %30 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %20, i32 noundef 0, i32 noundef %26, ptr noundef %29, ptr noundef nonnull @crossbar_domain_ops, ptr noundef null) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #10
  br label %34

34:                                               ; preds = %32, %23, %19, %17, %6
  %35 = phi i32 [ -12, %32 ], [ -6, %17 ], [ -19, %6 ], [ %21, %19 ], [ 0, %23 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @crossbar_of_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #13
  store ptr %7, ptr @cb, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %196, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #11
  %11 = load ptr, ptr @cb, align 4
  %12 = getelementptr inbounds %struct.crossbar_device, ptr %11, i32 0, i32 5
  store ptr %10, ptr %12, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %193, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.crossbar_device, ptr %11, i32 0, i32 3
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %15, i32 noundef 1, i32 noundef 0) #11
  %17 = load ptr, ptr @cb, align 4
  %18 = getelementptr inbounds %struct.crossbar_device, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %187

23:                                               ; preds = %14
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %25 = load i32, ptr %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %187

29:                                               ; preds = %23
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #11
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %32, label %35, !prof !9

32:                                               ; preds = %29
  %33 = load ptr, ptr @cb, align 4
  %34 = getelementptr inbounds %struct.crossbar_device, ptr %33, i32 0, i32 4
  store ptr null, ptr %34, align 4
  br label %187

35:                                               ; preds = %29
  %36 = extractvalue { i32, i1 } %30, 0
  %37 = call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #14
  %38 = load ptr, ptr @cb, align 4
  %39 = getelementptr inbounds %struct.crossbar_device, ptr %38, i32 0, i32 4
  store ptr %37, ptr %39, align 4
  %40 = icmp eq ptr %37, null
  br i1 %40, label %187, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %2, align 4
  %43 = getelementptr inbounds %struct.crossbar_device, ptr %38, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %45, %41
  %46 = phi i32 [ %49, %45 ], [ 0, %41 ]
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr i32, ptr %47, i32 %46
  store i32 -1, ptr %48, align 4
  %49 = add nuw i32 %46, 1
  %50 = load i32, ptr %2, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %45, label %52

52:                                               ; preds = %45, %41
  %53 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %5, align 4
  %57 = lshr i32 %56, 2
  store i32 %57, ptr %5, align 4
  %58 = icmp ult i32 %56, 4
  br i1 %58, label %75, label %59

59:                                               ; preds = %67, %55
  %60 = phi i32 [ %72, %67 ], [ 0, %55 ]
  %61 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %60, ptr noundef nonnull %3) #11
  %62 = load i32, ptr %3, align 4
  %63 = load i32, ptr %2, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %182

67:                                               ; preds = %59
  %68 = load ptr, ptr @cb, align 4
  %69 = getelementptr inbounds %struct.crossbar_device, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i32, ptr %70, i32 %62
  store i32 -2, ptr %71, align 4
  %72 = add nuw nsw i32 %60, 1
  %73 = load i32, ptr %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %59, label %75

75:                                               ; preds = %67, %55, %52
  %76 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %98, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %5, align 4
  %80 = lshr i32 %79, 2
  store i32 %80, ptr %5, align 4
  %81 = icmp ult i32 %79, 4
  br i1 %81, label %98, label %82

82:                                               ; preds = %90, %78
  %83 = phi i32 [ %95, %90 ], [ 0, %78 ]
  %84 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %83, ptr noundef nonnull %3) #11
  %85 = load i32, ptr %3, align 4
  %86 = load i32, ptr %2, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %182

90:                                               ; preds = %82
  %91 = load ptr, ptr @cb, align 4
  %92 = getelementptr inbounds %struct.crossbar_device, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i32, ptr %93, i32 %85
  store i32 -3, ptr %94, align 4
  %95 = add nuw nsw i32 %83, 1
  %96 = load i32, ptr %5, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %82, label %98

98:                                               ; preds = %90, %78, %75
  %99 = load i32, ptr %2, align 4
  %100 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %99, i32 4) #11
  %101 = extractvalue { i32, i1 } %100, 1
  br i1 %101, label %102, label %105, !prof !9

102:                                              ; preds = %98
  %103 = load ptr, ptr @cb, align 4
  %104 = getelementptr inbounds %struct.crossbar_device, ptr %103, i32 0, i32 6
  store ptr null, ptr %104, align 4
  br label %182

105:                                              ; preds = %98
  %106 = extractvalue { i32, i1 } %100, 0
  %107 = call noalias align 64 ptr @__kmalloc(i32 noundef %106, i32 noundef 3520) #14
  %108 = load ptr, ptr @cb, align 4
  %109 = getelementptr inbounds %struct.crossbar_device, ptr %108, i32 0, i32 6
  store ptr %107, ptr %109, align 4
  %110 = icmp eq ptr %107, null
  br i1 %110, label %182, label %111

111:                                              ; preds = %105
  %112 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #11
  %113 = load i32, ptr %4, align 4
  switch i32 %113, label %116 [
    i32 1, label %121
    i32 2, label %114
    i32 4, label %115
  ]

114:                                              ; preds = %111
  br label %121

115:                                              ; preds = %111
  br label %121

116:                                              ; preds = %111
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  %118 = load ptr, ptr @cb, align 4
  %119 = getelementptr inbounds %struct.crossbar_device, ptr %118, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  call void @kfree(ptr noundef %120) #11
  br label %182

121:                                              ; preds = %115, %114, %111
  %122 = phi ptr [ @crossbar_writel, %115 ], [ @crossbar_writew, %114 ], [ @crossbar_writeb, %111 ]
  %123 = load ptr, ptr @cb, align 4
  %124 = getelementptr inbounds %struct.crossbar_device, ptr %123, i32 0, i32 7
  store ptr %122, ptr %124, align 4
  %125 = load i32, ptr %2, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %151, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.crossbar_device, ptr %123, i32 0, i32 4
  %129 = getelementptr inbounds %struct.crossbar_device, ptr %123, i32 0, i32 6
  br label %130

130:                                              ; preds = %144, %127
  %131 = phi i32 [ %125, %127 ], [ %145, %144 ]
  %132 = phi i32 [ 0, %127 ], [ %147, %144 ]
  %133 = phi i32 [ 0, %127 ], [ %146, %144 ]
  %134 = load ptr, ptr %128, align 4
  %135 = getelementptr i32, ptr %134, i32 %132
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, -2
  br i1 %137, label %144, label %138

138:                                              ; preds = %130
  %139 = load ptr, ptr %129, align 4
  %140 = getelementptr i32, ptr %139, i32 %132
  store i32 %133, ptr %140, align 4
  %141 = load i32, ptr %4, align 4
  %142 = add i32 %141, %133
  %143 = load i32, ptr %2, align 4
  br label %144

144:                                              ; preds = %138, %130
  %145 = phi i32 [ %131, %130 ], [ %143, %138 ]
  %146 = phi i32 [ %133, %130 ], [ %142, %138 ]
  %147 = add nuw i32 %132, 1
  %148 = icmp ult i32 %147, %145
  br i1 %148, label %130, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr @cb, align 4
  br label %151

151:                                              ; preds = %149, %121
  %152 = phi ptr [ %150, %149 ], [ %123, %121 ]
  %153 = getelementptr inbounds %struct.crossbar_device, ptr %152, i32 0, i32 2
  %154 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %153, i32 noundef 1, i32 noundef 0) #11
  %155 = load i32, ptr %2, align 4
  %156 = icmp eq i32 %155, 0
  %157 = load ptr, ptr @cb, align 4
  br i1 %156, label %180, label %158

158:                                              ; preds = %175, %151
  %159 = phi i32 [ %176, %175 ], [ %155, %151 ]
  %160 = phi ptr [ %177, %175 ], [ %157, %151 ]
  %161 = phi i32 [ %178, %175 ], [ 0, %151 ]
  %162 = getelementptr inbounds %struct.crossbar_device, ptr %160, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i32, ptr %163, i32 %161
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, 3
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %175, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.crossbar_device, ptr %160, i32 0, i32 7
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.crossbar_device, ptr %160, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  call void %170(i32 noundef %161, i32 noundef %172) #11
  %173 = load ptr, ptr @cb, align 4
  %174 = load i32, ptr %2, align 4
  br label %175

175:                                              ; preds = %168, %158
  %176 = phi i32 [ %159, %158 ], [ %174, %168 ]
  %177 = phi ptr [ %160, %158 ], [ %173, %168 ]
  %178 = add nuw i32 %161, 1
  %179 = icmp ult i32 %178, %176
  br i1 %179, label %158, label %180

180:                                              ; preds = %175, %151
  %181 = phi ptr [ %157, %151 ], [ %177, %175 ]
  store i32 0, ptr %181, align 4
  br label %196

182:                                              ; preds = %116, %105, %102, %88, %65
  %183 = phi i32 [ -22, %65 ], [ -22, %88 ], [ -22, %116 ], [ -12, %105 ], [ -12, %102 ]
  %184 = load ptr, ptr @cb, align 4
  %185 = getelementptr inbounds %struct.crossbar_device, ptr %184, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  call void @kfree(ptr noundef %186) #11
  br label %187

187:                                              ; preds = %182, %35, %32, %27, %21
  %188 = phi i32 [ %183, %182 ], [ -12, %35 ], [ -22, %27 ], [ -22, %21 ], [ -12, %32 ]
  %189 = load ptr, ptr @cb, align 4
  %190 = getelementptr inbounds %struct.crossbar_device, ptr %189, i32 0, i32 5
  %191 = load ptr, ptr %190, align 4
  call void @iounmap(ptr noundef %191) #11
  %192 = load ptr, ptr @cb, align 4
  br label %193

193:                                              ; preds = %187, %9
  %194 = phi ptr [ %192, %187 ], [ %11, %9 ]
  %195 = phi i32 [ %188, %187 ], [ -12, %9 ]
  call void @kfree(ptr noundef %194) #11
  store ptr null, ptr @cb, align 4
  br label %196

196:                                              ; preds = %193, %180, %1
  %197 = phi i32 [ %195, %193 ], [ 0, %180 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %197
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crossbar_writeb(i32 noundef %0, i32 noundef %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %3 = trunc i32 %1 to i8
  %4 = load ptr, ptr @cb, align 4
  %5 = getelementptr inbounds %struct.crossbar_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crossbar_device, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i32, ptr %8, i32 %0
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 %10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %3) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crossbar_writew(i32 noundef %0, i32 noundef %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %3 = trunc i32 %1 to i16
  %4 = load ptr, ptr @cb, align 4
  %5 = getelementptr inbounds %struct.crossbar_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crossbar_device, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i32, ptr %8, i32 %0
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 %10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %3) #11, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crossbar_writel(i32 noundef %0, i32 noundef %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %3 = load ptr, ptr @cb, align 4
  %4 = getelementptr inbounds %struct.crossbar_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crossbar_device, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 %0
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #11, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crossbar_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #5 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %90

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %90

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %2
  %17 = load ptr, ptr @cb, align 4
  %18 = getelementptr inbounds %struct.crossbar_device, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %90, label %21

21:                                               ; preds = %13
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %90, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, ptr %5, i32 20
  %25 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %26 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  %28 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  br label %30

30:                                               ; preds = %84, %23
  %31 = phi i32 [ 0, %23 ], [ %88, %84 ]
  %32 = add i32 %31, %1
  %33 = add i32 %31, %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %24, i8 0, i32 52, i1 false) #11, !annotation !8
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.irq_domain, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %39 = or i1 %37, %38
  br i1 %39, label %82, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.fwnode_handle, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ne ptr %42, @of_fwnode_ops
  %44 = getelementptr i8, ptr %36, i32 -12
  %45 = icmp eq ptr %44, null
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %82, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr @cb, align 4
  call void @_raw_spin_lock(ptr noundef %48) #11
  %49 = load ptr, ptr @cb, align 4
  %50 = getelementptr inbounds %struct.crossbar_device, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.crossbar_device, ptr %49, i32 0, i32 4
  %53 = add i32 %51, -1
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 -1) #11
  br label %55

55:                                               ; preds = %59, %47
  %56 = phi i32 [ %51, %47 ], [ %57, %59 ]
  %57 = add i32 %56, -1
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i32, ptr %60, i32 %57
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %55

64:                                               ; preds = %59
  %65 = getelementptr i32, ptr %60, i32 %57
  store i32 %33, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %55
  %67 = phi i32 [ %57, %64 ], [ %54, %55 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %68 = load i16, ptr %49, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %49, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %70 = icmp slt i32 %67, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %25, align 4
  %73 = getelementptr inbounds %struct.irq_domain, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  store ptr %74, ptr %5, align 4
  store i32 3, ptr %26, align 4
  store i32 0, ptr %27, align 4
  store i32 %67, ptr %28, align 4
  store i32 4, ptr %29, align 4
  %75 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %32, i32 noundef 1, ptr noundef nonnull %5) #11
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr @cb, align 4
  br i1 %76, label %84, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.crossbar_device, ptr %77, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i32, ptr %80, i32 %67
  store i32 -1, ptr %81, align 4
  br label %82

82:                                               ; preds = %78, %66, %40, %30
  %83 = phi i32 [ %75, %78 ], [ -19, %66 ], [ -22, %30 ], [ -22, %40 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  br label %90

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.crossbar_device, ptr %77, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  call void %86(i32 noundef %67, i32 noundef %33) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  %87 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %32, i32 noundef %33, ptr noundef nonnull @crossbar_chip, ptr noundef null) #11
  %88 = add nuw i32 %31, 1
  %89 = icmp eq i32 %88, %2
  br i1 %89, label %90, label %30

90:                                               ; preds = %84, %82, %21, %13, %9, %4
  %91 = phi i32 [ %83, %82 ], [ -22, %4 ], [ -22, %9 ], [ -22, %13 ], [ 0, %21 ], [ 0, %84 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crossbar_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = load ptr, ptr @cb, align 4
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %21, %6 ], [ 0, %3 ]
  %8 = add i32 %7, %1
  %9 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %8) #11
  tail call void @irq_domain_reset_irq_data(ptr noundef %9) #11
  %10 = load ptr, ptr @cb, align 4
  %11 = getelementptr inbounds %struct.crossbar_device, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr %12, i32 %14
  store i32 -1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.crossbar_device, ptr %10, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %13, align 4
  %19 = getelementptr inbounds %struct.crossbar_device, ptr %10, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void %17(i32 noundef %18, i32 noundef %20) #11
  %21 = add nuw i32 %7, 1
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %6

23:                                               ; preds = %6, %3
  %24 = load ptr, ptr @cb, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crossbar_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #9 {
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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152012223}
!11 = !{i64 367303}
!12 = !{i64 2152011841}
!13 = !{i64 366880}
!14 = !{i64 2152011459}
!15 = !{i64 367500}
!16 = !{i64 2148904126}
!17 = !{i64 2148899950}
!18 = !{i64 2148900025, i64 2148900052, i64 2148900099, i64 2148900121, i64 2148900149, i64 2148900169}
!19 = !{i64 2148927129}
