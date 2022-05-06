; ModuleID = '/llk/IR/scripts/dtc/livetree.c_pt.bc'
source_filename = "../scripts/dtc/livetree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i8, ptr, ptr }
%struct.data = type { i32, ptr, ptr }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.reserve_info = type { i64, i64, ptr, ptr }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"first->next == NULL\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"../scripts/dtc/livetree.c\00", align 1
@__PRETTY_FUNCTION__.chain_property = private unnamed_addr constant [70 x i8] c"struct property *chain_property(struct property *, struct property *)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"node->name == NULL\00", align 1
@__PRETTY_FUNCTION__.name_node = private unnamed_addr constant [46 x i8] c"struct node *name_node(struct node *, char *)\00", align 1
@add_orphan_node.next_orphan_fragment = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fragment@%u\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"first->next_sibling == NULL\00", align 1
@__PRETTY_FUNCTION__.chain_node = private unnamed_addr constant [54 x i8] c"struct node *chain_node(struct node *, struct node *)\00", align 1
@__PRETTY_FUNCTION__.chain_reserve_entry = private unnamed_addr constant [87 x i8] c"struct reserve_info *chain_reserve_entry(struct reserve_info *, struct reserve_info *)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"prop->val.len == sizeof(cell_t)\00", align 1
@__PRETTY_FUNCTION__.propval_cell = private unnamed_addr constant [39 x i8] c"cell_t propval_cell(struct property *)\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"prop->val.len / sizeof(cell_t) >= n\00", align 1
@__PRETTY_FUNCTION__.propval_cell_n = private unnamed_addr constant [55 x i8] c"cell_t propval_cell_n(struct property *, unsigned int)\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"label && (strlen(label) > 0)\00", align 1
@__PRETTY_FUNCTION__.get_node_by_label = private unnamed_addr constant [60 x i8] c"struct node *get_node_by_label(struct node *, const char *)\00", align 1
@generate_fixups = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"generate_fixups\00", align 1
@__PRETTY_FUNCTION__.get_node_by_phandle = private unnamed_addr constant [56 x i8] c"struct node *get_node_by_phandle(struct node *, cell_t)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@get_node_phandle.phandle = internal unnamed_addr global i32 1, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@phandle_format = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"WARNING: label %s already exists in /%s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"m->type == REF_PHANDLE\00", align 1
@__PRETTY_FUNCTION__.add_fixup_entry = private unnamed_addr constant [105 x i8] c"void add_fixup_entry(struct dt_info *, struct node *, struct node *, struct property *, struct marker *)\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"arguments should not contain ':'\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s:%s:%u\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @add_label(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %12, %2
  %6 = phi ptr [ %14, %12 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.label, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i8 0, ptr %6, align 8, !tbaa !12
  br label %23

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.label, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5

16:                                               ; preds = %12, %2
  %17 = call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.label, ptr %17, i64 0, i32 1
  store ptr %1, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.label, ptr %17, i64 0, i32 2
  store ptr %3, ptr %22, align 8, !tbaa !13
  store ptr %17, ptr %0, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %20, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @delete_labels(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = load i8, ptr %5, align 8, !tbaa !12, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i8 1, ptr %5, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.label, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_property(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  %10 = tail call ptr @srcpos_copy(ptr noundef %2) #27
  %11 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !21
  ret ptr %4
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @srcpos_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_property_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.property, ptr %2, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !15
  store i8 1, ptr %2, align 8, !tbaa !22
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @chain_property(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__.chain_property) #26
  unreachable

7:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !23
  ret ptr %0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @reverse_properties(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = phi ptr [ %4, %3 ], [ null, %1 ]
  %6 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  store ptr %5, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @build_node(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %13, %9 ], [ %0, %7 ]
  %11 = phi ptr [ %10, %9 ], [ null, %7 ]
  %12 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  store ptr %11, ptr %12, align 8, !tbaa !23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %7
  %16 = phi ptr [ null, %7 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 3
  store ptr %1, ptr %18, align 8, !tbaa !26
  %19 = tail call ptr @srcpos_copy(ptr noundef %2) #27
  %20 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 13
  store ptr %19, ptr %20, align 8, !tbaa !27
  %21 = icmp eq ptr %1, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %28, %15
  %23 = phi ptr [ %30, %28 ], [ %1, %15 ]
  %24 = load i8, ptr %23, align 8, !tbaa !28, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.node, ptr %23, i64 0, i32 4
  store ptr %4, ptr %27, align 8, !tbaa !29
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.node, ptr %23, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22

32:                                               ; preds = %28, %15
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_node_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

5:                                                ; preds = %1
  store i8 1, ptr %2, align 8, !tbaa !28
  %6 = tail call ptr @srcpos_copy(ptr noundef %0) #27
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 13
  store ptr %6, ptr %7, align 8, !tbaa !27
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @name_node(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @__PRETTY_FUNCTION__.name_node) #26
  unreachable

7:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !30
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local ptr @omit_node_if_unused(ptr noundef returned writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 14
  store i8 1, ptr %2, align 8, !tbaa !31
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local ptr @reference_node(ptr noundef returned writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 15
  store i8 1, ptr %2, align 1, !tbaa !32
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @merge_nodes(ptr noundef returned %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store i8 0, ptr %0, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  br label %15

9:                                                ; preds = %39, %2
  %10 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  br label %50

15:                                               ; preds = %39, %6
  %16 = phi ptr [ %8, %6 ], [ %40, %39 ]
  %17 = phi ptr [ %4, %6 ], [ %42, %39 ]
  %18 = getelementptr inbounds %struct.label, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %16, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %28, %15
  %22 = phi ptr [ %30, %28 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.label, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %19) #25
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8 0, ptr %22, align 8, !tbaa !12
  br label %39

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.label, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21

32:                                               ; preds = %28, %15
  %33 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) #27
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.label, ptr %33, i64 0, i32 1
  store ptr %19, ptr %37, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.label, ptr %33, i64 0, i32 2
  store ptr %16, ptr %38, align 8, !tbaa !13
  store ptr %33, ptr %7, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi ptr [ %16, %27 ], [ %33, %36 ]
  %41 = getelementptr inbounds %struct.label, ptr %17, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %9, label %15

44:                                               ; preds = %85, %9
  %45 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %206, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  br label %154

50:                                               ; preds = %85, %13
  %51 = phi ptr [ %11, %13 ], [ %86, %85 ]
  %52 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !23
  store ptr %53, ptr %10, align 8, !tbaa !24
  store ptr null, ptr %52, align 8, !tbaa !23
  %54 = load i8, ptr %51, align 8, !tbaa !22, !range !14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !15
  %59 = load ptr, ptr %14, align 8, !tbaa !5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %80, %56
  %62 = phi ptr [ %82, %80 ], [ %59, %56 ]
  %63 = getelementptr inbounds %struct.property, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !15
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %58) #25
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  store i8 1, ptr %62, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.property, ptr %62, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %76, %67
  %72 = phi ptr [ %78, %76 ], [ %69, %67 ]
  %73 = load i8, ptr %72, align 8, !tbaa !12, !range !14
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8 1, ptr %72, align 8, !tbaa !12
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.label, ptr %72, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %71

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.property, ptr %62, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %61

84:                                               ; preds = %80, %76, %67, %56
  tail call void @free(ptr noundef %51) #27
  br label %85

85:                                               ; preds = %153, %136, %84
  %86 = load ptr, ptr %10, align 8, !tbaa !24
  %87 = icmp eq ptr %86, null
  br i1 %87, label %44, label %50

88:                                               ; preds = %50
  %89 = load ptr, ptr %14, align 8, !tbaa !5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %147, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !15
  br label %94

94:                                               ; preds = %143, %91
  %95 = phi ptr [ %89, %91 ], [ %145, %143 ]
  %96 = getelementptr inbounds %struct.property, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !15
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(1) %93) #25
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = icmp eq ptr %102, null
  br i1 %103, label %136, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.property, ptr %95, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  br label %107

107:                                              ; preds = %131, %104
  %108 = phi ptr [ %106, %104 ], [ %132, %131 ]
  %109 = phi ptr [ %102, %104 ], [ %134, %131 ]
  %110 = getelementptr inbounds %struct.label, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = icmp eq ptr %108, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %120, %107
  %114 = phi ptr [ %122, %120 ], [ %108, %107 ]
  %115 = getelementptr inbounds %struct.label, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !9
  %117 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %116, ptr noundef nonnull dereferenceable(1) %111) #25
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i8 0, ptr %114, align 8, !tbaa !12
  br label %131

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.label, ptr %114, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %113

124:                                              ; preds = %120, %107
  %125 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) #27
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.label, ptr %125, i64 0, i32 1
  store ptr %111, ptr %129, align 8, !tbaa !9
  %130 = getelementptr inbounds %struct.label, ptr %125, i64 0, i32 2
  store ptr %108, ptr %130, align 8, !tbaa !13
  store ptr %125, ptr %105, align 8, !tbaa !5
  br label %131

131:                                              ; preds = %128, %119
  %132 = phi ptr [ %108, %119 ], [ %125, %128 ]
  %133 = getelementptr inbounds %struct.label, ptr %109, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %107

136:                                              ; preds = %131, %100
  %137 = getelementptr inbounds %struct.property, ptr %95, i64 0, i32 2
  %138 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %137, ptr noundef nonnull align 8 dereferenceable(24) %138, i64 24, i1 false), !tbaa.struct !19
  store i8 0, ptr %95, align 8, !tbaa !22
  %139 = getelementptr inbounds %struct.property, ptr %95, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !21
  tail call void @free(ptr noundef %140) #27
  %141 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 5
  %142 = load ptr, ptr %141, align 8, !tbaa !21
  store ptr %142, ptr %139, align 8, !tbaa !21
  tail call void @free(ptr noundef %51) #27
  br label %85

143:                                              ; preds = %94
  %144 = getelementptr inbounds %struct.property, ptr %95, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %94

147:                                              ; preds = %143, %88
  br label %148

148:                                              ; preds = %148, %147
  %149 = phi ptr [ %152, %148 ], [ %14, %147 ]
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  %151 = icmp eq ptr %150, null
  %152 = getelementptr inbounds %struct.property, ptr %150, i64 0, i32 3
  br i1 %151, label %153, label %148

153:                                              ; preds = %148
  store ptr %51, ptr %149, align 8, !tbaa !5
  br label %85

154:                                              ; preds = %178, %48
  %155 = phi ptr [ %46, %48 ], [ %179, %178 ]
  %156 = getelementptr inbounds %struct.node, ptr %155, i64 0, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !33
  store ptr %157, ptr %45, align 8, !tbaa !26
  %158 = getelementptr inbounds %struct.node, ptr %155, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, i8 0, i64 16, i1 false)
  %159 = load i8, ptr %155, align 8, !tbaa !28, !range !14
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %181, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.node, ptr %155, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !30
  %164 = load ptr, ptr %49, align 8, !tbaa !5
  %165 = icmp eq ptr %164, null
  br i1 %165, label %177, label %166

166:                                              ; preds = %173, %161
  %167 = phi ptr [ %175, %173 ], [ %164, %161 ]
  %168 = getelementptr inbounds %struct.node, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !30
  %170 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %169, ptr noundef nonnull dereferenceable(1) %163) #25
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  tail call void @delete_node(ptr noundef nonnull %167) #27
  br label %177

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.node, ptr %167, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %166

177:                                              ; preds = %173, %172, %161
  tail call void @free(ptr noundef %155) #27
  br label %178

178:                                              ; preds = %205, %193, %177
  %179 = load ptr, ptr %45, align 8, !tbaa !26
  %180 = icmp eq ptr %179, null
  br i1 %180, label %206, label %154

181:                                              ; preds = %154
  %182 = load ptr, ptr %49, align 8, !tbaa !5
  %183 = icmp eq ptr %182, null
  br i1 %183, label %199, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.node, ptr %155, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !30
  br label %187

187:                                              ; preds = %195, %184
  %188 = phi ptr [ %182, %184 ], [ %197, %195 ]
  %189 = getelementptr inbounds %struct.node, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !30
  %191 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %190, ptr noundef nonnull dereferenceable(1) %186) #25
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = tail call ptr @merge_nodes(ptr noundef nonnull %188, ptr noundef nonnull %155)
  br label %178

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.node, ptr %188, i64 0, i32 5
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %187

