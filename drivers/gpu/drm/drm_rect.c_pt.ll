; ModuleID = '/llk/IR/drivers/gpu/drm/drm_rect.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_rect.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_intersect:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_intersect\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_intersect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_clip_scaled:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_clip_scaled\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_clip_scaled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_calc_hscale:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_calc_hscale\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_calc_hscale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_calc_vscale:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_calc_vscale\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_calc_vscale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_debug_print:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_debug_print\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_debug_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_rotate:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_rotate\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_rotate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_rect_rotate_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_rect_rotate_inv\22\09\09\09\09\09"
module asm "__kstrtabns_drm_rect_rotate_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@__kstrtab_drm_rect_intersect = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_intersect = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_intersect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_intersect to i32), ptr @__kstrtab_drm_rect_intersect, ptr @__kstrtabns_drm_rect_intersect }, section "___ksymtab+drm_rect_intersect", align 4
@__kstrtab_drm_rect_clip_scaled = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_clip_scaled = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_clip_scaled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_clip_scaled to i32), ptr @__kstrtab_drm_rect_clip_scaled, ptr @__kstrtabns_drm_rect_clip_scaled }, section "___ksymtab+drm_rect_clip_scaled", align 4
@__kstrtab_drm_rect_calc_hscale = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_calc_hscale = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_calc_hscale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_calc_hscale to i32), ptr @__kstrtab_drm_rect_calc_hscale, ptr @__kstrtabns_drm_rect_calc_hscale }, section "___ksymtab+drm_rect_calc_hscale", align 4
@__kstrtab_drm_rect_calc_vscale = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_calc_vscale = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_calc_vscale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_calc_vscale to i32), ptr @__kstrtab_drm_rect_calc_vscale, ptr @__kstrtabns_drm_rect_calc_vscale }, section "___ksymtab+drm_rect_calc_vscale", align 4
@.str = private unnamed_addr constant [35 x i8] c"%s%d.%06ux%d.%06u%+d.%06u%+d.%06u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%dx%d%+d%+d\0A\00", align 1
@__kstrtab_drm_rect_debug_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_debug_print = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_debug_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_debug_print to i32), ptr @__kstrtab_drm_rect_debug_print, ptr @__kstrtabns_drm_rect_debug_print }, section "___ksymtab+drm_rect_debug_print", align 4
@__kstrtab_drm_rect_rotate = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_rotate = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_rotate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_rotate to i32), ptr @__kstrtab_drm_rect_rotate, ptr @__kstrtabns_drm_rect_rotate }, section "___ksymtab+drm_rect_rotate", align 4
@__kstrtab_drm_rect_rotate_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_rect_rotate_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_rect_rotate_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_rect_rotate_inv to i32), ptr @__kstrtab_drm_rect_rotate_inv, ptr @__kstrtabns_drm_rect_rotate_inv }, section "___ksymtab+drm_rect_rotate_inv", align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_rect.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_drm_rect_calc_hscale, ptr @__ksymtab_drm_rect_calc_vscale, ptr @__ksymtab_drm_rect_clip_scaled, ptr @__ksymtab_drm_rect_debug_print, ptr @__ksymtab_drm_rect_intersect, ptr @__ksymtab_drm_rect_rotate, ptr @__ksymtab_drm_rect_rotate_inv], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_rect_intersect(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4)
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 %9)
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %12, i32 %14)
  store i32 %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %17, i32 %19)
  store i32 %20, ptr %16, align 4
  %21 = sub i32 %15, %5
  %22 = icmp sgt i32 %21, 0
  %23 = sub i32 %20, %10
  %24 = icmp sgt i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  ret i1 %25
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_rect_clip_scaled(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr %2, align 4
  %5 = load i32, ptr %1, align 4
  %6 = sub i32 %4, %5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %5
  %14 = icmp eq i32 %12, %5
  br i1 %14, label %46, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %0, align 4
  %17 = sub i32 %10, %16
  %18 = tail call i32 @llvm.smin.i32(i32 %6, i32 %13) #6
  %19 = sub i32 %13, %18
  %20 = zext i32 %17 to i64
  %21 = zext i32 %19 to i64
  %22 = mul nuw i64 %20, %21
  %23 = shl i32 %13, 16
  %24 = icmp sgt i32 %23, %17
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = sext i32 %13 to i64
  %27 = add nsw i64 %26, -1
  %28 = add i64 %27, %22
  %29 = icmp ult i64 %28, 4294967296
  br i1 %29, label %30, label %33, !prof !8

30:                                               ; preds = %25
  %31 = trunc i64 %28 to i32
  %32 = udiv i32 %31, %13
  br label %46

33:                                               ; preds = %25
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %28) #7, !srcloc !9
  %35 = extractvalue { i64, i64 } %34, 1
  %36 = trunc i64 %35 to i32
  br label %46

