; ModuleID = '/llk/IR/net/wireless/of.c_pt.bc'
source_filename = "../net/wireless/of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_read_of_freq_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_read_of_freq_limits\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_read_of_freq_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.119, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.anon.119 = type { i64, i64, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ieee80211-freq-limit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ieee80211-freq-limit wrong format\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get limits: %d\0A\00", align 1
@__kstrtab_wiphy_read_of_freq_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_read_of_freq_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_read_of_freq_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_read_of_freq_limits to i32), ptr @__kstrtab_wiphy_read_of_freq_limits, ptr @__kstrtabns_wiphy_read_of_freq_limits }, section "___ksymtab+wiphy_read_of_freq_limits", align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"net/wireless/of.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_wiphy_read_of_freq_limits], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_read_of_freq_limits(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %108, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %108, label %10

10:                                               ; preds = %6
  %11 = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef nonnull %2) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %108, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %14, 7
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #7
  br label %108

20:                                               ; preds = %13
  %21 = lshr i32 %14, 3
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 12) #6
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %100, label %24, !prof !9

24:                                               ; preds = %20
  %25 = extractvalue { i32, i1 } %22, 0
  %26 = call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %100, label %28

28:                                               ; preds = %24
  %29 = icmp ugt i32 %14, 7
  br i1 %29, label %30, label %107

30:                                               ; preds = %28
  %31 = call i32 @llvm.umax.i32(i32 %21, i32 1)
  br label %36

32:                                               ; preds = %50
  %33 = add nuw nsw i32 %38, 1
  %34 = icmp ult i32 %33, %21
  %35 = icmp eq i32 %33, %31
  br i1 %35, label %55, label %36

36:                                               ; preds = %32, %30
  %37 = phi i1 [ %34, %32 ], [ true, %30 ]
  %38 = phi i32 [ %33, %32 ], [ 0, %30 ]
  %39 = phi ptr [ %45, %32 ], [ null, %30 ]
  %40 = getelementptr %struct.ieee80211_freq_range, ptr %26, i32 %38
  %41 = call ptr @of_prop_next_u32(ptr noundef nonnull %11, ptr noundef %39, ptr noundef %40) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %101, label %43

43:                                               ; preds = %36
  %44 = getelementptr %struct.ieee80211_freq_range, ptr %26, i32 %38, i32 1
  %45 = call ptr @of_prop_next_u32(ptr noundef nonnull %11, ptr noundef nonnull %41, ptr noundef %44) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %101, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %40, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %101, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %44, align 4
  %52 = icmp ne i32 %51, 0
  %53 = icmp ult i32 %48, %51
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %32, label %102

55:                                               ; preds = %32
  %56 = icmp ult i32 %14, 8
  br i1 %56, label %57, label %58, !prof !9

57:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 48, i32 noundef 9, ptr noundef null) #6
  call void @kfree(ptr noundef nonnull %26) #6
  br i1 %34, label %105, label %108

58:                                               ; preds = %97, %55
  %59 = phi i32 [ %98, %97 ], [ 0, %55 ]
  %60 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %97, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %61, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %93, %63
  %68 = phi i32 [ %94, %93 ], [ 0, %63 ]
  %69 = load ptr, ptr %61, align 4
  %70 = getelementptr %struct.ieee80211_channel, ptr %69, i32 %68, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = getelementptr %struct.ieee80211_channel, ptr %69, i32 %68, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = mul i32 %76, 1000
  %78 = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef nonnull %26, i32 noundef %77, i32 noundef 20000) #6
  br i1 %78, label %93, label %79

79:                                               ; preds = %83, %74
  %80 = phi i32 [ %81, %83 ], [ 0, %74 ]
  %81 = add nuw nsw i32 %80, 1
  %82 = icmp eq i32 %81, %21
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = getelementptr %struct.ieee80211_freq_range, ptr %26, i32 %81
  %85 = load i32, ptr %75, align 4
  %86 = mul i32 %85, 1000
  %87 = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %84, i32 noundef %86, i32 noundef 20000) #6
  br i1 %87, label %88, label %79

88:                                               ; preds = %83
  %89 = icmp ult i32 %81, %21
  br i1 %89, label %93, label %90

90:                                               ; preds = %88, %79
  %91 = load i32, ptr %70, align 4
  %92 = or i32 %91, 1
  store i32 %92, ptr %70, align 4
  br label %93

93:                                               ; preds = %90, %88, %74, %67
  %94 = add nuw nsw i32 %68, 1
  %95 = load i32, ptr %64, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %67, label %97

97:                                               ; preds = %93, %63, %58
  %98 = add nuw nsw i32 %59, 1
  %99 = icmp eq i32 %98, 6
  br i1 %99, label %102, label %58

100:                                              ; preds = %24, %20
  call void @kfree(ptr noundef null) #6
  br label %105

101:                                              ; preds = %47, %43, %36
  call void @kfree(ptr noundef nonnull %26) #6
  br label %105

102:                                              ; preds = %97, %50
  %103 = phi i1 [ %34, %97 ], [ %37, %50 ]
  %104 = phi i32 [ 0, %97 ], [ -22, %50 ]
  call void @kfree(ptr noundef nonnull %26) #6
  br i1 %103, label %105, label %108

105:                                              ; preds = %102, %101, %100, %57
  %106 = phi i32 [ -12, %100 ], [ %104, %102 ], [ -22, %101 ], [ 0, %57 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, i32 noundef %106) #7
  br label %108

107:                                              ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 48, i32 noundef 9, ptr noundef null) #6
  call void @kfree(ptr noundef nonnull %26) #6
  br label %108

108:                                              ; preds = %107, %105, %102, %57, %19, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
