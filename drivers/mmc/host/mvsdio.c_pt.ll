; ModuleID = '/llk/IR/drivers/mmc/host/mvsdio.c_pt.bc'
source_filename = "../drivers/mmc/host/mvsdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.mvsd_host = type { ptr, ptr, %struct.spinlock, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.timer_list, ptr, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_mvsdio__265_832_mvsd_driver_init6 = internal global ptr @mvsd_driver_init, section ".initcall6.init", align 4
@mvsd_driver = internal global %struct.platform_driver { ptr @mvsd_probe, ptr @mvsd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @mvsdio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mvsd_driver_exit = internal global ptr @mvsd_driver_exit, section ".exitcall.exit", align 4
@__param_str_maxfreq = internal constant [15 x i8] c"mvsdio.maxfreq\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@maxfreq = internal global i32 0, align 4
@__param_maxfreq = internal constant %struct.kernel_param { ptr @__param_str_maxfreq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @maxfreq } }, section "__param", align 4
@__UNIQUE_ID_maxfreqtype266 = internal constant [28 x i8] c"mvsdio.parmtype=maxfreq:int\00", section ".modinfo", align 1
@__param_str_nodma = internal constant [13 x i8] c"mvsdio.nodma\00", align 1
@nodma = internal global i32 0, align 4
@__param_nodma = internal constant %struct.kernel_param { ptr @__param_str_nodma, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @nodma } }, section "__param", align 4
@__UNIQUE_ID_nodmatype267 = internal constant [26 x i8] c"mvsdio.parmtype=nodma:int\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [43 x i8] c"mvsdio.author=Maen Suleiman, Nicolas Pitre\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [62 x i8] c"mvsdio.description=Marvell MMC,SD,SDIO Host Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [36 x i8] c"mvsdio.file=drivers/mmc/host/mvsdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [19 x i8] c"mvsdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias272 = internal constant [29 x i8] c"mvsdio.alias=platform:mvsdio\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"mvsdio\00", align 1
@mvsdio_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no DT node\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no clock associated\0A\00", align 1
@mvsd_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @mvsd_request, ptr null, ptr @mvsd_set_ios, ptr @mmc_gpio_get_ro, ptr null, ptr @mvsd_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot assign irq %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [24 x i8] c"FIFO_EMPTY bit missing\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unhandled error status %#04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"unhandled interrupt status=0x%04x en=0x%04x pio=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Timeout waiting for hardware interrupt.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"hw_state=0x%04x, intr_status=0x%04x intr_en=0x%04x\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias272, ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__UNIQUE_ID_maxfreqtype266, ptr @__UNIQUE_ID_nodmatype267, ptr @__exitcall_mvsd_driver_exit, ptr @__initcall__kmod_mvsdio__265_832_mvsd_driver_init6, ptr @__param_maxfreq, ptr @__param_nodma, ptr @mvsd_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvsd_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvsd_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvsd_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvsd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvsd_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %118

7:                                                ; preds = %1
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %118, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @mmc_alloc_host(i32 noundef 80, ptr noundef %2) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %118, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 68
  %15 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 1, i32 1, i32 7
  store ptr %11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 1, i32 1, i32 8
  store ptr %2, ptr %16, align 4
  %17 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %18 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 1, i32 1, i32 9
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %112

21:                                               ; preds = %13
  %22 = tail call i32 @clk_prepare(ptr noundef %17) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call i32 @clk_enable(ptr noundef %17) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %28

28:                                               ; preds = %27, %24, %21
  %29 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 3
  store ptr @mvsd_ops, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 8
  store i32 3145728, ptr %30, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 1, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 2046
  %34 = udiv i32 %33, 2047
  %35 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 6
  store i32 50000000, ptr %36, align 16
  %37 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 24
  store i32 2048, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 25
  store i32 65535, ptr %38, align 8
  %39 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 21
  store i16 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 20
  store i32 134215680, ptr %40, align 8
  %41 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 23
  store i32 134215680, ptr %41, align 16
  %42 = load ptr, ptr %18, align 4
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #7
  %44 = lshr i32 %43, 1
  store i32 %44, ptr %31, align 4
  %45 = tail call i32 @mmc_of_parse(ptr noundef nonnull %11) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %112, label %47

47:                                               ; preds = %28
  %48 = load i32, ptr @maxfreq, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 %48, ptr %36, align 16
  br label %51

51:                                               ; preds = %50, %47
  %52 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 1, i32 1
  store i32 0, ptr %52, align 4
  %53 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %53, ptr %14, align 4
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %53 to i32
  br label %112

