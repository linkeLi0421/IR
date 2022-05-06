; ModuleID = '/llk/IR/kernel/trace/trace_probe.c_pt.bc'
source_filename = "../kernel/trace/trace_probe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_probe_log = type { ptr, ptr, i32, i32 }
%struct.fetch_type = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.trace_probe = type { %struct.list_head, ptr, i32, i32, [0 x %struct.probe_arg] }
%struct.probe_arg = type { ptr, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.fetch_insn = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i32 }
%struct.trace_probe_event = type { i32, %struct.trace_event_class, %struct.trace_event_call, %struct.list_head, %struct.list_head, [0 x %struct.trace_uprobe_filter] }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.31, %struct.trace_event, ptr, ptr, %union.anon.32, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.31 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.32 = type { ptr }
%struct.trace_uprobe_filter = type { %struct.rwlock_t, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.event_file_link = type { ptr, %struct.list_head }
%struct.anon.95 = type { i8, i8, i8 }

@print_type_format_u8 = dso_local constant [3 x i8] c"%u\00", align 1
@print_type_format_u16 = dso_local constant [3 x i8] c"%u\00", align 1
@print_type_format_u32 = dso_local constant [3 x i8] c"%u\00", align 1
@print_type_format_u64 = dso_local constant [4 x i8] c"%Lu\00", align 1
@print_type_format_s8 = dso_local constant [3 x i8] c"%d\00", align 1
@print_type_format_s16 = dso_local constant [3 x i8] c"%d\00", align 1
@print_type_format_s32 = dso_local constant [3 x i8] c"%d\00", align 1
@print_type_format_s64 = dso_local constant [4 x i8] c"%Ld\00", align 1
@print_type_format_x8 = dso_local constant [5 x i8] c"0x%x\00", align 1
@print_type_format_x16 = dso_local constant [5 x i8] c"0x%x\00", align 1
@print_type_format_x32 = dso_local constant [5 x i8] c"0x%x\00", align 1
@print_type_format_x64 = dso_local constant [6 x i8] c"0x%Lx\00", align 1
@print_type_format_symbol = dso_local constant [4 x i8] c"%pS\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(fault)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@print_type_format_string = dso_local constant [7 x i8] c"\\\22%s\\\22\00", align 1
@trace_probe_log = internal unnamed_addr global %struct.trace_probe_log zeroinitializer, align 4
@trace_probe_err_text = internal global [54 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to find the given file\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Not a regular file\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Invalid reference counter offset\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Reference counter brace is not closed\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Reference counter has wrong suffix\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Invalid uprobe offset\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Maxactive is not for kprobe\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Invalid maxactive number\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Maxactive is too big\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Invalid probed address or symbol\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Retprobe address must be an function entry\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Invalid probed address suffix\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Group name is not specified\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Group name is too long\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"Group name must follow the same rules as C identifiers\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Event name is not specified\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Event name is too long\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"Event name must follow the same rules as C identifiers\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"Given group/event name is already used by another event\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"$retval is not available on probe\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Invalid stack number\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Invalid argument number\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Invalid $-valiable specified\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Invalid register name\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Invalid memory address\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Invalid immediate value\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"String is not closed with '\22'\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"File offset is not available with kprobe\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Invalid file offset value\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Symbol is not available with uprobe\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Dereference is too much nested\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Dereference needs a brace\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Invalid dereference offset\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Dereference brace is not closed\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"$comm can not be dereferenced\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"Invalid fetch argument\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Array is not closed\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"Array has wrong suffix\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Invalid array size\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Array number is too big\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"Unknown type is specified\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"String accepts only memory argument\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Invalid bitfield\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Argument name is too long\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"Argument name is not specified\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"Argument name must follow the same rules as C identifiers\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"This argument name is already used\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Argument expression is too long\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"No argument expression\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"Probe point is not an instruction boundary\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Failed to register probe event\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"Probe type is different from existing probe\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"Argument type or name is different from existing probe\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"There is already the exact same probe event\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"common_type\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"common_flags\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"common_preempt_count\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"common_pid\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"common_tgid\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"__probe_ip\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"__probe_ret_ip\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"__probe_func\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"$comm\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"ustring\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"x32\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@probe_fetch_types = internal constant [16 x %struct.fetch_type] [%struct.fetch_type { ptr @.str.76, i32 4, i32 1, ptr @print_type_string, ptr @print_type_format_string, ptr @.str.84 }, %struct.fetch_type { ptr @.str.78, i32 4, i32 1, ptr @print_type_string, ptr @print_type_format_string, ptr @.str.84 }, %struct.fetch_type { ptr @.str.80, i32 1, i32 0, ptr @print_type_u8, ptr @print_type_format_u8, ptr @.str.80 }, %struct.fetch_type { ptr @.str.81, i32 2, i32 0, ptr @print_type_u16, ptr @print_type_format_u16, ptr @.str.81 }, %struct.fetch_type { ptr @.str.82, i32 4, i32 0, ptr @print_type_u32, ptr @print_type_format_u32, ptr @.str.82 }, %struct.fetch_type { ptr @.str.83, i32 8, i32 0, ptr @print_type_u64, ptr @print_type_format_u64, ptr @.str.83 }, %struct.fetch_type { ptr @.str.85, i32 1, i32 1, ptr @print_type_s8, ptr @print_type_format_s8, ptr @.str.85 }, %struct.fetch_type { ptr @.str.86, i32 2, i32 1, ptr @print_type_s16, ptr @print_type_format_s16, ptr @.str.86 }, %struct.fetch_type { ptr @.str.87, i32 4, i32 1, ptr @print_type_s32, ptr @print_type_format_s32, ptr @.str.87 }, %struct.fetch_type { ptr @.str.88, i32 8, i32 1, ptr @print_type_s64, ptr @print_type_format_s64, ptr @.str.88 }, %struct.fetch_type { ptr @.str.89, i32 1, i32 0, ptr @print_type_x8, ptr @print_type_format_x8, ptr @.str.80 }, %struct.fetch_type { ptr @.str.90, i32 2, i32 0, ptr @print_type_x16, ptr @print_type_format_x16, ptr @.str.81 }, %struct.fetch_type { ptr @.str.79, i32 4, i32 0, ptr @print_type_x32, ptr @print_type_format_x32, ptr @.str.82 }, %struct.fetch_type { ptr @.str.91, i32 8, i32 0, ptr @print_type_x64, ptr @print_type_format_x64, ptr @.str.83 }, %struct.fetch_type { ptr @.str.92, i32 4, i32 0, ptr @print_type_symbol, ptr @print_type_format_symbol, ptr @.str.82 }, %struct.fetch_type zeroinitializer], align 4
@.str.84 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"x8\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"x16\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"x64\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"(%lx)\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c", REC->__probe_ip\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"(%lx <- %lx)\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c", REC->__probe_func, REC->__probe_ret_ip\00", align 1
@.str.100 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__set_print_fmt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"kernel/trace/trace_probe.c\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"\22%s\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"{%s\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c", __get_str(%s[%d])\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c", REC->%s[%d]\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c", __get_str(%s)\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c", REC->%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ftrace_events = external dso_local global %struct.list_head, align 4
@switch.table.__set_print_fmt = private unnamed_addr constant [3 x ptr] [ptr @.str.96, ptr @.str.98, ptr @.str.100], align 4
@switch.table.__set_print_fmt.112 = private unnamed_addr constant [3 x ptr] [ptr @.str.97, ptr @.str.99, ptr @.str.100], align 4
@switch.table.find_fetch_type = private unnamed_addr constant [8 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.80, ptr @.str.82, ptr @.str.80, ptr @.str.80, ptr @.str.80, ptr @.str.83], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_u8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_u8, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_u16(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_u8, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_u32(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_u8, i32 noundef %4) #17
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ule i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_u64(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i64, ptr %1, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_u64, i64 noundef %4) #17
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ule i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_s8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = sext i8 %4 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_s8, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_s16(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i16, ptr %1, align 2
  %5 = sext i16 %4 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_s8, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_s32(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_s8, i32 noundef %4) #17
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ule i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_s64(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i64, ptr %1, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_s64, i64 noundef %4) #17
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ule i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_x8(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_x8, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_x16(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_x8, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_x32(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_x8, i32 noundef %4) #17
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ule i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_x64(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i64, ptr %1, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_x64, i64 noundef %4) #17
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ule i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_symbol(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = inttoptr i32 %4 to ptr
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @print_type_format_symbol, ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_type_string(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %4, 65536
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #17
  br label %10

7:                                                ; preds = %3
  %8 = and i32 %4, 65535
  %9 = getelementptr i8, ptr %2, i32 %8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %9) #17
  br label %10

10:                                               ; preds = %7, %6
  %11 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ule i32 %16, %18
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i32 [ 0, %10 ], [ %20, %14 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @trace_probe_log_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  store ptr %0, ptr @trace_probe_log, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @trace_probe_log_clear() local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) @trace_probe_log, i8 0, i32 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @trace_probe_log_set_index(i32 noundef %0) local_unnamed_addr #3 {
  store i32 %0, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__trace_probe_log_err(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %15, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %20, %10 ]
  %13 = phi i32 [ 0, %8 ], [ %21, %10 ]
  %14 = icmp eq i32 %13, %9
  %15 = select i1 %14, i32 %12, i32 %11
  %16 = getelementptr ptr, ptr %3, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strlen(ptr noundef %17)
  %19 = add i32 %12, 1
  %20 = add i32 %19, %18
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %6
  br i1 %22, label %23, label %10

23:                                               ; preds = %10, %5
  %24 = phi i32 [ 0, %5 ], [ %20, %10 ]
  %25 = phi i32 [ 0, %5 ], [ %15, %10 ]
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4
  %31 = icmp slt i32 %30, %29
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 1), align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi i32 [ %46, %36 ], [ 0, %33 ]
  %38 = phi ptr [ %45, %36 ], [ %26, %33 ]
  %39 = getelementptr ptr, ptr %34, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @strlen(ptr noundef %40)
  %42 = tail call ptr @strcpy(ptr noundef %38, ptr noundef %40)
  %43 = getelementptr i8, ptr %38, i32 %41
  store i8 32, ptr %43, align 1
  %44 = add i32 %41, 1
  %45 = getelementptr i8, ptr %38, i32 %44
  %46 = add nuw nsw i32 %37, 1
  %47 = icmp slt i32 %46, %35
  br i1 %47, label %36, label %48

48:                                               ; preds = %36, %28
  %49 = phi ptr [ %26, %28 ], [ %45, %36 ]
  %50 = getelementptr i8, ptr %49, i32 -1
  store i8 0, ptr %50, align 1
  %51 = load ptr, ptr @trace_probe_log, align 4
  %52 = trunc i32 %1 to i8
  %53 = add i32 %25, %0
  %54 = select i1 %31, i32 %53, i32 %24
  %55 = trunc i32 %54 to i8
  tail call void @tracing_log_err(ptr noundef null, ptr noundef %51, ptr noundef nonnull %26, ptr noundef nonnull @trace_probe_err_text, i8 noundef zeroext %52, i8 noundef zeroext %55) #17
  tail call void @kfree(ptr noundef nonnull %26) #17
  br label %56

56:                                               ; preds = %48, %23, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_log_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @traceprobe_split_symbol_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @strpbrk(ptr noundef %0, ptr noundef nonnull @.str.9)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @_kstrtol(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %1) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  store i8 0, ptr %5, align 1
  br label %12

11:                                               ; preds = %4
  store i32 0, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %7, %2
  %13 = phi i32 [ -22, %2 ], [ %8, %7 ], [ 0, %11 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @traceprobe_parse_event_name(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = tail call ptr @strchr(ptr noundef %5, i32 noundef 47)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call ptr @strchr(ptr noundef %5, i32 noundef 46)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @__trace_probe_log_err(i32 noundef %3, i32 noundef 12)
  br label %97

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  %17 = ptrtoint ptr %5 to i32
  %18 = sub i32 %16, %17
  %19 = add i32 %18, 1
  %20 = icmp sgt i32 %19, 64
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call void @__trace_probe_log_err(i32 noundef %3, i32 noundef 13)
  br label %97

22:                                               ; preds = %15
  %23 = tail call i32 @strlcpy(ptr noundef %2, ptr noundef %5, i32 noundef %19) #17
  %24 = load i8, ptr %2, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 3
  %29 = icmp ne i8 %28, 0
  %30 = icmp eq i8 %24, 95
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %2, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %49, %32
  %37 = phi i8 [ %51, %49 ], [ %34, %32 ]
  %38 = phi ptr [ %50, %49 ], [ %33, %32 ]
  %39 = zext i8 %37 to i32
  %40 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 3
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = add nsw i32 %39, -48
  %46 = icmp ult i32 %45, 10
  %47 = icmp eq i8 %37, 95
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %36
  %50 = getelementptr i8, ptr %38, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %36

53:                                               ; preds = %44, %22
  tail call void @__trace_probe_log_err(i32 noundef %3, i32 noundef 14)
  br label %97

54:                                               ; preds = %49, %32
  store ptr %2, ptr %1, align 4
  %55 = getelementptr i8, ptr %12, i32 1
  store ptr %55, ptr %0, align 4
  %56 = add i32 %19, %3
  br label %57

57:                                               ; preds = %54, %8
  %58 = phi i32 [ %56, %54 ], [ %3, %8 ]
  %59 = phi ptr [ %55, %54 ], [ %5, %8 ]
  %60 = tail call i32 @strlen(ptr noundef %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @__trace_probe_log_err(i32 noundef %58, i32 noundef 15)
  br label %97

63:                                               ; preds = %57
  %64 = icmp sgt i32 %60, 64
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  tail call void @__trace_probe_log_err(i32 noundef %58, i32 noundef 16)
  br label %97

66:                                               ; preds = %63
  %67 = load i8, ptr %59, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 3
  %72 = icmp ne i8 %71, 0
  %73 = icmp eq i8 %67, 95
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %66
  %76 = getelementptr i8, ptr %59, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %92, %75
  %80 = phi i8 [ %94, %92 ], [ %77, %75 ]
  %81 = phi ptr [ %93, %92 ], [ %76, %75 ]
  %82 = zext i8 %80 to i32
  %83 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 3
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = add nsw i32 %82, -48
  %89 = icmp ult i32 %88, 10
  %90 = icmp eq i8 %80, 95
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87, %79
  %93 = getelementptr i8, ptr %81, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %97, label %79

96:                                               ; preds = %87, %66
  tail call void @__trace_probe_log_err(i32 noundef %58, i32 noundef 17)
  br label %97

97:                                               ; preds = %96, %92, %75, %65, %62, %53, %21, %14
  %98 = phi i32 [ -22, %14 ], [ -22, %21 ], [ -22, %62 ], [ -22, %65 ], [ -22, %96 ], [ -22, %53 ], [ 0, %75 ], [ 0, %92 ]
  ret i32 %98
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @traceprobe_parse_probe_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 4
  %7 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1
  %8 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = tail call ptr @strchr(ptr noundef %2, i32 noundef 61)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %2 to i32
  %16 = sub i32 %14, %15
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 43)
  br label %376

19:                                               ; preds = %13
  %20 = icmp eq ptr %11, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 44)
  br label %376

22:                                               ; preds = %19
  %23 = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %16, i32 noundef 3264) #17
  %24 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %11, i32 1
  br label %30

26:                                               ; preds = %4
  %27 = add i32 %1, 1
  %28 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %27) #17
  %29 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 4
  store ptr %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi ptr [ %23, %22 ], [ %28, %26 ]
  %32 = phi ptr [ %25, %22 ], [ %2, %26 ]
  %33 = icmp eq ptr %31, null
  br i1 %33, label %376, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %31, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 3
  %40 = icmp ne i8 %39, 0
  %41 = icmp eq i8 %35, 95
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %34
  %44 = getelementptr i8, ptr %31, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %60, %43
  %48 = phi i8 [ %62, %60 ], [ %45, %43 ]
  %49 = phi ptr [ %61, %60 ], [ %44, %43 ]
  %50 = zext i8 %48 to i32
  %51 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 3
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = add nsw i32 %50, -48
  %57 = icmp ult i32 %56, 10
  %58 = icmp eq i8 %48, 95
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %47
  %61 = getelementptr i8, ptr %49, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %47

64:                                               ; preds = %55, %34
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 45)
  br label %376

65:                                               ; preds = %60, %43
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.66, ptr noundef nonnull %31) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.67, ptr noundef nonnull %31) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.68, ptr noundef nonnull %31) #17
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.69, ptr noundef nonnull %31) #17
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.70, ptr noundef nonnull %31) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.71, ptr noundef nonnull %31) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.72, ptr noundef nonnull %31) #17
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.73, ptr noundef nonnull %31) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %86
  %90 = icmp sgt i32 %1, 0
  br i1 %90, label %94, label %101

