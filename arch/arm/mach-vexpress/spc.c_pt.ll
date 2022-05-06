; ModuleID = '/llk/IR/arch/arm/mach-vexpress/spc.c_pt.bc'
source_filename = "../arch/arm/mach-vexpress/spc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ve_spc_drvdata = type { ptr, i32, i32, i32, %struct.semaphore, %struct.completion, [2 x ptr], [2 x i32] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.clk_spc = type { %struct.clk_hw, i32 }
%struct.ve_spc_opp = type { i32, i32 }

@info = internal global ptr null, align 4
@.str = private unnamed_addr constant [32 x i8] c"\013vexpress-spc: Invalid IRQ %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"vexpress-spc\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\013vexpress-spc: IRQ %d request failed\0A\00", align 1
@__initcall__kmod_spc__224_598_ve_spc_clk_init6 = internal global ptr @ve_spc_clk_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"\013failed to build OPP table\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"\014failed to get cpu%d device\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\014failed to register cpu%d clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\014failed to register cpu%d clock lookup\0A\00", align 1
@cpu_topology = external dso_local global [16 x %struct.cpu_topology], align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"\014failed to initialise cpu%d opp table\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\014failed to mark OPPs shared for cpu%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"vexpress-spc-cpufreq\00", align 1
@clk_spc_ops = internal global %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spc_recalc_rate, ptr @spc_round_rate, ptr null, ptr null, ptr null, ptr @spc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to add opp %lu %lu\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_spc__224_598_ve_spc_clk_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ve_spc_global_wakeup_irq(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @info, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !8
  %6 = and i32 %5, -3073
  %7 = select i1 %0, i32 3072, i32 0
  %8 = or i32 %6, %7
  %9 = load ptr, ptr @info, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #10, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ve_spc_cpu_wakeup_irq(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %0, 1
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = shl nuw i32 1, %1
  %7 = load ptr, ptr @info, align 4
  %8 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  %11 = shl i32 %6, 4
  %12 = select i1 %10, i32 %6, i32 %11
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !8
  %16 = or i32 %15, %12
  %17 = xor i32 %12, -1
  %18 = and i32 %15, %17
  %19 = select i1 %2, i32 %16, i32 %18
  %20 = load ptr, ptr @info, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #10, !srcloc !9
  br label %23

23:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ve_spc_set_resume_addr(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %0, 1
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @info, align 4
  %7 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  %10 = load ptr, ptr %6, align 4
  %11 = select i1 %9, i32 104, i32 120
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = shl i32 %1, 2
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %2) #10, !srcloc !9
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ve_spc_powerdown(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %0, 1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @info, align 4
  %6 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %0
  %9 = select i1 %8, i32 48, i32 52
  %10 = zext i1 %1 to i32
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #10, !srcloc !9
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ve_spc_cpu_in_wfi(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @info, align 4
  %6 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  %9 = add i32 %0, 3
  %10 = select i1 %8, i32 %0, i32 %9
  %11 = shl nuw i32 1, %10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  %15 = and i32 %11, %14
  br label %16

16:                                               ; preds = %4, %2
  %17 = phi i32 [ %15, %4 ], [ 1, %2 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ve_spc_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #11
  store ptr %5, ptr @info, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %5, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = icmp slt i32 %2, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2) #12
  %12 = load ptr, ptr @info, align 4
  tail call void @kfree(ptr noundef %12) #10
  br label %48

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %5, i32 0, i32 5
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %5, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %16 = load ptr, ptr @info, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !8
  %20 = load ptr, ptr @info, align 4
  %21 = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef nonnull @ve_spc_irq_handler, ptr noundef null, i32 noundef 8196, ptr noundef nonnull @.str.1, ptr noundef %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %2) #12
  %25 = load ptr, ptr @info, align 4
  tail call void @kfree(ptr noundef %25) #10
  br label %48

26:                                               ; preds = %13
  %27 = load ptr, ptr @info, align 4
  %28 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %27, i32 0, i32 4, i32 2
  store i32 0, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %27, i32 0, i32 4, i32 1
  store i32 1, ptr %30, align 4
  store ptr %29, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %27, i32 0, i32 4, i32 2, i32 1
  store ptr %29, ptr %31, align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %32(ptr noundef %27, i32 noundef 64) #10
  %33 = ptrtoint ptr %27 to i32
  %34 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %33, i32 -2130706432, i32 8454144) #13, !srcloc !10
  %35 = getelementptr i8, ptr %27, i32 64
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %36, i32 -2130706432, i32 8454144) #13, !srcloc !10
  %38 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  tail call void %38(i32 noundef %34, i32 noundef %37) #10
  br label %41

