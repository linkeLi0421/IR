; ModuleID = '/llk/IR/kernel/trace/trace_dynevent.c_pt.bc'
source_filename = "../kernel/trace/trace_dynevent.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dynevent_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dynevent_create\22\09\09\09\09\09"
module asm "__kstrtabns_dynevent_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.68, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.dynevent_arg = type { ptr, i8 }
%struct.dynevent_arg_pair = type { ptr, ptr, i8, i8 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.dynevent_cmd = type { %struct.seq_buf, ptr, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@trace_event_dyn_try_get_ref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [30 x i8] c"kernel/trace/trace_dynevent.c\00", align 1
@trace_event_sem = external dso_local global %struct.rw_semaphore, align 4
@ftrace_events = external dso_local global %struct.list_head, align 4
@trace_event_dyn_put_ref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_event_dyn_put_ref.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dyn_event_ops_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dyn_event_ops_mutex, i64 12), ptr getelementptr (i8, ptr @dyn_event_ops_mutex, i64 12) } }, align 4
@dyn_event_ops_list = internal global %struct.list_head { ptr @dyn_event_ops_list, ptr @dyn_event_ops_list }, align 4
@event_mutex = external dso_local global %struct.mutex, align 4
@dyn_event_list = dso_local global %struct.list_head { ptr @dyn_event_list, ptr @dyn_event_list }, align 4
@__initcall__kmod_trace_dynevent__244_274_init_dynamic_event5 = internal global ptr @init_dynamic_event, section ".initcall5.init", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %s%c\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\013String is too long: %s%c\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" %s%c%s%c\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\013field string is too long: %s%c%s%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\013String is too long: %s\0A\00", align 1
@__kstrtab_dynevent_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dynevent_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dynevent_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dynevent_create to i32), ptr @__kstrtab_dynevent_create, ptr @__kstrtabns_dynevent_create }, section "___ksymtab_gpl+dynevent_create", align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"dynamic_events\00", align 1
@dynamic_events_ops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dyn_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dyn_event_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"\014Could not create tracefs 'dynamic_events' entry\0A\00", align 1
@dyn_event_seq_op = internal constant %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @dyn_event_seq_show }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_trace_dynevent__244_274_init_dynamic_event5, ptr @__ksymtab_dynevent_create], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @trace_event_dyn_try_get_ref.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  store i1 true, ptr @trace_event_dyn_try_get_ref.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %1
  br i1 %5, label %28, label %11

11:                                               ; preds = %10
  tail call void @down_read(ptr noundef nonnull @trace_event_sem) #10
  %12 = load ptr, ptr @ftrace_events, align 4
  %13 = icmp eq ptr %12, @ftrace_events
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6
  br label %16

16:                                               ; preds = %22, %14
  %17 = phi ptr [ %12, %14 ], [ %24, %22 ]
  %18 = phi i1 [ false, %14 ], [ %23, %22 ]
  %19 = icmp eq ptr %17, %0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #10, !srcloc !9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #10, !srcloc !10
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i1 [ true, %20 ], [ %18, %16 ]
  %24 = load ptr, ptr %17, align 4
  %25 = icmp eq ptr %24, @ftrace_events
  br i1 %25, label %26, label %16

26:                                               ; preds = %22, %11
  %27 = phi i1 [ false, %11 ], [ %23, %22 ]
  tail call void @up_read(ptr noundef nonnull @trace_event_sem) #10
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi i1 [ %27, %26 ], [ false, %10 ]
  ret i1 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_dyn_put_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @trace_event_dyn_put_ref.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  store i1 true, ptr @trace_event_dyn_put_ref.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %1
  br i1 %5, label %23, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp slt i32 %13, 1
  %15 = load i1, ptr @trace_event_dyn_put_ref.__already_done.1, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %11
  store i1 true, ptr @trace_event_dyn_put_ref.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #10
  br label %19

19:                                               ; preds = %18, %11
  br i1 %14, label %20, label %21

20:                                               ; preds = %19
  store volatile i32 0, ptr %12, align 4
  br label %23

21:                                               ; preds = %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !11
  br label %23