91:                                               ; preds = %94
  %92 = add nuw nsw i32 %95, 1
  %93 = icmp eq i32 %92, %1
  br i1 %93, label %101, label %94

94:                                               ; preds = %91, %89
  %95 = phi i32 [ %92, %91 ], [ 0, %89 ]
  %96 = getelementptr %struct.probe_arg, ptr %6, i32 %95, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 @strcmp(ptr noundef %97, ptr noundef nonnull %31) #17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %91

100:                                              ; preds = %94, %86, %83, %80, %77, %74, %71, %68, %65
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 46)
  br label %376

101:                                              ; preds = %91, %89
  %102 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 2
  %103 = ptrtoint ptr %32 to i32
  %104 = ptrtoint ptr %2 to i32
  %105 = sub i32 %103, %104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !8
  %106 = tail call noalias ptr @kstrdup(ptr noundef %32, i32 noundef 3264) #17
  %107 = icmp eq ptr %106, null
  br i1 %107, label %374, label %108

108:                                              ; preds = %101
  %109 = tail call i32 @strlen(ptr noundef nonnull %106) #17
  %110 = icmp sgt i32 %109, 63
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  tail call void @__trace_probe_log_err(i32 noundef %105, i32 noundef 47) #17
  br label %372

112:                                              ; preds = %108
  %113 = icmp eq i32 %109, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  tail call void @__trace_probe_log_err(i32 noundef %105, i32 noundef 48) #17
  br label %372

