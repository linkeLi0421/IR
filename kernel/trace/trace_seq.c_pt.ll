; ModuleID = '/llk/IR/kernel/trace/trace_seq.c_pt.bc'
source_filename = "../kernel/trace/trace_seq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_printf\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_bitmask:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_bitmask\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_bitmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_vprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_vprintf\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_vprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_bprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_bprintf\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_bprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_puts:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_puts\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_puts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_putc:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_putc\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_putc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_putmem:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_putmem\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_putmem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_putmem_hex:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_putmem_hex\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_putmem_hex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_path:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_path\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_seq_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_seq_hex_dump\22\09\09\09\09\09"
module asm "__kstrtabns_trace_seq_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.__va_list = type { ptr }

@__kstrtab_trace_seq_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_printf to i32), ptr @__kstrtab_trace_seq_printf, ptr @__kstrtabns_trace_seq_printf }, section "___ksymtab_gpl+trace_seq_printf", align 4
@.str = private unnamed_addr constant [5 x i8] c"%*pb\00", align 1
@__kstrtab_trace_seq_bitmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_bitmask = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_bitmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_bitmask to i32), ptr @__kstrtab_trace_seq_bitmask, ptr @__kstrtabns_trace_seq_bitmask }, section "___ksymtab_gpl+trace_seq_bitmask", align 4
@__kstrtab_trace_seq_vprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_vprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_vprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_vprintf to i32), ptr @__kstrtab_trace_seq_vprintf, ptr @__kstrtabns_trace_seq_vprintf }, section "___ksymtab_gpl+trace_seq_vprintf", align 4
@__kstrtab_trace_seq_bprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_bprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_bprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_bprintf to i32), ptr @__kstrtab_trace_seq_bprintf, ptr @__kstrtabns_trace_seq_bprintf }, section "___ksymtab_gpl+trace_seq_bprintf", align 4
@__kstrtab_trace_seq_puts = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_puts = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_puts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_puts to i32), ptr @__kstrtab_trace_seq_puts, ptr @__kstrtabns_trace_seq_puts }, section "___ksymtab_gpl+trace_seq_puts", align 4
@__kstrtab_trace_seq_putc = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_putc = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_putc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_putc to i32), ptr @__kstrtab_trace_seq_putc, ptr @__kstrtabns_trace_seq_putc }, section "___ksymtab_gpl+trace_seq_putc", align 4
@__kstrtab_trace_seq_putmem = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_putmem = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_putmem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_putmem to i32), ptr @__kstrtab_trace_seq_putmem, ptr @__kstrtabns_trace_seq_putmem }, section "___ksymtab_gpl+trace_seq_putmem", align 4
@__kstrtab_trace_seq_putmem_hex = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_putmem_hex = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_putmem_hex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_putmem_hex to i32), ptr @__kstrtab_trace_seq_putmem_hex, ptr @__kstrtabns_trace_seq_putmem_hex }, section "___ksymtab_gpl+trace_seq_putmem_hex", align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__kstrtab_trace_seq_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_path = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_path to i32), ptr @__kstrtab_trace_seq_path, ptr @__kstrtabns_trace_seq_path }, section "___ksymtab_gpl+trace_seq_path", align 4
@__kstrtab_trace_seq_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_to_user to i32), ptr @__kstrtab_trace_seq_to_user, ptr @__kstrtabns_trace_seq_to_user }, section "___ksymtab_gpl+trace_seq_to_user", align 4
@__kstrtab_trace_seq_hex_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_seq_hex_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_seq_hex_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_seq_hex_dump to i32), ptr @__kstrtab_trace_seq_hex_dump, ptr @__kstrtabns_trace_seq_hex_dump }, section "___ksymtab+trace_seq_hex_dump", align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_trace_seq_bitmask, ptr @__ksymtab_trace_seq_bprintf, ptr @__ksymtab_trace_seq_hex_dump, ptr @__ksymtab_trace_seq_path, ptr @__ksymtab_trace_seq_printf, ptr @__ksymtab_trace_seq_putc, ptr @__ksymtab_trace_seq_putmem, ptr @__ksymtab_trace_seq_putmem_hex, ptr @__ksymtab_trace_seq_puts, ptr @__ksymtab_trace_seq_to_user, ptr @__ksymtab_trace_seq_vprintf], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_print_seq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1
  store ptr %1, ptr %7, align 8
  store i32 4096, ptr %3, align 4
  %8 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, i32 2
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, i32 3
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 2
  store i32 0, ptr %10, align 8
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1
  %13 = tail call i32 @seq_buf_print_seq(ptr noundef %0, ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  store ptr %1, ptr %12, align 8
  store i32 4096, ptr %3, align 4
  %16 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, i32 2
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, i32 3
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 2
  store i32 0, ptr %18, align 8
  br label %19

19:                                               ; preds = %15, %11
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_print_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_printf(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %9
  store ptr %0, ptr %10, align 8
  store i32 4096, ptr %11, align 4
  store i32 0, ptr %4, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %15, align 8
  store i32 0, ptr %6, align 8
  br label %16

16:                                               ; preds = %14, %9
  call void @llvm.va_start(ptr nonnull %3)
  %17 = load i32, ptr %3, align 4
  %18 = insertvalue [1 x i32] poison, i32 %17, 0
  %19 = call i32 @seq_buf_vprintf(ptr noundef %10, ptr noundef %1, [1 x i32] %18) #6
  call void @llvm.va_end(ptr nonnull %3)
  %20 = load i32, ptr %4, align 8
  %21 = load i32, ptr %11, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %16
  store i32 %5, ptr %4, align 8
  store i32 1, ptr %6, align 8
  br label %24

24:                                               ; preds = %23, %16, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %9
  store ptr %0, ptr %10, align 8
  store i32 4096, ptr %11, align 4
  store i32 0, ptr %4, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %15, align 8
  store i32 0, ptr %6, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = tail call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef %1) #6
  %18 = load i32, ptr %4, align 8
  %19 = load i32, ptr %11, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %16
  store i32 %5, ptr %4, align 8
  store i32 1, ptr %6, align 8
  br label %22

22:                                               ; preds = %21, %16, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_vprintf(ptr noundef %0, ptr noundef %1, [1 x i32] %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %9
  store ptr %0, ptr %10, align 8
  store i32 4096, ptr %11, align 4
  store i32 0, ptr %4, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %15, align 8
  store i32 0, ptr %6, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = tail call i32 @seq_buf_vprintf(ptr noundef %10, ptr noundef %1, [1 x i32] %2) #6
  %18 = load i32, ptr %4, align 8
  %19 = load i32, ptr %11, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %16
  store i32 %5, ptr %4, align 8
  store i32 1, ptr %6, align 8
  br label %22

22:                                               ; preds = %21, %16, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_bprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %9
  store ptr %0, ptr %10, align 8
  store i32 4096, ptr %11, align 4
  store i32 0, ptr %4, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %15, align 8
  store i32 0, ptr %6, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = tail call i32 @seq_buf_bprintf(ptr noundef %10, ptr noundef %1, ptr noundef %2) #6
  %18 = load i32, ptr %4, align 8
  %19 = load i32, ptr %11, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %16
  store i32 %5, ptr %4, align 8
  store i32 1, ptr %6, align 8
  br label %22

22:                                               ; preds = %21, %16, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_bprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_puts(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !8

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %13 = load i32, ptr %12, align 8
  br label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  store ptr %0, ptr %15, align 8
  store i32 4096, ptr %8, align 4
  %16 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %17, align 8
  store i32 0, ptr %4, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %9, %11 ], [ 4096, %14 ]
  %20 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %19, i32 %20) #6
  %22 = icmp ugt i32 %3, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, ptr %4, align 8
  br label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %26 = tail call i32 @seq_buf_putmem(ptr noundef %25, ptr noundef %1, i32 noundef %3) #6
  br label %27

27:                                               ; preds = %24, %23, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_putmem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  store ptr %0, ptr %11, align 8
  store i32 4096, ptr %7, align 4
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %13, align 8
  store i32 0, ptr %3, align 8
  br label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp ugt i32 %8, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, ptr %3, align 8
  br label %22

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %21 = tail call i32 @seq_buf_putc(ptr noundef %20, i8 noundef zeroext %1) #6
  br label %22

22:                                               ; preds = %19, %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_putmem(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !8

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %13 = load i32, ptr %12, align 8
  br label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  store ptr %0, ptr %15, align 8
  store i32 4096, ptr %8, align 4
  %16 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %17, align 8
  store i32 0, ptr %4, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %9, %11 ], [ 4096, %14 ]
  %20 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %19, i32 %20) #6
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, ptr %4, align 8
  br label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %26 = tail call i32 @seq_buf_putmem(ptr noundef %25, ptr noundef %1, i32 noundef %2) #6
  br label %27

