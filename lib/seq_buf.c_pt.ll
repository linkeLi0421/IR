; ModuleID = '/llk/IR/lib/seq_buf.c_pt.bc'
source_filename = "../lib/seq_buf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_buf_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_buf_printf\22\09\09\09\09\09"
module asm "__kstrtabns_seq_buf_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"lib/seq_buf.c\00", align 1
@__kstrtab_seq_buf_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_buf_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_buf_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_buf_printf to i32), ptr @__kstrtab_seq_buf_printf, ptr @__kstrtabns_seq_buf_printf }, section "___ksymtab_gpl+seq_buf_printf", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@seq_buf_putmem_hex.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%p: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s%.8x: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"include/linux/seq_buf.h\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_seq_buf_printf], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_print_seq(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #10
  %8 = load ptr, ptr %1, align 8
  %9 = tail call i32 @seq_write(ptr noundef %0, ptr noundef %8, i32 noundef %7) #10
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_vprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, [1 x i32] %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #10
  %8 = load i32, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 %12
  %17 = sub i32 %10, %12
  %18 = tail call i32 @vsnprintf(ptr noundef %16, i32 noundef %17, ptr noundef %1, [1 x i32] %2)
  %19 = load i32, ptr %11, align 8
  %20 = add i32 %19, %18
  %21 = load i32, ptr %4, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %14, %9
  %24 = phi i32 [ %21, %14 ], [ %10, %9 ]
  %25 = add i32 %24, 1
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ %25, %23 ], [ %20, %14 ]
  %28 = phi i32 [ -1, %23 ], [ 0, %14 ]
  store i32 %27, ptr %11, align 8
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_printf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #10
  %10 = load i32, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %7, %2 ]
  %13 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 %14
  %19 = sub i32 %12, %14
  %20 = call i32 @vsnprintf(ptr noundef %18, i32 noundef %19, ptr noundef %1, [1 x i32] %5) #10
  %21 = load i32, ptr %13, align 8
  %22 = add i32 %21, %20
  %23 = load i32, ptr %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %11
  %26 = phi i32 [ %23, %16 ], [ %12, %11 ]
  %27 = add i32 %26, 1
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi i32 [ %27, %25 ], [ %22, %16 ]
  %30 = phi i32 [ -1, %25 ], [ 0, %16 ]
  store i32 %29, ptr %13, align 8
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_bprintf(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %5) #10
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %13, !prof !8

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  %11 = load i32, ptr %4, align 8
  %12 = load i32, ptr %6, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ %7, %3 ]
  %15 = phi i32 [ %11, %10 ], [ %5, %3 ]
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %18, i32 %15
  %20 = tail call i32 @bstr_printf(ptr noundef %19, i32 noundef %8, ptr noundef %1, ptr noundef %2) #10
  %21 = load i32, ptr %4, align 8
  %22 = add i32 %21, %20
  %23 = load i32, ptr %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ %14, %13 ]
  %27 = add i32 %26, 1
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi i32 [ %27, %25 ], [ %22, %17 ]
  %30 = phi i32 [ -1, %25 ], [ 0, %17 ]
  store i32 %29, ptr %4, align 8
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bstr_printf(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_puts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #10
  %8 = load i32, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %5, %2 ]
  %11 = add i32 %3, 1
  %12 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, %11
  %15 = icmp ugt i32 %14, %10
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %1, i32 %11, i1 false)
  %19 = load i32, ptr %12, align 8
  %20 = add i32 %19, %3
  br label %23

21:                                               ; preds = %9
  %22 = add nuw i32 %10, 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %22, %21 ], [ %20, %16 ]
  %25 = phi i32 [ -1, %21 ], [ 0, %16 ]
  store i32 %24, ptr %12, align 8
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_putc(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef null) #10
  %7 = load i32, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  %13 = icmp ugt i32 %12, %9
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8
  store i32 %12, ptr %10, align 8
  %16 = getelementptr i8, ptr %15, i32 %11
  store i8 %1, ptr %16, align 1
  br label %19

