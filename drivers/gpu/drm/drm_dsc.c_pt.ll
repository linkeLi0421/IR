; ModuleID = '/llk/IR/drivers/gpu/drm/drm_dsc.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dsc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_dp_pps_header_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_dp_pps_header_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_dp_pps_header_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_dp_rc_buffer_size:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_dp_rc_buffer_size\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_dp_rc_buffer_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_pps_payload_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_pps_payload_pack\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_pps_payload_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dsc_compute_rc_parameters:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dsc_compute_rc_parameters\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dsc_compute_rc_parameters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_dsc_config = type { i8, i8, i8, i8, i16, i16, i8, i16, i16, i8, i8, i16, i8, i8, i8, i16, i16, i8, i8, i16, [14 x i16], [15 x %struct.drm_dsc_rc_range_parameters], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i16, i16 }
%struct.drm_dsc_rc_range_parameters = type { i8, i8, i8 }
%struct.drm_dsc_picture_parameter_set = type <{ i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, [14 x i8], [15 x i16], i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i16 }>

@__kstrtab_drm_dsc_dp_pps_header_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_dp_pps_header_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_dp_pps_header_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_dp_pps_header_init to i32), ptr @__kstrtab_drm_dsc_dp_pps_header_init, ptr @__kstrtabns_drm_dsc_dp_pps_header_init }, section "___ksymtab+drm_dsc_dp_pps_header_init", align 4
@__kstrtab_drm_dsc_dp_rc_buffer_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_dp_rc_buffer_size = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_dp_rc_buffer_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_dp_rc_buffer_size to i32), ptr @__kstrtab_drm_dsc_dp_rc_buffer_size, ptr @__kstrtabns_drm_dsc_dp_rc_buffer_size }, section "___ksymtab+drm_dsc_dp_rc_buffer_size", align 4
@__kstrtab_drm_dsc_pps_payload_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_pps_payload_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_pps_payload_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_pps_payload_pack to i32), ptr @__kstrtab_drm_dsc_pps_payload_pack, ptr @__kstrtabns_drm_dsc_pps_payload_pack }, section "___ksymtab+drm_dsc_pps_payload_pack", align 4
@.str = private unnamed_addr constant [49 x i8] c"FinalOfs < RcModelSze for this InitialXmitDelay\0A\00", align 1
@__kstrtab_drm_dsc_compute_rc_parameters = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dsc_compute_rc_parameters = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dsc_compute_rc_parameters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dsc_compute_rc_parameters to i32), ptr @__kstrtab_drm_dsc_compute_rc_parameters, ptr @__kstrtabns_drm_dsc_compute_rc_parameters }, section "___ksymtab+drm_dsc_compute_rc_parameters", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_drm_dsc_compute_rc_parameters, ptr @__ksymtab_drm_dsc_dp_pps_header_init, ptr @__ksymtab_drm_dsc_dp_rc_buffer_size, ptr @__ksymtab_drm_dsc_pps_payload_pack], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @drm_dsc_dp_pps_header_init(ptr nocapture noundef writeonly %0) #0 {
  store i32 8327168, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dsc_dp_rc_buffer_size(i8 noundef zeroext %0, i8 noundef zeroext %1) #2 {
  %3 = zext i8 %1 to i32
  %4 = shl nuw nsw i32 %3, 10
  %5 = add nuw nsw i32 %4, 1024
  switch i8 %0, label %12 [
    i8 0, label %13
    i8 1, label %6
    i8 2, label %8
    i8 3, label %10
  ]

6:                                                ; preds = %2
  %7 = shl nuw nsw i32 %5, 2
  br label %13

8:                                                ; preds = %2
  %9 = shl nuw nsw i32 %5, 4
  br label %13