41:                                               ; preds = %40, %26
  %42 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %42(ptr noundef nonnull @info, i32 noundef 4) #10
  %43 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @info to i32), i32 -2130706432, i32 8454144) #13, !srcloc !10
  %44 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (ptr, ptr @info, i32 1) to i32), i32 -2130706432, i32 8454144) #13, !srcloc !10
  %45 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  tail call void %45(i32 noundef %43, i32 noundef %44) #10
  br label %48

48:                                               ; preds = %47, %41, %23, %10, %3
  %49 = phi i32 [ -22, %10 ], [ -19, %23 ], [ -12, %3 ], [ 0, %41 ], [ 0, %47 ]
  ret i32 %49
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ve_spc_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !8
  %6 = load ptr, ptr @info, align 4
  %7 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %6, i32 0, i32 3
  store i32 %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %11, %2
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ve_spc_clk_init() #2 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2
  %4 = load ptr, ptr @info, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %117, label %6

6:                                                ; preds = %0
  %7 = tail call fastcc i32 @ve_spc_populate_opps(i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @ve_spc_populate_opps(i32 noundef 1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %112

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %2, i32 8
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  br label %23

21:                                               ; preds = %9, %6
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %117

23:                                               ; preds = %108, %16
  %24 = phi i32 [ %13, %16 ], [ %109, %108 ]
  %25 = call ptr @get_cpu_device(i32 noundef %24) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %24) #12
  br label %108

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %17, i8 0, i32 16, i1 false) #10, !annotation !11
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 16) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #10
  br label %51

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.clk_hw, ptr %31, i32 0, i32 2
  store ptr %2, ptr %35, align 8
  %36 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %37, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.clk_spc, ptr %31, i32 0, i32 1
  %41 = call i32 @llvm.smax.i32(i32 %39, i32 0) #10
  store i32 %41, ptr %40, align 4
  %42 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load ptr, ptr %25, align 4
  br label %47

47:                                               ; preds = %45, %34
  %48 = phi ptr [ %46, %45 ], [ %43, %34 ]
  store ptr %48, ptr %2, align 4
  store ptr @clk_spc_ops, ptr %18, align 4
  store i32 64, ptr %19, align 4
  store i8 0, ptr %20, align 4
  %49 = call ptr @devm_clk_register(ptr noundef nonnull %25, ptr noundef nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #10
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %33
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %24) #12
  br label %108

53:                                               ; preds = %47
  %54 = load ptr, ptr %42, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load ptr, ptr %25, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi ptr [ %57, %56 ], [ %54, %53 ]
  %60 = call i32 @clk_register_clkdev(ptr noundef %49, ptr noundef null, ptr noundef %59) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %24) #12
  br label %108

64:                                               ; preds = %58
  %65 = load i32, ptr %36, align 4
  %66 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %65, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr [2 x i8], ptr %3, i32 0, i32 %67
  %69 = load i8, ptr %68, align 1, !range !12
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %64
  %72 = call i32 @llvm.smax.i32(i32 %67, i32 0) #10
  %73 = load ptr, ptr @info, align 4
  %74 = getelementptr %struct.ve_spc_drvdata, ptr %73, i32 0, i32 7, i32 %72
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = getelementptr %struct.ve_spc_drvdata, ptr %73, i32 0, i32 6, i32 %72
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %89, %77
  %81 = phi ptr [ %91, %89 ], [ %79, %77 ]
  %82 = phi i32 [ %90, %89 ], [ 0, %77 ]
  %83 = load i32, ptr %81, align 4
  %84 = mul i32 %83, 1000
  %85 = getelementptr inbounds %struct.ve_spc_opp, ptr %81, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = call i32 @dev_pm_opp_add(ptr noundef nonnull %25, i32 noundef %84, i32 noundef %86) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = add nuw nsw i32 %82, 1
  %91 = getelementptr %struct.ve_spc_opp, ptr %81, i32 1
  %92 = icmp eq i32 %90, %75
  br i1 %92, label %98, label %80

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.ve_spc_opp, ptr %81, i32 0, i32 1
  %95 = load i32, ptr %81, align 4
  %96 = load i32, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %25, ptr noundef nonnull @.str.12, i32 noundef %95, i32 noundef %96) #12
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %24) #12
  br label %108

98:                                               ; preds = %89
  %99 = load i32, ptr %36, align 4
  br label %100

100:                                              ; preds = %98, %71
  %101 = phi i32 [ %99, %98 ], [ %65, %71 ]
  %102 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %101, i32 6
  %103 = call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %25, ptr noundef %102) #10
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %24) #12
  br label %108

107:                                              ; preds = %100
  store i8 1, ptr %68, align 1
  br label %108

