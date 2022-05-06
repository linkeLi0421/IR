; ModuleID = '/llk/IR/arch/arm/boot/compressed/fdt_rw.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_rw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_node_header = type { i32, [0 x i8] }

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_add_mem_rsv(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %181

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or i32 %14, %10
  %16 = getelementptr i8, ptr %7, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or i32 %15, %19
  %21 = getelementptr i8, ptr %7, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = icmp ult i32 %24, 17
  br i1 %25, label %181, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = getelementptr i8, ptr %27, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %30
  %36 = getelementptr i8, ptr %27, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %35, %39
  %41 = getelementptr i8, ptr %27, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %44) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %181

47:                                               ; preds = %26
  %48 = icmp ugt i32 %24, 17
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 285212672, ptr %7, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #5
  %52 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = getelementptr i8, ptr %52, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or i32 %59, %55
  %61 = getelementptr i8, ptr %52, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %60, %64
  %66 = getelementptr i8, ptr %52, i32 3
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %65, %68
  %70 = getelementptr i8, ptr %0, i32 %69
  %71 = getelementptr %struct.fdt_reserve_entry, ptr %70, i32 %51
  %72 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw i32 %74, 24
  %76 = getelementptr i8, ptr %72, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 16
  %80 = or i32 %79, %75
  %81 = getelementptr i8, ptr %72, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = or i32 %80, %84
  %86 = getelementptr i8, ptr %72, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %85, %88
  %90 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw i32 %92, 24
  %94 = getelementptr i8, ptr %90, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = or i32 %97, %93
  %99 = getelementptr i8, ptr %90, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = or i32 %98, %102
  %104 = getelementptr i8, ptr %90, i32 3
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %103, %106
  %108 = add i32 %107, %89
  %109 = ptrtoint ptr %71 to i32
  %110 = ptrtoint ptr %0 to i32
  %111 = sub i32 %109, %110
  %112 = icmp ugt i32 %111, %108
  %113 = icmp ult ptr %71, %0
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %181, label %115

115:                                              ; preds = %50
  %116 = add i32 %108, 16
  %117 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw i32 %119, 24
  %121 = getelementptr i8, ptr %117, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 16
  %125 = or i32 %124, %120
  %126 = getelementptr i8, ptr %117, i32 2
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or i32 %125, %129
  %131 = getelementptr i8, ptr %117, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %130, %133
  %135 = icmp ugt i32 %116, %134
  br i1 %135, label %181, label %136

136:                                              ; preds = %115
  %137 = getelementptr i8, ptr %71, i32 16
  %138 = getelementptr i8, ptr %0, i32 %108
  %139 = ptrtoint ptr %138 to i32
  %140 = sub i32 %139, %109
  %141 = tail call ptr @memmove(ptr noundef %137, ptr noundef %71, i32 noundef %140) #5
  %142 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl nuw i32 %144, 24
  %146 = getelementptr i8, ptr %142, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 16
  %150 = or i32 %149, %145
  %151 = getelementptr i8, ptr %142, i32 2
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 8
  %155 = or i32 %150, %154
  %156 = getelementptr i8, ptr %142, i32 3
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = or i32 %155, %158
  %160 = add i32 %159, 16
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #6
  store i32 %161, ptr %142, align 4
  %162 = load i8, ptr %72, align 1
  %163 = zext i8 %162 to i32
  %164 = shl nuw i32 %163, 24
  %165 = load i8, ptr %76, align 1
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 16
  %168 = or i32 %167, %164
  %169 = load i8, ptr %81, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 8
  %172 = or i32 %168, %171
  %173 = load i8, ptr %86, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %172, %174
  %176 = add i32 %175, 16
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #6
  store i32 %177, ptr %72, align 4
  %178 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %178, ptr %71, align 8
  %179 = tail call i64 @llvm.bswap.i64(i64 %2)
  %180 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %71, i32 0, i32 1
  store i64 %179, ptr %180, align 8
  br label %181

181:                                              ; preds = %136, %115, %50, %26, %6, %3
  %182 = phi i32 [ 0, %136 ], [ -3, %115 ], [ -4, %50 ], [ -12, %26 ], [ -10, %6 ], [ %4, %3 ]
  ret i32 %182
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_del_mem_rsv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr i8, ptr %0, i32 %20
  %22 = getelementptr %struct.fdt_reserve_entry, ptr %21, i32 %1
  %23 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %185

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = getelementptr i8, ptr %26, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %33, %29
  %35 = getelementptr i8, ptr %26, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %34, %38
  %40 = getelementptr i8, ptr %26, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = icmp ult i32 %43, 17
  br i1 %44, label %185, label %45

45:                                               ; preds = %25
  %46 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr i8, ptr %46, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %53, %49
  %55 = getelementptr i8, ptr %46, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %54, %58
  %60 = getelementptr i8, ptr %46, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %63) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %185

66:                                               ; preds = %45
  %67 = icmp ugt i32 %43, 17
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  store i32 285212672, ptr %26, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #5
  %71 = icmp sgt i32 %70, %1
  br i1 %71, label %72, label %185

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 %75, 24
  %77 = getelementptr i8, ptr %73, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or i32 %80, %76
  %82 = getelementptr i8, ptr %73, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or i32 %81, %85
  %87 = getelementptr i8, ptr %73, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %86, %89
  %91 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw i32 %93, 24
  %95 = getelementptr i8, ptr %91, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = or i32 %98, %94
  %100 = getelementptr i8, ptr %91, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %99, %103
  %105 = getelementptr i8, ptr %91, i32 3
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %104, %107
  %109 = add i32 %108, %90
  %110 = ptrtoint ptr %22 to i32
  %111 = ptrtoint ptr %0 to i32
  %112 = sub i32 %110, %111
  %113 = add i32 %112, 16
  %114 = icmp ugt i32 %112, -17
  %115 = icmp ugt i32 %113, %109
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %185, label %117