37:                                               ; preds = %15
  %38 = icmp ult i64 %22, 4294967296
  br i1 %38, label %39, label %42, !prof !8

39:                                               ; preds = %37
  %40 = trunc i64 %22 to i32
  %41 = udiv i32 %40, %13
  br label %46

42:                                               ; preds = %37
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %22) #7, !srcloc !9
  %44 = extractvalue { i64, i64 } %43, 1
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %42, %39, %33, %30, %8
  %47 = phi i32 [ %6, %8 ], [ %18, %30 ], [ %18, %33 ], [ %18, %39 ], [ %18, %42 ]
  %48 = phi i32 [ 0, %8 ], [ %32, %30 ], [ %36, %33 ], [ %41, %39 ], [ %45, %42 ]
  %49 = sub i32 %10, %48
  store i32 %49, ptr %0, align 4
  %50 = load i32, ptr %1, align 4
  %51 = add i32 %50, %47
  store i32 %51, ptr %1, align 4
  br label %52

52:                                               ; preds = %46, %3
  %53 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %54, %56
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 1
  %63 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %64, %56
  %66 = icmp eq i32 %64, %56
  br i1 %66, label %98, label %67

67:                                               ; preds = %59
  %68 = load i32, ptr %62, align 4
  %69 = sub i32 %61, %68
  %70 = tail call i32 @llvm.smin.i32(i32 %57, i32 %65) #6
  %71 = sub i32 %65, %70
  %72 = zext i32 %69 to i64
  %73 = zext i32 %71 to i64
  %74 = mul nuw i64 %72, %73
  %75 = shl i32 %65, 16
  %76 = icmp sgt i32 %75, %69
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = sext i32 %65 to i64
  %79 = add nsw i64 %78, -1
  %80 = add i64 %79, %74
  %81 = icmp ult i64 %80, 4294967296
  br i1 %81, label %82, label %85, !prof !8

82:                                               ; preds = %77
  %83 = trunc i64 %80 to i32
  %84 = udiv i32 %83, %65
  br label %98

85:                                               ; preds = %77
  %86 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %80) #7, !srcloc !9
  %87 = extractvalue { i64, i64 } %86, 1
  %88 = trunc i64 %87 to i32
  br label %98

89:                                               ; preds = %67
  %90 = icmp ult i64 %74, 4294967296
  br i1 %90, label %91, label %94, !prof !8

91:                                               ; preds = %89
  %92 = trunc i64 %74 to i32
  %93 = udiv i32 %92, %65
  br label %98

94:                                               ; preds = %89
  %95 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %74) #7, !srcloc !9
  %96 = extractvalue { i64, i64 } %95, 1
  %97 = trunc i64 %96 to i32
  br label %98

98:                                               ; preds = %94, %91, %85, %82, %59
  %99 = phi i32 [ %57, %59 ], [ %70, %82 ], [ %70, %85 ], [ %70, %91 ], [ %70, %94 ]
  %100 = phi i32 [ 0, %59 ], [ %84, %82 ], [ %88, %85 ], [ %93, %91 ], [ %97, %94 ]
  %101 = sub i32 %61, %100
  store i32 %101, ptr %62, align 4
  %102 = load i32, ptr %55, align 4
  %103 = add i32 %102, %99
  store i32 %103, ptr %55, align 4
  br label %104

104:                                              ; preds = %98, %52
  %105 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = sub i32 %106, %108
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %154

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2
  %113 = load i32, ptr %0, align 4
  %114 = load i32, ptr %1, align 4
  %115 = sub i32 %106, %114
  %116 = icmp eq i32 %106, %114
  br i1 %116, label %148, label %117

