; ModuleID = '/llk/IR/kernel/time/sched_clock.c_pt.bc'
source_filename = "../kernel/time/sched_clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon }
%union.anon = type { ptr }
%struct.clock_data = type { %struct.seqcount_latch_t, [2 x %struct.clock_read_data], i64, i32, ptr }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.clock_read_data = type { i64, i64, i64, ptr, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__param_str_irqtime = internal constant [8 x i8] c"irqtime\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqtime = internal global i32 -1, align 4
@__param_irqtime = internal constant %struct.kernel_param { ptr @__param_str_irqtime, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon { ptr @irqtime } }, section "__param", align 4
@cd = internal global %struct.clock_data { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.clock_read_data] [%struct.clock_read_data { i64 0, i64 0, i64 0, ptr @jiffy_sched_clock_read, i32 10000000, i32 0 }, %struct.clock_read_data zeroinitializer], i64 0, i32 0, ptr @jiffy_sched_clock_read }, align 64
@sched_clock_timer = internal global %struct.hrtimer zeroinitializer, align 8
@.str = private unnamed_addr constant [74 x i8] c"\016sched_clock: %u bits at %lu%cHz, resolution %lluns, wraps every %lluns\0A\00", align 1
@__initcall__kmod_sched_clock__148_297_sched_clock_syscore_init6 = internal global ptr @sched_clock_syscore_init, section ".initcall6.init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sched_clock_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @sched_clock_suspend, ptr @sched_clock_resume, ptr null }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_sched_clock__148_297_sched_clock_syscore_init6, ptr @__param_irqtime], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @sched_clock_read_begin(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @cd, align 64
  store i32 %2, ptr %0, align 4
  %3 = and i32 %2, 1
  %4 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_clock_read_retry(i32 noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %2 = load volatile i32, ptr @cd, align 64
  %3 = icmp ne i32 %2, %0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @sched_clock() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load volatile i32, ptr @cd, align 64
  %3 = and i32 %2, 1
  %4 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3
  %5 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i64 %6() #6
  %8 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %4, align 8
  %13 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %3, i32 5
  %16 = load i32, ptr %15, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %17 = load volatile i32, ptr @cd, align 64
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %1

19:                                               ; preds = %1
  %20 = sub i64 %7, %9
  %21 = and i64 %20, %11
  %22 = zext i32 %14 to i64
  %23 = mul i64 %21, %22
  %24 = zext i32 %16 to i64
  %25 = lshr i64 %23, %24
  %26 = add i64 %25, %12
  ret i64 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sched_clock_register(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 3), align 32
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %60, label %8

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !10
  call void @clocks_calc_mult_shift(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %2, i32 noundef 1000000000, i32 noundef 3600) #6
  %10 = sub i32 64, %1
  %11 = zext i32 %10 to i64
  %12 = lshr i64 -1, %11
  store i32 %2, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 3), align 32
  %13 = load i32, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = call i64 @clocks_calc_max_nsecs(i32 noundef %13, i32 noundef %14, i32 noundef 0, i64 noundef %12, ptr noundef null) #6
  store i64 %15, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 8
  %16 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  %17 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  %18 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  %19 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  %21 = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %22 = call i64 %0() #6
  %23 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %24 = call i64 %23() #6
  %25 = sub i64 %24, %17
  %26 = and i64 %25, %18
  %27 = zext i32 %19 to i64
  %28 = mul i64 %26, %27
  %29 = zext i32 %20 to i64
  %30 = lshr i64 %28, %29
  %31 = add i64 %30, %16
  store ptr %0, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %32 = load i32, ptr %4, align 4
  %33 = load i32, ptr %5, align 4
  store i64 %31, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 16
  store i64 %22, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 8
  store i64 %12, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 64
  store ptr %0, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 %32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %33, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 16
  store i32 %21, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %34 = load i32, ptr @cd, align 64
  %35 = add i32 %34, 1
  store i32 %35, ptr @cd, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  store i64 %31, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  store i64 %22, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  store i64 %12, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  store ptr %0, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  store i32 %32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %33, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  store i32 %21, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %36 = load i32, ptr @cd, align 64
  %37 = add i32 %36, 1
  store i32 %37, ptr @cd, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %38 = load ptr, ptr getelementptr inbounds (%struct.hrtimer, ptr @sched_clock_timer, i32 0, i32 2), align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %8
  %41 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 8
  call void @hrtimer_start_range_ns(ptr noundef nonnull @sched_clock_timer, i64 noundef %41, i64 noundef 0, i32 noundef 9) #6
  br label %42

42:                                               ; preds = %40, %8
  %43 = icmp ugt i32 %2, 3999999
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = udiv i32 %2, 1000000
  br label %51

46:                                               ; preds = %42
  %47 = icmp ugt i32 %2, 999
  %48 = udiv i32 %2, 1000
  %49 = select i1 %47, i32 %48, i32 %2
  %50 = select i1 %47, i32 107, i32 32
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %49, %46 ]
  %53 = phi i32 [ 77, %44 ], [ %50, %46 ]
  %54 = load i32, ptr %4, align 4
  %55 = load i32, ptr %5, align 4
  %56 = zext i32 %54 to i64
  %57 = zext i32 %55 to i64
  %58 = lshr i64 %56, %57
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %52, i32 noundef %53, i64 noundef %58, i64 noundef %15) #7
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #6, !srcloc !13
  br label %60