57:                                               ; preds = %51
  %58 = tail call ptr @mv_mbus_dram_info() #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %103, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %62 = getelementptr i8, ptr %61, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %63 = getelementptr i8, ptr %61, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %64 = getelementptr i8, ptr %61, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %65 = getelementptr i8, ptr %61, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %66 = getelementptr i8, ptr %61, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %67 = getelementptr i8, ptr %61, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %68 = getelementptr i8, ptr %61, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %69 = getelementptr i8, ptr %61, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #7, !srcloc !9
  %70 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %58, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %58, i32 0, i32 2
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %100, %75 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %77 = getelementptr %struct.mbus_dram_window, ptr %74, i32 %76, i32 3
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr %struct.mbus_dram_window, ptr %74, i32 %76, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = load i8, ptr %58, align 8
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 4
  %86 = trunc i64 %78 to i32
  %87 = add i32 %86, -1
  %88 = and i32 %87, -65536
  %89 = or i32 %88, %82
  %90 = or i32 %89, %85
  %91 = or i32 %90, 1
  %92 = shl i32 %76, 3
  %93 = add i32 %92, 264
  %94 = getelementptr i8, ptr %61, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %95 = getelementptr %struct.mbus_dram_window, ptr %74, i32 %76, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = add i32 %92, 268
  %99 = getelementptr i8, ptr %61, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #7, !srcloc !9
  %100 = add nuw nsw i32 %76, 1
  %101 = load i32, ptr %70, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %75, label %103

103:                                              ; preds = %75, %60, %57
  tail call fastcc void @mvsd_power_down(ptr noundef %14)
  %104 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %8, ptr noundef nonnull @mvsd_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %14) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %8) #8
  br label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 1, i32 1, i32 2
  tail call void @init_timer_key(ptr noundef %108, ptr noundef nonnull @mvsd_timeout_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %109 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %109, align 8
  %110 = tail call i32 @mmc_add_host(ptr noundef nonnull %11) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107, %106, %55, %28, %20
  %113 = phi i32 [ %56, %55 ], [ %45, %28 ], [ -22, %20 ], [ %104, %106 ], [ %110, %107 ]
  %114 = load ptr, ptr %18, align 4
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @clk_disable(ptr noundef %114) #7
  tail call void @clk_unprepare(ptr noundef %114) #7
  br label %117

117:                                              ; preds = %116, %112
  tail call void @mmc_free_host(ptr noundef nonnull %11) #7
  br label %118

118:                                              ; preds = %117, %107, %10, %7, %6
  %119 = phi i32 [ -19, %6 ], [ -6, %7 ], [ 0, %107 ], [ %113, %117 ], [ -12, %10 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvsd_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  tail call void @mmc_remove_host(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 2
  %6 = tail call i32 @del_timer_sync(ptr noundef %5) #7
  tail call fastcc void @mvsd_power_down(ptr noundef %4)
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %11

11:                                               ; preds = %10, %1
  tail call void @mmc_free_host(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvsd_power_down(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %3 = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr i8, ptr %2, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %2, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 256) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 32) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %7 = getelementptr i8, ptr %2, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %8 = getelementptr i8, ptr %2, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr i8, ptr %2, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 65535) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %2, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 65535) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvsd_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca [2 x i16], align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr i8, ptr %5, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %8 = getelementptr i8, ptr %5, i32 112
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %5, i32 116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %247, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %172, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %7, 1056
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %111, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp sgt i32 %18, 31
  %30 = and i32 %7, 1024
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %5, i32 64
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %28, %33 ], [ %38, %35 ]
  %37 = phi i32 [ %18, %33 ], [ %39, %35 ]
  tail call void @__raw_readsw(ptr noundef %34, ptr noundef %36, i32 noundef 16) #7
  %38 = getelementptr i16, ptr %36, i32 16
  %39 = add nsw i32 %37, -32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %41 = icmp ugt i32 %37, 63
  %42 = and i32 %40, 1024
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %35, label %45

45:                                               ; preds = %35, %26
  %46 = phi i32 [ %18, %26 ], [ %39, %35 ]
  %47 = phi ptr [ %28, %26 ], [ %38, %35 ]
  %48 = phi i32 [ %7, %26 ], [ %40, %35 ]
  %49 = icmp slt i32 %46, 33
  br i1 %49, label %50, label %107

50:                                               ; preds = %45
  %51 = icmp sgt i32 %46, 3
  %52 = and i32 %48, 32
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %5, i32 64
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi ptr [ %47, %55 ], [ %63, %57 ]
  %59 = phi i32 [ %46, %55 ], [ %66, %57 ]
  %60 = getelementptr i16, ptr %58, i32 1
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %58, align 1
  %63 = getelementptr i16, ptr %58, i32 2
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr %60, align 1
  %66 = add nsw i32 %59, -4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %68 = icmp ugt i32 %59, 7
  %69 = and i32 %67, 32
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %57, label %72