199:                                              ; preds = %195, %181
  store ptr %0, ptr %158, align 8, !tbaa !29
  br label %200

200:                                              ; preds = %200, %199
  %201 = phi ptr [ %49, %199 ], [ %204, %200 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = icmp eq ptr %202, null
  %204 = getelementptr inbounds %struct.node, ptr %202, i64 0, i32 5
  br i1 %203, label %205, label %200

205:                                              ; preds = %200
  store ptr %155, ptr %201, align 8, !tbaa !5
  br label %178

206:                                              ; preds = %178, %44
  %207 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 13
  %208 = load ptr, ptr %207, align 8, !tbaa !27
  %209 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 13
  %210 = load ptr, ptr %209, align 8, !tbaa !27
  %211 = tail call ptr @srcpos_extend(ptr noundef %208, ptr noundef %210) #27
  store ptr %211, ptr %207, align 8, !tbaa !27
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @delete_property_by_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %25, %2
  %7 = phi ptr [ %27, %25 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  store i8 1, ptr %7, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %21, %12
  %17 = phi ptr [ %23, %21 ], [ %14, %12 ]
  %18 = load i8, ptr %17, align 8, !tbaa !12, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8 1, ptr %17, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.label, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %16

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6

29:                                               ; preds = %25, %21, %12, %2
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @add_property(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.property, ptr %1, i64 0, i32 3
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %9, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 3
  br i1 %8, label %10, label %5

10:                                               ; preds = %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @delete_node_by_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %13, %2
  %7 = phi ptr [ %15, %13 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @delete_node(ptr noundef nonnull %7)
  br label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6

17:                                               ; preds = %13, %12, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @add_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 5
  store ptr null, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 4
  store ptr %0, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %5, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 5
  br i1 %9, label %11, label %6

11:                                               ; preds = %6
  store ptr %1, ptr %7, align 8, !tbaa !5
  ret void
}

declare ptr @srcpos_extend(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @add_orphan_node(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.data, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.data, align 8
  %7 = alloca %struct.data, align 8
  %8 = alloca %struct.data, align 8
  %9 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %10 = load i8, ptr %2, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %6, ptr noundef nonnull byval(%struct.data) align 8 %4, i32 noundef 8, ptr noundef nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  %13 = call i64 @strlen(ptr noundef nonnull %2) #25
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, 1
  call void @data_append_data(ptr nonnull sret(%struct.data) align 8 %7, ptr noundef nonnull byval(%struct.data) align 8 %4, ptr noundef nonnull %2, i32 noundef %15) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  %16 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %8, ptr noundef nonnull byval(%struct.data) align 8 %4, i32 noundef 1, ptr noundef nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #27
  call void @data_append_integer(ptr nonnull sret(%struct.data) align 8 %9, ptr noundef nonnull byval(%struct.data) align 8 %4, i64 noundef 4294967295, i32 noundef 32) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #27
  %20 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

23:                                               ; preds = %19, %12
  %24 = phi ptr [ %16, %12 ], [ %20, %19 ]
  %25 = phi ptr [ @.str.3, %12 ], [ @.str.4, %19 ]
  %26 = getelementptr inbounds %struct.property, ptr %24, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.property, ptr %24, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %28 = call ptr @srcpos_copy(ptr noundef null) #27
  %29 = getelementptr inbounds %struct.property, ptr %24, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !21
  %30 = load i32, ptr @add_orphan_node.next_orphan_fragment, align 4, !tbaa !20
  %31 = add i32 %30, 1
  store i32 %31, ptr @add_orphan_node.next_orphan_fragment, align 4, !tbaa !20
  %32 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i32 noundef %30) #27
  %33 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @__PRETTY_FUNCTION__.name_node) #26
  unreachable

37:                                               ; preds = %23
  store ptr @.str.6, ptr %33, align 8, !tbaa !30
  %38 = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) #27
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %45, %41 ], [ %24, %37 ]
  %43 = phi ptr [ %42, %41 ], [ null, %37 ]
  %44 = getelementptr inbounds %struct.property, ptr %42, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !23
  store ptr %43, ptr %44, align 8, !tbaa !23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %41

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 2
  store ptr %42, ptr %48, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 3
  store ptr %1, ptr %49, align 8, !tbaa !26
  %50 = call ptr @srcpos_copy(ptr noundef null) #27
  %51 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 13
  store ptr %50, ptr %51, align 8, !tbaa !27
  %52 = icmp eq ptr %1, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %59, %47
  %54 = phi ptr [ %61, %59 ], [ %1, %47 ]
  %55 = load i8, ptr %54, align 8, !tbaa !28, !range !14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.node, ptr %54, i64 0, i32 4
  store ptr %38, ptr %58, align 8, !tbaa !29
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.node, ptr %54, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %53

63:                                               ; preds = %59, %47
  %64 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 1
  %65 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %65, ptr %64, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 5
  store ptr null, ptr %66, align 8, !tbaa !33
  %67 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 4
  store ptr %0, ptr %67, align 8, !tbaa !29
  %68 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  br label %69

69:                                               ; preds = %69, %63
  %70 = phi ptr [ %68, %63 ], [ %73, %69 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.node, ptr %71, i64 0, i32 5
  br i1 %72, label %74, label %69

74:                                               ; preds = %69
  store ptr %38, ptr %70, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret ptr %0
}

declare void @data_add_marker(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @data_append_data(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare void @data_append_integer(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @xasprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @chain_node(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !33
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 260, ptr noundef nonnull @__PRETTY_FUNCTION__.chain_node) #26
  unreachable

7:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !33
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @delete_property(ptr nocapture noundef %0) local_unnamed_addr #4 {
  store i8 1, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ %12, %10 ], [ %3, %1 ]
  %7 = load i8, ptr %6, align 8, !tbaa !12, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i8 1, ptr %6, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.label, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @delete_node(ptr nocapture noundef %0) local_unnamed_addr #11 {
  store i8 1, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ %12, %10 ], [ %3, %1 ]
  %7 = load i8, ptr %6, align 8, !tbaa !28, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @delete_node(ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %35, %14
  %19 = phi ptr [ %37, %35 ], [ %16, %14 ]
  %20 = load i8, ptr %19, align 8, !tbaa !22, !range !14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  store i8 1, ptr %19, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.property, ptr %19, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %31, %22
  %27 = phi ptr [ %33, %31 ], [ %24, %22 ]
  %28 = load i8, ptr %27, align 8, !tbaa !12, !range !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 1, ptr %27, align 8, !tbaa !12
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.label, ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26

35:                                               ; preds = %31, %22, %18
  %36 = getelementptr inbounds %struct.property, ptr %19, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18

39:                                               ; preds = %35, %14
  %40 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %48, %39
  %44 = phi ptr [ %50, %48 ], [ %41, %39 ]
  %45 = load i8, ptr %44, align 8, !tbaa !12, !range !14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8 1, ptr %44, align 8, !tbaa !12
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.label, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %43

52:                                               ; preds = %48, %39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @append_to_property(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.data, align 8
  %7 = alloca %struct.data, align 8
  %8 = alloca %struct.data, align 8
  %9 = alloca %struct.data, align 8
  %10 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  %11 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %23, %5
  %15 = phi ptr [ %25, %23 ], [ %12, %5 ]
  %16 = load i8, ptr %15, align 8, !tbaa !22, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.property, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.property, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %14

27:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  %28 = getelementptr inbounds %struct.property, ptr %15, i64 0, i32 2
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %7, ptr noundef nonnull byval(%struct.data) align 8 %28, i32 noundef %4, ptr noundef %1) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  call void @data_append_data(ptr nonnull sret(%struct.data) align 8 %8, ptr noundef nonnull byval(%struct.data) align 8 %6, ptr noundef %2, i32 noundef %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !19
  br label %45

29:                                               ; preds = %23, %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %6, ptr noundef nonnull byval(%struct.data) align 8 %9, i32 noundef %4, ptr noundef %1) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #27
  call void @data_append_data(ptr nonnull sret(%struct.data) align 8 %10, ptr noundef nonnull byval(%struct.data) align 8 %6, ptr noundef %2, i32 noundef %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  %30 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.property, ptr %30, i64 0, i32 1
  store ptr %1, ptr %34, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.property, ptr %30, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %36 = call ptr @srcpos_copy(ptr noundef null) #27
  %37 = getelementptr inbounds %struct.property, ptr %30, i64 0, i32 5
  store ptr %36, ptr %37, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.property, ptr %30, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !23
  br label %39

39:                                               ; preds = %39, %33
  %40 = phi ptr [ %11, %33 ], [ %43, %39 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.property, ptr %41, i64 0, i32 3
  br i1 %42, label %44, label %39

44:                                               ; preds = %39
  store ptr %30, ptr %40, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %44, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  ret void
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @get_property(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i8, ptr %7, align 8, !tbaa !22, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6

19:                                               ; preds = %15, %10, %2
  %20 = phi ptr [ null, %2 ], [ null, %15 ], [ %7, %10 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_reserve_entry(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

6:                                                ; preds = %2
  store i64 %0, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.reserve_info, ptr %3, i64 0, i32 1
  store i64 %1, ptr %7, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @chain_reserve_entry(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.reserve_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 373, ptr noundef nonnull @__PRETTY_FUNCTION__.chain_reserve_entry) #26
  unreachable

7:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !39
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @add_reserve_entry(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.reserve_info, ptr %1, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !39
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.reserve_info, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.reserve_info, ptr %6, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !39
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %0, %10 ], [ %1, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_dt_info(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

8:                                                ; preds = %4
  store i32 %0, ptr %5, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.dt_info, ptr %5, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.dt_info, ptr %5, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.dt_info, ptr %5, i64 0, i32 2
  store i32 %3, ptr %11, align 8, !tbaa !44
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local nonnull ptr @get_unitname(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  %11 = select i1 %9, ptr @.str.8, ptr %10
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @propval_cell(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.propval_cell) #26
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = load i32, ptr %8, align 4, !tbaa !20
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #27
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @propval_cell_n(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = lshr i32 %4, 2
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.propval_cell_n) #26
  unreachable

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds i32, ptr %11, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #27
  ret i32 %14
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_property_by_label(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  store ptr %0, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %30, %28 ], [ %5, %3 ]
  %9 = load i8, ptr %8, align 8, !tbaa !22, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %24, %11
  %16 = phi ptr [ %26, %24 ], [ %13, %11 ]
  %17 = load i8, ptr %16, align 8, !tbaa !12, !range !14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.label, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %1) #25
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.label, ptr %16, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15

28:                                               ; preds = %24, %11, %7
  %29 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %7

32:                                               ; preds = %28, %3
  %33 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %43, %32
  %37 = phi ptr [ %45, %43 ], [ %34, %32 ]
  %38 = load i8, ptr %37, align 8, !tbaa !28, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = tail call ptr @get_property_by_label(ptr noundef nonnull %37, ptr noundef %1, ptr noundef nonnull %2)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %struct.node, ptr %37, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %36

47:                                               ; preds = %43, %32
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %47, %40, %19
  %49 = phi ptr [ null, %47 ], [ %41, %40 ], [ %8, %19 ]
  ret ptr %49
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_marker_label(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  store ptr %0, ptr %2, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %29, %4
  %9 = phi ptr [ %31, %29 ], [ %6, %4 ]
  %10 = load i8, ptr %9, align 8, !tbaa !22, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  store ptr %9, ptr %3, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %25, %12
  %17 = phi ptr [ %27, %25 ], [ %14, %12 ]
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.marker, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %1) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.marker, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %16

29:                                               ; preds = %25, %12, %8
  %30 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8

33:                                               ; preds = %29, %4
  %34 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %44, %33
  %38 = phi ptr [ %46, %44 ], [ %35, %33 ]
  %39 = load i8, ptr %38, align 8, !tbaa !28, !range !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call ptr @get_marker_label(ptr noundef nonnull %38, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.node, ptr %38, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %37

48:                                               ; preds = %44, %33
  store ptr null, ptr %3, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %48, %41, %20
  %50 = phi ptr [ null, %48 ], [ %42, %41 ], [ %17, %20 ]
  ret ptr %50
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @get_subnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i8, ptr %7, align 8, !tbaa !28, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6

19:                                               ; preds = %15, %10, %2
  %20 = phi ptr [ null, %2 ], [ null, %15 ], [ %7, %10 ]
  ret ptr %20
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @get_node_by_path(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %42, %2
  %5 = phi ptr [ %43, %42 ], [ %1, %2 ]
  %6 = phi ptr [ %30, %42 ], [ %0, %2 ]
  %7 = load i8, ptr %5, align 1, !tbaa !34
  switch i8 %7, label %18 [
    i8 0, label %8
    i8 47, label %13
  ]

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %0, %2 ], [ %6, %4 ]
  %10 = load i8, ptr %9, align 8, !tbaa !28, !range !14
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr %9, ptr null
  br label %51

13:                                               ; preds = %13, %4
  %14 = phi ptr [ %15, %13 ], [ %5, %4 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 47
  br i1 %17, label %13, label %18

18:                                               ; preds = %13, %4
  %19 = phi ptr [ %5, %4 ], [ %15, %13 ]
  %20 = tail call ptr @strchr(ptr noundef nonnull %19, i32 noundef 47) #25
  %21 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %18
  %25 = icmp eq ptr %20, null
  %26 = ptrtoint ptr %20 to i64
  %27 = ptrtoint ptr %19 to i64
  %28 = sub i64 %26, %27
  br label %29

29:                                               ; preds = %47, %24
  %30 = phi ptr [ %22, %24 ], [ %49, %47 ]
  %31 = load i8, ptr %30, align 8, !tbaa !28, !range !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.node, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !30
  br i1 %25, label %44, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #25
  %38 = icmp eq i64 %37, %28
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = tail call i32 @bcmp(ptr nonnull %19, ptr %35, i64 %28)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %20, i64 1
  br label %4

44:                                               ; preds = %33
  %45 = tail call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull dereferenceable(1) %35) #25
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44, %39, %36, %29
  %48 = getelementptr inbounds %struct.node, ptr %30, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %29

51:                                               ; preds = %47, %44, %18, %8
  %52 = phi ptr [ %12, %8 ], [ %30, %44 ], [ null, %47 ], [ null, %18 ]
  ret ptr %52
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_node_by_label(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 543, ptr noundef nonnull @__PRETTY_FUNCTION__.get_node_by_label) #26
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %21, %8
  %13 = phi ptr [ %23, %21 ], [ %10, %8 ]
  %14 = load i8, ptr %13, align 8, !tbaa !12, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.label, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull %1) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.label, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12

25:                                               ; preds = %21, %8
  %26 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %36, %25
  %30 = phi ptr [ %38, %36 ], [ %27, %25 ]
  %31 = load i8, ptr %30, align 8, !tbaa !28, !range !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = tail call ptr @get_node_by_label(ptr noundef nonnull %30, ptr noundef nonnull %1)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.node, ptr %30, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %29

40:                                               ; preds = %36, %33, %25, %16
  %41 = phi ptr [ null, %25 ], [ %34, %33 ], [ null, %36 ], [ %0, %16 ]
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_node_by_phandle(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @generate_fixups, align 4, !tbaa !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 563, ptr noundef nonnull @__PRETTY_FUNCTION__.get_node_by_phandle) #26
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 8, !tbaa !28, !range !14
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr %0, ptr null
  br label %32

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %28, %17
  %22 = phi ptr [ %30, %28 ], [ %19, %17 ]
  %23 = load i8, ptr %22, align 8, !tbaa !28, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call ptr @get_node_by_phandle(ptr noundef nonnull %22, i32 noundef %1)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.node, ptr %22, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21

32:                                               ; preds = %28, %25, %17, %13, %5
  %33 = phi ptr [ null, %5 ], [ %16, %13 ], [ null, %17 ], [ %26, %25 ], [ null, %28 ]
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_node_by_ref(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 47
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @get_node_by_path(ptr noundef %0, ptr noundef nonnull %1)
  br label %12

10:                                               ; preds = %5
  %11 = tail call ptr @get_node_by_label(ptr noundef %0, ptr noundef nonnull %1)
  br label %12

12:                                               ; preds = %10, %8, %2
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ], [ %0, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_node_phandle(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca %struct.data, align 8
  %5 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, -2
  br i1 %9, label %95, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  %12 = tail call ptr @get_node_by_phandle(ptr noundef %0, i32 noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %10
  %15 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  %16 = add i32 %15, 1
  store i32 %16, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  %17 = tail call ptr @get_node_by_phandle(ptr noundef %0, i32 noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %10
  %20 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  store i32 %20, ptr %6, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %4, ptr noundef nonnull byval(%struct.data) align 8 %3, i32 noundef 6, ptr noundef null) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %21 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  call void @data_append_cell(ptr nonnull sret(%struct.data) align 8 %5, ptr noundef nonnull byval(%struct.data) align 8 %3, i32 noundef %21) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %22 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %34, %19
  %26 = phi ptr [ %36, %34 ], [ %23, %19 ]
  %27 = load i8, ptr %26, align 8, !tbaa !22, !range !14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.property, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(14) @.str.14) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.property, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25

38:                                               ; preds = %34, %19
  %39 = load i32, ptr @phandle_format, align 4, !tbaa !20
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.property, ptr %43, i64 0, i32 1
  store ptr @.str.14, ptr %47, align 8, !tbaa !15
  %48 = getelementptr inbounds %struct.property, ptr %43, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %49 = call ptr @srcpos_copy(ptr noundef null) #27
  %50 = getelementptr inbounds %struct.property, ptr %43, i64 0, i32 5
  store ptr %49, ptr %50, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.property, ptr %43, i64 0, i32 3
  store ptr null, ptr %51, align 8, !tbaa !23
  br label %52

52:                                               ; preds = %52, %46
  %53 = phi ptr [ %22, %46 ], [ %56, %52 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds %struct.property, ptr %54, i64 0, i32 3
  br i1 %55, label %57, label %52

57:                                               ; preds = %52
  store ptr %43, ptr %53, align 8, !tbaa !5
  %58 = load ptr, ptr %22, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %57, %38, %29
  %60 = phi ptr [ %58, %57 ], [ %23, %38 ], [ %23, %29 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %71, %59
  %63 = phi ptr [ %73, %71 ], [ %60, %59 ]
  %64 = load i8, ptr %63, align 8, !tbaa !22, !range !14
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.property, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !15
  %69 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(8) @.str.15) #25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %66, %62
  %72 = getelementptr inbounds %struct.property, ptr %63, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %62

75:                                               ; preds = %71, %59
  %76 = load i32, ptr @phandle_format, align 4, !tbaa !20
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.property, ptr %80, i64 0, i32 1
  store ptr @.str.15, ptr %84, align 8, !tbaa !15
  %85 = getelementptr inbounds %struct.property, ptr %80, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %86 = call ptr @srcpos_copy(ptr noundef null) #27
  %87 = getelementptr inbounds %struct.property, ptr %80, i64 0, i32 5
  store ptr %86, ptr %87, align 8, !tbaa !21
  %88 = getelementptr inbounds %struct.property, ptr %80, i64 0, i32 3
  store ptr null, ptr %88, align 8, !tbaa !23
  br label %89

89:                                               ; preds = %89, %83
  %90 = phi ptr [ %22, %83 ], [ %93, %89 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 3
  br i1 %92, label %94, label %89

94:                                               ; preds = %89
  store ptr %80, ptr %90, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %94, %75, %66, %2
  %96 = load i32, ptr %6, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret i32 %96
}

declare void @data_append_cell(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @guess_boot_cpuid(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_node_by_path(ptr noundef %0, ptr noundef nonnull @.str.16)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %21, %8
  %13 = phi ptr [ %23, %21 ], [ %10, %8 ]
  %14 = load i8, ptr %13, align 8, !tbaa !22, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.17) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %12

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = load i32, ptr %31, align 4, !tbaa !20
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #27
  br label %34

34:                                               ; preds = %29, %25, %21, %8, %4, %1
  %35 = phi i32 [ %33, %29 ], [ 0, %1 ], [ 0, %4 ], [ 0, %25 ], [ 0, %8 ], [ 0, %21 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local void @sort_tree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %88, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.reserve_info, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5

12:                                               ; preds = %5
  %13 = zext i32 %8 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

18:                                               ; preds = %18, %12
  %19 = phi i64 [ %21, %18 ], [ 0, %12 ]
  %20 = phi ptr [ %24, %18 ], [ %3, %12 ]
  %21 = add nuw i64 %19, 1
  %22 = getelementptr inbounds ptr, ptr %15, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.reserve_info, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18
  tail call void @qsort(ptr noundef nonnull %15, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @cmp_reserve_info) #27
  %27 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %27, ptr %2, align 8, !tbaa !42
  %28 = icmp eq i32 %7, 0
  br i1 %28, label %83, label %29

29:                                               ; preds = %26
  %30 = zext i32 %7 to i64
  %31 = getelementptr inbounds ptr, ptr %15, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.reserve_info, ptr %27, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !39
  %34 = icmp eq i32 %7, 1
  br i1 %34, label %83, label %35

35:                                               ; preds = %29
  %36 = add nsw i64 %30, -1
  %37 = add nsw i64 %30, -2
  %38 = and i64 %36, 3
  %39 = icmp ult i64 %37, 3
  br i1 %39, label %68, label %40

40:                                               ; preds = %35
  %41 = and i64 %36, -4
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi ptr [ %31, %40 ], [ %63, %42 ]
  %44 = phi i64 [ 1, %40 ], [ %62, %42 ]
  %45 = phi i64 [ 0, %40 ], [ %66, %42 ]
  %46 = load ptr, ptr %43, align 8, !tbaa !5
  %47 = add nuw nsw i64 %44, 1
  %48 = getelementptr inbounds ptr, ptr %15, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.reserve_info, ptr %46, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !39
  %51 = load ptr, ptr %48, align 8, !tbaa !5
  %52 = add nuw nsw i64 %44, 2
  %53 = getelementptr inbounds ptr, ptr %15, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.reserve_info, ptr %51, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !39
  %56 = load ptr, ptr %53, align 8, !tbaa !5
  %57 = add nuw nsw i64 %44, 3
  %58 = getelementptr inbounds ptr, ptr %15, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.reserve_info, ptr %56, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !39
  %61 = load ptr, ptr %58, align 8, !tbaa !5
  %62 = add nuw nsw i64 %44, 4
  %63 = getelementptr inbounds ptr, ptr %15, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.reserve_info, ptr %61, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !39
  %66 = add i64 %45, 4
  %67 = icmp eq i64 %66, %41
  br i1 %67, label %68, label %42

68:                                               ; preds = %42, %35
  %69 = phi ptr [ %31, %35 ], [ %63, %42 ]
  %70 = phi i64 [ 1, %35 ], [ %62, %42 ]
  %71 = icmp eq i64 %38, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %72, %68
  %73 = phi ptr [ %78, %72 ], [ %69, %68 ]
  %74 = phi i64 [ %77, %72 ], [ %70, %68 ]
  %75 = phi i64 [ %81, %72 ], [ 0, %68 ]
  %76 = load ptr, ptr %73, align 8, !tbaa !5
  %77 = add nuw nsw i64 %74, 1
  %78 = getelementptr inbounds ptr, ptr %15, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.reserve_info, ptr %76, i64 0, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !39
  %81 = add i64 %75, 1
  %82 = icmp eq i64 %81, %38
  br i1 %82, label %83, label %72, !llvm.loop !52

83:                                               ; preds = %72, %68, %29, %26
  %84 = phi i64 [ 1, %29 ], [ 0, %26 ], [ %30, %72 ], [ %30, %68 ]
  %85 = getelementptr inbounds ptr, ptr %15, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.reserve_info, ptr %86, i64 0, i32 2
  store ptr null, ptr %87, align 8, !tbaa !39
  tail call void @free(ptr noundef nonnull %15) #27
  br label %88

88:                                               ; preds = %83, %1
  %89 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  tail call fastcc void @sort_node(ptr noundef %90)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sort_node(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %88, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5

12:                                               ; preds = %5
  %13 = zext i32 %8 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

18:                                               ; preds = %18, %12
  %19 = phi i64 [ %21, %18 ], [ 0, %12 ]
  %20 = phi ptr [ %24, %18 ], [ %3, %12 ]
  %21 = add nuw i64 %19, 1
  %22 = getelementptr inbounds ptr, ptr %15, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18
  tail call void @qsort(ptr noundef nonnull %15, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @cmp_prop) #27
  %27 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %27, ptr %2, align 8, !tbaa !24
  %28 = icmp eq i32 %7, 0
  br i1 %28, label %83, label %29

29:                                               ; preds = %26
  %30 = zext i32 %7 to i64
  %31 = getelementptr inbounds ptr, ptr %15, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.property, ptr %27, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !23
  %34 = icmp eq i32 %7, 1
  br i1 %34, label %83, label %35

35:                                               ; preds = %29
  %36 = add nsw i64 %30, -1
  %37 = add nsw i64 %30, -2
  %38 = and i64 %36, 3
  %39 = icmp ult i64 %37, 3
  br i1 %39, label %68, label %40

40:                                               ; preds = %35
  %41 = and i64 %36, -4
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi ptr [ %31, %40 ], [ %63, %42 ]
  %44 = phi i64 [ 1, %40 ], [ %62, %42 ]
  %45 = phi i64 [ 0, %40 ], [ %66, %42 ]
  %46 = load ptr, ptr %43, align 8, !tbaa !5
  %47 = add nuw nsw i64 %44, 1
  %48 = getelementptr inbounds ptr, ptr %15, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.property, ptr %46, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !23
  %51 = load ptr, ptr %48, align 8, !tbaa !5
  %52 = add nuw nsw i64 %44, 2
  %53 = getelementptr inbounds ptr, ptr %15, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.property, ptr %51, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !23
  %56 = load ptr, ptr %53, align 8, !tbaa !5
  %57 = add nuw nsw i64 %44, 3
  %58 = getelementptr inbounds ptr, ptr %15, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.property, ptr %56, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !23
  %61 = load ptr, ptr %58, align 8, !tbaa !5
  %62 = add nuw nsw i64 %44, 4
  %63 = getelementptr inbounds ptr, ptr %15, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.property, ptr %61, i64 0, i32 3
  store ptr %64, ptr %65, align 8, !tbaa !23
  %66 = add i64 %45, 4
  %67 = icmp eq i64 %66, %41
  br i1 %67, label %68, label %42

68:                                               ; preds = %42, %35
  %69 = phi ptr [ %31, %35 ], [ %63, %42 ]
  %70 = phi i64 [ 1, %35 ], [ %62, %42 ]
  %71 = icmp eq i64 %38, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %72, %68
  %73 = phi ptr [ %78, %72 ], [ %69, %68 ]
  %74 = phi i64 [ %77, %72 ], [ %70, %68 ]
  %75 = phi i64 [ %81, %72 ], [ 0, %68 ]
  %76 = load ptr, ptr %73, align 8, !tbaa !5
  %77 = add nuw nsw i64 %74, 1
  %78 = getelementptr inbounds ptr, ptr %15, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.property, ptr %76, i64 0, i32 3
  store ptr %79, ptr %80, align 8, !tbaa !23
  %81 = add i64 %75, 1
  %82 = icmp eq i64 %81, %38
  br i1 %82, label %83, label %72, !llvm.loop !54

83:                                               ; preds = %72, %68, %29, %26
  %84 = phi i64 [ 1, %29 ], [ 0, %26 ], [ %30, %72 ], [ %30, %68 ]
  %85 = getelementptr inbounds ptr, ptr %15, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.property, ptr %86, i64 0, i32 3
  store ptr null, ptr %87, align 8, !tbaa !23
  tail call void @free(ptr noundef nonnull %15) #27
  br label %88

88:                                               ; preds = %83, %1
  %89 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %182, label %92

92:                                               ; preds = %92, %88
  %93 = phi ptr [ %97, %92 ], [ %90, %88 ]
  %94 = phi i32 [ %95, %92 ], [ 0, %88 ]
  %95 = add nuw nsw i32 %94, 1
  %96 = getelementptr inbounds %struct.node, ptr %93, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %92

99:                                               ; preds = %92
  %100 = zext i32 %95 to i64
  %101 = shl nuw nsw i64 %100, 3
  %102 = tail call noalias ptr @malloc(i64 noundef %101) #28
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

105:                                              ; preds = %105, %99
  %106 = phi i64 [ %108, %105 ], [ 0, %99 ]
  %107 = phi ptr [ %111, %105 ], [ %90, %99 ]
  %108 = add nuw i64 %106, 1
  %109 = getelementptr inbounds ptr, ptr %102, i64 %106
  store ptr %107, ptr %109, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.node, ptr %107, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %105

113:                                              ; preds = %105
  tail call void @qsort(ptr noundef nonnull %102, i64 noundef %100, i64 noundef 8, ptr noundef nonnull @cmp_subnode) #27
  %114 = load ptr, ptr %102, align 8, !tbaa !5
  store ptr %114, ptr %89, align 8, !tbaa !26
  %115 = icmp eq i32 %94, 0
  br i1 %115, label %170, label %116

116:                                              ; preds = %113
  %117 = zext i32 %94 to i64
  %118 = getelementptr inbounds ptr, ptr %102, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.node, ptr %114, i64 0, i32 5
  store ptr %119, ptr %120, align 8, !tbaa !33
  %121 = icmp eq i32 %94, 1
  br i1 %121, label %170, label %122

122:                                              ; preds = %116
  %123 = add nsw i64 %117, -1
  %124 = add nsw i64 %117, -2
  %125 = and i64 %123, 3
  %126 = icmp ult i64 %124, 3
  br i1 %126, label %155, label %127

127:                                              ; preds = %122
  %128 = and i64 %123, -4
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi ptr [ %118, %127 ], [ %150, %129 ]
  %131 = phi i64 [ 1, %127 ], [ %149, %129 ]
  %132 = phi i64 [ 0, %127 ], [ %153, %129 ]
  %133 = load ptr, ptr %130, align 8, !tbaa !5
  %134 = add nuw nsw i64 %131, 1
  %135 = getelementptr inbounds ptr, ptr %102, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds %struct.node, ptr %133, i64 0, i32 5
  store ptr %136, ptr %137, align 8, !tbaa !33
  %138 = load ptr, ptr %135, align 8, !tbaa !5
  %139 = add nuw nsw i64 %131, 2
  %140 = getelementptr inbounds ptr, ptr %102, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.node, ptr %138, i64 0, i32 5
  store ptr %141, ptr %142, align 8, !tbaa !33
  %143 = load ptr, ptr %140, align 8, !tbaa !5
  %144 = add nuw nsw i64 %131, 3
  %145 = getelementptr inbounds ptr, ptr %102, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !5
  %147 = getelementptr inbounds %struct.node, ptr %143, i64 0, i32 5
  store ptr %146, ptr %147, align 8, !tbaa !33
  %148 = load ptr, ptr %145, align 8, !tbaa !5
  %149 = add nuw nsw i64 %131, 4
  %150 = getelementptr inbounds ptr, ptr %102, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.node, ptr %148, i64 0, i32 5
  store ptr %151, ptr %152, align 8, !tbaa !33
  %153 = add i64 %132, 4
  %154 = icmp eq i64 %153, %128
  br i1 %154, label %155, label %129

155:                                              ; preds = %129, %122
  %156 = phi ptr [ %118, %122 ], [ %150, %129 ]
  %157 = phi i64 [ 1, %122 ], [ %149, %129 ]
  %158 = icmp eq i64 %125, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %159, %155
  %160 = phi ptr [ %165, %159 ], [ %156, %155 ]
  %161 = phi i64 [ %164, %159 ], [ %157, %155 ]
  %162 = phi i64 [ %168, %159 ], [ 0, %155 ]
  %163 = load ptr, ptr %160, align 8, !tbaa !5
  %164 = add nuw nsw i64 %161, 1
  %165 = getelementptr inbounds ptr, ptr %102, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds %struct.node, ptr %163, i64 0, i32 5
  store ptr %166, ptr %167, align 8, !tbaa !33
  %168 = add i64 %162, 1
  %169 = icmp eq i64 %168, %125
  br i1 %169, label %170, label %159, !llvm.loop !55

170:                                              ; preds = %159, %155, %116, %113
  %171 = phi i64 [ 1, %116 ], [ 0, %113 ], [ %117, %159 ], [ %117, %155 ]
  %172 = getelementptr inbounds ptr, ptr %102, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.node, ptr %173, i64 0, i32 5
  store ptr null, ptr %174, align 8, !tbaa !33
  tail call void @free(ptr noundef nonnull %102) #27
  %175 = load ptr, ptr %89, align 8, !tbaa !5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177

177:                                              ; preds = %177, %170
  %178 = phi ptr [ %180, %177 ], [ %175, %170 ]
  tail call fastcc void @sort_node(ptr noundef nonnull %178)
  %179 = getelementptr inbounds %struct.node, ptr %178, i64 0, i32 5
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %177

182:                                              ; preds = %177, %170, %88
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @generate_label_tree(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = tail call fastcc zeroext i1 @any_label_tree(ptr noundef %5)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @build_root_node(ptr noundef %5, ptr noundef %1)
  %9 = load ptr, ptr %4, align 8, !tbaa !43
  tail call fastcc void @generate_label_tree_internal(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %9, i1 noundef zeroext %2)
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define internal fastcc zeroext i1 @any_label_tree(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %15, %5
  %10 = phi ptr [ %17, %15 ], [ %7, %5 ]
  %11 = load i8, ptr %10, align 8, !tbaa !28, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i1 @any_label_tree(ptr noundef nonnull %10)
  br i1 %14, label %19, label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9

19:                                               ; preds = %15, %13, %5, %1
  %20 = phi i1 [ true, %1 ], [ false, %5 ], [ true, %13 ], [ false, %15 ]
  ret i1 %20
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_label_tree_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.data, align 8
  %6 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 6
  br label %15

15:                                               ; preds = %60, %11
  %16 = phi ptr [ %9, %11 ], [ %62, %60 ]
  %17 = load i8, ptr %16, align 8, !tbaa !12, !range !14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.label, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = load ptr, ptr %12, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %33, %19
  %25 = phi ptr [ %35, %33 ], [ %22, %19 ]
  %26 = load i8, ptr %25, align 8, !tbaa !22, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %21) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %24

37:                                               ; preds = %28
  %38 = load ptr, ptr @stderr, align 8, !tbaa !5
  %39 = load ptr, ptr %13, align 8, !tbaa !30
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.20, ptr noundef %21, ptr noundef %39) #29
  br label %60

41:                                               ; preds = %33, %19
  %42 = load ptr, ptr %14, align 8, !tbaa !57
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #25
  %44 = trunc i64 %43 to i32
  call void @data_copy_escape_string(ptr nonnull sret(%struct.data) align 8 %5, ptr noundef %42, i32 noundef %44) #27
  %45 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.property, ptr %45, i64 0, i32 1
  store ptr %21, ptr %49, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.property, ptr %45, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %51 = call ptr @srcpos_copy(ptr noundef null) #27
  %52 = getelementptr inbounds %struct.property, ptr %45, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !21
  %53 = getelementptr inbounds %struct.property, ptr %45, i64 0, i32 3
  store ptr null, ptr %53, align 8, !tbaa !23
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi ptr [ %12, %48 ], [ %58, %54 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.property, ptr %56, i64 0, i32 3
  br i1 %57, label %59, label %54

59:                                               ; preds = %54
  store ptr %45, ptr %55, align 8, !tbaa !5
  br label %60

60:                                               ; preds = %59, %37, %15
  %61 = getelementptr inbounds %struct.label, ptr %16, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %15

64:                                               ; preds = %60
  br i1 %3, label %65, label %67

65:                                               ; preds = %64
  %66 = call i32 @get_node_phandle(ptr noundef %7, ptr noundef %2)
  br label %67

67:                                               ; preds = %65, %64, %4
  %68 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %76, %67
  %72 = phi ptr [ %78, %76 ], [ %69, %67 ]
  %73 = load i8, ptr %72, align 8, !tbaa !28, !range !14
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call fastcc void @generate_label_tree_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %72, i1 noundef zeroext %3)
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.node, ptr %72, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %71

80:                                               ; preds = %76, %67
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_root_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i8, ptr %7, align 8, !tbaa !28, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6

19:                                               ; preds = %15, %2
  %20 = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) #27
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

23:                                               ; preds = %19
  %24 = tail call ptr @srcpos_copy(ptr noundef null) #27
  %25 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 13
  store ptr %24, ptr %25, align 8, !tbaa !27
  %26 = tail call ptr @xstrdup(ptr noundef %1) #27
  %27 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 5
  store ptr null, ptr %28, align 8, !tbaa !33
  %29 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 4
  store ptr %0, ptr %29, align 8, !tbaa !29
  br label %30

30:                                               ; preds = %30, %23
  %31 = phi ptr [ %3, %23 ], [ %34, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.node, ptr %32, i64 0, i32 5
  br i1 %33, label %35, label %30

35:                                               ; preds = %30
  store ptr %20, ptr %31, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %35, %10
  %37 = phi ptr [ %20, %35 ], [ %7, %10 ]
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local void @generate_fixups_tree(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call fastcc zeroext i1 @any_fixup_tree(ptr noundef %0, ptr noundef %4)
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !43
  %8 = tail call fastcc ptr @build_root_node(ptr noundef %7, ptr noundef %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !43
  tail call fastcc void @generate_fixups_tree_internal(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %9)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @any_fixup_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %40, %6
  %9 = phi ptr [ %4, %6 ], [ %42, %40 ]
  %10 = load i8, ptr %9, align 8, !tbaa !22, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %36, %12
  %17 = phi ptr [ %38, %36 ], [ %14, %12 ]
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.marker, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr %23, align 1, !tbaa !34
  %28 = icmp eq i8 %27, 47
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @get_node_by_path(ptr noundef %21, ptr noundef nonnull %23) #27
  br label %33

31:                                               ; preds = %26
  %32 = tail call ptr @get_node_by_label(ptr noundef %21, ptr noundef nonnull %23) #27
  br label %33

33:                                               ; preds = %31, %29, %20
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ], [ %21, %20 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %33, %16
  %37 = getelementptr inbounds %struct.marker, ptr %17, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %16

40:                                               ; preds = %36, %12, %8
  %41 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %8

44:                                               ; preds = %40, %2
  %45 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %54, %44
  %49 = phi ptr [ %56, %54 ], [ %46, %44 ]
  %50 = load i8, ptr %49, align 8, !tbaa !28, !range !14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i1 @any_fixup_tree(ptr noundef %0, ptr noundef nonnull %49)
  br i1 %53, label %58, label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.node, ptr %49, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %48

58:                                               ; preds = %54, %52, %44, %33
  %59 = phi i1 [ false, %44 ], [ true, %52 ], [ false, %54 ], [ true, %33 ]
  ret i1 %59
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_fixups_tree_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 6
  br label %12

12:                                               ; preds = %68, %10
  %13 = phi ptr [ %8, %10 ], [ %70, %68 ]
  %14 = load i8, ptr %13, align 8, !tbaa !22, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 1
  br label %22

22:                                               ; preds = %64, %20
  %23 = phi ptr [ %18, %20 ], [ %66, %64 ]
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.marker, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i8, ptr %28, align 1, !tbaa !34
  %33 = icmp eq i8 %32, 47
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call ptr @get_node_by_path(ptr noundef %6, ptr noundef nonnull %28) #27
  br label %38

36:                                               ; preds = %31
  %37 = call ptr @get_node_by_label(ptr noundef %6, ptr noundef nonnull %28) #27
  br label %38

38:                                               ; preds = %36, %34, %26
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], [ %6, %26 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %42 = load i32, ptr %23, align 8, !tbaa !48
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 893, ptr noundef nonnull @__PRETTY_FUNCTION__.add_fixup_entry) #26
  unreachable

45:                                               ; preds = %41
  %46 = load ptr, ptr %11, align 8, !tbaa !57
  %47 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %46, i32 noundef 58) #25
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load ptr, ptr %21, align 8, !tbaa !15
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %50, i32 noundef 58) #25
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45
  call void (ptr, ...) @die(ptr noundef nonnull @.str.23) #26
  unreachable

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.marker, ptr %23, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !58
  %57 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.24, ptr noundef %46, ptr noundef %50, i32 noundef %56) #27
  %58 = load ptr, ptr %27, align 8, !tbaa !50
  %59 = load ptr, ptr %4, align 8, !tbaa !5
  %60 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #25
  %61 = trunc i64 %60 to i32
  %62 = add i32 %61, 1
  call void @append_to_property(ptr noundef %1, ptr noundef %58, ptr noundef %59, i32 noundef %62, i32 noundef 8) #27
  %63 = load ptr, ptr %4, align 8, !tbaa !5
  call void @free(ptr noundef %63) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %64

64:                                               ; preds = %54, %38, %22
  %65 = getelementptr inbounds %struct.marker, ptr %23, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %22

68:                                               ; preds = %64, %16, %12
  %69 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %12

72:                                               ; preds = %68, %3
  %73 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %81, %72
  %77 = phi ptr [ %83, %81 ], [ %74, %72 ]
  %78 = load i8, ptr %77, align 8, !tbaa !28, !range !14
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call fastcc void @generate_fixups_tree_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %77)
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.node, ptr %77, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %76

85:                                               ; preds = %81, %72
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @generate_local_fixups_tree(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call fastcc zeroext i1 @any_local_fixup_tree(ptr noundef %0, ptr noundef %4)
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !43
  %8 = tail call fastcc ptr @build_root_node(ptr noundef %7, ptr noundef %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !43
  tail call fastcc void @generate_local_fixups_tree_internal(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %9)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @any_local_fixup_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %40, %6
  %9 = phi ptr [ %4, %6 ], [ %42, %40 ]
  %10 = load i8, ptr %9, align 8, !tbaa !22, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %36, %12
  %17 = phi ptr [ %38, %36 ], [ %14, %12 ]
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.marker, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr %23, align 1, !tbaa !34
  %28 = icmp eq i8 %27, 47
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @get_node_by_path(ptr noundef %21, ptr noundef nonnull %23) #27
  br label %33

31:                                               ; preds = %26
  %32 = tail call ptr @get_node_by_label(ptr noundef %21, ptr noundef nonnull %23) #27
  br label %33

33:                                               ; preds = %31, %29, %20
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ], [ %21, %20 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %33, %16
  %37 = getelementptr inbounds %struct.marker, ptr %17, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %16

40:                                               ; preds = %36, %12, %8
  %41 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %8

44:                                               ; preds = %40, %2
  %45 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %54, %44
  %49 = phi ptr [ %56, %54 ], [ %46, %44 ]
  %50 = load i8, ptr %49, align 8, !tbaa !28, !range !14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i1 @any_local_fixup_tree(ptr noundef %0, ptr noundef nonnull %49)
  br i1 %53, label %58, label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.node, ptr %49, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %48

58:                                               ; preds = %54, %52, %44, %33
  %59 = phi i1 [ false, %44 ], [ true, %52 ], [ false, %54 ], [ true, %33 ]
  ret i1 %59
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_local_fixups_tree_internal(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dt_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %121, label %10

10:                                               ; preds = %117, %3
  %11 = phi ptr [ %119, %117 ], [ %8, %3 ]
  %12 = load i8, ptr %11, align 8, !tbaa !22, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %117

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %117, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 1
  br label %20

20:                                               ; preds = %113, %18
  %21 = phi ptr [ %16, %18 ], [ %115, %113 ]
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %113

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.marker, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i8, ptr %26, align 1, !tbaa !34
  %31 = icmp eq i8 %30, 47
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call ptr @get_node_by_path(ptr noundef %6, ptr noundef nonnull %26) #27
  br label %36

34:                                               ; preds = %29
  %35 = call ptr @get_node_by_label(ptr noundef %6, ptr noundef nonnull %26) #27
  br label %36

36:                                               ; preds = %34, %32, %24
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ], [ %6, %24 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %113, label %39

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  br label %40

40:                                               ; preds = %40, %39
  %41 = phi i32 [ %43, %40 ], [ 0, %39 ]
  %42 = phi ptr [ %45, %40 ], [ %2, %39 ]
  %43 = add nuw nsw i32 %41, 1
  %44 = getelementptr inbounds %struct.node, ptr %42, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %40

47:                                               ; preds = %40
  %48 = zext i32 %43 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = call noalias ptr @malloc(i64 noundef %49) #28
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

53:                                               ; preds = %55
  %54 = icmp eq i32 %41, 0
  br i1 %54, label %107, label %65

55:                                               ; preds = %55, %47
  %56 = phi i64 [ %58, %55 ], [ %48, %47 ]
  %57 = phi ptr [ %63, %55 ], [ %2, %47 ]
  %58 = add i64 %56, -1
  %59 = getelementptr inbounds %struct.node, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  %61 = getelementptr inbounds ptr, ptr %50, i64 %58
  store ptr %60, ptr %61, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.node, ptr %57, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !29
  %64 = icmp eq ptr %63, null
  br i1 %64, label %53, label %55

65:                                               ; preds = %103, %53
  %66 = phi i64 [ %105, %103 ], [ 1, %53 ]
  %67 = phi ptr [ %104, %103 ], [ %1, %53 ]
  %68 = getelementptr inbounds ptr, ptr %50, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.node, ptr %67, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %82, %65
  %74 = phi ptr [ %84, %82 ], [ %71, %65 ]
  %75 = load i8, ptr %74, align 8, !tbaa !28, !range !14
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.node, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %69) #25
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %77, %73
  %83 = getelementptr inbounds %struct.node, ptr %74, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %73

86:                                               ; preds = %82, %65
  %87 = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) #27
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

90:                                               ; preds = %86
  %91 = call ptr @srcpos_copy(ptr noundef null) #27
  %92 = getelementptr inbounds %struct.node, ptr %87, i64 0, i32 13
  store ptr %91, ptr %92, align 8, !tbaa !27
  %93 = call ptr @xstrdup(ptr noundef %69) #27
  %94 = getelementptr inbounds %struct.node, ptr %87, i64 0, i32 1
  store ptr %93, ptr %94, align 8, !tbaa !30
  %95 = getelementptr inbounds %struct.node, ptr %87, i64 0, i32 5
  store ptr null, ptr %95, align 8, !tbaa !33
  %96 = getelementptr inbounds %struct.node, ptr %87, i64 0, i32 4
  store ptr %67, ptr %96, align 8, !tbaa !29
  br label %97

97:                                               ; preds = %97, %90
  %98 = phi ptr [ %70, %90 ], [ %101, %97 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  %101 = getelementptr inbounds %struct.node, ptr %99, i64 0, i32 5
  br i1 %100, label %102, label %97

102:                                              ; preds = %97
  store ptr %87, ptr %98, align 8, !tbaa !5
  br label %103

103:                                              ; preds = %102, %77
  %104 = phi ptr [ %87, %102 ], [ %74, %77 ]
  %105 = add nuw nsw i64 %66, 1
  %106 = icmp eq i64 %105, %48
  br i1 %106, label %107, label %65

107:                                              ; preds = %103, %53
  %108 = phi ptr [ %1, %53 ], [ %104, %103 ]
  call void @free(ptr noundef %50) #27
  %109 = getelementptr inbounds %struct.marker, ptr %21, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !58
  %111 = call i32 @llvm.bswap.i32(i32 %110) #27
  store i32 %111, ptr %4, align 4, !tbaa !20
  %112 = load ptr, ptr %19, align 8, !tbaa !15
  call void @append_to_property(ptr noundef %108, ptr noundef %112, ptr noundef nonnull %4, i32 noundef 4, i32 noundef 6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  br label %113

113:                                              ; preds = %107, %36, %20
  %114 = getelementptr inbounds %struct.marker, ptr %21, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %20

117:                                              ; preds = %113, %14, %10
  %118 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %10

121:                                              ; preds = %117, %3
  %122 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %130, %121
  %126 = phi ptr [ %132, %130 ], [ %123, %121 ]
  %127 = load i8, ptr %126, align 8, !tbaa !28, !range !14
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  call fastcc void @generate_local_fixups_tree_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %126)
  br label %130

130:                                              ; preds = %129, %125
  %131 = getelementptr inbounds %struct.node, ptr %126, i64 0, i32 5
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %125

134:                                              ; preds = %130, %121
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #16 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #27
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %3) #29
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #29
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @cmp_reserve_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = load i64, ptr %3, align 8, !tbaa !35
  %6 = load i64, ptr %4, align 8, !tbaa !35
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.reserve_info, ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.reserve_info, ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !38
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i64 %12, %14
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %10, %8, %2
  %20 = phi i32 [ -1, %2 ], [ 1, %8 ], [ -1, %10 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @cmp_prop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %8) #25
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @cmp_subnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %8) #25
  ret i32 %9
}

declare void @data_copy_escape_string(ptr sret(%struct.data) align 8, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { nofree nounwind }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"label", !11, i64 0, !6, i64 8, !6, i64 16}
!11 = !{!"_Bool", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{i8 0, i8 2}
!15 = !{!16, !6, i64 8}
!16 = !{!"property", !11, i64 0, !6, i64 8, !17, i64 16, !6, i64 40, !6, i64 48, !6, i64 56}
!17 = !{!"data", !18, i64 0, !6, i64 8, !6, i64 16}
!18 = !{!"int", !7, i64 0}
!19 = !{i64 0, i64 4, !20, i64 8, i64 8, !5, i64 16, i64 8, !5}
!20 = !{!18, !18, i64 0}
!21 = !{!16, !6, i64 56}
!22 = !{!16, !11, i64 0}
!23 = !{!16, !6, i64 40}
!24 = !{!25, !6, i64 16}
!25 = !{!"node", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !18, i64 56, !18, i64 60, !18, i64 64, !18, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !11, i64 96, !11, i64 97}
!26 = !{!25, !6, i64 24}
!27 = !{!25, !6, i64 88}
!28 = !{!25, !11, i64 0}
!29 = !{!25, !6, i64 32}
!30 = !{!25, !6, i64 8}
!31 = !{!25, !11, i64 96}
!32 = !{!25, !11, i64 97}
!33 = !{!25, !6, i64 40}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"reserve_info", !37, i64 0, !37, i64 8, !6, i64 16, !6, i64 24}
!37 = !{!"long", !7, i64 0}
!38 = !{!36, !37, i64 8}
!39 = !{!36, !6, i64 16}
!40 = !{!41, !18, i64 0}
!41 = !{!"dt_info", !18, i64 0, !6, i64 8, !18, i64 16, !6, i64 24, !6, i64 32}
!42 = !{!41, !6, i64 8}
!43 = !{!41, !6, i64 24}
!44 = !{!41, !18, i64 16}
!45 = !{!25, !18, i64 56}
!46 = !{!16, !18, i64 16}
!47 = !{!16, !6, i64 24}
!48 = !{!49, !7, i64 0}
!49 = !{!"marker", !7, i64 0, !18, i64 4, !6, i64 8, !6, i64 16}
!50 = !{!49, !6, i64 8}
!51 = !{!25, !18, i64 60}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = !{!25, !6, i64 72}
!57 = !{!25, !6, i64 48}
!58 = !{!49, !18, i64 4}