115:                                              ; preds = %112
  %116 = tail call noalias ptr @kstrdup(ptr noundef nonnull %106, i32 noundef 3264) #17
  %117 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 5
  store ptr %116, ptr %117, align 4
  %118 = icmp eq ptr %116, null
  br i1 %118, label %372, label %119

119:                                              ; preds = %115
  %120 = tail call ptr @strchr(ptr noundef nonnull %106, i32 noundef 58) #17
  %121 = icmp eq ptr %120, null
  br i1 %121, label %166, label %122

122:                                              ; preds = %119
  store i8 0, ptr %120, align 1
  %123 = getelementptr i8, ptr %120, i32 1
  %124 = tail call ptr @strchr(ptr noundef %123, i32 noundef 91) #17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %166, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %124, i32 1
  store i8 0, ptr %124, align 1
  %128 = tail call ptr @strchr(ptr noundef %127, i32 noundef 93) #17
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = tail call i32 @strlen(ptr noundef %127) #17
  %132 = getelementptr i8, ptr %127, i32 %131
  %133 = ptrtoint ptr %132 to i32
  %134 = ptrtoint ptr %106 to i32
  %135 = sub i32 %105, %134
  %136 = add i32 %135, %133
  tail call void @__trace_probe_log_err(i32 noundef %136, i32 noundef 36) #17
  br label %372

137:                                              ; preds = %126
  %138 = getelementptr i8, ptr %128, i32 1
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %128, i32 %105
  %143 = getelementptr i8, ptr %142, i32 1
  %144 = ptrtoint ptr %143 to i32
  %145 = ptrtoint ptr %106 to i32
  %146 = sub i32 %144, %145
  tail call void @__trace_probe_log_err(i32 noundef %146, i32 noundef 37) #17
  br label %372

147:                                              ; preds = %137
  store i8 0, ptr %128, align 1
  %148 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 3
  %149 = tail call i32 @kstrtouint(ptr noundef %127, i32 noundef 0, ptr noundef %148) #17
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, ptr %148, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151, %147
  %155 = getelementptr i8, ptr %127, i32 %105
  %156 = ptrtoint ptr %155 to i32
  %157 = ptrtoint ptr %106 to i32
  %158 = sub i32 %156, %157
  tail call void @__trace_probe_log_err(i32 noundef %158, i32 noundef 38) #17
  br label %372

159:                                              ; preds = %151
  %160 = icmp ugt i32 %152, 64
  br i1 %160, label %161, label %166

161:                                              ; preds = %159
  %162 = getelementptr i8, ptr %127, i32 %105
  %163 = ptrtoint ptr %162 to i32
  %164 = ptrtoint ptr %106 to i32
  %165 = sub i32 %163, %164
  tail call void @__trace_probe_log_err(i32 noundef %165, i32 noundef 39) #17
  br label %372

166:                                              ; preds = %159, %122, %119
  %167 = phi ptr [ %123, %159 ], [ %123, %122 ], [ null, %119 ]
  %168 = tail call i32 @strcmp(ptr noundef nonnull %106, ptr noundef nonnull dereferenceable(6) @.str.74) #17
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = tail call i32 @strncmp(ptr noundef nonnull %106, ptr noundef nonnull dereferenceable(3) @.str.75, i32 noundef 2) #17
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %170, %166
  %174 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %372

177:                                              ; preds = %173
  %178 = icmp eq ptr %167, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %177
  %180 = tail call i32 @strcmp(ptr noundef nonnull %167, ptr noundef nonnull dereferenceable(7) @.str.76) #17
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %372

182:                                              ; preds = %179, %177
  %183 = tail call fastcc ptr @find_fetch_type(ptr noundef nonnull @.str.76) #17
  br label %186

184:                                              ; preds = %170
  %185 = tail call fastcc ptr @find_fetch_type(ptr noundef %167) #17
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi ptr [ %185, %184 ], [ %183, %182 ]
  %188 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 7
  store ptr %187, ptr %188, align 4
  %189 = icmp eq ptr %187, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = icmp eq ptr %167, null
  %192 = ptrtoint ptr %167 to i32
  %193 = ptrtoint ptr %106 to i32
  %194 = sub i32 %192, %193
  %195 = select i1 %191, i32 0, i32 %194
  %196 = add i32 %195, %105
  tail call void @__trace_probe_log_err(i32 noundef %196, i32 noundef 40) #17
  br label %372

197:                                              ; preds = %186
  %198 = load i32, ptr %102, align 4
  %199 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 2
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.fetch_type, ptr %187, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 3
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i32 1, i32 %203
  %206 = mul i32 %205, %201
  %207 = add i32 %206, %198
  store i32 %207, ptr %102, align 4
  br i1 %204, label %222, label %208

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.fetch_type, ptr %187, i32 0, i32 5
  %210 = load ptr, ptr %209, align 4
  %211 = tail call i32 @strlen(ptr noundef %210) #17
  %212 = add i32 %211, 6
  %213 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %212, i32 noundef 3264) #18
  %214 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 6
  store ptr %213, ptr %214, align 4
  %215 = icmp eq ptr %213, null
  br i1 %215, label %372, label %216

216:                                              ; preds = %208
  %217 = load i32, ptr %202, align 4
  %218 = load ptr, ptr %188, align 4
  %219 = getelementptr inbounds %struct.fetch_type, ptr %218, i32 0, i32 5
  %220 = load ptr, ptr %219, align 4
  %221 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %213, i32 noundef %212, ptr noundef nonnull @.str.77, ptr noundef %220, i32 noundef %217) #17
  br label %222

222:                                              ; preds = %216, %197
  %223 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %224 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %223, i32 noundef 3520, i32 noundef 192) #19
  store ptr %224, ptr %5, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %372, label %226

226:                                              ; preds = %222
  %227 = getelementptr %struct.fetch_insn, ptr %224, i32 15
  store i32 20, ptr %227, align 4
  %228 = call fastcc i32 @parse_probe_arg(ptr noundef nonnull %106, ptr noundef nonnull %5, ptr noundef %227, i32 noundef %3, i32 noundef %105) #17
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %356

230:                                              ; preds = %226
  %231 = load ptr, ptr %188, align 4
  %232 = load ptr, ptr %231, align 4
  %233 = tail call i32 @strcmp(ptr noundef %232, ptr noundef nonnull dereferenceable(7) @.str.76) #17
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = tail call i32 @strcmp(ptr noundef %232, ptr noundef nonnull dereferenceable(8) @.str.78) #17
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %276

238:                                              ; preds = %235, %230
  %239 = load ptr, ptr %5, align 4
  %240 = load i32, ptr %239, align 4
  switch i32 %240, label %241 [
    i32 5, label %251
    i32 6, label %251
    i32 9, label %251
    i32 19, label %251
    i32 10, label %248
    i32 11, label %248
  ]

241:                                              ; preds = %238
  %242 = icmp eq ptr %167, null
  %243 = ptrtoint ptr %167 to i32
  %244 = ptrtoint ptr %106 to i32
  %245 = sub i32 %243, %244
  %246 = select i1 %242, i32 0, i32 %245
  %247 = add i32 %246, %105
  tail call void @__trace_probe_log_err(i32 noundef %247, i32 noundef 41) #17
  br label %356

