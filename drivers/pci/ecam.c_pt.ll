; ModuleID = '/llk/IR/drivers/pci/ecam.c_pt.bc'
source_filename = "../drivers/pci/ecam.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ecam_create:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ecam_create\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ecam_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ecam_free:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ecam_free\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ecam_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ecam_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ecam_map_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ecam_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_generic_ecam_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_generic_ecam_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pci_generic_ecam_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_config_window = type { %struct.resource, %struct.resource, i32, ptr, ptr, %union.anon.61, ptr }
%union.anon.61 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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

@.str = private unnamed_addr constant [67 x i8] c"ECAM area %pR can only accommodate %pR (reduced from %pR desired)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PCI ECAM\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"can't claim ECAM area %pR: address conflict with %s %pR\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ECAM at %pR for %pR\0A\00", align 1
@__kstrtab_pci_ecam_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ecam_create = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ecam_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ecam_create to i32), ptr @__kstrtab_pci_ecam_create, ptr @__kstrtabns_pci_ecam_create }, section "___ksymtab_gpl+pci_ecam_create", align 4
@__kstrtab_pci_ecam_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ecam_free = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ecam_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ecam_free to i32), ptr @__kstrtab_pci_ecam_free, ptr @__kstrtabns_pci_ecam_free }, section "___ksymtab_gpl+pci_ecam_free", align 4
@__kstrtab_pci_ecam_map_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ecam_map_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ecam_map_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ecam_map_bus to i32), ptr @__kstrtab_pci_ecam_map_bus, ptr @__kstrtabns_pci_ecam_map_bus }, section "___ksymtab_gpl+pci_ecam_map_bus", align 4
@pci_generic_ecam_ops = dso_local constant %struct.pci_ecam_ops { i32 0, %struct.pci_ops { ptr @pci_ecam_add_bus, ptr @pci_ecam_remove_bus, ptr @pci_ecam_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, ptr null }, align 4
@__kstrtab_pci_generic_ecam_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_generic_ecam_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_generic_ecam_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_generic_ecam_ops to i32), ptr @__kstrtab_pci_generic_ecam_ops, ptr @__kstrtabns_pci_generic_ecam_ops }, section "___ksymtab_gpl+pci_generic_ecam_ops", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_ecam_create, ptr @__ksymtab_pci_ecam_free, ptr @__ksymtab_pci_ecam_map_bus, ptr @__ksymtab_pci_generic_ecam_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_ecam_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %109, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 84) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %109, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %5, 0
  %16 = select i1 %15, i32 20, i32 %5
  %17 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 6
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 4
  store ptr %3, ptr %18, align 8
  %19 = load i32, ptr %2, align 4
  %20 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 1
  store i32 %19, ptr %20, align 8
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 1, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 1, i32 3
  store i32 4096, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 2
  store i32 %16, ptr %24, align 8
  %25 = sub i32 1, %19
  %26 = add i32 %25, %21
  %27 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %1, align 4
  %30 = add i32 %28, 1
  %31 = sub i32 %30, %29
  %32 = lshr i32 %31, %16
  %33 = icmp ugt i32 %26, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %14
  %35 = add i32 %19, -1
  %36 = add i32 %35, %32
  store i32 %36, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %20, ptr noundef %2) #8
  %37 = load i32, ptr %1, align 4
  %38 = load i32, ptr %27, align 4
  br label %39

39:                                               ; preds = %34, %14
  %40 = phi i32 [ %38, %34 ], [ %28, %14 ]
  %41 = phi i32 [ %37, %34 ], [ %29, %14 ]
  %42 = phi i32 [ %32, %34 ], [ %26, %14 ]
  store i32 %41, ptr %12, align 8
  %43 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  store i32 %40, ptr %43, align 4
  %44 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3
  store i32 -2147483136, ptr %44, align 4
  %45 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 2
  store ptr @.str.1, ptr %45, align 8
  %46 = tail call ptr @request_resource_conflict(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %12) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %12, ptr noundef %50, ptr noundef nonnull %46) #8
  br label %69

51:                                               ; preds = %39
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 4) #9
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %54, label %56, !prof !8

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 5
  store ptr null, ptr %55, align 4
  br label %69

56:                                               ; preds = %51
  %57 = extractvalue { i32, i1 } %52, 0
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #10
  %59 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 5
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.pci_ecam_ops, ptr %3, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = tail call i32 %63(ptr noundef nonnull %12) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %61
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %12, ptr noundef %20) #8
  br label %109

69:                                               ; preds = %65, %56, %54, %48
  %70 = phi i32 [ -16, %48 ], [ %66, %65 ], [ -12, %56 ], [ -12, %54 ]
  %71 = getelementptr inbounds %struct.pci_config_window, ptr %12, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %22, align 4
  %76 = load i32, ptr %20, align 8
  %77 = add i32 %75, 1
  %78 = icmp eq i32 %77, %76
  br i1 %78, label %99, label %79

