; ModuleID = '/llk/IR/drivers/irqchip/irq-owl-sirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-owl-sirq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.owl_sirq_params = type { i8, [3 x i16] }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.owl_sirq_chip_data = type { ptr, ptr, %struct.raw_spinlock, [3 x i32] }
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

@__of_table_owl_sirq_s500 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-sirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_sirq_s500_of_init }, section "__irqchip_of_table", align 4
@__of_table_owl_sirq_s700 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-sirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_sirq_s500_of_init }, section "__irqchip_of_table", align 4
@__of_table_owl_sirq_s900 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-sirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_sirq_s900_of_init }, section "__irqchip_of_table", align 4
@owl_sirq_s500_params = internal constant %struct.owl_sirq_params { i8 1, [3 x i16] zeroinitializer }, align 2
@.str = private unnamed_addr constant [43 x i8] c"\013%pOF: failed to find sirq parent domain\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\013%pOF: failed to map sirq registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%pOF: failed to parse interrupt %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"drivers/irqchip/irq-owl-sirq.c\00", align 1
@owl_sirq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_sirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @owl_sirq_domain_translate }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\013%pOF: failed to add domain\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@owl_sirq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_sirq_mask, ptr null, ptr @owl_sirq_unmask, ptr @owl_sirq_eoi, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @owl_sirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"owl-sirq\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@owl_sirq_s900_params = internal constant %struct.owl_sirq_params { i8 0, [3 x i16] [i16 0, i16 808, i16 812] }, align 2
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_owl_sirq_s500, ptr @__of_table_owl_sirq_s700, ptr @__of_table_owl_sirq_s900], section "llvm.metadata"
@switch.table.owl_sirq_domain_alloc = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 4], align 4
@switch.table.owl_sirq_set_type = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 4
@switch.table.owl_sirq_set_type.6 = private unnamed_addr constant [8 x i32] [i32 128, i32 192, i32 64, i32 0, i32 64, i32 64, i32 64, i32 64], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_sirq_s500_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @owl_sirq_init(ptr noundef nonnull @owl_sirq_s500_params, ptr noundef %0, ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_sirq_s900_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @owl_sirq_init(ptr noundef nonnull @owl_sirq_s900_params, ptr noundef %0, ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @owl_sirq_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = icmp eq ptr %2, null
  %8 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #9
  store ptr %9, ptr %5, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #9
  store ptr %9, ptr %4, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #10
  br label %64

19:                                               ; preds = %13, %3
  %20 = phi ptr [ %15, %13 ], [ %11, %3 ]
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 24) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %22, i32 0, i32 2
  store i32 0, ptr %25, align 8
  store ptr %0, ptr %22, align 8
  %26 = call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #9
  %27 = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %22, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2, i32 1
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %1) #10
  br label %62

34:                                               ; preds = %46, %29
  %35 = phi i32 [ 0, %29 ], [ %49, %46 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  %36 = call i32 @of_irq_parse_one(ptr noundef %1, i32 noundef %35, ptr noundef nonnull %6) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %35) #10
  br label %44

40:                                               ; preds = %34
  %41 = load i32, ptr %30, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %46, label %43, !prof !9

43:                                               ; preds = %40
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #9
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ -22, %43 ], [ %36, %38 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  br label %59

46:                                               ; preds = %40
  %47 = load i32, ptr %31, align 4
  %48 = getelementptr %struct.owl_sirq_chip_data, ptr %22, i32 0, i32 3, i32 %35
  store i32 %47, ptr %48, align 4
  call fastcc void @owl_sirq_clear_set_extctl(ptr noundef nonnull %22, i32 noundef 0, i32 noundef 16, i32 noundef %35)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  %49 = add nuw nsw i32 %35, 1
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %34

51:                                               ; preds = %46
  %52 = icmp eq ptr %1, null
  %53 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %54 = select i1 %52, ptr null, ptr %53
  %55 = call ptr @irq_domain_create_hierarchy(ptr noundef %20, i32 noundef 0, i32 noundef 3, ptr noundef %54, ptr noundef nonnull @owl_sirq_domain_ops, ptr noundef nonnull %22) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %1) #10
  br label %59

59:                                               ; preds = %57, %44
  %60 = phi i32 [ -12, %57 ], [ %45, %44 ]
  %61 = load ptr, ptr %27, align 4
  call void @iounmap(ptr noundef %61) #9
  br label %62

62:                                               ; preds = %59, %32
  %63 = phi i32 [ %60, %59 ], [ -6, %32 ]
  call void @kfree(ptr noundef nonnull %22) #9
  br label %64

