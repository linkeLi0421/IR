; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_du_of.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_du_of_overlay = type { ptr, ptr, ptr }
%struct.of_changeset = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lvds_of_data = type { %struct.resource, %struct.of_phandle_args, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@.str = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_of.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"renesas,%s-lvds\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"lvds.%u\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@rcar_du_lvds_overlays = internal constant [6 x %struct.rcar_du_of_overlay] [%struct.rcar_du_of_overlay { ptr @.str.7, ptr @__dtb_rcar_du_of_lvds_r8a7790_begin, ptr @__dtb_rcar_du_of_lvds_r8a7790_end }, %struct.rcar_du_of_overlay { ptr @.str.8, ptr @__dtb_rcar_du_of_lvds_r8a7791_begin, ptr @__dtb_rcar_du_of_lvds_r8a7791_end }, %struct.rcar_du_of_overlay { ptr @.str.9, ptr @__dtb_rcar_du_of_lvds_r8a7793_begin, ptr @__dtb_rcar_du_of_lvds_r8a7793_end }, %struct.rcar_du_of_overlay { ptr @.str.10, ptr @__dtb_rcar_du_of_lvds_r8a7795_begin, ptr @__dtb_rcar_du_of_lvds_r8a7795_end }, %struct.rcar_du_of_overlay { ptr @.str.11, ptr @__dtb_rcar_du_of_lvds_r8a7796_begin, ptr @__dtb_rcar_du_of_lvds_r8a7796_end }, %struct.rcar_du_of_overlay zeroinitializer], section ".init.rodata", align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"renesas,du-r8a7790\00", align 1
@__dtb_rcar_du_of_lvds_r8a7790_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7790_end = external dso_local global [0 x i8], align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"renesas,du-r8a7791\00", align 1
@__dtb_rcar_du_of_lvds_r8a7791_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7791_end = external dso_local global [0 x i8], align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"renesas,du-r8a7793\00", align 1
@__dtb_rcar_du_of_lvds_r8a7793_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7793_end = external dso_local global [0 x i8], align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"renesas,du-r8a7795\00", align 1
@__dtb_rcar_du_of_lvds_r8a7795_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7795_end = external dso_local global [0 x i8], align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"renesas,du-r8a7796\00", align 1
@__dtb_rcar_du_of_lvds_r8a7796_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7796_end = external dso_local global [0 x i8], align 1
@rcar_du_lvds_changeset = internal global %struct.of_changeset zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rcar_du_of_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @rcar_du_of_lvds_patch(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcar_du_of_lvds_patch(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca [2 x %struct.lvds_of_data], align 4
  %4 = alloca [22 x i8], align 1
  %5 = alloca [7 x i8], align 1
  %6 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(224) %3, i8 0, i32 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %4, i8 0, i32 22, i1 false), !annotation !8
  %7 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %7) #9
  br i1 %10, label %12, label %11

11:                                               ; preds = %9, %1
  call void @of_node_put(ptr noundef %7) #9
  br label %111

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @of_get_parent(ptr noundef nonnull %7) #9
  %17 = getelementptr inbounds %struct.rcar_du_device_info, ptr %15, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 2
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef null) #9
  br label %96

21:                                               ; preds = %12
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 2
  %24 = call ptr @strchr(ptr noundef %23, i32 noundef 45)
  %25 = getelementptr i8, ptr %24, i32 1
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef %25)
  %27 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, ptr %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %33

32:                                               ; preds = %21
  call void @of_node_put(ptr noundef nonnull %27) #9
  br label %111

33:                                               ; preds = %59, %29
  %34 = phi i32 [ %60, %59 ], [ 0, %29 ]
  %35 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %34
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !8
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, i32 noundef %34)
  %37 = call i32 @of_property_match_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %33
  %40 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %34, i32 1
  %41 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef %37, ptr noundef %40) #9
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = add i32 %34, 6
  %45 = getelementptr %struct.rcar_du_device_info, ptr %15, i32 0, i32 4, i32 %44, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef nonnull %7, i32 noundef %46, i32 noundef 0) #9
  %48 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %34, i32 2
  store ptr %47, ptr %48, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %47) #9
  %52 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %34, i32 3
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = call i32 @of_property_match_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #9
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 @of_address_to_resource(ptr noundef nonnull %7, i32 noundef %55, ptr noundef %35) #9
  br label %59

59:                                               ; preds = %57, %54, %50, %43, %39, %33
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #9
  %60 = add nuw i32 %34, 1
  %61 = load i32, ptr %17, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %33, label %63

63:                                               ; preds = %59, %29
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.of_device_id, ptr %64, i32 0, i32 2
  %66 = call fastcc i32 @rcar_du_of_apply_overlay(ptr noundef %65) #8
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %63
  %69 = call ptr @of_get_next_child(ptr noundef %16, ptr noundef null) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %96, label %71

