; ModuleID = '/llk/IR/drivers/clocksource/sh_cmt.c_pt.bc'
source_filename = "../drivers/clocksource/sh_cmt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sh_cmt_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sh_cmt_device = type { ptr, ptr, ptr, ptr, i32, %struct.raw_spinlock, ptr, i32, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_cmt_channel = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, %struct.raw_spinlock, [20 x i8], %struct.clock_event_device, %struct.clocksource, i64, i8, [15 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sh_cmt_device_driver = internal global %struct.platform_driver { ptr @sh_cmt_probe, ptr @sh_cmt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_cmt_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sh_cmt_id_table, i8 0 }, align 4
@__initcall__kmod_sh_cmt__171_1147_sh_cmt_init4 = internal global ptr @sh_cmt_init, section ".initcall4.init", align 4
@__exitcall_sh_cmt_exit = internal global ptr @sh_cmt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [26 x i8] c"sh_cmt.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [43 x i8] c"sh_cmt.description=SuperH CMT Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [39 x i8] c"sh_cmt.file=drivers/clocksource/sh_cmt\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [22 x i8] c"sh_cmt.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"sh_cmt\00", align 1
@sh_cmt_of_table = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cmt-48\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cmt-48-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh73a0-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-cmt0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-cmt0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 144) }, %struct.of_device_id zeroinitializer], align 4
@sh_cmt_id_table = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh-cmt-16\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh_cmt_info to i32) }, %struct.platform_device_id { [20 x i8] c"sh-cmt-32\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @sh_cmt_info, i64 36) to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kept as earlytimer\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"ch%u: registration failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"ch%u: failed to request irq %d\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"ch%u: used for clock events\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"ch%u: too long delay\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"ch%u: delta out of range\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"ch%u: used for %s clock events\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"oneshot\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"ch%u: cannot enable clock\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"ch%u: cannot clear CMCNT\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"ch%u: used as clock source\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"drivers/clocksource/sh_cmt.c\00", align 1
@sh_cmt_info = internal constant [5 x %struct.sh_cmt_info] [%struct.sh_cmt_info { i32 0, i32 0, i32 16, i32 128, i32 -129, ptr @sh_cmt_read16, ptr @sh_cmt_write16, ptr @sh_cmt_read16, ptr @sh_cmt_write16 }, %struct.sh_cmt_info { i32 1, i32 0, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read16, ptr @sh_cmt_write16, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }, %struct.sh_cmt_info { i32 2, i32 63, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read32, ptr @sh_cmt_write32, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }, %struct.sh_cmt_info { i32 3, i32 96, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read32, ptr @sh_cmt_write32, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }, %struct.sh_cmt_info { i32 4, i32 255, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read32, ptr @sh_cmt_write32, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_sh_cmt_exit, ptr @__initcall__kmod_sh_cmt__171_1147_sh_cmt_init4, ptr @sh_cmt_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_cmt_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_cmt_device_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_cmt_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_cmt_device_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %4) #8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  br label %305

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %317, label %12

12:                                               ; preds = %8
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @of_device_get_match_data(ptr noundef %4) #8
  %19 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sh_cmt_info, ptr %18, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 8
  store i32 %21, ptr %22, align 8
  %23 = load ptr, ptr %10, align 8
  br label %38

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device_id, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = load i32, ptr %26, align 4
  %36 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 8
  store i32 %35, ptr %36, align 8
  br label %38

37:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #9
  br label %302

38:                                               ; preds = %28, %17
  %39 = phi ptr [ %0, %28 ], [ %23, %17 ]
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %41 = tail call ptr @clk_get(ptr noundef %40, ptr noundef nonnull @.str.3) #8
  %42 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %296, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @clk_prepare(ptr noundef %41) #8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %293, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %42, align 4
  %49 = tail call i32 @clk_enable(ptr noundef %48) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %290, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sh_cmt_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 16
  %57 = load ptr, ptr %42, align 4
  %58 = tail call i32 @clk_get_rate(ptr noundef %57) #8
  %59 = select i1 %56, i32 9, i32 3
  %60 = lshr i32 %58, %59
  %61 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 4
  store i32 %60, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = tail call ptr @platform_get_resource(ptr noundef %62, i32 noundef 512, i32 noundef 0) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %51
  %66 = load i32, ptr %63, align 4
  %67 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 1, %66
  %70 = add i32 %69, %68
  %71 = tail call ptr @ioremap(i32 noundef %66, i32 noundef %70) #8
  %72 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 2
  store ptr %71, ptr %72, align 8
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %65, %51
  %75 = phi ptr [ @.str.5, %51 ], [ @.str.6, %65 ]
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull %75) #9
  br label %287

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 8
  %80 = load i32, ptr %79, align 8
  %81 = tail call i32 @__sw_hweight8(i32 noundef %80) #8
  %82 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 7
  store i32 %81, ptr %82, align 4
  %83 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %81, i32 384) #8
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %85, label %87, !prof !8

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 6
  store ptr null, ptr %86, align 8
  br label %283

87:                                               ; preds = %78
  %88 = extractvalue { i32, i1 } %83, 0
  %89 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %88, i32 noundef 3520) #11
  %90 = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 6
  store ptr %89, ptr %90, align 8
  %91 = icmp eq ptr %89, null
  br i1 %91, label %283, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %82, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %279, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %79, align 8
  br label %97

97:                                               ; preds = %274, %95
  %98 = phi ptr [ %89, %95 ], [ %278, %274 ]
  %99 = phi i32 [ %93, %95 ], [ %272, %274 ]
  %100 = phi i32 [ %96, %95 ], [ %277, %274 ]
  %101 = phi i32 [ 0, %95 ], [ %271, %274 ]
  %102 = tail call i32 @llvm.cttz.i32(i32 %100, i1 true) #8, !range !9
  %103 = icmp eq i32 %100, 0
  %104 = select i1 %103, i32 -1, i32 %102
  %105 = icmp eq i32 %101, 1
  %106 = icmp eq i32 %99, 1
  %107 = select i1 %105, i1 true, i1 %106
  %108 = icmp eq i32 %101, 0
  %109 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101
  %110 = freeze i1 %106
  %111 = icmp ult i32 %101, 2
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %113, label %270

