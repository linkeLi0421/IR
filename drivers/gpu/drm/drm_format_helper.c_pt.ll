; ModuleID = '/llk/IR/drivers/gpu/drm/drm_format_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_format_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_clip_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_clip_offset\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_clip_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_memcpy_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_memcpy_toio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_memcpy_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_swab:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_swab\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_swab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_rgb332:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_rgb332\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_rgb332:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_rgb565:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_rgb565\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_rgb565:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_rgb565_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_rgb565_toio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_rgb565_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_rgb888:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_rgb888\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_rgb888:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_rgb888_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_rgb888_toio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_rgb888_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_xrgb2101010_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_xrgb2101010_toio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_xrgb2101010_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_xrgb8888_to_gray8:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_xrgb8888_to_gray8\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_xrgb8888_to_gray8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_blit_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_blit_toio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_blit_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon = type { [4 x i8] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }

@__kstrtab_drm_fb_clip_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_clip_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_clip_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_clip_offset to i32), ptr @__kstrtab_drm_fb_clip_offset, ptr @__kstrtabns_drm_fb_clip_offset }, section "___ksymtab+drm_fb_clip_offset", align 4
@__kstrtab_drm_fb_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_memcpy to i32), ptr @__kstrtab_drm_fb_memcpy, ptr @__kstrtabns_drm_fb_memcpy }, section "___ksymtab+drm_fb_memcpy", align 4
@__kstrtab_drm_fb_memcpy_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_memcpy_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_memcpy_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_memcpy_toio to i32), ptr @__kstrtab_drm_fb_memcpy_toio, ptr @__kstrtabns_drm_fb_memcpy_toio }, section "___ksymtab+drm_fb_memcpy_toio", align 4
@drm_fb_swab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/drm_format_helper.c\00", align 1
@__kstrtab_drm_fb_swab = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_swab = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_swab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_swab to i32), ptr @__kstrtab_drm_fb_swab, ptr @__kstrtabns_drm_fb_swab }, section "___ksymtab+drm_fb_swab", align 4
@__kstrtab_drm_fb_xrgb8888_to_rgb332 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_rgb332 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_rgb332 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_rgb332 to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_rgb332, ptr @__kstrtabns_drm_fb_xrgb8888_to_rgb332 }, section "___ksymtab+drm_fb_xrgb8888_to_rgb332", align 4
@__kstrtab_drm_fb_xrgb8888_to_rgb565 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_rgb565 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_rgb565 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_rgb565 to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_rgb565, ptr @__kstrtabns_drm_fb_xrgb8888_to_rgb565 }, section "___ksymtab+drm_fb_xrgb8888_to_rgb565", align 4
@__kstrtab_drm_fb_xrgb8888_to_rgb565_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_rgb565_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_rgb565_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_rgb565_toio to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_rgb565_toio, ptr @__kstrtabns_drm_fb_xrgb8888_to_rgb565_toio }, section "___ksymtab+drm_fb_xrgb8888_to_rgb565_toio", align 4
@__kstrtab_drm_fb_xrgb8888_to_rgb888 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_rgb888 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_rgb888 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_rgb888 to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_rgb888, ptr @__kstrtabns_drm_fb_xrgb8888_to_rgb888 }, section "___ksymtab+drm_fb_xrgb8888_to_rgb888", align 4
@__kstrtab_drm_fb_xrgb8888_to_rgb888_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_rgb888_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_rgb888_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_rgb888_toio to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_rgb888_toio, ptr @__kstrtabns_drm_fb_xrgb8888_to_rgb888_toio }, section "___ksymtab+drm_fb_xrgb8888_to_rgb888_toio", align 4
@__kstrtab_drm_fb_xrgb8888_to_xrgb2101010_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_xrgb2101010_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_xrgb2101010_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_xrgb2101010_toio to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_xrgb2101010_toio, ptr @__kstrtabns_drm_fb_xrgb8888_to_xrgb2101010_toio }, section "___ksymtab+drm_fb_xrgb8888_to_xrgb2101010_toio", align 4
@__kstrtab_drm_fb_xrgb8888_to_gray8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_xrgb8888_to_gray8 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_xrgb8888_to_gray8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_xrgb8888_to_gray8 to i32), ptr @__kstrtab_drm_fb_xrgb8888_to_gray8, ptr @__kstrtabns_drm_fb_xrgb8888_to_gray8 }, section "___ksymtab+drm_fb_xrgb8888_to_gray8", align 4
@__kstrtab_drm_fb_blit_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_blit_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_blit_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_blit_toio to i32), ptr @__kstrtab_drm_fb_blit_toio, ptr @__kstrtabns_drm_fb_blit_toio }, section "___ksymtab+drm_fb_blit_toio", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_drm_fb_blit_toio, ptr @__ksymtab_drm_fb_clip_offset, ptr @__ksymtab_drm_fb_memcpy, ptr @__ksymtab_drm_fb_memcpy_toio, ptr @__ksymtab_drm_fb_swab, ptr @__ksymtab_drm_fb_xrgb8888_to_gray8, ptr @__ksymtab_drm_fb_xrgb8888_to_rgb332, ptr @__ksymtab_drm_fb_xrgb8888_to_rgb565, ptr @__ksymtab_drm_fb_xrgb8888_to_rgb565_toio, ptr @__ksymtab_drm_fb_xrgb8888_to_rgb888, ptr @__ksymtab_drm_fb_xrgb8888_to_rgb888_toio, ptr @__ksymtab_drm_fb_xrgb8888_to_xrgb2101010_toio], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_fb_clip_offset(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, %0
  %10 = load i32, ptr %2, align 4
  %11 = mul i32 %10, %6
  %12 = add i32 %11, %9
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_memcpy(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #1 {
  %6 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %12, %13
  %15 = mul i32 %14, %10
  %16 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp eq i32 %1, 0
  %22 = select i1 %21, i32 %15, i32 %1
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %24 = icmp eq i32 %17, %19
  br i1 %24, label %40, label %25

25:                                               ; preds = %5
  %26 = load i32, ptr %23, align 8
  %27 = mul i32 %26, %19
  %28 = mul i32 %13, %10
  %29 = add i32 %27, %28
  %30 = getelementptr i8, ptr %2, i32 %29
  br label %31

31:                                               ; preds = %31, %25
  %32 = phi i32 [ %38, %31 ], [ 0, %25 ]
  %33 = phi ptr [ %37, %31 ], [ %0, %25 ]
  %34 = phi ptr [ %36, %31 ], [ %30, %25 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %34, i32 %15, i1 false)
  %35 = load i32, ptr %23, align 8
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr i8, ptr %33, i32 %22
  %38 = add nuw i32 %32, 1
  %39 = icmp eq i32 %38, %20
  br i1 %39, label %40, label %31

40:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_memcpy_toio(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #3 {
  %6 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %12, %13
  %15 = mul i32 %14, %10
  %16 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp eq i32 %1, 0
  %22 = select i1 %21, i32 %15, i32 %1
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %24 = icmp eq i32 %17, %19
  br i1 %24, label %40, label %25

25:                                               ; preds = %5
  %26 = load i32, ptr %23, align 8
  %27 = mul i32 %26, %19
  %28 = mul i32 %13, %10
  %29 = add i32 %27, %28
  %30 = getelementptr i8, ptr %2, i32 %29
  br label %31

31:                                               ; preds = %31, %25
  %32 = phi i32 [ %38, %31 ], [ 0, %25 ]
  %33 = phi ptr [ %37, %31 ], [ %0, %25 ]
  %34 = phi ptr [ %36, %31 ], [ %30, %25 ]
  tail call void @mmiocpy(ptr noundef %33, ptr noundef %34, i32 noundef %15) #7
  %35 = load i32, ptr %23, align 8
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr i8, ptr %33, i32 %22
  %38 = add nuw i32 %32, 1
  %39 = icmp eq i32 %38, %20
  br i1 %39, label %40, label %31

40:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_swab(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i1 noundef zeroext %5) #3 {
  %7 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %12, %13
  %15 = zext i8 %10 to i32
  %16 = mul i32 %14, %15
  %17 = load i1, ptr @drm_fb_swab.__already_done, align 1
  %18 = freeze i1 %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  switch i8 %10, label %20 [
    i8 4, label %22
    i8 2, label %22
  ]

20:                                               ; preds = %19
  store i1 true, ptr @drm_fb_swab.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %6
  switch i8 %10, label %86 [
    i8 4, label %22
    i8 2, label %22
  ]

22:                                               ; preds = %21, %21, %19, %19
  %23 = icmp eq i32 %1, 0
  %24 = select i1 %23, i32 %16, i32 %1
  br i1 %5, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #8
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ null, %22 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %30 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %27
  %36 = load i32, ptr %4, align 4
  %37 = mul i32 %36, %15
  %38 = load i32, ptr %29, align 8
  %39 = mul i32 %31, %38
  %40 = add i32 %37, %39
  %41 = getelementptr i8, ptr %2, i32 %40
  %42 = icmp eq ptr %28, null
  %43 = icmp eq i8 %10, 4
  br label %44

44:                                               ; preds = %78, %35
  %45 = phi ptr [ %0, %35 ], [ %81, %78 ]
  %46 = phi i32 [ %31, %35 ], [ %82, %78 ]
  %47 = phi ptr [ %41, %35 ], [ %80, %78 ]
  br i1 %42, label %49, label %48

48:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %28, ptr align 1 %47, i32 %16, i1 false)
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi ptr [ %28, %48 ], [ %47, %44 ]
  %51 = load i32, ptr %4, align 4
  %52 = load i32, ptr %11, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %70, %49
  %55 = phi i32 [ %75, %70 ], [ %51, %49 ]
  %56 = phi ptr [ %74, %70 ], [ %45, %49 ]
  %57 = phi ptr [ %73, %70 ], [ %45, %49 ]
  %58 = phi ptr [ %72, %70 ], [ %50, %49 ]
  %59 = phi ptr [ %71, %70 ], [ %50, %49 ]
  br i1 %43, label %60, label %65

60:                                               ; preds = %54
  %61 = getelementptr i32, ptr %58, i32 1
  %62 = load i32, ptr %58, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = getelementptr i32, ptr %56, i32 1
  store i32 %63, ptr %56, align 4
  br label %70

65:                                               ; preds = %54
  %66 = getelementptr i16, ptr %59, i32 1
  %67 = load i16, ptr %59, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %69 = getelementptr i16, ptr %57, i32 1
  store i16 %68, ptr %57, align 2
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi ptr [ %59, %60 ], [ %66, %65 ]
  %72 = phi ptr [ %61, %60 ], [ %58, %65 ]
  %73 = phi ptr [ %57, %60 ], [ %69, %65 ]
  %74 = phi ptr [ %64, %60 ], [ %56, %65 ]
  %75 = add nuw i32 %55, 1
  %76 = load i32, ptr %11, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %54, label %78

78:                                               ; preds = %70, %49
  %79 = load i32, ptr %29, align 8
  %80 = getelementptr i8, ptr %47, i32 %79
  %81 = getelementptr i8, ptr %45, i32 %24
  %82 = add nuw i32 %46, 1
  %83 = load i32, ptr %32, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %44, label %85

85:                                               ; preds = %78, %27
  tail call void @kfree(ptr noundef %28) #7
  br label %86

86:                                               ; preds = %85, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_rgb332(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #3 {
  %6 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sub i32 %7, %8
  %10 = shl i32 %9, 2
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, i32 %9, i32 %1
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %59, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %4, align 4
  %24 = shl i32 %23, 2
  %25 = load i32, ptr %16, align 8
  %26 = mul i32 %20, %25
  %27 = add i32 %24, %26
  %28 = getelementptr i8, ptr %2, i32 %27
  %29 = icmp eq i32 %7, %8
  br label %30

30:                                               ; preds = %50, %22
  %31 = phi i32 [ 0, %22 ], [ %54, %50 ]
  %32 = phi ptr [ %0, %22 ], [ %53, %50 ]
  %33 = phi ptr [ %28, %22 ], [ %52, %50 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %13, ptr align 1 %33, i32 %10, i1 false)
  br i1 %29, label %50, label %34

34:                                               ; preds = %34, %30
  %35 = phi i32 [ %48, %34 ], [ 0, %30 ]
  %36 = getelementptr i32, ptr %13, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 224
  %40 = lshr i32 %37, 11
  %41 = and i32 %40, 28
  %42 = or i32 %39, %41
  %43 = lshr i32 %37, 6
  %44 = and i32 %43, 3
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i8
  %47 = getelementptr i8, ptr %32, i32 %35
  store i8 %46, ptr %47, align 1
  %48 = add nuw i32 %35, 1
  %49 = icmp eq i32 %48, %9
  br i1 %49, label %50, label %34

50:                                               ; preds = %34, %30
  %51 = load i32, ptr %16, align 8
  %52 = getelementptr i8, ptr %33, i32 %51
  %53 = getelementptr i8, ptr %32, i32 %12
  %54 = add nuw i32 %31, 1
  %55 = load i32, ptr %18, align 4
  %56 = load i32, ptr %17, align 4
  %57 = sub i32 %55, %56
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %30, label %59

59:                                               ; preds = %50, %15
  tail call void @kfree(ptr noundef nonnull %13) #7
  br label %60

60:                                               ; preds = %59, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_rgb565(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i1 noundef zeroext %5) #3 {
  %7 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sub i32 %8, %9
  %11 = shl i32 %10, 2
  %12 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = icmp eq i32 %1, 0
  %18 = shl i32 %10, 1
  %19 = select i1 %17, i32 %18, i32 %1
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %24 = icmp eq i32 %13, %15
  br i1 %24, label %62, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %4, align 4
  %27 = shl i32 %26, 2
  %28 = load i32, ptr %14, align 4
  %29 = load i32, ptr %23, align 8
  %30 = mul i32 %28, %29
  %31 = add i32 %27, %30
  %32 = getelementptr i8, ptr %2, i32 %31
  %33 = icmp eq i32 %8, %9
  br label %34

34:                                               ; preds = %56, %25
  %35 = phi i32 [ 0, %25 ], [ %60, %56 ]
  %36 = phi ptr [ %0, %25 ], [ %59, %56 ]
  %37 = phi ptr [ %32, %25 ], [ %58, %56 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %20, ptr align 1 %37, i32 %11, i1 false)
  br i1 %33, label %56, label %38

38:                                               ; preds = %38, %34
  %39 = phi i32 [ %54, %38 ], [ 0, %34 ]
  %40 = getelementptr i32, ptr %20, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 63488
  %44 = lshr i32 %41, 5
  %45 = and i32 %44, 2016
  %46 = or i32 %43, %45
  %47 = lshr i32 %41, 3
  %48 = and i32 %47, 31
  %49 = or i32 %46, %48
  %50 = trunc i32 %49 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #7
  %52 = select i1 %5, i16 %51, i16 %50
  %53 = getelementptr i16, ptr %36, i32 %39
  store i16 %52, ptr %53, align 2
  %54 = add nuw i32 %39, 1
  %55 = icmp eq i32 %54, %10
  br i1 %55, label %56, label %38

56:                                               ; preds = %38, %34
  %57 = load i32, ptr %23, align 8
  %58 = getelementptr i8, ptr %37, i32 %57
  %59 = getelementptr i8, ptr %36, i32 %19
  %60 = add nuw i32 %35, 1
  %61 = icmp eq i32 %60, %16
  br i1 %61, label %62, label %34

62:                                               ; preds = %56, %22
  tail call void @kfree(ptr noundef nonnull %20) #7
  br label %63

63:                                               ; preds = %62, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_rgb565_toio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i1 noundef zeroext %5) #3 {
  %7 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sub i32 %8, %9
  %11 = shl i32 %10, 1
  %12 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 %11, i32 %1
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %62, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %23 = icmp eq i32 %13, %15
  br i1 %23, label %61, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4
  %26 = shl i32 %25, 2
  %27 = load i32, ptr %14, align 4
  %28 = load i32, ptr %22, align 8
  %29 = mul i32 %27, %28
  %30 = add i32 %26, %29
  %31 = getelementptr i8, ptr %2, i32 %30
  %32 = icmp eq i32 %8, %9
  br label %33

33:                                               ; preds = %55, %24
  %34 = phi i32 [ 0, %24 ], [ %59, %55 ]
  %35 = phi ptr [ %0, %24 ], [ %58, %55 ]
  %36 = phi ptr [ %31, %24 ], [ %57, %55 ]
  br i1 %32, label %55, label %37

37:                                               ; preds = %37, %33
  %38 = phi i32 [ %53, %37 ], [ 0, %33 ]
  %39 = getelementptr i32, ptr %36, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 63488
  %43 = lshr i32 %40, 5
  %44 = and i32 %43, 2016
  %45 = or i32 %42, %44
  %46 = lshr i32 %40, 3
  %47 = and i32 %46, 31
  %48 = or i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #7
  %51 = select i1 %5, i16 %50, i16 %49
  %52 = getelementptr i16, ptr %19, i32 %38
  store i16 %51, ptr %52, align 2
  %53 = add nuw i32 %38, 1
  %54 = icmp eq i32 %53, %10
  br i1 %54, label %55, label %37

55:                                               ; preds = %37, %33
  tail call void @mmiocpy(ptr noundef %35, ptr noundef nonnull %19, i32 noundef %11) #7
  %56 = load i32, ptr %22, align 8
  %57 = getelementptr i8, ptr %36, i32 %56
  %58 = getelementptr i8, ptr %35, i32 %18
  %59 = add nuw i32 %34, 1
  %60 = icmp eq i32 %59, %16
  br i1 %60, label %61, label %33

61:                                               ; preds = %55, %21
  tail call void @kfree(ptr noundef nonnull %19) #7
  br label %62

62:                                               ; preds = %61, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_rgb888(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #3 {
  %6 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sub i32 %7, %8
  %10 = shl i32 %9, 2
  %11 = icmp eq i32 %1, 0
  %12 = mul i32 %9, 3
  %13 = select i1 %11, i32 %12, i32 %1
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %61, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %18 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %60, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr %4, align 4
  %25 = shl i32 %24, 2
  %26 = load i32, ptr %17, align 8
  %27 = mul i32 %21, %26
  %28 = add i32 %25, %27
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = icmp eq i32 %7, %8
  br label %31

31:                                               ; preds = %51, %23
  %32 = phi i32 [ 0, %23 ], [ %55, %51 ]
  %33 = phi ptr [ %0, %23 ], [ %54, %51 ]
  %34 = phi ptr [ %29, %23 ], [ %53, %51 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %14, ptr align 1 %34, i32 %10, i1 false)
  br i1 %30, label %51, label %35

35:                                               ; preds = %35, %31
  %36 = phi i32 [ %49, %35 ], [ 0, %31 ]
  %37 = phi ptr [ %48, %35 ], [ %33, %31 ]
  %38 = getelementptr i32, ptr %14, i32 %36
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i8
  %41 = getelementptr i8, ptr %37, i32 1
  store i8 %40, ptr %37, align 1
  %42 = lshr i32 %39, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr i8, ptr %37, i32 2
  store i8 %43, ptr %41, align 1
  %45 = load i32, ptr %38, align 4
  %46 = lshr i32 %45, 16
  %47 = trunc i32 %46 to i8
  %48 = getelementptr i8, ptr %37, i32 3
  store i8 %47, ptr %44, align 1
  %49 = add nuw i32 %36, 1
  %50 = icmp eq i32 %49, %9
  br i1 %50, label %51, label %35

51:                                               ; preds = %35, %31
  %52 = load i32, ptr %17, align 8
  %53 = getelementptr i8, ptr %34, i32 %52
  %54 = getelementptr i8, ptr %33, i32 %13
  %55 = add nuw i32 %32, 1
  %56 = load i32, ptr %19, align 4
  %57 = load i32, ptr %18, align 4
  %58 = sub i32 %56, %57
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %31, label %60

60:                                               ; preds = %51, %16
  tail call void @kfree(ptr noundef nonnull %14) #7
  br label %61

61:                                               ; preds = %60, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_rgb888_toio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #3 {
  %6 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sub i32 %7, %8
  %10 = mul i32 %9, 3
  %11 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp eq i32 %1, 0
  %17 = select i1 %16, i32 %10, i32 %1
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %59, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %22 = icmp eq i32 %12, %14
  br i1 %22, label %58, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %4, align 4
  %25 = shl i32 %24, 2
  %26 = load i32, ptr %13, align 4
  %27 = load i32, ptr %21, align 8
  %28 = mul i32 %26, %27
  %29 = add i32 %25, %28
  %30 = getelementptr i8, ptr %2, i32 %29
  %31 = icmp eq i32 %7, %8
  br label %32

32:                                               ; preds = %52, %23
  %33 = phi i32 [ 0, %23 ], [ %56, %52 ]
  %34 = phi ptr [ %0, %23 ], [ %55, %52 ]
  %35 = phi ptr [ %30, %23 ], [ %54, %52 ]
  br i1 %31, label %52, label %36

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %50, %36 ], [ 0, %32 ]
  %38 = phi ptr [ %49, %36 ], [ %18, %32 ]
  %39 = getelementptr i32, ptr %35, i32 %37
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr i8, ptr %38, i32 1
  store i8 %41, ptr %38, align 1
  %43 = lshr i32 %40, 8
  %44 = trunc i32 %43 to i8
  %45 = getelementptr i8, ptr %38, i32 2
  store i8 %44, ptr %42, align 1
  %46 = load i32, ptr %39, align 4
  %47 = lshr i32 %46, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr i8, ptr %38, i32 3
  store i8 %48, ptr %45, align 1
  %50 = add nuw i32 %37, 1
  %51 = icmp eq i32 %50, %9
  br i1 %51, label %52, label %36

52:                                               ; preds = %36, %32
  tail call void @mmiocpy(ptr noundef %34, ptr noundef nonnull %18, i32 noundef %10) #7
  %53 = load i32, ptr %21, align 8
  %54 = getelementptr i8, ptr %35, i32 %53
  %55 = getelementptr i8, ptr %34, i32 %17
  %56 = add nuw i32 %33, 1
  %57 = icmp eq i32 %56, %15
  br i1 %57, label %58, label %32

58:                                               ; preds = %52, %20
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %59

59:                                               ; preds = %58, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_xrgb2101010_toio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #3 {
  %6 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sub i32 %7, %8
  %10 = shl i32 %9, 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp eq i32 %1, 0
  %17 = select i1 %16, i32 %10, i32 %1
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %22 = icmp eq i32 %12, %14
  br i1 %22, label %61, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %4, align 4
  %25 = shl i32 %24, 2
  %26 = load i32, ptr %13, align 4
  %27 = load i32, ptr %21, align 8
  %28 = mul i32 %26, %27
  %29 = add i32 %25, %28
  %30 = getelementptr i8, ptr %2, i32 %29
  %31 = icmp eq i32 %7, %8
  br label %32

32:                                               ; preds = %55, %23
  %33 = phi i32 [ 0, %23 ], [ %59, %55 ]
  %34 = phi ptr [ %0, %23 ], [ %58, %55 ]
  %35 = phi ptr [ %30, %23 ], [ %57, %55 ]
  br i1 %31, label %55, label %36

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %53, %36 ], [ 0, %32 ]
  %38 = phi ptr [ %52, %36 ], [ %18, %32 ]
  %39 = getelementptr i32, ptr %35, i32 %37
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 2
  %42 = and i32 %41, 1020
  %43 = shl i32 %40, 4
  %44 = and i32 %43, 1044480
  %45 = or i32 %42, %44
  %46 = shl i32 %40, 6
  %47 = and i32 %46, 1069547520
  %48 = or i32 %45, %47
  %49 = lshr i32 %48, 8
  %50 = and i32 %49, 3148803
  %51 = or i32 %50, %48
  %52 = getelementptr i32, ptr %38, i32 1
  store i32 %51, ptr %38, align 4
  %53 = add nuw i32 %37, 1
  %54 = icmp eq i32 %53, %9
  br i1 %54, label %55, label %36

55:                                               ; preds = %36, %32
  tail call void @mmiocpy(ptr noundef %34, ptr noundef nonnull %18, i32 noundef %10) #7
  %56 = load i32, ptr %21, align 8
  %57 = getelementptr i8, ptr %35, i32 %56
  %58 = getelementptr i8, ptr %34, i32 %17
  %59 = add nuw i32 %33, 1
  %60 = icmp eq i32 %59, %15
  br i1 %60, label %61, label %32

61:                                               ; preds = %55, %20
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %62

62:                                               ; preds = %61, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_xrgb8888_to_gray8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #3 {
  %6 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sub i32 %7, %8
  %10 = shl i32 %9, 2
  %11 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 875713112
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 493, i32 noundef 9, ptr noundef null) #7
  br label %72

