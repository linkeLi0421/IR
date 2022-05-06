; ModuleID = '/llk/IR/drivers/power/reset/at91-reset.c_pt.bc'
source_filename = "../drivers/power/reset/at91-reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.at91_reset = type { ptr, [2 x ptr], ptr, %struct.notifier_block, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_at91_reset__162_267_at91_reset_driver_init6 = internal global ptr @at91_reset_driver_init, section ".initcall6.init", align 4
@at91_reset_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_reset_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_at91_reset_driver_exit = internal global ptr @at91_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [36 x i8] c"at91_reset.author=Atmel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [51 x i8] c"at91_reset.description=Reset driver for Atmel SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [47 x i8] c"at91_reset.file=drivers/power/reset/at91-reset\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"at91_reset.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [40 x i8] c"Could not map reset controller address\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"atmel,sama5d3-rstc\00", align 1
@at91_ramc_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-sdramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 16 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ddramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 28 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not map ram controller address\0A\00", align 1
@at91_reset_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-rstc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 -1526726651 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-rstc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 -1526726651 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-rstc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 -1526726651 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,samx7-rstc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 -1526726655 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-rstc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 -1526726655 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"microchip,sam9x60-rstc\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"general reset\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"watchdog reset\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"software reset\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"user reset\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"CPU clock failure detection\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"32.768 kHz crystal failure detection\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unknown reset\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Starting after %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"at91-reset\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_at91_reset_driver_exit, ptr @__initcall__kmod_at91_reset__162_267_at91_reset_driver_init6, ptr @at91_reset_driver_exit, ptr @at91_reset_remove], section "llvm.metadata"
@switch.table.at91_reset_status = private unnamed_addr constant [8 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.10, ptr @.str.11], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_reset_remove(ptr nocapture noundef readonly %0) #0 section ".exit.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_reset, ptr %3, i32 0, i32 3
  %5 = tail call i32 @unregister_restart_handler(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.at91_reset, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_reset_driver, ptr noundef nonnull @at91_reset_probe, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at91_reset_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_reset_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_reset_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @devm_of_iomap(ptr noundef %3, ptr noundef %8, i32 noundef 0, ptr noundef null) #5
  store ptr %9, ptr %4, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #6
  br label %78

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.1) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @at91_ramc_of_match, ptr noundef nonnull %2) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.at91_reset, ptr %4, i32 0, i32 5
  br label %21

21:                                               ; preds = %32, %19
  %22 = phi ptr [ %17, %19 ], [ %34, %32 ]
  %23 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  store i32 %27, ptr %20, align 4
  %28 = call ptr @devm_of_iomap(ptr noundef %3, ptr noundef nonnull %22, i32 noundef 0, ptr noundef null) #5
  %29 = getelementptr %struct.at91_reset, ptr %4, i32 0, i32 1, i32 %23
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  call void @of_node_put(ptr noundef nonnull %22) #5
  br label %78

32:                                               ; preds = %21
  %33 = add i32 %23, 1
  %34 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %22, ptr noundef nonnull @at91_ramc_of_match, ptr noundef nonnull %2) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21

36:                                               ; preds = %32, %16, %12
  %37 = load ptr, ptr %7, align 8
  %38 = call ptr @of_match_node(ptr noundef nonnull @at91_reset_of_match, ptr noundef %37) #5
  store ptr %38, ptr %2, align 4
  %39 = getelementptr inbounds %struct.at91_reset, ptr %4, i32 0, i32 3
  store ptr @at91_reset, ptr %39, align 4
  %40 = getelementptr inbounds %struct.at91_reset, ptr %4, i32 0, i32 3, i32 2
  store i32 192, ptr %40, align 4
  %41 = getelementptr inbounds %struct.of_device_id, ptr %38, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr inbounds %struct.at91_reset, ptr %4, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #5
  %46 = getelementptr inbounds %struct.at91_reset, ptr %4, i32 0, i32 2
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = ptrtoint ptr %45 to i32
  br label %78

50:                                               ; preds = %36
  %51 = call i32 @clk_prepare(ptr noundef %45) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 @clk_enable(ptr noundef %45) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  call void @clk_unprepare(ptr noundef %45) #5
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %54, %56 ], [ %51, %50 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  br label %78

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %60, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = call i32 @of_device_is_compatible(ptr noundef %61, ptr noundef nonnull @.str.4) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  %68 = or i32 %67, -1526726652
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #5, !srcloc !12
  br label %71

71:                                               ; preds = %64, %59
  %72 = call i32 @register_restart_handler(ptr noundef %39) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %46, align 4
  call void @clk_disable(ptr noundef %75) #5
  call void @clk_unprepare(ptr noundef %75) #5
  br label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %4, align 4
  call fastcc void @at91_reset_status(ptr noundef %0, ptr noundef %77) #7
  br label %78

78:                                               ; preds = %76, %74, %57, %48, %31, %11, %1
  %79 = phi i32 [ -19, %11 ], [ %49, %48 ], [ %58, %57 ], [ %72, %74 ], [ 0, %76 ], [ -19, %31 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_reset(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 16
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect ".balign 32\0A\09\09tst\09$0, #0\0A\09\09beq\091f\0A\09\09str\09$3, [$0, #0x04]\0A\09\09str\09$4, [$0, $6]\0A\091:\09tst\09$1, #0\0A\09\09beq\092f\0A\09\09strne\09$3, [$1, #0x04]\0A\09\09strne\09$4, [$1, $6]\0A\092:\09str\09$5, [$2, #0x00]\0A\09\09b\09.\0A\09", "r,r,r,r,r,r,r,~{r4}"(ptr %6, ptr %8, ptr %9, i32 1, i32 2, i32 %11, i32 %13) #5, !srcloc !13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_reset_status(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 7
  %7 = getelementptr inbounds [8 x ptr], ptr @switch.table.at91_reset_status, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull %8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

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
!9 = !{i64 1724725}
!10 = !{i64 2151345293}
!11 = !{i64 2151345629}
!12 = !{i64 1724307}
!13 = !{i64 2363, i64 2376, i64 2429, i64 2445, i64 2503, i64 2555, i64 2609, i64 2625, i64 2685, i64 2739, i64 2813, i64 2827}
!14 = !{i64 2151340504}
