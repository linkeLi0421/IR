; ModuleID = '/llk/IR/drivers/char/hw_random/omap-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/omap-rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_rng_pdata = type { ptr, i32, ptr, ptr, ptr }
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
%struct.omap_rng_dev = type { ptr, ptr, ptr, %struct.hwrng, ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_omap_rng__171_568_omap_rng_driver_init6 = internal global ptr @omap_rng_driver_init, section ".initcall6.init", align 4
@omap_rng_driver = internal global %struct.platform_driver { ptr @omap_rng_probe, ptr @omap_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_rng_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rng_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_rng_driver_exit = internal global ptr @omap_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias172 = internal constant [33 x i8] c"omap_rng.alias=platform:omap_rng\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [43 x i8] c"omap_rng.author=Deepak Saxena (and others)\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [46 x i8] c"omap_rng.file=drivers/char/hw_random/omap-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [21 x i8] c"omap_rng.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"omap_rng\00", align 1
@omap_rng_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_rng_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_rng_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip76\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @eip76_rng_pdata }, %struct.of_device_id zeroinitializer], align 4
@omap_rng_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_rng_suspend, ptr @omap_rng_resume, ptr @omap_rng_suspend, ptr @omap_rng_resume, ptr @omap_rng_suspend, ptr @omap_rng_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to runtime_get device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to enable the clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unable to enable the register clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Random Number Generator ver. %02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"ti,omap4-rng\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"inside-secure,safexcel-eip76\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"unable to request irq %d, err = %d\0A\00", align 1
@omap2_rng_pdata = internal global %struct.omap_rng_pdata { ptr @reg_map_omap2, i32 4, ptr @omap2_rng_data_present, ptr @omap2_rng_init, ptr @omap2_rng_cleanup }, align 4
@reg_map_omap2 = internal constant [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 4, i16 0, i16 0, i16 0, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 60, i16 64], align 2
@omap4_rng_pdata = internal global %struct.omap_rng_pdata { ptr @reg_map_omap4, i32 8, ptr @omap4_rng_data_present, ptr @omap4_rng_init, ptr @omap4_rng_cleanup }, align 4
@eip76_rng_pdata = internal global %struct.omap_rng_pdata { ptr @reg_map_eip76, i32 16, ptr @omap4_rng_data_present, ptr @eip76_rng_init, ptr @omap4_rng_cleanup }, align 4
@reg_map_omap4 = internal constant [16 x i16] [i16 0, i16 4, i16 0, i16 0, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 8160, i16 8164], align 2
@reg_map_eip76 = internal constant [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 0, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 124], align 2
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias172, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_omap_rng_driver_exit, ptr @__initcall__kmod_omap_rng__171_568_omap_rng_driver_init6, ptr @omap_rng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_rng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_rng_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_rng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_rng_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rng_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 80, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %94, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 3, i32 5
  store ptr @omap_rng_do_read, ptr %7, align 4
  %8 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 3, i32 1
  store ptr @omap_rng_init, ptr %8, align 4
  %9 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 3, i32 2
  store ptr @omap_rng_cleanup, ptr %9, align 4
  %10 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 3, i32 7
  store i16 900, ptr %10, align 4
  %11 = ptrtoint ptr %3 to i32
  %12 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 3, i32 6
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %13, align 8
  %14 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %15, ptr %3, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = ptrtoint ptr %15 to i32
  br label %92

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %21, %19 ]
  %27 = tail call noalias ptr @devm_kstrdup(ptr noundef %2, ptr noundef %26, i32 noundef 3264) #5
  store ptr %27, ptr %6, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %92, label %29

29:                                               ; preds = %25
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %30 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #5, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 0, i32 -1, ptr elementtype(i32) %33) #5, !srcloc !10
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %38

38:                                               ; preds = %37, %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %30) #6
  br label %92

39:                                               ; preds = %29
  %40 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %41 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 4
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, inttoptr (i32 -517 to ptr)
  br i1 %42, label %94, label %43

43:                                               ; preds = %39
  %44 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %54, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @clk_prepare(ptr noundef %40) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = tail call i32 @clk_enable(ptr noundef %40) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef %40) #5
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %49, %51 ], [ %46, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %53) #6
  br label %86

54:                                               ; preds = %48, %43
  %55 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %56 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 5
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, inttoptr (i32 -517 to ptr)
  br i1 %57, label %94, label %58

58:                                               ; preds = %54
  %59 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %64, label %60

60:                                               ; preds = %58
  %61 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %55)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %61) #6
  br label %86

64:                                               ; preds = %60, %58
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 2
  store ptr @omap2_rng_pdata, ptr %69, align 4
  br label %73

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @of_get_omap_rng_device_details(ptr noundef nonnull %3, ptr noundef %0)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70, %68
  %74 = tail call i32 @devm_hwrng_register(ptr noundef %2, ptr noundef %6) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i16, ptr %80, i32 14
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %77, i32 %83
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %85) #6
  br label %94

86:                                               ; preds = %73, %70, %63, %52
  %87 = phi i32 [ %71, %70 ], [ %74, %73 ], [ %61, %63 ], [ %53, %52 ]
  store ptr null, ptr %3, align 4
  %88 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  %89 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  tail call void @clk_disable(ptr noundef %90) #5
  tail call void @clk_unprepare(ptr noundef %90) #5
  %91 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %91) #5
  tail call void @clk_unprepare(ptr noundef %91) #5
  br label %92

