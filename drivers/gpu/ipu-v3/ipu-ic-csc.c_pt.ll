; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-ic-csc.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-ic-csc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22__ipu_ic_calc_csc\22\09\09\09\09\09"
module asm "__kstrtabns___ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_calc_csc\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipu_ic_csc_params = type { [3 x [3 x i16]], [3 x i16], i8 }
%struct.ipu_ic_colorspace = type { i32, i32, i32 }
%struct.ipu_ic_csc = type { %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, %struct.ipu_ic_csc_params }

@__kstrtab___ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__kstrtabns___ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__ksymtab___ipu_ic_calc_csc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ipu_ic_calc_csc to i32), ptr @__kstrtab___ipu_ic_calc_csc, ptr @__kstrtabns___ipu_ic_calc_csc }, section "___ksymtab_gpl+__ipu_ic_calc_csc", align 4
@__kstrtab_ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_calc_csc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_calc_csc to i32), ptr @__kstrtab_ipu_ic_calc_csc, ptr @__kstrtabns_ipu_ic_calc_csc }, section "___ksymtab_gpl+ipu_ic_calc_csc", align 4
@yuv2yuv = internal unnamed_addr constant [4 x ptr] [ptr @identity, ptr @yuvf2yuvl, ptr @yuvl2yuvf, ptr @identity], align 4
@rgb2rgb = internal unnamed_addr constant [4 x ptr] [ptr @identity, ptr @rgbf2rgbl, ptr @rgbl2rgbf, ptr @identity], align 4
@yuv2rgb_601 = internal unnamed_addr constant [4 x ptr] [ptr @yuvf2rgbf_601, ptr @yuvf2rgbl_601, ptr @yuvl2rgbf_601, ptr @yuvl2rgbl_601], align 4
@rgb2yuv_601 = internal unnamed_addr constant [4 x ptr] [ptr @rgbf2yuvf_601, ptr @rgbf2yuvl_601, ptr @rgbl2yuvf_601, ptr @rgbl2yuvl_601], align 4
@yuv2rgb_709 = internal unnamed_addr constant [4 x ptr] [ptr @yuvf2rgbf_709, ptr @yuvf2rgbl_709, ptr @yuvl2rgbf_709, ptr @yuvl2rgbl_709], align 4
@rgb2yuv_709 = internal unnamed_addr constant [4 x ptr] [ptr @rgbf2yuvf_709, ptr @rgbf2yuvl_709, ptr @rgbl2yuvf_709, ptr @rgbl2yuvl_709], align 4
@identity = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 0], [3 x i16] [i16 0, i16 128, i16 0], [3 x i16] [i16 0, i16 0, i16 128]], [3 x i16] zeroinitializer, i8 2 }, align 2
@yuvf2yuvl = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 220, i16 0, i16 0], [3 x i16] [i16 0, i16 225, i16 0], [3 x i16] [i16 0, i16 0, i16 225]], [3 x i16] [i16 64, i16 62, i16 62], i8 5 }, align 2
@yuvl2yuvf = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 149, i16 0, i16 0], [3 x i16] [i16 0, i16 146, i16 0], [3 x i16] [i16 0, i16 0, i16 146]], [3 x i16] [i16 -37, i16 -35, i16 -35], i8 2 }, align 2
@rgbf2rgbl = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 220, i16 0, i16 0], [3 x i16] [i16 0, i16 220, i16 0], [3 x i16] [i16 0, i16 0, i16 220]], [3 x i16] [i16 64, i16 64, i16 64], i8 1 }, align 2
@rgbl2rgbf = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 149, i16 0, i16 0], [3 x i16] [i16 0, i16 149, i16 0], [3 x i16] [i16 0, i16 0, i16 149]], [3 x i16] [i16 -37, i16 -37, i16 -37], i8 2 }, align 2
@yuvf2rgbf_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 179], [3 x i16] [i16 128, i16 -44, i16 -91], [3 x i16] [i16 128, i16 227, i16 0]], [3 x i16] [i16 -359, i16 271, i16 -454], i8 2 }, align 2
@yuvf2rgbl_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 110, i16 0, i16 154], [3 x i16] [i16 110, i16 -38, i16 -78], [3 x i16] [i16 110, i16 195, i16 0]], [3 x i16] [i16 -276, i16 265, i16 -358], i8 2 }, align 2
@yuvl2rgbf_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 75, i16 0, i16 102], [3 x i16] [i16 75, i16 -25, i16 -52], [3 x i16] [i16 75, i16 129, i16 0]], [3 x i16] [i16 -223, i16 136, i16 -277], i8 3 }, align 2
@yuvl2rgbl_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 175], [3 x i16] [i16 128, i16 -43, i16 -89], [3 x i16] [i16 128, i16 222, i16 0]], [3 x i16] [i16 -351, i16 265, i16 -443], i8 2 }, align 2
@rgbf2yuvf_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 77, i16 150, i16 29], [3 x i16] [i16 -43, i16 -85, i16 128], [3 x i16] [i16 128, i16 -107, i16 -21]], [3 x i16] [i16 0, i16 512, i16 512], i8 1 }, align 2
@rgbf2yuvl_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 66, i16 129, i16 25], [3 x i16] [i16 -38, i16 -74, i16 112], [3 x i16] [i16 112, i16 -94, i16 -18]], [3 x i16] [i16 64, i16 512, i16 512], i8 5 }, align 2
@rgbl2yuvf_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 89, i16 175, i16 34], [3 x i16] [i16 -50, i16 -99, i16 149], [3 x i16] [i16 149, i16 -125, i16 -24]], [3 x i16] [i16 -75, i16 512, i16 512], i8 1 }, align 2
@rgbl2yuvl_601 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 77, i16 150, i16 29], [3 x i16] [i16 -44, i16 -87, i16 131], [3 x i16] [i16 131, i16 -110, i16 -21]], [3 x i16] [i16 0, i16 512, i16 512], i8 5 }, align 2
@yuvf2rgbf_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 202], [3 x i16] [i16 128, i16 -24, i16 -60], [3 x i16] [i16 128, i16 238, i16 0]], [3 x i16] [i16 -403, i16 168, i16 -475], i8 2 }, align 2
@yuvf2rgbl_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 110, i16 0, i16 173], [3 x i16] [i16 110, i16 -21, i16 -51], [3 x i16] [i16 110, i16 204, i16 0]], [3 x i16] [i16 -314, i16 176, i16 -376], i8 2 }, align 2
@yuvl2rgbf_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 75, i16 0, i16 115], [3 x i16] [i16 75, i16 -14, i16 -34], [3 x i16] [i16 75, i16 135, i16 0]], [3 x i16] [i16 -248, i16 77, i16 -289], i8 3 }, align 2
@yuvl2rgbl_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 197], [3 x i16] [i16 128, i16 -23, i16 -59], [3 x i16] [i16 128, i16 232, i16 0]], [3 x i16] [i16 -394, i16 164, i16 -464], i8 2 }, align 2
@rgbf2yuvf_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 54, i16 183, i16 19], [3 x i16] [i16 -29, i16 -99, i16 128], [3 x i16] [i16 128, i16 -116, i16 -12]], [3 x i16] [i16 0, i16 512, i16 512], i8 1 }, align 2
@rgbf2yuvl_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 47, i16 157, i16 16], [3 x i16] [i16 -26, i16 -87, i16 112], [3 x i16] [i16 112, i16 -102, i16 -10]], [3 x i16] [i16 64, i16 512, i16 512], i8 5 }, align 2
@rgbl2yuvf_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 63, i16 213, i16 22], [3 x i16] [i16 -34, i16 -115, i16 149], [3 x i16] [i16 149, i16 -135, i16 -14]], [3 x i16] [i16 -75, i16 512, i16 512], i8 1 }, align 2
@rgbl2yuvl_709 = internal constant %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 54, i16 183, i16 18], [3 x i16] [i16 -30, i16 -101, i16 131], [3 x i16] [i16 131, i16 -119, i16 -12]], [3 x i16] [i16 0, i16 512, i16 512], i8 5 }, align 2
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___ipu_ic_calc_csc, ptr @__ksymtab_ipu_ic_calc_csc], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__ipu_ic_calc_csc(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = or i32 %5, %9
  %11 = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = icmp eq i32 %12, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = getelementptr [4 x ptr], ptr @yuv2yuv, i32 0, i32 %10
  br label %34

20:                                               ; preds = %16
  %21 = getelementptr [4 x ptr], ptr @rgb2rgb, i32 0, i32 %10
  br label %34

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %38 [
    i32 1, label %25
    i32 2, label %28
  ]

25:                                               ; preds = %22
  %26 = icmp eq i32 %12, 1
  %27 = select i1 %26, ptr @yuv2rgb_601, ptr @rgb2yuv_601
  br label %31

28:                                               ; preds = %22
  %29 = icmp eq i32 %12, 1
  %30 = select i1 %29, ptr @yuv2rgb_709, ptr @rgb2yuv_709
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %30, %28 ], [ %27, %25 ]
  %33 = getelementptr ptr, ptr %32, i32 %10
  br label %34

