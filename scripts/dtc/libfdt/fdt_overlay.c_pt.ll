; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_overlay.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"/__local_fixups__\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/__fixups__\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/__symbols__\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"/__overlay__/\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"/__overlay__\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_overlay_apply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %9 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %151, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @fdt_ro_probe_(ptr noundef %1) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %151, label %14

14:                                               ; preds = %11
  %15 = call i32 @fdt_find_max_phandle(ptr noundef %0, ptr noundef nonnull %8) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %146

17:                                               ; preds = %14
  %18 = load i32, ptr %8, align 4, !tbaa !5
  %19 = call fastcc i32 @overlay_adjust_node_phandles(ptr noundef %1, i32 noundef 0, i32 noundef %18) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %146

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4, !tbaa !5
  %23 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %30, label %146

27:                                               ; preds = %21
  %28 = call fastcc i32 @overlay_update_local_node_references(ptr noundef %1, i32 noundef 0, i32 noundef %23, i32 noundef %22) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %146

30:                                               ; preds = %27, %25
  %31 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %140, label %33

33:                                               ; preds = %30
  %34 = icmp slt i32 %31, 0
  br i1 %34, label %146, label %35

35:                                               ; preds = %33
  %36 = call i32 @fdt_path_offset(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %37 = icmp slt i32 %36, -1
  br i1 %37, label %146, label %38

38:                                               ; preds = %35
  %39 = call i32 @fdt_first_property_offset(ptr noundef %1, i32 noundef %31) #8
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %140

41:                                               ; preds = %38
  %42 = icmp slt i32 %36, 0
  br label %43

43:                                               ; preds = %137, %41
  %44 = phi i32 [ %39, %41 ], [ %138, %137 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %45 = call ptr @fdt_getprop_by_offset(ptr noundef %1, i32 noundef %44, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %46 = icmp eq ptr %45, null
  %47 = load i32, ptr %6, align 4, !tbaa !5
  br i1 %46, label %48, label %50

48:                                               ; preds = %43
  %49 = icmp eq i32 %47, -1
  br i1 %49, label %133, label %135

50:                                               ; preds = %129, %43
  %51 = phi i32 [ %130, %129 ], [ %47, %43 ]
  %52 = phi ptr [ %64, %129 ], [ %45, %43 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %53 = sext i32 %51 to i64
  %54 = call ptr @memchr(ptr noundef %52, i32 noundef 0, i64 noundef %53) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %123, label %56

56:                                               ; preds = %50
  %57 = ptrtoint ptr %54 to i64
  %58 = ptrtoint ptr %52 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = add i32 %60, 1
  %62 = sub i32 %51, %61
  store i32 %62, ptr %6, align 4, !tbaa !5
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %52, i64 %63
  %65 = and i64 %59, 4294967295
  %66 = call ptr @memchr(ptr noundef %52, i32 noundef 58, i64 noundef %65) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %123, label %68

68:                                               ; preds = %56
  %69 = load i8, ptr %66, align 1, !tbaa !9
  %70 = icmp eq i8 %69, 58
  br i1 %70, label %71, label %123

71:                                               ; preds = %68
  %72 = ptrtoint ptr %66 to i64
  %73 = sub i64 %72, %58
  %74 = trunc i64 %73 to i32
  %75 = add i32 %60, -1
  %76 = icmp eq i32 %75, %74
  br i1 %76, label %123, label %77

77:                                               ; preds = %71
  %78 = xor i64 %73, -1
  %79 = add i64 %59, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 1
  %81 = and i64 %79, 4294967295
  %82 = call ptr @memchr(ptr noundef nonnull %80, i32 noundef 58, i64 noundef %81) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %123, label %84

84:                                               ; preds = %77
  %85 = load i8, ptr %82, align 1, !tbaa !9
  %86 = icmp eq i8 %85, 58
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  %88 = ptrtoint ptr %82 to i64
  %89 = ptrtoint ptr %80 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, ptr %82, i64 1
  %95 = call i64 @strtoul(ptr noundef nonnull %94, ptr noundef nonnull %7, i32 noundef 10) #8
  %96 = trunc i64 %95 to i32
  %97 = load ptr, ptr %7, align 8, !tbaa !10
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = icmp eq i8 %98, 0
  %100 = icmp ugt ptr %97, %94
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %123

102:                                              ; preds = %93
  %103 = load ptr, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  br i1 %42, label %124, label %104

104:                                              ; preds = %102
  %105 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %36, ptr noundef %103, ptr noundef nonnull %4) #8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, ptr %4, align 4, !tbaa !5
  br label %126

109:                                              ; preds = %104
  %110 = call i32 @fdt_path_offset(ptr noundef %0, ptr noundef nonnull %105) #8
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %110) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = call i32 @fdt_path_offset_namelen(ptr noundef %1, ptr noundef %52, i32 noundef %74) #8
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = icmp slt i32 %116, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = call i32 @llvm.bswap.i32(i32 %113) #8
  store i32 %121, ptr %3, align 4, !tbaa !5
  %122 = call i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %1, i32 noundef %116, ptr noundef nonnull %80, i32 noundef %91, i32 noundef %96, ptr noundef nonnull %3, i32 noundef 4) #8
  br label %126

123:                                              ; preds = %93, %87, %84, %77, %71, %68, %56, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %133

124:                                              ; preds = %118, %115, %112, %109, %102
  %125 = phi i32 [ %116, %118 ], [ -16, %115 ], [ -1, %112 ], [ %110, %109 ], [ %36, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %133

126:                                              ; preds = %120, %107
  %127 = phi i32 [ %122, %120 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %128 = icmp eq i32 %127, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, ptr %6, align 4, !tbaa !5
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %50, label %132

132:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %137

133:                                              ; preds = %126, %124, %123, %48
  %134 = phi i32 [ %125, %124 ], [ -16, %123 ], [ %127, %126 ], [ -13, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %146

135:                                              ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %136 = icmp eq i32 %47, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %135, %132
  %138 = call i32 @fdt_next_property_offset(ptr noundef %1, i32 noundef %44) #8
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %43, label %140

140:                                              ; preds = %137, %38, %30
  %141 = call fastcc i32 @overlay_merge(ptr noundef %0, ptr noundef %1)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = call fastcc i32 @overlay_symbol_update(ptr noundef %0, ptr noundef %1)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143, %140, %135, %133, %35, %33, %27, %25, %17, %14
  %147 = phi i32 [ %15, %14 ], [ %19, %17 ], [ %28, %27 ], [ %141, %140 ], [ %144, %143 ], [ %23, %25 ], [ %134, %133 ], [ %36, %35 ], [ %31, %33 ], [ %47, %135 ]
  store i32 -1, ptr %1, align 4, !tbaa !12
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi ptr [ %0, %146 ], [ %1, %143 ]
  %150 = phi i32 [ %147, %146 ], [ 0, %143 ]
  store i32 -1, ptr %149, align 4, !tbaa !12
  br label %151

151:                                              ; preds = %148, %11, %2
  %152 = phi i32 [ %12, %11 ], [ %9, %2 ], [ %150, %148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  ret i32 %152
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @fdt_find_max_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_merge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @fdt_first_subnode(ptr noundef %1, i32 noundef 0) #8
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %20

5:                                                ; preds = %17, %2
  %6 = phi i32 [ %18, %17 ], [ %3, %2 ]
  %7 = tail call i32 @fdt_subnode_offset(ptr noundef %1, i32 noundef %6, ptr noundef nonnull @.str.5) #8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @overlay_get_target(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef null)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @overlay_apply_node(ptr noundef %0, i32 noundef %12, ptr noundef %1, i32 noundef %7)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %5
  %18 = tail call i32 @fdt_next_subnode(ptr noundef %1, i32 noundef %6) #8
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %5, label %20

20:                                               ; preds = %17, %14, %11, %9, %2
  %21 = phi i32 [ 0, %2 ], [ %15, %14 ], [ %12, %11 ], [ %7, %9 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_symbol_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %8 = tail call i32 @fdt_subnode_offset(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.8) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %155, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.8) #8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @fdt_add_subnode(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.8) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ %11, %10 ]
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %155, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @fdt_first_property_offset(ptr noundef %1, i32 noundef %8) #8
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %155

21:                                               ; preds = %152, %18
  %22 = phi i32 [ %153, %152 ], [ %19, %18 ]
  %23 = call ptr @fdt_getprop_by_offset(ptr noundef %1, i32 noundef %22, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %24 = icmp eq ptr %23, null
  %25 = load i32, ptr %4, align 4, !tbaa !5
  br i1 %24, label %155, label %26

26:                                               ; preds = %21
  %27 = icmp slt i32 %25, 1
  br i1 %27, label %155, label %28

28:                                               ; preds = %26
  %29 = zext i32 %25 to i64
  %30 = call ptr @memchr(ptr noundef nonnull %23, i32 noundef 0, i64 noundef %29) #9
  %31 = add nsw i32 %25, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %23, i64 %32
  %34 = icmp eq ptr %30, %33
  br i1 %34, label %35, label %155

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, ptr %23, i64 %29
  %37 = load i8, ptr %23, align 1, !tbaa !9
  %38 = icmp eq i8 %37, 47
  br i1 %38, label %39, label %155

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %23, i64 1
  %41 = call ptr @strchr(ptr noundef nonnull %40, i32 noundef 47) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %152, label %43

43:                                               ; preds = %39
  %44 = ptrtoint ptr %41 to i64
  %45 = ptrtoint ptr %23 to i64
  %46 = xor i64 %45, -1
  %47 = add i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = ptrtoint ptr %36 to i64
  %50 = sub i64 %49, %44
  %51 = icmp sgt i64 %50, 13
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %41, ptr noundef nonnull dereferenceable(13) @.str.9, i64 13)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %152

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %41, i64 13
  %57 = ptrtoint ptr %56 to i64
  %58 = xor i64 %57, -1
  %59 = add i64 %58, %49
  %60 = trunc i64 %59 to i32
  br label %66

61:                                               ; preds = %43
  %62 = icmp eq i64 %50, 13
  br i1 %62, label %63, label %152

63:                                               ; preds = %61
  %64 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %41, ptr noundef nonnull dereferenceable(12) @.str.10, i64 12)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %152

66:                                               ; preds = %63, %55
  %67 = phi i32 [ %60, %55 ], [ 0, %63 ]
  %68 = phi ptr [ %56, %55 ], [ @.str.11, %63 ]
  %69 = call i32 @fdt_subnode_offset_namelen(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %40, i32 noundef %48) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %155, label %71

71:                                               ; preds = %66
  %72 = call i32 @fdt_subnode_offset(ptr noundef %1, i32 noundef %69, ptr noundef nonnull @.str.5) #8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %155, label %74

74:                                               ; preds = %71
  %75 = call fastcc i32 @overlay_get_target(ptr noundef %0, ptr noundef %1, i32 noundef %69, ptr noundef nonnull %6)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %155, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %6, align 8, !tbaa !10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %81 = call i32 @fdt_ro_probe_(ptr noundef %0) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %80
  %84 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %3) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %96, %83
  %87 = load i32, ptr %3, align 4, !tbaa !5
  br label %107

88:                                               ; preds = %96, %83
  %89 = phi i32 [ %94, %96 ], [ %75, %83 ]
  %90 = phi i32 [ %99, %96 ], [ 0, %83 ]
  %91 = load i32, ptr %3, align 4, !tbaa !5
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = call i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %89) #8
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %3, align 4, !tbaa !5
  %98 = add i32 %90, 1
  %99 = add i32 %98, %97
  %100 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %94, ptr noundef nonnull %3) #8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %86, label %88

102:                                              ; preds = %88
  %103 = icmp eq i32 %90, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %113

105:                                              ; preds = %93, %80
  %106 = phi i32 [ %94, %93 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %155

107:                                              ; preds = %102, %86
  %108 = phi i32 [ %90, %102 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %155, label %113

110:                                              ; preds = %77
  %111 = call i64 @strlen(ptr noundef nonnull %78) #9
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %110, %107, %104
  %114 = phi i32 [ %112, %110 ], [ %108, %107 ], [ 1, %104 ]
  %115 = load ptr, ptr %5, align 8, !tbaa !10
  %116 = icmp sgt i32 %114, 1
  %117 = zext i1 %116 to i32
  %118 = add i32 %114, 1
  %119 = add i32 %118, %67
  %120 = add i32 %119, %117
  %121 = call i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %16, ptr noundef %115, i32 noundef %120, ptr noundef nonnull %7) #8
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %155, label %123

123:                                              ; preds = %113
  %124 = load ptr, ptr %6, align 8, !tbaa !10
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = call fastcc i32 @overlay_get_target(ptr noundef %0, ptr noundef %1, i32 noundef %69, ptr noundef nonnull %6)
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %126, %123
  %130 = phi i32 [ %75, %123 ], [ %127, %126 ]
  %131 = load ptr, ptr %7, align 8, !tbaa !10
  br i1 %116, label %132, label %140

132:                                              ; preds = %129
  %133 = load ptr, ptr %6, align 8, !tbaa !10
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = call i32 @fdt_get_path(ptr noundef %0, i32 noundef %130, ptr noundef %131, i32 noundef %118) #8
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %155, label %142

138:                                              ; preds = %132
  %139 = zext i32 %118 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr nonnull align 1 %133, i64 %139, i1 false)
  br label %142

140:                                              ; preds = %129
  %141 = add nsw i32 %114, -1
  br label %142

142:                                              ; preds = %140, %138, %135
  %143 = phi i32 [ %114, %138 ], [ %114, %135 ], [ %141, %140 ]
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %131, i64 %144
  store i8 47, ptr %145, align 1, !tbaa !9
  %146 = getelementptr inbounds i8, ptr %145, i64 1
  %147 = sext i32 %67 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %146, ptr nonnull align 1 %68, i64 %147, i1 false)
  %148 = add i32 %67, 1
  %149 = add i32 %148, %143
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %131, i64 %150
  store i8 0, ptr %151, align 1, !tbaa !9
  br label %152

