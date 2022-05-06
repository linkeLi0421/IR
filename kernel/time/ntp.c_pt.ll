; ModuleID = '/llk/IR/kernel/time/ntp.c_pt.bc'
source_filename = "../kernel/time/ntp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.timezone = type { i32, i32 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tick_usec = dso_local local_unnamed_addr global i32 10000, align 4
@time_adjust = internal unnamed_addr global i32 0, align 4
@time_status = internal unnamed_addr global i32 64, align 4
@time_maxerror = internal unnamed_addr global i32 16000000, align 4
@time_esterror = internal unnamed_addr global i32 16000000, align 4
@tick_length_base = internal unnamed_addr global i64 0, align 8
@tick_length = internal unnamed_addr global i64 0, align 8
@time_offset = internal unnamed_addr global i64 0, align 8
@ntp_next_leap_sec = internal unnamed_addr global i64 9223372036854775807, align 8
@time_state = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\015Clock: inserting leap second 23:59:60 UTC\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\015Clock: deleting leap second 23:59:59 UTC\0A\00", align 1
@sync_hrtimer = internal global %struct.hrtimer zeroinitializer, align 8
@system_freezable_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@sync_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @sync_work, i64 4), ptr getelementptr (i8, ptr @sync_work, i64 4) }, ptr @sync_hw_clock }, align 4
@time_freq = internal unnamed_addr global i64 0, align 8
@time_constant = internal unnamed_addr global i32 2, align 4
@__setup_str_ntp_tick_adj_setup = internal constant [14 x i8] c"ntp_tick_adj=\00", section ".init.rodata", align 1
@__setup_ntp_tick_adj_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ntp_tick_adj_setup, ptr @ntp_tick_adj_setup, i32 0 }, section ".init.setup", align 4
@tick_nsec = dso_local local_unnamed_addr global i32 0, align 4
@ntp_tick_adj = internal global i64 0, align 8
@sync_hw_clock.offset_nsec = internal unnamed_addr global i32 500000000, align 4
@persistent_clock_is_local = external dso_local local_unnamed_addr global i32, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"rtc0\00", align 1
@time_reftime = internal unnamed_addr global i64 0, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_ntp_tick_adj_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntp_clear() local_unnamed_addr #0 {
  store i32 0, ptr @time_adjust, align 4
  %1 = load i32, ptr @time_status, align 4
  %2 = or i32 %1, 64
  store i32 %2, ptr @time_status, align 4
  store i32 16000000, ptr @time_maxerror, align 4
  store i32 16000000, ptr @time_esterror, align 4
  %3 = load i32, ptr @tick_usec, align 4
  %4 = mul i32 %3, 100000
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = load i64, ptr @ntp_tick_adj, align 8
  %8 = load i64, ptr @time_freq, align 8
  %9 = add i64 %8, %7
  %10 = add i64 %9, %6
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %10, i32 0) #8, !srcloc !8
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = extractvalue { i64, i32 } %11, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %10, i64 %12, i32 %13) #8, !srcloc !9
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = lshr i64 %15, 6
  %17 = lshr i64 %15, 38
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr @tick_nsec, align 4
  store i64 %16, ptr @tick_length_base, align 8
  store i64 %16, ptr @tick_length, align 8
  store i64 0, ptr @time_offset, align 8
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ntp_tick_length() local_unnamed_addr #1 {
  %1 = load i64, ptr @tick_length, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ntp_get_next_leap() local_unnamed_addr #1 {
  %1 = load i32, ptr @time_state, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i32, ptr @time_status, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr @ntp_next_leap_sec, align 8
  %9 = icmp sgt i64 %8, 9223372035
  %10 = mul i64 %8, 1000000000
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !prof !10
  br label %12

