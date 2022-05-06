; ModuleID = '/llk/IR/mm/interval_tree.c_pt.bc'
source_filename = "../mm/interval_tree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.67, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon_vma_chain = type { ptr, ptr, %struct.list_head, %struct.rb_node, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vma_interval_tree_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = sub i32 %6, %7
  %9 = lshr i32 %8, 12
  %10 = add i32 %4, -1
  %11 = add i32 %10, %9
  %12 = load ptr, ptr %1, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 1
  store i32 %11, ptr %16, align 4
  store i32 0, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 2
  store ptr null, ptr %18, align 4
  store ptr %15, ptr %1, align 4
  br label %42

19:                                               ; preds = %26, %2
  %20 = phi ptr [ %34, %26 ], [ %12, %2 ]
  %21 = phi i1 [ %32, %26 ], [ true, %2 ]
  %22 = getelementptr inbounds %struct.anon.68, ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %11
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 %11, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = getelementptr i8, ptr %20, i32 32
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %4, %28
  %30 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2
  %31 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  %32 = select i1 %29, i1 %21, i1 false
  %33 = select i1 %29, ptr %30, ptr %31
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19

36:                                               ; preds = %26
  %37 = ptrtoint ptr %20 to i32
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 1
  store i32 %11, ptr %39, align 4
  store i32 %37, ptr %38, align 4
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 2
  store ptr null, ptr %41, align 4
  store ptr %38, ptr %33, align 4
  br i1 %32, label %42, label %45

42:                                               ; preds = %36, %14
  %43 = phi ptr [ %15, %14 ], [ %38, %36 ]
  %44 = getelementptr inbounds %struct.rb_root_cached, ptr %1, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi ptr [ %38, %36 ], [ %43, %42 ]
  tail call void @__rb_insert_augmented(ptr noundef %46, ptr noundef %1, ptr noundef nonnull @vma_interval_tree_augment_rotate) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vma_interval_tree_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.rb_root_cached, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @rb_next(ptr noundef %3) #5
  store ptr %8, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %3
  %24 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %25 = select i1 %23, ptr %21, ptr %24
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi ptr [ %1, %15 ], [ %25, %20 ]
  store volatile ptr %11, ptr %27, align 4
  %28 = icmp eq ptr %11, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 %16, ptr %11, align 4
  br label %148

30:                                               ; preds = %26
  %31 = and i32 %16, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %148, label %189

33:                                               ; preds = %9
  %34 = icmp eq ptr %11, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = load i32, ptr %3, align 4
  store i32 %36, ptr %13, align 4
  %37 = and i32 %36, -4
  %38 = inttoptr i32 %37 to ptr
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %3
  %44 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  %45 = select i1 %43, ptr %41, ptr %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi ptr [ %1, %35 ], [ %45, %40 ]
  store volatile ptr %13, ptr %47, align 4
  br label %148

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.anon.68, ptr %11, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = ptrtoint ptr %11 to i32
  br label %115

59:                                               ; preds = %59, %48
  %60 = phi ptr [ %63, %59 ], [ %50, %48 ]
  %61 = phi ptr [ %60, %59 ], [ %11, %48 ]
  %62 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %59

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rb_node, ptr %61, i32 0, i32 2
  store volatile ptr %67, ptr %68, align 4
  store volatile ptr %11, ptr %66, align 4
  %69 = load i32, ptr %11, align 4
  %70 = and i32 %69, 1
  %71 = ptrtoint ptr %60 to i32
  %72 = or i32 %70, %71
  store i32 %72, ptr %11, align 4
  %73 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.anon.68, ptr %60, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  %76 = icmp eq ptr %61, %60
  br i1 %76, label %115, label %77

77:                                               ; preds = %110, %65
  %78 = phi ptr [ %113, %110 ], [ %61, %65 ]
  %79 = getelementptr i8, ptr %78, i32 -44
  %80 = getelementptr i8, ptr %78, i32 32
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %78, i32 -40
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %79, align 4
  %85 = sub i32 %83, %84
  %86 = lshr i32 %85, 12
  %87 = add i32 %81, -1
  %88 = add i32 %87, %86
  %89 = getelementptr i8, ptr %78, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.anon.68, ptr %90, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = tail call i32 @llvm.umax.i32(i32 %94, i32 %88) #5
  br label %96