117:                                              ; preds = %72
  %118 = icmp ult ptr %22, %0
  %119 = icmp ult i32 %109, 16
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %185, label %121

121:                                              ; preds = %117
  %122 = add i32 %109, -16
  %123 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw i32 %125, 24
  %127 = getelementptr i8, ptr %123, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 16
  %131 = or i32 %130, %126
  %132 = getelementptr i8, ptr %123, i32 2
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 8
  %136 = or i32 %131, %135
  %137 = getelementptr i8, ptr %123, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %136, %139
  %141 = icmp ugt i32 %122, %140
  br i1 %141, label %185, label %142

142:                                              ; preds = %121
  %143 = getelementptr i8, ptr %22, i32 16
  %144 = getelementptr i8, ptr %0, i32 %109
  %145 = ptrtoint ptr %144 to i32
  %146 = ptrtoint ptr %143 to i32
  %147 = sub i32 %145, %146
  %148 = tail call ptr @memmove(ptr noundef %22, ptr noundef %143, i32 noundef %147) #5
  %149 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw i32 %151, 24
  %153 = getelementptr i8, ptr %149, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 16
  %157 = or i32 %156, %152
  %158 = getelementptr i8, ptr %149, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 8
  %162 = or i32 %157, %161
  %163 = getelementptr i8, ptr %149, i32 3
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  %167 = add i32 %166, -16
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #6
  store i32 %168, ptr %149, align 4
  %169 = load i8, ptr %73, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw i32 %170, 24
  %172 = load i8, ptr %77, align 1
  %173 = zext i8 %172 to i32
  %174 = shl nuw nsw i32 %173, 16
  %175 = or i32 %174, %171
  %176 = load i8, ptr %82, align 1
  %177 = zext i8 %176 to i32
  %178 = shl nuw nsw i32 %177, 8
  %179 = or i32 %175, %178
  %180 = load i8, ptr %87, align 1
  %181 = zext i8 %180 to i32
  %182 = or i32 %179, %181
  %183 = add i32 %182, -16
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #6
  store i32 %184, ptr %73, align 4
  br label %185

185:                                              ; preds = %142, %121, %117, %72, %69, %45, %25, %2
  %186 = phi i32 [ -1, %69 ], [ 0, %142 ], [ -12, %45 ], [ -10, %25 ], [ %23, %2 ], [ -3, %121 ], [ -4, %117 ], [ -4, %72 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_set_name(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %105

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %8, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr i8, ptr %8, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = icmp ult i32 %25, 17
  br i1 %26, label %105, label %27

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr i8, ptr %28, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr i8, ptr %28, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr i8, ptr %28, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %45) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %27
  %49 = icmp ugt i32 %25, 17
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 285212672, ptr %8, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, ptr %4, align 4
  br label %105

56:                                               ; preds = %51
  %57 = call i32 @strlen(ptr noundef %2) #5
  %58 = load i32, ptr %4, align 4
  %59 = add i32 %58, 4
  %60 = and i32 %59, -4
  %61 = add i32 %57, 4
  %62 = and i32 %61, -4
  %63 = call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef nonnull %52, i32 noundef %60, i32 noundef %62) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %56
  %66 = sub i32 %62, %60
  %67 = load i8, ptr %28, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = load i8, ptr %32, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 16
  %73 = or i32 %72, %69
  %74 = load i8, ptr %37, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or i32 %73, %76
  %78 = load i8, ptr %42, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = add i32 %80, %66
  %82 = call i32 @llvm.bswap.i32(i32 %81) #6
  store i32 %82, ptr %28, align 4
  %83 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw i32 %85, 24
  %87 = getelementptr i8, ptr %83, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 16
  %91 = or i32 %90, %86
  %92 = getelementptr i8, ptr %83, i32 2
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or i32 %91, %95
  %97 = getelementptr i8, ptr %83, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %96, %99
  %101 = add i32 %100, %66
  %102 = call i32 @llvm.bswap.i32(i32 %101) #6
  store i32 %102, ptr %83, align 4
  %103 = add i32 %57, 1
  %104 = call ptr @memcpy(ptr noundef nonnull %52, ptr noundef %2, i32 noundef %103) #5
  br label %105

105:                                              ; preds = %65, %56, %54, %27, %7, %3
  %106 = phi i32 [ 0, %65 ], [ %55, %54 ], [ %63, %56 ], [ -12, %27 ], [ -10, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %8 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %121

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr i8, ptr %11, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %11, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr i8, ptr %11, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp ult i32 %28, 17
  br i1 %29, label %121, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr i8, ptr %31, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr i8, ptr %31, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr i8, ptr %31, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %48) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %121

51:                                               ; preds = %30
  %52 = icmp ugt i32 %28, 17
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 285212672, ptr %11, align 4
  br label %54

54:                                               ; preds = %53, %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %55 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6) #5
  store ptr %55, ptr %7, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, ptr %6, align 4
  br label %108

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.fdt_property, ptr %55, i32 0, i32 3
  %61 = load i32, ptr %6, align 4
  %62 = add i32 %61, 3
  %63 = and i32 %62, -4
  %64 = add i32 %3, 3
  %65 = and i32 %64, -4
  %66 = call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %60, i32 noundef %63, i32 noundef %65) #5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %59
  %69 = sub i32 %65, %63
  %70 = load i8, ptr %31, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 %71, 24
  %73 = load i8, ptr %35, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 16
  %76 = or i32 %75, %72
  %77 = load i8, ptr %40, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = or i32 %76, %79
  %81 = load i8, ptr %45, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = add i32 %83, %69
  %85 = call i32 @llvm.bswap.i32(i32 %84) #6
  store i32 %85, ptr %31, align 4
  %86 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw i32 %88, 24
  %90 = getelementptr i8, ptr %86, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 16
  %94 = or i32 %93, %89
  %95 = getelementptr i8, ptr %86, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or i32 %94, %98
  %100 = getelementptr i8, ptr %86, i32 3
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %99, %102
  %104 = add i32 %103, %69
  %105 = call i32 @llvm.bswap.i32(i32 %104) #6
  store i32 %105, ptr %86, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %3) #6
  %107 = getelementptr inbounds %struct.fdt_property, ptr %55, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %118