72:                                               ; preds = %57, %50
  %73 = phi i32 [ %46, %50 ], [ %66, %57 ]
  %74 = phi ptr [ %47, %50 ], [ %63, %57 ]
  %75 = phi i32 [ %48, %50 ], [ %67, %57 ]
  %76 = phi i1 [ %53, %50 ], [ %70, %57 ]
  %77 = icmp eq i32 %73, 0
  %78 = icmp sgt i32 %73, 3
  %79 = or i1 %77, %78
  %80 = xor i1 %76, true
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %83 = getelementptr i8, ptr %5, i32 64
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %85 = trunc i32 %84 to i16
  store i16 %85, ptr %3, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds [2 x i16], ptr %3, i32 0, i32 1
  store i16 %87, ptr %88, align 2
  %89 = getelementptr inbounds i8, ptr %3, i32 4
  %90 = sub i32 0, %73
  %91 = getelementptr i8, ptr %89, i32 %90
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %74, ptr align 1 %91, i32 %73, i1 false)
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %94

93:                                               ; preds = %72
  br i1 %77, label %94, label %99

94:                                               ; preds = %93, %82
  %95 = phi i32 [ %92, %82 ], [ %75, %93 ]
  %96 = load i32, ptr %21, align 4
  %97 = and i32 %96, -1057
  store i32 %97, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %98 = load i32, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %98) #7, !srcloc !9
  br label %107

99:                                               ; preds = %93
  %100 = load i32, ptr %21, align 4
  %101 = and i32 %100, 1024
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = and i32 %100, -1057
  %105 = or i32 %104, 32
  store i32 %105, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %106 = load i32, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %106) #7, !srcloc !9
  br label %107

107:                                              ; preds = %103, %99, %94, %45
  %108 = phi i32 [ 0, %94 ], [ %73, %103 ], [ %73, %99 ], [ %46, %45 ]
  %109 = phi ptr [ %74, %94 ], [ %74, %103 ], [ %74, %99 ], [ %47, %45 ]
  %110 = phi i32 [ %95, %94 ], [ %75, %103 ], [ %75, %99 ], [ %48, %45 ]
  store ptr %109, ptr %27, align 4
  br label %169

111:                                              ; preds = %20
  %112 = and i32 %7, 2064
  %113 = and i32 %112, %22
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %172, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = icmp sgt i32 %18, 3
  %119 = and i32 %7, 16
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %139

122:                                              ; preds = %115
  %123 = getelementptr i8, ptr %5, i32 64
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi ptr [ %117, %122 ], [ %130, %124 ]
  %126 = phi i32 [ %18, %122 ], [ %133, %124 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %127 = getelementptr i16, ptr %125, i32 1
  %128 = load i16, ptr %125, align 1
  %129 = zext i16 %128 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %129) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %130 = getelementptr i16, ptr %125, i32 2
  %131 = load i16, ptr %127, align 1
  %132 = zext i16 %131 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %132) #7, !srcloc !9
  %133 = add nsw i32 %126, -4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  %135 = icmp ugt i32 %126, 7
  %136 = and i32 %134, 16
  %137 = icmp ne i32 %136, 0
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %124, label %139

139:                                              ; preds = %124, %115
  %140 = phi i32 [ %18, %115 ], [ %133, %124 ]
  %141 = phi ptr [ %117, %115 ], [ %130, %124 ]
  %142 = phi i32 [ %7, %115 ], [ %134, %124 ]
  %143 = phi i1 [ %120, %115 ], [ %137, %124 ]
  %144 = icmp slt i32 %140, 4
  br i1 %144, label %145, label %166

145:                                              ; preds = %139
  %146 = icmp eq i32 %140, 0
  %147 = xor i1 %143, true
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %160, label %149

149:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %150 = getelementptr inbounds i8, ptr %4, i32 4
  %151 = sub i32 0, %140
  %152 = getelementptr i8, ptr %150, i32 %151
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %152, ptr align 2 %141, i32 %140, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %153 = load i16, ptr %4, align 4
  %154 = zext i16 %153 to i32
  %155 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %154) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %156 = getelementptr inbounds [2 x i16], ptr %4, i32 0, i32 1
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %158) #7, !srcloc !9
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %161

160:                                              ; preds = %145
  br i1 %146, label %161, label %166

161:                                              ; preds = %160, %149
  %162 = phi i32 [ %159, %149 ], [ %142, %160 ]
  %163 = load i32, ptr %21, align 4
  %164 = and i32 %163, -2065
  store i32 %164, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %165 = load i32, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %165) #7, !srcloc !9
  br label %166

166:                                              ; preds = %161, %160, %139
  %167 = phi i32 [ 0, %161 ], [ %140, %160 ], [ %140, %139 ]
  %168 = phi i32 [ %162, %161 ], [ %142, %160 ], [ %142, %139 ]
  store ptr %141, ptr %116, align 4
  br label %169