12:                                               ; preds = %7, %3, %0
  %13 = phi i64 [ %11, %7 ], [ 9223372036854775807, %3 ], [ 9223372036854775807, %0 ]
  ret i64 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @second_overflow(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !11
  %3 = load i32, ptr @time_state, align 4
  switch i32 %3, label %50 [
    i32 0, label %4
    i32 1, label %24
    i32 2, label %34
    i32 3, label %44
    i32 4, label %45
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr @time_status, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  store i32 1, ptr @time_state, align 4
  %9 = call i64 @div_s64_rem(i64 noundef %0, i32 noundef 86400, ptr noundef nonnull %2) #9
  %10 = add i64 %0, 86400
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 %10, %12
  store i64 %13, ptr @ntp_next_leap_sec, align 8
  br label %50

14:                                               ; preds = %4
  %15 = and i32 %5, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  store i32 2, ptr @time_state, align 4
  %18 = add i64 %0, 1
  %19 = call i64 @div_s64_rem(i64 noundef %18, i32 noundef 86400, ptr noundef nonnull %2) #9
  %20 = add i64 %0, 86400
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %20, %22
  store i64 %23, ptr @ntp_next_leap_sec, align 8
  br label %50

24:                                               ; preds = %1
  %25 = load i32, ptr @time_status, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 0, ptr @time_state, align 4
  br label %50

29:                                               ; preds = %24
  %30 = load i64, ptr @ntp_next_leap_sec, align 8
  %31 = icmp eq i64 %30, %0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  store i32 3, ptr @time_state, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %50

34:                                               ; preds = %1
  %35 = load i32, ptr @time_status, align 4
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 0, ptr @time_state, align 4
  br label %50

39:                                               ; preds = %34
  %40 = load i64, ptr @ntp_next_leap_sec, align 8
  %41 = icmp eq i64 %40, %0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 4, ptr @time_state, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %50

44:                                               ; preds = %1
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 4, ptr @time_state, align 4
  br label %50

45:                                               ; preds = %1
  %46 = load i32, ptr @time_status, align 4
  %47 = and i32 %46, 48
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, ptr @time_state, align 4
  br label %50

50:                                               ; preds = %49, %45, %44, %42, %39, %38, %32, %29, %28, %17, %14, %8, %1
  %51 = phi i32 [ 0, %1 ], [ 0, %45 ], [ 0, %49 ], [ 0, %44 ], [ 1, %42 ], [ 0, %39 ], [ 0, %38 ], [ -1, %32 ], [ 0, %29 ], [ 0, %28 ], [ 0, %8 ], [ 0, %17 ], [ 0, %14 ]
  %52 = load i32, ptr @time_maxerror, align 4
  %53 = add i32 %52, 500
  store i32 %53, ptr @time_maxerror, align 4
  %54 = icmp sgt i32 %53, 16000000
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  store i32 16000000, ptr @time_maxerror, align 4
  %56 = load i32, ptr @time_status, align 4
  %57 = or i32 %56, 64
  store i32 %57, ptr @time_status, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i64, ptr @tick_length_base, align 8
  %60 = load i64, ptr @time_offset, align 8
  %61 = load i32, ptr @time_constant, align 4
  %62 = add i32 %61, 2
  %63 = icmp slt i64 %60, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = sub i64 0, %60
  %66 = zext i32 %62 to i64
  %67 = ashr i64 %65, %66
  %68 = sub i64 0, %67
  br label %72

69:                                               ; preds = %58
  %70 = zext i32 %62 to i64
  %71 = lshr i64 %60, %70
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i64 [ %68, %64 ], [ %71, %69 ]
  %74 = sub i64 %60, %73
  store i64 %74, ptr @time_offset, align 8
  %75 = add i64 %73, %59
  store i64 %75, ptr @tick_length, align 8
  %76 = load i32, ptr @time_adjust, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %72
  %79 = icmp sgt i32 %76, 500
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = add nsw i32 %76, -500
  store i32 %81, ptr @time_adjust, align 4
  %82 = add i64 %75, 21474836480000
  store i64 %82, ptr @tick_length, align 8
  br label %93

83:                                               ; preds = %78
  %84 = icmp slt i32 %76, -500
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = add nuw nsw i32 %76, 500
  store i32 %86, ptr @time_adjust, align 4
  %87 = add i64 %75, -21474836480000
  store i64 %87, ptr @tick_length, align 8
  br label %93

88:                                               ; preds = %83
  %89 = mul nsw i32 %76, 10
  %90 = zext i32 %89 to i64
  %91 = shl nuw i64 %90, 32
  %92 = add i64 %91, %75
  store i64 %92, ptr @tick_length, align 8
  store i32 0, ptr @time_adjust, align 4
  br label %93

93:                                               ; preds = %88, %85, %80, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntp_notify_cmos_timer() local_unnamed_addr #0 {
  %1 = load i32, ptr @time_status, align 4
  %2 = and i32 %1, 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load volatile i8, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 4), align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef nonnull @sync_work) #9
  br label %11

