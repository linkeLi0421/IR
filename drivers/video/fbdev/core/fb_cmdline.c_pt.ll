; ModuleID = '/llk/IR/drivers/video/fbdev/core/fb_cmdline.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_cmdline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_mode_option:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_mode_option\22\09\09\09\09\09"
module asm "__kstrtabns_fb_mode_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_options:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_options\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }

@fb_mode_option = dso_local global ptr null, align 4
@__kstrtab_fb_mode_option = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_mode_option = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_mode_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_mode_option to i32), ptr @__kstrtab_fb_mode_option, ptr @__kstrtabns_fb_mode_option }, section "___ksymtab_gpl+fb_mode_option", align 4
@ofonly = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [5 x i8] c"offb\00", align 1
@video_options = internal unnamed_addr global [32 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@__kstrtab_fb_get_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_options = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_options to i32), ptr @__kstrtab_fb_get_options, ptr @__kstrtabns_fb_get_options }, section "___ksymtab+fb_get_options", align 4
@__setup_str_video_setup = internal constant [7 x i8] c"video=\00", section ".init.rodata", align 1
@__setup_video_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_video_setup, ptr @video_setup, i32 0 }, section ".init.setup", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ofonly\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fb_get_options, ptr @__ksymtab_fb_mode_option, ptr @__setup_video_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_get_options(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = tail call i32 @strlen(ptr noundef %0)
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @ofonly, align 4
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str, i32 noundef 4)
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %9, %7 ]
  %13 = phi i32 [ 0, %2 ], [ %10, %7 ]
  %14 = icmp eq i32 %3, 0
  %15 = or i1 %14, %12
  br i1 %15, label %38, label %16

16:                                               ; preds = %34, %11
  %17 = phi i32 [ %36, %34 ], [ 0, %11 ]
  %18 = phi ptr [ %35, %34 ], [ null, %11 ]
  %19 = getelementptr [32 x ptr], ptr @video_options, i32 0, i32 %17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i8, ptr %20, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %3)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %20, i32 %3
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 58
  %32 = getelementptr i8, ptr %29, i32 1
  %33 = select i1 %31, ptr %32, ptr %18
  br label %34

34:                                               ; preds = %28, %25, %22, %16
  %35 = phi ptr [ %18, %16 ], [ %18, %25 ], [ %18, %22 ], [ %33, %28 ]
  %36 = add nuw nsw i32 %17, 1
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %16

38:                                               ; preds = %34, %11
  %39 = phi ptr [ null, %11 ], [ %35, %34 ]
  %40 = icmp eq ptr %39, null
  %41 = icmp ne ptr %1, null
  %42 = and i1 %41, %40
  %43 = load ptr, ptr @fb_mode_option, align 4
  %44 = icmp ne ptr %43, null
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = tail call noalias ptr @kstrdup(ptr noundef nonnull %43, i32 noundef 3264) #4
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi ptr [ %47, %46 ], [ %39, %38 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @strncmp(ptr noundef nonnull %49, ptr noundef nonnull dereferenceable(4) @.str.1, i32 noundef 3)
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 1, i32 %13
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ %13, %48 ], [ %54, %51 ]
  br i1 %41, label %57, label %58

57:                                               ; preds = %55
  store ptr %49, ptr %1, align 4
  br label %58

58:                                               ; preds = %57, %55
  ret i32 %56
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @video_setup(ptr noundef %0) #3 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(7) @.str.2, i32 noundef 6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i1 true, ptr @ofonly, align 4
  br label %23

10:                                               ; preds = %6
  %11 = tail call ptr @strchr(ptr noundef nonnull %0, i32 noundef 58)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %23, label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %18 = getelementptr [32 x ptr], ptr @video_options, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  store ptr %0, ptr %18, align 4
  br label %23

22:                                               ; preds = %10
  store ptr %0, ptr @fb_mode_option, align 4
  br label %23

23:                                               ; preds = %22, %21, %13, %9, %3, %1
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
