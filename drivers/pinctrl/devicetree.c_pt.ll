; ModuleID = '/llk/IR/drivers/pinctrl/devicetree.c_pt.bc'
source_filename = "../drivers/pinctrl/devicetree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pinctrl_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pinctrl_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_pinctrl_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_count_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_count_index_with_args\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_count_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_parse_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_parse_index_with_args\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_parse_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.list_head, %struct.kref }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pinctrl_dt_map = type { %struct.list_head, ptr, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_of_pinctrl_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pinctrl_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pinctrl_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pinctrl_get to i32), ptr @__kstrtab_of_pinctrl_get, ptr @__kstrtabns_of_pinctrl_get }, section "___ksymtab_gpl+of_pinctrl_get", align 4
@.str = private unnamed_addr constant [11 x i8] c"pinctrl-%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pinctrl-names\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"prop %s index %i invalid phandle\0A\00", align 1
@__kstrtab_pinctrl_count_index_with_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_count_index_with_args = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_count_index_with_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_count_index_with_args to i32), ptr @__kstrtab_pinctrl_count_index_with_args, ptr @__kstrtabns_pinctrl_count_index_with_args }, section "___ksymtab_gpl+pinctrl_count_index_with_args", align 4
@__kstrtab_pinctrl_parse_index_with_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_parse_index_with_args = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_parse_index_with_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_parse_index_with_args to i32), ptr @__kstrtab_pinctrl_parse_index_with_args, ptr @__kstrtabns_pinctrl_parse_index_with_args }, section "___ksymtab_gpl+pinctrl_parse_index_with_args", align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"pinctrl-use-default\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"pctldev %s doesn't support DT\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"there is not valid maps for state %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"#pinctrl-cells\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_of_pinctrl_get, ptr @__ksymtab_pinctrl_count_index_with_args, ptr @__ksymtab_pinctrl_parse_index_with_args], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinctrl_dt_free_maps(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pinctrl, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %40, label %5