108:                                              ; preds = %59, %57
  %109 = phi i32 [ %58, %57 ], [ %66, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7) #7
  br label %113

113:                                              ; preds = %111, %108
  %114 = phi i32 [ %112, %111 ], [ %109, %108 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load ptr, ptr %7, align 4
  br label %118

118:                                              ; preds = %116, %68
  %119 = phi ptr [ %117, %116 ], [ %55, %68 ]
  %120 = getelementptr inbounds %struct.fdt_property, ptr %119, i32 0, i32 3
  store ptr %120, ptr %4, align 4
  br label %121

121:                                              ; preds = %118, %113, %30, %10, %5
  %122 = phi i32 [ 0, %118 ], [ %114, %113 ], [ -12, %30 ], [ -10, %10 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %289, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = getelementptr i8, ptr %0, i32 %26
  %28 = tail call i32 @strlen(ptr noundef %2) #5
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = getelementptr i8, ptr %30, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %33
  %39 = getelementptr i8, ptr %30, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr i8, ptr %30, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = tail call ptr @fdt_find_string_(ptr noundef %27, i32 noundef %47, ptr noundef %2) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %8
  %51 = ptrtoint ptr %48 to i32
  %52 = ptrtoint ptr %27 to i32
  %53 = sub i32 %51, %52
  br label %137

54:                                               ; preds = %8
  %55 = load i8, ptr %30, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 %56, 24
  %58 = load i8, ptr %34, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = or i32 %60, %57
  %62 = load i8, ptr %39, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %61, %64
  %66 = load i8, ptr %44, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = getelementptr i8, ptr %27, i32 %68
  %70 = load i8, ptr %9, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 %71, 24
  %73 = load i8, ptr %13, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 16
  %76 = or i32 %75, %72
  %77 = load i8, ptr %18, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = or i32 %76, %79
  %81 = load i8, ptr %23, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = getelementptr i8, ptr %0, i32 %83
  %85 = getelementptr i8, ptr %84, i32 %68
  %86 = add i32 %83, %68
  %87 = ptrtoint ptr %85 to i32
  %88 = ptrtoint ptr %0 to i32
  %89 = sub i32 %87, %88
  %90 = icmp ugt i32 %89, %86
  %91 = icmp ult ptr %85, %0
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %289, label %93

93:                                               ; preds = %54
  %94 = add i32 %86, %29
  %95 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr i8, ptr %95, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or i32 %102, %98
  %104 = getelementptr i8, ptr %95, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or i32 %103, %107
  %109 = getelementptr i8, ptr %95, i32 3
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = icmp ugt i32 %94, %112
  br i1 %113, label %289, label %114

114:                                              ; preds = %93
  %115 = getelementptr i8, ptr %85, i32 %29
  %116 = getelementptr i8, ptr %0, i32 %86
  %117 = ptrtoint ptr %116 to i32
  %118 = sub i32 %117, %87
  %119 = tail call ptr @memmove(ptr noundef %115, ptr noundef %85, i32 noundef %118) #5
  %120 = load i8, ptr %30, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nuw i32 %121, 24
  %123 = load i8, ptr %34, align 1
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 16
  %126 = or i32 %125, %122
  %127 = load i8, ptr %39, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or i32 %126, %129
  %131 = load i8, ptr %44, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = add i32 %133, %29
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #6
  store i32 %135, ptr %30, align 4
  %136 = tail call ptr @memcpy(ptr noundef %69, ptr noundef %2, i32 noundef %29) #5
  br label %137

137:                                              ; preds = %114, %50
  %138 = phi i32 [ %68, %114 ], [ %53, %50 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %289, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw i32 %143, 24
  %145 = getelementptr i8, ptr %141, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 16
  %149 = or i32 %148, %144
  %150 = getelementptr i8, ptr %141, i32 2
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 8
  %154 = or i32 %149, %153
  %155 = getelementptr i8, ptr %141, i32 3
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %154, %157
  %159 = getelementptr i8, ptr %0, i32 %158
  %160 = getelementptr i8, ptr %159, i32 %6
  store ptr %160, ptr %4, align 4
  %161 = add i32 %3, 15
  %162 = and i32 %161, -4
  %163 = load i8, ptr %9, align 1
  %164 = zext i8 %163 to i32
  %165 = shl nuw i32 %164, 24
  %166 = load i8, ptr %13, align 1
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 16
  %169 = or i32 %168, %165
  %170 = load i8, ptr %18, align 1
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 8
  %173 = or i32 %169, %172
  %174 = load i8, ptr %23, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %173, %175
  %177 = load i8, ptr %30, align 1
  %178 = zext i8 %177 to i32
  %179 = shl nuw i32 %178, 24
  %180 = load i8, ptr %34, align 1
  %181 = zext i8 %180 to i32
  %182 = shl nuw nsw i32 %181, 16
  %183 = or i32 %182, %179
  %184 = load i8, ptr %39, align 1
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 8
  %187 = or i32 %183, %186
  %188 = load i8, ptr %44, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %187, %189
  %191 = add i32 %190, %176
  %192 = ptrtoint ptr %160 to i32
  %193 = ptrtoint ptr %0 to i32
  %194 = sub i32 %192, %193
  %195 = icmp ugt i32 %194, %191
  %196 = icmp ult ptr %160, %0
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %219, label %198

198:                                              ; preds = %140
  %199 = add i32 %191, %162
  %200 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = shl nuw i32 %202, 24
  %204 = getelementptr i8, ptr %200, i32 1
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 16
  %208 = or i32 %207, %203
  %209 = getelementptr i8, ptr %200, i32 2
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 8
  %213 = or i32 %208, %212
  %214 = getelementptr i8, ptr %200, i32 3
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %213, %216
  %218 = icmp ugt i32 %199, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %198, %140
  %220 = phi i32 [ -3, %198 ], [ -4, %140 ]
  br i1 %49, label %221, label %289

221:                                              ; preds = %219
  %222 = tail call i32 @strlen(ptr noundef %2) #5
  %223 = xor i32 %222, -1
  %224 = load i8, ptr %30, align 1
  %225 = zext i8 %224 to i32
  %226 = shl nuw i32 %225, 24
  %227 = load i8, ptr %34, align 1
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 16
  %230 = or i32 %229, %226
  %231 = load i8, ptr %39, align 1
  %232 = zext i8 %231 to i32
  %233 = shl nuw nsw i32 %232, 8
  %234 = or i32 %230, %233
  %235 = load i8, ptr %44, align 1
  %236 = zext i8 %235 to i32
  %237 = or i32 %234, %236
  %238 = add i32 %237, %223
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #6
  store i32 %239, ptr %30, align 4
  br label %289

240:                                              ; preds = %198
  %241 = getelementptr i8, ptr %160, i32 %162
  %242 = getelementptr i8, ptr %0, i32 %191
  %243 = ptrtoint ptr %242 to i32
  %244 = sub i32 %243, %192
  %245 = tail call ptr @memmove(ptr noundef %241, ptr noundef %160, i32 noundef %244) #5
  %246 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  %249 = shl nuw i32 %248, 24
  %250 = getelementptr i8, ptr %246, i32 1
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = shl nuw nsw i32 %252, 16
  %254 = or i32 %253, %249
  %255 = getelementptr i8, ptr %246, i32 2
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 8
  %259 = or i32 %254, %258
  %260 = getelementptr i8, ptr %246, i32 3
  %261 = load i8, ptr %260, align 1
  %262 = zext i8 %261 to i32
  %263 = or i32 %259, %262
  %264 = add i32 %263, %162
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #6
  store i32 %265, ptr %246, align 4
  %266 = load i8, ptr %9, align 1
  %267 = zext i8 %266 to i32
  %268 = shl nuw i32 %267, 24
  %269 = load i8, ptr %13, align 1
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 16
  %272 = or i32 %271, %268
  %273 = load i8, ptr %18, align 1
  %274 = zext i8 %273 to i32
  %275 = shl nuw nsw i32 %274, 8
  %276 = or i32 %272, %275
  %277 = load i8, ptr %23, align 1
  %278 = zext i8 %277 to i32
  %279 = or i32 %276, %278
  %280 = add i32 %279, %162
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #6
  store i32 %281, ptr %9, align 4
  %282 = load ptr, ptr %4, align 4
  store i32 50331648, ptr %282, align 4
  %283 = tail call i32 @llvm.bswap.i32(i32 %138)
  %284 = load ptr, ptr %4, align 4
  %285 = getelementptr inbounds %struct.fdt_property, ptr %284, i32 0, i32 2
  store i32 %283, ptr %285, align 4
  %286 = tail call i32 @llvm.bswap.i32(i32 %3)
  %287 = load ptr, ptr %4, align 4
  %288 = getelementptr inbounds %struct.fdt_property, ptr %287, i32 0, i32 1
  store i32 %286, ptr %288, align 4
  br label %289

289:                                              ; preds = %240, %221, %219, %137, %93, %54, %5
  %290 = phi i32 [ 0, %240 ], [ %6, %5 ], [ %138, %137 ], [ %220, %221 ], [ %220, %219 ], [ -3, %93 ], [ -4, %54 ]
  ret i32 %290
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !9
  %7 = call i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6) #7
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %4, 0
  %10 = or i1 %9, %8
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = tail call ptr @memcpy(ptr noundef %12, ptr noundef %3, i32 noundef %4) #5
  br label %14

14:                                               ; preds = %11, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_appendprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %118

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr i8, ptr %11, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %11, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr i8, ptr %11, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp ult i32 %28, 17
  br i1 %29, label %118, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr i8, ptr %31, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr i8, ptr %31, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr i8, ptr %31, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %48) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %118

51:                                               ; preds = %30
  %52 = icmp ugt i32 %28, 17
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 285212672, ptr %11, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #5
  store ptr %55, ptr %6, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %109, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %7, align 4
  %59 = add i32 %58, %4
  %60 = getelementptr inbounds %struct.fdt_property, ptr %55, i32 0, i32 3
  %61 = add i32 %58, 3
  %62 = and i32 %61, -4
  %63 = add i32 %59, 3
  %64 = and i32 %63, -4
  %65 = call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %60, i32 noundef %62, i32 noundef %64) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %118