113:                                              ; preds = %97
  store ptr %10, ptr %109, align 64
  %114 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 1
  store i32 %101, ptr %114, align 4
  %115 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 2
  store i32 %104, ptr %115, align 8
  %116 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 5
  store i32 %104, ptr %116, align 4
  %117 = load ptr, ptr %52, align 4
  %118 = load i32, ptr %117, align 4
  switch i32 %118, label %145 [
    i32 0, label %119
    i32 1, label %125
    i32 2, label %125
    i32 3, label %131
    i32 4, label %131
  ]

119:                                              ; preds = %113
  %120 = load ptr, ptr %72, align 8
  %121 = getelementptr i8, ptr %120, i32 2
  %122 = mul nsw i32 %104, 6
  %123 = getelementptr i8, ptr %121, i32 %122
  %124 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 4
  store ptr %123, ptr %124, align 16
  br label %145

125:                                              ; preds = %113, %113
  %126 = load ptr, ptr %72, align 8
  %127 = getelementptr i8, ptr %126, i32 16
  %128 = shl nsw i32 %104, 4
  %129 = getelementptr i8, ptr %127, i32 %128
  %130 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 4
  store ptr %129, ptr %130, align 16
  br label %145

131:                                              ; preds = %113, %113
  %132 = load ptr, ptr %72, align 8
  %133 = shl nsw i32 %104, 8
  %134 = getelementptr i8, ptr %132, i32 %133
  %135 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 3
  store ptr %134, ptr %135, align 4
  %136 = getelementptr i8, ptr %134, i32 16
  %137 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 4
  store ptr %136, ptr %137, align 16
  store i32 0, ptr %116, align 4
  %138 = load ptr, ptr %72, align 8
  %139 = getelementptr i8, ptr %138, i32 4096
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %141 = shl nuw i32 1, %104
  %142 = or i32 %140, %141
  %143 = load ptr, ptr %72, align 8
  %144 = getelementptr i8, ptr %143, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #8, !srcloc !13
  br label %145

145:                                              ; preds = %131, %125, %119, %113
  %146 = load ptr, ptr %52, align 4
  %147 = getelementptr inbounds %struct.sh_cmt_info, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 32
  %150 = shl nsw i32 -1, %148
  %151 = xor i32 %150, -1
  %152 = select i1 %149, i32 -1, i32 %151
  %153 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 9
  store i32 %152, ptr %153, align 4
  %154 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 7
  store i32 %152, ptr %154, align 4
  %155 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 10
  store i32 0, ptr %155, align 8
  %156 = load ptr, ptr %10, align 8
  %157 = getelementptr inbounds %struct.platform_device, ptr %156, i32 0, i32 3, i32 3
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.platform_device, ptr %156, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  br label %163

163:                                              ; preds = %160, %145
  %164 = phi ptr [ %162, %160 ], [ %158, %145 ]
  br i1 %108, label %165, label %232

165:                                              ; preds = %163
  %166 = load ptr, ptr %109, align 64
  %167 = getelementptr inbounds %struct.sh_cmt_device, ptr %166, i32 0, i32 9
  store i8 1, ptr %167, align 4
  %168 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12
  %169 = load ptr, ptr %109, align 64
  %170 = load ptr, ptr %169, align 4
  %171 = load i32, ptr %114, align 4
  %172 = tail call i32 @platform_get_irq(ptr noundef %170, i32 noundef %171) #8
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %264, label %174

174:                                              ; preds = %165
  %175 = load ptr, ptr %109, align 64
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.platform_device, ptr %176, i32 0, i32 3, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.platform_device, ptr %176, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %174
  %184 = phi ptr [ %182, %180 ], [ %178, %174 ]
  %185 = tail call i32 @request_threaded_irq(i32 noundef %172, ptr noundef nonnull @sh_cmt_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %184, ptr noundef %109) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %109, align 64
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.platform_device, ptr %189, i32 0, i32 3
  %191 = load i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.8, i32 noundef %191, i32 noundef %172) #9
  br label %229

192:                                              ; preds = %183
  %193 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 21
  store ptr %164, ptr %193, align 4
  %194 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 9
  store i32 3, ptr %194, align 4
  %195 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 22
  store i32 125, ptr %195, align 8
  %196 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 25
  store ptr @__cpu_possible_mask, ptr %196, align 4
  %197 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 1
  store ptr @sh_cmt_clock_event_next, ptr %197, align 4
  %198 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 14
  store ptr @sh_cmt_clock_event_shutdown, ptr %198, align 8
  %199 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 11
  store ptr @sh_cmt_clock_event_set_periodic, ptr %199, align 4
  %200 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 12
  store ptr @sh_cmt_clock_event_set_oneshot, ptr %200, align 64
  %201 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 17
  store ptr @sh_cmt_clock_event_suspend, ptr %201, align 4
  %202 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 18
  store ptr @sh_cmt_clock_event_resume, ptr %202, align 8
  %203 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 7
  store i32 32, ptr %203, align 4
  %204 = load ptr, ptr %109, align 64
  %205 = getelementptr inbounds %struct.sh_cmt_device, ptr %204, i32 0, i32 4
  %206 = load i32, ptr %205, align 4
  %207 = zext i32 %206 to i64
  %208 = shl nuw i64 %207, 32
  %209 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %208, i32 0) #12, !srcloc !14
  %210 = extractvalue { i64, i32 } %209, 0
  %211 = extractvalue { i64, i32 } %209, 1
  %212 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %208, i64 %210, i32 %211) #12, !srcloc !15
  %213 = extractvalue { i64, i32 } %212, 0
  %214 = lshr i64 %213, 29
  %215 = trunc i64 %214 to i32
  %216 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 6
  store i32 %215, ptr %216, align 8
  %217 = load i32, ptr %153, align 4
  %218 = tail call i64 @clockevent_delta2ns(i32 noundef %217, ptr noundef %168) #8
  %219 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 4
  store i64 %218, ptr %219, align 8
  %220 = load i32, ptr %153, align 4
  %221 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 20
  store i32 %220, ptr %221, align 32
  %222 = tail call i64 @clockevent_delta2ns(i32 noundef 31, ptr noundef %168) #8
  %223 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 5
  store i64 %222, ptr %223, align 32
  %224 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 0, i32 12, i32 19
  store i32 31, ptr %224, align 4
  %225 = load ptr, ptr %109, align 64
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.platform_device, ptr %226, i32 0, i32 3
  %228 = load i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %227, ptr noundef nonnull @.str.9, i32 noundef %228) #9
  tail call void @clockevents_register_device(ptr noundef %168) #8
  br label %229