11:                                               ; preds = %8, %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__do_adjtimex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr @time_adjust, align 4
  %12 = and i32 %7, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr @time_adjust, align 4
  %18 = load i32, ptr @tick_usec, align 4
  %19 = mul i32 %18, 100000
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = load i64, ptr @ntp_tick_adj, align 8
  %23 = load i64, ptr @time_freq, align 8
  %24 = add i64 %23, %22
  %25 = add i64 %24, %21
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %25, i32 0) #8, !srcloc !8
  %27 = extractvalue { i64, i32 } %26, 0
  %28 = extractvalue { i64, i32 } %26, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %25, i64 %27, i32 %28) #8, !srcloc !9
  %30 = extractvalue { i64, i32 } %29, 0
  %31 = lshr i64 %30, 6
  %32 = lshr i64 %30, 38
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr @tick_nsec, align 4
  %34 = load i64, ptr @tick_length_base, align 8
  %35 = sub i64 %31, %34
  %36 = load i64, ptr @tick_length, align 8
  %37 = add i64 %35, %36
  store i64 %37, ptr @tick_length, align 8
  store i64 %31, ptr @tick_length_base, align 8
  br label %38

38:                                               ; preds = %14, %10
  %39 = sext i32 %11 to i64
  %40 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 2
  store i64 %39, ptr %40, align 8
  %41 = load i32, ptr @time_status, align 4
  br label %253

42:                                               ; preds = %4
  %43 = icmp eq i32 %7, 0
  br i1 %43, label %233, label %44

44:                                               ; preds = %42
  %45 = and i32 %7, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr @time_status, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %50, label %57, label %55

55:                                               ; preds = %47
  br i1 %54, label %56, label %63

56:                                               ; preds = %55
  store i32 0, ptr @time_state, align 4
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  br label %63

57:                                               ; preds = %47
  br i1 %54, label %63, label %58

58:                                               ; preds = %57
  %59 = tail call i64 @__ktime_get_real_seconds() #9
  store i64 %59, ptr @time_reftime, align 8
  %60 = load i32, ptr @time_status, align 4
  %61 = load i32, ptr %51, align 8
  %62 = load i32, ptr %0, align 8
  br label %63

63:                                               ; preds = %58, %57, %56, %55
  %64 = phi i32 [ %62, %58 ], [ %7, %57 ], [ %7, %55 ], [ %7, %56 ]
  %65 = phi i32 [ %61, %58 ], [ %52, %57 ], [ %52, %55 ], [ %52, %56 ]
  %66 = phi i32 [ %60, %58 ], [ %48, %57 ], [ %48, %55 ], [ 64, %56 ]
  %67 = and i32 %66, 65280
  %68 = and i32 %65, -65281
  %69 = or i32 %67, %68
  store i32 %69, ptr @time_status, align 4
  br label %70