23:                                               ; preds = %21, %20, %10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @trace_event_dyn_busy(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dyn_event_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dyn_event_operations, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dyn_event_operations, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dyn_event_operations, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dyn_event_operations, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dyn_event_operations, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  store volatile ptr %0, ptr %0, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  tail call void @mutex_lock(ptr noundef nonnull @dyn_event_ops_mutex) #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_ops_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_ops_list, i32 0, i32 1), align 4
  store ptr @dyn_event_ops_list, ptr %0, align 4
  store ptr %25, ptr %24, align 4
  store volatile ptr %0, ptr %25, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #10
  br label %26

26:                                               ; preds = %23, %19, %15, %11, %7, %3, %1
  %27 = phi i32 [ 0, %23 ], [ -22, %19 ], [ -22, %15 ], [ -22, %11 ], [ -22, %7 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dyn_event_release(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = call ptr @argv_split(i32 noundef 3264, ptr noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 58
  br i1 %13, label %14, label %65

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %7, i32 2
  br label %21

16:                                               ; preds = %6
  %17 = call ptr @strchr(ptr noundef %7, i32 noundef 58)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %65, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %17, i32 1
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %15, %14 ], [ %20, %19 ]
  %23 = call ptr @strchr(ptr noundef %22, i32 noundef 47)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 1
  store i8 0, ptr %23, align 1
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %22, %21 ]
  %29 = phi ptr [ %22, %25 ], [ null, %21 ]
  %30 = load i8, ptr %28, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %27
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #10
  %33 = load ptr, ptr @dyn_event_list, align 4
  %34 = icmp eq ptr %33, @dyn_event_list
  br i1 %34, label %63, label %35

35:                                               ; preds = %32
  %36 = icmp eq ptr %1, null
  %37 = getelementptr ptr, ptr %4, i32 1
  br label %38

38:                                               ; preds = %60, %35
  %39 = phi ptr [ %33, %35 ], [ %41, %60 ]
  %40 = phi i32 [ -2, %35 ], [ %61, %60 ]
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr inbounds %struct.dyn_event, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br i1 %36, label %46, label %44

44:                                               ; preds = %38
  %45 = icmp eq ptr %43, %1
  br i1 %45, label %46, label %60

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %1, %44 ], [ %43, %38 ]
  %48 = getelementptr inbounds %struct.dyn_event_operations, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %3, align 4
  %51 = add i32 %50, -1
  %52 = call zeroext i1 %49(ptr noundef %29, ptr noundef %28, i32 noundef %51, ptr noundef %37, ptr noundef %39) #10
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.dyn_event, ptr %39, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dyn_event_operations, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %39) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %46, %44
  %61 = phi i32 [ %40, %44 ], [ 0, %53 ], [ %40, %46 ]
  %62 = icmp eq ptr %41, @dyn_event_list
  br i1 %62, label %63, label %38

63:                                               ; preds = %60, %53, %32
  %64 = phi i32 [ -2, %32 ], [ %58, %53 ], [ %61, %60 ]
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #10
  br label %65

65:                                               ; preds = %63, %27, %16, %10
  %66 = phi i32 [ %64, %63 ], [ -22, %10 ], [ -22, %16 ], [ -22, %27 ]
  call void @argv_free(ptr noundef nonnull %4) #10
  br label %67

