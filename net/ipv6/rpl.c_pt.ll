; ModuleID = '/llk/IR/net/ipv6/rpl.c_pt.bc'
source_filename = "../net/ipv6/rpl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipv6_rpl_sr_hdr = type { i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { [0 x %struct.in6_addr] }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ipv6_rpl_srh_size(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %0 to i32
  %5 = zext i8 %1 to i32
  %6 = sub nsw i32 16, %5
  %7 = mul nsw i32 %6, %4
  %8 = zext i8 %2 to i32
  %9 = sub nsw i32 16, %8
  %10 = add nsw i32 %9, %7
  ret i32 %10
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_rpl_srh_decompress(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = load i8, ptr %1, align 1
  store i8 %5, ptr %0, align 1
  %6 = zext i8 %3 to i32
  %7 = shl nuw nsw i32 %6, 4
  %8 = add nuw nsw i32 %7, 16
  %9 = lshr exact i32 %8, 3
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 1
  %14 = and i32 %13, -61441
  store i32 %14, ptr %12, align 1
  %15 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 3
  store i8 %19, ptr %20, align 1
  %21 = and i32 %13, -61696
  store i32 %21, ptr %12, align 1
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 5
  %25 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 5
  %26 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 4
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i32 [ 0, %23 ], [ %37, %27 ]
  %29 = getelementptr [0 x %struct.in6_addr], ptr %24, i32 0, i32 %28
  %30 = load i32, ptr %26, align 1
  %31 = lshr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = sub nuw nsw i32 16, %32
  %34 = mul i32 %33, %28
  %35 = getelementptr [0 x i8], ptr %25, i32 0, i32 %34
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr align 4 %2, i32 %32, i1 false) #3
  %36 = getelementptr [16 x i8], ptr %29, i32 0, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %35, i32 %33, i1 false) #3
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, %6
  br i1 %38, label %39, label %27

39:                                               ; preds = %27, %4
  %40 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 5
  %41 = getelementptr [0 x %struct.in6_addr], ptr %40, i32 0, i32 %6
  %42 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 5
  %43 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 4
  %44 = load i32, ptr %43, align 1
  %45 = lshr i32 %44, 4
  %46 = and i32 %45, 15
  %47 = sub nuw nsw i32 16, %46
  %48 = mul nuw nsw i32 %47, %6
  %49 = getelementptr [0 x i8], ptr %42, i32 0, i32 %48
  %50 = and i32 %44, 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 4 %2, i32 %50, i1 false) #3
  %51 = getelementptr [16 x i8], ptr %41, i32 0, i32 %50
  %52 = sub nuw nsw i32 16, %50
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %49, i32 %52, i1 false) #3
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_rpl_srh_compress(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = zext i8 %3 to i32
  %6 = icmp eq i8 %3, 0
  %7 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 5
  br label %8

8:                                                ; preds = %22, %4
  %9 = phi i32 [ 0, %4 ], [ %23, %22 ]
  br i1 %6, label %22, label %10

10:                                               ; preds = %8
  %11 = getelementptr [16 x i8], ptr %2, i32 0, i32 %9
  %12 = load i8, ptr %11, align 1
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %13 ]
  %18 = getelementptr [0 x %struct.in6_addr], ptr %7, i32 0, i32 %17
  %19 = getelementptr [16 x i8], ptr %18, i32 0, i32 %9
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %12, %20
  br i1 %21, label %13, label %25

22:                                               ; preds = %13, %8
  %23 = add nuw nsw i32 %9, 1
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %27, label %8

25:                                               ; preds = %16
  %26 = and i32 %9, 255
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ 15, %22 ]
  %29 = getelementptr [0 x %struct.in6_addr], ptr %7, i32 0, i32 %5
  %30 = load i8, ptr %2, align 1
  %31 = load i8, ptr %29, align 1
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %33, label %118

33:                                               ; preds = %27
  %34 = getelementptr [16 x i8], ptr %2, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr [16 x i8], ptr %29, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %35, %37
  br i1 %38, label %39, label %118

39:                                               ; preds = %33
  %40 = getelementptr [16 x i8], ptr %2, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr [16 x i8], ptr %29, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %45, label %118

45:                                               ; preds = %39
  %46 = getelementptr [16 x i8], ptr %2, i32 0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr [16 x i8], ptr %29, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %47, %49
  br i1 %50, label %51, label %118

51:                                               ; preds = %45
  %52 = getelementptr [16 x i8], ptr %2, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr [16 x i8], ptr %29, i32 0, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %51
  %58 = getelementptr [16 x i8], ptr %2, i32 0, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr [16 x i8], ptr %29, i32 0, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %59, %61
  br i1 %62, label %63, label %118