248:                                              ; preds = %238, %238
  %249 = load i32, ptr %202, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %248, %238, %238, %238, %238
  %252 = getelementptr %struct.fetch_insn, ptr %239, i32 1
  store ptr %252, ptr %5, align 4
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %251
  tail call void @__trace_probe_log_err(i32 noundef %105, i32 noundef 30) #17
  br label %356

256:                                              ; preds = %248
  %257 = tail call i32 @strcmp(ptr noundef %232, ptr noundef nonnull dereferenceable(8) @.str.78) #17
  %258 = icmp eq i32 %257, 0
  %259 = icmp eq i32 %240, 11
  %260 = select i1 %258, i1 true, i1 %259
  br i1 %260, label %267, label %265

261:                                              ; preds = %251
  %262 = load ptr, ptr %231, align 4
  %263 = tail call i32 @strcmp(ptr noundef %262, ptr noundef nonnull dereferenceable(8) @.str.78) #17
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %261, %256
  %266 = phi ptr [ %252, %261 ], [ %239, %256 ]
  br label %267

267:                                              ; preds = %265, %261, %256
  %268 = phi ptr [ %266, %265 ], [ %252, %261 ], [ %239, %256 ]
  %269 = phi i32 [ 15, %265 ], [ 16, %261 ], [ 16, %256 ]
  store i32 %269, ptr %268, align 4
  %270 = load ptr, ptr %188, align 4
  %271 = getelementptr inbounds %struct.fetch_type, ptr %270, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = load ptr, ptr %5, align 4
  %274 = getelementptr inbounds %struct.fetch_insn, ptr %273, i32 0, i32 1
  store i32 %272, ptr %274, align 4
  %275 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %1, i32 1
  store i8 1, ptr %275, align 4
  br label %302

276:                                              ; preds = %235
  %277 = load ptr, ptr %5, align 4
  %278 = load i32, ptr %277, align 4
  switch i32 %278, label %291 [
    i32 10, label %279
    i32 11, label %285
  ]

279:                                              ; preds = %276
  store i32 13, ptr %277, align 4
  %280 = load ptr, ptr %188, align 4
  %281 = getelementptr inbounds %struct.fetch_type, ptr %280, i32 0, i32 1
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %5, align 4
  %284 = getelementptr inbounds %struct.fetch_insn, ptr %283, i32 0, i32 1
  store i32 %282, ptr %284, align 4
  br label %302

285:                                              ; preds = %276
  store i32 14, ptr %277, align 4
  %286 = load ptr, ptr %188, align 4
  %287 = getelementptr inbounds %struct.fetch_type, ptr %286, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = load ptr, ptr %5, align 4
  %290 = getelementptr inbounds %struct.fetch_insn, ptr %289, i32 0, i32 1
  store i32 %288, ptr %290, align 4
  br label %302

291:                                              ; preds = %276
  %292 = getelementptr %struct.fetch_insn, ptr %277, i32 1
  store ptr %292, ptr %5, align 4
  %293 = load i32, ptr %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  tail call void @__trace_probe_log_err(i32 noundef %105, i32 noundef 30) #17
  br label %356

296:                                              ; preds = %291
  store i32 12, ptr %292, align 4
  %297 = load ptr, ptr %188, align 4
  %298 = getelementptr inbounds %struct.fetch_type, ptr %297, i32 0, i32 1
  %299 = load i32, ptr %298, align 4
  %300 = load ptr, ptr %5, align 4
  %301 = getelementptr inbounds %struct.fetch_insn, ptr %300, i32 0, i32 1
  store i32 %299, ptr %301, align 4
  br label %302

302:                                              ; preds = %296, %285, %279, %267
  %303 = phi ptr [ %283, %279 ], [ %300, %296 ], [ %289, %285 ], [ %273, %267 ]
  %304 = icmp eq ptr %167, null
  br i1 %304, label %314, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr %188, align 4
  %307 = call fastcc i32 @__parse_bitfield_probe_arg(ptr noundef nonnull %167, ptr noundef %306, ptr noundef nonnull %5) #17
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %305
  %310 = getelementptr i8, ptr %167, i32 %105
  %311 = ptrtoint ptr %310 to i32
  %312 = ptrtoint ptr %106 to i32
  %313 = sub i32 %311, %312
  tail call void @__trace_probe_log_err(i32 noundef %313, i32 noundef 42) #17
  br label %356

314:                                              ; preds = %305, %302
  %315 = load i32, ptr %202, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  %318 = load ptr, ptr %5, align 4
  br label %337

319:                                              ; preds = %314
  %320 = load i32, ptr %303, align 4
  switch i32 %320, label %321 [
    i32 13, label %327
    i32 15, label %327
    i32 16, label %327
  ]

321:                                              ; preds = %319
  %322 = ptrtoint ptr %167 to i32
  %323 = ptrtoint ptr %106 to i32
  %324 = sub i32 %322, %323
  %325 = select i1 %304, i32 0, i32 %324
  %326 = add i32 %325, %105
  tail call void @__trace_probe_log_err(i32 noundef %326, i32 noundef 41) #17
  br label %356

327:                                              ; preds = %319, %319, %319
  %328 = load ptr, ptr %5, align 4
  %329 = getelementptr %struct.fetch_insn, ptr %328, i32 1
  store ptr %329, ptr %5, align 4
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %327
  tail call void @__trace_probe_log_err(i32 noundef %105, i32 noundef 30) #17
  br label %356

333:                                              ; preds = %327
  store i32 18, ptr %329, align 4
  %334 = load i32, ptr %202, align 4
  %335 = load ptr, ptr %5, align 4
  %336 = getelementptr inbounds %struct.fetch_insn, ptr %335, i32 0, i32 1
  store i32 %334, ptr %336, align 4
  br label %337

337:                                              ; preds = %333, %317
  %338 = phi ptr [ %318, %317 ], [ %335, %333 ]
  %339 = getelementptr %struct.fetch_insn, ptr %338, i32 1
  store ptr %339, ptr %5, align 4
  store i32 20, ptr %339, align 4
  %340 = load ptr, ptr %5, align 4
  %341 = ptrtoint ptr %340 to i32
  %342 = ptrtoint ptr %224 to i32
  %343 = sub i32 %341, %342
  %344 = sdiv exact i32 %343, 12
  %345 = add nsw i32 %344, 1
  %346 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %345, i32 12) #17
  %347 = extractvalue { i32, i1 } %346, 1
  br i1 %347, label %348, label %349, !prof !9

348:                                              ; preds = %337
  store ptr null, ptr %7, align 4
  br label %356

349:                                              ; preds = %337
  %350 = extractvalue { i32, i1 } %346, 0
  %351 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %350, i32 noundef 3520) #18
  store ptr %351, ptr %7, align 4
  %352 = icmp eq ptr %351, null
  br i1 %352, label %356, label %353

353:                                              ; preds = %349
  %354 = sub i32 12, %342
  %355 = add i32 %354, %341
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %351, ptr nonnull align 8 %224, i32 %355, i1 false) #17
  br label %370

356:                                              ; preds = %349, %348, %332, %321, %309, %295, %255, %241, %226
  %357 = phi i32 [ %228, %226 ], [ %307, %309 ], [ -22, %321 ], [ -22, %332 ], [ -22, %295 ], [ -22, %241 ], [ -22, %255 ], [ -12, %349 ], [ -12, %348 ]
  %358 = getelementptr %struct.fetch_insn, ptr %224, i32 16
  %359 = icmp ult ptr %224, %358
  br i1 %359, label %360, label %370

360:                                              ; preds = %366, %356
  %361 = phi ptr [ %367, %366 ], [ %224, %356 ]
  %362 = load i32, ptr %361, align 4
  switch i32 %362, label %366 [
    i32 21, label %363
    i32 9, label %363
  ]

363:                                              ; preds = %360, %360
  %364 = getelementptr inbounds %struct.fetch_insn, ptr %361, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  tail call void @kfree(ptr noundef %365) #17
  br label %366

366:                                              ; preds = %363, %360
  %367 = getelementptr %struct.fetch_insn, ptr %361, i32 1
  %368 = icmp ult ptr %367, %358
  br i1 %368, label %360, label %369

369:                                              ; preds = %366
  store ptr %367, ptr %5, align 4
  br label %370

370:                                              ; preds = %369, %356, %353
  %371 = phi i32 [ 0, %353 ], [ %357, %356 ], [ %357, %369 ]
  tail call void @kfree(ptr noundef nonnull %224) #17
  br label %372