169:                                              ; preds = %166, %107
  %170 = phi i32 [ %108, %107 ], [ %167, %166 ]
  %171 = phi i32 [ %110, %107 ], [ %168, %166 ]
  store i32 %170, ptr %17, align 4
  br label %172

172:                                              ; preds = %169, %111, %15
  %173 = phi i1 [ false, %169 ], [ true, %15 ], [ true, %111 ]
  %174 = phi i32 [ %171, %169 ], [ %7, %15 ], [ %7, %111 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %174) #7, !srcloc !9
  %175 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 4
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %174, -3361
  %178 = and i32 %177, %176
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %218, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.mmc_request, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 12
  %186 = tail call i32 @del_timer(ptr noundef %185) #7
  store ptr null, ptr %181, align 4
  %187 = load i32, ptr %175, align 4
  %188 = and i32 %187, 256
  store i32 %188, ptr %175, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %189 = load i32, ptr %175, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %189) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %190 = getelementptr i8, ptr %5, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !44
  %191 = load i16, ptr %16, align 4
  %192 = add i16 %191, 1
  store i16 %192, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %193 = and i32 %174, 16384
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %180
  %196 = getelementptr inbounds %struct.mmc_command, ptr %184, i32 0, i32 5
  store i32 -71, ptr %196, align 4
  br label %203

197:                                              ; preds = %180
  %198 = and i32 %174, 32768
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = getelementptr i8, ptr %5, i32 100
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  br label %203

203:                                              ; preds = %200, %197, %195
  %204 = phi i32 [ 0, %195 ], [ %202, %200 ], [ 0, %197 ]
  %205 = tail call fastcc i32 @mvsd_finish_cmd(ptr noundef %1, ptr noundef %184, i32 noundef %204)
  %206 = getelementptr inbounds %struct.mmc_request, ptr %182, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %203
  %210 = tail call fastcc i32 @mvsd_finish_data(ptr noundef %1, ptr noundef nonnull %207, i32 noundef %205)
  br label %211

211:                                              ; preds = %209, %203
  %212 = phi i32 [ %210, %209 ], [ %205, %203 ]
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 14
  %216 = load ptr, ptr %215, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.5, i32 noundef %212) #8
  %217 = getelementptr inbounds %struct.mmc_command, ptr %184, i32 0, i32 5
  store i32 -42, ptr %217, align 4
  br label %223

218:                                              ; preds = %172
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !44
  %219 = load i16, ptr %16, align 4
  %220 = add i16 %219, 1
  store i16 %220, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %221 = and i32 %174, 256
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %241, label %228

223:                                              ; preds = %214, %211
  %224 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 13
  %225 = load ptr, ptr %224, align 4
  tail call void @mmc_request_done(ptr noundef %225, ptr noundef %182) #7
  %226 = and i32 %174, 256
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %247, label %228

228:                                              ; preds = %223, %218
  %229 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 13
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.mmc_host, ptr %230, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.mmc_host_ops, ptr %232, i32 0, i32 7
  %234 = load ptr, ptr %233, align 4
  tail call void %234(ptr noundef %230, i32 noundef 0) #7
  %235 = getelementptr inbounds %struct.mmc_host, ptr %230, i32 0, i32 49
  store i8 1, ptr %235, align 8
  %236 = getelementptr inbounds %struct.mmc_host, ptr %230, i32 0, i32 47
  %237 = load ptr, ptr %236, align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %247, label %239

239:                                              ; preds = %228
  %240 = tail call i32 @wake_up_process(ptr noundef nonnull %237) #7
  br label %247

241:                                              ; preds = %218
  br i1 %173, label %242, label %247

242:                                              ; preds = %241
  %243 = getelementptr inbounds %struct.mvsd_host, ptr %1, i32 0, i32 14
  %244 = load ptr, ptr %243, align 4
  %245 = load i32, ptr %175, align 4
  %246 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.6, i32 noundef %174, i32 noundef %245, i32 noundef %246) #8
  br label %247