229:                                              ; preds = %192, %187
  %230 = icmp sgt i32 %185, -1
  %231 = and i1 %107, %230
  br i1 %231, label %233, label %260

232:                                              ; preds = %163
  br i1 %107, label %233, label %262

233:                                              ; preds = %232, %229
  %234 = load ptr, ptr %109, align 64
  %235 = getelementptr inbounds %struct.sh_cmt_device, ptr %234, i32 0, i32 10
  store i8 1, ptr %235, align 1
  %236 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13
  %237 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 8
  store ptr %164, ptr %237, align 8
  %238 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 10
  store i32 125, ptr %238, align 4
  store ptr @sh_cmt_clocksource_read, ptr %236, align 8
  %239 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 14
  store ptr @sh_cmt_clocksource_enable, ptr %239, align 4
  %240 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 15
  store ptr @sh_cmt_clocksource_disable, ptr %240, align 8
  %241 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 16
  store ptr @sh_cmt_clocksource_suspend, ptr %241, align 4
  %242 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 17
  store ptr @sh_cmt_clocksource_resume, ptr %242, align 8
  %243 = load ptr, ptr %109, align 64
  %244 = getelementptr inbounds %struct.sh_cmt_device, ptr %243, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.sh_cmt_info, ptr %245, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = sub i32 64, %247
  %249 = zext i32 %248 to i64
  %250 = lshr i64 -1, %249
  %251 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 1
  store i64 %250, ptr %251, align 8
  %252 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 13, i32 13
  store i32 1, ptr %252, align 8
  %253 = load ptr, ptr %243, align 4
  %254 = getelementptr inbounds %struct.platform_device, ptr %253, i32 0, i32 3
  %255 = load i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %254, ptr noundef nonnull @.str.17, i32 noundef %255) #9
  %256 = load ptr, ptr %109, align 64
  %257 = getelementptr inbounds %struct.sh_cmt_device, ptr %256, i32 0, i32 4
  %258 = load i32, ptr %257, align 4
  %259 = tail call i32 @__clocksource_register_scale(ptr noundef %236, i32 noundef 1, i32 noundef %258) #8
  br label %262

260:                                              ; preds = %229
  %261 = tail call i32 @llvm.smin.i32(i32 %185, i32 0) #8
  br i1 %230, label %262, label %264

262:                                              ; preds = %260, %233, %232
  %263 = getelementptr %struct.sh_cmt_channel, ptr %98, i32 %101, i32 15
  store i8 0, ptr %263, align 16
  br label %270

264:                                              ; preds = %260, %165
  %265 = phi i32 [ %261, %260 ], [ %172, %165 ]
  %266 = load ptr, ptr %10, align 8
  %267 = getelementptr inbounds %struct.platform_device, ptr %266, i32 0, i32 3
  %268 = load i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %267, ptr noundef nonnull @.str.7, i32 noundef %268) #9
  %269 = icmp slt i32 %265, 0
  br i1 %269, label %281, label %270

270:                                              ; preds = %264, %262, %97
  %271 = add nuw i32 %101, 1
  %272 = load i32, ptr %82, align 4
  %273 = icmp ult i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = shl nuw i32 1, %104
  %276 = xor i32 %275, -1
  %277 = and i32 %100, %276
  %278 = load ptr, ptr %90, align 8
  br label %97

279:                                              ; preds = %270, %92
  %280 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %280) #8
  store ptr %10, ptr %2, align 8
  br label %305

281:                                              ; preds = %264
  %282 = load ptr, ptr %90, align 8
  br label %283

283:                                              ; preds = %281, %87, %85
  %284 = phi ptr [ null, %87 ], [ null, %85 ], [ %282, %281 ]
  %285 = phi i32 [ -12, %87 ], [ -12, %85 ], [ %265, %281 ]
  tail call void @kfree(ptr noundef %284) #8
  %286 = load ptr, ptr %72, align 8
  tail call void @iounmap(ptr noundef %286) #8
  br label %287

287:                                              ; preds = %283, %74
  %288 = phi i32 [ %285, %283 ], [ -6, %74 ]
  %289 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %289) #8
  br label %290

290:                                              ; preds = %287, %47
  %291 = phi i32 [ %49, %47 ], [ %288, %287 ]
  %292 = load ptr, ptr %42, align 4
  tail call void @clk_unprepare(ptr noundef %292) #8
  br label %293

293:                                              ; preds = %290, %44
  %294 = phi i32 [ %45, %44 ], [ %291, %290 ]
  %295 = load ptr, ptr %42, align 4
  tail call void @clk_put(ptr noundef %295) #8
  br label %302

296:                                              ; preds = %38
  %297 = load ptr, ptr %10, align 8
  %298 = getelementptr inbounds %struct.platform_device, ptr %297, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.4) #9
  %299 = load ptr, ptr %42, align 4
  %300 = ptrtoint ptr %299 to i32
  %301 = icmp eq ptr %299, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %296, %293, %37
  %303 = phi i32 [ %300, %296 ], [ -6, %37 ], [ %294, %293 ]
  tail call void @kfree(ptr noundef nonnull %10) #8
  %304 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 0) #8
  br label %317

305:                                              ; preds = %296, %279, %7
  %306 = phi ptr [ %3, %7 ], [ %10, %279 ], [ %10, %296 ]
  %307 = getelementptr inbounds %struct.sh_cmt_device, ptr %306, i32 0, i32 9
  %308 = load i8, ptr %307, align 4, !range !16
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.sh_cmt_device, ptr %306, i32 0, i32 10
  %312 = load i8, ptr %311, align 1, !range !16
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %310, %305
  tail call void @pm_runtime_irq_safe(ptr noundef %4) #8
  br label %317