67:                                               ; preds = %65, %2
  %68 = phi i32 [ %66, %65 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dyn_event_seq_start(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #10
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @dyn_event_list, i64 noundef %3) #10
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dyn_event_seq_next(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @dyn_event_list, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dyn_event_seq_stop(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dyn_events_release_all(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #10
  %2 = load ptr, ptr @dyn_event_list, align 4
  %3 = icmp eq ptr %2, @dyn_event_list
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi ptr [ %2, %4 ], [ %18, %17 ]
  %8 = getelementptr inbounds %struct.dyn_event, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br i1 %5, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %9, %0
  br i1 %11, label %12, label %17

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %0, %10 ], [ %9, %6 ]
  %14 = getelementptr inbounds %struct.dyn_event_operations, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 %15(ptr noundef %7) #10
  br i1 %16, label %40, label %17

17:                                               ; preds = %12, %10
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @dyn_event_list
  br i1 %19, label %20, label %6

20:                                               ; preds = %17
  %21 = load ptr, ptr @dyn_event_list, align 4
  %22 = icmp eq ptr %21, @dyn_event_list
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = icmp eq ptr %0, null
  br label %25

25:                                               ; preds = %38, %23
  %26 = phi ptr [ %21, %23 ], [ %27, %38 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dyn_event, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  br i1 %24, label %32, label %30

30:                                               ; preds = %25
  %31 = icmp eq ptr %29, %0
  br i1 %31, label %32, label %38

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %0, %30 ], [ %29, %25 ]
  %34 = getelementptr inbounds %struct.dyn_event_operations, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %26) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %30
  %39 = icmp eq ptr %27, @dyn_event_list
  br i1 %39, label %40, label %25

40:                                               ; preds = %38, %32, %20, %12, %1
  %41 = phi i32 [ 0, %20 ], [ 0, %1 ], [ %36, %32 ], [ 0, %38 ], [ -16, %12 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #10
  ret i32 %41
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_dynamic_event() #5 section ".init.text" {
  %1 = tail call i32 @tracing_init_dentry() #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef nonnull @dynamic_events_ops) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %8

8:                                                ; preds = %6, %3, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dynevent_arg_add(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call i32 %2(ptr noundef %1) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5, %3
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.dynevent_arg, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %9, i32 noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %1, align 4
  %17 = load i8, ptr %10, align 4
  %18 = zext i8 %17 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef %18) #11
  br label %20

20:                                               ; preds = %15, %8, %5
  %21 = phi i32 [ -7, %15 ], [ %6, %5 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dynevent_arg_pair_add(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call i32 %2(ptr noundef %1) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5, %3
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %9, i32 noundef %12, ptr noundef %14, i32 noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %8
  %21 = load ptr, ptr %1, align 4
  %22 = load i8, ptr %10, align 4
  %23 = zext i8 %22 to i32
  %24 = load ptr, ptr %13, align 4
  %25 = load i8, ptr %15, align 1
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %21, i32 noundef %23, ptr noundef %24, i32 noundef %26) #11
  br label %28

28:                                               ; preds = %20, %8, %5
  %29 = phi i32 [ -7, %20 ], [ %6, %5 ], [ 0, %8 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dynevent_str_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @seq_buf_puts(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1) #11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ -7, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dynevent_cmd_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %6, i8 0, i32 40, i1 false)
  store ptr %1, ptr %0, align 8
  %7 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 3
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.dynevent_cmd, ptr %0, i32 0, i32 3
  store i32 %3, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dynevent_cmd, ptr %0, i32 0, i32 4
  store ptr %4, ptr %10, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dynevent_arg_init(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  store i64 0, ptr %0, align 4
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i8 32, i8 %1
  %5 = getelementptr inbounds %struct.dynevent_arg, ptr %0, i32 0, i32 1
  store i8 %4, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dynevent_arg_pair_init(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false)
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i8 32, i8 %1
  %6 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %0, i32 0, i32 2
  store i8 %5, ptr %6, align 4
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i8 32, i8 %2
  %9 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %0, i32 0, i32 3
  store i8 %8, ptr %9, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dynevent_create(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dynevent_cmd, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dyn_event_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @trace_parse_run_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @create_dyn_event) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dyn_event_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @tracing_check_open_get_tr(ptr noundef null) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %10
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #10
  %16 = load ptr, ptr @dyn_event_list, align 4
  %17 = icmp eq ptr %16, @dyn_event_list
  br i1 %17, label %43, label %18

18:                                               ; preds = %26, %15
  %19 = phi ptr [ %27, %26 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.dyn_event, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dyn_event_operations, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 %23(ptr noundef %19) #10
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #10
  br label %48

26:                                               ; preds = %18
  %27 = load ptr, ptr %19, align 4
  %28 = icmp eq ptr %27, @dyn_event_list
  br i1 %28, label %29, label %18

29:                                               ; preds = %26
  %30 = load ptr, ptr @dyn_event_list, align 4
  %31 = icmp eq ptr %30, @dyn_event_list
  br i1 %31, label %43, label %32

32:                                               ; preds = %41, %29
  %33 = phi ptr [ %34, %41 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dyn_event, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dyn_event_operations, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %33) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = icmp eq ptr %34, @dyn_event_list
  br i1 %42, label %43, label %32

43:                                               ; preds = %41, %29, %15
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #10
  br label %46

44:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #10
  %45 = icmp slt i32 %39, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44, %43, %10, %5
  %47 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @dyn_event_seq_op) #10
  br label %48

48:                                               ; preds = %46, %44, %25, %2
  %49 = phi i32 [ %47, %46 ], [ %3, %2 ], [ %39, %44 ], [ -16, %25 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_parse_run_command(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_dyn_event(ptr noundef %0) #0 {
  %2 = load i8, ptr %0, align 1
  switch i8 %2, label %5 [
    i8 45, label %3
    i8 33, label %3
  ]

3:                                                ; preds = %1, %1
  %4 = tail call i32 @dyn_event_release(ptr noundef %0, ptr noundef null)
  br label %20

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @dyn_event_ops_mutex) #10
  %6 = load ptr, ptr @dyn_event_ops_list, align 4
  %7 = icmp eq ptr %6, @dyn_event_ops_list
  br i1 %7, label %17, label %11

8:                                                ; preds = %11
  %9 = load ptr, ptr %12, align 4
  %10 = icmp eq ptr %9, @dyn_event_ops_list
  br i1 %10, label %19, label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %13 = getelementptr inbounds %struct.dyn_event_operations, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #10
  %16 = icmp eq i32 %15, -125
  br i1 %16, label %8, label %17

17:                                               ; preds = %11, %5
  %18 = phi i32 [ -19, %5 ], [ %15, %11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #10
  br label %20

19:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #10
  br label %20

20:                                               ; preds = %19, %17, %3
  %21 = phi i32 [ %4, %3 ], [ -22, %19 ], [ %18, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_check_open_get_tr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dyn_event_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dyn_event, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dyn_event_operations, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %13
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 850186, i64 2148340157, i64 2148340183, i64 2148340230, i64 2148340252, i64 2148340280, i64 2148340300}
!10 = !{i64 2148351572, i64 2148351598, i64 2148351627, i64 2148351661, i64 2148351692, i64 2148351715}
!11 = !{i64 2148353929, i64 2148353955, i64 2148353984, i64 2148354018, i64 2148354049, i64 2148354072}
!12 = !{!"auto-init"}