17:                                               ; preds = %8
  %18 = add nuw i32 %9, 1
  store i32 %18, ptr %10, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ 0, %14 ], [ -1, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_putmem(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #10
  %8 = load i32, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, %2
  %14 = icmp ugt i32 %13, %10
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %2, i1 false)
  %18 = load i32, ptr %11, align 8
  %19 = add i32 %18, %2
  br label %22

20:                                               ; preds = %9
  %21 = add nuw i32 %10, 1
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %21, %20 ], [ %19, %15 ]
  %24 = phi i32 [ -1, %20 ], [ 0, %15 ]
  store i32 %23, ptr %11, align 8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_putmem_hex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [17 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %4, i8 0, i32 17, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %168, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 3
  %16 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 5
  %18 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 6
  %19 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 7
  %20 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 8
  %21 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 9
  %22 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 10
  %23 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 11
  %24 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 12
  %25 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 13
  %26 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 14
  %27 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 15
  br label %28

28:                                               ; preds = %164, %11
  %29 = phi i32 [ %2, %11 ], [ %165, %164 ]
  %30 = phi ptr [ %1, %11 ], [ %166, %164 ]
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 8)
  %32 = add nsw i32 %31, -1
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = lshr i8 %34, 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %4, align 1
  %39 = and i8 %34, 15
  %40 = zext i8 %39 to i32
  %41 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  store i8 %42, ptr %13, align 1
  %43 = icmp ugt i32 %31, 1
  br i1 %43, label %44, label %134

44:                                               ; preds = %28
  %45 = add nsw i32 %31, -2
  %46 = getelementptr i8, ptr %30, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = lshr i8 %47, 4
  %49 = zext i8 %48 to i32
  %50 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %49
  %51 = load i8, ptr %50, align 1
  store i8 %51, ptr %14, align 1
  %52 = and i8 %47, 15
  %53 = zext i8 %52 to i32
  %54 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  store i8 %55, ptr %15, align 1
  %56 = icmp ugt i32 %32, 1
  br i1 %56, label %57, label %134

57:                                               ; preds = %44
  %58 = add nsw i32 %31, -3
  %59 = getelementptr i8, ptr %30, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = lshr i8 %60, 4
  %62 = zext i8 %61 to i32
  %63 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %62
  %64 = load i8, ptr %63, align 1
  store i8 %64, ptr %16, align 1
  %65 = and i8 %60, 15
  %66 = zext i8 %65 to i32
  %67 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  store i8 %68, ptr %17, align 1
  %69 = icmp ugt i32 %45, 1
  br i1 %69, label %70, label %134

70:                                               ; preds = %57
  %71 = add nsw i32 %31, -4
  %72 = getelementptr i8, ptr %30, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = lshr i8 %73, 4
  %75 = zext i8 %74 to i32
  %76 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %75
  %77 = load i8, ptr %76, align 1
  store i8 %77, ptr %18, align 1
  %78 = and i8 %73, 15
  %79 = zext i8 %78 to i32
  %80 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %79
  %81 = load i8, ptr %80, align 1
  store i8 %81, ptr %19, align 1
  %82 = icmp ugt i32 %58, 1
  br i1 %82, label %83, label %134

83:                                               ; preds = %70
  %84 = add nsw i32 %31, -5
  %85 = getelementptr i8, ptr %30, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = lshr i8 %86, 4
  %88 = zext i8 %87 to i32
  %89 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %88
  %90 = load i8, ptr %89, align 1
  store i8 %90, ptr %20, align 1
  %91 = and i8 %86, 15
  %92 = zext i8 %91 to i32
  %93 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %92
  %94 = load i8, ptr %93, align 1
  store i8 %94, ptr %21, align 1
  %95 = icmp ugt i32 %71, 1
  br i1 %95, label %96, label %134

96:                                               ; preds = %83
  %97 = add nsw i32 %31, -6
  %98 = getelementptr i8, ptr %30, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = lshr i8 %99, 4
  %101 = zext i8 %100 to i32
  %102 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  store i8 %103, ptr %22, align 1
  %104 = and i8 %99, 15
  %105 = zext i8 %104 to i32
  %106 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %105
  %107 = load i8, ptr %106, align 1
  store i8 %107, ptr %23, align 1
  %108 = icmp ugt i32 %84, 1
  br i1 %108, label %109, label %134