315:                                              ; preds = %310
  %316 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 0) #8
  br label %317

317:                                              ; preds = %315, %314, %302, %8
  %318 = phi i32 [ %303, %302 ], [ -12, %8 ], [ 0, %315 ], [ 0, %314 ]
  ret i32 %318
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_cmt_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 64
  %4 = getelementptr inbounds %struct.sh_cmt_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_cmt_info, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 16
  %10 = tail call i32 %7(ptr noundef %9, i32 noundef 0) #8
  %11 = load ptr, ptr %1, align 64
  %12 = getelementptr inbounds %struct.sh_cmt_device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sh_cmt_info, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %10
  %17 = getelementptr inbounds %struct.sh_cmt_info, ptr %13, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %8, align 16
  tail call void %18(ptr noundef %19, i32 noundef 0, i32 noundef %16) #8
  %20 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 14
  %30 = load i64, ptr %29, align 8
  %31 = add i64 %30, %28
  store i64 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %24, %2
  %33 = and i32 %21, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 8
  store i32 %37, ptr %38, align 32
  br label %39

39:                                               ; preds = %35, %32
  %40 = or i32 %21, 16
  store i32 %40, ptr %20, align 8
  %41 = and i32 %21, 9
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 12
  %45 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 12, i32 8
  %46 = load i32, ptr %45, align 16
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 8
  store i32 %50, ptr %51, align 32
  %52 = or i32 %21, 20
  store i32 %52, ptr %20, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load ptr, ptr %44, align 64
  tail call void %54(ptr noundef %44) #8
  %55 = load i32, ptr %20, align 8
  br label %56

56:                                               ; preds = %53, %39
  %57 = phi i32 [ %55, %53 ], [ %40, %39 ]
  %58 = and i32 %57, -9
  %59 = and i32 %57, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %56
  %62 = and i32 %57, -13
  store i32 %62, ptr %20, align 8
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %1, i32 noundef 1)
  %63 = load i32, ptr %20, align 8
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 12, i32 8
  %68 = load i32, ptr %67, align 16
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.sh_cmt_channel, ptr %1, i32 0, i32 8
  %74 = load i32, ptr %73, align 32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70, %66
  %77 = and i32 %63, -5
  br label %78