152:                                              ; preds = %142, %63, %61, %52, %39
  %153 = call i32 @fdt_next_property_offset(ptr noundef %1, i32 noundef %22) #8
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %21, label %155

155:                                              ; preds = %152, %135, %126, %113, %107, %105, %74, %71, %66, %35, %28, %26, %21, %18, %15, %2
  %156 = phi i32 [ 0, %2 ], [ %16, %15 ], [ %106, %105 ], [ 0, %18 ], [ %25, %21 ], [ -15, %28 ], [ -15, %26 ], [ -15, %35 ], [ -16, %66 ], [ -16, %71 ], [ %75, %74 ], [ %108, %107 ], [ %121, %113 ], [ %127, %126 ], [ %136, %135 ], [ 0, %152 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %156
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_adjust_node_phandles(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %7) #8
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr %7, align 4, !tbaa !5
  br i1 %9, label %25, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %10, 4
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = load i32, ptr %8, align 4, !tbaa !5
  %15 = call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = add i32 %15, %2
  %17 = icmp ult i32 %16, %15
  %18 = icmp eq i32 %16, -1
  %19 = or i1 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %21 = call i32 @llvm.bswap.i32(i32 %16) #8
  store i32 %21, ptr %6, align 4, !tbaa !5
  %22 = call i32 @fdt_setprop_inplace(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %6, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %25

23:                                               ; preds = %13, %11
  %24 = phi i32 [ -17, %13 ], [ -6, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %61

25:                                               ; preds = %20, %3
  %26 = phi i32 [ %22, %20 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, -2
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %30 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #8
  %31 = icmp eq ptr %30, null
  %32 = load i32, ptr %5, align 4, !tbaa !5
  br i1 %31, label %47, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %32, 4
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load i32, ptr %30, align 4, !tbaa !5
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = add i32 %37, %2
  %39 = icmp ult i32 %38, %37
  %40 = icmp eq i32 %38, -1
  %41 = or i1 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %43 = call i32 @llvm.bswap.i32(i32 %38) #8
  store i32 %43, ptr %4, align 4, !tbaa !5
  %44 = call i32 @fdt_setprop_inplace(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %47

45:                                               ; preds = %35, %33
  %46 = phi i32 [ -17, %35 ], [ -6, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %61

47:                                               ; preds = %42, %29
  %48 = phi i32 [ %44, %42 ], [ %32, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %49 = add i32 %48, -1
  %50 = icmp ult i32 %49, -2
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = call i32 @fdt_first_subnode(ptr noundef %0, i32 noundef %1) #8
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %58, %51
  %55 = phi i32 [ %59, %58 ], [ %52, %51 ]
  %56 = call fastcc i32 @overlay_adjust_node_phandles(ptr noundef %0, i32 noundef %55, i32 noundef %2)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = call i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %55) #8
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %54, label %61

61:                                               ; preds = %58, %54, %51, %47, %45, %25, %23
  %62 = phi i32 [ %26, %25 ], [ %48, %47 ], [ %24, %23 ], [ %46, %45 ], [ 0, %51 ], [ %56, %54 ], [ 0, %58 ]
  ret i32 %62
}

declare i32 @fdt_first_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_next_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fdt_setprop_inplace(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_update_local_node_references(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call i32 @fdt_first_property_offset(ptr noundef %0, i32 noundef %2) #8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %59

11:                                               ; preds = %56, %4
  %12 = phi i32 [ %57, %56 ], [ %9, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %13 = call ptr @fdt_getprop_by_offset(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %14 = icmp eq ptr %13, null
  %15 = load i32, ptr %6, align 4, !tbaa !5
  br i1 %14, label %54, label %16

16:                                               ; preds = %11
  %17 = and i32 %15, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = ashr i32 %15, 2
  store i32 %20, ptr %6, align 4, !tbaa !5
  %21 = load ptr, ptr %5, align 8, !tbaa !10
  %22 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef %21, ptr noundef nonnull %7) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %6, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %31, label %56

27:                                               ; preds = %19
  %28 = load i32, ptr %7, align 4, !tbaa !5
  %29 = icmp eq i32 %28, -1
  %30 = select i1 %29, i32 -16, i32 %28
  br label %54

31:                                               ; preds = %49, %24
  %32 = phi i64 [ %50, %49 ], [ 0, %24 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %33 = getelementptr inbounds i32, ptr %13, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %22, i64 %36
  %38 = load i32, ptr %37, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = add i32 %39, %3
  %41 = call i32 @llvm.bswap.i32(i32 %40) #8
  store i32 %41, ptr %8, align 4, !tbaa !5
  %42 = load ptr, ptr %5, align 8, !tbaa !10
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #9
  %44 = trunc i64 %43 to i32
  %45 = call i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %0, i32 noundef %1, ptr noundef %42, i32 noundef %44, i32 noundef %35, ptr noundef nonnull %8, i32 noundef 4) #8
  switch i32 %45, label %47 [
    i32 -3, label %46
    i32 0, label %49
  ]

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %31
  %48 = phi i32 [ -16, %46 ], [ %45, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %54

49:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %50 = add nuw nsw i64 %32, 1
  %51 = load i32, ptr %6, align 4, !tbaa !5
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %31, label %56

54:                                               ; preds = %47, %27, %16, %11
  %55 = phi i32 [ %48, %47 ], [ %30, %27 ], [ %15, %11 ], [ -16, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %75

56:                                               ; preds = %49, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %57 = call i32 @fdt_next_property_offset(ptr noundef %0, i32 noundef %12) #8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %11, label %59

59:                                               ; preds = %56, %4
  %60 = call i32 @fdt_first_subnode(ptr noundef %0, i32 noundef %2) #8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %75

62:                                               ; preds = %72, %59
  %63 = phi i32 [ %73, %72 ], [ %60, %59 ]
  %64 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %63, ptr noundef null) #8
  %65 = call i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef %1, ptr noundef %64) #8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = icmp slt i32 %65, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %67
  %70 = call fastcc i32 @overlay_update_local_node_references(ptr noundef %0, i32 noundef %65, i32 noundef %63, i32 noundef %3)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %63) #8
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %62, label %75

75:                                               ; preds = %72, %69, %67, %62, %59, %54
  %76 = phi i32 [ %55, %54 ], [ 0, %59 ], [ %70, %69 ], [ 0, %72 ], [ -16, %62 ], [ %65, %67 ]
  ret i32 %76
}

declare i32 @fdt_first_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_getprop_by_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @fdt_setprop_inplace_namelen_partial(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare i32 @fdt_next_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fdt_subnode_offset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

declare i32 @fdt_get_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_path_offset_namelen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_get_target(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %7 = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %19

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4, !tbaa !5
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 4, !tbaa !5
  %15 = call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = icmp eq i32 %14, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %41

18:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  switch i32 %15, label %27 [
    i32 -1, label %41
    i32 0, label %19
  ]

19:                                               ; preds = %18, %9
  %20 = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call i32 @fdt_path_offset(ptr noundef %0, ptr noundef nonnull %20) #8
  %24 = load i32, ptr %6, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load i32, ptr %6, align 4, !tbaa !5
  br label %29

27:                                               ; preds = %18
  %28 = call i32 @fdt_node_offset_by_phandle(ptr noundef %0, i32 noundef %15) #8
  br label %29

29:                                               ; preds = %27, %25, %22
  %30 = phi i32 [ 0, %27 ], [ %24, %22 ], [ %26, %25 ]
  %31 = phi ptr [ null, %27 ], [ %20, %22 ], [ null, %25 ]
  %32 = phi i32 [ %28, %27 ], [ %23, %22 ], [ %26, %25 ]
  %33 = icmp slt i32 %32, 0
  %34 = icmp eq i32 %30, -1
  %35 = select i1 %33, i1 %34, i1 false
  %36 = select i1 %35, i32 -16, i32 %32
  %37 = icmp slt i32 %36, 0
  %38 = icmp eq ptr %3, null
  %39 = or i1 %38, %37
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store ptr %31, ptr %3, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %40, %29, %18, %17
  %42 = phi i32 [ -6, %18 ], [ %36, %29 ], [ %32, %40 ], [ -6, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_apply_node(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call i32 @fdt_first_property_offset(ptr noundef %2, i32 noundef %3) #8
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %25

9:                                                ; preds = %22, %4
  %10 = phi i32 [ %23, %22 ], [ %7, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %11 = call ptr @fdt_getprop_by_offset(ptr noundef %2, i32 noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %12 = load i32, ptr %6, align 4, !tbaa !5
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %12, %14 ], [ -13, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %45

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 8, !tbaa !10
  %20 = call i32 @fdt_setprop(ptr noundef %0, i32 noundef %1, ptr noundef %19, ptr noundef %11, i32 noundef %12) #8
  %21 = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = call i32 @fdt_next_property_offset(ptr noundef %2, i32 noundef %10) #8
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %9, label %25

25:                                               ; preds = %22, %4
  %26 = call i32 @fdt_first_subnode(ptr noundef %2, i32 noundef %3) #8
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %45

28:                                               ; preds = %42, %25
  %29 = phi i32 [ %43, %42 ], [ %26, %25 ]
  %30 = call ptr @fdt_get_name(ptr noundef %2, i32 noundef %29, ptr noundef null) #8
  %31 = call i32 @fdt_add_subnode(ptr noundef %0, i32 noundef %1, ptr noundef %30) #8
  %32 = icmp eq i32 %31, -2
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef %1, ptr noundef %30) #8
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %45, label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %34, %33 ], [ %31, %28 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = call fastcc i32 @overlay_apply_node(ptr noundef %0, i32 noundef %37, ptr noundef %2, i32 noundef %29)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @fdt_next_subnode(ptr noundef %2, i32 noundef %29) #8
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %28, label %45

45:                                               ; preds = %42, %39, %36, %33, %25, %18, %16
  %46 = phi i32 [ %17, %16 ], [ 0, %25 ], [ %40, %39 ], [ 0, %42 ], [ -13, %33 ], [ %37, %36 ], [ %20, %18 ]
  ret i32 %46
}

declare i32 @fdt_node_offset_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_add_subnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_setprop_placeholder(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fdt_get_path(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_parent_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"fdt_header", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