5:                                                ; preds = %38, %1
  %6 = phi ptr [ %7, %38 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @pinctrl_unregister_mappings(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %6, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %20, %5
  %21 = phi i32 [ %24, %20 ], [ 0, %5 ]
  %22 = getelementptr %struct.pinctrl_map, ptr %16, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree_const(ptr noundef %23) #7
  store ptr null, ptr %22, align 4
  %24 = add nuw i32 %21, 1
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %5
  %27 = icmp eq ptr %15, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.pinctrl_dev, ptr %15, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pinctrl_ops, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  tail call void %34(ptr noundef nonnull %15, ptr noundef %16, i32 noundef %18) #7
  br label %38

37:                                               ; preds = %26
  tail call void @kfree(ptr noundef %16) #7
  br label %38

38:                                               ; preds = %37, %36, %28
  tail call void @kfree(ptr noundef %6) #7
  %39 = icmp eq ptr %7, %2
  br i1 %39, label %40, label %5

40:                                               ; preds = %38, %1
  %41 = getelementptr inbounds %struct.pinctrl, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 25
  %44 = load ptr, ptr %43, align 8
  tail call void @of_node_put(ptr noundef %44) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister_mappings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_pinctrl_get(ptr noundef %0) #0 {
  %2 = tail call ptr @get_pinctrl_dev_from_of_node(ptr noundef %0) #7
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pinctrl_dev_from_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_dt_to_map(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.pinctrl, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %145, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @of_node_get(ptr noundef nonnull %10) #7
  %14 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef 0) #7
  %15 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef %14, ptr noundef nonnull %6) #7
  call void @kfree(ptr noundef %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %1, null
  br label %22

19:                                               ; preds = %138
  %20 = icmp eq i32 %139, 0
  br i1 %20, label %21, label %145

21:                                               ; preds = %19, %12
  call void @of_node_put(ptr noundef nonnull %10) #7
  br label %145

22:                                               ; preds = %138, %17
  %23 = phi ptr [ %15, %17 ], [ %141, %138 ]
  %24 = phi i32 [ 0, %17 ], [ %139, %138 ]
  %25 = getelementptr inbounds %struct.property, ptr %23, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = lshr i32 %27, 2
  store i32 %28, ptr %6, align 4
  %29 = call i32 @of_property_read_string_helper(ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %24) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  store ptr %33, ptr %5, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, ptr %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %126

37:                                               ; preds = %122, %34
  %38 = phi i32 [ %123, %122 ], [ 0, %34 ]
  %39 = phi ptr [ %40, %122 ], [ %26, %34 ]
  %40 = getelementptr i32, ptr %39, i32 1
  %41 = load i32, ptr %39, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = call ptr @of_find_node_by_phandle(i32 noundef %42) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.2, ptr noundef %47, i32 noundef %38) #8
  br label %143

48:                                               ; preds = %37
  %49 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %50 = call ptr @of_node_get(ptr noundef nonnull %43) #7
  br label %51

51:                                               ; preds = %80, %48
  %52 = phi ptr [ %50, %48 ], [ %59, %80 ]
  %53 = phi i1 [ false, %48 ], [ %58, %80 ]
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call ptr @of_find_property(ptr noundef %52, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %56 = icmp ne ptr %55, null
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ true, %51 ], [ %56, %54 ]
  %59 = call ptr @of_get_next_parent(ptr noundef %52) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.device_node, ptr %59, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %57
  call void @of_node_put(ptr noundef %59) #7
  %66 = load ptr, ptr %7, align 4
  %67 = call i32 @driver_deferred_probe_check_state(ptr noundef %66) #7
  %68 = xor i1 %58, true
  %69 = icmp slt i32 %67, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %117, label %119

71:                                               ; preds = %61
  br i1 %18, label %77, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 25
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %59, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %72, %71
  %78 = call ptr @get_pinctrl_dev_from_of_node(ptr noundef nonnull %59) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 25
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %59, %83
  br i1 %84, label %85, label %51

85:                                               ; preds = %80
  call void @of_node_put(ptr noundef nonnull %59) #7
  br label %117

86:                                               ; preds = %77, %72
  %87 = phi ptr [ %78, %77 ], [ %1, %72 ]
  call void @of_node_put(ptr noundef nonnull %59) #7
  %88 = getelementptr inbounds %struct.pinctrl_dev, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.pinctrl_desc, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.pinctrl_ops, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load ptr, ptr %7, align 4
  %97 = getelementptr inbounds %struct.pinctrl_dev, ptr %87, i32 0, i32 8
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load ptr, ptr %98, align 4
  br label %104

104:                                              ; preds = %102, %95
  %105 = phi ptr [ %103, %102 ], [ %100, %95 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.4, ptr noundef %105) #8
  br label %117

106:                                              ; preds = %86
  %107 = call i32 %93(ptr noundef nonnull %87, ptr noundef nonnull %43, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %4, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.5, ptr noundef %49) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @of_node_put(ptr noundef nonnull %43) #7
  br label %122

114:                                              ; preds = %109
  %115 = load ptr, ptr %3, align 4
  %116 = call fastcc i32 @dt_remember_or_free_map(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %87, ptr noundef %115, i32 noundef %110) #7
  br label %119

117:                                              ; preds = %106, %104, %85, %65
  %118 = phi i32 [ -19, %85 ], [ -19, %104 ], [ -517, %65 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @of_node_put(ptr noundef nonnull %43) #7
  br label %143

119:                                              ; preds = %114, %65
  %120 = phi i32 [ %67, %65 ], [ %116, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @of_node_put(ptr noundef nonnull %43) #7
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %119, %112
  %123 = add nuw nsw i32 %38, 1
  %124 = load i32, ptr %6, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %37, label %126

126:                                              ; preds = %122, %34
  %127 = phi i32 [ %35, %34 ], [ %124, %122 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load ptr, ptr %5, align 4
  %131 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %132 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3520, i32 noundef 28) #9
  %133 = icmp eq ptr %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.pinctrl_map, ptr %132, i32 0, i32 2
  store i32 1, ptr %135, align 8
  %136 = call fastcc i32 @dt_remember_or_free_map(ptr noundef %0, ptr noundef %130, ptr noundef null, ptr noundef nonnull %132, i32 noundef 1) #7
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134, %126
  %139 = add i32 %24, 1
  %140 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %139) #7
  %141 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef %140, ptr noundef nonnull %6) #7
  call void @kfree(ptr noundef %140) #7
  %142 = icmp eq ptr %141, null
  br i1 %142, label %19, label %22

143:                                              ; preds = %134, %129, %119, %117, %45
  %144 = phi i32 [ -22, %45 ], [ %118, %117 ], [ %120, %119 ], [ -12, %129 ], [ %136, %134 ]
  call void @pinctrl_dt_free_maps(ptr noundef %0)
  br label %145

145:                                              ; preds = %143, %21, %19, %2
  %146 = phi i32 [ %144, %143 ], [ -19, %21 ], [ 0, %19 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_count_index_with_args(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call ptr @of_get_property(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %22

19:                                               ; preds = %12, %7
  %20 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %18, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %28

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = lshr i32 %24, 2
  %26 = add nuw i32 %20, 1
  %27 = udiv i32 %25, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ %27, %23 ], [ -2, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_parse_index_with_args(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call ptr @of_get_property(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %24

21:                                               ; preds = %14, %9
  %22 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %20, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %49

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = lshr i32 %26, 2
  %30 = add nuw i32 %22, 1
  %31 = udiv i32 %29, %30
  %32 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %32, i8 0, i32 64, i1 false) #7
  store ptr %0, ptr %3, align 4
  %33 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  store i32 %30, ptr %33, align 4
  %34 = icmp sgt i32 %31, %2
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = icmp ult i32 %22, 2147483647
  br i1 %36, label %37, label %49

37:                                               ; preds = %35
  %38 = mul i32 %30, %2
  %39 = getelementptr i32, ptr %7, i32 %38
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi i32 [ %47, %40 ], [ 0, %37 ]
  %42 = phi ptr [ %43, %40 ], [ %39, %37 ]
  %43 = getelementptr i32, ptr %42, i32 1
  %44 = load i32, ptr %42, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = getelementptr %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 %41
  store i32 %45, ptr %46, align 4
  %47 = add nuw nsw i32 %41, 1
  %48 = icmp eq i32 %41, %22
  br i1 %48, label %49, label %40

49:                                               ; preds = %40, %35, %28, %25, %24
  %50 = phi i32 [ 0, %25 ], [ -2, %24 ], [ -22, %28 ], [ 0, %35 ], [ 0, %40 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_deferred_probe_check_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dt_remember_or_free_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.pinctrl, ptr %0, i32 0, i32 1
  %9 = icmp eq ptr %2, null
  %10 = getelementptr inbounds %struct.pinctrl_dev, ptr %2, i32 0, i32 8
  br label %11

11:                                               ; preds = %36, %7
  %12 = phi i32 [ 0, %7 ], [ %37, %36 ]
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %18, %17 ], [ %15, %11 ]
  %21 = tail call ptr @kstrdup_const(ptr noundef %20, i32 noundef 3264) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.pinctrl_map, ptr %3, i32 %12
  store ptr %21, ptr %24, align 4
  %25 = getelementptr %struct.pinctrl_map, ptr %3, i32 %12, i32 1
  store ptr %1, ptr %25, align 4
  br i1 %9, label %36, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %29, %26 ]
  %35 = getelementptr %struct.pinctrl_map, ptr %3, i32 %12, i32 3
  store ptr %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = add nuw i32 %12, 1
  %38 = icmp eq i32 %37, %4
  br i1 %38, label %39, label %11

39:                                               ; preds = %36, %5
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 20) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %41, i32 0, i32 1
  store ptr %2, ptr %44, align 8
  %45 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %41, i32 0, i32 2
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %41, i32 0, i32 3
  store i32 %4, ptr %46, align 8
  %47 = getelementptr inbounds %struct.pinctrl, ptr %0, i32 0, i32 4
  %48 = getelementptr inbounds %struct.pinctrl, ptr %0, i32 0, i32 4, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %41, ptr %48, align 4
  store ptr %47, ptr %41, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %41, ptr %49, align 4
  %51 = tail call i32 @pinctrl_register_mappings(ptr noundef %3, i32 noundef %4) #7
  br label %71

52:                                               ; preds = %39, %19
  br i1 %6, label %59, label %53

53:                                               ; preds = %53, %52
  %54 = phi i32 [ %57, %53 ], [ 0, %52 ]
  %55 = getelementptr %struct.pinctrl_map, ptr %3, i32 %54
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree_const(ptr noundef %56) #7
  store ptr null, ptr %55, align 4
  %57 = add nuw i32 %54, 1
  %58 = icmp eq i32 %57, %4
  br i1 %58, label %59, label %53

59:                                               ; preds = %53, %52
  %60 = icmp eq ptr %2, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.pinctrl_dev, ptr %2, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.pinctrl_desc, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.pinctrl_ops, ptr %65, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  tail call void %67(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4) #7
  br label %71

70:                                               ; preds = %59
  tail call void @kfree(ptr noundef %3) #7
  br label %71

71:                                               ; preds = %70, %69, %61, %43
  %72 = phi i32 [ %51, %43 ], [ -12, %61 ], [ -12, %69 ], [ -12, %70 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_mappings(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