117:                                              ; preds = %111
  %118 = load i32, ptr %112, align 4
  %119 = sub i32 %118, %113
  %120 = tail call i32 @llvm.smin.i32(i32 %109, i32 %115) #6
  %121 = sub i32 %115, %120
  %122 = zext i32 %119 to i64
  %123 = zext i32 %121 to i64
  %124 = mul nuw i64 %122, %123
  %125 = shl i32 %115, 16
  %126 = icmp sgt i32 %125, %119
  br i1 %126, label %127, label %139

127:                                              ; preds = %117
  %128 = sext i32 %115 to i64
  %129 = add nsw i64 %128, -1
  %130 = add i64 %129, %124
  %131 = icmp ult i64 %130, 4294967296
  br i1 %131, label %132, label %135, !prof !8

132:                                              ; preds = %127
  %133 = trunc i64 %130 to i32
  %134 = udiv i32 %133, %115
  br label %148

135:                                              ; preds = %127
  %136 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %115, i64 %130) #7, !srcloc !9
  %137 = extractvalue { i64, i64 } %136, 1
  %138 = trunc i64 %137 to i32
  br label %148

139:                                              ; preds = %117
  %140 = icmp ult i64 %124, 4294967296
  br i1 %140, label %141, label %144, !prof !8

141:                                              ; preds = %139
  %142 = trunc i64 %124 to i32
  %143 = udiv i32 %142, %115
  br label %148

144:                                              ; preds = %139
  %145 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %115, i64 %124) #7, !srcloc !9
  %146 = extractvalue { i64, i64 } %145, 1
  %147 = trunc i64 %146 to i32
  br label %148

148:                                              ; preds = %144, %141, %135, %132, %111
  %149 = phi i32 [ %109, %111 ], [ %120, %132 ], [ %120, %135 ], [ %120, %141 ], [ %120, %144 ]
  %150 = phi i32 [ 0, %111 ], [ %134, %132 ], [ %138, %135 ], [ %143, %141 ], [ %147, %144 ]
  %151 = add i32 %150, %113
  store i32 %151, ptr %112, align 4
  %152 = load i32, ptr %105, align 4
  %153 = sub i32 %152, %149
  store i32 %153, ptr %105, align 4
  br label %154

154:                                              ; preds = %148, %104
  %155 = phi i32 [ %153, %148 ], [ %106, %104 ]
  %156 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = sub i32 %157, %159
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %207

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3
  %164 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = load i32, ptr %55, align 4
  %167 = sub i32 %157, %166
  %168 = icmp eq i32 %157, %166
  br i1 %168, label %200, label %169

169:                                              ; preds = %162
  %170 = load i32, ptr %163, align 4
  %171 = sub i32 %170, %165
  %172 = tail call i32 @llvm.smin.i32(i32 %160, i32 %167) #6
  %173 = sub i32 %167, %172
  %174 = zext i32 %171 to i64
  %175 = zext i32 %173 to i64
  %176 = mul nuw i64 %174, %175
  %177 = shl i32 %167, 16
  %178 = icmp sgt i32 %177, %171
  br i1 %178, label %179, label %191

179:                                              ; preds = %169
  %180 = sext i32 %167 to i64
  %181 = add nsw i64 %180, -1
  %182 = add i64 %181, %176
  %183 = icmp ult i64 %182, 4294967296
  br i1 %183, label %184, label %187, !prof !8

184:                                              ; preds = %179
  %185 = trunc i64 %182 to i32
  %186 = udiv i32 %185, %167
  br label %200

187:                                              ; preds = %179
  %188 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %167, i64 %182) #7, !srcloc !9
  %189 = extractvalue { i64, i64 } %188, 1
  %190 = trunc i64 %189 to i32
  br label %200

191:                                              ; preds = %169
  %192 = icmp ult i64 %176, 4294967296
  br i1 %192, label %193, label %196, !prof !8

193:                                              ; preds = %191
  %194 = trunc i64 %176 to i32
  %195 = udiv i32 %194, %167
  br label %200

196:                                              ; preds = %191
  %197 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %167, i64 %176) #7, !srcloc !9
  %198 = extractvalue { i64, i64 } %197, 1
  %199 = trunc i64 %198 to i32
  br label %200

