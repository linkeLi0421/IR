; ModuleID = '/llk/IR/lib/zstd/zstd_compress_module.c_pt.bc'
source_filename = "../lib/zstd/zstd_compress_module.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_min_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_min_clevel\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_min_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_max_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_max_clevel\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_max_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_compress_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_compress_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_compress_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_params:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_params\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_cctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_cctx_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_cctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_cctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_compress_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_compress_cctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_compress_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_cstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_cstream_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_cstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_cstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_reset_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_reset_cstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_reset_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_compress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_compress_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_compress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_flush_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_flush_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_flush_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_end_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_end_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_end_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }

@__kstrtab_zstd_min_clevel = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_min_clevel = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_min_clevel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_min_clevel to i32), ptr @__kstrtab_zstd_min_clevel, ptr @__kstrtabns_zstd_min_clevel }, section "___ksymtab+zstd_min_clevel", align 4
@__kstrtab_zstd_max_clevel = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_max_clevel = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_max_clevel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_max_clevel to i32), ptr @__kstrtab_zstd_max_clevel, ptr @__kstrtabns_zstd_max_clevel }, section "___ksymtab+zstd_max_clevel", align 4
@__kstrtab_zstd_compress_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_compress_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_compress_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_compress_bound to i32), ptr @__kstrtab_zstd_compress_bound, ptr @__kstrtabns_zstd_compress_bound }, section "___ksymtab+zstd_compress_bound", align 4
@__kstrtab_zstd_get_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_params = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_params to i32), ptr @__kstrtab_zstd_get_params, ptr @__kstrtabns_zstd_get_params }, section "___ksymtab+zstd_get_params", align 4
@__kstrtab_zstd_cctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_cctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_cctx_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_cctx_workspace_bound to i32), ptr @__kstrtab_zstd_cctx_workspace_bound, ptr @__kstrtabns_zstd_cctx_workspace_bound }, section "___ksymtab+zstd_cctx_workspace_bound", align 4
@__kstrtab_zstd_init_cctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_cctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_cctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_cctx to i32), ptr @__kstrtab_zstd_init_cctx, ptr @__kstrtabns_zstd_init_cctx }, section "___ksymtab+zstd_init_cctx", align 4
@__kstrtab_zstd_compress_cctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_compress_cctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_compress_cctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_compress_cctx to i32), ptr @__kstrtab_zstd_compress_cctx, ptr @__kstrtabns_zstd_compress_cctx }, section "___ksymtab+zstd_compress_cctx", align 4
@__kstrtab_zstd_cstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_cstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_cstream_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_cstream_workspace_bound to i32), ptr @__kstrtab_zstd_cstream_workspace_bound, ptr @__kstrtabns_zstd_cstream_workspace_bound }, section "___ksymtab+zstd_cstream_workspace_bound", align 4
@__kstrtab_zstd_init_cstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_cstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_cstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_cstream to i32), ptr @__kstrtab_zstd_init_cstream, ptr @__kstrtabns_zstd_init_cstream }, section "___ksymtab+zstd_init_cstream", align 4
@__kstrtab_zstd_reset_cstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_reset_cstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_reset_cstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_reset_cstream to i32), ptr @__kstrtab_zstd_reset_cstream, ptr @__kstrtabns_zstd_reset_cstream }, section "___ksymtab+zstd_reset_cstream", align 4
@__kstrtab_zstd_compress_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_compress_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_compress_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_compress_stream to i32), ptr @__kstrtab_zstd_compress_stream, ptr @__kstrtabns_zstd_compress_stream }, section "___ksymtab+zstd_compress_stream", align 4
@__kstrtab_zstd_flush_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_flush_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_flush_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_flush_stream to i32), ptr @__kstrtab_zstd_flush_stream, ptr @__kstrtabns_zstd_flush_stream }, section "___ksymtab+zstd_flush_stream", align 4
@__kstrtab_zstd_end_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_end_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_end_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_end_stream to i32), ptr @__kstrtab_zstd_end_stream, ptr @__kstrtabns_zstd_end_stream }, section "___ksymtab+zstd_end_stream", align 4
@__UNIQUE_ID_file100 = internal constant [42 x i8] c"zstd_compress.file=lib/zstd/zstd_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [35 x i8] c"zstd_compress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description102 = internal constant [42 x i8] c"zstd_compress.description=Zstd Compressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_description102, ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_zstd_cctx_workspace_bound, ptr @__ksymtab_zstd_compress_bound, ptr @__ksymtab_zstd_compress_cctx, ptr @__ksymtab_zstd_compress_stream, ptr @__ksymtab_zstd_cstream_workspace_bound, ptr @__ksymtab_zstd_end_stream, ptr @__ksymtab_zstd_flush_stream, ptr @__ksymtab_zstd_get_params, ptr @__ksymtab_zstd_init_cctx, ptr @__ksymtab_zstd_init_cstream, ptr @__ksymtab_zstd_max_clevel, ptr @__ksymtab_zstd_min_clevel, ptr @__ksymtab_zstd_reset_cstream], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_min_clevel() #0 {
  %1 = tail call i32 @ZSTD_minCLevel() #2
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_minCLevel() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_max_clevel() #0 {
  %1 = tail call i32 @ZSTD_maxCLevel() #2
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_maxCLevel() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_bound(i32 noundef %0) #0 {
  %2 = tail call i32 @ZSTD_compressBound(i32 noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBound(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zstd_get_params(ptr noalias sret(%struct.ZSTD_parameters) align 4 %0, i32 noundef %1, i64 noundef %2) #0 {
  tail call void @ZSTD_getParams(ptr sret(%struct.ZSTD_parameters) align 4 %0, i32 noundef %1, i64 noundef %2, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_getParams(ptr sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_cctx_workspace_bound(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = insertvalue [7 x i32] undef, i32 %2, 0
  %4 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [7 x i32] %3, i32 %5, 1
  %7 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = insertvalue [7 x i32] %6, i32 %8, 2
  %10 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue [7 x i32] %9, i32 %11, 3
  %13 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = insertvalue [7 x i32] %12, i32 %14, 4
  %16 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = insertvalue [7 x i32] %15, i32 %17, 5
  %19 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [7 x i32] %18, i32 %20, 6
  %22 = tail call i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32] %21) #2
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zstd_init_cctx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @ZSTD_initStaticCCtx(ptr noundef nonnull %0, i32 noundef %1) #2
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticCCtx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_cctx(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = zext i32 %4 to i64
  %8 = tail call fastcc i32 @zstd_cctx_init(ptr noundef %0, ptr noundef %5, i64 noundef %7)
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @ZSTD_compress2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %8, %6 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @zstd_cctx_init(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @ZSTD_CCtx_reset(ptr noundef %0, i32 noundef 3) #2
  %5 = icmp ult i32 %4, -119
  br i1 %5, label %6, label %61

6:                                                ; preds = %3
  %7 = tail call i32 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef %0, i64 noundef %2) #2
  %8 = icmp ult i32 %7, -119
  br i1 %8, label %9, label %61

9:                                                ; preds = %6
  %10 = load i32, ptr %1, align 4
  %11 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 101, i32 noundef %10) #2
  %12 = icmp ult i32 %11, -119
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 102, i32 noundef %15) #2
  %17 = icmp ult i32 %16, -119
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 103, i32 noundef %20) #2
  %22 = icmp ult i32 %21, -119
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 104, i32 noundef %25) #2
  %27 = icmp ult i32 %26, -119
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 105, i32 noundef %30) #2
  %32 = icmp ult i32 %31, -119
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 106, i32 noundef %35) #2
  %37 = icmp ult i32 %36, -119
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 107, i32 noundef %40) #2
  %42 = icmp ult i32 %41, -119
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ZSTD_parameters, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 200, i32 noundef %45) #2
  %47 = icmp ult i32 %46, -119
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ZSTD_parameters, ptr %1, i32 0, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 201, i32 noundef %50) #2
  %52 = icmp ult i32 %51, -119
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ZSTD_parameters, ptr %1, i32 0, i32 1, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef 202, i32 noundef %57) #2
  %59 = icmp ult i32 %58, -119
  %60 = select i1 %59, i32 0, i32 %58
  br label %61