78:                                               ; preds = %76, %70, %61, %56
  %79 = phi i32 [ %63, %61 ], [ %77, %76 ], [ %63, %70 ], [ %58, %56 ]
  %80 = and i32 %79, -17
  store i32 %80, ptr %20, align 8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_next(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 16
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %8, label %7, !prof !17

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/sh_cmt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 769, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %1, i32 -40
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  %13 = add i32 %0, -1
  br i1 %12, label %16, label %14, !prof !8

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %1, i32 -32
  store i32 %13, ptr %15, align 32
  br label %17

16:                                               ; preds = %8
  tail call fastcc void @sh_cmt_set_next(ptr noundef %3, i32 noundef %13)
  br label %17

17:                                               ; preds = %16, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  tail call fastcc void @sh_cmt_stop(ptr noundef %2, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_set_periodic(ptr noundef %0) #2 {
  tail call fastcc void @sh_cmt_clock_event_set_state(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_set_oneshot(ptr noundef %0) #2 {
  tail call fastcc void @sh_cmt_clock_event_set_state(ptr noundef %0, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_clock_event_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %5) #8
  %6 = load ptr, ptr %2, align 64
  %7 = getelementptr inbounds %struct.sh_cmt_device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_clock_event_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.sh_cmt_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = load ptr, ptr %2, align 64
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clockevent_delta2ns(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 32
  %5 = load ptr, ptr %0, align 64
  %6 = getelementptr inbounds %struct.sh_cmt_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_cmt_info, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = tail call i32 %9(ptr noundef %11, i32 noundef 0) #8
  %13 = load ptr, ptr %0, align 64
  %14 = getelementptr inbounds %struct.sh_cmt_device, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sh_cmt_info, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %12
  br label %19

19:                                               ; preds = %63, %2
  %20 = phi ptr [ %15, %2 ], [ %49, %63 ]
  %21 = phi i32 [ %18, %2 ], [ %52, %63 ]
  %22 = getelementptr inbounds %struct.sh_cmt_info, ptr %20, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %10, align 16
  %25 = tail call i32 %23(ptr noundef %24, i32 noundef 1) #8
  %26 = load ptr, ptr %0, align 64
  %27 = getelementptr inbounds %struct.sh_cmt_device, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sh_cmt_info, ptr %28, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %10, align 16
  %32 = tail call i32 %30(ptr noundef %31, i32 noundef 1) #8
  %33 = load ptr, ptr %0, align 64
  %34 = getelementptr inbounds %struct.sh_cmt_device, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sh_cmt_info, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %10, align 16
  %39 = tail call i32 %37(ptr noundef %38, i32 noundef 1) #8
  %40 = load ptr, ptr %0, align 64
  %41 = getelementptr inbounds %struct.sh_cmt_device, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sh_cmt_info, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %10, align 16
  %46 = tail call i32 %44(ptr noundef %45, i32 noundef 0) #8
  %47 = load ptr, ptr %0, align 64
  %48 = getelementptr inbounds %struct.sh_cmt_device, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sh_cmt_info, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %46
  %53 = icmp eq i32 %52, %21
  br i1 %53, label %54, label %63, !prof !17

54:                                               ; preds = %19
  %55 = icmp ugt i32 %25, %32
  %56 = icmp ult i32 %25, %39
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %63, label %58, !prof !19

58:                                               ; preds = %54
  %59 = icmp ugt i32 %32, %39
  %60 = select i1 %59, i1 %55, i1 false
  %61 = select i1 %56, i1 %59, i1 false
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %64, !prof !20

63:                                               ; preds = %58, %54, %19
  br label %19

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = or i32 %66, 4
  store i32 %67, ptr %65, align 8
  %68 = icmp eq i32 %21, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = or i32 %66, 12
  store i32 %70, ptr %65, align 8
  br label %170

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.sh_cmt_device, ptr %47, i32 0, i32 1
  %73 = icmp eq i32 %1, 0
  %74 = select i1 %73, i32 %32, i32 0
  %75 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 9
  %76 = load ptr, ptr %72, align 4
  br label %77

77:                                               ; preds = %160, %71
  %78 = phi ptr [ %76, %71 ], [ %131, %160 ]
  %79 = phi i32 [ 0, %71 ], [ %163, %160 ]
  %80 = phi i32 [ %74, %71 ], [ %114, %160 ]
  %81 = add i32 %79, %4
  %82 = add i32 %81, %80
  %83 = load i32, ptr %75, align 4
  %84 = tail call i32 @llvm.umin.i32(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.sh_cmt_info, ptr %78, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %10, align 16
  tail call void %86(ptr noundef %87, i32 noundef 2, i32 noundef %84) #8
  %88 = load ptr, ptr %0, align 64
  %89 = getelementptr inbounds %struct.sh_cmt_device, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.sh_cmt_info, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %10, align 16
  %94 = tail call i32 %92(ptr noundef %93, i32 noundef 0) #8
  %95 = load ptr, ptr %0, align 64
  %96 = getelementptr inbounds %struct.sh_cmt_device, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.sh_cmt_info, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, %94
  br label %101

101:                                              ; preds = %145, %77
  %102 = phi ptr [ %97, %77 ], [ %131, %145 ]
  %103 = phi i32 [ %100, %77 ], [ %134, %145 ]
  %104 = getelementptr inbounds %struct.sh_cmt_info, ptr %102, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %10, align 16
  %107 = tail call i32 %105(ptr noundef %106, i32 noundef 1) #8
  %108 = load ptr, ptr %0, align 64
  %109 = getelementptr inbounds %struct.sh_cmt_device, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.sh_cmt_info, ptr %110, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %10, align 16
  %114 = tail call i32 %112(ptr noundef %113, i32 noundef 1) #8
  %115 = load ptr, ptr %0, align 64
  %116 = getelementptr inbounds %struct.sh_cmt_device, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.sh_cmt_info, ptr %117, i32 0, i32 7
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %10, align 16
  %121 = tail call i32 %119(ptr noundef %120, i32 noundef 1) #8
  %122 = load ptr, ptr %0, align 64
  %123 = getelementptr inbounds %struct.sh_cmt_device, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.sh_cmt_info, ptr %124, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %10, align 16
  %128 = tail call i32 %126(ptr noundef %127, i32 noundef 0) #8
  %129 = load ptr, ptr %0, align 64
  %130 = getelementptr inbounds %struct.sh_cmt_device, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.sh_cmt_info, ptr %131, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, %128
  %135 = icmp eq i32 %134, %103
  br i1 %135, label %136, label %145, !prof !17

136:                                              ; preds = %101
  %137 = icmp ugt i32 %107, %114
  %138 = icmp ult i32 %107, %121
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %145, label %140, !prof !19

140:                                              ; preds = %136
  %141 = icmp ugt i32 %114, %121
  %142 = select i1 %141, i1 %137, i1 false
  %143 = select i1 %138, i1 %141, i1 false
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %145, label %146, !prof !20

145:                                              ; preds = %140, %136, %101
  br label %101

146:                                              ; preds = %140
  %147 = icmp eq i32 %103, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = icmp ugt i32 %84, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, ptr %65, align 8
  %154 = or i32 %153, 8
  store i32 %154, ptr %65, align 8
  br label %170

155:                                              ; preds = %148
  store i32 %84, ptr %149, align 4
  br label %170

156:                                              ; preds = %146
  %157 = icmp ult i32 %114, %84
  br i1 %157, label %158, label %160

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 7
  store i32 %84, ptr %159, align 4
  br label %170

160:                                              ; preds = %156
  %161 = icmp eq i32 %79, 0
  %162 = shl i32 %79, 1
  %163 = select i1 %161, i32 1, i32 %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %77

165:                                              ; preds = %160
  %166 = load ptr, ptr %129, align 4
  %167 = getelementptr inbounds %struct.platform_device, ptr %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.10, i32 noundef %169) #9
  br label %170

170:                                              ; preds = %165, %158, %155, %152, %69
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_set_next(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 64
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef %13) #9
  br label %14

14:                                               ; preds = %8, %2
  %15 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 8
  store i32 %1, ptr %15, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %0, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_stop(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 3
  %8 = xor i32 %1, -1
  %9 = and i32 %6, %8
  store i32 %9, ptr %5, align 8
  %10 = icmp ne i32 %7, 0
  %11 = and i32 %9, 3
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %75

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 64
  %16 = getelementptr inbounds %struct.sh_cmt_device, ptr %15, i32 0, i32 5
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %0, align 64
  %22 = getelementptr inbounds %struct.sh_cmt_device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sh_cmt_info, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  br i1 %20, label %28, label %26

26:                                               ; preds = %14
  %27 = tail call i32 %25(ptr noundef nonnull %19, i32 noundef 0) #8
  br label %32

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.sh_cmt_device, ptr %21, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %25(ptr noundef %30, i32 noundef 0) #8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  %34 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = load ptr, ptr %18, align 4
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr %0, align 64
  %42 = getelementptr inbounds %struct.sh_cmt_device, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sh_cmt_info, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  br i1 %40, label %47, label %46

46:                                               ; preds = %32
  tail call void %45(ptr noundef nonnull %39, i32 noundef 0, i32 noundef %38) #8
  br label %50

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.sh_cmt_device, ptr %41, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  tail call void %45(ptr noundef %49, i32 noundef 0, i32 noundef %38) #8
  br label %50

50:                                               ; preds = %47, %46
  %51 = load ptr, ptr %0, align 64
  %52 = getelementptr inbounds %struct.sh_cmt_device, ptr %51, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %17) #8
  %53 = load ptr, ptr %0, align 64
  %54 = getelementptr inbounds %struct.sh_cmt_device, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sh_cmt_info, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 16
  tail call void %57(ptr noundef %59, i32 noundef 0, i32 noundef 0) #8
  %60 = load ptr, ptr %0, align 64
  %61 = getelementptr inbounds %struct.sh_cmt_device, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  tail call void @clk_disable(ptr noundef %62) #8
  %63 = load ptr, ptr %0, align 64
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3, i32 11, i32 7
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, -3
  store i8 %67, ptr %65, align 4
  %68 = and i32 %1, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %50
  %71 = load ptr, ptr %0, align 64
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  %74 = tail call i32 @__pm_runtime_idle(ptr noundef %73, i32 noundef 5) #8
  br label %75

75:                                               ; preds = %70, %50, %2
  %76 = icmp eq i32 %1, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = load i32, ptr %5, align 8
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 8
  store i32 %83, ptr %84, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %0, i32 noundef 0) #8
  br label %85

85:                                               ; preds = %81, %77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  br label %94

86:                                               ; preds = %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  %87 = and i32 %1, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %0, align 64
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3
  %93 = tail call i32 @__pm_runtime_idle(ptr noundef %92, i32 noundef 5) #8
  br label %94

94:                                               ; preds = %89, %86, %85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_clock_event_set_state(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @sh_cmt_stop(ptr noundef %3, i32 noundef 1)
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %3, align 64
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = getelementptr i8, ptr %0, i32 -60
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef %14, ptr noundef nonnull %16) #9
  %17 = tail call fastcc i32 @sh_cmt_start(ptr noundef %3, i32 noundef 1) #8
  br i1 %15, label %37, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 64
  %20 = getelementptr inbounds %struct.sh_cmt_device, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 50
  %23 = udiv i32 %22, 100
  %24 = add nsw i32 %23, -1
  %25 = getelementptr i8, ptr %0, i32 -24
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #8
  %27 = getelementptr i8, ptr %0, i32 -28
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %24
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load ptr, ptr %3, align 64
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %34) #9
  br label %35

35:                                               ; preds = %30, %18
  %36 = getelementptr i8, ptr %0, i32 -32
  store i32 %24, ptr %36, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %3, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #8
  br label %51

37:                                               ; preds = %9
  %38 = getelementptr i8, ptr %0, i32 -28
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 -24
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #8
  %42 = load i32, ptr %38, align 4
  %43 = icmp ult i32 %42, %39
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load ptr, ptr %3, align 64
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.11, i32 noundef %48) #9
  br label %49

49:                                               ; preds = %44, %37
  %50 = getelementptr i8, ptr %0, i32 -32
  store i32 %39, ptr %50, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %3, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #8
  br label %51

51:                                               ; preds = %49, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_cmt_start(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 64
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  br label %10

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 10
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %176

17:                                               ; preds = %10
  %18 = and i32 %1, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 64
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %0, align 64
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3, i32 11, i32 7
  %29 = load i8, ptr %28, align 4
  %30 = or i8 %29, 2
  store i8 %30, ptr %28, align 4
  %31 = load ptr, ptr %0, align 64
  %32 = getelementptr inbounds %struct.sh_cmt_device, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_enable(ptr noundef %33) #8
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %0, align 64
  br i1 %35, label %42, label %37

37:                                               ; preds = %25
  %38 = load ptr, ptr %36, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.15, i32 noundef %41) #9
  br label %192

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.sh_cmt_device, ptr %36, i32 0, i32 5
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #8
  %45 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = load ptr, ptr %0, align 64
  %49 = getelementptr inbounds %struct.sh_cmt_device, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sh_cmt_info, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  br i1 %47, label %55, label %53

53:                                               ; preds = %42
  %54 = tail call i32 %52(ptr noundef nonnull %46, i32 noundef 0) #8
  br label %59

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.sh_cmt_device, ptr %48, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %52(ptr noundef %57, i32 noundef 0) #8
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %54, %53 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = shl nuw i32 1, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %60, %64
  %66 = load ptr, ptr %45, align 4
  %67 = icmp eq ptr %66, null
  %68 = load ptr, ptr %0, align 64
  %69 = getelementptr inbounds %struct.sh_cmt_device, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.sh_cmt_info, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  br i1 %67, label %74, label %73

73:                                               ; preds = %59
  tail call void %72(ptr noundef nonnull %66, i32 noundef 0, i32 noundef %65) #8
  br label %77

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.sh_cmt_device, ptr %68, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  tail call void %72(ptr noundef %76, i32 noundef 0, i32 noundef %65) #8
  br label %77

77:                                               ; preds = %74, %73
  %78 = load ptr, ptr %0, align 64
  %79 = getelementptr inbounds %struct.sh_cmt_device, ptr %78, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %44) #8
  %80 = load ptr, ptr %0, align 64
  %81 = getelementptr inbounds %struct.sh_cmt_device, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.sh_cmt_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 16
  br i1 %85, label %90, label %86