67:                                               ; preds = %57
  %68 = sub i32 %64, %62
  %69 = load i8, ptr %31, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 %70, 24
  %72 = load i8, ptr %35, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or i32 %74, %71
  %76 = load i8, ptr %40, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %75, %78
  %80 = load i8, ptr %45, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = add i32 %82, %68
  %84 = call i32 @llvm.bswap.i32(i32 %83) #6
  store i32 %84, ptr %31, align 4
  %85 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw i32 %87, 24
  %89 = getelementptr i8, ptr %85, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or i32 %92, %88
  %94 = getelementptr i8, ptr %85, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or i32 %93, %97
  %99 = getelementptr i8, ptr %85, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %98, %101
  %103 = add i32 %102, %68
  %104 = call i32 @llvm.bswap.i32(i32 %103) #6
  store i32 %104, ptr %85, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %59)
  %106 = getelementptr inbounds %struct.fdt_property, ptr %55, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  %107 = load i32, ptr %7, align 4
  %108 = getelementptr i8, ptr %60, i32 %107
  br label %115

109:                                              ; preds = %54
  %110 = call fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load ptr, ptr %6, align 4
  %114 = getelementptr inbounds %struct.fdt_property, ptr %113, i32 0, i32 3
  br label %115

115:                                              ; preds = %112, %67
  %116 = phi ptr [ %108, %67 ], [ %114, %112 ]
  %117 = call ptr @memcpy(ptr noundef %116, ptr noundef %3, i32 noundef %4) #5
  br label %118