372:                                              ; preds = %370, %222, %208, %190, %179, %173, %161, %154, %141, %130, %115, %114, %111
  %373 = phi i32 [ -22, %111 ], [ -22, %114 ], [ -22, %141 ], [ -22, %154 ], [ -22, %161 ], [ -22, %173 ], [ -22, %179 ], [ %371, %370 ], [ -12, %222 ], [ -12, %208 ], [ -22, %190 ], [ -22, %130 ], [ -12, %115 ]
  tail call void @kfree(ptr noundef nonnull %106) #17
  br label %374

374:                                              ; preds = %372, %101
  %375 = phi i32 [ %373, %372 ], [ -12, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %376

376:                                              ; preds = %374, %100, %64, %30, %21, %18
  %377 = phi i32 [ -22, %18 ], [ -22, %21 ], [ -22, %100 ], [ %375, %374 ], [ -22, %64 ], [ -12, %30 ]
  ret i32 %377
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @traceprobe_free_probe_arg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %11, %10 ], [ %2, %1 ]
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %10 [
    i32 20, label %13
    i32 21, label %7
    i32 9, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.fetch_insn, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #17
  br label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr %struct.fetch_insn, ptr %5, i32 1
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %10, %4
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %16) #17
  %17 = getelementptr inbounds %struct.probe_arg, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #17
  %19 = getelementptr inbounds %struct.probe_arg, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #17
  %21 = getelementptr inbounds %struct.probe_arg, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @traceprobe_update_arg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %42, %1
  %6 = phi i8 [ %43, %42 ], [ 0, %1 ]
  %7 = phi ptr [ %44, %42 ], [ %3, %1 ]
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %42 [
    i32 20, label %46
    i32 21, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr %struct.fetch_insn, ptr %7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fetch_insn, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @strpbrk(ptr noundef %15, ptr noundef nonnull @.str.9)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i8, ptr %16, align 1
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i8 [ %19, %18 ], [ %6, %13 ]
  %22 = call ptr @strpbrk(ptr noundef %15, ptr noundef nonnull @.str.9) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = call i32 @_kstrtol(ptr noundef nonnull %22, i32 noundef 0, ptr noundef nonnull %2) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  store i8 0, ptr %22, align 1
  %28 = load ptr, ptr %14, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, ptr %2, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi ptr [ %15, %29 ], [ %28, %27 ]
  %32 = call i32 @kallsyms_lookup_name(ptr noundef %31) #17
  %33 = getelementptr %struct.fetch_insn, ptr %7, i32 1, i32 1
  store i32 %32, ptr %33, align 4
  br i1 %17, label %36, label %34

34:                                               ; preds = %30
  store i8 %21, ptr %16, align 1
  %35 = load i32, ptr %33, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ %32, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %2, align 4
  %41 = add i32 %40, %37
  store i32 %41, ptr %33, align 4
  br label %42

42:                                               ; preds = %39, %5
  %43 = phi i8 [ %21, %39 ], [ %6, %5 ]
  %44 = getelementptr %struct.fetch_insn, ptr %7, i32 1
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %5

46:                                               ; preds = %42, %36, %24, %9, %5, %1
  %47 = phi i32 [ 0, %1 ], [ %25, %24 ], [ 0, %42 ], [ 0, %5 ], [ -2, %36 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @traceprobe_set_print_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @__set_print_fmt(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef %1)
  %6 = add i32 %5, 1
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @__set_print_fmt(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %6, i32 noundef %1)
  %11 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 4
  store ptr %7, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 0, %9 ], [ -12, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__set_print_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp ult i32 %3, 3
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load i1, ptr @__set_print_fmt.__already_done, align 1
  br i1 %7, label %136, label %8, !prof !10

8:                                                ; preds = %6
  store i1 true, ptr @__set_print_fmt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.101, i32 noundef 885, i32 noundef 9, ptr noundef null) #17
  br label %136

9:                                                ; preds = %4
  %10 = getelementptr inbounds [3 x ptr], ptr @switch.table.__set_print_fmt, i32 0, i32 %3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds [3 x ptr], ptr @switch.table.__set_print_fmt.112, i32 0, i32 %3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq i32 %2, 0
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.102, ptr noundef nonnull %11)
  %16 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 4
  br label %21

21:                                               ; preds = %70, %19
  %22 = phi i32 [ %15, %19 ], [ %71, %70 ]
  %23 = phi i32 [ 0, %19 ], [ %72, %70 ]
  %24 = getelementptr i8, ptr %1, i32 %22
  %25 = sub i32 %2, %22
  %26 = select i1 %14, i32 0, i32 %25
  %27 = getelementptr %struct.probe_arg, ptr %20, i32 %23, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %24, i32 noundef %26, ptr noundef nonnull @.str.103, ptr noundef %28)
  %30 = add i32 %29, %22
  %31 = getelementptr %struct.probe_arg, ptr %20, i32 %23, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr i8, ptr %1, i32 %30
  %35 = sub i32 %2, %30
  %36 = select i1 %14, i32 0, i32 %35
  %37 = getelementptr %struct.probe_arg, ptr %20, i32 %23, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fetch_type, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  br i1 %33, label %67, label %41

41:                                               ; preds = %21
  %42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @.str.104, ptr noundef %40)
  %43 = add i32 %42, %30
  %44 = load i32, ptr %31, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %60

46:                                               ; preds = %46, %41
  %47 = phi i32 [ %56, %46 ], [ %43, %41 ]
  %48 = phi i32 [ %57, %46 ], [ 1, %41 ]
  %49 = getelementptr i8, ptr %1, i32 %47
  %50 = sub i32 %2, %47
  %51 = select i1 %14, i32 0, i32 %50
  %52 = load ptr, ptr %37, align 4
  %53 = getelementptr inbounds %struct.fetch_type, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %49, i32 noundef %51, ptr noundef nonnull @.str.105, ptr noundef %54)
  %56 = add i32 %55, %47
  %57 = add nuw i32 %48, 1
  %58 = load i32, ptr %31, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %46, label %60

60:                                               ; preds = %46, %41
  %61 = phi i32 [ %43, %41 ], [ %56, %46 ]
  %62 = getelementptr i8, ptr %1, i32 %61
  %63 = sub i32 %2, %61
  %64 = select i1 %14, i32 0, i32 %63
  %65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %62, i32 noundef %64, ptr noundef nonnull @.str.106)
  %66 = add i32 %65, %61
  br label %70

67:                                               ; preds = %21
  %68 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @.str.107, ptr noundef %40)
  %69 = add i32 %68, %30
  br label %70

70:                                               ; preds = %67, %60
  %71 = phi i32 [ %66, %60 ], [ %69, %67 ]
  %72 = add nuw i32 %23, 1
  %73 = load i32, ptr %16, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %21, label %75

75:                                               ; preds = %70, %9
  %76 = phi i32 [ %15, %9 ], [ %71, %70 ]
  %77 = getelementptr i8, ptr %1, i32 %76
  %78 = sub i32 %2, %76
  %79 = select i1 %14, i32 0, i32 %78
  %80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %77, i32 noundef %79, ptr noundef nonnull @.str.102, ptr noundef nonnull %13)
  %81 = add i32 %80, %76
  %82 = load i32, ptr %16, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %136, label %84

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 4
  br label %86

86:                                               ; preds = %131, %84
  %87 = phi i32 [ %81, %84 ], [ %132, %131 ]
  %88 = phi i32 [ 0, %84 ], [ %133, %131 ]
  %89 = getelementptr %struct.probe_arg, ptr %85, i32 %88, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr %struct.probe_arg, ptr %85, i32 %88, i32 7
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 @strcmp(ptr noundef %94, ptr noundef nonnull dereferenceable(7) @.str.76)
  %96 = icmp eq i32 %95, 0
  br i1 %91, label %117, label %97

97:                                               ; preds = %86
  br i1 %96, label %102, label %98

98:                                               ; preds = %97
  %99 = tail call i32 @strcmp(ptr noundef %94, ptr noundef nonnull dereferenceable(8) @.str.78)
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr @.str.108, ptr @.str.109
  br label %102

102:                                              ; preds = %98, %97
  %103 = phi ptr [ @.str.108, %97 ], [ %101, %98 ]
  %104 = getelementptr %struct.probe_arg, ptr %85, i32 %88, i32 4
  br label %105

105:                                              ; preds = %105, %102
  %106 = phi i32 [ %87, %102 ], [ %113, %105 ]
  %107 = phi i32 [ 0, %102 ], [ %114, %105 ]
  %108 = getelementptr i8, ptr %1, i32 %106
  %109 = sub i32 %2, %106
  %110 = select i1 %14, i32 0, i32 %109
  %111 = load ptr, ptr %104, align 4
  %112 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %108, i32 noundef %110, ptr noundef nonnull %103, ptr noundef %111, i32 noundef %107)
  %113 = add i32 %112, %106
  %114 = add nuw i32 %107, 1
  %115 = load i32, ptr %89, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %105, label %131

