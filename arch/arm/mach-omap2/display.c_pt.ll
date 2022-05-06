; ModuleID = '/llk/IR/arch/arm/mach-omap2/display.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/display.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon.65, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon.65 = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.list_head = type { ptr, ptr }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.omap_dss_dispc_dev_attr = type { i8, i8 }

@.str = private unnamed_addr constant [51 x i8] c"\013dss_core: hwmod data doesn't contain reset data\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\014dss_core: waiting for reset to finish failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dss_dispc\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"arch/arm/mach-omap2/display.c\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"display: could not disable outputs during reset - could not find dss_dispc hwmod\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"\013display: could not disable outputs during reset due to missing dev_attr\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\013didn't get FRAMEDONE1/2/3 or TV interrupt\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_dss_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_hwmod_class, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 128
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #3
  br label %152

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 4
  %19 = zext i8 %14 to i32
  br label %20

20:                                               ; preds = %31, %17
  %21 = phi ptr [ %33, %31 ], [ %18, %17 ]
  %22 = phi i32 [ %32, %31 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %21, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_prepare(ptr noundef %24) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = tail call i32 @clk_enable(ptr noundef %24) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %24) #4
  br label %31

31:                                               ; preds = %30, %27, %20
  %32 = add nsw i32 %22, -1
  %33 = getelementptr %struct.omap_hwmod_opt_clk, ptr %21, i32 1
  %34 = icmp sgt i32 %22, 1
  br i1 %34, label %20, label %35

35:                                               ; preds = %31, %12
  %36 = tail call ptr @omap_hwmod_lookup(ptr noundef nonnull @.str.2) #4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %114

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.omap_hwmod, ptr %36, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #3
  br label %114

45:                                               ; preds = %39
  %46 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 64) #4
  %47 = and i32 %46, 1
  %48 = and i32 %46, 2
  %49 = icmp eq i32 %48, 0
  %50 = load i8, ptr %41, align 1
  %51 = icmp ugt i8 %50, 2
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 568) #4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = load i8, ptr %41, align 1
  %57 = icmp ugt i8 %56, 3
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 2120) #4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %58, %52, %45
  %63 = phi i1 [ %55, %58 ], [ %55, %52 ], [ false, %45 ]
  %64 = phi i1 [ %61, %58 ], [ false, %52 ], [ false, %45 ]
  %65 = lshr exact i32 %48, 1
  %66 = or i32 %65, %47
  %67 = zext i1 %63 to i32
  %68 = or i32 %66, %67
  %69 = zext i1 %64 to i32
  %70 = or i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %114, label %72

72:                                               ; preds = %62
  br i1 %49, label %81, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, ptr %41, i32 0, i32 1
  %75 = load i8, ptr %74, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = or i32 %47, 16777216
  br label %81

79:                                               ; preds = %73
  %80 = or i32 %47, 12
  br label %81

81:                                               ; preds = %79, %77, %72
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ], [ %47, %72 ]
  %83 = or i32 %82, 4194304
  %84 = select i1 %63, i32 %83, i32 %82
  %85 = or i32 %84, 1073741824
  %86 = select i1 %64, i32 %85, i32 %84
  tail call void @omap_hwmod_write(i32 noundef %86, ptr noundef nonnull %36, i16 noundef zeroext 24) #4
  %87 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 64) #4
  %88 = and i32 %87, -4
  tail call void @omap_hwmod_write(i32 noundef %88, ptr noundef nonnull %36, i16 noundef zeroext 64) #4
  %89 = load i8, ptr %41, align 1
  %90 = icmp ugt i8 %89, 2
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 568) #4
  %93 = and i32 %92, -2
  tail call void @omap_hwmod_write(i32 noundef %93, ptr noundef nonnull %36, i16 noundef zeroext 568) #4
  %94 = load i8, ptr %41, align 1
  %95 = icmp ugt i8 %94, 3
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 2120) #4
  %98 = and i32 %97, -2
  tail call void @omap_hwmod_write(i32 noundef %98, ptr noundef nonnull %36, i16 noundef zeroext 2120) #4
  br label %99

99:                                               ; preds = %96, %91, %81
  %100 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 24) #4
  %101 = and i32 %100, %86
  %102 = icmp eq i32 %101, %86
  br i1 %102, label %114, label %103

103:                                              ; preds = %108, %99
  %104 = phi i32 [ %109, %108 ], [ 0, %99 ]
  %105 = icmp eq i32 %104, 100
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #3
  br label %114

108:                                              ; preds = %103
  %109 = add nuw nsw i32 %104, 1
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #4
  %111 = tail call i32 @omap_hwmod_read(ptr noundef nonnull %36, i16 noundef zeroext 24) #4
  %112 = and i32 %111, %86
  %113 = icmp eq i32 %112, %86
  br i1 %113, label %114, label %103

114:                                              ; preds = %108, %106, %99, %62, %43, %38
  %115 = tail call i32 @omap_rev() #4
  %116 = and i32 %115, -65536
  %117 = icmp eq i32 %116, 875560960
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %0, i16 noundef zeroext 68) #4
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %0, i16 noundef zeroext 72) #4
  br label %119

119:                                              ; preds = %118, %114
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %0, i16 noundef zeroext 64) #4
  br label %120

120:                                              ; preds = %131, %119
  %121 = phi i32 [ 0, %119 ], [ %133, %131 ]
  %122 = load ptr, ptr %2, align 4
  %123 = getelementptr inbounds %struct.omap_hwmod_class, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = trunc i32 %126 to i16
  %128 = tail call i32 @omap_hwmod_read(ptr noundef %0, i16 noundef zeroext %127) #4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748) #4
  %133 = add nuw nsw i32 %121, 1
  %134 = icmp eq i32 %133, 10000
  br i1 %134, label %135, label %120

135:                                              ; preds = %131
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #3
  br label %137

137:                                              ; preds = %135, %120
  %138 = phi i32 [ -110, %135 ], [ 0, %120 ]
  %139 = load i8, ptr %13, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %15, align 4
  %143 = zext i8 %139 to i32
  br label %144

144:                                              ; preds = %144, %141
  %145 = phi ptr [ %150, %144 ], [ %142, %141 ]
  %146 = phi i32 [ %149, %144 ], [ %143, %141 ]
  %147 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %145, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  tail call void @clk_disable(ptr noundef %148) #4
  tail call void @clk_unprepare(ptr noundef %148) #4
  %149 = add nsw i32 %146, -1
  %150 = getelementptr %struct.omap_hwmod_opt_clk, ptr %145, i32 1
  %151 = icmp ugt i32 %146, 1
  br i1 %151, label %144, label %152

152:                                              ; preds = %144, %137, %10
  %153 = phi i32 [ -22, %10 ], [ %138, %137 ], [ %138, %144 ]
  ret i32 %153
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_hwmod_write(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_hwmod_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