118:                                              ; preds = %115, %109, %57, %30, %10, %5
  %119 = phi i32 [ %110, %109 ], [ %65, %57 ], [ -12, %30 ], [ -10, %10 ], [ %8, %5 ], [ 0, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %119
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_delprop(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %97

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %8, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr i8, ptr %8, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = icmp ult i32 %25, 17
  br i1 %26, label %97, label %27

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr i8, ptr %28, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr i8, ptr %28, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr i8, ptr %28, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %45) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %27
  %49 = icmp ugt i32 %25, 17
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 285212672, ptr %8, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #5
  %53 = icmp eq ptr %52, null
  %54 = load i32, ptr %4, align 4
  br i1 %53, label %97, label %55

55:                                               ; preds = %51
  %56 = add i32 %54, 15
  %57 = and i32 %56, -4
  %58 = call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef nonnull %52, i32 noundef %57, i32 noundef 0) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %55
  %61 = load i8, ptr %28, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw i32 %62, 24
  %64 = load i8, ptr %32, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or i32 %66, %63
  %68 = load i8, ptr %37, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %67, %70
  %72 = load i8, ptr %42, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %71, %73
  %75 = sub i32 %74, %57
  %76 = call i32 @llvm.bswap.i32(i32 %75) #6
  store i32 %76, ptr %28, align 4
  %77 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw i32 %79, 24
  %81 = getelementptr i8, ptr %77, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 16
  %85 = or i32 %84, %80
  %86 = getelementptr i8, ptr %77, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or i32 %85, %89
  %91 = getelementptr i8, ptr %77, i32 3
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %90, %93
  %95 = sub i32 %94, %57
  %96 = call i32 @llvm.bswap.i32(i32 %95) #6
  store i32 %96, ptr %77, align 4
  br label %97

97:                                               ; preds = %60, %55, %51, %27, %7, %3
  %98 = phi i32 [ %58, %55 ], [ 0, %60 ], [ -12, %27 ], [ -10, %7 ], [ %5, %3 ], [ %54, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_add_subnode_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %195

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = icmp ult i32 %26, 17
  br i1 %27, label %195, label %28

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 %31, 24
  %33 = getelementptr i8, ptr %29, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %36, %32
  %38 = getelementptr i8, ptr %29, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = or i32 %37, %41
  %43 = getelementptr i8, ptr %29, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %42, %45
  %47 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %46) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %195

49:                                               ; preds = %28
  %50 = icmp ugt i32 %26, 17
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i32 285212672, ptr %9, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #5
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %195, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, -1
  br i1 %56, label %57, label %195

57:                                               ; preds = %55
  %58 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #5
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %195

60:                                               ; preds = %60, %57
  %61 = load i32, ptr %5, align 4
  %62 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %5) #5
  %63 = add i32 %62, -3
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %60, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr i8, ptr %66, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr i8, ptr %66, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr i8, ptr %66, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = getelementptr i8, ptr %0, i32 %83
  %85 = getelementptr i8, ptr %84, i32 %61
  %86 = add i32 %3, 4
  %87 = and i32 %86, -4
  %88 = add i32 %87, 8
  %89 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw i32 %91, 24
  %93 = getelementptr i8, ptr %89, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 16
  %97 = or i32 %96, %92
  %98 = getelementptr i8, ptr %89, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = or i32 %97, %101
  %103 = getelementptr i8, ptr %89, i32 3
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %102, %105
  %107 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw i32 %109, 24
  %111 = getelementptr i8, ptr %107, i32 1
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 16
  %115 = or i32 %114, %110
  %116 = getelementptr i8, ptr %107, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or i32 %115, %119
  %121 = getelementptr i8, ptr %107, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %120, %123
  %125 = add i32 %124, %106
  %126 = ptrtoint ptr %85 to i32
  %127 = ptrtoint ptr %0 to i32
  %128 = sub i32 %126, %127
  %129 = icmp ugt i32 %128, %125
  %130 = icmp ult ptr %85, %0
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %195, label %132

132:                                              ; preds = %65
  %133 = add i32 %125, %88
  %134 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = shl nuw i32 %136, 24
  %138 = getelementptr i8, ptr %134, i32 1
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 16
  %142 = or i32 %141, %137
  %143 = getelementptr i8, ptr %134, i32 2
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = or i32 %142, %146
  %148 = getelementptr i8, ptr %134, i32 3
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %147, %150
  %152 = icmp ugt i32 %133, %151
  br i1 %152, label %195, label %153