96:                                               ; preds = %92, %77
  %97 = phi i32 [ %88, %77 ], [ %95, %92 ]
  %98 = getelementptr i8, ptr %78, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.anon.68, ptr %99, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @llvm.umax.i32(i32 %103, i32 %97) #5
  br label %105

105:                                              ; preds = %101, %96
  %106 = phi i32 [ %97, %96 ], [ %104, %101 ]
  %107 = getelementptr i8, ptr %78, i32 12
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, %106
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  store i32 %106, ptr %107, align 4
  %111 = load i32, ptr %78, align 4
  %112 = and i32 %111, -4
  %113 = inttoptr i32 %112 to ptr
  %114 = icmp eq ptr %60, %113
  br i1 %114, label %115, label %77

115:                                              ; preds = %110, %105, %65, %52
  %116 = phi i32 [ %58, %52 ], [ %71, %65 ], [ %71, %105 ], [ %71, %110 ]
  %117 = phi ptr [ %11, %52 ], [ %60, %65 ], [ %61, %105 ], [ %61, %110 ]
  %118 = phi ptr [ %11, %52 ], [ %60, %65 ], [ %60, %105 ], [ %60, %110 ]
  %119 = phi ptr [ %54, %52 ], [ %67, %65 ], [ %67, %105 ], [ %67, %110 ]
  %120 = load ptr, ptr %12, align 4
  %121 = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 2
  store volatile ptr %120, ptr %121, align 4
  %122 = load i32, ptr %120, align 4
  %123 = and i32 %122, 1
  %124 = or i32 %123, %116
  store i32 %124, ptr %120, align 4
  %125 = load i32, ptr %3, align 4
  %126 = and i32 %125, -4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %115
  %129 = inttoptr i32 %126 to ptr
  %130 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %3
  %133 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 1
  %134 = select i1 %132, ptr %130, ptr %133
  br label %135

135:                                              ; preds = %128, %115
  %136 = phi ptr [ %1, %115 ], [ %134, %128 ]
  store volatile ptr %118, ptr %136, align 4
  %137 = icmp eq ptr %119, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = ptrtoint ptr %117 to i32
  %140 = or i32 %139, 1
  store i32 %140, ptr %119, align 4
  br label %146

141:                                              ; preds = %135
  %142 = load i32, ptr %118, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, ptr null, ptr %117
  br label %146

146:                                              ; preds = %141, %138
  %147 = phi ptr [ null, %138 ], [ %145, %141 ]
  store i32 %125, ptr %118, align 4
  br label %189