16:                                               ; preds = %5
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 %9, i32 %1
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %23 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %21
  %29 = load i32, ptr %4, align 4
  %30 = shl i32 %29, 2
  %31 = load i32, ptr %22, align 8
  %32 = mul i32 %24, %31
  %33 = add i32 %30, %32
  %34 = getelementptr i8, ptr %2, i32 %33
  br label %35

35:                                               ; preds = %64, %28
  %36 = phi ptr [ %67, %64 ], [ %0, %28 ]
  %37 = phi ptr [ %66, %64 ], [ %34, %28 ]
  %38 = phi i32 [ %68, %64 ], [ %24, %28 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %19, ptr align 1 %37, i32 %10, i1 false)
  %39 = load i32, ptr %4, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %42, %35
  %43 = phi ptr [ %60, %42 ], [ %19, %35 ]
  %44 = phi ptr [ %59, %42 ], [ %36, %35 ]
  %45 = phi i32 [ %61, %42 ], [ %39, %35 ]
  %46 = load i32, ptr %43, align 4
  %47 = lshr i32 %46, 16
  %48 = lshr i32 %46, 8
  %49 = and i32 %47, 255
  %50 = mul nuw nsw i32 %49, 3
  %51 = and i32 %48, 255
  %52 = mul nuw nsw i32 %51, 6
  %53 = and i32 %46, 255
  %54 = add nuw nsw i32 %52, %53
  %55 = add nuw nsw i32 %54, %50
  %56 = trunc i32 %55 to i16
  %57 = udiv i16 %56, 10
  %58 = trunc i16 %57 to i8
  %59 = getelementptr i8, ptr %44, i32 1
  store i8 %58, ptr %44, align 1
  %60 = getelementptr i32, ptr %43, i32 1
  %61 = add nuw i32 %45, 1
  %62 = load i32, ptr %6, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %42, label %64