79:                                               ; preds = %91, %74
  %80 = phi ptr [ %92, %91 ], [ %72, %74 ]
  %81 = phi i32 [ %93, %91 ], [ %76, %74 ]
  %82 = phi i32 [ %94, %91 ], [ %75, %74 ]
  %83 = phi i32 [ %95, %91 ], [ 0, %74 ]
  %84 = getelementptr ptr, ptr %80, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  tail call void @iounmap(ptr noundef nonnull %85) #9
  %88 = load i32, ptr %22, align 4
  %89 = load i32, ptr %20, align 8
  %90 = load ptr, ptr %71, align 4
  br label %91

91:                                               ; preds = %87, %79
  %92 = phi ptr [ %80, %79 ], [ %90, %87 ]
  %93 = phi i32 [ %81, %79 ], [ %89, %87 ]
  %94 = phi i32 [ %82, %79 ], [ %88, %87 ]
  %95 = add nuw i32 %83, 1
  %96 = sub i32 1, %93
  %97 = add i32 %96, %94
  %98 = icmp ult i32 %95, %97
  br i1 %98, label %79, label %99

99:                                               ; preds = %91, %74
  %100 = phi ptr [ %72, %74 ], [ %92, %91 ]
  tail call void @kfree(ptr noundef %100) #9
  br label %101

101:                                              ; preds = %99, %69
  %102 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @release_resource(ptr noundef nonnull %12) #9
  br label %107

107:                                              ; preds = %105, %101
  tail call void @kfree(ptr noundef nonnull %12) #9
  %108 = inttoptr i32 %70 to ptr
  br label %109

109:                                              ; preds = %107, %68, %10, %4
  %110 = phi ptr [ %108, %107 ], [ %12, %68 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %110
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_ecam_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_config_window, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_config_window, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.pci_config_window, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %8, 1
  %11 = icmp eq i32 %10, %9
  br i1 %11, label %31, label %12

12:                                               ; preds = %23, %5
  %13 = phi i32 [ %24, %23 ], [ %9, %5 ]
  %14 = phi i32 [ %25, %23 ], [ %8, %5 ]
  %15 = phi ptr [ %30, %23 ], [ %3, %5 ]
  %16 = phi i32 [ %26, %23 ], [ 0, %5 ]
  %17 = getelementptr ptr, ptr %15, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  tail call void @iounmap(ptr noundef nonnull %18) #9
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %6, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = phi i32 [ %13, %12 ], [ %22, %20 ]
  %25 = phi i32 [ %14, %12 ], [ %21, %20 ]
  %26 = add nuw i32 %16, 1
  %27 = add i32 %25, 1
  %28 = sub i32 %27, %24
  %29 = icmp ult i32 %26, %28
  %30 = load ptr, ptr %2, align 4
  br i1 %29, label %12, label %31

31:                                               ; preds = %23, %5
  %32 = phi ptr [ %3, %5 ], [ %30, %23 ]
  tail call void @kfree(ptr noundef %32) #9
  br label %33

33:                                               ; preds = %31, %1
  %34 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @release_resource(ptr noundef %0) #9
  br label %39

39:                                               ; preds = %37, %33
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @pci_ecam_map_bus(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_config_window, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.pci_config_window, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %39, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.pci_config_window, ptr %5, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %12
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = sub i32 %12, %14
  %22 = getelementptr inbounds %struct.pci_config_window, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %21
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq i32 %8, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = and i32 %1, 255
  %29 = shl i32 %28, %9
  %30 = and i32 %2, 4095
  %31 = or i32 %29, %30
  %32 = getelementptr i8, ptr %25, i32 %31
  br label %39

33:                                               ; preds = %20
  %34 = shl i32 %1, 12
  %35 = and i32 %34, 1044480
  %36 = and i32 %2, 4095
  %37 = or i32 %35, %36
  %38 = getelementptr i8, ptr %25, i32 %37
  br label %39

39:                                               ; preds = %33, %27, %16, %3
  %40 = phi ptr [ %32, %27 ], [ %38, %33 ], [ null, %16 ], [ null, %3 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_ecam_add_bus(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %9
  br i1 %12, label %31, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %9
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = sub i32 %9, %11
  %19 = load i32, ptr %3, align 4
  %20 = shl i32 %18, %5
  %21 = add i32 %19, %20
  %22 = tail call ptr @pci_remap_cfgspace(i32 noundef %21, i32 noundef %6) #9
  %23 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %24, i32 %18
  store ptr %22, ptr %25, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr ptr, ptr %26, i32 %18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i32 -12, i32 0
  br label %31

31:                                               ; preds = %17, %13, %1
  %32 = phi i32 [ -22, %13 ], [ -22, %1 ], [ %30, %17 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_ecam_remove_bus(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %6
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = sub i32 %6, %8
  %16 = getelementptr inbounds %struct.pci_config_window, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  tail call void @iounmap(ptr noundef nonnull %19) #9
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr ptr, ptr %22, i32 %15
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %14, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_remap_cfgspace(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
