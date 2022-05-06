; ModuleID = '/llk/IR/drivers/misc/atmel-ssc.c_pt.bc'
source_filename = "../drivers/misc/atmel-ssc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22ssc_request\22\09\09\09\09\09"
module asm "__kstrtabns_ssc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ssc_free\22\09\09\09\09\09"
module asm "__kstrtabns_ssc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_ssc_platform_data = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@user_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @user_lock, i64 12), ptr getelementptr (i8, ptr @user_lock, i64 12) } }, align 4
@ssc_list = internal global %struct.list_head { ptr @ssc_list, ptr @ssc_list }, align 4
@.str = private unnamed_addr constant [4 x i8] c"ssc\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013ssc: ssc%d platform device is missing\0A\00", align 1
@__kstrtab_ssc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_ssc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssc_request to i32), ptr @__kstrtab_ssc_request, ptr @__kstrtabns_ssc_request }, section "___ksymtab+ssc_request", align 4
@__kstrtab_ssc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ssc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssc_free to i32), ptr @__kstrtab_ssc_free, ptr @__kstrtabns_ssc_free }, section "___ksymtab+ssc_free", align 4
@atmel_ssc_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-ssc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-ssc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ssc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author166 = internal constant [52 x i8] c"author=Hans-Christian Egtvedt <hcegtvedt@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [48 x i8] c"description=SSC driver for Atmel AVR32 and AT91\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias169 = internal constant [19 x i8] c"alias=platform:ssc\00", section ".modinfo", align 1
@at91rm9200_config = internal global %struct.atmel_ssc_platform_data zeroinitializer, align 4
@at91sam9rl_config = internal global %struct.atmel_ssc_platform_data { i32 0, i32 1 }, align 4
@at91sam9g45_config = internal global %struct.atmel_ssc_platform_data { i32 1, i32 1 }, align 4
@ssc_driver = internal global %struct.platform_driver { ptr @ssc_probe, ptr @ssc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ssc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @atmel_ssc_devtypes, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@atmel_ssc_devtypes = internal constant [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"at91rm9200_ssc\00\00\00\00\00\00", i32 ptrtoint (ptr @at91rm9200_config to i32) }, %struct.platform_device_id { [20 x i8] c"at91sam9rl_ssc\00\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9rl_config to i32) }, %struct.platform_device_id { [20 x i8] c"at91sam9g45_ssc\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9g45_config to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"atmel,clk-from-rk-pin\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Atmel SSC device at 0x%p (irq %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to auto-setup ssc for audio\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias169, ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168, ptr @__ksymtab_ssc_free, ptr @__ksymtab_ssc_request], section "llvm.metadata"

@__mod_of__atmel_ssc_dt_ids_device_table = dso_local alias [4 x %struct.of_device_id], ptr @atmel_ssc_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ssc_request(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @user_lock) #4
  %2 = load ptr, ptr @ssc_list, align 4
  %3 = icmp eq ptr %2, @ssc_list
  br i1 %3, label %25, label %4

4:                                                ; preds = %22, %1
  %5 = phi ptr [ %23, %22 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @of_alias_get_id(ptr noundef nonnull %9, ptr noundef nonnull @.str) #4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 1
  store i32 %0, ptr %17, align 4
  br label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18, %11
  %23 = load ptr, ptr %5, align 4
  %24 = icmp eq ptr %23, @ssc_list
  br i1 %24, label %25, label %4

25:                                               ; preds = %22, %1
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #5
  br label %36

27:                                               ; preds = %18, %14
  %28 = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  br label %36

32:                                               ; preds = %27
  store i32 1, ptr %28, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %33 = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #4
  br label %36

36:                                               ; preds = %32, %31, %25
  %37 = phi ptr [ inttoptr (i32 -16 to ptr), %31 ], [ %5, %32 ], [ inttoptr (i32 -19 to ptr), %25 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ssc_free(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @user_lock) #4
  %2 = getelementptr inbounds %struct.ssc_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %7 = getelementptr inbounds %struct.ssc_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %10

9:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  br label %10

10:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssc_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 3
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_ssc_dt_ids, ptr noundef nonnull %8) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %73, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %22

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device_id, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi ptr [ %21, %16 ], [ %15, %13 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %73, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 4
  store ptr %23, ptr %26, align 4
  %27 = load ptr, ptr %7, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @of_find_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.2, ptr noundef null) #4
  %31 = icmp ne ptr %30, null
  %32 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 8
  %33 = zext i1 %31 to i8
  store i8 %33, ptr %32, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %36 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %35) #4
  %37 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = ptrtoint ptr %36 to i32
  br label %73

41:                                               ; preds = %34
  %42 = load i32, ptr %35, align 4
  %43 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %45 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %73, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @clk_prepare(ptr noundef %44) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = tail call i32 @clk_enable(ptr noundef %44) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @clk_unprepare(ptr noundef %44) #4
  br label %54

54:                                               ; preds = %53, %50, %47
  %55 = getelementptr i8, ptr %36, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -1) #4, !srcloc !8
  %56 = getelementptr i8, ptr %36, i32 64
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #4, !srcloc !9
  tail call void @clk_disable(ptr noundef %44) #4
  tail call void @clk_unprepare(ptr noundef %44) #4
  %58 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %59 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %54
  tail call void @mutex_lock(ptr noundef nonnull @user_lock) #4
  %62 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ssc_list, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.list_head, ptr @ssc_list, i32 0, i32 1), align 4
  store ptr @ssc_list, ptr %3, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %3, ptr %62, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %64, align 8
  %65 = load ptr, ptr %37, align 4
  %66 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %65, i32 noundef %66) #5
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3, i32 25
  %69 = load ptr, ptr %68, align 8
  %70 = tail call ptr @of_find_property(ptr noundef %69, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %73

73:                                               ; preds = %72, %61, %54, %41, %39, %22, %10, %1
  %74 = phi i32 [ %40, %39 ], [ -12, %1 ], [ -19, %22 ], [ -6, %41 ], [ -6, %54 ], [ 0, %72 ], [ 0, %61 ], [ -19, %10 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssc_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @user_lock) #4
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3654979}
!9 = !{i64 3655397}