63:                                               ; preds = %57
  %64 = getelementptr [16 x i8], ptr %2, i32 0, i32 6
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr [16 x i8], ptr %29, i32 0, i32 6
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %65, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %63
  %70 = getelementptr [16 x i8], ptr %2, i32 0, i32 7
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr [16 x i8], ptr %29, i32 0, i32 7
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %71, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  %76 = getelementptr [16 x i8], ptr %2, i32 0, i32 8
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr [16 x i8], ptr %29, i32 0, i32 8
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %77, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %75
  %82 = getelementptr [16 x i8], ptr %2, i32 0, i32 9
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr [16 x i8], ptr %29, i32 0, i32 9
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %83, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = getelementptr [16 x i8], ptr %2, i32 0, i32 10
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr [16 x i8], ptr %29, i32 0, i32 10
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %89, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = getelementptr [16 x i8], ptr %2, i32 0, i32 11
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr [16 x i8], ptr %29, i32 0, i32 11
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %95, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = getelementptr [16 x i8], ptr %2, i32 0, i32 12
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr [16 x i8], ptr %29, i32 0, i32 12
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %101, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = getelementptr [16 x i8], ptr %2, i32 0, i32 13
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr [16 x i8], ptr %29, i32 0, i32 13
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %107, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = getelementptr [16 x i8], ptr %2, i32 0, i32 14
  %113 = load i8, ptr %112, align 1
  %114 = getelementptr [16 x i8], ptr %29, i32 0, i32 14
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %113, %115
  %117 = select i1 %116, i32 15, i32 14
  br label %118

118:                                              ; preds = %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27
  %119 = phi i32 [ 0, %27 ], [ 1, %33 ], [ 2, %39 ], [ 3, %45 ], [ 4, %51 ], [ 5, %57 ], [ 6, %63 ], [ 7, %69 ], [ 8, %75 ], [ 9, %81 ], [ 10, %87 ], [ 11, %93 ], [ 12, %99 ], [ 13, %105 ], [ %117, %111 ]
  %120 = load i8, ptr %1, align 1
  store i8 %120, ptr %0, align 1
  %121 = sub nsw i32 16, %28
  %122 = mul nsw i32 %121, %5
  %123 = sub nuw nsw i32 16, %119
  %124 = add nsw i32 %123, %122
  %125 = lshr i32 %124, 3
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 1
  store i8 %126, ptr %127, align 1
  %128 = and i32 %124, 7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %118
  %131 = add i8 %126, 1
  store i8 %131, ptr %127, align 1
  %132 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 4
  %133 = load i32, ptr %132, align 1
  %134 = mul nsw i32 %128, -4096
  %135 = add nsw i32 %134, 32768
  %136 = and i32 %133, -61441
  %137 = or i32 %136, %135
  store i32 %137, ptr %132, align 1
  br label %142

138:                                              ; preds = %118
  %139 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 4
  %140 = load i32, ptr %139, align 1
  %141 = and i32 %140, -61441
  store i32 %141, ptr %139, align 1
  br label %142

142:                                              ; preds = %138, %130
  %143 = phi i32 [ %141, %138 ], [ %137, %130 ]
  %144 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 2
  %145 = load i8, ptr %144, align 1
  %146 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 2
  store i8 %145, ptr %146, align 1
  %147 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %1, i32 0, i32 3
  %148 = load i8, ptr %147, align 1
  %149 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 3
  store i8 %148, ptr %149, align 1
  %150 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 4
  %151 = shl nuw nsw i32 %28, 4
  %152 = and i32 %151, 240
  %153 = and i32 %143, -256
  %154 = or i32 %119, %152
  %155 = or i32 %154, %153
  store i32 %155, ptr %150, align 1
  br i1 %6, label %171, label %156

156:                                              ; preds = %142
  %157 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 5
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i32 [ %155, %156 ], [ %170, %158 ]
  %160 = phi i32 [ 0, %156 ], [ %168, %158 ]
  %161 = lshr i32 %159, 4
  %162 = and i32 %161, 15
  %163 = sub nuw nsw i32 16, %162
  %164 = mul i32 %163, %160
  %165 = getelementptr [0 x i8], ptr %157, i32 0, i32 %164
  %166 = getelementptr [0 x %struct.in6_addr], ptr %7, i32 0, i32 %160
  %167 = getelementptr [16 x i8], ptr %166, i32 0, i32 %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %165, ptr align 1 %167, i32 %121, i1 false) #3
  %168 = add nuw nsw i32 %160, 1
  %169 = icmp eq i32 %168, %5
  %170 = load i32, ptr %150, align 1
  br i1 %169, label %171, label %158

171:                                              ; preds = %158, %142
  %172 = phi i32 [ %155, %142 ], [ %170, %158 ]
  %173 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 5
  %174 = lshr i32 %172, 4
  %175 = and i32 %174, 15
  %176 = sub nuw nsw i32 16, %175
  %177 = mul nuw nsw i32 %176, %5
  %178 = getelementptr [0 x i8], ptr %173, i32 0, i32 %177
  %179 = getelementptr [16 x i8], ptr %29, i32 0, i32 %119
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %178, ptr align 1 %179, i32 %123, i1 false) #3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }

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