70:                                               ; preds = %63, %44
  %71 = phi i32 [ %64, %63 ], [ %7, %44 ]
  %72 = and i32 %71, 8192
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr @time_status, align 4
  %76 = or i32 %75, 8192
  store i32 %76, ptr @time_status, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = and i32 %71, 4096
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr @time_status, align 4
  %82 = and i32 %81, -8193
  store i32 %82, ptr @time_status, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = and i32 %71, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 3
  %88 = load i64, ptr %87, align 8
  %89 = mul i64 %88, 65536000
  %90 = tail call i64 @llvm.smin.i64(i64 %89, i64 2147483648000000) #9
  %91 = tail call i64 @llvm.smax.i64(i64 %90, i64 -2147483648000000) #9
  store i64 %91, ptr @time_freq, align 8
  br label %92

92:                                               ; preds = %86, %83
  %93 = and i32 %71, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 4
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, ptr @time_maxerror, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = and i32 %71, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 5
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, ptr @time_esterror, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = and i32 %71, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 8
  %111 = load i64, ptr %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, ptr @time_status, align 4
  %114 = and i32 %113, 8192
  %115 = icmp eq i32 %114, 0
  %116 = add i32 %112, 4
  %117 = select i1 %115, i32 %116, i32 %112
  %118 = tail call i32 @llvm.smin.i32(i32 %117, i32 10) #9
  %119 = tail call i32 @llvm.smax.i32(i32 %118, i32 0) #9
  store i32 %119, ptr @time_constant, align 4
  br label %120

120:                                              ; preds = %109, %106
  %121 = and i32 %71, 128
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 8
  %125 = load i64, ptr %124, align 8
  %126 = icmp ult i64 %125, 100001
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = trunc i64 %125 to i32
  store i32 %128, ptr %2, align 4
  %129 = load i32, ptr %0, align 8
  br label %130

130:                                              ; preds = %127, %123, %120
  %131 = phi i32 [ %129, %127 ], [ %71, %123 ], [ %71, %120 ]
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %199, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 2
  %136 = load i64, ptr %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32, ptr @time_status, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %199, label %141

141:                                              ; preds = %134
  %142 = and i32 %138, 8192
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = tail call i32 @llvm.smax.i32(i32 %137, i32 -1000000) #9
  %146 = tail call i32 @llvm.smin.i32(i32 %145, i32 1000000) #9
  %147 = mul nsw i32 %146, 1000
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i32 [ %137, %141 ], [ %147, %144 ]
  %150 = tail call i32 @llvm.smax.i32(i32 %149, i32 -500000000) #9
  %151 = tail call i32 @llvm.smin.i32(i32 %150, i32 500000000) #9
  %152 = tail call i64 @__ktime_get_real_seconds() #9
  %153 = load i64, ptr @time_reftime, align 8
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, ptr @time_status, align 4
  %157 = and i32 %156, 128
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159, !prof !12

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %148
  %161 = phi i32 [ 0, %159 ], [ %155, %148 ]
  %162 = tail call i64 @__ktime_get_real_seconds() #9
  store i64 %162, ptr @time_reftime, align 8
  %163 = sext i32 %151 to i64
  %164 = load i32, ptr @time_status, align 4
  %165 = and i32 %164, -16385
  store i32 %165, ptr @time_status, align 4
  %166 = icmp slt i32 %161, 256
  br i1 %166, label %176, label %167