247:                                              ; preds = %242, %241, %239, %228, %223, %11
  %248 = phi i32 [ 0, %242 ], [ 1, %11 ], [ 1, %241 ], [ 1, %228 ], [ 1, %239 ], [ 1, %223 ]
  ret i32 %248
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvsd_timeout_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 24
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #8
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr i8, ptr %3, i32 72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !49
  %15 = getelementptr i8, ptr %3, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !50
  %17 = getelementptr i8, ptr %3, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %14, i32 noundef %16, i32 noundef %18) #8
  store ptr null, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %19 = getelementptr i8, ptr %3, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 256) #7, !srcloc !9
  %20 = getelementptr i8, ptr %0, i32 -36
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %23 = load i32, ptr %20, align 4
  %24 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #7, !srcloc !9
  %25 = getelementptr i8, ptr %0, i32 -32
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 256
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %28 = load i32, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %28) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %29 = getelementptr i8, ptr %3, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 65535) #7, !srcloc !9
  %31 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  store i32 -110, ptr %33, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = tail call fastcc i32 @mvsd_finish_cmd(ptr noundef %2, ptr noundef %34, i32 noundef 0)
  %36 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 5
  store i32 -110, ptr %40, align 4
  %41 = load ptr, ptr %36, align 4
  %42 = tail call fastcc i32 @mvsd_finish_data(ptr noundef %2, ptr noundef %41, i32 noundef 0)
  br label %43

43:                                               ; preds = %39, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  %44 = getelementptr i8, ptr %0, i32 20
  %45 = load ptr, ptr %44, align 4
  tail call void @mmc_request_done(ptr noundef %45, ptr noundef nonnull %7) #7
  br label %47

46:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvsd_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mvsd_host, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !57

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mvsdio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

11:                                               ; preds = %2
  store ptr %1, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = shl i32 %12, 8
  %14 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = or i32 %13, 3
  br label %29

20:                                               ; preds = %11
  %21 = and i32 %15, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = or i32 %13, 1
  br label %29

25:                                               ; preds = %20
  %26 = shl i32 %15, 1
  %27 = and i32 %26, 2
  %28 = or i32 %27, %13
  br label %29

29:                                               ; preds = %25, %23, %18
  %30 = phi i32 [ %19, %18 ], [ %24, %23 ], [ %28, %25 ]
  %31 = shl i32 %15, 1
  %32 = and i32 %31, 8
  %33 = and i32 %15, 16
  %34 = and i32 %15, 1
  %35 = shl nuw nsw i32 %34, 7
  %36 = or i32 %32, %33
  %37 = or i32 %36, %35
  %38 = or i32 %37, %30
  %39 = shl nuw nsw i32 %34, 14
  %40 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %186, label %43

43:                                               ; preds = %29
  %44 = or i32 %38, 36
  %45 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 512
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 2, i32 18
  %50 = getelementptr i8, ptr %4, i32 72
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !59
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %43
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = add i32 %55, 100
  br label %57

57:                                               ; preds = %65, %54
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !60
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = sub i32 %56, %59
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.4) #8
  br label %68

65:                                               ; preds = %57
  %66 = and i32 %58, 8192
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %57, label %68

68:                                               ; preds = %65, %62, %43
  %69 = load i32, ptr %41, align 4
  %70 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %69, -1
  %73 = add i32 %72, %71
  %74 = udiv i32 %73, %71
  %75 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %74, -1
  %78 = add i32 %77, %76
  %79 = icmp eq i32 %78, 0
  %80 = tail call i32 @llvm.ctlz.i32(i32 %78, i1 false) #7, !range !61
  %81 = sub nsw i32 20, %80
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0) #7
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 15) #7
  %84 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, -30721
  %87 = shl nuw nsw i32 %83, 11
  %88 = select i1 %79, i32 0, i32 %87
  %89 = or i32 %88, %86
  store i32 %89, ptr %84, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %90 = load i32, ptr %84, align 4
  %91 = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %90) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %92 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %93) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %95 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %96) #7, !srcloc !9
  %98 = load i32, ptr @nodma, align 4
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr %95, align 4
  br i1 %99, label %101, label %133

101:                                              ; preds = %68
  %102 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 12
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.scatterlist, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, %100
  %107 = and i32 %106, 3
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %101
  %110 = load i32, ptr %45, align 4
  %111 = and i32 %110, 512
  %112 = icmp ne i32 %111, 0
  %113 = and i32 %105, 63
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %118, align 64
  %120 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 10
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %110, 256
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 2, i32 1
  %125 = tail call i32 @dma_map_sg_attrs(ptr noundef %119, ptr noundef %103, i32 noundef %121, i32 noundef %124, i32 noundef 0) #7
  %126 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  store i32 %125, ptr %126, align 4
  %127 = load ptr, ptr %102, align 4
  %128 = getelementptr inbounds %struct.scatterlist, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %130 = and i32 %129, 65535
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %130) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %131 = lshr i32 %129, 16
  %132 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %131) #7, !srcloc !9
  br label %160

133:                                              ; preds = %109, %101, %68
  %134 = load i32, ptr %92, align 4
  %135 = mul i32 %134, %100
  %136 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 12
  %138 = load ptr, ptr %137, align 4
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, -4
  %141 = inttoptr i32 %140 to ptr
  %142 = tail call ptr @page_address(ptr noundef %141) #7
  %143 = getelementptr inbounds %struct.scatterlist, ptr %138, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr i8, ptr %142, i32 %144
  %146 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  store ptr %145, ptr %146, align 4
  %147 = or i32 %49, 64
  %148 = load i32, ptr %45, align 4
  %149 = and i32 %148, 256
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %133
  %152 = or i32 %39, 16
  br label %160

