; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v3-mbi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-mbi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mbi_range = type { i32, i32, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.60, %union.anon.61, %union.anon.62 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mbi-ranges\00", align 1
@mbi_range_nr = internal unnamed_addr global i32 0, align 4
@mbi_ranges = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\016GICv3: MBI range [%d:%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mbi-alias\00", align 1
@mbi_phys_base = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\016GICv3: Using MBI frame %pa\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@mbi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_irq_domain_alloc, ptr @mbi_irq_domain_free, ptr null, ptr null, ptr null }, align 4
@mbi_pmsi_domain_info = internal global %struct.msi_domain_info { i32 67, ptr @mbi_pmsi_ops, ptr @mbi_pmsi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mbi_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mbi_lock, i64 12), ptr getelementptr (i8, ptr @mbi_lock, i64 12) } }, align 4
@mbi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"MBI\00", align 1
@mbi_msi_domain_info = internal global %struct.msi_domain_info { i32 15, ptr null, ptr @mbi_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mbi_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_mask_msi_irq, ptr null, ptr @mbi_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@mbi_pmsi_ops = internal global %struct.msi_domain_ops zeroinitializer, align 4
@mbi_pmsi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_compose_mbi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 128 }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pMSI\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mbi_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @of_fwnode_ops
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = select i1 %10, ptr %11, ptr null
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ null, %2 ], [ %12, %7 ]
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef null) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %109, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @of_property_count_elems_of_size(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 4) #9
  %19 = icmp sgt i32 %18, 0
  %20 = and i32 %18, 1
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %109

23:                                               ; preds = %17
  %24 = lshr i32 %18, 1
  store i32 %24, ptr @mbi_range_nr, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 12) #9
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23
  store ptr null, ptr @mbi_ranges, align 4
  br label %109

28:                                               ; preds = %23
  %29 = extractvalue { i32, i1 } %25, 0
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #10
  store ptr %30, ptr @mbi_ranges, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %109, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr @mbi_range_nr, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @of_property_read_u32_index(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %30) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %65, %35
  %39 = phi i32 [ %67, %65 ], [ 0, %35 ]
  %40 = phi i32 [ %62, %65 ], [ 0, %35 ]
  %41 = or i32 %39, 1
  %42 = load ptr, ptr @mbi_ranges, align 4
  %43 = getelementptr %struct.mbi_range, ptr %42, i32 %40, i32 1
  %44 = tail call i32 @of_property_read_u32_index(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %41, ptr noundef %43) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %38
  %47 = load ptr, ptr @mbi_ranges, align 4
  %48 = getelementptr %struct.mbi_range, ptr %47, i32 %40, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = tail call ptr @bitmap_zalloc(i32 noundef %49, i32 noundef 3264) #9
  %51 = load ptr, ptr @mbi_ranges, align 4
  %52 = getelementptr %struct.mbi_range, ptr %51, i32 %40, i32 2
  store ptr %50, ptr %52, align 4
  %53 = icmp eq ptr %50, null
  br i1 %53, label %91, label %54