108:                                              ; preds = %107, %105, %93, %64, %62, %51, %27
  %109 = call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #14
  %110 = load i32, ptr @nr_cpu_ids, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %23, label %112

112:                                              ; preds = %108, %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #10
  %113 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #10
  store ptr @.str.11, ptr %113, align 4
  %114 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %114, align 8
  %115 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %115, i8 0, i64 16, i1 false) #10
  %116 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #10
  br label %117

117:                                              ; preds = %112, %21, %0
  %118 = phi i32 [ -19, %21 ], [ 0, %112 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ve_spc_populate_opps(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @info, align 4
  %7 = getelementptr %struct.ve_spc_drvdata, ptr %6, i32 0, i32 6, i32 %0
  store ptr %3, ptr %7, align 4
  %8 = load ptr, ptr @info, align 4
  %9 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %8, i32 0, i32 4
  %12 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  %13 = icmp ult i32 %12, 20000
  %14 = select i1 %13, i32 1073741822, i32 2
  %15 = tail call i32 @down_timeout(ptr noundef %11, i32 noundef %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %5
  %18 = icmp eq i32 %10, %0
  %19 = select i1 %18, i32 3088, i32 3120
  br label %20

20:                                               ; preds = %69, %17
  %21 = phi i32 [ 0, %17 ], [ %55, %69 ]
  %22 = phi i32 [ %19, %17 ], [ %71, %69 ]
  %23 = phi i32 [ 0, %17 ], [ %67, %69 ]
  %24 = phi ptr [ %3, %17 ], [ %70, %69 ]
  %25 = load ptr, ptr @info, align 4
  %26 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %25, i32 0, i32 5
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %25, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %28 = load ptr, ptr @info, align 4
  %29 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %28, i32 0, i32 2
  store i32 768, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %30 = lshr exact i32 %22, 2
  %31 = or i32 %30, -2141192192
  %32 = load ptr, ptr @info, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #10, !srcloc !9
  %35 = load ptr, ptr @info, align 4
  %36 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %35, i32 0, i32 5
  %37 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  %38 = icmp ult i32 %37, 20000
  %39 = select i1 %38, i32 1073741822, i32 2
  %40 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %36, i32 noundef %39) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %20
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load ptr, ptr @info, align 4
  %46 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr i8, ptr %51, i32 116
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  br label %54

54:                                               ; preds = %50, %44, %42, %20
  %55 = phi i32 [ %21, %20 ], [ %21, %44 ], [ %53, %50 ], [ %21, %42 ]
  %56 = phi i32 [ -110, %20 ], [ -5, %44 ], [ 0, %50 ], [ %40, %42 ]
  %57 = load ptr, ptr @info, align 4
  %58 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %57, i32 0, i32 2
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %57, i32 0, i32 4
  tail call void @up(ptr noundef %59) #10
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = and i32 %55, 1048575
  %63 = mul nuw nsw i32 %62, 20
  store i32 %63, ptr %24, align 4
  %64 = lshr i32 %55, 20
  %65 = mul nuw nsw i32 %64, 1000
  %66 = getelementptr inbounds %struct.ve_spc_opp, ptr %24, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = add nuw nsw i32 %23, 1
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %79, label %69

69:                                               ; preds = %61
  %70 = getelementptr %struct.ve_spc_opp, ptr %24, i32 1
  %71 = add nuw nsw i32 %22, 4
  %72 = load ptr, ptr @info, align 4
  %73 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %72, i32 0, i32 4
  %74 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  %75 = icmp ult i32 %74, 20000
  %76 = select i1 %75, i32 1073741822, i32 2
  %77 = tail call i32 @down_timeout(ptr noundef %73, i32 noundef %76) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %20, label %79

79:                                               ; preds = %69, %61, %54, %5
  %80 = phi i32 [ 0, %5 ], [ 8, %61 ], [ %23, %54 ], [ %67, %69 ]
  %81 = phi i32 [ -62, %5 ], [ 0, %61 ], [ %56, %54 ], [ -62, %69 ]
  %82 = load ptr, ptr @info, align 4
  %83 = getelementptr %struct.ve_spc_drvdata, ptr %82, i32 0, i32 7, i32 %0
  store i32 %80, ptr %83, align 4
  br label %84

84:                                               ; preds = %79, %1
  %85 = phi i32 [ %81, %79 ], [ -12, %1 ]
  ret i32 %85
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_spc, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr @info, align 4
  %6 = getelementptr %struct.ve_spc_drvdata, ptr %5, i32 0, i32 6, i32 %4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %4
  %11 = select i1 %10, i32 0, i32 8
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  %15 = load ptr, ptr @info, align 4
  %16 = getelementptr %struct.ve_spc_drvdata, ptr %15, i32 0, i32 7, i32 %4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = getelementptr %struct.ve_spc_opp, ptr %7, i32 %14
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, 1000
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i32 [ %22, %19 ], [ -5, %2 ]
  ret i32 %24
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @spc_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #8 {
  %4 = getelementptr inbounds %struct.clk_spc, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @info, align 4
  %7 = getelementptr %struct.ve_spc_drvdata, ptr %6, i32 0, i32 7, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %1, 1000
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = getelementptr %struct.ve_spc_drvdata, ptr %6, i32 0, i32 6, i32 %5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ %24, %14 ], [ -1, %11 ]
  %16 = phi i32 [ %23, %14 ], [ 0, %11 ]
  %17 = phi ptr [ %26, %14 ], [ %13, %11 ]
  %18 = phi i32 [ %25, %14 ], [ 0, %11 ]
  %19 = load i32, ptr %17, align 4
  %20 = icmp ult i32 %19, %9
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %15) #10
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %16) #10
  %23 = select i1 %20, i32 %22, i32 %16
  %24 = select i1 %20, i32 %15, i32 %21
  %25 = add nuw nsw i32 %18, 1
  %26 = getelementptr %struct.ve_spc_opp, ptr %17, i32 1
  %27 = icmp eq i32 %25, %8
  br i1 %27, label %28, label %14