86:                                               ; preds = %77
  %87 = load i32, ptr %82, align 4
  %88 = icmp ult i32 %87, 3
  %89 = select i1 %88, i32 420, i32 292
  br label %90

90:                                               ; preds = %86, %77
  %91 = phi i32 [ %89, %86 ], [ 67, %77 ]
  %92 = getelementptr inbounds %struct.sh_cmt_info, ptr %82, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 4
  %95 = load ptr, ptr %94, align 16
  tail call void %93(ptr noundef %95, i32 noundef 0, i32 noundef %91) #8
  %96 = load ptr, ptr %0, align 64
  %97 = getelementptr inbounds %struct.sh_cmt_device, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.sh_cmt_info, ptr %98, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %94, align 16
  tail call void %100(ptr noundef %101, i32 noundef 2, i32 noundef -1) #8
  %102 = load ptr, ptr %0, align 64
  %103 = getelementptr inbounds %struct.sh_cmt_device, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.sh_cmt_info, ptr %104, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %94, align 16
  tail call void %106(ptr noundef %107, i32 noundef 1, i32 noundef 0) #8
  br label %108

108:                                              ; preds = %118, %90
  %109 = phi i32 [ 0, %90 ], [ %120, %118 ]
  %110 = load ptr, ptr %0, align 64
  %111 = getelementptr inbounds %struct.sh_cmt_device, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sh_cmt_info, ptr %112, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %94, align 16
  %116 = tail call i32 %114(ptr noundef %115, i32 noundef 1) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #8
  %120 = add nuw nsw i32 %109, 1
  %121 = icmp eq i32 %120, 100
  br i1 %121, label %122, label %108