167:                                              ; preds = %160
  %168 = and i32 %164, 8
  %169 = icmp eq i32 %168, 0
  %170 = icmp ult i32 %161, 2049
  %171 = and i1 %170, %169
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = or i32 %164, 16384
  store i32 %173, ptr @time_status, align 4
  %174 = shl nsw i64 %163, 30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !11
  %175 = call i64 @div_s64_rem(i64 noundef %174, i32 noundef %161, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %176

176:                                              ; preds = %172, %167, %160
  %177 = phi i64 [ %175, %172 ], [ 0, %160 ], [ 0, %167 ]
  %178 = load i32, ptr @time_constant, align 4
  %179 = add i32 %178, 3
  %180 = shl nuw i32 1, %179
  %181 = icmp sgt i32 %161, %180
  br i1 %181, label %182, label %183, !prof !10

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182, %176
  %184 = phi i32 [ %180, %182 ], [ %161, %176 ]
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %185, %163
  %187 = mul i32 %178, -2
  %188 = add i32 %187, 24
  %189 = zext i32 %188 to i64
  %190 = shl i64 %186, %189
  %191 = load i64, ptr @time_freq, align 8
  %192 = add i64 %191, %177
  %193 = add i64 %192, %190
  %194 = call i64 @llvm.smin.i64(i64 %193, i64 2147483648000000) #9
  %195 = call i64 @llvm.smax.i64(i64 %194, i64 -2147483648000000) #9
  store i64 %195, ptr @time_freq, align 8
  %196 = shl nsw i64 %163, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !11
  %197 = call i64 @div_s64_rem(i64 noundef %196, i32 noundef 100, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  store i64 %197, ptr @time_offset, align 8
  %198 = load i32, ptr %0, align 8
  br label %199

199:                                              ; preds = %183, %134, %130
  %200 = phi i32 [ %198, %183 ], [ %131, %134 ], [ %131, %130 ]
  %201 = and i32 %200, 16384
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 12
  %205 = load i64, ptr %204, align 8
  %206 = trunc i64 %205 to i32
  store i32 %206, ptr @tick_usec, align 4
  %207 = load i32, ptr %0, align 8
  br label %208

208:                                              ; preds = %203, %199
  %209 = phi i32 [ %207, %203 ], [ %200, %199 ]
  %210 = and i32 %209, 16387
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %233, label %212

212:                                              ; preds = %208
  %213 = load i32, ptr @tick_usec, align 4
  %214 = mul i32 %213, 100000
  %215 = zext i32 %214 to i64
  %216 = shl nuw i64 %215, 32
  %217 = load i64, ptr @ntp_tick_adj, align 8
  %218 = load i64, ptr @time_freq, align 8
  %219 = add i64 %218, %217
  %220 = add i64 %219, %216
  %221 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %220, i32 0) #8, !srcloc !8
  %222 = extractvalue { i64, i32 } %221, 0
  %223 = extractvalue { i64, i32 } %221, 1
  %224 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %220, i64 %222, i32 %223) #8, !srcloc !9
  %225 = extractvalue { i64, i32 } %224, 0
  %226 = lshr i64 %225, 6
  %227 = lshr i64 %225, 38
  %228 = trunc i64 %227 to i32
  store i32 %228, ptr @tick_nsec, align 4
  %229 = load i64, ptr @tick_length_base, align 8
  %230 = sub i64 %226, %229
  %231 = load i64, ptr @tick_length, align 8
  %232 = add i64 %230, %231
  store i64 %232, ptr @tick_length, align 8
  store i64 %226, ptr @tick_length_base, align 8
  br label %233

233:                                              ; preds = %212, %208, %42
  %234 = load i64, ptr @time_offset, align 8
  %235 = mul i64 %234, 100
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = sub i64 0, %235
  %239 = ashr i64 %238, 32
  %240 = sub nsw i64 0, %239
  br label %243

241:                                              ; preds = %233
  %242 = lshr i64 %235, 32
  br label %243

243:                                              ; preds = %241, %237
  %244 = phi i64 [ %240, %237 ], [ %242, %241 ]
  %245 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 2
  store i64 %244, ptr %245, align 8
  %246 = load i32, ptr @time_status, align 4
  %247 = and i32 %246, 8192
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %243
  %250 = trunc i64 %244 to i32
  %251 = udiv i32 %250, 1000
  %252 = zext i32 %251 to i64
  store i64 %252, ptr %245, align 8
  br label %253

