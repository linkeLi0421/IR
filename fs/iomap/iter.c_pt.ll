; ModuleID = '/llk/IR/fs/iomap/iter.c_pt.bc'
source_filename = "../fs/iomap/iter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__tracepoint_iomap_iter = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@iomap_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fs/iomap/iter.c\00", align 1
@iomap_iter_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_iter_done.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_iter_done.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_iomap_iter_dstmap = external dso_local global %struct.tracepoint, align 4
@__tracepoint_iomap_iter_srcmap = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_iter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iomap_ops, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, %5
  %18 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %19 = load i16, ptr %18, align 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, %23
  %27 = tail call i64 @llvm.umin.i64(i64 %17, i64 %26) #5
  br label %28

28:                                               ; preds = %21, %11
  %29 = phi i64 [ %27, %21 ], [ %17, %11 ]
  %30 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = sub i64 %29, %14
  %33 = tail call i64 @llvm.umin.i64(i64 %31, i64 %32) #5
  %34 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = tail call i64 @llvm.smax.i64(i64 %35, i64 0)
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 %9(ptr noundef %12, i64 noundef %14, i64 noundef %33, i32 noundef %37, i32 noundef %39, ptr noundef %3) #5
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i64, ptr %34, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %187, label %45

45:                                               ; preds = %42, %28, %7, %2
  %46 = tail call ptr @llvm.returnaddress(i32 0)
  %47 = ptrtoint ptr %46 to i32
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = tail call ptr @llvm.thread.pointer() #5
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %62 = tail call i32 @__traceiter_iomap_iter(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %47) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %63

63:                                               ; preds = %61, %50, %45
  %64 = load i64, ptr %4, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 3
  %68 = load i64, ptr %67, align 8
  %69 = icmp slt i64 %68, 1
  br i1 %69, label %107, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = add i64 %72, %64
  %74 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %75 = load i16, ptr %74, align 8
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 2
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %81, %79
  %83 = tail call i64 @llvm.umin.i64(i64 %73, i64 %82) #5
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i64 [ %83, %77 ], [ %73, %70 ]
  %86 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 1
  %89 = load i64, ptr %88, align 8
  %90 = sub i64 %85, %89
  %91 = tail call i64 @llvm.umin.i64(i64 %87, i64 %90) #5
  %92 = icmp ugt i64 %68, %91
  %93 = load i1, ptr @iomap_iter_advance.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !10

96:                                               ; preds = %84
  store i1 true, ptr @iomap_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef 9, ptr noundef null) #5
  br label %97

97:                                               ; preds = %96, %84
  br i1 %92, label %187, label %98

98:                                               ; preds = %97
  %99 = load i64, ptr %67, align 8
  %100 = load i64, ptr %88, align 8
  %101 = add i64 %100, %99
  store i64 %101, ptr %88, align 8
  %102 = load i64, ptr %86, align 8
  %103 = sub i64 %102, %99
  store i64 %103, ptr %86, align 8
  %104 = icmp eq i64 %102, %99
  br i1 %104, label %187, label %105

105:                                              ; preds = %98, %63
  %106 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 3
  store i64 0, ptr %106, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false) #5
  br label %110

107:                                              ; preds = %66
  %108 = trunc i64 %68 to i32
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %187, label %110

110:                                              ; preds = %107, %105
  %111 = load ptr, ptr %1, align 4
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 1
  %114 = load i64, ptr %113, align 8
  %115 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 4
  %118 = load i32, ptr %117, align 8
  %119 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6
  %120 = tail call i32 %111(ptr noundef %112, i64 noundef %114, i64 noundef %116, i32 noundef %118, ptr noundef %3, ptr noundef %119) #5
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %187, label %122

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %124 = load i64, ptr %123, align 8
  %125 = load i64, ptr %113, align 8
  %126 = icmp sgt i64 %124, %125
  %127 = load i1, ptr @iomap_iter_done.__already_done, align 1
  %128 = xor i1 %127, true
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %131, !prof !10

130:                                              ; preds = %122
  store i1 true, ptr @iomap_iter_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 33, i32 noundef 9, ptr noundef null) #5
  br label %131

131:                                              ; preds = %130, %122
  %132 = load i64, ptr %4, align 8
  %133 = icmp eq i64 %132, 0
  %134 = load i1, ptr @iomap_iter_done.__already_done.2, align 1
  %135 = xor i1 %134, true
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %139, !prof !10

137:                                              ; preds = %131
  store i1 true, ptr @iomap_iter_done.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 34, i32 noundef 9, ptr noundef null) #5
  %138 = load i64, ptr %4, align 8
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi i64 [ %138, %137 ], [ %132, %131 ]
  %141 = load i64, ptr %123, align 8
  %142 = add i64 %141, %140
  %143 = load i64, ptr %113, align 8
  %144 = icmp ule i64 %142, %143
  %145 = load i1, ptr @iomap_iter_done.__already_done.3, align 1
  %146 = xor i1 %145, true
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %149, !prof !10

148:                                              ; preds = %139
  store i1 true, ptr @iomap_iter_done.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 35, i32 noundef 9, ptr noundef null) #5
  br label %149

149:                                              ; preds = %148, %139
  %150 = load ptr, ptr %0, align 8
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_dstmap, i32 0, i32 1), align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = tail call ptr @llvm.thread.pointer() #5
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 5
  %158 = getelementptr i32, ptr @__cpu_online_mask, i32 %157
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %156, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %153
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %165 = tail call i32 @__traceiter_iomap_iter_dstmap(ptr noundef null, ptr noundef %150, ptr noundef %3) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  br label %166

166:                                              ; preds = %164, %153, %149
  %167 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %168 = load i16, ptr %167, align 8
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %187, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %0, align 8
  %172 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_srcmap, i32 0, i32 1), align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = tail call ptr @llvm.thread.pointer() #5
  %176 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %177 = load i32, ptr %176, align 8
  %178 = lshr i32 %177, 5
  %179 = getelementptr i32, ptr @__cpu_online_mask, i32 %178
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %177, 31
  %182 = shl nuw i32 1, %181
  %183 = and i32 %182, %180
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %174
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %186 = tail call i32 @__traceiter_iomap_iter_srcmap(ptr noundef null, ptr noundef %171, ptr noundef %119) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %187

187:                                              ; preds = %185, %174, %170, %166, %110, %107, %98, %97, %42
  %188 = phi i32 [ %40, %42 ], [ %108, %107 ], [ %120, %110 ], [ 1, %166 ], [ 1, %170 ], [ 1, %174 ], [ 1, %185 ], [ 0, %98 ], [ -5, %97 ]
  ret i32 %188
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_iter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_iter_dstmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_iter_srcmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2153212549}
!9 = !{i64 2153212715}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153175380}
!12 = !{i64 2153175550}
!13 = !{i64 2153195997}
!14 = !{i64 2153196167}