109:                                              ; preds = %96
  %110 = add nsw i32 %31, -7
  %111 = getelementptr i8, ptr %30, i32 %110
  %112 = load i8, ptr %111, align 1
  %113 = lshr i8 %112, 4
  %114 = zext i8 %113 to i32
  %115 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %114
  %116 = load i8, ptr %115, align 1
  store i8 %116, ptr %24, align 1
  %117 = and i8 %112, 15
  %118 = zext i8 %117 to i32
  %119 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %118
  %120 = load i8, ptr %119, align 1
  store i8 %120, ptr %25, align 1
  %121 = icmp ugt i32 %97, 1
  br i1 %121, label %122, label %134

122:                                              ; preds = %109
  %123 = add nsw i32 %31, -8
  %124 = getelementptr i8, ptr %30, i32 %123
  %125 = load i8, ptr %124, align 1
  %126 = lshr i8 %125, 4
  %127 = zext i8 %126 to i32
  %128 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %127
  %129 = load i8, ptr %128, align 1
  store i8 %129, ptr %26, align 1
  %130 = and i8 %125, 15
  %131 = zext i8 %130 to i32
  %132 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %131
  %133 = load i8, ptr %132, align 1
  store i8 %133, ptr %27, align 1
  br label %134

134:                                              ; preds = %122, %109, %96, %83, %70, %57, %44, %28
  %135 = phi i32 [ 2, %28 ], [ 4, %44 ], [ 6, %57 ], [ 8, %70 ], [ 10, %83 ], [ 12, %96 ], [ 14, %109 ], [ 16, %122 ]
  %136 = lshr exact i32 %135, 1
  %137 = icmp ugt i32 %136, %29
  %138 = load i1, ptr @seq_buf_putmem_hex.__already_done, align 1
  %139 = xor i1 %138, true
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %142, !prof !8

141:                                              ; preds = %134
  store i1 true, ptr @seq_buf_putmem_hex.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #10
  br label %142

142:                                              ; preds = %141, %134
  br i1 %137, label %168, label %143

143:                                              ; preds = %142
  %144 = or i32 %135, 1
  %145 = getelementptr [17 x i8], ptr %4, i32 0, i32 %135
  store i8 32, ptr %145, align 1
  %146 = load i32, ptr %5, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150, !prof !8

148:                                              ; preds = %143
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #10
  %149 = load i32, ptr %5, align 4
  br label %150

150:                                              ; preds = %148, %143
  %151 = phi i32 [ %149, %148 ], [ %146, %143 ]
  %152 = load i32, ptr %12, align 8
  %153 = add i32 %152, %144
  %154 = icmp ugt i32 %153, %151
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = add nuw i32 %151, 1
  store i32 %156, ptr %12, align 8
  br label %168

157:                                              ; preds = %150
  %158 = load ptr, ptr %0, align 8
  %159 = getelementptr i8, ptr %158, i32 %152
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %159, ptr noundef nonnull align 1 %4, i32 %144, i1 false) #10
  %160 = load i32, ptr %12, align 8
  %161 = add i32 %160, %144
  %162 = load i32, ptr %5, align 4
  store i32 %161, ptr %12, align 8
  %163 = icmp ugt i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %157
  %165 = sub i32 %29, %31
  %166 = getelementptr i8, ptr %30, i32 %31
  %167 = icmp eq i32 %165, 0
  br i1 %167, label %168, label %28

168:                                              ; preds = %164, %157, %155, %142, %9
  %169 = phi i32 [ 0, %9 ], [ -1, %155 ], [ 0, %164 ], [ 0, %142 ], [ -1, %157 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #10
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_path(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %13, !prof !8

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 109, i32 noundef 9, ptr noundef null) #10
  %11 = load i32, ptr %4, align 8
  %12 = load i32, ptr %6, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ %7, %3 ]
  %15 = phi i32 [ %11, %10 ], [ %5, %3 ]
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %34, !prof !8

19:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %34