60:                                               ; preds = %51, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocks_calc_max_nsecs(i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @generic_sched_clock_init() local_unnamed_addr #3 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %2 = icmp eq ptr %1, @jiffy_sched_clock_read
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @sched_clock_register(ptr noundef nonnull @jiffy_sched_clock_read, i32 noundef 32, i32 noundef 100) #8
  br label %4

4:                                                ; preds = %3, %0
  tail call fastcc void @update_sched_clock()
  tail call void @hrtimer_init(ptr noundef nonnull @sched_clock_timer, i32 noundef 1, i32 noundef 9) #6
  store ptr @sched_clock_poll, ptr getelementptr inbounds (%struct.hrtimer, ptr @sched_clock_timer, i32 0, i32 2), align 8
  %5 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 8
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @sched_clock_timer, i64 noundef %5, i64 noundef 0, i32 noundef 9) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @jiffy_sched_clock_read() #0 {
  %1 = load volatile i32, ptr @jiffies, align 64
  %2 = add i32 %1, 30000
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_sched_clock() unnamed_addr #1 {
  %1 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  %3 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  %5 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  %7 = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %9 = tail call i64 %8() #6
  %10 = sub i64 %9, %2
  %11 = and i64 %10, %3
  %12 = zext i32 %5 to i64
  %13 = mul i64 %11, %12
  %14 = zext i32 %6 to i64
  %15 = lshr i64 %13, %14
  %16 = add i64 %15, %1
  store i64 %16, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 16
  store i64 %9, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 8
  store i64 %3, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 64
  store ptr %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 %5, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %6, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 16
  store i32 %7, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %17 = load i32, ptr @cd, align 64
  %18 = add i32 %17, 1
  store i32 %18, ptr @cd, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  store i64 %16, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  store i64 %9, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  store i64 %3, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  store ptr %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  store i32 %5, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %6, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  store i32 %7, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %19 = load i32, ptr @cd, align 64
  %20 = add i32 %19, 1
  store i32 %20, ptr @cd, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_clock_poll(ptr noundef %0) #1 {
  %2 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  %4 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  %6 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  %8 = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %10 = tail call i64 %9() #6
  %11 = sub i64 %10, %3
  %12 = and i64 %11, %4
  %13 = zext i32 %6 to i64
  %14 = mul i64 %12, %13
  %15 = zext i32 %7 to i64
  %16 = lshr i64 %14, %15
  %17 = add i64 %16, %2
  store i64 %17, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 16
  store i64 %10, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 8
  store i64 %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 64
  store ptr %5, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 %6, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %7, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 16
  store i32 %8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %18 = load i32, ptr @cd, align 64
  %19 = add i32 %18, 1
  store i32 %19, ptr @cd, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  store i64 %17, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  store i64 %10, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  store i64 %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  store ptr %5, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  store i32 %6, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %7, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  store i32 %8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %20 = load i32, ptr @cd, align 64
  %21 = add i32 %20, 1
  store i32 %21, ptr @cd, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %22 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 8
  %23 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i64 %26() #6
  %28 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %27, i64 noundef %22) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_clock_suspend() #1 {
  %1 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  %3 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  %5 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  %7 = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %9 = tail call i64 %8() #6
  %10 = sub i64 %9, %2
  %11 = and i64 %10, %3
  %12 = zext i32 %5 to i64
  %13 = mul i64 %11, %12
  %14 = zext i32 %6 to i64
  %15 = lshr i64 %13, %14
  %16 = add i64 %15, %1
  store i64 %16, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 16
  store i64 %9, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 8
  store i64 %3, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 64
  store ptr %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 %5, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %6, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 16
  store i32 %7, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %17 = load i32, ptr @cd, align 64
  %18 = add i32 %17, 1
  store i32 %18, ptr @cd, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  store i64 %16, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 8
  store i64 %9, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  store i64 %3, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 8
  store ptr %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  store i32 %5, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %6, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 8
  store i32 %7, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %19 = load i32, ptr @cd, align 64
  %20 = add i32 %19, 1
  store i32 %20, ptr @cd, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %21 = tail call i32 @hrtimer_cancel(ptr noundef nonnull @sched_clock_timer) #6
  store ptr @suspended_sched_clock_read, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @suspended_sched_clock_read() #0 {
  %1 = load volatile i32, ptr @cd, align 64
  %2 = and i32 %1, 1
  %3 = getelementptr %struct.clock_data, ptr @cd, i32 0, i32 1, i32 %2, i32 1
  %4 = load i64, ptr %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_clock_resume() #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %2 = tail call i64 %1() #6
  store i64 %2, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 16
  %3 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 8
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @sched_clock_timer, i64 noundef %3, i64 noundef 0, i32 noundef 9) #6
  %4 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 32
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sched_clock_syscore_init() #3 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @sched_clock_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
!8 = !{i64 2149364580}
!9 = !{!"auto-init"}
!10 = !{i64 326811, i64 326872}
!11 = !{i64 2149371631}
!12 = !{i64 2149371763}
!13 = !{i64 329828}