61:                                               ; preds = %53, %48, %43, %38, %33, %28, %23, %18, %13, %9, %6, %3
  %62 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %11, %9 ], [ %16, %13 ], [ %21, %18 ], [ %26, %23 ], [ %31, %28 ], [ %36, %33 ], [ %41, %38 ], [ %46, %43 ], [ %51, %48 ], [ %60, %53 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compress2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_cstream_workspace_bound(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = insertvalue [7 x i32] undef, i32 %2, 0
  %4 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [7 x i32] %3, i32 %5, 1
  %7 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = insertvalue [7 x i32] %6, i32 %8, 2
  %10 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue [7 x i32] %9, i32 %11, 3
  %13 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = insertvalue [7 x i32] %12, i32 %14, 4
  %16 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = insertvalue [7 x i32] %15, i32 %17, 5
  %19 = getelementptr inbounds [7 x i32], ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [7 x i32] %18, i32 %20, 6
  %22 = tail call i32 @ZSTD_estimateCStreamSize_usingCParams([7 x i32] %21) #2
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateCStreamSize_usingCParams([7 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zstd_init_cstream(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @ZSTD_initStaticCStream(ptr noundef nonnull %2, i32 noundef %3) #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = icmp eq i64 %1, 0
  %11 = select i1 %10, i64 -1, i64 %1
  %12 = tail call fastcc i32 @zstd_cctx_init(ptr noundef nonnull %7, ptr noundef %0, i64 noundef %11)
  %13 = icmp ult i32 %12, -119
  %14 = select i1 %13, ptr %7, ptr null
  br label %15

15:                                               ; preds = %9, %6, %4
  %16 = phi ptr [ null, %4 ], [ null, %6 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticCStream(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_reset_cstream(ptr noundef %0, i64 noundef %1) #0 {
  %3 = tail call i32 @ZSTD_resetCStream(ptr noundef %0, i64 noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_resetCStream(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @ZSTD_compressStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_flush_stream(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @ZSTD_flushStream(ptr noundef %0, ptr noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_flushStream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_end_stream(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @ZSTD_endStream(ptr noundef %0, ptr noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_endStream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_CCtx_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_CCtx_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