253:                                              ; preds = %249, %243, %38
  %254 = phi i32 [ %246, %243 ], [ %246, %249 ], [ %41, %38 ]
  %255 = load i32, ptr @time_state, align 4
  %256 = and i32 %254, 4160
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, i32 %255, i32 5
  %259 = load i64, ptr @time_freq, align 8
  %260 = ashr i64 %259, 19
  %261 = mul i64 %260, 34359739
  %262 = icmp slt i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %253
  %264 = sub i64 0, %261
  %265 = ashr i64 %264, 32
  %266 = sub nsw i64 0, %265
  br label %269

267:                                              ; preds = %253
  %268 = lshr i64 %261, 32
  br label %269

269:                                              ; preds = %267, %263
  %270 = phi i64 [ %266, %263 ], [ %268, %267 ]
  %271 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 3
  store i64 %270, ptr %271, align 8
  %272 = load i32, ptr @time_maxerror, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 4
  store i64 %273, ptr %274, align 8
  %275 = load i32, ptr @time_esterror, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 5
  store i64 %276, ptr %277, align 8
  %278 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 6
  store i32 %254, ptr %278, align 8
  %279 = load i32, ptr @time_constant, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 8
  store i64 %280, ptr %281, align 8
  %282 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 9
  store i64 1, ptr %282, align 8
  %283 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 10
  store i64 32768000, ptr %283, align 8
  %284 = load i32, ptr @tick_usec, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 12
  store i64 %285, ptr %286, align 8
  %287 = load i32, ptr %2, align 4
  %288 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 22
  store i32 %287, ptr %288, align 8
  %289 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 13
  %290 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %289, i8 0, i64 20, i1 false) #9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %290, i8 0, i64 40, i1 false) #9
  %291 = load i64, ptr %1, align 8
  %292 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11
  store i64 %291, ptr %292, align 8
  %293 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %294 = load i32, ptr %293, align 8
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 11, i32 1
  store i64 %295, ptr %296, align 8
  %297 = and i32 %254, 8192
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %269
  %300 = load i32, ptr %293, align 8
  %301 = sdiv i32 %300, 1000
  %302 = sext i32 %301 to i64
  store i64 %302, ptr %296, align 8
  br label %303

303:                                              ; preds = %299, %269
  %304 = load i64, ptr %1, align 8
  %305 = load i64, ptr @ntp_next_leap_sec, align 8
  %306 = icmp slt i64 %304, %305
  br i1 %306, label %323, label %307, !prof !12

307:                                              ; preds = %303
  switch i32 %255, label %323 [
    i32 1, label %308
    i32 2, label %314
    i32 3, label %320
  ]

308:                                              ; preds = %307
  %309 = and i32 %254, 16
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %323, label %311

311:                                              ; preds = %308
  %312 = add i32 %287, 1
  store i32 %312, ptr %288, align 8
  %313 = add i64 %291, -1
  store i64 %313, ptr %292, align 8
  br label %323

314:                                              ; preds = %307
  %315 = and i32 %254, 32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %323, label %317

317:                                              ; preds = %314
  %318 = add i32 %287, -1
  store i32 %318, ptr %288, align 8
  %319 = add i64 %291, 1
  store i64 %319, ptr %292, align 8
  br label %323

320:                                              ; preds = %307
  %321 = icmp eq i64 %304, %305
  %322 = select i1 %321, i32 4, i32 %258
  br label %323