153:                                              ; preds = %132
  %154 = getelementptr i8, ptr %85, i32 %88
  %155 = getelementptr i8, ptr %0, i32 %125
  %156 = ptrtoint ptr %155 to i32
  %157 = sub i32 %156, %126
  %158 = call ptr @memmove(ptr noundef %154, ptr noundef %85, i32 noundef %157) #5
  %159 = load i8, ptr %29, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw i32 %160, 24
  %162 = load i8, ptr %33, align 1
  %163 = zext i8 %162 to i32
  %164 = shl nuw nsw i32 %163, 16
  %165 = or i32 %164, %161
  %166 = load i8, ptr %38, align 1
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 8
  %169 = or i32 %165, %168
  %170 = load i8, ptr %43, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %169, %171
  %173 = add i32 %172, %88
  %174 = call i32 @llvm.bswap.i32(i32 %173) #6
  store i32 %174, ptr %29, align 4
  %175 = load i8, ptr %89, align 1
  %176 = zext i8 %175 to i32
  %177 = shl nuw i32 %176, 24
  %178 = load i8, ptr %93, align 1
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 16
  %181 = or i32 %180, %177
  %182 = load i8, ptr %98, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 8
  %185 = or i32 %181, %184
  %186 = load i8, ptr %103, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %185, %187
  %189 = add i32 %188, %88
  %190 = call i32 @llvm.bswap.i32(i32 %189) #6
  store i32 %190, ptr %89, align 4
  store i32 16777216, ptr %85, align 4
  %191 = getelementptr inbounds %struct.fdt_node_header, ptr %85, i32 0, i32 1
  %192 = call ptr @memset(ptr noundef %191, i32 noundef 0, i32 noundef %87) #5
  %193 = call ptr @memcpy(ptr noundef %191, ptr noundef %2, i32 noundef %3) #5
  %194 = getelementptr i8, ptr %154, i32 -4
  store i32 33554432, ptr %194, align 4
  br label %195

195:                                              ; preds = %153, %132, %65, %57, %55, %52, %28, %8, %4
  %196 = phi i32 [ %61, %153 ], [ -2, %52 ], [ %53, %55 ], [ -13, %57 ], [ -3, %132 ], [ -4, %65 ], [ -12, %28 ], [ -10, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %196
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_add_subnode(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #5
  %5 = tail call i32 @fdt_add_subnode_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_del_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %113

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %9
  %15 = getelementptr i8, ptr %6, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %14, %18
  %20 = getelementptr i8, ptr %6, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = icmp ult i32 %23, 17
  br i1 %24, label %113, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = getelementptr i8, ptr %26, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %33, %29
  %35 = getelementptr i8, ptr %26, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %34, %38
  %40 = getelementptr i8, ptr %26, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %43) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %113

46:                                               ; preds = %25
  %47 = icmp ugt i32 %23, 17
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store i32 285212672, ptr %6, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = tail call i32 @fdt_node_end_offset_(ptr noundef %0, i32 noundef %1) #5
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %113, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 %55, 24
  %57 = getelementptr i8, ptr %53, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = or i32 %60, %56
  %62 = getelementptr i8, ptr %53, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = or i32 %61, %65
  %67 = getelementptr i8, ptr %53, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %66, %69
  %71 = getelementptr i8, ptr %0, i32 %70
  %72 = getelementptr i8, ptr %71, i32 %1
  %73 = sub i32 %50, %1
  %74 = tail call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %72, i32 noundef %73, i32 noundef 0) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %52
  %77 = load i8, ptr %26, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw i32 %78, 24
  %80 = load i8, ptr %30, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = or i32 %82, %79
  %84 = load i8, ptr %35, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or i32 %83, %86
  %88 = load i8, ptr %40, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %87, %89
  %91 = sub i32 %90, %73
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  store i32 %92, ptr %26, align 4
  %93 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw i32 %95, 24
  %97 = getelementptr i8, ptr %93, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = or i32 %100, %96
  %102 = getelementptr i8, ptr %93, i32 2
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = or i32 %101, %105
  %107 = getelementptr i8, ptr %93, i32 3
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %106, %109
  %111 = sub i32 %110, %73
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #6
  store i32 %112, ptr %93, align 4
  br label %113

113:                                              ; preds = %76, %52, %49, %25, %5, %2
  %114 = phi i32 [ %50, %49 ], [ %74, %52 ], [ 0, %76 ], [ -12, %25 ], [ -10, %5 ], [ %3, %2 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_node_end_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_open_into(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = getelementptr i8, ptr %0, i32 %22
  %24 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %237, label %26

26:                                               ; preds = %3
  %27 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #5
  %28 = shl i32 %27, 4
  %29 = add i32 %28, 16
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = getelementptr i8, ptr %30, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %33
  %39 = getelementptr i8, ptr %30, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr i8, ptr %30, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = icmp ugt i32 %47, 16
  br i1 %48, label %49, label %68

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr i8, ptr %50, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or i32 %57, %53
  %59 = getelementptr i8, ptr %50, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %58, %62
  %64 = getelementptr i8, ptr %50, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  store i32 %67, ptr %4, align 4
  br label %78

68:                                               ; preds = %26
  %69 = icmp eq i32 %47, 16
  br i1 %69, label %70, label %237

70:                                               ; preds = %68
  store i32 0, ptr %4, align 4
  br label %71

71:                                               ; preds = %71, %70
  %72 = phi i32 [ 0, %70 ], [ %75, %71 ]
  %73 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %72, ptr noundef nonnull %4) #5
  %74 = icmp eq i32 %73, 9
  %75 = load i32, ptr %4, align 4
  br i1 %74, label %76, label %71

76:                                               ; preds = %71
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %237, label %78

78:                                               ; preds = %76, %49
  %79 = phi i32 [ %75, %76 ], [ %67, %49 ]
  %80 = call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef %29, i32 noundef %79) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = call i32 @fdt_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %237

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 5
  store i32 285212672, ptr %86, align 4
  %87 = load i32, ptr %4, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #6
  %89 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 9
  store i32 %88, ptr %89, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %2) #6
  %91 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  store i32 %90, ptr %91, align 4
  br label %237

92:                                               ; preds = %78
  %93 = add i32 %28, 56
  %94 = add i32 %93, %79
  %95 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr i8, ptr %95, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or i32 %102, %98
  %104 = getelementptr i8, ptr %95, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or i32 %103, %107
  %109 = getelementptr i8, ptr %95, i32 3
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = add i32 %94, %112
  %114 = icmp sgt i32 %113, %2
  br i1 %114, label %237, label %115

115:                                              ; preds = %92
  %116 = getelementptr i8, ptr %1, i32 %113
  %117 = icmp ugt ptr %116, %0
  %118 = icmp ugt ptr %23, %1
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = getelementptr i8, ptr %23, i32 %113
  %122 = getelementptr i8, ptr %1, i32 %2
  %123 = icmp ugt ptr %121, %122
  br i1 %123, label %237, label %124