117:                                              ; preds = %86
  br i1 %96, label %122, label %118

118:                                              ; preds = %117
  %119 = tail call i32 @strcmp(ptr noundef %94, ptr noundef nonnull dereferenceable(8) @.str.78)
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.110, ptr @.str.111
  br label %122

122:                                              ; preds = %118, %117
  %123 = phi ptr [ @.str.110, %117 ], [ %121, %118 ]
  %124 = getelementptr i8, ptr %1, i32 %87
  %125 = sub i32 %2, %87
  %126 = select i1 %14, i32 0, i32 %125
  %127 = getelementptr %struct.probe_arg, ptr %85, i32 %88, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %124, i32 noundef %126, ptr noundef nonnull %123, ptr noundef %128)
  %130 = add i32 %129, %87
  br label %131

131:                                              ; preds = %122, %105
  %132 = phi i32 [ %130, %122 ], [ %113, %105 ]
  %133 = add nuw i32 %88, 1
  %134 = load i32, ptr %16, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %86, label %136

136:                                              ; preds = %131, %75, %8, %6
  %137 = phi i32 [ 0, %8 ], [ 0, %6 ], [ %81, %75 ], [ %132, %131 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @traceprobe_define_arg_fields(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.trace_probe, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %11

7:                                                ; preds = %11
  %8 = add nuw i32 %12, 1
  %9 = load i32, ptr %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %13 = getelementptr %struct.trace_probe, ptr %2, i32 0, i32 4, i32 %12, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fetch_type, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fetch_type, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.trace_probe, ptr %2, i32 0, i32 4, i32 %12, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr %16, ptr %20
  %23 = getelementptr %struct.trace_probe, ptr %2, i32 0, i32 4, i32 %12, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 %24
  %27 = mul i32 %26, %18
  %28 = getelementptr %struct.trace_probe, ptr %2, i32 0, i32 4, i32 %12, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.trace_probe, ptr %2, i32 0, i32 4, i32 %12, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %1
  %33 = getelementptr inbounds %struct.fetch_type, ptr %14, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @trace_define_field(ptr noundef %0, ptr noundef %22, ptr noundef %29, i32 noundef %32, i32 noundef %27, i32 noundef %34, i32 noundef 0) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %7, label %37

37:                                               ; preds = %11, %7, %3
  %38 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %35, %11 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_define_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_probe_append(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load volatile ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %16, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #17
  %23 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #17
  %25 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 2, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #17
  tail call void @kfree(ptr noundef %20) #17
  %27 = getelementptr inbounds %struct.trace_probe, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %3, align 4
  %29 = load ptr, ptr %27, align 4
  %30 = getelementptr inbounds %struct.trace_probe_event, ptr %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.trace_probe_event, ptr %29, i32 0, i32 4, i32 1
  %32 = load ptr, ptr %31, align 4
  store ptr %0, ptr %31, align 4
  store ptr %30, ptr %0, align 4
  store ptr %32, ptr %16, align 4
  store volatile ptr %0, ptr %32, align 4
  br label %33

33:                                               ; preds = %15, %11, %8
  %34 = phi i32 [ 0, %15 ], [ -16, %11 ], [ -16, %8 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_probe_unlink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %2, align 4
  %6 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 2, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #17
  tail call void @kfree(ptr noundef %7) #17
  br label %18

18:                                               ; preds = %11, %1
  store ptr null, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_probe_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %7 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %6
  tail call void @traceprobe_free_probe_arg(ptr noundef %7)
  %8 = add nuw i32 %6, 1
  %9 = load i32, ptr %2, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %5, label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %16, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 4
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #17
  %27 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #17
  %29 = getelementptr inbounds %struct.trace_probe_event, ptr %20, i32 0, i32 2, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #17
  tail call void @kfree(ptr noundef %20) #17
  br label %31

31:                                               ; preds = %24, %15
  store ptr null, ptr %12, align 4
  br label %32

32:                                               ; preds = %31, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_probe_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = select i1 %3, i32 148, i32 132
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #18
  %11 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 3
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 3, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 1, i32 6
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 1, i32 6, i32 1
  store ptr %16, ptr %17, align 32
  %18 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 4
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 4, i32 1
  store volatile ptr %0, ptr %0, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %19, align 64
  store ptr %18, ptr %0, align 4
  store ptr %18, ptr %20, align 4
  store volatile ptr %0, ptr %18, align 4
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 1
  %22 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 1
  store ptr %21, ptr %22, align 16
  %23 = tail call noalias ptr @kstrdup(ptr noundef nonnull %1, i32 noundef 3264) #17
  %24 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %13
  %27 = tail call noalias ptr @kstrdup(ptr noundef nonnull %2, i32 noundef 3264) #17
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.trace_probe_event, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.trace_probe_event, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %13
  tail call void @trace_probe_cleanup(ptr noundef %0)
  br label %35

35:                                               ; preds = %34, %26, %8, %4
  %36 = phi i32 [ -12, %34 ], [ -22, %4 ], [ -12, %8 ], [ 0, %26 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_probe_register_event_call(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 2, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %18, label %14

14:                                               ; preds = %1
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %13, align 4
  br label %18

18:                                               ; preds = %16, %14, %1
  %19 = phi ptr [ %17, %16 ], [ null, %14 ], [ %13, %1 ]
  %20 = load ptr, ptr @ftrace_events, align 4
  %21 = icmp eq ptr %20, @ftrace_events
  br i1 %21, label %53, label %22

22:                                               ; preds = %48, %18
  %23 = phi ptr [ %49, %48 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.trace_event_call, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %22
  %29 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull %26) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.trace_event_call, ptr %23, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.trace_event_call, ptr %23, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  br i1 %35, label %42, label %38

38:                                               ; preds = %31
  %39 = icmp eq ptr %37, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %37, align 4
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi ptr [ %41, %40 ], [ %37, %31 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull %43) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %42, %38, %28, %22
  %49 = load ptr, ptr %23, align 4
  %50 = icmp eq ptr %49, @ftrace_events
  br i1 %50, label %53, label %22

51:                                               ; preds = %45
  %52 = icmp eq ptr %23, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %51, %48, %18
  %54 = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 2, i32 3
  %55 = tail call i32 @register_trace_event(ptr noundef %54) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @trace_add_event_call(ptr noundef %4) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @unregister_trace_event(ptr noundef %54) #17
  br label %62

62:                                               ; preds = %60, %57, %53, %51
  %63 = phi i32 [ -17, %51 ], [ -19, %53 ], [ %58, %60 ], [ 0, %57 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trace_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_add_event_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_trace_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_probe_add_file(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 12) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.event_file_link, ptr %4, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.event_file_link, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %11, ptr %7, align 4
  store ptr %13, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  store volatile ptr %7, ptr %13, align 4
  store ptr %7, ptr %12, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @trace_probe_get_file_link(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 3
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -4
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_probe_remove_file(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 3
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @kvfree_call_rcu(ptr noundef null, ptr noundef nonnull %15) #17
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.trace_probe_event, ptr %22, i32 0, i32 3
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, ptr %22, align 4
  %28 = and i32 %27, -2
  store i32 %28, ptr %22, align 4
  br label %29

29:                                               ; preds = %26, %17, %14, %6
  %30 = phi i32 [ -2, %14 ], [ 0, %26 ], [ 0, %17 ], [ -2, %6 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @trace_probe_compare_arg_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_probe, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = add nuw i32 %4, 1
  br label %44

10:                                               ; preds = %2
  %11 = icmp ugt i32 %4, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %44, label %16

14:                                               ; preds = %10
  %15 = add nuw i32 %6, 1
  br label %44

16:                                               ; preds = %41, %12
  %17 = phi i32 [ %42, %41 ], [ 0, %12 ]
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %17, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.trace_probe, ptr %1, i32 0, i32 4, i32 %17, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %17, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.trace_probe, ptr %1, i32 0, i32 4, i32 %17, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %17, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.trace_probe, ptr %1, i32 0, i32 4, i32 %17, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %25, %19, %16
  %39 = phi i32 [ %17, %31 ], [ %17, %25 ], [ %17, %19 ], [ %6, %16 ]
  %40 = add nuw i32 %39, 1
  br label %44

41:                                               ; preds = %31
  %42 = add nuw i32 %17, 1
  %43 = icmp eq i32 %42, %4
  br i1 %43, label %44, label %16

44:                                               ; preds = %41, %38, %14, %12, %8
  %45 = phi i32 [ %9, %8 ], [ %15, %14 ], [ %40, %38 ], [ 0, %12 ], [ 0, %41 ]
  ret i32 %45
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_probe_match_command_args(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
  %4 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.trace_probe, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %22, %10 ], [ 0, %8 ]
  %12 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %11, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.trace_probe, ptr %0, i32 0, i32 4, i32 %11, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.11, ptr noundef %13, ptr noundef %15)
  %17 = getelementptr ptr, ptr %2, i32 %11
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  %21 = xor i1 %20, true
  %22 = add nuw nsw i32 %11, 1
  %23 = icmp eq i32 %22, %1
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %10

25:                                               ; preds = %10, %8, %3
  %26 = phi i1 [ false, %3 ], [ true, %8 ], [ %20, %10 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i1 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_probe_create(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4
  %4 = call ptr @argv_split(i32 noundef 3264, ptr noundef %0, ptr noundef nonnull %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 %1(i32 noundef %7, ptr noundef nonnull %4) #17
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  call void @argv_free(ptr noundef nonnull %4) #17
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_fetch_type(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  %4 = select i1 %3, ptr @.str.79, ptr %0
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 98
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(7) @.str.76)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %75, label %32

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = tail call ptr @strchr(ptr noundef %4, i32 noundef 47)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 1
  %15 = call i32 @_kstrtoul(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, ptr %2, align 4
  %19 = add i32 %18, -8
  %20 = call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 29)
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = trunc i32 %20 to i8
  %24 = lshr i8 -117, %23
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [8 x ptr], ptr @switch.table.find_fetch_type, i32 0, i32 %20
  %29 = load ptr, ptr %28, align 4
  %30 = call fastcc ptr @find_fetch_type(ptr noundef nonnull %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %75

31:                                               ; preds = %22, %17, %13, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %75

32:                                               ; preds = %7
  %33 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(8) @.str.78)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(3) @.str.80)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.81)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.82)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.83)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(3) @.str.85)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.86)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.87)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.88)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(3) @.str.89)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.90)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.79)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.91)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(7) @.str.92)
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, ptr getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 14), ptr null
  br label %75

