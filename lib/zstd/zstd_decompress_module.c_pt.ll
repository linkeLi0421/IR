; ModuleID = '/llk/IR/lib/zstd/zstd_decompress_module.c_pt.bc'
source_filename = "../lib/zstd/zstd_decompress_module.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_is_error:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_is_error\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_is_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_error_code:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_error_code\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_error_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_error_name:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_error_name\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_error_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_dctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_dctx_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_dctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_dctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_decompress_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_decompress_dctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_decompress_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_dstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_dstream_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_dstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_dstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_reset_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_reset_dstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_reset_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_decompress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_decompress_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_decompress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_find_frame_compressed_size:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_find_frame_compressed_size\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_find_frame_compressed_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_frame_header:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_frame_header\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_frame_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_zstd_is_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_is_error = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_is_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_is_error to i32), ptr @__kstrtab_zstd_is_error, ptr @__kstrtabns_zstd_is_error }, section "___ksymtab+zstd_is_error", align 4
@__kstrtab_zstd_get_error_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_error_code = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_error_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_error_code to i32), ptr @__kstrtab_zstd_get_error_code, ptr @__kstrtabns_zstd_get_error_code }, section "___ksymtab+zstd_get_error_code", align 4
@__kstrtab_zstd_get_error_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_error_name = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_error_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_error_name to i32), ptr @__kstrtab_zstd_get_error_name, ptr @__kstrtabns_zstd_get_error_name }, section "___ksymtab+zstd_get_error_name", align 4
@__kstrtab_zstd_dctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_dctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_dctx_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_dctx_workspace_bound to i32), ptr @__kstrtab_zstd_dctx_workspace_bound, ptr @__kstrtabns_zstd_dctx_workspace_bound }, section "___ksymtab+zstd_dctx_workspace_bound", align 4
@__kstrtab_zstd_init_dctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_dctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_dctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_dctx to i32), ptr @__kstrtab_zstd_init_dctx, ptr @__kstrtabns_zstd_init_dctx }, section "___ksymtab+zstd_init_dctx", align 4
@__kstrtab_zstd_decompress_dctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_decompress_dctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_decompress_dctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_decompress_dctx to i32), ptr @__kstrtab_zstd_decompress_dctx, ptr @__kstrtabns_zstd_decompress_dctx }, section "___ksymtab+zstd_decompress_dctx", align 4
@__kstrtab_zstd_dstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_dstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_dstream_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_dstream_workspace_bound to i32), ptr @__kstrtab_zstd_dstream_workspace_bound, ptr @__kstrtabns_zstd_dstream_workspace_bound }, section "___ksymtab+zstd_dstream_workspace_bound", align 4
@__kstrtab_zstd_init_dstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_dstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_dstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_dstream to i32), ptr @__kstrtab_zstd_init_dstream, ptr @__kstrtabns_zstd_init_dstream }, section "___ksymtab+zstd_init_dstream", align 4
@__kstrtab_zstd_reset_dstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_reset_dstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_reset_dstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_reset_dstream to i32), ptr @__kstrtab_zstd_reset_dstream, ptr @__kstrtabns_zstd_reset_dstream }, section "___ksymtab+zstd_reset_dstream", align 4
@__kstrtab_zstd_decompress_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_decompress_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_decompress_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_decompress_stream to i32), ptr @__kstrtab_zstd_decompress_stream, ptr @__kstrtabns_zstd_decompress_stream }, section "___ksymtab+zstd_decompress_stream", align 4
@__kstrtab_zstd_find_frame_compressed_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_find_frame_compressed_size = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_find_frame_compressed_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_find_frame_compressed_size to i32), ptr @__kstrtab_zstd_find_frame_compressed_size, ptr @__kstrtabns_zstd_find_frame_compressed_size }, section "___ksymtab+zstd_find_frame_compressed_size", align 4
@__kstrtab_zstd_get_frame_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_frame_header = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_frame_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_frame_header to i32), ptr @__kstrtab_zstd_get_frame_header, ptr @__kstrtabns_zstd_get_frame_header }, section "___ksymtab+zstd_get_frame_header", align 4
@__UNIQUE_ID_file100 = internal constant [46 x i8] c"zstd_decompress.file=lib/zstd/zstd_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [37 x i8] c"zstd_decompress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description102 = internal constant [46 x i8] c"zstd_decompress.description=Zstd Decompressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_description102, ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_zstd_dctx_workspace_bound, ptr @__ksymtab_zstd_decompress_dctx, ptr @__ksymtab_zstd_decompress_stream, ptr @__ksymtab_zstd_dstream_workspace_bound, ptr @__ksymtab_zstd_find_frame_compressed_size, ptr @__ksymtab_zstd_get_error_code, ptr @__ksymtab_zstd_get_error_name, ptr @__ksymtab_zstd_get_frame_header, ptr @__ksymtab_zstd_init_dctx, ptr @__ksymtab_zstd_init_dstream, ptr @__ksymtab_zstd_is_error, ptr @__ksymtab_zstd_reset_dstream], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_is_error(i32 noundef %0) #0 {
  %2 = tail call i32 @ZSTD_isError(i32 noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_isError(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_get_error_code(i32 noundef %0) #0 {
  %2 = tail call i32 @ZSTD_getErrorCode(i32 noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getErrorCode(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zstd_get_error_name(i32 noundef %0) #0 {
  %2 = tail call ptr @ZSTD_getErrorName(i32 noundef %0) #2
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_getErrorName(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_dctx_workspace_bound() #0 {
  %1 = tail call i32 @ZSTD_estimateDCtxSize() #2
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateDCtxSize() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zstd_init_dctx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @ZSTD_initStaticDCtx(ptr noundef nonnull %0, i32 noundef %1) #2
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticDCtx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_decompress_dctx(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = tail call i32 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_decompressDCtx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_dstream_workspace_bound(i32 noundef %0) #0 {
  %2 = tail call i32 @ZSTD_estimateDStreamSize(i32 noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateDStreamSize(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zstd_init_dstream(i32 %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @ZSTD_initStaticDStream(ptr noundef nonnull %1, i32 noundef %2) #2
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticDStream(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_reset_dstream(ptr noundef %0) #0 {
  %2 = tail call i32 @ZSTD_resetDStream(ptr noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_resetDStream(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_decompress_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @ZSTD_decompressStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_find_frame_compressed_size(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @ZSTD_findFrameCompressedSize(ptr noundef %0, i32 noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_findFrameCompressedSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zstd_get_frame_header(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @ZSTD_getFrameHeader(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getFrameHeader(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