28:                                               ; preds = %14
  %29 = icmp eq i32 %24, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %3
  %31 = phi i32 [ %23, %28 ], [ 0, %3 ]
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %31, %30 ], [ %24, %28 ]
  %34 = mul i32 %33, 1000
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spc_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_spc, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = udiv i32 %1, 1000
  %7 = load ptr, ptr @info, align 4
  %8 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %5
  %11 = select i1 %10, i32 0, i32 8
  %12 = getelementptr %struct.ve_spc_drvdata, ptr %7, i32 0, i32 7, i32 %5
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = getelementptr %struct.ve_spc_drvdata, ptr %7, i32 0, i32 6, i32 %5
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %23, %15
  %19 = phi ptr [ %25, %23 ], [ %17, %15 ]
  %20 = phi i32 [ %24, %23 ], [ 0, %15 ]
  %21 = load i32, ptr %19, align 4
  %22 = icmp eq i32 %21, %6
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %20, 1
  %25 = getelementptr %struct.ve_spc_opp, ptr %19, i32 1
  %26 = icmp eq i32 %24, %13
  br i1 %26, label %71, label %18

27:                                               ; preds = %18, %3
  %28 = phi i32 [ 0, %3 ], [ %20, %18 ]
  %29 = icmp eq i32 %28, %13
  %30 = select i1 %29, i32 -22, i32 %28
  br i1 %29, label %71, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %7, i32 0, i32 4
  %33 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  %34 = icmp ult i32 %33, 20000
  %35 = select i1 %34, i32 1073741822, i32 2
  %36 = tail call i32 @down_timeout(ptr noundef %32, i32 noundef %35) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %31
  %39 = load ptr, ptr @info, align 4
  %40 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %39, i32 0, i32 5
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %39, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %42 = select i1 %10, i32 0, i32 4
  %43 = shl nuw nsw i32 3, %42
  %44 = load ptr, ptr @info, align 4
  %45 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %44, i32 0, i32 2
  store i32 %43, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %46 = load ptr, ptr @info, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %30) #10, !srcloc !9
  %49 = load ptr, ptr @info, align 4
  %50 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %49, i32 0, i32 5
  %51 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  %52 = icmp ult i32 %51, 20000
  %53 = select i1 %52, i32 1073741822, i32 2
  %54 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %50, i32 noundef %53) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %38
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %56
  %59 = load ptr, ptr @info, align 4
  %60 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = shl nuw nsw i32 1, %42
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 -5, i32 0
  br label %66

66:                                               ; preds = %58, %56, %38
  %67 = phi i32 [ %65, %58 ], [ %54, %56 ], [ -110, %38 ]
  %68 = load ptr, ptr @info, align 4
  %69 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %68, i32 0, i32 2
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %68, i32 0, i32 4
  tail call void @up(ptr noundef %70) #10
  br label %71

71:                                               ; preds = %66, %31, %27, %23
  %72 = phi i32 [ %67, %66 ], [ -22, %27 ], [ -62, %31 ], [ -22, %23 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly willreturn }

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
!8 = !{i64 4039500}
!9 = !{i64 4039082}
!10 = !{i64 2148932082, i64 2148932105, i64 2148932137, i64 2148932169, i64 2148932207, i64 2148932237}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
!13 = !{i64 2153026936}
!14 = !{i64 2153027514}
!15 = !{i64 2153026359}
