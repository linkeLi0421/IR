; ModuleID = '/llk/IR/drivers/power/reset/at91-sama5d2_shdwc.c_pt.bc'
source_filename = "../drivers/power/reset/at91-sama5d2_shdwc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reg_config = type { %struct.shdwc_reg_config, %struct.pmc_reg_config, %struct.ddrc_reg_config }
%struct.shdwc_reg_config = type { i8, i8, i8, i8, i8 }
%struct.pmc_reg_config = type { i8 }
%struct.ddrc_reg_config = type { i32, i32 }
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
%struct.shdwc = type { ptr, ptr, ptr, ptr, ptr }

@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_at91_sama5d2_shdwc__162_453_at91_shdwc_driver_init6 = internal global ptr @at91_shdwc_driver_init, section ".initcall6.init", align 4
@at91_shdwc_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_shdwc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_at91_shdwc_driver_exit = internal global ptr @at91_shdwc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [66 x i8] c"at91_sama5d2_shdwc.author=Nicolas Ferre <nicolas.ferre@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [64 x i8] c"at91_sama5d2_shdwc.description=Atmel shutdown controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [63 x i8] c"at91_sama5d2_shdwc.file=drivers/power/reset/at91-sama5d2_shdwc\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [34 x i8] c"at91_sama5d2_shdwc.license=GPL v2\00", section ".modinfo", align 1
@at91_shdwc = internal unnamed_addr global ptr null, align 4
@at91_shdwc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_reg_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_reg_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_reg_config }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@at91_pmc_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"atmel,sama5d3-ddramc\00", align 1
@sama5d2_reg_config = internal constant %struct.reg_config { %struct.shdwc_reg_config { i8 0, i8 17, i8 32, i8 5, i8 32 }, %struct.pmc_reg_config { i8 48 }, %struct.ddrc_reg_config { i32 32, i32 7 } }, align 4
@sam9x60_reg_config = internal constant %struct.reg_config { %struct.shdwc_reg_config { i8 0, i8 17, i8 16, i8 5, i8 4 }, %struct.pmc_reg_config { i8 40 }, %struct.ddrc_reg_config { i32 32, i32 7 } }, align 4
@sama7g5_reg_config = internal constant %struct.reg_config { %struct.shdwc_reg_config { i8 0, i8 17, i8 16, i8 5, i8 4 }, %struct.pmc_reg_config { i8 40 }, %struct.ddrc_reg_config zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"WKUP pin\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RTC\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RTT\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\016AT91: Wake-Up source: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"debounce-delay-us\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"atmel,wakeup-rtc-timer\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"atmel,wakeup-rtt-timer\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"debouncer period %u too big, reduced to %llu us\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"reg property is missing for %pOF\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"wake-up input %d out of bounds ignore\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"atmel,wakeup-active-high\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"at91-shdwc\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_at91_shdwc_driver_exit, ptr @__initcall__kmod_at91_sama5d2_shdwc__162_453_at91_shdwc_driver_init6, ptr @at91_shdwc_driver_exit, ptr @at91_shdwc_remove], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_shdwc_remove(ptr nocapture noundef readonly %0) #0 section ".exit.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @pm_power_off, align 4
  %5 = icmp eq ptr %4, @at91_poweroff
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr null, ptr @pm_power_off, align 4
  br label %7

7:                                                ; preds = %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr inbounds %struct.shdwc, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !9
  %13 = getelementptr inbounds %struct.shdwc, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void @iounmap(ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %16, %7
  %18 = getelementptr inbounds %struct.shdwc, ptr %3, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void @iounmap(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.shdwc, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_poweroff() #2 {
  %1 = load ptr, ptr @at91_shdwc, align 4
  %2 = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.shdwc, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.reg_config, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  tail call void asm sideeffect ".balign 32\0A\09\09ldr\09r6, [$2, #0x00]\0A\09\09tst\09$0, #0\0A\09\09beq\091f\0A\09\09str\09$1, [$0, #0x1C]\0A\091:\09ldr\09r6, [$4, $5]\0A\09\09bic\09r6, r6,  #(3 << 0)\0A\09\09str\09r6, [$4, $5]\0A\092:\09ldr\09r6, [$4, #0x68]\0A\09\09tst\09r6, #(1 << 3)\0A\09\09beq\092b\0A\09\09str\09$3, [$2, #0x00]\0A\09\09b\09.\0A\09", "r,r,r,r,r,r,~{r6}"(ptr %3, i32 8, ptr %5, i32 -1526726655, ptr %7, i8 %10) #6, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_shdwc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_shdwc_driver, ptr noundef nonnull @at91_shdwc_probe, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at91_shdwc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_shdwc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_shdwc_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %95, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @at91_shdwc, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %95

9:                                                ; preds = %6
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #6
  store ptr %10, ptr @at91_shdwc, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %13, align 8
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %14) #6
  %16 = load ptr, ptr @at91_shdwc, align 4
  %17 = getelementptr inbounds %struct.shdwc, ptr %16, i32 0, i32 2
  store ptr %15, ptr %17, align 4
  %18 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %15 to i32
  br label %95

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8
  %23 = tail call ptr @of_match_node(ptr noundef nonnull @at91_shdwc_of_match, ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.of_device_id, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr @at91_shdwc, align 4
  store ptr %25, ptr %26, align 4
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %28 = load ptr, ptr @at91_shdwc, align 4
  %29 = getelementptr inbounds %struct.shdwc, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  %30 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = ptrtoint ptr %27 to i32
  br label %95

33:                                               ; preds = %21
  %34 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %27)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #7
  br label %95

37:                                               ; preds = %33
  tail call fastcc void @at91_wakeup_status(ptr noundef %0) #8
  tail call fastcc void @at91_shdwc_dt_configure(ptr noundef %0)
  %38 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @at91_pmc_ids, ptr noundef null) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %90, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @of_iomap(ptr noundef nonnull %38, i32 noundef 0) #6
  %42 = load ptr, ptr @at91_shdwc, align 4
  %43 = getelementptr inbounds %struct.shdwc, ptr %42, i32 0, i32 4
  store ptr %41, ptr %43, align 4
  tail call void @of_node_put(ptr noundef nonnull %38) #6
  %44 = load ptr, ptr @at91_shdwc, align 4
  %45 = getelementptr inbounds %struct.shdwc, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %90, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.reg_config, ptr %49, i32 0, i32 2, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load ptr, ptr @at91_shdwc, align 4
  br label %85

58:                                               ; preds = %53
  %59 = tail call ptr @of_iomap(ptr noundef nonnull %54, i32 noundef 0) #6
  %60 = load ptr, ptr @at91_shdwc, align 4
  %61 = getelementptr inbounds %struct.shdwc, ptr %60, i32 0, i32 3
  store ptr %59, ptr %61, align 4
  tail call void @of_node_put(ptr noundef nonnull %54) #6
  %62 = load ptr, ptr @at91_shdwc, align 4
  %63 = getelementptr inbounds %struct.shdwc, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %58
  %67 = load ptr, ptr %62, align 4
  %68 = getelementptr inbounds %struct.reg_config, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %64, i32 %69
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %72 = load ptr, ptr @at91_shdwc, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.reg_config, ptr %73, i32 0, i32 2, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %71, -3
  %77 = and i32 %76, %75
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %84, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.shdwc, ptr %72, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  tail call void @iounmap(ptr noundef %81) #6
  %82 = load ptr, ptr @at91_shdwc, align 4
  %83 = getelementptr inbounds %struct.shdwc, ptr %82, i32 0, i32 3
  store ptr null, ptr %83, align 4
  br label %84

84:                                               ; preds = %79, %66, %48
  store ptr @at91_poweroff, ptr @pm_power_off, align 4
  br label %95

85:                                               ; preds = %58, %56
  %86 = phi ptr [ %57, %56 ], [ %62, %58 ]
  %87 = phi i32 [ -19, %56 ], [ -12, %58 ]
  %88 = getelementptr inbounds %struct.shdwc, ptr %86, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  tail call void @iounmap(ptr noundef %89) #6
  br label %90

90:                                               ; preds = %85, %40, %37
  %91 = phi i32 [ %87, %85 ], [ -19, %37 ], [ -12, %40 ]
  %92 = load ptr, ptr @at91_shdwc, align 4
  %93 = getelementptr inbounds %struct.shdwc, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void @clk_disable(ptr noundef %94) #6
  tail call void @clk_unprepare(ptr noundef %94) #6
  br label %95

95:                                               ; preds = %90, %84, %36, %31, %19, %9, %6, %1
  %96 = phi i32 [ %20, %19 ], [ %32, %31 ], [ %34, %36 ], [ 0, %84 ], [ %91, %90 ], [ -19, %1 ], [ -16, %6 ], [ -12, %9 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_wakeup_status(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.shdwc, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = load i8, ptr %4, align 4
  %12 = zext i8 %11 to i32
  %13 = shl i32 65536, %12
  %14 = and i32 %13, %8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.shdwc_reg_config, ptr %4, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.shdwc_reg_config, ptr %4, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.2, ptr @.str.5
  br label %31

31:                                               ; preds = %23, %16, %10
  %32 = phi ptr [ @.str.3, %10 ], [ @.str.4, %16 ], [ %30, %23 ]
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %32) #7
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_shdwc_dt_configure(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #7
  br label %85

12:                                               ; preds = %1
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 4
  %17 = icmp ugt i32 %16, 1000000
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = icmp ugt i32 %16, 125000
  br i1 %19, label %29, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef %16, i64 noundef 1000000) #7
  br label %29

22:                                               ; preds = %18
  %23 = icmp ugt i32 %16, 15625
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = icmp ugt i32 %16, 977
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %16, 92
  %28 = select i1 %27, i32 33554432, i32 16777216
  br label %29

29:                                               ; preds = %26, %24, %22, %20, %18, %12
  %30 = phi i32 [ 0, %12 ], [ 83886080, %20 ], [ 83886080, %18 ], [ 67108864, %22 ], [ 50331648, %24 ], [ %28, %26 ]
  %31 = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.shdwc_reg_config, ptr %6, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 1, %36
  %38 = or i32 %37, %30
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i32 [ %38, %33 ], [ %30, %29 ]
  %41 = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.shdwc_reg_config, ptr %6, i32 0, i32 2
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 1, %46
  %48 = or i32 %47, %40
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i32 [ %48, %43 ], [ %40, %39 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  call void @arm_heavy_mb() #6
  %51 = getelementptr inbounds %struct.shdwc, ptr %5, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !15
  %54 = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef null) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %81, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %58

58:                                               ; preds = %77, %56
  %59 = phi i32 [ 0, %56 ], [ %78, %77 ]
  %60 = phi ptr [ %54, %56 ], [ %79, %77 ]
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %60, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.13, ptr noundef nonnull %60) #7
  br label %77

64:                                               ; preds = %58
  %65 = load i32, ptr %2, align 4
  %66 = icmp ugt i32 %65, 15
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.14, i32 noundef %65) #7
  br label %77