20:                                               ; preds = %13
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %21, i32 %15
  %23 = sub i32 %14, %15
  %24 = tail call ptr @d_path(ptr noundef %1, ptr noundef %22, i32 noundef %23) #10
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = tail call ptr @mangle_path(ptr noundef %22, ptr noundef %24, ptr noundef %2) #10
  %28 = icmp eq ptr %27, null
  %29 = ptrtoint ptr %27 to i32
  %30 = ptrtoint ptr %22 to i32
  %31 = sub i32 %29, %30
  br i1 %28, label %34, label %32

32:                                               ; preds = %26
  %33 = icmp slt i32 %31, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %32, %26, %20, %19, %17
  %35 = phi i32 [ %31, %32 ], [ -1, %20 ], [ -1, %26 ], [ -1, %19 ], [ -1, %17 ]
  %36 = load i32, ptr %6, align 4
  %37 = add i32 %36, 1
  br label %44

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 8
  %40 = add i32 %39, %31
  %41 = load i32, ptr %6, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_buf.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

44:                                               ; preds = %38, %34
  %45 = phi i32 [ %37, %34 ], [ %40, %38 ]
  %46 = phi i32 [ %35, %34 ], [ %31, %38 ]
  store i32 %45, ptr %4, align 8
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mangle_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_to_user(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9) #10
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = icmp slt i64 %13, %11
  br i1 %14, label %15, label %44

15:                                               ; preds = %5
  %16 = trunc i64 %13 to i32
  %17 = sub i32 %10, %16
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %2)
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 %16
  %21 = icmp slt i32 %18, 0
  %22 = load i1, ptr @check_copy_size.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %15
  br i1 %21, label %44, label %27, !prof !8

27:                                               ; preds = %26
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %18, i32 -1090519040) #11, !srcloc !11
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #12, !srcloc !12
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %37 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %20, i32 noundef %18) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %38 = icmp eq i32 %18, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = sub i32 %18, %37
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr %12, align 8
  %43 = add i64 %42, %41
  store i64 %43, ptr %12, align 8
  br label %44

44:                                               ; preds = %39, %31, %27, %26, %5, %3
  %45 = phi i32 [ %40, %39 ], [ 0, %3 ], [ -16, %5 ], [ -14, %31 ], [ -14, %26 ], [ -14, %27 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_buf_hex_dump(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [131 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(131) %9, i8 0, i32 131, i1 false), !annotation !9
  %10 = icmp ne i32 %3, 16
  %11 = icmp ne i32 %3, 32
  %12 = and i1 %10, %11
  %13 = select i1 %12, i32 16, i32 %3
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %34, label %18

15:                                               ; preds = %31
  %16 = add i32 %20, %13
  %17 = icmp ult i32 %16, %6
  br i1 %17, label %18, label %34

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %22, %15 ], [ %6, %8 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %8 ]
  %21 = call i32 @llvm.smin.i32(i32 %19, i32 %13)
  %22 = sub i32 %19, %13
  %23 = getelementptr i8, ptr %5, i32 %20
  %24 = call i32 @hex_dump_to_buffer(ptr noundef %23, i32 noundef %21, i32 noundef %13, i32 noundef %4, ptr noundef nonnull %9, i32 noundef 131, i1 noundef zeroext %7) #10
  switch i32 %2, label %29 [
    i32 1, label %25
    i32 2, label %27
  ]

25:                                               ; preds = %18
  %26 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %23, ptr noundef nonnull %9)
  br label %31

27:                                               ; preds = %18
  %28 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %20, ptr noundef nonnull %9)
  br label %31

29:                                               ; preds = %18
  %30 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull %9)
  br label %31

31:                                               ; preds = %29, %27, %25
  %32 = phi i32 [ %30, %29 ], [ %28, %27 ], [ %26, %25 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %15, label %34

34:                                               ; preds = %31, %15, %8
  %35 = phi i32 [ 0, %8 ], [ 0, %15 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %9) #10
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2151360696, i64 2151361184, i64 2151360733, i64 2151360789, i64 2151360823, i64 2151360847, i64 2151360888, i64 2151360909, i64 2151360937, i64 2151360971}
!11 = !{i64 2149913850, i64 2149913875}
!12 = !{i64 2409384}
!13 = !{i64 2409581}
!14 = !{i64 2149894860}