124:                                              ; preds = %120, %115
  %125 = phi ptr [ %23, %120 ], [ %1, %115 ]
  %126 = getelementptr i8, ptr %125, i32 40
  %127 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl nuw i32 %129, 24
  %131 = getelementptr i8, ptr %127, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 16
  %135 = or i32 %134, %130
  %136 = getelementptr i8, ptr %127, i32 2
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = shl nuw nsw i32 %138, 8
  %140 = or i32 %135, %139
  %141 = getelementptr i8, ptr %127, i32 3
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %140, %143
  %145 = getelementptr i8, ptr %0, i32 %144
  %146 = call ptr @memmove(ptr noundef %126, ptr noundef %145, i32 noundef %29) #5
  %147 = getelementptr inbounds %struct.fdt_header, ptr %125, i32 0, i32 4
  store i32 671088640, ptr %147, align 4
  %148 = getelementptr i8, ptr %125, i32 %93
  %149 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw i32 %151, 24
  %153 = getelementptr i8, ptr %149, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 16
  %157 = or i32 %156, %152
  %158 = getelementptr i8, ptr %149, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 8
  %162 = or i32 %157, %161
  %163 = getelementptr i8, ptr %149, i32 3
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  %167 = getelementptr i8, ptr %0, i32 %166
  %168 = call ptr @memmove(ptr noundef %148, ptr noundef %167, i32 noundef %79) #5
  %169 = call i32 @llvm.bswap.i32(i32 %93) #6
  %170 = getelementptr inbounds %struct.fdt_header, ptr %125, i32 0, i32 2
  store i32 %169, ptr %170, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %79) #6
  %172 = getelementptr inbounds %struct.fdt_header, ptr %125, i32 0, i32 9
  store i32 %171, ptr %172, align 4
  %173 = getelementptr i8, ptr %125, i32 %94
  %174 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = shl nuw i32 %176, 24
  %178 = getelementptr i8, ptr %174, i32 1
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 16
  %182 = or i32 %181, %177
  %183 = getelementptr i8, ptr %174, i32 2
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 8
  %187 = or i32 %182, %186
  %188 = getelementptr i8, ptr %174, i32 3
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  %191 = or i32 %187, %190
  %192 = getelementptr i8, ptr %0, i32 %191
  %193 = call ptr @memmove(ptr noundef %173, ptr noundef %192, i32 noundef %112) #5
  %194 = call i32 @llvm.bswap.i32(i32 %94) #6
  %195 = getelementptr inbounds %struct.fdt_header, ptr %125, i32 0, i32 3
  store i32 %194, ptr %195, align 4
  %196 = load i8, ptr %95, align 1
  %197 = zext i8 %196 to i32
  %198 = shl nuw i32 %197, 24
  %199 = load i8, ptr %99, align 1
  %200 = zext i8 %199 to i32
  %201 = shl nuw nsw i32 %200, 16
  %202 = or i32 %201, %198
  %203 = load i8, ptr %104, align 1
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 8
  %206 = or i32 %202, %205
  %207 = load i8, ptr %109, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %206, %208
  %210 = call i32 @llvm.bswap.i32(i32 %209) #6
  %211 = getelementptr inbounds %struct.fdt_header, ptr %125, i32 0, i32 8
  store i32 %210, ptr %211, align 4
  %212 = call ptr @memmove(ptr noundef %1, ptr noundef %125, i32 noundef %113) #5
  store i32 -302117424, ptr %1, align 4
  %213 = call i32 @llvm.bswap.i32(i32 %2) #6
  %214 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  store i32 %213, ptr %214, align 4
  %215 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 5
  store i32 285212672, ptr %215, align 4
  %216 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 6
  store i32 268435456, ptr %216, align 4
  %217 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 7
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i32
  %220 = shl nuw i32 %219, 24
  %221 = getelementptr i8, ptr %217, i32 1
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 16
  %225 = or i32 %224, %220
  %226 = getelementptr i8, ptr %217, i32 2
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 8
  %230 = or i32 %225, %229
  %231 = getelementptr i8, ptr %217, i32 3
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = or i32 %230, %233
  %235 = call i32 @llvm.bswap.i32(i32 %234) #6
  %236 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 7
  store i32 %235, ptr %236, align 4
  br label %237