68:                                               ; preds = %64
  %69 = shl nuw nsw i32 1, %65
  %70 = or i32 %69, %59
  %71 = call ptr @of_find_property(ptr noundef nonnull %60, ptr noundef nonnull @.str.15, ptr noundef null) #6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %2, align 4
  %75 = shl i32 65536, %74
  %76 = or i32 %75, %70
  br label %77

77:                                               ; preds = %73, %68, %67, %63
  %78 = phi i32 [ %59, %63 ], [ %76, %73 ], [ %70, %68 ], [ %59, %67 ]
  %79 = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef nonnull %60) #6
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %58

81:                                               ; preds = %77, %49
  %82 = phi i32 [ 0, %49 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  call void @arm_heavy_mb() #6
  %83 = load ptr, ptr %51, align 4
  %84 = getelementptr i8, ptr %83, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #6, !srcloc !9
  br label %85

85:                                               ; preds = %81, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2151373144}
!9 = !{i64 1742537}
!10 = !{i64 2151373469}
!11 = !{i64 3792, i64 3805, i64 3916, i64 3963, i64 3979, i64 4037, i64 4120, i64 4173, i64 4199, i64 4285, i64 4340, i64 4356, i64 4432, i64 4446}
!12 = !{i64 1742955}
!13 = !{i64 2151372702}
!14 = !{i64 2151349828}
!15 = !{!"auto-init"}
!16 = !{i64 2151370681}
!17 = !{i64 2151371016}