64:                                               ; preds = %62, %51, %19, %17
  %65 = phi i32 [ %63, %62 ], [ -6, %17 ], [ -12, %19 ], [ 0, %51 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @owl_sirq_clear_set_extctl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %0, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr %struct.owl_sirq_params, ptr %9, i32 0, i32 1, i32 %3
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  %15 = load ptr, ptr %0, align 4
  %16 = load i8, ptr %15, align 2, !range !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = xor i32 %1, -1
  %20 = and i32 %14, %19
  %21 = or i32 %20, %2
  br label %68

22:                                               ; preds = %4
  switch i32 %3, label %51 [
    i32 0, label %23
    i32 1, label %37
  ]

23:                                               ; preds = %22
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr %struct.owl_sirq_params, ptr %15, i32 0, i32 1, i32 0
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !10
  %30 = xor i32 %1, -1
  %31 = lshr i32 %14, 16
  %32 = and i32 %31, %30
  %33 = or i32 %32, %2
  %34 = and i32 %29, -16711681
  %35 = shl i32 %33, 16
  %36 = and i32 %35, 16711680
  br label %63

37:                                               ; preds = %22
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr %struct.owl_sirq_params, ptr %15, i32 0, i32 1, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %38, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !10
  %44 = xor i32 %1, -1
  %45 = lshr i32 %14, 8
  %46 = and i32 %45, %44
  %47 = or i32 %46, %2
  %48 = and i32 %43, -65281
  %49 = shl i32 %47, 8
  %50 = and i32 %49, 65280
  br label %63

51:                                               ; preds = %22
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr %struct.owl_sirq_params, ptr %15, i32 0, i32 1, i32 %3
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !10
  %58 = xor i32 %1, -1
  %59 = and i32 %14, %58
  %60 = or i32 %59, %2
  %61 = and i32 %57, -256
  %62 = and i32 %60, 255
  br label %63

63:                                               ; preds = %51, %37, %23
  %64 = phi i32 [ %61, %51 ], [ %48, %37 ], [ %34, %23 ]
  %65 = phi i32 [ %62, %51 ], [ %50, %37 ], [ %36, %23 ]
  %66 = or i32 %65, %64
  %67 = load ptr, ptr %0, align 4
  br label %68

68:                                               ; preds = %63, %18
  %69 = phi ptr [ %67, %63 ], [ %15, %18 ]
  %70 = phi i32 [ %66, %63 ], [ %21, %18 ]
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr %struct.owl_sirq_params, ptr %69, i32 0, i32 1, i32 %3
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr i8, ptr %71, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %70) #9, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_sirq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #5 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 52, i1 false), !annotation !8
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 238, i32 noundef 9, ptr noundef null) #9
  br label %53

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %53, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @of_fwnode_ops
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = trunc i32 %31 to i8
  %35 = lshr i8 -117, %34
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [8 x i32], ptr @switch.table.owl_sirq_domain_alloc, i32 0, i32 %31
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %26, ptr noundef nonnull @owl_sirq_chip, ptr noundef %7) #9
  %42 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.irq_domain, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %5, align 4
  %46 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %47, align 4
  %48 = getelementptr %struct.owl_sirq_chip_data, ptr %7, i32 0, i32 3, i32 %26
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 %40, ptr %51, align 4
  %52 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %5) #9
  br label %53

53:                                               ; preds = %38, %33, %28, %24, %20, %16, %11, %10
  %54 = phi i32 [ -22, %10 ], [ %52, %38 ], [ -22, %28 ], [ -22, %16 ], [ -22, %24 ], [ -22, %20 ], [ -22, %11 ], [ -22, %33 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @owl_sirq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  store i32 %19, ptr %2, align 4
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %21, %17, %13, %9, %4
  %25 = phi i32 [ 0, %21 ], [ -22, %9 ], [ -22, %17 ], [ -22, %13 ], [ -22, %4 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_sirq_mask(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %3, i32 noundef 32, i32 noundef 0, i32 noundef %5)
  tail call void @irq_chip_mask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_sirq_unmask(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef %5)
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_sirq_eoi(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %9, i32 noundef 0, i32 noundef 1, i32 noundef %11)
  br label %12

12:                                               ; preds = %7, %1
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_sirq_set_type(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -1
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = trunc i32 %5 to i8
  %9 = lshr i8 -117, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [8 x i32], ptr @switch.table.owl_sirq_set_type, i32 0, i32 %5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [8 x i32], ptr @switch.table.owl_sirq_set_type.6, i32 0, i32 %5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %4, i32 noundef 192, i32 noundef %16, i32 noundef %18)
  %19 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %14) #9
  br label %20

20:                                               ; preds = %12, %7, %2
  %21 = phi i32 [ %19, %12 ], [ -22, %2 ], [ -22, %7 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3085058}
!11 = !{i8 0, i8 2}
!12 = !{i64 3084640}