27:                                               ; preds = %24, %23, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_seq_putmem_hex(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %10
  store ptr %0, ptr %4, align 8
  store i32 4096, ptr %11, align 4
  store i32 0, ptr %5, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %15, align 8
  store i32 0, ptr %7, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %12, %10 ], [ 4096, %14 ]
  %18 = phi i32 [ %6, %10 ], [ 0, %14 ]
  %19 = shl i32 %2, 1
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %17, i32 %18) #6
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @seq_buf_putmem_hex(ptr noundef %4, ptr noundef %1, i32 noundef %2) #6
  %24 = load i32, ptr %5, align 8
  %25 = load i32, ptr %11, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %22
  store i32 %6, ptr %5, align 8
  br label %28

28:                                               ; preds = %27, %16
  store i32 1, ptr %7, align 8
  br label %29

29:                                               ; preds = %28, %22, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_putmem_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_seq_path(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %9
  store ptr %0, ptr %3, align 8
  store i32 4096, ptr %10, align 4
  store i32 0, ptr %4, align 8
  %14 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %14, align 8
  store i32 0, ptr %6, align 8
  br label %17

15:                                               ; preds = %9
  %16 = icmp ugt i32 %11, %5
  br i1 %16, label %17, label %23

17:                                               ; preds = %15, %13
  %18 = tail call i32 @seq_buf_path(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %19 = load i32, ptr %4, align 8
  %20 = load i32, ptr %10, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %24, !prof !8

22:                                               ; preds = %17
  store i32 %5, ptr %4, align 8
  br label %23

23:                                               ; preds = %22, %15
  store i32 1, ptr %6, align 8
  br label %24

24:                                               ; preds = %23, %17, %2
  %25 = phi i32 [ 0, %2 ], [ 1, %17 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_seq_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  store ptr %0, ptr %8, align 8
  store i32 4096, ptr %4, align 4
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  store i32 0, ptr %11, align 8
  br label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %14 = tail call i32 @seq_buf_to_user(ptr noundef %13, ptr noundef %1, i32 noundef %2) #6
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_seq_hex_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) #0 {
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !8

19:                                               ; preds = %15
  store ptr %0, ptr %9, align 8
  store i32 4096, ptr %16, align 4
  store i32 0, ptr %10, align 8
  %20 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %20, align 8
  store i32 0, ptr %12, align 8
  br label %23

21:                                               ; preds = %15
  %22 = icmp ugt i32 %17, %11
  br i1 %22, label %23, label %29

23:                                               ; preds = %21, %19
  %24 = tail call i32 @seq_buf_hex_dump(ptr noundef %9, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) #6
  %25 = load i32, ptr %10, align 8
  %26 = load i32, ptr %16, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30, !prof !8

28:                                               ; preds = %23
  store i32 %11, ptr %10, align 8
  br label %29

29:                                               ; preds = %28, %21
  store i32 1, ptr %12, align 8
  br label %30

30:                                               ; preds = %29, %23, %8
  %31 = phi i32 [ 0, %8 ], [ 1, %23 ], [ 0, %29 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