10:                                               ; preds = %2
  %11 = shl nuw nsw i32 %5, 6
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10, %8, %6, %2
  %14 = phi i32 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %2 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dsc_pps_payload_pack(ptr noundef writeonly %0, ptr noundef readonly %1) #3 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(128) %0, i8 0, i32 128, i1 false)
  %3 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 35
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 36
  %6 = load i8, ptr %5, align 1
  %7 = shl i8 %6, 4
  %8 = or i8 %7, %4
  store i8 %8, ptr %0, align 1
  %9 = load i8, ptr %1, align 2
  %10 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = shl i8 %11, 4
  %13 = or i8 %12, %9
  %14 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 3
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 3
  %20 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 31
  %21 = load i8, ptr %20, align 2, !range !8
  %22 = shl nuw nsw i8 %21, 2
  %23 = or i8 %19, %22
  %24 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 6
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = shl nuw nsw i8 %25, 3
  %27 = or i8 %23, %26
  %28 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 2
  %29 = load i8, ptr %28, align 2, !range !8
  %30 = shl nuw nsw i8 %29, 4
  %31 = or i8 %27, %30
  %32 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 17
  %33 = load i8, ptr %32, align 2, !range !8
  %34 = shl nuw nsw i8 %33, 5
  %35 = or i8 %31, %34
  %36 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 4
  store i8 %35, ptr %36, align 1
  %37 = load i16, ptr %15, align 2
  %38 = trunc i16 %37 to i8
  %39 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 5
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 8
  %41 = load i16, ptr %40, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 6
  store i16 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 7
  %45 = load i16, ptr %44, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %47 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 7
  store i16 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 5
  %49 = load i16, ptr %48, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %51 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 8
  store i16 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 4
  %53 = load i16, ptr %52, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 9
  store i16 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 33
  %57 = load i16, ptr %56, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %59 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 10
  store i16 %58, ptr %59, align 1
  %60 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 15
  %61 = load i16, ptr %60, align 2
  %62 = lshr i16 %61, 8
  %63 = trunc i16 %62 to i8
  %64 = and i8 %63, 3
  %65 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 11
  store i8 %64, ptr %65, align 1
  %66 = load i16, ptr %60, align 2
  %67 = trunc i16 %66 to i8
  %68 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 12
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 16
  %70 = load i16, ptr %69, align 2
  %71 = tail call i16 @llvm.bswap.i16(i16 %70)
  %72 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 13
  store i16 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 25
  %74 = load i8, ptr %73, align 2
  %75 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 15
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 27
  %77 = load i16, ptr %76, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %79 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 16
  store i16 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 26
  %81 = load i16, ptr %80, align 2
  %82 = lshr i16 %81, 8
  %83 = trunc i16 %82 to i8
  %84 = and i8 %83, 15
  %85 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 17
  store i8 %84, ptr %85, align 1
  %86 = load i16, ptr %80, align 2
  %87 = trunc i16 %86 to i8
  %88 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 18
  store i8 %87, ptr %88, align 1
  %89 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 18
  %90 = load i8, ptr %89, align 1
  %91 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 20
  store i8 %90, ptr %91, align 1
  %92 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 28
  %93 = load i16, ptr %92, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %95 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 21
  store i16 %94, ptr %95, align 1
  %96 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 29
  %97 = load i16, ptr %96, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97)
  %99 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 22
  store i16 %98, ptr %99, align 1
  %100 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 19
  %101 = load i16, ptr %100, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %101)
  %103 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 23
  store i16 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 30
  %105 = load i16, ptr %104, align 2
  %106 = tail call i16 @llvm.bswap.i16(i16 %105)
  %107 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 24
  store i16 %106, ptr %107, align 1
  %108 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 23
  %109 = load i8, ptr %108, align 2
  %110 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 25
  store i8 %109, ptr %110, align 1
  %111 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 24
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 26
  store i8 %112, ptr %113, align 1
  %114 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 22
  %115 = load i16, ptr %114, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %117 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 27
  store i16 %116, ptr %117, align 1
  %118 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 28
  store i8 6, ptr %118, align 1
  %119 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 14
  %120 = load i8, ptr %119, align 2
  %121 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 29
  store i8 %120, ptr %121, align 1
  %122 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 13
  %123 = load i8, ptr %122, align 1
  %124 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 30
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 31
  store i8 51, ptr %125, align 1
  %126 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 0
  %127 = load i16, ptr %126, align 2
  %128 = trunc i16 %127 to i8
  %129 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 0
  store i8 %128, ptr %129, align 1
  %130 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 1
  %131 = load i16, ptr %130, align 2
  %132 = trunc i16 %131 to i8
  %133 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 1
  store i8 %132, ptr %133, align 1
  %134 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 2
  %135 = load i16, ptr %134, align 2
  %136 = trunc i16 %135 to i8
  %137 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 2
  store i8 %136, ptr %137, align 1
  %138 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 3
  %139 = load i16, ptr %138, align 2
  %140 = trunc i16 %139 to i8
  %141 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 3
  store i8 %140, ptr %141, align 1
  %142 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 4
  %143 = load i16, ptr %142, align 2
  %144 = trunc i16 %143 to i8
  %145 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 4
  store i8 %144, ptr %145, align 1
  %146 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 5
  %147 = load i16, ptr %146, align 2
  %148 = trunc i16 %147 to i8
  %149 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 5
  store i8 %148, ptr %149, align 1
  %150 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 6
  %151 = load i16, ptr %150, align 2
  %152 = trunc i16 %151 to i8
  %153 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 6
  store i8 %152, ptr %153, align 1
  %154 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 7
  %155 = load i16, ptr %154, align 2
  %156 = trunc i16 %155 to i8
  %157 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 7
  store i8 %156, ptr %157, align 1
  %158 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 8
  %159 = load i16, ptr %158, align 2
  %160 = trunc i16 %159 to i8
  %161 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 8
  store i8 %160, ptr %161, align 1
  %162 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 9
  %163 = load i16, ptr %162, align 2
  %164 = trunc i16 %163 to i8
  %165 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 9
  store i8 %164, ptr %165, align 1
  %166 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 10
  %167 = load i16, ptr %166, align 2
  %168 = trunc i16 %167 to i8
  %169 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 10
  store i8 %168, ptr %169, align 1
  %170 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 11
  %171 = load i16, ptr %170, align 2
  %172 = trunc i16 %171 to i8
  %173 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 11
  store i8 %172, ptr %173, align 1
  %174 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 12
  %175 = load i16, ptr %174, align 2
  %176 = trunc i16 %175 to i8
  %177 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 12
  store i8 %176, ptr %177, align 1
  %178 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 20, i32 13
  %179 = load i16, ptr %178, align 2
  %180 = trunc i16 %179 to i8
  %181 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 32, i32 13
  store i8 %180, ptr %181, align 1
  br label %182