34:                                               ; preds = %31, %20, %18
  %35 = phi ptr [ %19, %18 ], [ %21, %20 ], [ %33, %31 ]
  %36 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %35, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(26) %36, ptr noundef align 2 dereferenceable(26) %37, i32 26, i1 false) #2
  br label %38

38:                                               ; preds = %34, %22
  %39 = phi i32 [ -524, %22 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_ic_calc_csc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  store i32 %1, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %0, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %0, i32 0, i32 2
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 1
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 1, i32 1
  store i32 %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 1, i32 2
  store i32 %6, ptr %12, align 4
  %13 = icmp ult i32 %2, 2
  %14 = select i1 %13, i32 0, i32 2
  %15 = icmp ugt i32 %5, 1
  %16 = zext i1 %15 to i32
  %17 = or i32 %14, %16
  %18 = icmp eq i32 %6, %3
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = icmp eq i32 %6, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr [4 x ptr], ptr @yuv2yuv, i32 0, i32 %17
  br label %35

23:                                               ; preds = %19
  %24 = getelementptr [4 x ptr], ptr @rgb2rgb, i32 0, i32 %17
  br label %35

25:                                               ; preds = %7
  switch i32 %4, label %39 [
    i32 1, label %26
    i32 2, label %29
  ]

26:                                               ; preds = %25
  %27 = icmp eq i32 %3, 1
  %28 = select i1 %27, ptr @yuv2rgb_601, ptr @rgb2yuv_601
  br label %32

29:                                               ; preds = %25
  %30 = icmp eq i32 %3, 1
  %31 = select i1 %30, ptr @yuv2rgb_709, ptr @rgb2yuv_709
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi ptr [ %31, %29 ], [ %28, %26 ]
  %34 = getelementptr ptr, ptr %33, i32 %17
  br label %35

35:                                               ; preds = %32, %23, %21
  %36 = phi ptr [ %22, %21 ], [ %24, %23 ], [ %34, %32 ]
  %37 = getelementptr inbounds %struct.ipu_ic_csc, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %36, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(26) %37, ptr noundef align 2 dereferenceable(26) %38, i32 26, i1 false) #2
  br label %39

39:                                               ; preds = %35, %25
  %40 = phi i32 [ -524, %25 ], [ 0, %35 ]
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind }

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
