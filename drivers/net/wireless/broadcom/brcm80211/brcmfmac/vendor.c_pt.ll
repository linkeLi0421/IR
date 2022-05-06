; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wiphy_vendor_command = type { %struct.nl80211_vendor_cmd_info, i32, ptr, ptr, ptr, i32 }
%struct.nl80211_vendor_cmd_info = type { i32, i32 }
%struct.brcmf_vndr_dcmd_hdr = type { i32, i32, i32, i32, i32 }

@brcmf_vendor_cmds = dso_local local_unnamed_addr constant [1 x %struct.wiphy_vendor_command] [%struct.wiphy_vendor_command { %struct.nl80211_vendor_cmd_info { i32 4120, i32 1 }, i32 3, ptr @brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr null, ptr inttoptr (i32 -61 to ptr), i32 0 }], align 4
@__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler = private unnamed_addr constant [38 x i8] c"brcmf_cfg80211_vndr_cmds_dcmd_handler\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"vendor command too short: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bad buffer offset %d > %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"oversize input buffer %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"oversize return buffer %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_vndr_cmds_dcmd_handler(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i16, align 2
  %6 = icmp ult i32 %3, 20
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call i32 @net_ratelimit() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %92, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str, i32 noundef %3) #6
  br label %92

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %1, i32 -4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_vndr_dcmd_hdr, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = tail call i32 @net_ratelimit() #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %92, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %3) #6
  br label %92

22:                                               ; preds = %11
  %23 = sub i32 %3, %15
  %24 = getelementptr inbounds %struct.brcmf_vndr_dcmd_hdr, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp sgt i32 %23, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = icmp sgt i32 %23, 8192
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = tail call i32 @net_ratelimit() #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.2, i32 noundef %23) #6
  br label %35

35:                                               ; preds = %34, %31, %29
  %36 = phi i32 [ %23, %29 ], [ 8192, %34 ], [ 8192, %31 ]
  %37 = icmp ugt i32 %25, 8192
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call i32 @net_ratelimit() #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.3, i32 noundef %25) #6
  br label %42

42:                                               ; preds = %41, %38, %35
  %43 = phi i32 [ %25, %35 ], [ 8192, %41 ], [ 8192, %38 ]
  %44 = tail call i32 @llvm.umax.i32(i32 %43, i32 %36)
  %45 = add nsw i32 %44, 1
  %46 = tail call noalias ptr @vzalloc(i32 noundef %45) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %92, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %14, align 4
  %50 = getelementptr i8, ptr %2, i32 %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %46, ptr align 1 %50, i32 %36, i1 false)
  %51 = getelementptr i8, ptr %46, i32 %36
  store i8 0, ptr %51, align 1
  br label %52

52:                                               ; preds = %48, %22
  %53 = phi i32 [ %43, %48 ], [ 0, %22 ]
  %54 = phi ptr [ %46, %48 ], [ null, %22 ]
  %55 = getelementptr inbounds %struct.brcmf_vndr_dcmd_hdr, ptr %2, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = load i32, ptr %2, align 4
  br i1 %57, label %61, label %59

59:                                               ; preds = %52
  %60 = tail call i32 @brcmf_fil_cmd_data_set(ptr noundef %13, i32 noundef %58, ptr noundef %54, i32 noundef %53) #6
  br label %63

61:                                               ; preds = %52
  %62 = tail call i32 @brcmf_fil_cmd_data_get(ptr noundef %13, i32 noundef %58, ptr noundef %54, i32 noundef %53) #6
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = icmp eq i32 %53, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %87, %66
  %69 = phi ptr [ %88, %87 ], [ %54, %66 ]
  %70 = phi i32 [ %73, %87 ], [ %53, %66 ]
  %71 = call i32 @llvm.umin.i32(i32 %70, i32 3840)
  %72 = trunc i32 %71 to i16
  %73 = sub i32 %70, %71
  %74 = add nuw nsw i32 %71, 2
  %75 = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %0, i32 noundef 103, i32 noundef 197, i32 noundef %74) #6
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %68
  %78 = call i32 @nla_put(ptr noundef nonnull %75, i32 noundef 2, i32 noundef %71, ptr noundef %69) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  store i16 %72, ptr %5, align 2
  %81 = call i32 @nla_put(ptr noundef nonnull %75, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80, %77
  call void @kfree_skb_reason(ptr noundef nonnull %75, i32 noundef 0) #6
  br label %90

84:                                               ; preds = %80
  %85 = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %75) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = getelementptr i8, ptr %69, i32 %71
  %89 = icmp eq i32 %73, 0
  br i1 %89, label %90, label %68

90:                                               ; preds = %87, %84, %83, %68, %66, %63
  %91 = phi i32 [ %64, %63 ], [ -105, %83 ], [ 0, %66 ], [ %85, %84 ], [ 0, %87 ], [ -12, %68 ]
  call void @vfree(ptr noundef %54) #6
  br label %92

92:                                               ; preds = %90, %42, %20, %17, %10, %7
  %93 = phi i32 [ %91, %90 ], [ -22, %10 ], [ -22, %7 ], [ -22, %20 ], [ -22, %17 ], [ -12, %42 ]
  ret i32 %93
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_set(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_vendor_cmd_reply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
