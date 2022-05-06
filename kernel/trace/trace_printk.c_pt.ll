; ModuleID = '/llk/IR/kernel/trace/trace_printk.c_pt.bc'
source_filename = "../kernel/trace/trace_printk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_bprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_bprintk\22\09\09\09\09\09"
module asm "__kstrtabns___trace_bprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ftrace_vbprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22__ftrace_vbprintk\22\09\09\09\09\09"
module asm "__kstrtabns___ftrace_vbprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_printk\22\09\09\09\09\09"
module asm "__kstrtabns___trace_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ftrace_vprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22__ftrace_vprintk\22\09\09\09\09\09"
module asm "__kstrtabns___ftrace_vprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.__va_list = type { ptr }
%struct.trace_bprintk_fmt = type { %struct.list_head, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@trace_printk_enabled = internal unnamed_addr global i8 1, section ".data..read_mostly", align 1
@__kstrtab___trace_bprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_bprintk = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_bprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_bprintk to i32), ptr @__kstrtab___trace_bprintk, ptr @__kstrtabns___trace_bprintk }, section "___ksymtab_gpl+__trace_bprintk", align 4
@__kstrtab___ftrace_vbprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns___ftrace_vbprintk = external dso_local constant [0 x i8], align 1
@__ksymtab___ftrace_vbprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ftrace_vbprintk to i32), ptr @__kstrtab___ftrace_vbprintk, ptr @__kstrtabns___ftrace_vbprintk }, section "___ksymtab_gpl+__ftrace_vbprintk", align 4
@__kstrtab___trace_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_printk = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_printk to i32), ptr @__kstrtab___trace_printk, ptr @__kstrtabns___trace_printk }, section "___ksymtab_gpl+__trace_printk", align 4
@__kstrtab___ftrace_vprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns___ftrace_vprintk = external dso_local constant [0 x i8], align 1
@__ksymtab___ftrace_vprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ftrace_vprintk to i32), ptr @__kstrtab___ftrace_vprintk, ptr @__kstrtabns___ftrace_vprintk }, section "___ksymtab_gpl+__ftrace_vprintk", align 4
@__start___tracepoint_str = external dso_local global [0 x ptr], align 4
@__stop___tracepoint_str = external dso_local global [0 x ptr], align 4
@__initcall__kmod_trace_printk__244_393_init_trace_printk_function_export5 = internal global ptr @init_trace_printk_function_export, section ".initcall5.init", align 4
@__initcall__kmod_trace_printk__245_400_init_trace_printkearly = internal global ptr @init_trace_printk, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [15 x i8] c"printk_formats\00", align 1
@ftrace_formats_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ftrace_formats_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@show_format_seq_ops = internal constant %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @t_show }, align 4
@btrace_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @btrace_mutex, i64 12), ptr getelementptr (i8, ptr @btrace_mutex, i64 12) } }, align 4
@__stop___trace_bprintk_fmt = external dso_local global [0 x ptr], align 4
@__start___trace_bprintk_fmt = external dso_local global [0 x ptr], align 4
@trace_bprintk_fmt_list = internal global %struct.list_head { ptr @trace_bprintk_fmt_list, ptr @trace_bprintk_fmt_list }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"0x%lx : \22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@module_trace_bprintk_format_nb = internal global %struct.notifier_block { ptr @module_trace_bprintk_format_notify, ptr null, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_trace_printk__244_393_init_trace_printk_function_export5, ptr @__initcall__kmod_trace_printk__245_400_init_trace_printkearly, ptr @__ksymtab___ftrace_vbprintk, ptr @__ksymtab___ftrace_vprintk, ptr @__ksymtab___trace_bprintk, ptr @__ksymtab___trace_printk], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @trace_printk_control(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i1 %0 to i8
  store i8 %2, ptr @trace_printk_enabled, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__trace_bprintk(i32 noundef %0, ptr noundef %1, ...) #1 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = icmp eq ptr %1, null
  %5 = load i8, ptr @trace_printk_enabled, align 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %12, label %8, !prof !9

8:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %9 = load i32, ptr %3, align 4
  %10 = insertvalue [1 x i32] poison, i32 %9, 0
  %11 = call i32 @trace_vbprintk(i32 noundef %0, ptr noundef nonnull %1, [1 x i32] %10) #12
  call void @llvm.va_end(ptr nonnull %3)
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_vbprintk(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ftrace_vbprintk(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #1 {
  %4 = icmp eq ptr %1, null
  %5 = load i8, ptr @trace_printk_enabled, align 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 @trace_vbprintk(i32 noundef %0, ptr noundef nonnull %1, [1 x i32] %2) #12
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__trace_printk(i32 noundef %0, ptr noundef %1, ...) #1 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load i8, ptr @trace_printk_enabled, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %7 = load i32, ptr %3, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @trace_vprintk(i32 noundef %0, ptr noundef %1, [1 x i32] %8) #12
  call void @llvm.va_end(ptr nonnull %3)
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_vprintk(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ftrace_vprintk(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #1 {
  %4 = load i8, ptr @trace_printk_enabled, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @trace_vprintk(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #12
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_is_tracepoint_string(ptr noundef readnone %0) local_unnamed_addr #5 {
  br i1 icmp ult (ptr @__start___tracepoint_str, ptr @__stop___tracepoint_str), label %2, label %12

2:                                                ; preds = %1
  %3 = load ptr, ptr @__start___tracepoint_str, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %12, label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %7, %9 ], [ @__start___tracepoint_str, %2 ]
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = icmp ult ptr %7, @__stop___tracepoint_str
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %5

12:                                               ; preds = %9, %5, %2, %1
  %13 = phi i1 [ icmp ult (ptr @__start___tracepoint_str, ptr @__stop___tracepoint_str), %1 ], [ icmp ult (ptr @__start___tracepoint_str, ptr @__stop___tracepoint_str), %2 ], [ %8, %9 ], [ %8, %5 ]
  ret i1 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_trace_printk_function_export() #6 section ".init.text" {
  %1 = tail call i32 @tracing_init_dentry() #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @trace_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @ftrace_formats_fops) #12
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_trace_printk() #6 section ".init.text" {
  %1 = tail call i32 @register_module_notifier(ptr noundef nonnull @module_trace_bprintk_format_nb) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_formats_open(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_format_seq_ops) #12
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @btrace_mutex) #12
  %3 = load i64, ptr %1, align 8
  %4 = icmp slt i64 %3, sext (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4) to i64)
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = trunc i64 %3 to i32
  %7 = getelementptr ptr, ptr @__start___trace_bprintk_fmt, i32 %6
  br label %28

8:                                                ; preds = %2
  %9 = icmp slt i64 %3, sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4)) to i64)
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = trunc i64 %3 to i32
  %12 = sub i32 %11, sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)
  %13 = getelementptr ptr, ptr @__start___tracepoint_str, i32 %12
  br label %28

14:                                               ; preds = %8
  %15 = load volatile ptr, ptr @trace_bprintk_fmt_list, align 4
  %16 = icmp eq ptr %15, @trace_bprintk_fmt_list
  br i1 %16, label %28, label %21

17:                                               ; preds = %21
  %18 = add i32 %23, 1
  %19 = load ptr, ptr %22, align 4
  %20 = icmp eq ptr %19, @trace_bprintk_fmt_list
  br i1 %20, label %28, label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %23 = phi i32 [ %18, %17 ], [ add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)), %14 ]
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %3, %24
  br i1 %25, label %26, label %17

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %22, i32 0, i32 1
  br label %28

28:                                               ; preds = %26, %17, %14, %10, %5
  %29 = phi ptr [ %7, %5 ], [ %13, %10 ], [ null, %14 ], [ %27, %26 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @t_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  tail call void @mutex_unlock(ptr noundef nonnull @btrace_mutex) #12
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_next(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef %2) #7 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp slt i64 %5, sext (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4) to i64)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = trunc i64 %5 to i32
  %9 = getelementptr ptr, ptr @__start___trace_bprintk_fmt, i32 %8
  br label %40

10:                                               ; preds = %3
  %11 = icmp slt i64 %5, sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4)) to i64)
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = trunc i64 %5 to i32
  %14 = sub i32 %13, sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)
  %15 = getelementptr ptr, ptr @__start___tracepoint_str, i32 %14
  br label %40