64:                                               ; preds = %42, %35
  %65 = load i32, ptr %22, align 8
  %66 = getelementptr i8, ptr %37, i32 %65
  %67 = getelementptr i8, ptr %36, i32 %18
  %68 = add nuw i32 %38, 1
  %69 = load i32, ptr %25, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %35, label %71

71:                                               ; preds = %64, %21
  tail call void @kfree(ptr noundef nonnull %19) #7
  br label %72

72:                                               ; preds = %71, %16, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_fb_blit_toio(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #3 {
  %7 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 875713089
  %11 = select i1 %10, i32 875713112, i32 %9
  %12 = icmp eq i32 %2, 875713089
  %13 = select i1 %12, i32 875713112, i32 %2
  %14 = icmp eq i32 %11, 808669761
  %15 = select i1 %14, i32 808669784, i32 %11
  %16 = icmp eq i32 %13, 808669761
  %17 = select i1 %16, i32 808669784, i32 %13
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %52

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %5, align 4
  %26 = sub i32 %24, %25
  %27 = mul i32 %26, %22
  %28 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = icmp eq i32 %1, 0
  %34 = select i1 %33, i32 %27, i32 %1
  %35 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 6
  %36 = icmp eq i32 %29, %31
  br i1 %36, label %64, label %37

37:                                               ; preds = %19
  %38 = load i32, ptr %35, align 8
  %39 = mul i32 %38, %31
  %40 = mul i32 %25, %22
  %41 = add i32 %39, %40
  %42 = getelementptr i8, ptr %3, i32 %41
  br label %43

43:                                               ; preds = %43, %37
  %44 = phi i32 [ %50, %43 ], [ 0, %37 ]
  %45 = phi ptr [ %49, %43 ], [ %0, %37 ]
  %46 = phi ptr [ %48, %43 ], [ %42, %37 ]
  tail call void @mmiocpy(ptr noundef %45, ptr noundef %46, i32 noundef %27) #7
  %47 = load i32, ptr %35, align 8
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = getelementptr i8, ptr %45, i32 %34
  %50 = add nuw i32 %44, 1
  %51 = icmp eq i32 %50, %32
  br i1 %51, label %64, label %43

52:                                               ; preds = %6
  switch i32 %17, label %59 [
    i32 909199186, label %53
    i32 875710290, label %56
  ]

53:                                               ; preds = %52
  %54 = icmp eq i32 %15, 875713112
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  tail call void @drm_fb_xrgb8888_to_rgb565_toio(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false)
  br label %64

56:                                               ; preds = %52
  %57 = icmp eq i32 %15, 875713112
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  tail call void @drm_fb_xrgb8888_to_rgb888_toio(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %64

59:                                               ; preds = %52
  %60 = icmp eq i32 %17, 808669784
  %61 = icmp eq i32 %15, 875713112
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @drm_fb_xrgb8888_to_xrgb2101010_toio(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %64

64:                                               ; preds = %63, %59, %58, %56, %55, %53, %43, %19
  %65 = phi i32 [ 0, %55 ], [ 0, %58 ], [ 0, %63 ], [ -22, %53 ], [ -22, %59 ], [ -22, %56 ], [ 0, %19 ], [ 0, %43 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