122:                                              ; preds = %118, %108
  %123 = load ptr, ptr %0, align 64
  %124 = getelementptr inbounds %struct.sh_cmt_device, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.sh_cmt_info, ptr %125, i32 0, i32 7
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %94, align 16
  %129 = tail call i32 %127(ptr noundef %128, i32 noundef 1) #8
  %130 = icmp eq i32 %129, 0
  %131 = load ptr, ptr %0, align 64
  br i1 %130, label %140, label %132

132:                                              ; preds = %122
  %133 = load ptr, ptr %131, align 4
  %134 = getelementptr inbounds %struct.platform_device, ptr %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.16, i32 noundef %136) #9
  %137 = load ptr, ptr %0, align 64
  %138 = getelementptr inbounds %struct.sh_cmt_device, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  tail call void @clk_disable(ptr noundef %139) #8
  br label %192

140:                                              ; preds = %122
  %141 = getelementptr inbounds %struct.sh_cmt_device, ptr %131, i32 0, i32 5
  %142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #8
  %143 = load ptr, ptr %45, align 4
  %144 = icmp eq ptr %143, null
  %145 = load ptr, ptr %0, align 64
  %146 = getelementptr inbounds %struct.sh_cmt_device, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.sh_cmt_info, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  br i1 %144, label %152, label %150

150:                                              ; preds = %140
  %151 = tail call i32 %149(ptr noundef nonnull %143, i32 noundef 0) #8
  br label %156

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.sh_cmt_device, ptr %145, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = tail call i32 %149(ptr noundef %154, i32 noundef 0) #8
  br label %156

156:                                              ; preds = %152, %150
  %157 = phi i32 [ %151, %150 ], [ %155, %152 ]
  %158 = load i32, ptr %61, align 4
  %159 = shl nuw i32 1, %158
  %160 = or i32 %159, %157
  %161 = load ptr, ptr %45, align 4
  %162 = icmp eq ptr %161, null
  %163 = load ptr, ptr %0, align 64
  %164 = getelementptr inbounds %struct.sh_cmt_device, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sh_cmt_info, ptr %165, i32 0, i32 6
  %167 = load ptr, ptr %166, align 4
  br i1 %162, label %169, label %168

168:                                              ; preds = %156
  tail call void %167(ptr noundef nonnull %161, i32 noundef 0, i32 noundef %160) #8
  br label %172

169:                                              ; preds = %156
  %170 = getelementptr inbounds %struct.sh_cmt_device, ptr %163, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  tail call void %167(ptr noundef %171, i32 noundef 0, i32 noundef %160) #8
  br label %172

172:                                              ; preds = %169, %168
  %173 = load ptr, ptr %0, align 64
  %174 = getelementptr inbounds %struct.sh_cmt_device, ptr %173, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %174, i32 noundef %142) #8
  %175 = load i32, ptr %13, align 8
  br label %176

176:                                              ; preds = %172, %10
  %177 = phi i32 [ %14, %10 ], [ %175, %172 ]
  %178 = or i32 %177, %1
  store i32 %178, ptr %13, align 8
  %179 = load ptr, ptr %0, align 64
  %180 = getelementptr inbounds %struct.sh_cmt_device, ptr %179, i32 0, i32 7
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 1
  %183 = icmp eq i32 %1, 2
  %184 = and i1 %183, %182
  %185 = and i32 %178, 1
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %188, label %192

188:                                              ; preds = %176
  %189 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 9
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.sh_cmt_channel, ptr %0, i32 0, i32 8
  store i32 %190, ptr %191, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %0, i32 noundef 0) #8
  br label %192