16:                                               ; preds = %10
  %17 = load volatile ptr, ptr @trace_bprintk_fmt_list, align 4
  %18 = icmp eq ptr %17, @trace_bprintk_fmt_list
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = icmp eq ptr %1, null
  %21 = icmp eq i64 %5, sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)) to i64)
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %27, label %34

23:                                               ; preds = %27
  %24 = add i32 %29, 1
  %25 = load ptr, ptr %28, align 4
  %26 = icmp eq ptr %25, @trace_bprintk_fmt_list
  br i1 %26, label %40, label %27

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %25, %23 ], [ %17, %19 ]
  %29 = phi i32 [ %24, %23 ], [ add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)), %19 ]
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %5, %30
  br i1 %31, label %32, label %23

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %28, i32 0, i32 1
  br label %40

34:                                               ; preds = %19
  %35 = getelementptr i8, ptr %1, i32 -8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @trace_bprintk_fmt_list
  %38 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %36, i32 0, i32 1
  %39 = select i1 %37, ptr null, ptr %38
  br label %40

40:                                               ; preds = %34, %32, %23, %16, %12, %7
  %41 = phi ptr [ %9, %7 ], [ %15, %12 ], [ null, %16 ], [ %33, %32 ], [ %39, %34 ], [ null, %23 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @t_show(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %6) #12
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i32 [ 0, %5 ], [ %17, %16 ]
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %15 [
    i8 0, label %18
    i8 10, label %11
    i8 9, label %12
    i8 92, label %13
    i8 34, label %14
  ]

11:                                               ; preds = %7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  br label %16

12:                                               ; preds = %7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  br label %16

13:                                               ; preds = %7
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 92) #12
  br label %16

14:                                               ; preds = %7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #12
  br label %16

15:                                               ; preds = %7
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %10) #12
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11
  %17 = add i32 %8, 1
  br label %7

18:                                               ; preds = %7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  br label %19

19:                                               ; preds = %18, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @module_trace_bprintk_format_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 43
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq i32 %1, 1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %57

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 44
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %5
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @trace_printk_init_buffers() #12
  br label %15

15:                                               ; preds = %14, %9
  tail call void @mutex_lock(ptr noundef nonnull @btrace_mutex) #12
  %16 = icmp ult ptr %11, %12
  br i1 %16, label %17, label %56

17:                                               ; preds = %53, %15
  %18 = phi ptr [ %54, %53 ], [ %11, %15 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %23, %25 ], [ @trace_bprintk_fmt_list, %17 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @trace_bprintk_fmt_list
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @strcmp(ptr noundef %27, ptr noundef nonnull %19) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %21

30:                                               ; preds = %25
  %31 = icmp eq ptr %23, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %53, label %51

34:                                               ; preds = %30, %21
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3264, i32 noundef 12) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %18, align 4
  %40 = tail call i32 @strlen(ptr noundef %39) #12
  %41 = add i32 %40, 1
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @trace_bprintk_fmt_list, i32 0, i32 1), align 4
  store ptr %36, ptr getelementptr inbounds (%struct.list_head, ptr @trace_bprintk_fmt_list, i32 0, i32 1), align 4
  store ptr @trace_bprintk_fmt_list, ptr %36, align 8
  %46 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %36, ptr %45, align 4
  %47 = load ptr, ptr %18, align 4
  %48 = tail call ptr @strcpy(ptr noundef nonnull %42, ptr noundef %47) #12
  %49 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %36, i32 0, i32 1
  store ptr %42, ptr %49, align 8
  br label %51

50:                                               ; preds = %38
  tail call void @kfree(ptr noundef nonnull %36) #12
  br label %51

51:                                               ; preds = %50, %44, %34, %32
  %52 = phi ptr [ %27, %32 ], [ %42, %44 ], [ null, %50 ], [ null, %34 ]
  store ptr %52, ptr %18, align 4
  br label %53

53:                                               ; preds = %51, %32, %17
  %54 = getelementptr ptr, ptr %18, i32 1
  %55 = icmp ult ptr %54, %12
  br i1 %55, label %17, label %56

56:                                               ; preds = %53, %15
  tail call void @mutex_unlock(ptr noundef nonnull @btrace_mutex) #12
  br label %57

57:                                               ; preds = %56, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_printk_init_buffers() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{i8 0, i8 2}