75:                                               ; preds = %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %31, %27, %7
  %76 = phi ptr [ %30, %27 ], [ null, %31 ], [ @probe_fetch_types, %7 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 1), %32 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 2), %35 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 3), %38 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 4), %41 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 5), %44 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 6), %47 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 7), %50 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 8), %53 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 9), %56 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 10), %59 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 11), %62 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 12), %65 ], [ getelementptr inbounds ([16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 13), %68 ], [ %74, %71 ]
  ret ptr %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_probe_arg(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %10 = load ptr, ptr %1, align 4
  store ptr %10, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4
  %11 = load i8, ptr %0, align 1
  switch i8 %11, label %211 [
    i8 36, label %12
    i8 37, label %61
    i8 64, label %68
    i8 43, label %119
    i8 45, label %119
    i8 92, label %168
  ]

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !8
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(7) @.str.93) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = and i32 %3, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 4, ptr %10, align 4
  br label %208

20:                                               ; preds = %16
  tail call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 19) #17
  br label %209

21:                                               ; preds = %12
  %22 = tail call i32 @strncmp(ptr noundef %13, ptr noundef nonnull dereferenceable(6) @.str.94, i32 noundef 5) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %0, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 3, ptr %10, align 4
  br label %208

29:                                               ; preds = %24
  %30 = zext i8 %26 to i32
  %31 = add nsw i32 %30, -58
  %32 = icmp ult i32 %31, -10
  br i1 %32, label %60, label %33

33:                                               ; preds = %29
  %34 = call i32 @_kstrtoul(ptr noundef %25, i32 noundef 10, ptr noundef nonnull %6) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = and i32 %3, 2
  %38 = icmp ne i32 %37, 0
  %39 = load i32, ptr %6, align 4
  %40 = icmp ugt i32 %39, 2048
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 20) #17
  br label %209

43:                                               ; preds = %36
  store i32 2, ptr %10, align 4
  %44 = getelementptr inbounds %struct.fetch_insn, ptr %10, i32 0, i32 1
  store i32 %39, ptr %44, align 4
  br label %208

45:                                               ; preds = %21
  %46 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(5) @.str.95) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 6, ptr %10, align 4
  br label %208

49:                                               ; preds = %45
  %50 = and i32 %3, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fetch_insn, ptr %10, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %209

56:                                               ; preds = %52
  %57 = tail call noalias ptr @kstrdup(ptr noundef %13, i32 noundef 3264) #17
  store ptr %57, ptr %53, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %209, label %59

59:                                               ; preds = %56
  store i32 19, ptr %10, align 4
  br label %208

60:                                               ; preds = %49, %33, %29
  call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 22) #17
  br label %209

61:                                               ; preds = %5
  %62 = getelementptr i8, ptr %0, i32 1
  %63 = tail call i32 @regs_query_register_offset(ptr noundef %62) #17
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  store i32 1, ptr %10, align 4
  %66 = getelementptr inbounds %struct.fetch_insn, ptr %10, i32 0, i32 1
  store i32 %63, ptr %66, align 4
  br label %217

67:                                               ; preds = %61
  tail call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 23)
  br label %217

68:                                               ; preds = %5
  %69 = getelementptr i8, ptr %0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -58
  %73 = icmp ult i32 %72, -10
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = call i32 @_kstrtoul(ptr noundef %69, i32 noundef 0, ptr noundef nonnull %8) #17
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 24)
  br label %217

78:                                               ; preds = %74
  %79 = load ptr, ptr %7, align 4
  store i32 5, ptr %79, align 4
  %80 = load i32, ptr %8, align 4
  br label %108

81:                                               ; preds = %68
  %82 = icmp eq i8 %70, 43
  %83 = and i32 %3, 2
  %84 = icmp eq i32 %83, 0
  br i1 %82, label %85, label %95

85:                                               ; preds = %81
  br i1 %84, label %87, label %86

86:                                               ; preds = %85
  tail call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 27)
  br label %217

87:                                               ; preds = %85
  %88 = getelementptr i8, ptr %0, i32 2
  %89 = call i32 @_kstrtol(ptr noundef %88, i32 noundef 0, ptr noundef nonnull %9) #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 28)
  br label %217

92:                                               ; preds = %87
  %93 = load ptr, ptr %7, align 4
  store i32 8, ptr %93, align 4
  %94 = load i32, ptr %9, align 4
  br label %108

95:                                               ; preds = %81
  br i1 %84, label %96, label %97

96:                                               ; preds = %95
  tail call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 29)
  br label %217

97:                                               ; preds = %95
  store i32 21, ptr %10, align 4
  %98 = tail call noalias ptr @kstrdup(ptr noundef %69, i32 noundef 3264) #17
  %99 = load ptr, ptr %7, align 4
  %100 = getelementptr inbounds %struct.fetch_insn, ptr %99, i32 0, i32 1
  store ptr %98, ptr %100, align 4
  %101 = icmp eq ptr %98, null
  br i1 %101, label %217, label %102

102:                                              ; preds = %97
  %103 = getelementptr %struct.fetch_insn, ptr %99, i32 1
  store ptr %103, ptr %7, align 4
  %104 = icmp eq ptr %103, %2
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  tail call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 30)
  br label %217

106:                                              ; preds = %102
  store i32 5, ptr %103, align 4
  %107 = load ptr, ptr %7, align 4
  br label %108

108:                                              ; preds = %106, %92, %78
  %109 = phi ptr [ %93, %92 ], [ %107, %106 ], [ %79, %78 ]
  %110 = phi i32 [ %94, %92 ], [ 0, %106 ], [ %80, %78 ]
  %111 = getelementptr inbounds %struct.fetch_insn, ptr %109, i32 0, i32 1
  store i32 %110, ptr %111, align 4
  %112 = getelementptr %struct.fetch_insn, ptr %109, i32 1
  store ptr %112, ptr %7, align 4
  %113 = icmp eq ptr %112, %2
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 30)
  br label %217

115:                                              ; preds = %108
  store ptr %112, ptr %1, align 4
  store i32 10, ptr %112, align 4
  %116 = load i32, ptr %9, align 4
  %117 = load ptr, ptr %7, align 4
  %118 = getelementptr inbounds %struct.fetch_insn, ptr %117, i32 0, i32 1, i32 0, i32 1
  store i32 %116, ptr %118, align 4
  br label %211