71:                                               ; preds = %93, %68
  %72 = phi ptr [ %94, %93 ], [ %69, %68 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %73 = call i32 @of_device_is_compatible(ptr noundef nonnull %72, ptr noundef nonnull %4) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = call i32 @of_address_to_resource(ptr noundef nonnull %72, i32 noundef 0, ptr noundef nonnull %6) #9
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 4
  br label %80

80:                                               ; preds = %86, %78
  %81 = phi i1 [ true, %78 ], [ false, %86 ]
  %82 = phi i32 [ 0, %78 ], [ 1, %86 ]
  %83 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %79
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br i1 %81, label %80, label %93

87:                                               ; preds = %80
  %88 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %82, i32 1
  %89 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %82, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %82, i32 3
  %92 = load ptr, ptr %91, align 4
  call fastcc void @rcar_du_of_lvds_patch_one(ptr noundef nonnull %72, ptr noundef %88, ptr noundef %90, ptr noundef %92) #8
  br label %93

93:                                               ; preds = %87, %86, %75, %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  %94 = call ptr @of_get_next_child(ptr noundef %16, ptr noundef nonnull %72) #9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %71

96:                                               ; preds = %93, %68, %63, %20
  %97 = load i32, ptr %17, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %99, %96
  %100 = phi i32 [ %107, %99 ], [ 0, %96 ]
  %101 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %100, i32 1
  %102 = load ptr, ptr %101, align 4
  call void @of_node_put(ptr noundef %102) #9
  %103 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %100, i32 2
  %104 = load ptr, ptr %103, align 4
  call void @of_node_put(ptr noundef %104) #9
  %105 = getelementptr [2 x %struct.lvds_of_data], ptr %3, i32 0, i32 %100, i32 3
  %106 = load ptr, ptr %105, align 4
  call void @of_node_put(ptr noundef %106) #9
  %107 = add nuw i32 %100, 1
  %108 = load i32, ptr %17, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %99, label %110

110:                                              ; preds = %99, %96
  call void @of_node_put(ptr noundef %16) #9
  call void @of_node_put(ptr noundef nonnull %7) #9
  br label %111

111:                                              ; preds = %110, %32, %11
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_of_apply_overlay(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(19) @.str.7, ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %10

5:                                                ; preds = %10
  %6 = getelementptr %struct.rcar_du_of_overlay, ptr @rcar_du_lvds_overlays, i32 %12
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %28, label %5

14:                                               ; preds = %5
  %15 = icmp eq ptr %6, null
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i1 [ %15, %14 ], [ false, %1 ]
  %18 = phi i32 [ %12, %14 ], [ 0, %1 ]
  br i1 %17, label %28, label %19

19:                                               ; preds = %16
  store i32 0, ptr %2, align 4
  %20 = getelementptr %struct.rcar_du_of_overlay, ptr @rcar_du_lvds_overlays, i32 %18, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.rcar_du_of_overlay, ptr @rcar_du_lvds_overlays, i32 %18, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = ptrtoint ptr %21 to i32
  %26 = sub i32 %24, %25
  %27 = call i32 @of_overlay_fdt_apply(ptr noundef %21, i32 noundef %26, ptr noundef nonnull %2) #9
  br label %28

28:                                               ; preds = %19, %16, %10
  %29 = phi i32 [ %27, %19 ], [ -19, %16 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcar_du_of_lvds_patch_one(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 section ".init.text" {
  %5 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 2
  br i1 %9, label %52, label %10

10:                                               ; preds = %4
  tail call void @of_changeset_init(ptr noundef nonnull @rcar_du_lvds_changeset) #9
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr %5, align 4
  %15 = load i32, ptr %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %10
  %18 = phi i32 [ %22, %17 ], [ 0, %10 ]
  %19 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = add nuw i32 %18, 1
  %23 = getelementptr [4 x i32], ptr %5, i32 0, i32 %22
  store i32 %21, ptr %23, align 4
  %24 = icmp eq i32 %22, %15
  br i1 %24, label %25, label %17

25:                                               ; preds = %17, %10
  %26 = shl i32 %15, 2
  %27 = add i32 %26, 4
  %28 = call fastcc i32 @rcar_du_of_add_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef %27) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  store i32 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  br label %39

38:                                               ; preds = %44
  br i1 %40, label %39, label %48

39:                                               ; preds = %38, %30
  %40 = phi i1 [ true, %30 ], [ false, %38 ]
  %41 = phi i32 [ 0, %30 ], [ 1, %38 ]
  %42 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %0, i32 noundef %41, i32 noundef 0) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = getelementptr [4 x i32], ptr %5, i32 0, i32 %41
  %46 = call fastcc i32 @rcar_du_of_add_property(ptr noundef nonnull %42, ptr noundef nonnull @.str.12, ptr noundef %45, i32 noundef 4) #8
  call void @of_node_put(ptr noundef nonnull %42) #9
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %38

48:                                               ; preds = %38
  %49 = call i32 @of_changeset_apply(ptr noundef nonnull @rcar_du_lvds_changeset) #9
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %44, %39, %25
  call void @of_changeset_destroy(ptr noundef nonnull @rcar_du_lvds_changeset) #9
  br label %52

52:                                               ; preds = %51, %48, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_overlay_fdt_apply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_of_add_property(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #9
  store ptr %9, ptr %6, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #9
  %13 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 1
  store i32 %3, ptr %17, align 4
  %18 = tail call i32 @of_changeset_action(ptr noundef nonnull @rcar_du_lvds_changeset, i32 noundef 3, ptr noundef %0, ptr noundef nonnull %6) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %11, %8
  %21 = phi i32 [ %18, %15 ], [ -12, %11 ], [ -12, %8 ]
  %22 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %23) #9
  %24 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %24) #9
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %25

25:                                               ; preds = %20, %15, %4
  %26 = phi i32 [ %21, %20 ], [ -12, %4 ], [ 0, %15 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_apply(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold }
attributes #9 = { nounwind }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