153:                                              ; preds = %133
  %154 = load i32, ptr %136, align 4
  %155 = icmp ugt i32 %154, 32
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = or i32 %39, 1024
  br label %160

158:                                              ; preds = %153
  %159 = or i32 %39, 32
  br label %160

160:                                              ; preds = %158, %156, %151, %116
  %161 = phi i32 [ %147, %151 ], [ %147, %156 ], [ %147, %158 ], [ %49, %116 ]
  %162 = phi i32 [ %152, %151 ], [ %157, %156 ], [ %159, %158 ], [ %39, %116 ]
  %163 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 8
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %184, label %166

166:                                              ; preds = %160
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %167 = getelementptr inbounds %struct.mmc_command, ptr %164, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 65535
  %170 = getelementptr i8, ptr %4, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %169) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %171 = load i32, ptr %167, align 4
  %172 = lshr i32 %171, 16
  %173 = getelementptr i8, ptr %4, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %172) #7, !srcloc !9
  %174 = getelementptr inbounds %struct.mmc_command, ptr %164, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 3
  %177 = and i32 %176, 3
  %178 = load i32, ptr %164, align 4
  %179 = shl i32 %178, 8
  %180 = or i32 %177, %179
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %181 = getelementptr i8, ptr %4, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %180) #7, !srcloc !9
  %182 = or i32 %161, 4
  %183 = or i32 %162, 8192
  br label %188

184:                                              ; preds = %160
  %185 = or i32 %162, 2
  br label %188

186:                                              ; preds = %29
  %187 = or i32 %39, 1
  br label %188

188:                                              ; preds = %186, %184, %166
  %189 = phi i32 [ %38, %186 ], [ %44, %184 ], [ %44, %166 ]
  %190 = phi i32 [ 0, %186 ], [ %161, %184 ], [ %182, %166 ]
  %191 = phi i32 [ %187, %186 ], [ %185, %184 ], [ %183, %166 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %192 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 65535
  %195 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %194) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %196 = load i32, ptr %192, align 4
  %197 = lshr i32 %196, 16
  %198 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %197) #7, !srcloc !9
  %199 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %199) #7
  %201 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 8
  %204 = or i32 %203, %190
  store i32 %204, ptr %201, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %205 = load i32, ptr %201, align 4
  %206 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %205) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %207 = getelementptr i8, ptr %4, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 -257) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %208 = getelementptr i8, ptr %4, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 65535) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %209 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %189) #7, !srcloc !9
  %210 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, 256
  %213 = or i32 %191, %212
  %214 = or i32 %213, 32768
  store i32 %214, ptr %210, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %215 = load i32, ptr %210, align 4
  %216 = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %215) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %217 = getelementptr i8, ptr %4, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 65535) #7, !srcloc !9
  %218 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 6
  %219 = load i32, ptr %218, align 4
  %220 = load volatile i32, ptr @jiffies, align 64
  %221 = icmp eq i32 %219, 0
  %222 = select i1 %221, i32 5000, i32 %219
  %223 = tail call i32 @__msecs_to_jiffies(i32 noundef %222) #7
  %224 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  %225 = add i32 %223, %220
  %226 = tail call i32 @mod_timer(ptr noundef %224, i32 noundef %225) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %199, i32 noundef %200) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvsd_set_ios(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %4, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %11 = getelementptr i8, ptr %4, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 256) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %12 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %13 = getelementptr i8, ptr %4, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 65535) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr i8, ptr %4, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 65535) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %15 = getelementptr i8, ptr %4, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 65535) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr i8, ptr %4, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 65535) #7, !srcloc !9
  br label %17

17:                                               ; preds = %8, %2
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %21 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 32) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %22 = getelementptr i8, ptr %4, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 2047) #7, !srcloc !9
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  store i32 0, ptr %23, align 4
  br label %43

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %18, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %18, -1
  %32 = add i32 %31, %30
  %33 = udiv i32 %32, %18
  %34 = add i32 %33, -1
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 2047)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %36 = getelementptr i8, ptr %4, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #7, !srcloc !9
  %37 = load i32, ptr %1, align 4
  store i32 %37, ptr %25, align 4
  %38 = load i32, ptr %29, align 4
  %39 = add nuw nsw i32 %35, 1
  %40 = udiv i32 %38, %39
  %41 = udiv i32 1000000000, %40
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %28, %24, %20
  %44 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 3
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 2
  %47 = select i1 %46, i32 63497, i32 63496
  %48 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 2
  %51 = or i32 %47, 512
  %52 = select i1 %50, i32 %51, i32 %47
  %53 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %54 = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !9
  %55 = load i8, ptr %5, align 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  tail call fastcc void @mvsd_power_down(ptr noundef %3)
  br label %58