54:                                               ; preds = %46
  %55 = getelementptr %struct.mbi_range, ptr %51, i32 %40
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.mbi_range, ptr %51, i32 %40, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %56, -1
  %60 = add i32 %59, %58
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %56, i32 noundef %60) #11
  %62 = add nuw i32 %40, 1
  %63 = load i32, ptr @mbi_range_nr, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load ptr, ptr @mbi_ranges, align 4
  %67 = shl i32 %62, 1
  %68 = getelementptr %struct.mbi_range, ptr %66, i32 %62
  %69 = tail call i32 @of_property_read_u32_index(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %67, ptr noundef %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %38, label %88

71:                                               ; preds = %54, %32
  %72 = tail call ptr @of_get_property(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = tail call i64 @of_translate_address(ptr noundef %14, ptr noundef nonnull %72) #9
  %76 = trunc i64 %75 to i32
  store i32 %76, ptr @mbi_phys_base, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %88, label %84

78:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !9
  %79 = call i32 @of_address_to_resource(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, ptr %3, align 4
  store i32 %82, ptr @mbi_phys_base, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %84

83:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %88

84:                                               ; preds = %81, %74
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @mbi_phys_base) #11
  %86 = call fastcc i32 @mbi_allocate_domains(ptr noundef %1)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %84, %83, %74, %65, %38, %35
  %89 = phi i32 [ -6, %74 ], [ -6, %83 ], [ %86, %84 ], [ %36, %35 ], [ %69, %65 ], [ %44, %38 ]
  %90 = load ptr, ptr @mbi_ranges, align 4
  br label %91

91:                                               ; preds = %88, %46
  %92 = phi ptr [ %90, %88 ], [ %51, %46 ]
  %93 = phi i32 [ %89, %88 ], [ -12, %46 ]
  %94 = icmp eq ptr %92, null
  br i1 %94, label %109, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr @mbi_range_nr, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %98, %95
  %99 = phi ptr [ %106, %98 ], [ %92, %95 ]
  %100 = phi i32 [ %103, %98 ], [ 0, %95 ]
  %101 = getelementptr %struct.mbi_range, ptr %99, i32 %100, i32 2
  %102 = load ptr, ptr %101, align 4
  call void @bitmap_free(ptr noundef %102) #9
  %103 = add nuw i32 %100, 1
  %104 = load i32, ptr @mbi_range_nr, align 4
  %105 = icmp ult i32 %103, %104
  %106 = load ptr, ptr @mbi_ranges, align 4
  br i1 %105, label %98, label %107

107:                                              ; preds = %98, %95
  %108 = phi ptr [ %92, %95 ], [ %106, %98 ]
  call void @kfree(ptr noundef %108) #9
  br label %109

109:                                              ; preds = %107, %91, %84, %28, %27, %17, %13
  %110 = phi i32 [ 0, %13 ], [ -22, %17 ], [ -12, %28 ], [ 0, %84 ], [ %93, %107 ], [ %93, %91 ], [ -12, %27 ]
  ret i32 %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mbi_allocate_domains(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @__irq_domain_add(ptr noundef %3, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @mbi_domain_ops, ptr noundef null) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %4, i32 noundef 5) #9
  %7 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 9
  store ptr %0, ptr %7, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %8, ptr noundef nonnull @mbi_msi_domain_info, ptr noundef nonnull %4) #9
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr %2, align 4
  %12 = tail call ptr @platform_msi_create_irq_domain(ptr noundef %11, ptr noundef nonnull @mbi_pmsi_domain_info, ptr noundef nonnull %4) #9
  %13 = xor i1 %10, true
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  br i1 %14, label %17, label %18

17:                                               ; preds = %16
  tail call void @irq_domain_remove(ptr noundef nonnull %12) #9
  br label %18

18:                                               ; preds = %17, %16
  br i1 %10, label %20, label %19

19:                                               ; preds = %18
  tail call void @irq_domain_remove(ptr noundef nonnull %9) #9
  br label %20

20:                                               ; preds = %19, %18
  tail call void @irq_domain_remove(ptr noundef nonnull %4) #9
  br label %21

21:                                               ; preds = %20, %6, %1
  %22 = phi i32 [ -12, %20 ], [ -12, %1 ], [ 0, %6 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mbi_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  %5 = alloca %struct.irq_fwspec, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mbi_lock) #9
  %6 = load i32, ptr @mbi_range_nr, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  %10 = add i32 %2, -1
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #9, !range !10
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %11, i32 0, i32 %13
  %15 = select i1 %9, i32 -1, i32 %14
  br label %17

16:                                               ; preds = %26, %4
  tail call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #9
  br label %83

17:                                               ; preds = %26, %8
  %18 = phi i32 [ 0, %8 ], [ %27, %26 ]
  %19 = load ptr, ptr @mbi_ranges, align 4
  %20 = getelementptr %struct.mbi_range, ptr %19, i32 %18, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.mbi_range, ptr %19, i32 %18, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @bitmap_find_free_region(ptr noundef %21, i32 noundef %23, i32 noundef %15) #9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = add nuw i32 %18, 1
  %28 = load i32, ptr @mbi_range_nr, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %17, label %16

30:                                               ; preds = %17
  %31 = load ptr, ptr @mbi_ranges, align 4
  %32 = getelementptr %struct.mbi_range, ptr %31, i32 %18
  tail call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  %36 = add i32 %35, %24
  br i1 %9, label %83, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %5, i32 20
  %39 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %40 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  %42 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  %43 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  br label %44

44:                                               ; preds = %73, %37
  %45 = phi i32 [ 0, %37 ], [ %75, %73 ]
  %46 = add i32 %45, %1
  %47 = add i32 %45, %36
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %38, i8 0, i32 52, i1 false) #9, !annotation !9
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr inbounds %struct.irq_domain, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %53 = or i1 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.fwnode_handle, ptr %50, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, @of_fwnode_ops
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  store ptr %50, ptr %5, align 4
  store i32 3, ptr %40, align 4
  store i32 0, ptr %41, align 4
  %59 = add i32 %47, -32
  store i32 %59, ptr %42, align 4
  store i32 1, ptr %43, align 4
  %60 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %46, i32 noundef 1, ptr noundef nonnull %5) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54, %44
  %63 = phi i32 [ -22, %44 ], [ %60, %58 ], [ -22, %54 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  br label %77

64:                                               ; preds = %58
  %65 = load ptr, ptr %39, align 4
  %66 = call ptr @irq_domain_get_irq_data(ptr noundef %65, i32 noundef %46) #9
  %67 = getelementptr inbounds %struct.irq_data, ptr %66, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.irq_chip, ptr %68, i32 0, i32 13
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %66, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %46, i32 noundef %47, ptr noundef nonnull @mbi_irq_chip, ptr noundef nonnull %32) #9
  %75 = add nuw i32 %45, 1
  %76 = icmp eq i32 %75, %2
  br i1 %76, label %83, label %44