192:                                              ; preds = %188, %176, %132, %37
  %193 = phi i32 [ 0, %188 ], [ 0, %176 ], [ %34, %37 ], [ -110, %132 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #8
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @sh_cmt_clocksource_read(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.sh_cmt_device, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %82

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -216
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %10 = getelementptr i8, ptr %0, i32 104
  %11 = load i64, ptr %10, align 8
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr inbounds %struct.sh_cmt_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sh_cmt_info, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 -240
  %18 = load ptr, ptr %17, align 16
  %19 = tail call i32 %16(ptr noundef %18, i32 noundef 0) #8
  %20 = load ptr, ptr %2, align 64
  %21 = getelementptr inbounds %struct.sh_cmt_device, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sh_cmt_info, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %19
  br label %26

26:                                               ; preds = %70, %7
  %27 = phi ptr [ %22, %7 ], [ %56, %70 ]
  %28 = phi i32 [ %25, %7 ], [ %59, %70 ]
  %29 = getelementptr inbounds %struct.sh_cmt_info, ptr %27, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %17, align 16
  %32 = tail call i32 %30(ptr noundef %31, i32 noundef 1) #8
  %33 = load ptr, ptr %2, align 64
  %34 = getelementptr inbounds %struct.sh_cmt_device, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sh_cmt_info, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %17, align 16
  %39 = tail call i32 %37(ptr noundef %38, i32 noundef 1) #8
  %40 = load ptr, ptr %2, align 64
  %41 = getelementptr inbounds %struct.sh_cmt_device, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sh_cmt_info, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %17, align 16
  %46 = tail call i32 %44(ptr noundef %45, i32 noundef 1) #8
  %47 = load ptr, ptr %2, align 64
  %48 = getelementptr inbounds %struct.sh_cmt_device, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sh_cmt_info, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %17, align 16
  %53 = tail call i32 %51(ptr noundef %52, i32 noundef 0) #8
  %54 = load ptr, ptr %2, align 64
  %55 = getelementptr inbounds %struct.sh_cmt_device, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sh_cmt_info, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %53
  %60 = icmp eq i32 %59, %28
  br i1 %60, label %61, label %70, !prof !17

61:                                               ; preds = %26
  %62 = icmp ugt i32 %32, %39
  %63 = icmp ult i32 %32, %46
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %70, label %65, !prof !19

65:                                               ; preds = %61
  %66 = icmp ugt i32 %39, %46
  %67 = select i1 %66, i1 %62, i1 false
  %68 = select i1 %63, i1 %66, i1 false
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %70, label %71, !prof !20

70:                                               ; preds = %65, %61, %26
  br label %26

71:                                               ; preds = %65
  %72 = icmp eq i32 %28, 0
  br i1 %72, label %78, label %73, !prof !17

73:                                               ; preds = %71
  %74 = getelementptr i8, ptr %0, i32 -228
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %39, 1
  %77 = add i32 %76, %75
  br label %78

78:                                               ; preds = %73, %71
  %79 = phi i32 [ %77, %73 ], [ %39, %71 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #8
  %80 = zext i32 %79 to i64
  %81 = add i64 %11, %80
  br label %143

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.sh_cmt_device, ptr %3, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.sh_cmt_info, ptr %84, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %0, i32 -240
  %88 = load ptr, ptr %87, align 16
  %89 = tail call i32 %86(ptr noundef %88, i32 noundef 0) #8
  %90 = load ptr, ptr %2, align 64
  %91 = getelementptr inbounds %struct.sh_cmt_device, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sh_cmt_info, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, %89
  br label %96

96:                                               ; preds = %140, %82
  %97 = phi ptr [ %92, %82 ], [ %126, %140 ]
  %98 = phi i32 [ %95, %82 ], [ %129, %140 ]
  %99 = getelementptr inbounds %struct.sh_cmt_info, ptr %97, i32 0, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %87, align 16
  %102 = tail call i32 %100(ptr noundef %101, i32 noundef 1) #8
  %103 = load ptr, ptr %2, align 64
  %104 = getelementptr inbounds %struct.sh_cmt_device, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.sh_cmt_info, ptr %105, i32 0, i32 7
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %87, align 16
  %109 = tail call i32 %107(ptr noundef %108, i32 noundef 1) #8
  %110 = load ptr, ptr %2, align 64
  %111 = getelementptr inbounds %struct.sh_cmt_device, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sh_cmt_info, ptr %112, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %87, align 16
  %116 = tail call i32 %114(ptr noundef %115, i32 noundef 1) #8
  %117 = load ptr, ptr %2, align 64
  %118 = getelementptr inbounds %struct.sh_cmt_device, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.sh_cmt_info, ptr %119, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %87, align 16
  %123 = tail call i32 %121(ptr noundef %122, i32 noundef 0) #8
  %124 = load ptr, ptr %2, align 64
  %125 = getelementptr inbounds %struct.sh_cmt_device, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.sh_cmt_info, ptr %126, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, %123
  %130 = icmp eq i32 %129, %98
  br i1 %130, label %131, label %140, !prof !17

131:                                              ; preds = %96
  %132 = icmp ugt i32 %102, %109
  %133 = icmp ult i32 %102, %116
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %140, label %135, !prof !19

135:                                              ; preds = %131
  %136 = icmp ugt i32 %109, %116
  %137 = select i1 %136, i1 %132, i1 false
  %138 = select i1 %133, i1 %136, i1 false
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %141, !prof !20

140:                                              ; preds = %135, %131, %96
  br label %96

141:                                              ; preds = %135
  %142 = zext i32 %109 to i64
  br label %143

143:                                              ; preds = %141, %78
  %144 = phi i64 [ %81, %78 ], [ %142, %141 ]
  ret i64 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_clocksource_enable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = load i8, ptr %3, align 16, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !17

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 651, i32 noundef 9, ptr noundef null) #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr i8, ptr %0, i32 104
  store i64 0, ptr %8, align 8
  %9 = tail call fastcc i32 @sh_cmt_start(ptr noundef %2, i32 noundef 2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8 1, ptr %3, align 16
  br label %12

12:                                               ; preds = %11, %7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_clocksource_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load i8, ptr %2, align 16, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 666, i32 noundef 9, ptr noundef null) #8
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 -256
  tail call fastcc void @sh_cmt_stop(ptr noundef %7, i32 noundef 2)
  store i8 0, ptr %2, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_clocksource_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load i8, ptr %2, align 16, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -256
  tail call fastcc void @sh_cmt_stop(ptr noundef %6, i32 noundef 2)
  %7 = load ptr, ptr %6, align 64
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_clocksource_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load i8, ptr %2, align 16, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -256
  %7 = load ptr, ptr %6, align 64
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %9) #8
  %10 = tail call fastcc i32 @sh_cmt_start(ptr noundef %6, i32 noundef 2)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_read16(ptr noundef %0, i32 noundef %1) #2 {
  %3 = shl i32 %1, 1
  %4 = getelementptr i8, ptr %0, i32 %3
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #8, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_write16(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = trunc i32 %2 to i16
  %5 = shl i32 %1, 1
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %4) #8, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_cmt_read32(ptr noundef %0, i32 noundef %1) #2 {
  %3 = shl i32 %1, 2
  %4 = getelementptr i8, ptr %0, i32 %3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_cmt_write32(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = shl i32 %1, 2
  %5 = getelementptr i8, ptr %0, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #8, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

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
!9 = !{i32 0, i32 33}
!10 = !{i64 2852704}
!11 = !{i64 2150384667}
!12 = !{i64 2150385889}
!13 = !{i64 2852286}
!14 = !{i64 897464, i64 897491, i64 897513, i64 897541}
!15 = !{i64 897872, i64 897899, i64 897932, i64 897953, i64 897980, i64 898006}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2151821039, i64 2151821532, i64 2151821076, i64 2151821132, i64 2151821166, i64 2151821190, i64 2151821231, i64 2151821252, i64 2151821280, i64 2151821314}
!19 = !{!"branch_weights", i32 1, i32 4001}
!20 = !{!"branch_weights", i32 6002, i32 8002000}
!21 = !{i64 2851866}
!22 = !{i64 2150384194}
!23 = !{i64 2150385416}
!24 = !{i64 2851666}
