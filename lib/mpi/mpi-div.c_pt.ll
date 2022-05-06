; ModuleID = '/llk/IR/lib/mpi/mpi-div.c_pt.bc'
source_filename = "../lib/mpi/mpi-div.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_fdiv_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @mpi_copy(ptr noundef %2) #5
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %2, %3 ]
  %11 = phi ptr [ %8, %7 ], [ null, %3 ]
  tail call void @mpi_tdiv_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %10) #5
  %12 = icmp ne i32 %5, 0
  %13 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @mpi_add(ptr noundef %0, ptr noundef %0, ptr noundef %10) #5
  br label %22

22:                                               ; preds = %21, %17, %9
  %23 = icmp eq ptr %11, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @mpi_free(ptr noundef nonnull %11) #5
  br label %25

25:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_tdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @mpi_tdiv_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_fdiv_q(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @mpi_alloc(i32 noundef %5) #5
  tail call void @mpi_fdiv_qr(ptr noundef %0, ptr noundef %6, ptr noundef %1, ptr noundef %2)
  tail call void @mpi_free(ptr noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_fdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq ptr %0, %3
  %8 = icmp eq ptr %1, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @mpi_copy(ptr noundef %3) #5
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %11, %10 ], [ %3, %4 ]
  %14 = phi ptr [ %11, %10 ], [ null, %4 ]
  tail call void @mpi_tdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %13)
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %6, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @mpi_sub_ui(ptr noundef %0, ptr noundef %0, i32 noundef 1) #5
  tail call void @mpi_add(ptr noundef %1, ptr noundef %1, ptr noundef %13) #5
  br label %24

24:                                               ; preds = %22, %18, %12
  %25 = icmp eq ptr %14, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @mpi_free(ptr noundef nonnull %14) #5
  br label %27

27:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_tdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [5 x ptr], align 4
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %15 = add i32 %7, 1
  %16 = tail call i32 @mpi_resize(ptr noundef %1, i32 noundef %15) #5
  %17 = sub i32 %15, %9
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = icmp eq ptr %2, %1
  br i1 %20, label %39, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %6, align 4
  %23 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %10, align 4
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = icmp sgt i32 %7, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ 0, %27 ], [ %37, %30 ]
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr i32, ptr %32, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr i32, ptr %35, i32 %31
  store i32 %34, ptr %36, align 4
  %37 = add nuw nsw i32 %31, 1
  %38 = icmp eq i32 %37, %7
  br i1 %38, label %39, label %30

39:                                               ; preds = %30, %21, %19
  %40 = icmp eq ptr %0, null
  br i1 %40, label %203, label %197

41:                                               ; preds = %4
  %42 = icmp eq ptr %0, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq i32 %9, 1
  br i1 %50, label %73, label %93

51:                                               ; preds = %41
  %52 = tail call i32 @mpi_resize(ptr noundef nonnull %0, i32 noundef %17) #5
  %53 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq i32 %9, 1
  %60 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  br i1 %59, label %62, label %81

62:                                               ; preds = %51
  %63 = load i32, ptr %56, align 4
  %64 = tail call i32 @mpihelp_divmod_1(ptr noundef %61, ptr noundef %54, i32 noundef %7, i32 noundef %63) #5
  %65 = add nsw i32 %17, -1
  %66 = getelementptr i32, ptr %61, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = sext i1 %68 to i32
  %70 = add nsw i32 %17, %69
  %71 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %14, ptr %72, align 4
  br label %76

73:                                               ; preds = %43
  %74 = load i32, ptr %47, align 4
  %75 = tail call i32 @mpihelp_mod_1(ptr noundef %45, i32 noundef %7, i32 noundef %74) #5
  br label %76

76:                                               ; preds = %73, %62
  %77 = phi ptr [ %58, %62 ], [ %49, %73 ]
  %78 = phi i32 [ %64, %62 ], [ %75, %73 ]
  store i32 %78, ptr %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  br label %197

81:                                               ; preds = %51
  %82 = icmp eq ptr %61, %54
  br i1 %82, label %83, label %95

83:                                               ; preds = %81
  %84 = tail call ptr @mpi_alloc_limb_space(i32 noundef %7) #5
  store ptr %84, ptr %5, align 4
  %85 = icmp sgt i32 %7, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %86, %83
  %87 = phi i32 [ %91, %86 ], [ 0, %83 ]
  %88 = getelementptr i32, ptr %54, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr i32, ptr %84, i32 %87
  store i32 %89, ptr %90, align 4
  %91 = add nuw nsw i32 %87, 1
  %92 = icmp eq i32 %91, %7
  br i1 %92, label %95, label %86

93:                                               ; preds = %43
  %94 = getelementptr i32, ptr %49, i32 %9
  br label %95

95:                                               ; preds = %93, %86, %83, %81
  %96 = phi ptr [ %56, %81 ], [ %47, %93 ], [ %56, %83 ], [ %56, %86 ]
  %97 = phi ptr [ %58, %81 ], [ %49, %93 ], [ %58, %83 ], [ %58, %86 ]
  %98 = phi ptr [ %61, %81 ], [ %94, %93 ], [ %54, %83 ], [ %54, %86 ]
  %99 = phi i32 [ 0, %81 ], [ 0, %93 ], [ 1, %83 ], [ 1, %86 ]
  %100 = phi ptr [ %54, %81 ], [ %45, %93 ], [ %84, %83 ], [ %84, %86 ]
  %101 = add i32 %9, -1
  %102 = getelementptr i32, ptr %96, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @llvm.ctlz.i32(i32 %103, i1 false) #5, !range !9
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = tail call ptr @mpi_alloc_limb_space(i32 noundef %9) #5
  %108 = add nuw nsw i32 %99, 1
  %109 = getelementptr [5 x ptr], ptr %5, i32 0, i32 %99
  store ptr %107, ptr %109, align 4
  %110 = tail call i32 @mpihelp_lshift(ptr noundef %107, ptr noundef %96, i32 noundef %9, i32 noundef %104) #5
  %111 = tail call i32 @mpihelp_lshift(ptr noundef %97, ptr noundef %100, i32 noundef %7, i32 noundef %104) #5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %146, label %113