77:                                               ; preds = %64, %62
  %78 = phi i32 [ %63, %62 ], [ %71, %64 ]
  call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  call void @mutex_lock(ptr noundef nonnull @mbi_lock) #9
  %79 = getelementptr %struct.mbi_range, ptr %31, i32 %18, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %32, align 4
  %82 = sub i32 %36, %81
  call void @bitmap_release_region(ptr noundef %80, i32 noundef %82, i32 noundef %14) #9
  call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #9
  br label %83

83:                                               ; preds = %77, %73, %34, %30, %16
  %84 = phi i32 [ %78, %77 ], [ -28, %30 ], [ -28, %16 ], [ 0, %34 ], [ 0, %73 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mbi_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mbi_lock) #9
  %9 = getelementptr inbounds %struct.mbi_range, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = add i32 %2, -1
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #9, !range !10
  %17 = sub nuw nsw i32 32, %16
  %18 = select i1 %15, i32 0, i32 %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ %18, %13 ], [ -1, %3 ]
  %21 = sub i32 %8, %11
  tail call void @bitmap_release_region(ptr noundef %10, i32 noundef %21, i32 noundef %20) #9
  tail call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #9
  tail call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mbi_mask_msi_irq(ptr noundef %0) #5 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #9
  tail call void @irq_chip_mask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mbi_unmask_msi_irq(ptr noundef %0) #5 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #9
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mbi_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr @mbi_phys_base, align 4
  %5 = add i32 %4, 64
  store i32 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mbi_compose_mbi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr @mbi_phys_base, align 4
  %5 = add i32 %4, 64
  store i32 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr %struct.msi_msg, ptr %1, i32 1
  %12 = getelementptr %struct.msi_msg, ptr %1, i32 1, i32 1
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr @mbi_phys_base, align 4
  %14 = add i32 %13, 72
  store i32 %14, ptr %11, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.irq_data, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.msi_msg, ptr %1, i32 1, i32 2
  store i32 %17, ptr %18, align 4
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!10 = !{i32 0, i32 33}