323:                                              ; preds = %320, %317, %314, %311, %308, %307, %303
  %324 = phi i32 [ %258, %303 ], [ %322, %320 ], [ %258, %314 ], [ 4, %317 ], [ %258, %308 ], [ 3, %311 ], [ %258, %307 ]
  ret i32 %324
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ntp_tick_adj_setup(ptr noundef %0) #5 section ".init.text" {
  %2 = tail call i32 @kstrtoll(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @ntp_tick_adj) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i64, ptr @ntp_tick_adj, align 8
  %6 = shl i64 %5, 32
  store i64 %6, ptr @ntp_tick_adj, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 1, %4 ], [ %2, %1 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ntp_init() local_unnamed_addr #5 section ".init.text" {
  tail call void @ntp_clear()
  tail call void @hrtimer_init(ptr noundef nonnull @sync_hrtimer, i32 noundef 0, i32 noundef 0) #9
  store ptr @sync_timer_callback, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 2), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_hw_clock(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.rtc_time, align 4
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %5 = load i32, ptr @time_status, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %73

8:                                                ; preds = %1
  %9 = load volatile i8, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 4), align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %8
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #9
  %13 = load i32, ptr @sync_hw_clock.offset_nsec, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %14 = load i64, ptr %4, align 8
  %15 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !alias.scope !13, !annotation !11
  %18 = add i64 %14, -1
  %19 = add i32 %13, %17
  %20 = sext i32 %19 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %18, i64 noundef %20) #9
  %21 = load i64, ptr %3, align 8
  %22 = getelementptr inbounds i8, ptr %3, i32 8
  %23 = load i32, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %24 = icmp ult i32 %23, 50000000
  br i1 %24, label %29, label %25

25:                                               ; preds = %12
  %26 = icmp ugt i32 %23, 950000000
  br i1 %26, label %27, label %61

27:                                               ; preds = %25
  %28 = add i64 %21, 1
  br label %29

29:                                               ; preds = %27, %12
  %30 = phi i64 [ %28, %27 ], [ %21, %12 ]
  %31 = load i32, ptr @persistent_clock_is_local, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr @sys_tz, align 4
  %35 = mul i32 %34, 60
  %36 = sext i32 %35 to i64
  %37 = sub i64 %30, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i64 [ %30, %29 ], [ %37, %33 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #9, !annotation !11
  %40 = call ptr @rtc_class_open(ptr noundef nonnull @.str.2) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  br label %73

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtc_device, ptr %40, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtc_class_ops, ptr %45, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr @sync_hw_clock.offset_nsec, align 4
  %53 = getelementptr inbounds %struct.rtc_device, ptr %40, i32 0, i32 20
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  store i32 %54, ptr @sync_hw_clock.offset_nsec, align 4
  call void @rtc_class_close(ptr noundef nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  br label %61

57:                                               ; preds = %47, %43
  call void @rtc_class_close(ptr noundef nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  br label %73

58:                                               ; preds = %51
  call void @rtc_time64_to_tm(i64 noundef %39, ptr noundef nonnull %2) #9
  %59 = call i32 @rtc_set_time(ptr noundef nonnull %40, ptr noundef nonnull %2) #9
  call void @rtc_class_close(ptr noundef nonnull %40) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  %60 = icmp eq i32 %59, -19
  br i1 %60, label %73, label %61

61:                                               ; preds = %58, %56, %25
  %62 = phi i32 [ %59, %58 ], [ -11, %25 ], [ -11, %56 ]
  %63 = load i32, ptr @sync_hw_clock.offset_nsec, align 4
  %64 = icmp eq i32 %62, 0
  %65 = call i64 @ktime_get_real_seconds() #9
  %66 = zext i32 %63 to i64
  %67 = select i1 %64, i64 660000000000, i64 2000000000
  %68 = sub nsw i64 %67, %66
  %69 = icmp sgt i64 %65, 9223372035
  %70 = mul i64 %65, 1000000000
  %71 = select i1 %69, i64 9223372036854775807, i64 %70, !prof !10
  %72 = add i64 %68, %71
  call void @hrtimer_start_range_ns(ptr noundef nonnull @sync_hrtimer, i64 noundef %72, i64 noundef 0, i32 noundef 0) #9
  br label %73

73:                                               ; preds = %61, %58, %57, %42, %8, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtc_class_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_time(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_class_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_timer_callback(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef nonnull @sync_work) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 304845, i64 304872, i64 304894, i64 304922}
!9 = !{i64 305253, i64 305280, i64 305313, i64 305334, i64 305361, i64 305387}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!14}
!14 = distinct !{!14, !15, !"timespec64_add: argument 0"}
!15 = distinct !{!15, !"timespec64_add"}