113:                                              ; preds = %106
  %114 = getelementptr i32, ptr %97, i32 %7
  store i32 %111, ptr %114, align 4
  br label %146

115:                                              ; preds = %95
  %116 = icmp eq ptr %96, %97
  br i1 %116, label %121, label %117

117:                                              ; preds = %115
  %118 = xor i1 %42, true
  %119 = icmp eq ptr %96, %98
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %133

121:                                              ; preds = %117, %115
  %122 = tail call ptr @mpi_alloc_limb_space(i32 noundef %9) #5
  %123 = add nuw nsw i32 %99, 1
  %124 = getelementptr [5 x ptr], ptr %5, i32 0, i32 %99
  store ptr %122, ptr %124, align 4
  %125 = icmp sgt i32 %9, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %126, %121
  %127 = phi i32 [ %131, %126 ], [ 0, %121 ]
  %128 = getelementptr i32, ptr %96, i32 %127
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr i32, ptr %122, i32 %127
  store i32 %129, ptr %130, align 4
  %131 = add nuw nsw i32 %127, 1
  %132 = icmp eq i32 %131, %9
  br i1 %132, label %133, label %126

133:                                              ; preds = %126, %121, %117
  %134 = phi ptr [ %96, %117 ], [ %122, %121 ], [ %122, %126 ]
  %135 = phi i32 [ %99, %117 ], [ %123, %121 ], [ %123, %126 ]
  %136 = icmp ne ptr %97, %100
  %137 = icmp sgt i32 %7, 0
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %146

139:                                              ; preds = %139, %133
  %140 = phi i32 [ %144, %139 ], [ 0, %133 ]
  %141 = getelementptr i32, ptr %100, i32 %140
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i32, ptr %97, i32 %140
  store i32 %142, ptr %143, align 4
  %144 = add nuw nsw i32 %140, 1
  %145 = icmp eq i32 %144, %7
  br i1 %145, label %146, label %139

146:                                              ; preds = %139, %133, %113, %106
  %147 = phi ptr [ %107, %106 ], [ %107, %113 ], [ %134, %133 ], [ %134, %139 ]
  %148 = phi i32 [ %7, %106 ], [ %15, %113 ], [ %7, %133 ], [ %7, %139 ]
  %149 = phi i32 [ %108, %106 ], [ %108, %113 ], [ %135, %133 ], [ %135, %139 ]
  %150 = tail call i32 @mpihelp_divrem(ptr noundef %98, i32 noundef 0, ptr noundef %97, i32 noundef %148, ptr noundef %147, i32 noundef %9) #5
  br i1 %42, label %161, label %151

151:                                              ; preds = %146
  %152 = sub i32 %148, %9
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = getelementptr i32, ptr %98, i32 %152
  store i32 %150, ptr %155, align 4
  %156 = add i32 %152, 1
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i32 [ %156, %154 ], [ %152, %151 ]
  %159 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %14, ptr %160, align 4
  br label %161

161:                                              ; preds = %157, %146
  %162 = call i32 @llvm.smin.i32(i32 %9, i32 0)
  br label %163

163:                                              ; preds = %166, %161
  %164 = phi i32 [ %9, %161 ], [ %167, %166 ]
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = add nsw i32 %164, -1
  %168 = getelementptr i32, ptr %97, i32 %167
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %163, label %171

171:                                              ; preds = %166, %163
  %172 = phi i32 [ %164, %166 ], [ %162, %163 ]
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %105, i1 %173, i1 false
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = tail call i32 @mpihelp_rshift(ptr noundef %97, ptr noundef %97, i32 noundef %172, i32 noundef %104) #5
  %177 = add i32 %172, -1
  %178 = getelementptr i32, ptr %97, i32 %177
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  %181 = sext i1 %180 to i32
  %182 = add i32 %172, %181
  br label %183

183:                                              ; preds = %175, %171
  %184 = phi i32 [ %182, %175 ], [ %172, %171 ]
  %185 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  store i32 %11, ptr %186, align 4
  %187 = icmp eq i32 %149, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %183
  %189 = add nsw i32 %149, -1
  %190 = getelementptr [5 x ptr], ptr %5, i32 0, i32 %189
  %191 = load ptr, ptr %190, align 4
  tail call void @mpi_free_limb_space(ptr noundef %191) #5
  %192 = icmp eq i32 %189, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %188
  %194 = add nsw i32 %149, -2
  %195 = getelementptr [5 x ptr], ptr %5, i32 0, i32 %194
  %196 = load ptr, ptr %195, align 4
  tail call void @mpi_free_limb_space(ptr noundef %196) #5
  br label %203

197:                                              ; preds = %76, %39
  %198 = phi ptr [ %1, %76 ], [ %0, %39 ]
  %199 = phi i32 [ %80, %76 ], [ 0, %39 ]
  %200 = phi i32 [ %11, %76 ], [ 0, %39 ]
  %201 = getelementptr inbounds %struct.gcry_mpi, ptr %198, i32 0, i32 1
  store i32 %199, ptr %201, align 4
  %202 = getelementptr inbounds %struct.gcry_mpi, ptr %198, i32 0, i32 3
  store i32 %200, ptr %202, align 4
  br label %203

203:                                              ; preds = %197, %193, %188, %183, %39
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_sub_ui(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_divmod_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mod_1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_divrem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{i32 0, i32 33}