58:                                               ; preds = %57, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvsd_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %15, label %10

10:                                               ; preds = %2
  %11 = or i32 %9, 8
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 256
  store i32 %14, ptr %12, align 4
  br label %20

15:                                               ; preds = %2
  %16 = and i32 %9, -9
  store i32 %16, ptr %8, align 4
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -257
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvsd_finish_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %4, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %12 = getelementptr i8, ptr %4, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %14 = getelementptr i8, ptr %4, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %16 = getelementptr i8, ptr %4, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %18 = getelementptr i8, ptr %4, i32 48
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %20 = getelementptr i8, ptr %4, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %22 = getelementptr i8, ptr %4, i32 56
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %24 = getelementptr i8, ptr %4, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !92
  %26 = shl i32 %11, 22
  %27 = shl i32 %13, 6
  %28 = and i32 %27, 4194240
  %29 = or i32 %28, %26
  %30 = lshr i32 %15, 10
  %31 = and i32 %30, 63
  %32 = or i32 %29, %31
  %33 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = shl i32 %15, 22
  %35 = shl i32 %17, 6
  %36 = and i32 %35, 4194240
  %37 = or i32 %36, %34
  %38 = lshr i32 %19, 10
  %39 = and i32 %38, 63
  %40 = or i32 %37, %39
  %41 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  store i32 %40, ptr %41, align 4
  %42 = shl i32 %19, 22
  %43 = shl i32 %21, 6
  %44 = and i32 %43, 4194240
  %45 = or i32 %44, %42
  %46 = lshr i32 %23, 10
  %47 = and i32 %46, 63
  %48 = or i32 %45, %47
  %49 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  store i32 %48, ptr %49, align 4
  %50 = shl i32 %23, 22
  %51 = shl i32 %25, 8
  %52 = and i32 %51, 4194048
  %53 = or i32 %52, %50
  br label %75

54:                                               ; preds = %3
  %55 = and i32 %6, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %4, i32 32
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !93
  %60 = getelementptr i8, ptr %4, i32 36
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !93
  %62 = getelementptr i8, ptr %4, i32 40
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !93
  %64 = and i32 %63, 63
  %65 = shl i32 %61, 6
  %66 = and i32 %65, 4194240
  %67 = or i32 %64, %66
  %68 = shl i32 %59, 22
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  %71 = lshr i32 %59, 10
  %72 = and i32 %71, 63
  %73 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  store i32 %72, ptr %73, align 4
  %74 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %57, %9
  %76 = phi i32 [ 0, %57 ], [ %53, %9 ]
  %77 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %54
  %79 = and i32 %2, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = and i32 %2, 526
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ -110, %78 ], [ -84, %81 ]
  %86 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = and i32 %2, -528
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvsd_finish_data(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mvsd_host, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  store ptr null, ptr %5, align 4
  %9 = getelementptr inbounds %struct.mvsd_host, ptr %0, i32 0, i32 6
  store i32 0, ptr %9, align 4
  br label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mvsd_host, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mvsd_host, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %22, i32 noundef 0) #7
  br label %23

23:                                               ; preds = %10, %8
  %24 = and i32 %2, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = and i32 %2, 96
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = and i32 %2, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %26, %23
  %33 = phi i32 [ -110, %23 ], [ -84, %26 ], [ -52, %29 ]
  %34 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = and i32 %2, -1137
  %37 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %4, i32 128
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !94
  %41 = sub i32 %38, %40
  %42 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, %41
  %45 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  store i32 %44, ptr %45, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = sub i32 %44, %43
  store i32 %52, ptr %45, align 4
  br label %53