119:                                              ; preds = %5, %5
  %120 = getelementptr i8, ptr %0, i32 1
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, 117
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i8 %11, ptr %120, align 1
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi ptr [ %120, %123 ], [ %0, %119 ]
  %126 = phi i32 [ 11, %123 ], [ 10, %119 ]
  %127 = icmp eq i8 %11, 43
  %128 = zext i1 %127 to i32
  %129 = getelementptr i8, ptr %125, i32 %128
  %130 = tail call ptr @strchr(ptr noundef %129, i32 noundef 40)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  tail call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 31)
  br label %217

133:                                              ; preds = %124
  store i8 0, ptr %130, align 1
  %134 = call i32 @_kstrtol(ptr noundef %129, i32 noundef 0, ptr noundef nonnull %9) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void @__trace_probe_log_err(i32 noundef %4, i32 noundef 32)
  br label %217

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %130, i32 1
  %139 = ptrtoint ptr %138 to i32
  %140 = ptrtoint ptr %129 to i32
  %141 = load i8, ptr %129, align 1
  %142 = icmp ne i8 %141, 45
  %143 = zext i1 %142 to i32
  %144 = add i32 %139, %4
  %145 = sub i32 %144, %140
  %146 = add i32 %145, %143
  %147 = call ptr @strrchr(ptr noundef %138, i32 noundef 41)
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = call i32 @strlen(ptr noundef %138)
  %151 = add i32 %150, %146
  call void @__trace_probe_log_err(i32 noundef %151, i32 noundef 33)
  br label %217

152:                                              ; preds = %137
  %153 = call fastcc ptr @find_fetch_type(ptr noundef null)
  store i8 0, ptr %147, align 1
  %154 = call fastcc i32 @parse_probe_arg(ptr noundef %138, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %3, i32 noundef %146)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %217

156:                                              ; preds = %152
  %157 = load ptr, ptr %7, align 4
  %158 = load i32, ptr %157, align 4
  switch i32 %158, label %160 [
    i32 6, label %159
    i32 9, label %159
  ]

159:                                              ; preds = %156, %156
  call void @__trace_probe_log_err(i32 noundef %146, i32 noundef 34)
  br label %217

160:                                              ; preds = %156
  %161 = getelementptr %struct.fetch_insn, ptr %157, i32 1
  store ptr %161, ptr %7, align 4
  %162 = icmp eq ptr %161, %2
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @__trace_probe_log_err(i32 noundef %146, i32 noundef 30)
  br label %217

164:                                              ; preds = %160
  store ptr %161, ptr %1, align 4
  store i32 %126, ptr %161, align 4
  %165 = load i32, ptr %9, align 4
  %166 = load ptr, ptr %7, align 4
  %167 = getelementptr inbounds %struct.fetch_insn, ptr %166, i32 0, i32 1, i32 0, i32 1
  store i32 %165, ptr %167, align 4
  br label %211

168:                                              ; preds = %5
  %169 = getelementptr i8, ptr %0, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, 34
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = getelementptr i8, ptr %0, i32 2
  %174 = tail call i32 @strlen(ptr noundef %173) #17
  %175 = add i32 %174, -1
  %176 = getelementptr i8, ptr %173, i32 %175
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, 34
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = add i32 %4, 2
  %181 = add i32 %180, %174
  tail call void @__trace_probe_log_err(i32 noundef %181, i32 noundef 26) #17
  br label %217

182:                                              ; preds = %172
  %183 = tail call ptr @kstrndup(ptr noundef %173, i32 noundef %175, i32 noundef 3264) #17
  %184 = icmp eq ptr %183, null
  br i1 %184, label %217, label %185

185:                                              ; preds = %182
  store i32 9, ptr %10, align 4
  %186 = load ptr, ptr %7, align 4
  %187 = getelementptr inbounds %struct.fetch_insn, ptr %186, i32 0, i32 1
  store ptr %183, ptr %187, align 4
  br label %211

188:                                              ; preds = %168
  %189 = getelementptr inbounds %struct.fetch_insn, ptr %10, i32 0, i32 1
  %190 = zext i8 %170 to i32
  %191 = add nsw i32 %190, -58
  %192 = icmp ult i32 %191, -10
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = tail call i32 @_kstrtoul(ptr noundef %169, i32 noundef 0, ptr noundef %189) #17
  br label %201

195:                                              ; preds = %188
  switch i8 %170, label %204 [
    i8 45, label %196
    i8 43, label %198
  ]

196:                                              ; preds = %195
  %197 = tail call i32 @_kstrtol(ptr noundef %169, i32 noundef 0, ptr noundef %189) #17
  br label %201

198:                                              ; preds = %195
  %199 = getelementptr i8, ptr %0, i32 2
  %200 = tail call i32 @_kstrtol(ptr noundef %199, i32 noundef 0, ptr noundef %189) #17
  br label %201

201:                                              ; preds = %198, %196, %193
  %202 = phi i32 [ %194, %193 ], [ %197, %196 ], [ %200, %198 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201, %195
  %205 = phi i32 [ %202, %201 ], [ -22, %195 ]
  %206 = add i32 %4, 1
  tail call void @__trace_probe_log_err(i32 noundef %206, i32 noundef 25)
  br label %217

207:                                              ; preds = %201
  store i32 5, ptr %10, align 4
  br label %217

208:                                              ; preds = %59, %48, %43, %28, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %211

209:                                              ; preds = %60, %56, %52, %42, %20
  %210 = phi i32 [ -22, %60 ], [ -14, %52 ], [ -12, %56 ], [ -22, %20 ], [ -22, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %217

211:                                              ; preds = %208, %185, %164, %115, %5
  %212 = phi ptr [ %10, %5 ], [ %186, %185 ], [ %117, %115 ], [ %166, %164 ], [ %10, %208 ]
  %213 = phi i32 [ %4, %5 ], [ %4, %185 ], [ %4, %115 ], [ %146, %164 ], [ %4, %208 ]
  %214 = load i32, ptr %212, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  call void @__trace_probe_log_err(i32 noundef %213, i32 noundef 35)
  br label %217

217:                                              ; preds = %216, %211, %209, %207, %204, %182, %179, %163, %159, %152, %149, %136, %132, %114, %105, %97, %96, %91, %86, %77, %67, %65
  %218 = phi i32 [ -22, %149 ], [ -22, %132 ], [ -22, %114 ], [ -22, %86 ], [ -22, %105 ], [ -22, %96 ], [ -12, %97 ], [ %210, %209 ], [ -22, %216 ], [ 0, %211 ], [ -22, %159 ], [ -22, %163 ], [ %154, %152 ], [ %63, %67 ], [ %89, %91 ], [ %75, %77 ], [ %134, %136 ], [ %205, %204 ], [ -22, %179 ], [ -12, %182 ], [ 0, %65 ], [ 0, %207 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i32 %218
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__parse_bitfield_probe_arg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !8
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 98
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = call i32 @simple_strtoul(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 0) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 64
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = call i32 @simple_strtoul(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 0) #17
  %19 = load ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, %17
  br i1 %20, label %49, label %21

21:                                               ; preds = %16
  %22 = load i8, ptr %19, align 1
  %23 = icmp eq i8 %22, 47
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = getelementptr %struct.fetch_insn, ptr %5, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  store ptr %25, ptr %2, align 4
  store i32 17, ptr %25, align 4
  %29 = getelementptr inbounds %struct.fetch_type, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 3
  %32 = add i32 %18, %10
  %33 = sub i32 %31, %32
  %34 = trunc i32 %33 to i8
  %35 = getelementptr %struct.fetch_insn, ptr %5, i32 1, i32 1
  %36 = getelementptr inbounds %struct.anon.95, ptr %35, i32 0, i32 1
  store i8 %34, ptr %36, align 1
  %37 = load i32, ptr %29, align 4
  %38 = shl i32 %37, 3
  %39 = sub i32 %38, %10
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.anon.95, ptr %35, i32 0, i32 2
  store i8 %40, ptr %41, align 2
  %42 = load i32, ptr %29, align 4
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %35, align 4
  %44 = load i32, ptr %29, align 4
  %45 = shl i32 %44, 3
  %46 = and i32 %45, 1073741816
  %47 = icmp ult i32 %46, %32
  %48 = select i1 %47, i32 -22, i32 0
  br label %49

49:                                               ; preds = %28, %24, %21, %16, %12, %8, %3
  %50 = phi i32 [ %48, %28 ], [ 0, %3 ], [ -22, %12 ], [ -22, %8 ], [ -22, %21 ], [ -22, %16 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regs_query_register_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149279021}