92:                                               ; preds = %86, %38, %25, %17
  %93 = phi i32 [ %18, %17 ], [ %30, %38 ], [ %87, %86 ], [ -12, %25 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  br label %94

94:                                               ; preds = %92, %76, %54, %39, %1
  %95 = phi i32 [ %93, %92 ], [ 0, %76 ], [ -12, %1 ], [ -517, %39 ], [ -517, %54 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rng_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_rng_pdata, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #5
  %10 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rng_do_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.omap_rng_dev, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.omap_rng_pdata, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %56, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.omap_rng_pdata, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %7) #5
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %3
  br i1 %18, label %19, label %31

19:                                               ; preds = %24, %13
  %20 = phi i32 [ %22, %24 ], [ 0, %13 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #5
  %22 = add nuw nsw i32 %20, 1
  %23 = icmp eq i32 %22, 100
  br i1 %23, label %56, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.omap_rng_pdata, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %7) #5
  %29 = icmp eq i32 %28, 0
  %30 = and i1 %29, %3
  br i1 %30, label %19, label %31

31:                                               ; preds = %24, %13
  %32 = phi i1 [ %17, %13 ], [ %29, %24 ]
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %7, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = getelementptr inbounds %struct.omap_rng_pdata, ptr %35, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  tail call void @mmiocpy(ptr noundef %1, ptr noundef %39, i32 noundef %41) #5
  %42 = load ptr, ptr %8, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i16, ptr %43, i32 6
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = load ptr, ptr %7, align 4
  %49 = zext i16 %45 to i32
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 1) #5, !srcloc !13
  %51 = load ptr, ptr %8, align 4
  br label %52

52:                                               ; preds = %47, %33
  %53 = phi ptr [ %51, %47 ], [ %42, %33 ]
  %54 = getelementptr inbounds %struct.omap_rng_pdata, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %31, %19, %4
  %57 = phi i32 [ %55, %52 ], [ 0, %4 ], [ 0, %31 ], [ 0, %19 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rng_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.omap_rng_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_rng_pdata, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_rng_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.omap_rng_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_rng_pdata, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_get_omap_rng_device_details(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.7) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.8) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %12, %7
  %17 = tail call i32 @platform_get_irq(ptr noundef %1, i32 noundef 0) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %21, %19 ]
  %27 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %17, ptr noundef nonnull @omap4_rng_irq, ptr noundef null, i32 noundef 0, ptr noundef %26, ptr noundef %0) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef %27) #6
  br label %45

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i16, ptr %32, i32 5
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  %36 = load ptr, ptr %0, align 4
  br i1 %35, label %40, label %37

37:                                               ; preds = %30
  %38 = zext i16 %34 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 2) #5, !srcloc !13
  br label %45

40:                                               ; preds = %30
  %41 = getelementptr i16, ptr %32, i32 7
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %36, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 2) #5, !srcloc !13
  br label %45

45:                                               ; preds = %40, %37, %29, %16, %12, %2
  %46 = phi i32 [ %27, %29 ], [ -19, %2 ], [ %17, %16 ], [ 0, %37 ], [ 0, %40 ], [ 0, %12 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_rng_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.omap_rng_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i16, ptr %6, i32 12
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %3, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !13
  %11 = load ptr, ptr %1, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i16, ptr %13, i32 13
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %11, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !13
  %18 = load ptr, ptr %1, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i16, ptr %20, i32 10
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %18, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !12
  %26 = and i32 %25, 16777215
  %27 = xor i32 %26, 16777215
  %28 = load ptr, ptr %1, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i16, ptr %30, i32 11
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %28, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !12
  %36 = or i32 %35, %27
  %37 = load ptr, ptr %1, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i16, ptr %39, i32 11
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %37, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %36) #5, !srcloc !13
  %44 = load ptr, ptr %1, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i16, ptr %46, i32 10
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = getelementptr i8, ptr %44, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 16777215) #5, !srcloc !13
  %51 = load ptr, ptr %1, align 4
  %52 = load ptr, ptr %4, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i16, ptr %53, i32 6
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %51, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 2) #5, !srcloc !13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_rng_data_present(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_rng_init(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 15
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #5, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_rng_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 15
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_rng_data_present(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_rng_init(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i16, ptr %16, i32 8
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %14, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 2228257) #5, !srcloc !13
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i16, ptr %23, i32 11
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %21, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !13
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i16, ptr %30, i32 10
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %28, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 16777215) #5, !srcloc !13
  %35 = load ptr, ptr %0, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i16, ptr %37, i32 9
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %35, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 262399) #5, !srcloc !13
  %42 = load ptr, ptr %0, align 4
  %43 = load ptr, ptr %3, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i16, ptr %44, i32 7
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %42, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 16712704) #5, !srcloc !13
  br label %49

49:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_rng_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = and i32 %10, -1025
  %12 = load ptr, ptr %0, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i16, ptr %14, i32 7
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %12, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eip76_rng_init(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_rng_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i16, ptr %16, i32 8
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %14, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 2228229) #5, !srcloc !13
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i16, ptr %23, i32 11
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %21, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !13
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i16, ptr %30, i32 10
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %28, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 16777215) #5, !srcloc !13
  %35 = load ptr, ptr %0, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i16, ptr %37, i32 7
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %35, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1024) #5, !srcloc !13
  br label %42

42:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rng_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_rng_pdata, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #5
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rng_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #5, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #5, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %12

12:                                               ; preds = %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %4) #6
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.omap_rng_dev, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.omap_rng_pdata, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %3) #5
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %4, %12 ], [ 0, %13 ]
  ret i32 %20
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2148055174}
!9 = !{i64 554281, i64 2148044252, i64 2148044278, i64 2148044325, i64 2148044347, i64 2148044375, i64 2148044395}
!10 = !{i64 540850, i64 540875, i64 540897, i64 540913, i64 540925, i64 540945, i64 540969, i64 540985, i64 540997}
!11 = !{i64 2148055300}
!12 = !{i64 3980856}
!13 = !{i64 3980438}