237:                                              ; preds = %124, %120, %92, %85, %82, %76, %68, %3
  %238 = phi i32 [ 0, %85 ], [ 0, %124 ], [ %24, %3 ], [ %75, %76 ], [ -10, %68 ], [ %83, %82 ], [ -3, %92 ], [ -3, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %238
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define internal fastcc i32 @fdt_blocks_misordered_(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr i8, ptr %4, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr i8, ptr %4, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = icmp ult i32 %21, 40
  br i1 %22, label %105, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr i8, ptr %24, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %27
  %33 = getelementptr i8, ptr %24, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %32, %36
  %38 = getelementptr i8, ptr %24, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = add i32 %21, %1
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %105, label %44

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 %47, 24
  %49 = getelementptr i8, ptr %45, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %52, %48
  %54 = getelementptr i8, ptr %45, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %53, %57
  %59 = getelementptr i8, ptr %45, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = add i32 %41, %2
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %105, label %65

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr i8, ptr %66, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr i8, ptr %66, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr i8, ptr %66, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 %86, 24
  %88 = getelementptr i8, ptr %84, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %87
  %93 = getelementptr i8, ptr %84, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr i8, ptr %84, i32 3
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = add i32 %101, %62
  %103 = icmp ult i32 %83, %102
  %104 = zext i1 %103 to i32
  br label %105

105:                                              ; preds = %65, %44, %23, %3
  %106 = phi i32 [ 1, %44 ], [ 1, %23 ], [ 1, %3 ], [ %104, %65 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_pack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %188

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = icmp ult i32 %22, 17
  br i1 %23, label %188, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr i8, ptr %25, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %28
  %34 = getelementptr i8, ptr %25, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or i32 %33, %37
  %39 = getelementptr i8, ptr %25, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %42) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %188

45:                                               ; preds = %24
  %46 = icmp ugt i32 %22, 17
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store i32 285212672, ptr %5, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #5
  %50 = shl i32 %49, 4
  %51 = add i32 %50, 16
  %52 = load i8, ptr %25, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 %53, 24
  %55 = load i8, ptr %29, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or i32 %57, %54
  %59 = load i8, ptr %34, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or i32 %58, %61
  %63 = load i8, ptr %39, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr i8, ptr %66, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr i8, ptr %66, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr i8, ptr %66, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = add i32 %50, 56
  %85 = add i32 %65, %84
  %86 = getelementptr i8, ptr %0, i32 40
  %87 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw i32 %89, 24
  %91 = getelementptr i8, ptr %87, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or i32 %94, %90
  %96 = getelementptr i8, ptr %87, i32 2
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = or i32 %95, %99
  %101 = getelementptr i8, ptr %87, i32 3
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %100, %103
  %105 = getelementptr i8, ptr %0, i32 %104
  %106 = tail call ptr @memmove(ptr noundef %86, ptr noundef %105, i32 noundef %51) #5
  store i32 671088640, ptr %87, align 4
  %107 = getelementptr i8, ptr %0, i32 %84
  %108 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw i32 %110, 24
  %112 = getelementptr i8, ptr %108, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 16
  %116 = or i32 %115, %111
  %117 = getelementptr i8, ptr %108, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or i32 %116, %120
  %122 = getelementptr i8, ptr %108, i32 3
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %121, %124
  %126 = getelementptr i8, ptr %0, i32 %125
  %127 = tail call ptr @memmove(ptr noundef %107, ptr noundef %126, i32 noundef %65) #5
  %128 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  store i32 %128, ptr %108, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  store i32 %129, ptr %25, align 4
  %130 = getelementptr i8, ptr %0, i32 %85
  %131 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw i32 %133, 24
  %135 = getelementptr i8, ptr %131, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 16
  %139 = or i32 %138, %134
  %140 = getelementptr i8, ptr %131, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 8
  %144 = or i32 %139, %143
  %145 = getelementptr i8, ptr %131, i32 3
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %144, %147
  %149 = getelementptr i8, ptr %0, i32 %148
  %150 = tail call ptr @memmove(ptr noundef %130, ptr noundef %149, i32 noundef %83) #5
  %151 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  store i32 %151, ptr %131, align 4
  %152 = load i8, ptr %66, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw i32 %153, 24
  %155 = load i8, ptr %70, align 1
  %156 = zext i8 %155 to i32
  %157 = shl nuw nsw i32 %156, 16
  %158 = or i32 %157, %154
  %159 = load i8, ptr %75, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 8
  %162 = or i32 %158, %161
  %163 = load i8, ptr %80, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %162, %164
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #6
  store i32 %166, ptr %66, align 4
  %167 = shl i32 %151, 24
  %168 = shl i32 %151, 8
  %169 = and i32 %168, 16711680
  %170 = or i32 %169, %167
  %171 = lshr i32 %151, 8
  %172 = and i32 %171, 65280
  %173 = or i32 %170, %172
  %174 = lshr i32 %151, 24
  %175 = or i32 %173, %174
  %176 = shl i32 %166, 24
  %177 = shl i32 %166, 8
  %178 = and i32 %177, 16711680
  %179 = or i32 %178, %176
  %180 = lshr i32 %166, 8
  %181 = and i32 %180, 65280
  %182 = or i32 %179, %181
  %183 = lshr i32 %166, 24
  %184 = or i32 %182, %183
  %185 = add i32 %184, %175
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #6
  %187 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  store i32 %186, ptr %187, align 4
  br label %188

188:                                              ; preds = %48, %24, %4, %1
  %189 = phi i32 [ 0, %48 ], [ -12, %24 ], [ -10, %4 ], [ %2, %1 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr i8, ptr %23, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr i8, ptr %23, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr i8, ptr %23, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = add i32 %40, %22
  %42 = icmp slt i32 %2, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %4
  %44 = ptrtoint ptr %1 to i32
  %45 = ptrtoint ptr %0 to i32
  %46 = sub i32 %44, %45
  %47 = add i32 %46, %2
  %48 = icmp ult i32 %47, %46
  %49 = icmp ugt i32 %47, %41
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %86, label %51

51:                                               ; preds = %43
  %52 = icmp ult ptr %1, %0
  %53 = add i32 %41, %3
  %54 = icmp ult i32 %53, %2
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %86, label %56

56:                                               ; preds = %51
  %57 = sub i32 %3, %2
  %58 = add i32 %57, %41
  %59 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw i32 %61, 24
  %63 = getelementptr i8, ptr %59, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or i32 %66, %62
  %68 = getelementptr i8, ptr %59, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = or i32 %67, %71
  %73 = getelementptr i8, ptr %59, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %72, %75
  %77 = icmp ugt i32 %58, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %56
  %79 = getelementptr i8, ptr %1, i32 %3
  %80 = getelementptr i8, ptr %1, i32 %2
  %81 = getelementptr i8, ptr %0, i32 %41
  %82 = ptrtoint ptr %81 to i32
  %83 = ptrtoint ptr %80 to i32
  %84 = sub i32 %82, %83
  %85 = tail call ptr @memmove(ptr noundef %79, ptr noundef %80, i32 noundef %84) #5
  br label %86

86:                                               ; preds = %78, %56, %51, %43, %4
  %87 = phi i32 [ 0, %78 ], [ -4, %43 ], [ -4, %4 ], [ -4, %51 ], [ -3, %56 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