200:                                              ; preds = %196, %193, %187, %184, %162
  %201 = phi i32 [ %160, %162 ], [ %172, %184 ], [ %172, %187 ], [ %172, %193 ], [ %172, %196 ]
  %202 = phi i32 [ 0, %162 ], [ %186, %184 ], [ %190, %187 ], [ %195, %193 ], [ %199, %196 ]
  %203 = add i32 %202, %165
  store i32 %203, ptr %163, align 4
  %204 = load i32, ptr %156, align 4
  %205 = sub i32 %204, %201
  store i32 %205, ptr %156, align 4
  %206 = load i32, ptr %105, align 4
  br label %207

207:                                              ; preds = %200, %154
  %208 = phi i32 [ %205, %200 ], [ %157, %154 ]
  %209 = phi i32 [ %206, %200 ], [ %155, %154 ]
  %210 = load i32, ptr %1, align 4
  %211 = sub i32 %209, %210
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i32, ptr %55, align 4
  %215 = sub i32 %208, %214
  %216 = icmp sgt i32 %215, 0
  br label %217

217:                                              ; preds = %213, %207
  %218 = phi i1 [ false, %207 ], [ %216, %213 ]
  ret i1 %218
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_rect_calc_hscale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = sub i32 %6, %7
  %9 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %1, align 4
  %12 = sub i32 %10, %11
  %13 = or i32 %12, %8
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #6
  br label %27

16:                                               ; preds = %4
  %17 = icmp eq i32 %10, %11
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = shl i32 %12, 16
  %20 = icmp slt i32 %19, %8
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = add nsw i32 %8, -1
  %23 = add i32 %22, %12
  %24 = sdiv i32 %23, %12
  br label %27

25:                                               ; preds = %18
  %26 = sdiv i32 %8, %12
  br label %27

27:                                               ; preds = %25, %21, %16, %15
  %28 = phi i32 [ -22, %15 ], [ %24, %21 ], [ %26, %25 ], [ 0, %16 ]
  %29 = icmp slt i32 %28, 0
  %30 = icmp eq i32 %10, %11
  %31 = or i1 %30, %29
  %32 = icmp slt i32 %28, %2
  %33 = icmp sgt i32 %28, %3
  %34 = or i1 %32, %33
  %35 = select i1 %34, i32 -34, i32 %28
  %36 = select i1 %31, i32 %28, i32 %35
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_rect_calc_vscale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = or i32 %14, %9
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17, !prof !8

17:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #6
  br label %29

18:                                               ; preds = %4
  %19 = icmp eq i32 %11, %13
  br i1 %19, label %29, label %20

20:                                               ; preds = %18
  %21 = shl i32 %14, 16
  %22 = icmp slt i32 %21, %9
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = add nsw i32 %9, -1
  %25 = add i32 %24, %14
  %26 = sdiv i32 %25, %14
  br label %29

27:                                               ; preds = %20
  %28 = sdiv i32 %9, %14
  br label %29

29:                                               ; preds = %27, %23, %18, %17
  %30 = phi i32 [ -22, %17 ], [ %26, %23 ], [ %28, %27 ], [ 0, %18 ]
  %31 = icmp slt i32 %30, 0
  %32 = icmp eq i32 %11, %13
  %33 = or i1 %32, %31
  %34 = icmp slt i32 %30, %2
  %35 = icmp sgt i32 %30, %3
  %36 = or i1 %34, %35
  %37 = select i1 %36, i32 -34, i32 %30
  %38 = select i1 %33, i32 %30, i32 %37
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_rect_debug_print(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = sub i32 %5, %6
  br i1 %2, label %8, label %30

8:                                                ; preds = %3
  %9 = ashr i32 %7, 16
  %10 = and i32 %7, 65535
  %11 = mul nuw nsw i32 %10, 15625
  %12 = lshr i32 %11, 10
  %13 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = ashr i32 %17, 16
  %19 = and i32 %17, 65535
  %20 = mul nuw nsw i32 %19, 15625
  %21 = lshr i32 %20, 10
  %22 = ashr i32 %6, 16
  %23 = and i32 %6, 65535
  %24 = mul nuw nsw i32 %23, 15625
  %25 = lshr i32 %24, 10
  %26 = ashr i32 %16, 16
  %27 = and i32 %16, 65535
  %28 = mul nuw nsw i32 %27, 15625
  %29 = lshr i32 %28, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %9, i32 noundef %12, i32 noundef %18, i32 noundef %21, i32 noundef %22, i32 noundef %25, i32 noundef %26, i32 noundef %29) #6
  br label %36

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %0, i32 noundef %7, i32 noundef %35, i32 noundef %6, i32 noundef %34) #6
  br label %36