182:                                              ; preds = %182, %2
  %183 = phi i32 [ %199, %182 ], [ 0, %2 ]
  %184 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 21, i32 %183
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i16
  %187 = shl i16 %186, 11
  %188 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 21, i32 %183, i32 1
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i16
  %191 = shl nuw nsw i16 %190, 6
  %192 = or i16 %191, %187
  %193 = getelementptr %struct.drm_dsc_config, ptr %1, i32 0, i32 21, i32 %183, i32 2
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i16
  %196 = or i16 %192, %195
  %197 = tail call i16 @llvm.bswap.i16(i16 %196)
  %198 = getelementptr %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 33, i32 %183
  store i16 %197, ptr %198, align 1
  %199 = add nuw nsw i32 %183, 1
  %200 = icmp eq i32 %199, 15
  br i1 %200, label %201, label %182

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 37
  %203 = load i8, ptr %202, align 2, !range !8
  %204 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 38
  %205 = load i8, ptr %204, align 1, !range !8
  %206 = shl nuw nsw i8 %205, 1
  %207 = or i8 %206, %203
  %208 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 34
  store i8 %207, ptr %208, align 1
  %209 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 39
  %210 = load i8, ptr %209, align 2
  %211 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 35
  store i8 %210, ptr %211, align 1
  %212 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 40
  %213 = load i16, ptr %212, align 2
  %214 = tail call i16 @llvm.bswap.i16(i16 %213)
  %215 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 36
  store i16 %214, ptr %215, align 1
  %216 = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 41
  %217 = load i16, ptr %216, align 2
  %218 = tail call i16 @llvm.bswap.i16(i16 %217)
  %219 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %0, i32 0, i32 37
  store i16 %218, ptr %219, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dsc_compute_rc_parameters(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 38
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 37
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = lshr i16 %11, 1
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 11
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = mul nuw nsw i32 %13, %16
  %18 = add nuw nsw i32 %17, 127
  %19 = lshr i32 %18, 7
  br label %30

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 11
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = mul nuw i32 %26, %23
  %28 = add nuw i32 %27, 127
  %29 = sdiv i32 %28, 128
  br label %30

30:                                               ; preds = %20, %9
  %31 = phi i32 [ %29, %20 ], [ %19, %9 ]
  %32 = phi i16 [ %25, %20 ], [ %15, %9 ]
  %33 = phi i32 [ %23, %20 ], [ %13, %9 ]
  %34 = trunc i32 %31 to i16
  %35 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 33
  store i16 %34, ptr %35, align 2
  %36 = add nuw nsw i32 %33, 2
  %37 = udiv i32 %36, 3
  %38 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 2
  %39 = load i8, ptr %38, align 2, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 32
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 2
  %49 = add nuw nsw i32 %44, 4
  %50 = add nuw nsw i32 %49, %48
  %51 = mul nuw nsw i32 %50, 3
  %52 = add nsw i32 %51, -6
  br label %76

53:                                               ; preds = %30
  %54 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 37
  %55 = load i8, ptr %54, align 2, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 32
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  br i1 %56, label %68, label %60

60:                                               ; preds = %53
  %61 = shl nuw nsw i32 %59, 2
  %62 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 4
  %66 = or i32 %61, 2
  %67 = add nuw nsw i32 %66, %65
  br label %76

68:                                               ; preds = %53
  %69 = mul nuw nsw i32 %59, 3
  %70 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = mul nuw nsw i32 %72, 12
  %74 = add nuw nsw i32 %69, 2
  %75 = add nuw nsw i32 %74, %73
  br label %76

76:                                               ; preds = %68, %60, %41
  %77 = phi i8 [ %43, %41 ], [ %58, %60 ], [ %58, %68 ]
  %78 = phi i32 [ %52, %41 ], [ %67, %60 ], [ %75, %68 ]
  %79 = shl nsw i32 %31, 3
  %80 = and i32 %79, 524280
  %81 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 5
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = mul i32 %80, %83
  %85 = zext i8 %77 to i32
  br label %86

86:                                               ; preds = %91, %76
  %87 = phi i32 [ %78, %76 ], [ %92, %91 ]
  %88 = sub i32 %84, %87
  %89 = urem i32 %88, %85
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = add nsw i32 %87, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %86

94:                                               ; preds = %91, %86
  %95 = phi i32 [ %87, %86 ], [ 0, %91 ]
  %96 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 25
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %98, -8
  %100 = icmp ult i32 %37, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = trunc i32 %37 to i8
  %103 = add i8 %102, 8
  store i8 %103, ptr %96, align 2
  br label %104

104:                                              ; preds = %101, %94
  %105 = phi i8 [ %103, %101 ], [ %97, %94 ]
  %106 = icmp ugt i8 %105, 8
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = zext i8 %105 to i32
  %109 = add nsw i32 %108, -8
  %110 = udiv i32 %37, %109
  %111 = trunc i32 %110 to i16
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i16 [ %111, %107 ], [ 4095, %104 ]
  %114 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 26
  store i16 %113, ptr %114, align 2
  %115 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 22
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 15
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = zext i16 %32 to i32
  %122 = mul nuw i32 %121, %120
  %123 = add nuw i32 %122, 8
  %124 = sdiv i32 %123, -16
  %125 = add i32 %95, %117
  %126 = add i32 %125, %124
  %127 = trunc i32 %126 to i16
  %128 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 30
  store i16 %127, ptr %128, align 2
  %129 = and i32 %126, 65535
  %130 = icmp ult i32 %129, %117
  br i1 %130, label %132, label %131

131:                                              ; preds = %112
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %195

132:                                              ; preds = %112
  %133 = shl nuw nsw i32 %117, 3
  %134 = sub nsw i32 %117, %129
  %135 = sdiv i32 %133, %134
  %136 = icmp ugt i16 %82, 1
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 18
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 11
  %142 = add nsw i32 %83, -1
  %143 = add nsw i32 %83, -2
  %144 = add nsw i32 %143, %141
  %145 = sdiv i32 %144, %142
  %146 = trunc i32 %145 to i16
  br label %147

147:                                              ; preds = %137, %132
  %148 = phi i16 [ %146, %137 ], [ 0, %132 ]
  %149 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 28
  store i16 %148, ptr %149, align 2
  %150 = mul nuw i32 %37, %83
  %151 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 19
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = sub nsw i32 %117, %153
  %155 = add i32 %154, %95
  %156 = shl i32 %155, 11
  %157 = add i32 %150, -1
  %158 = add i32 %157, %156
  %159 = udiv i32 %158, %150
  %160 = trunc i32 %159 to i16
  %161 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 29
  store i16 %160, ptr %161, align 2
  %162 = icmp ugt i32 %135, 9
  br i1 %162, label %163, label %173

163:                                              ; preds = %147
  %164 = shl i32 %126, 11
  %165 = and i32 %164, 134215680
  %166 = zext i16 %148 to i32
  %167 = and i32 %159, 65535
  %168 = add nuw nsw i32 %167, %166
  %169 = add nsw i32 %135, -9
  %170 = mul i32 %168, %169
  %171 = udiv i32 %165, %170
  %172 = trunc i32 %171 to i16
  br label %173

173:                                              ; preds = %163, %147
  %174 = phi i16 [ %172, %163 ], [ 0, %147 ]
  %175 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 27
  store i16 %174, ptr %175, align 2
  %176 = add nuw i32 %122, 15
  %177 = sdiv i32 %176, 16
  %178 = add nsw i32 %154, %177
  %179 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 18
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = mul nuw nsw i32 %37, %181
  %183 = add nsw i32 %178, %182
  %184 = shl i32 %183, 4
  %185 = add nsw i32 %121, -1
  %186 = add i32 %185, %184
  %187 = udiv i32 %186, %121
  %188 = mul i32 %187, %121
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 34
  store i16 %190, ptr %191, align 2
  %192 = trunc i32 %187 to i16
  %193 = sub i16 %192, %119
  %194 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 16
  store i16 %193, ptr %194, align 2
  br label %195

195:                                              ; preds = %173, %131
  %196 = phi i32 [ -34, %131 ], [ 0, %173 ]
  ret i32 %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }

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