53:                                               ; preds = %51, %47, %35
  %54 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %98, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %4, i32 144
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !95
  %60 = getelementptr i8, ptr %4, i32 148
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !95
  %62 = getelementptr i8, ptr %4, i32 152
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !95
  %64 = and i32 %63, 63
  %65 = shl i32 %61, 6
  %66 = and i32 %65, 4194240
  %67 = or i32 %64, %66
  %68 = shl i32 %59, 22
  %69 = or i32 %67, %68
  %70 = load ptr, ptr %54, align 4
  %71 = getelementptr inbounds %struct.mmc_command, ptr %70, i32 0, i32 2
  store i32 %69, ptr %71, align 4
  %72 = lshr i32 %59, 10
  %73 = and i32 %72, 63
  %74 = load ptr, ptr %54, align 4
  %75 = getelementptr %struct.mmc_command, ptr %74, i32 0, i32 2, i32 1
  store i32 %73, ptr %75, align 4
  %76 = load ptr, ptr %54, align 4
  %77 = getelementptr %struct.mmc_command, ptr %76, i32 0, i32 2, i32 2
  store i32 0, ptr %77, align 4
  %78 = load ptr, ptr %54, align 4
  %79 = getelementptr %struct.mmc_command, ptr %78, i32 0, i32 2, i32 3
  store i32 0, ptr %79, align 4
  %80 = and i32 %2, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %57
  %83 = getelementptr i8, ptr %4, i32 120
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !96
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = and i32 %84, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = icmp eq i32 %84, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %90, %87, %82
  %93 = phi i32 [ -8, %82 ], [ -110, %87 ], [ -84, %90 ]
  %94 = load ptr, ptr %54, align 4
  %95 = getelementptr inbounds %struct.mmc_command, ptr %94, i32 0, i32 5
  store i32 %93, ptr %95, align 4
  br label %96

96:                                               ; preds = %92, %90
  %97 = and i32 %2, -1393
  br label %98

98:                                               ; preds = %96, %57, %53
  %99 = phi i32 [ %36, %53 ], [ %97, %96 ], [ %36, %57 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2153470386}
!9 = !{i64 2897350}
!10 = !{i64 2153470745}
!11 = !{i64 2153471212}
!12 = !{i64 2153471794}
!13 = !{i64 2153463548}
!14 = !{i64 2153463901}
!15 = !{i64 2153464277}
!16 = !{i64 2153464667}
!17 = !{i64 2153465034}
!18 = !{i64 2153465387}
!19 = !{i64 2153465750}
!20 = !{i64 2153466123}
!21 = !{i64 2897768}
!22 = !{i64 2153432391}
!23 = !{i64 2153434344}
!24 = !{i64 2153434716}
!25 = !{i64 2153437812}
!26 = !{i64 2153438744}
!27 = !{i64 2153439699}
!28 = !{i64 2153440103}
!29 = !{i64 2153440484}
!30 = !{i64 2153440856}
!31 = !{i64 2153441228}
!32 = !{i64 2153441498}
!33 = !{i64 2153441928}
!34 = !{i64 2153443922}
!35 = !{i64 2153445037}
!36 = !{i64 2153445813}
!37 = !{i64 2153446059}
!38 = !{i64 2153446432}
!39 = !{i64 2153446940}
!40 = !{i64 2153447210}
!41 = !{i64 2153448712}
!42 = !{i64 2153449168}
!43 = !{i64 2153449545}
!44 = !{i64 2148948193}
!45 = !{i64 2148944017}
!46 = !{i64 2148944092, i64 2148944119, i64 2148944166, i64 2148944188, i64 2148944216, i64 2148944236}
!47 = !{i64 2148971196}
!48 = !{i64 2153450066}
!49 = !{i64 2153455470}
!50 = !{i64 2153455842}
!51 = !{i64 2153456214}
!52 = !{i64 2153456476}
!53 = !{i64 2153456880}
!54 = !{i64 2153457294}
!55 = !{i64 2153457671}
!56 = !{i64 2153458034}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2153420470, i64 2153420960, i64 2153420507, i64 2153420563, i64 2153420597, i64 2153420621, i64 2153420662, i64 2153420683, i64 2153420711, i64 2153420745}
!59 = !{i64 2153413629}
!60 = !{i64 2153414015}
!61 = !{i32 0, i32 33}
!62 = !{i64 2153417329}
!63 = !{i64 2153417722}
!64 = !{i64 2153418117}
!65 = !{i64 2153419516}
!66 = !{i64 2153419951}
!67 = !{i64 2153422872}
!68 = !{i64 2153423287}
!69 = !{i64 2153423742}
!70 = !{i64 2153424178}
!71 = !{i64 2153424589}
!72 = !{i64 2153425359}
!73 = !{i64 2153425767}
!74 = !{i64 2153426148}
!75 = !{i64 2153426521}
!76 = !{i64 2153426927}
!77 = !{i64 2153427314}
!78 = !{i64 2153460100}
!79 = !{i64 2153460453}
!80 = !{i64 2153460829}
!81 = !{i64 2153461196}
!82 = !{i64 2153461559}
!83 = !{i64 2153461932}
!84 = !{i64 2153462305}
!85 = !{i64 2153462678}
!86 = !{i64 2153466511}
!87 = !{i64 2153466892}
!88 = !{i64 2153467851}
!89 = !{i64 2153468957}
!90 = !{i64 2153458823}
!91 = !{i64 2153459228}
!92 = !{i64 2153427906}
!93 = !{i64 2153428362}
!94 = !{i64 2153430610}
!95 = !{i64 2153431057}
!96 = !{i64 2153431438}