36:                                               ; preds = %30, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @drm_rect_rotate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = and i32 %3, 48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %3, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %0, align 4
  %18 = sub i32 %1, %16
  store i32 %18, ptr %0, align 4
  %19 = sub i32 %1, %17
  store i32 %19, ptr %15, align 4
  br label %20

20:                                               ; preds = %14, %7
  %21 = and i32 %3, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = sub i32 %2, %11
  store i32 %24, ptr %8, align 4
  %25 = sub i32 %2, %9
  store i32 %25, ptr %10, align 4
  br label %26

26:                                               ; preds = %23, %20, %4
  %27 = and i32 %3, 15
  switch i32 %27, label %60 [
    i32 8, label %50
    i32 2, label %28
    i32 4, label %38
  ]

28:                                               ; preds = %26
  %29 = load i32, ptr %0, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 12
  %35 = load i32, ptr %34, align 4
  store i32 %31, ptr %0, align 4
  store i32 %35, ptr %32, align 4
  %36 = sub i32 %1, %33
  store i32 %36, ptr %30, align 4
  %37 = sub i32 %1, %29
  store i32 %37, ptr %34, align 4
  br label %60

38:                                               ; preds = %26
  %39 = load i32, ptr %0, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %1, %43
  store i32 %46, ptr %0, align 4
  %47 = sub i32 %1, %39
  store i32 %47, ptr %42, align 4
  %48 = sub i32 %2, %45
  store i32 %48, ptr %40, align 4
  %49 = sub i32 %2, %41
  store i32 %49, ptr %44, align 4
  br label %60

50:                                               ; preds = %26
  %51 = load i32, ptr %0, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds i8, ptr %0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 12
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %2, %57
  store i32 %58, ptr %0, align 4
  %59 = sub i32 %2, %53
  store i32 %59, ptr %54, align 4
  store i32 %51, ptr %52, align 4
  store i32 %55, ptr %56, align 4
  br label %60

60:                                               ; preds = %50, %38, %28, %26
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @drm_rect_rotate_inv(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = and i32 %3, 15
  switch i32 %5, label %38 [
    i32 8, label %28
    i32 2, label %6
    i32 4, label %16
  ]

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %1, %13
  store i32 %14, ptr %0, align 4
  %15 = sub i32 %1, %9
  store i32 %15, ptr %10, align 4
  store i32 %7, ptr %8, align 4
  store i32 %11, ptr %12, align 4
  br label %38

16:                                               ; preds = %4
  %17 = load i32, ptr %0, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %1, %21
  store i32 %24, ptr %0, align 4
  %25 = sub i32 %1, %17
  store i32 %25, ptr %20, align 4
  %26 = sub i32 %2, %23
  store i32 %26, ptr %18, align 4
  %27 = sub i32 %2, %19
  store i32 %27, ptr %22, align 4
  br label %38

28:                                               ; preds = %4
  %29 = load i32, ptr %0, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 12
  %35 = load i32, ptr %34, align 4
  store i32 %31, ptr %0, align 4
  store i32 %35, ptr %32, align 4
  %36 = sub i32 %2, %33
  store i32 %36, ptr %30, align 4
  %37 = sub i32 %2, %29
  store i32 %37, ptr %34, align 4
  br label %38

38:                                               ; preds = %28, %16, %6, %4
  %39 = and i32 %3, 48
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %3, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds i8, ptr %0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %0, align 4
  %52 = sub i32 %1, %50
  store i32 %52, ptr %0, align 4
  %53 = sub i32 %1, %51
  store i32 %53, ptr %49, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = and i32 %3, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = sub i32 %2, %45
  store i32 %58, ptr %42, align 4
  %59 = sub i32 %2, %43
  store i32 %59, ptr %44, align 4
  br label %60

60:                                               ; preds = %57, %54, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148334982, i64 2148335262, i64 2148335596, i64 2148335930}