148:                                              ; preds = %46, %30, %29
  %149 = phi ptr [ %18, %29 ], [ %38, %46 ], [ %18, %30 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %234, label %151

151:                                              ; preds = %184, %148
  %152 = phi ptr [ %187, %184 ], [ %149, %148 ]
  %153 = getelementptr i8, ptr %152, i32 -44
  %154 = getelementptr i8, ptr %152, i32 32
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr i8, ptr %152, i32 -40
  %157 = load i32, ptr %156, align 4
  %158 = load i32, ptr %153, align 4
  %159 = sub i32 %157, %158
  %160 = lshr i32 %159, 12
  %161 = add i32 %155, -1
  %162 = add i32 %161, %160
  %163 = getelementptr i8, ptr %152, i32 8
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %151
  %167 = getelementptr inbounds %struct.anon.68, ptr %164, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = tail call i32 @llvm.umax.i32(i32 %168, i32 %162) #5
  br label %170

170:                                              ; preds = %166, %151
  %171 = phi i32 [ %162, %151 ], [ %169, %166 ]
  %172 = getelementptr i8, ptr %152, i32 4
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.anon.68, ptr %173, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = tail call i32 @llvm.umax.i32(i32 %177, i32 %171) #5
  br label %179

179:                                              ; preds = %175, %170
  %180 = phi i32 [ %171, %170 ], [ %178, %175 ]
  %181 = getelementptr i8, ptr %152, i32 12
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, %180
  br i1 %183, label %234, label %184

184:                                              ; preds = %179
  store i32 %180, ptr %181, align 4
  %185 = load i32, ptr %152, align 4
  %186 = and i32 %185, -4
  %187 = inttoptr i32 %186 to ptr
  %188 = icmp eq i32 %186, 0
  br i1 %188, label %234, label %151

189:                                              ; preds = %146, %30
  %190 = phi ptr [ %118, %146 ], [ %18, %30 ]
  %191 = phi ptr [ %147, %146 ], [ %18, %30 ]
  %192 = icmp eq ptr %190, null
  br i1 %192, label %231, label %193

193:                                              ; preds = %226, %189
  %194 = phi ptr [ %229, %226 ], [ %190, %189 ]
  %195 = getelementptr i8, ptr %194, i32 -44
  %196 = getelementptr i8, ptr %194, i32 32
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr i8, ptr %194, i32 -40
  %199 = load i32, ptr %198, align 4
  %200 = load i32, ptr %195, align 4
  %201 = sub i32 %199, %200
  %202 = lshr i32 %201, 12
  %203 = add i32 %197, -1
  %204 = add i32 %203, %202
  %205 = getelementptr i8, ptr %194, i32 8
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %193
  %209 = getelementptr inbounds %struct.anon.68, ptr %206, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = tail call i32 @llvm.umax.i32(i32 %210, i32 %204) #5
  br label %212

212:                                              ; preds = %208, %193
  %213 = phi i32 [ %204, %193 ], [ %211, %208 ]
  %214 = getelementptr i8, ptr %194, i32 4
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.anon.68, ptr %215, i32 0, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = tail call i32 @llvm.umax.i32(i32 %219, i32 %213) #5
  br label %221

221:                                              ; preds = %217, %212
  %222 = phi i32 [ %213, %212 ], [ %220, %217 ]
  %223 = getelementptr i8, ptr %194, i32 12
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, %222
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  store i32 %222, ptr %223, align 4
  %227 = load i32, ptr %194, align 4
  %228 = and i32 %227, -4
  %229 = inttoptr i32 %228 to ptr
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %231, label %193

231:                                              ; preds = %226, %221, %189
  %232 = icmp eq ptr %191, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %231
  tail call void @__rb_erase_color(ptr noundef nonnull %191, ptr noundef %1, ptr noundef nonnull @vma_interval_tree_augment_rotate) #5
  br label %234

234:                                              ; preds = %233, %231, %184, %179, %148
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @vma_interval_tree_iter_first(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.anon.68, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %2
  br i1 %15, label %49, label %16

16:                                               ; preds = %47, %10
  %17 = phi ptr [ %48, %47 ], [ %4, %10 ]
  %18 = getelementptr i8, ptr %17, i32 -44
  %19 = getelementptr i8, ptr %17, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.anon.68, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, %1
  br i1 %25, label %26, label %47

26:                                               ; preds = %22, %16
  %27 = getelementptr i8, ptr %17, i32 32
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %2
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %17, i32 -40
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %18, align 4
  %34 = sub i32 %32, %33
  %35 = lshr i32 %34, 12
  %36 = add i32 %28, -1
  %37 = add i32 %36, %35
  %38 = icmp ult i32 %37, %1
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = getelementptr i8, ptr %17, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.anon.68, ptr %41, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, %1
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %22
  %48 = phi ptr [ %20, %22 ], [ %41, %43 ]
  br label %16

49:                                               ; preds = %43, %39, %30, %26, %10, %6, %3
  %50 = phi ptr [ null, %3 ], [ null, %6 ], [ null, %10 ], [ null, %26 ], [ null, %43 ], [ null, %39 ], [ %18, %30 ]
  ret ptr %50
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @vma_interval_tree_iter_next(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %65, %3
  %7 = phi ptr [ %5, %3 ], [ %58, %65 ]
  %8 = phi ptr [ %0, %3 ], [ %56, %65 ]
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %6
  br label %48

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.anon.68, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %10, label %15

15:                                               ; preds = %46, %11
  %16 = phi ptr [ %47, %46 ], [ %7, %11 ]
  %17 = getelementptr i8, ptr %16, i32 -44
  %18 = getelementptr i8, ptr %16, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.anon.68, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %25, label %46

25:                                               ; preds = %21, %15
  %26 = getelementptr i8, ptr %16, i32 32
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %2
  br i1 %28, label %74, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %16, i32 -40
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %17, align 4
  %33 = sub i32 %31, %32
  %34 = lshr i32 %33, 12
  %35 = add i32 %27, -1
  %36 = add i32 %35, %34
  %37 = icmp ult i32 %36, %1
  br i1 %37, label %38, label %74

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %16, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.anon.68, ptr %40, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, %1
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %21
  %47 = phi ptr [ %19, %21 ], [ %40, %42 ]
  br label %15

48:                                               ; preds = %54, %10
  %49 = phi ptr [ %56, %54 ], [ %8, %10 ]
  %50 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %48
  %55 = inttoptr i32 %52 to ptr
  %56 = getelementptr i8, ptr %55, i32 -44
  %57 = getelementptr inbounds %struct.rb_node, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %50, %58
  br i1 %59, label %48, label %60

60:                                               ; preds = %54
  %61 = inttoptr i32 %52 to ptr
  %62 = getelementptr i8, ptr %61, i32 32
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, %2
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %61, i32 -40
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %56, align 4
  %69 = sub i32 %67, %68
  %70 = lshr i32 %69, 12
  %71 = add i32 %63, -1
  %72 = add i32 %71, %70
  %73 = icmp ult i32 %72, %1
  br i1 %73, label %6, label %74

74:                                               ; preds = %65, %60, %48, %42, %38, %29, %25
  %75 = phi ptr [ null, %25 ], [ null, %42 ], [ null, %38 ], [ %17, %29 ], [ null, %48 ], [ %56, %65 ], [ null, %60 ]
  ret ptr %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vma_interval_tree_insert_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = sub i32 %7, %8
  %10 = lshr i32 %9, 12
  %11 = add i32 %5, -1
  %12 = add i32 %11, %10
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.anon.68, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %12
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 %12, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr i8, ptr %14, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %31, %21
  %26 = phi ptr [ %33, %31 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.anon.68, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %12
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 %12, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr i8, ptr %26, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25

35:                                               ; preds = %31, %21
  %36 = phi ptr [ %14, %21 ], [ %26, %31 ]
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = getelementptr i8, ptr %36, i32 -44
  br label %39

39:                                               ; preds = %35, %3
  %40 = phi ptr [ %38, %35 ], [ %1, %3 ]
  %41 = phi ptr [ %37, %35 ], [ %13, %3 ]
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 1
  store i32 %12, ptr %43, align 4
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 9
  %45 = ptrtoint ptr %44 to i32
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 2
  store ptr null, ptr %47, align 4
  store ptr %42, ptr %41, align 4
  tail call void @__rb_insert_augmented(ptr noundef %42, ptr noundef %2, ptr noundef nonnull @vma_interval_tree_augment_rotate) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @anon_vma_interval_tree_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %3, align 4
  %9 = sub i32 %7, %8
  %10 = lshr i32 %9, 12
  %11 = add i32 %5, -1
  %12 = add i32 %11, %10
  %13 = load ptr, ptr %1, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 4
  store i32 %12, ptr %16, align 4
  %17 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 2
  store ptr null, ptr %19, align 4
  store ptr %17, ptr %1, align 4
  br label %45

20:                                               ; preds = %28, %2
  %21 = phi ptr [ %37, %28 ], [ %13, %2 ]
  %22 = phi i1 [ %35, %28 ], [ true, %2 ]
  %23 = getelementptr i8, ptr %21, i32 -16
  %24 = getelementptr i8, ptr %21, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %12
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 %12, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %5, %31
  %33 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  %34 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  %35 = select i1 %32, i1 %22, i1 false
  %36 = select i1 %32, ptr %33, ptr %34
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %20

39:                                               ; preds = %28
  %40 = ptrtoint ptr %21 to i32
  %41 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 4
  store i32 %12, ptr %41, align 4
  %42 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3
  store i32 %40, ptr %42, align 4
  %43 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 1
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 2
  store ptr null, ptr %44, align 4
  store ptr %42, ptr %36, align 4
  br i1 %35, label %45, label %48

45:                                               ; preds = %39, %15
  %46 = phi ptr [ %17, %15 ], [ %42, %39 ]
  %47 = getelementptr inbounds %struct.rb_root_cached, ptr %1, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi ptr [ %42, %39 ], [ %46, %45 ]
  tail call void @__rb_insert_augmented(ptr noundef %49, ptr noundef %1, ptr noundef nonnull @__anon_vma_interval_tree_augment_rotate) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @anon_vma_interval_tree_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rb_root_cached, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @rb_next(ptr noundef %3) #5
  store ptr %8, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %3
  %24 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %25 = select i1 %23, ptr %21, ptr %24
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi ptr [ %1, %15 ], [ %25, %20 ]
  store volatile ptr %11, ptr %27, align 4
  %28 = icmp eq ptr %11, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 %16, ptr %11, align 4
  br label %149

30:                                               ; preds = %26
  %31 = and i32 %16, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %149, label %191

33:                                               ; preds = %9
  %34 = icmp eq ptr %11, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = load i32, ptr %3, align 4
  store i32 %36, ptr %13, align 4
  %37 = and i32 %36, -4
  %38 = inttoptr i32 %37 to ptr
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %3
  %44 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  %45 = select i1 %43, ptr %41, ptr %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi ptr [ %1, %35 ], [ %45, %40 ]
  store volatile ptr %13, ptr %47, align 4
  br label %149

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr %struct.anon_vma_chain, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %11, i32 12
  store i32 %56, ptr %57, align 4
  %58 = ptrtoint ptr %11 to i32
  br label %116

59:                                               ; preds = %59, %48
  %60 = phi ptr [ %63, %59 ], [ %50, %48 ]
  %61 = phi ptr [ %60, %59 ], [ %11, %48 ]
  %62 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %59

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rb_node, ptr %61, i32 0, i32 2
  store volatile ptr %67, ptr %68, align 4
  store volatile ptr %11, ptr %66, align 4
  %69 = load i32, ptr %11, align 4
  %70 = and i32 %69, 1
  %71 = ptrtoint ptr %60 to i32
  %72 = or i32 %70, %71
  store i32 %72, ptr %11, align 4
  %73 = getelementptr %struct.anon_vma_chain, ptr %0, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %60, i32 12
  store i32 %74, ptr %75, align 4
  %76 = icmp eq ptr %61, %60
  br i1 %76, label %116, label %77

77:                                               ; preds = %111, %65
  %78 = phi ptr [ %114, %111 ], [ %61, %65 ]
  %79 = getelementptr i8, ptr %78, i32 -16
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.vm_area_struct, ptr %80, i32 0, i32 13
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.vm_area_struct, ptr %80, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %80, align 4
  %86 = sub i32 %84, %85
  %87 = lshr i32 %86, 12
  %88 = add i32 %82, -1
  %89 = add i32 %88, %87
  %90 = getelementptr i8, ptr %78, i32 8
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %77
  %94 = getelementptr i8, ptr %91, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @llvm.umax.i32(i32 %95, i32 %89) #5
  br label %97

97:                                               ; preds = %93, %77
  %98 = phi i32 [ %89, %77 ], [ %96, %93 ]
  %99 = getelementptr i8, ptr %78, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %100, i32 12
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @llvm.umax.i32(i32 %104, i32 %98) #5
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i32 [ %98, %97 ], [ %105, %102 ]
  %108 = getelementptr i8, ptr %78, i32 12
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %107
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  store i32 %107, ptr %108, align 4
  %112 = load i32, ptr %78, align 4
  %113 = and i32 %112, -4
  %114 = inttoptr i32 %113 to ptr
  %115 = icmp eq ptr %60, %114
  br i1 %115, label %116, label %77

116:                                              ; preds = %111, %106, %65, %52
  %117 = phi i32 [ %58, %52 ], [ %71, %65 ], [ %71, %106 ], [ %71, %111 ]
  %118 = phi ptr [ %11, %52 ], [ %60, %65 ], [ %61, %106 ], [ %61, %111 ]
  %119 = phi ptr [ %11, %52 ], [ %60, %65 ], [ %60, %106 ], [ %60, %111 ]
  %120 = phi ptr [ %54, %52 ], [ %67, %65 ], [ %67, %106 ], [ %67, %111 ]
  %121 = load ptr, ptr %12, align 4
  %122 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 2
  store volatile ptr %121, ptr %122, align 4
  %123 = load i32, ptr %121, align 4
  %124 = and i32 %123, 1
  %125 = or i32 %124, %117
  store i32 %125, ptr %121, align 4
  %126 = load i32, ptr %3, align 4
  %127 = and i32 %126, -4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %116
  %130 = inttoptr i32 %127 to ptr
  %131 = getelementptr inbounds %struct.rb_node, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %3
  %134 = getelementptr inbounds %struct.rb_node, ptr %130, i32 0, i32 1
  %135 = select i1 %133, ptr %131, ptr %134
  br label %136

136:                                              ; preds = %129, %116
  %137 = phi ptr [ %1, %116 ], [ %135, %129 ]
  store volatile ptr %119, ptr %137, align 4
  %138 = icmp eq ptr %120, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = ptrtoint ptr %118 to i32
  %141 = or i32 %140, 1
  store i32 %141, ptr %120, align 4
  br label %147

142:                                              ; preds = %136
  %143 = load i32, ptr %119, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %145, ptr null, ptr %118
  br label %147

147:                                              ; preds = %142, %139
  %148 = phi ptr [ null, %139 ], [ %146, %142 ]
  store i32 %126, ptr %119, align 4
  br label %191

149:                                              ; preds = %46, %30, %29
  %150 = phi ptr [ %18, %29 ], [ %38, %46 ], [ %18, %30 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %237, label %152

152:                                              ; preds = %186, %149
  %153 = phi ptr [ %189, %186 ], [ %150, %149 ]
  %154 = getelementptr i8, ptr %153, i32 -16
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.vm_area_struct, ptr %155, i32 0, i32 13
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.vm_area_struct, ptr %155, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = load i32, ptr %155, align 4
  %161 = sub i32 %159, %160
  %162 = lshr i32 %161, 12
  %163 = add i32 %157, -1
  %164 = add i32 %163, %162
  %165 = getelementptr i8, ptr %153, i32 8
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %152
  %169 = getelementptr i8, ptr %166, i32 12
  %170 = load i32, ptr %169, align 4
  %171 = tail call i32 @llvm.umax.i32(i32 %170, i32 %164) #5
  br label %172

172:                                              ; preds = %168, %152
  %173 = phi i32 [ %164, %152 ], [ %171, %168 ]
  %174 = getelementptr i8, ptr %153, i32 4
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = getelementptr i8, ptr %175, i32 12
  %179 = load i32, ptr %178, align 4
  %180 = tail call i32 @llvm.umax.i32(i32 %179, i32 %173) #5
  br label %181

181:                                              ; preds = %177, %172
  %182 = phi i32 [ %173, %172 ], [ %180, %177 ]
  %183 = getelementptr i8, ptr %153, i32 12
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, %182
  br i1 %185, label %237, label %186

186:                                              ; preds = %181
  store i32 %182, ptr %183, align 4
  %187 = load i32, ptr %153, align 4
  %188 = and i32 %187, -4
  %189 = inttoptr i32 %188 to ptr
  %190 = icmp eq i32 %188, 0
  br i1 %190, label %237, label %152

191:                                              ; preds = %147, %30
  %192 = phi ptr [ %119, %147 ], [ %18, %30 ]
  %193 = phi ptr [ %148, %147 ], [ %18, %30 ]
  %194 = icmp eq ptr %192, null
  br i1 %194, label %234, label %195

195:                                              ; preds = %229, %191
  %196 = phi ptr [ %232, %229 ], [ %192, %191 ]
  %197 = getelementptr i8, ptr %196, i32 -16
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.vm_area_struct, ptr %198, i32 0, i32 13
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.vm_area_struct, ptr %198, i32 0, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = load i32, ptr %198, align 4
  %204 = sub i32 %202, %203
  %205 = lshr i32 %204, 12
  %206 = add i32 %200, -1
  %207 = add i32 %206, %205
  %208 = getelementptr i8, ptr %196, i32 8
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %195
  %212 = getelementptr i8, ptr %209, i32 12
  %213 = load i32, ptr %212, align 4
  %214 = tail call i32 @llvm.umax.i32(i32 %213, i32 %207) #5
  br label %215

215:                                              ; preds = %211, %195
  %216 = phi i32 [ %207, %195 ], [ %214, %211 ]
  %217 = getelementptr i8, ptr %196, i32 4
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = getelementptr i8, ptr %218, i32 12
  %222 = load i32, ptr %221, align 4
  %223 = tail call i32 @llvm.umax.i32(i32 %222, i32 %216) #5
  br label %224

224:                                              ; preds = %220, %215
  %225 = phi i32 [ %216, %215 ], [ %223, %220 ]
  %226 = getelementptr i8, ptr %196, i32 12
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %227, %225
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  store i32 %225, ptr %226, align 4
  %230 = load i32, ptr %196, align 4
  %231 = and i32 %230, -4
  %232 = inttoptr i32 %231 to ptr
  %233 = icmp eq i32 %231, 0
  br i1 %233, label %234, label %195

234:                                              ; preds = %229, %224, %191
  %235 = icmp eq ptr %193, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %234
  tail call void @__rb_erase_color(ptr noundef nonnull %193, ptr noundef %1, ptr noundef nonnull @__anon_vma_interval_tree_augment_rotate) #5
  br label %237

237:                                              ; preds = %236, %234, %186, %181, %149
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @anon_vma_interval_tree_iter_first(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %2
  br i1 %17, label %52, label %18

18:                                               ; preds = %50, %10
  %19 = phi ptr [ %51, %50 ], [ %4, %10 ]
  %20 = getelementptr i8, ptr %19, i32 -16
  %21 = getelementptr i8, ptr %19, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %22, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %1
  br i1 %27, label %28, label %50

28:                                               ; preds = %24, %18
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %2
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %29, align 4
  %37 = sub i32 %35, %36
  %38 = lshr i32 %37, 12
  %39 = add i32 %31, -1
  %40 = add i32 %39, %38
  %41 = icmp ult i32 %40, %1
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = getelementptr i8, ptr %19, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %44, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %48, %1
  br i1 %49, label %52, label %50

50:                                               ; preds = %46, %24
  %51 = phi ptr [ %22, %24 ], [ %44, %46 ]
  br label %18

52:                                               ; preds = %46, %42, %33, %28, %10, %6, %3
  %53 = phi ptr [ null, %3 ], [ null, %6 ], [ null, %10 ], [ %20, %33 ], [ null, %42 ], [ null, %46 ], [ null, %28 ]
  ret ptr %53
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @anon_vma_interval_tree_iter_next(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %66, %3
  %7 = phi ptr [ %5, %3 ], [ %59, %66 ]
  %8 = phi ptr [ %0, %3 ], [ %57, %66 ]
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %6
  br label %49

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %10, label %15

15:                                               ; preds = %47, %11
  %16 = phi ptr [ %48, %47 ], [ %7, %11 ]
  %17 = getelementptr i8, ptr %16, i32 -16
  %18 = getelementptr i8, ptr %16, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %19, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %25, label %47

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %2
  br i1 %29, label %75, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %26, align 4
  %34 = sub i32 %32, %33
  %35 = lshr i32 %34, 12
  %36 = add i32 %28, -1
  %37 = add i32 %36, %35
  %38 = icmp ult i32 %37, %1
  br i1 %38, label %39, label %75

39:                                               ; preds = %30
  %40 = getelementptr i8, ptr %16, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %41, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, %1
  br i1 %46, label %75, label %47

47:                                               ; preds = %43, %21
  %48 = phi ptr [ %19, %21 ], [ %41, %43 ]
  br label %15

49:                                               ; preds = %55, %10
  %50 = phi ptr [ %57, %55 ], [ %8, %10 ]
  %51 = getelementptr inbounds %struct.anon_vma_chain, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = inttoptr i32 %53 to ptr
  %57 = getelementptr i8, ptr %56, i32 -16
  %58 = getelementptr inbounds %struct.rb_node, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %51, %59
  br i1 %60, label %49, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %62, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %64, %2
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.vm_area_struct, ptr %62, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %62, align 4
  %70 = sub i32 %68, %69
  %71 = lshr i32 %70, 12
  %72 = add i32 %64, -1
  %73 = add i32 %72, %71
  %74 = icmp ult i32 %73, %1
  br i1 %74, label %6, label %75

75:                                               ; preds = %66, %61, %49, %43, %39, %30, %25
  %76 = phi ptr [ %17, %30 ], [ null, %39 ], [ null, %43 ], [ null, %25 ], [ null, %49 ], [ null, %61 ], [ %57, %66 ]
  ret ptr %76
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @vma_interval_tree_augment_rotate(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = getelementptr %struct.anon.68, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.68, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 32
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -40
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sub i32 %10, %11
  %13 = lshr i32 %12, 12
  %14 = add i32 %8, -1
  %15 = add i32 %14, %13
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.anon.68, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %15) #5
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i32 [ %15, %2 ], [ %22, %19 ]
  %25 = getelementptr i8, ptr %0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.anon.68, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 %24) #5
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %28 ]
  store i32 %33, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @__anon_vma_interval_tree_augment_rotate(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 12
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %7, align 4
  %13 = sub i32 %11, %12
  %14 = lshr i32 %13, 12
  %15 = add i32 %9, -1
  %16 = add i32 %15, %14
  %17 = getelementptr i8, ptr %0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = getelementptr i8, ptr %18, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 %16) #5
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i32 [ %16, %2 ], [ %23, %20 ]
  %26 = getelementptr i8, ptr %0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %27, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 %25) #5
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %29 ]
  store i32 %34, ptr %4, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
