; ModuleID = '/llk/IR/drivers/net/mdio/mdio-mux.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_mux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_mux_init\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_mux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_mux_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_mux_uninit\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_mux_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mdio_mux_parent_bus = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.mdio_mux_child_bus = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [16 x i8] c"mdio-parent-bus\00", align 1
@parent_count = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Error: Failed to find reg for child %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mdio_mux\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%x.%x\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Error: Failed to register MDIO bus for child %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Error: No acceptable child buses found\0A\00", align 1
@__kstrtab_mdio_mux_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_mux_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_mux_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_mux_init to i32), ptr @__kstrtab_mdio_mux_init, ptr @__kstrtabns_mdio_mux_init }, section "___ksymtab_gpl+mdio_mux_init", align 4
@__kstrtab_mdio_mux_uninit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_mux_uninit = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_mux_uninit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_mux_uninit to i32), ptr @__kstrtab_mdio_mux_uninit, ptr @__kstrtabns_mdio_mux_uninit }, section "___ksymtab_gpl+mdio_mux_uninit", align 4
@__UNIQUE_ID_description273 = internal constant [49 x i8] c"mdio_mux.description=MDIO bus multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [28 x i8] c"mdio_mux.author=David Daney\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [40 x i8] c"mdio_mux.file=drivers/net/mdio/mdio-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [24 x i8] c"mdio_mux.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__ksymtab_mdio_mux_init, ptr @__ksymtab_mdio_mux_uninit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdio_mux_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = alloca i32, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false) #6, !annotation !8
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7) #6
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #6
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %110, label %18

18:                                               ; preds = %12
  %19 = call ptr @of_mdio_find_bus(ptr noundef nonnull %15) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %107, label %24

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  %23 = tail call ptr @get_device(ptr noundef %22) #6
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi ptr [ null, %21 ], [ %15, %18 ]
  %26 = phi ptr [ %5, %21 ], [ %19, %18 ]
  %27 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %104, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 3
  store ptr %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 4
  store ptr %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 1
  store i32 -1, ptr %32, align 4
  %33 = load i32, ptr @parent_count, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr @parent_count, align 4
  %35 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 2
  store i32 %33, ptr %35, align 4
  store ptr %26, ptr %27, align 4
  %36 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %84, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 5
  br label %40

40:                                               ; preds = %81, %38
  %41 = phi ptr [ %36, %38 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %41, ptr noundef nonnull @.str.1, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #6
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %41) #7
  br label %81

45:                                               ; preds = %40
  %46 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 16, i32 noundef 3520) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %79, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %8, align 4
  %50 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %46, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %46, i32 0, i32 1
  store ptr %27, ptr %51, align 4
  %52 = call ptr @mdiobus_alloc_size(i32 noundef 0) #6
  store ptr %52, ptr %46, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %79, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 3
  store ptr %46, ptr %55, align 8
  %56 = load ptr, ptr %46, align 4
  %57 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 1
  store ptr @.str.3, ptr %57, align 4
  %58 = load ptr, ptr %46, align 4
  %59 = getelementptr inbounds %struct.mii_bus, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %35, align 4
  %61 = load i32, ptr %8, align 4
  %62 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %59, i32 noundef 61, ptr noundef nonnull @.str.4, i32 noundef %60, i32 noundef %61)
  %63 = load ptr, ptr %46, align 4
  %64 = getelementptr inbounds %struct.mii_bus, ptr %63, i32 0, i32 9
  store ptr %0, ptr %64, align 4
  %65 = load ptr, ptr %46, align 4
  %66 = getelementptr inbounds %struct.mii_bus, ptr %65, i32 0, i32 4
  store ptr @mdio_mux_read, ptr %66, align 4
  %67 = load ptr, ptr %46, align 4
  %68 = getelementptr inbounds %struct.mii_bus, ptr %67, i32 0, i32 5
  store ptr @mdio_mux_write, ptr %68, align 8
  %69 = load ptr, ptr %46, align 4
  %70 = call i32 @of_mdiobus_register(ptr noundef %69, ptr noundef nonnull %41) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %54
  %73 = load ptr, ptr %46, align 4
  call void @mdiobus_free(ptr noundef %73) #6
  %74 = icmp eq i32 %70, -517
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %46) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %41) #7
  br label %81

76:                                               ; preds = %54
  %77 = load ptr, ptr %39, align 4
  %78 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %46, i32 0, i32 2
  store ptr %77, ptr %78, align 4
  store ptr %46, ptr %39, align 4
  br label %81

79:                                               ; preds = %72, %48, %45
  %80 = phi i32 [ -12, %45 ], [ -12, %48 ], [ -517, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %90

81:                                               ; preds = %76, %75, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %82 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %41) #6
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %40

84:                                               ; preds = %81, %29
  %85 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store ptr %27, ptr %3, align 4
  br label %110

89:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %90

90:                                               ; preds = %89, %79
  %91 = phi ptr [ %41, %79 ], [ null, %89 ]
  %92 = phi i32 [ %80, %79 ], [ -19, %89 ]
  %93 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %27, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %96, %90
  %97 = phi ptr [ %101, %96 ], [ %94, %90 ]
  %98 = load ptr, ptr %97, align 4
  call void @mdiobus_unregister(ptr noundef %98) #6
  %99 = load ptr, ptr %97, align 4
  call void @mdiobus_free(ptr noundef %99) #6
  %100 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %97, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %96

103:                                              ; preds = %96, %90
  call void @of_node_put(ptr noundef %91) #6
  br label %104

104:                                              ; preds = %103, %24
  %105 = phi i32 [ %92, %103 ], [ -12, %24 ]
  %106 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 11
  call void @put_device(ptr noundef %106) #6
  br label %107

107:                                              ; preds = %104, %18
  %108 = phi ptr [ %25, %104 ], [ %15, %18 ]
  %109 = phi i32 [ %105, %104 ], [ -517, %18 ]
  call void @of_node_put(ptr noundef %108) #6
  br label %110

110:                                              ; preds = %107, %88, %12, %6
  %111 = phi i32 [ %109, %107 ], [ 0, %88 ], [ -19, %6 ], [ -19, %12 ]
  ret i32 %111
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mdio_find_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %11(i32 noundef %13, i32 noundef %15, ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, ptr %14, align 4
  store i32 %21, ptr %12, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %22, i32 noundef %1, i32 noundef %2) #6
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i32 [ %18, %3 ], [ %25, %20 ]
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %29) #6
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %6, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %8, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %12(i32 noundef %14, i32 noundef %16, ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, ptr %15, align 4
  store i32 %22, ptr %13, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 %25(ptr noundef %23, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #6
  br label %27

27:                                               ; preds = %21, %4
  %28 = phi i32 [ %19, %4 ], [ %26, %21 ]
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %30) #6
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdio_mux_uninit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  tail call void @mdiobus_unregister(ptr noundef %7) #6
  %8 = load ptr, ptr %6, align 4
  tail call void @mdiobus_free(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 11
  tail call void @put_device(ptr noundef %14) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
