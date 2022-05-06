; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-owl.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-owl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.owl_i2c_dev = type { %struct.i2c_adapter, ptr, %struct.completion, ptr, %struct.spinlock, ptr, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_owl__247_526_owl_i2c_driver_init6 = internal global ptr @owl_i2c_driver_init, section ".initcall6.init", align 4
@owl_i2c_driver = internal global %struct.platform_driver { ptr @owl_i2c_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @owl_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_owl_i2c_driver_exit = internal global ptr @owl_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [51 x i8] c"i2c_owl.author=David Liu <liuwei@actions-semi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [72 x i8] c"i2c_owl.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [63 x i8] c"i2c_owl.description=Actions Semiconductor Owl SoC's I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [40 x i8] c"i2c_owl.file=drivers/i2c/busses/i2c-owl\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [20 x i8] c"i2c_owl.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"owl-i2c\00", align 1
@owl_i2c_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid clock-frequency %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"input clock rate should not be zero\0A\00", align 1
@owl_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @owl_i2c_xfer, ptr @owl_i2c_xfer_atomic, ptr null, ptr null, ptr @owl_i2c_func, ptr null, ptr null }, align 4
@owl_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 3, i32 0, i16 240, i16 240, i16 6, i16 240 }, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"OWL I2C adapter\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Transaction timed out\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"FIFO reset timeout\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.11 = private unnamed_addr constant [18 x i8] c"Bus busy timeout\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_owl_i2c_driver_exit, ptr @__initcall__kmod_i2c_owl__247_526_owl_i2c_driver_init6, ptr @owl_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_i2c_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @owl_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 704, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 5
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %66

11:                                               ; preds = %5
  %12 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 7
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef 1, i32 noundef 0) #6
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 100000, ptr %17, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, ptr %17, align 4
  switch i32 %22, label %23 [
    i32 100000, label %24
    i32 400000, label %24
  ]

23:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %22) #7
  br label %66

24:                                               ; preds = %21, %21, %20
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %26 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %66

31:                                               ; preds = %24
  %32 = tail call i32 @clk_prepare(ptr noundef %25) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = tail call i32 @clk_enable(ptr noundef %25) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %66

38:                                               ; preds = %34
  %39 = load ptr, ptr %26, align 4
  %40 = tail call i32 @clk_get_rate(ptr noundef %39) #6
  %41 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 6
  store i32 %40, ptr %41, align 8
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %63

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 2
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %46, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #6
  %47 = getelementptr inbounds %struct.owl_i2c_dev, ptr %3, i32 0, i32 4
  store i32 0, ptr %47, align 8
  store ptr null, ptr %3, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  store ptr @owl_i2c_algorithm, ptr %48, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 7
  store i32 400, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 17
  store ptr @owl_i2c_quirks, ptr %50, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 1
  store ptr %2, ptr %51, align 4
  %52 = load ptr, ptr %15, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 25
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %54, ptr noundef nonnull align 1 dereferenceable(16) @.str.6, i32 16, i1 false)
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  store ptr %3, ptr %55, align 8
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %56, align 8
  %57 = load ptr, ptr %0, align 8
  %58 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %12, ptr noundef nonnull @owl_i2c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %57, ptr noundef nonnull %3) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %12) #7
  br label %63

61:                                               ; preds = %44
  %62 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %3) #6
  br label %66

63:                                               ; preds = %60, %43
  %64 = phi i32 [ %58, %60 ], [ -22, %43 ]
  %65 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %65) #6
  tail call void @clk_unprepare(ptr noundef %65) #6
  br label %66

66:                                               ; preds = %63, %61, %37, %31, %28, %23, %11, %9, %1
  %67 = phi i32 [ %10, %9 ], [ -22, %23 ], [ %30, %28 ], [ %64, %63 ], [ %62, %61 ], [ -12, %1 ], [ %12, %11 ], [ %35, %37 ], [ %32, %31 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_i2c_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  tail call fastcc void @owl_i2c_xfer_data(ptr noundef %1)
  %4 = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %8 = or i32 %7, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #6, !srcloc !11
  %9 = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 2
  tail call void @complete_all(ptr noundef %9) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %10 = load i16, ptr %3, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_i2c_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @owl_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_i2c_xfer_atomic(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @owl_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @owl_i2c_func(ptr nocapture noundef readnone %0) #4 {
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @owl_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %12 = and i32 %11, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #6, !srcloc !11
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %16 = or i32 %15, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !11
  %19 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 4
  %24 = add i32 %20, -1
  %25 = add i32 %24, %23
  %26 = udiv i32 %25, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %27 = and i32 %26, 255
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %33 = or i32 %32, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %33) #6, !srcloc !11
  br label %34

34:                                               ; preds = %41, %4
  %35 = phi i32 [ 0, %4 ], [ %42, %41 ]
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 28
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %39 = and i32 %38, 6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 51
  br i1 %43, label %44, label %34

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.10) #7
  br label %234

46:                                               ; preds = %34
  %47 = load ptr, ptr %5, align 8
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = add i32 %48, 400
  %50 = getelementptr inbounds %struct.owl_i2c_dev, ptr %47, i32 0, i32 5
  br label %51

51:                                               ; preds = %57, %46
  %52 = load ptr, ptr %50, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = sub i32 %49, %58
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %51

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.11) #7
  br label %234

63:                                               ; preds = %51
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = and i32 %67, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !11
  br label %231

74:                                               ; preds = %63
  br i1 %3, label %77, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 2
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 32, %75 ], [ 0, %74 ]
  %79 = load ptr, ptr %9, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %81 = and i32 %80, -33
  %82 = or i32 %81, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %82) #6, !srcloc !11
  %83 = icmp sgt i32 %2, 1
  br i1 %83, label %84, label %121

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %86 = load i16, ptr %85, align 4
  %87 = shl i16 %86, 1
  %88 = add i16 %87, 2
  %89 = and i16 %88, 14
  %90 = or i16 %89, -28879
  %91 = zext i16 %90 to i32
  %92 = load i16, ptr %1, align 4
  %93 = zext i16 %92 to i32
  %94 = shl nuw nsw i32 %93, 1
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = and i16 %96, 1
  %98 = zext i16 %97 to i32
  %99 = and i32 %94, 254
  %100 = or i32 %99, %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr i8, ptr %101, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #6, !srcloc !11
  %103 = load i16, ptr %85, align 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %84
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i32 [ 0, %105 ], [ %115, %107 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %109 = load ptr, ptr %106, align 4
  %110 = getelementptr i8, ptr %109, i32 %108
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load ptr, ptr %9, align 4
  %114 = getelementptr i8, ptr %113, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #6, !srcloc !11
  %115 = add nuw nsw i32 %108, 1
  %116 = load i16, ptr %85, align 4
  %117 = zext i16 %116 to i32
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %107, label %119

119:                                              ; preds = %107, %84
  %120 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  br label %121

121:                                              ; preds = %119, %77
  %122 = phi i32 [ %91, %119 ], [ 36611, %77 ]
  %123 = phi ptr [ %120, %119 ], [ %1, %77 ]
  %124 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 1
  store ptr %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 8
  store i32 0, ptr %125, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 2
  %127 = load i16, ptr %126, align 4
  %128 = zext i16 %127 to i32
  %129 = load ptr, ptr %9, align 4
  %130 = getelementptr i8, ptr %129, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #6, !srcloc !11
  %131 = load i16, ptr %123, align 4
  %132 = zext i16 %131 to i32
  %133 = shl nuw nsw i32 %132, 1
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 1
  %135 = load i16, ptr %134, align 2
  %136 = and i16 %135, 1
  %137 = zext i16 %136 to i32
  %138 = and i32 %133, 254
  %139 = or i32 %138, %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %140 = load ptr, ptr %9, align 4
  %141 = getelementptr i8, ptr %140, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #6, !srcloc !11
  %142 = load i16, ptr %134, align 2
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %121
  %146 = load i16, ptr %126, align 4
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 3
  br label %150

150:                                              ; preds = %157, %148
  %151 = phi i32 [ 0, %148 ], [ %164, %157 ]
  %152 = load ptr, ptr %9, align 4
  %153 = getelementptr i8, ptr %152, i32 32
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %155 = and i32 %154, 32
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %158 = load ptr, ptr %149, align 4
  %159 = getelementptr i8, ptr %158, i32 %151
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load ptr, ptr %9, align 4
  %163 = getelementptr i8, ptr %162, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #6, !srcloc !11
  %164 = add nuw nsw i32 %151, 1
  %165 = load i16, ptr %126, align 4
  %166 = zext i16 %165 to i32
  %167 = icmp ult i32 %164, %166
  br i1 %167, label %150, label %168

168:                                              ; preds = %157, %150, %145
  %169 = phi i32 [ 0, %145 ], [ %151, %150 ], [ %164, %157 ]
  store i32 %169, ptr %125, align 8
  %170 = load i16, ptr %134, align 2
  br label %171

171:                                              ; preds = %168, %121
  %172 = phi i16 [ %170, %168 ], [ %142, %121 ]
  %173 = and i16 %172, 4096
  %174 = icmp eq i16 %173, 0
  %175 = load ptr, ptr %9, align 4
  %176 = getelementptr i8, ptr %175, i32 28
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6
  br i1 %174, label %180, label %178

178:                                              ; preds = %171
  %179 = or i32 %177, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %179) #6, !srcloc !11
  br label %182

180:                                              ; preds = %171
  %181 = and i32 %177, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %181) #6, !srcloc !11
  br label %182

182:                                              ; preds = %180, %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %183 = load ptr, ptr %9, align 4
  %184 = getelementptr i8, ptr %183, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %122) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %64) #6
  br i1 %3, label %185, label %209

185:                                              ; preds = %182
  %186 = tail call i64 @ktime_get() #6
  %187 = add i64 %186, 4000000000
  %188 = load ptr, ptr %9, align 4
  %189 = getelementptr i8, ptr %188, i32 32
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %191 = and i32 %190, 3
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %223

193:                                              ; preds = %196, %185
  %194 = tail call i64 @ktime_get() #6
  %195 = icmp sgt i64 %194, %187
  br i1 %195, label %203, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 2147480) #6
  %198 = load ptr, ptr %9, align 4
  %199 = getelementptr i8, ptr %198, i32 32
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %201 = and i32 %200, 3
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %193, label %223

203:                                              ; preds = %193
  %204 = load ptr, ptr %9, align 4
  %205 = getelementptr i8, ptr %204, i32 32
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %207 = and i32 %206, 3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %217, label %223

209:                                              ; preds = %182
  %210 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 2
  %211 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %212 = load i32, ptr %211, align 4
  %213 = tail call i32 @wait_for_completion_timeout(ptr noundef %210, i32 noundef %212) #6
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %209
  %216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  br label %225

217:                                              ; preds = %209, %203
  %218 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %219 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.9) #7
  %220 = load ptr, ptr %9, align 4
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %222 = or i32 %221, 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %222) #6, !srcloc !11
  br label %231

223:                                              ; preds = %203, %196, %185
  %224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  tail call fastcc void @owl_i2c_xfer_data(ptr noundef %6)
  br label %225

225:                                              ; preds = %223, %215
  %226 = phi i32 [ %216, %215 ], [ %224, %223 ]
  %227 = getelementptr inbounds %struct.owl_i2c_dev, ptr %6, i32 0, i32 9
  %228 = load i32, ptr %227, align 4
  %229 = icmp slt i32 %228, 0
  %230 = select i1 %229, i32 %228, i32 %2
  br label %231

231:                                              ; preds = %225, %217, %70
  %232 = phi i32 [ -11, %70 ], [ -110, %217 ], [ %230, %225 ]
  %233 = phi i32 [ %64, %70 ], [ %218, %217 ], [ %226, %225 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %233) #6
  br label %234

234:                                              ; preds = %231, %61, %44
  %235 = phi i32 [ -110, %44 ], [ -110, %61 ], [ %232, %231 ]
  %236 = load ptr, ptr %9, align 4
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %238 = and i32 %237, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %238) #6, !srcloc !11
  ret i32 %235
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @owl_i2c_xfer_data(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.owl_i2c_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.owl_i2c_dev, ptr %0, i32 0, i32 9
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.owl_i2c_dev, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  store i32 -6, ptr %4, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = or i32 %14, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #6, !srcloc !11
  br label %86

16:                                               ; preds = %1
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  store i32 -5, ptr %4, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %26 = or i32 %25, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #6, !srcloc !11
  br label %86

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %struct.owl_i2c_dev, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6
  br i1 %31, label %42, label %36

36:                                               ; preds = %27
  %37 = and i32 %35, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %86, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %48

42:                                               ; preds = %27
  %43 = and i32 %35, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %67

48:                                               ; preds = %53, %39
  %49 = load i32, ptr %32, align 8
  %50 = load i16, ptr %40, align 4
  %51 = zext i16 %50 to i32
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %57 = trunc i32 %56 to i8
  %58 = load ptr, ptr %41, align 4
  %59 = load i32, ptr %32, align 8
  %60 = add i32 %59, 1
  store i32 %60, ptr %32, align 8
  %61 = getelementptr i8, ptr %58, i32 %59
  store i8 %57, ptr %61, align 1
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %48

67:                                               ; preds = %72, %45
  %68 = load i32, ptr %32, align 8
  %69 = load i16, ptr %46, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %73 = load ptr, ptr %47, align 4
  %74 = load i32, ptr %32, align 8
  %75 = add i32 %74, 1
  store i32 %75, ptr %32, align 8
  %76 = getelementptr i8, ptr %73, i32 %74
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i8, ptr %79, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #6, !srcloc !11
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %67, label %86

86:                                               ; preds = %72, %67, %53, %48, %42, %36, %22, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 5398148}
!9 = !{i64 2154141838}
!10 = !{i64 2154142012}
!11 = !{i64 5397730}
!12 = !{i64 2148891055}
!13 = !{i64 2148886879}
!14 = !{i64 2148886954, i64 2148886981, i64 2148887028, i64 2148887050, i64 2148887078, i64 2148887098}
!15 = !{i64 2148914058}
!16 = !{i64 2154143794}
!17 = !{i64 2154145502}
!18 = !{i64 2154144451}
!19 = !{i64 2154149547}
!20 = !{i64 2154151567}
!21 = !{i64 2154151928}
!22 = !{i64 2154152988}
!23 = !{i64 2154153334}
!24 = !{i64 2154153717}
!25 = !{i64 2154154059}
!26 = !{i64 2154154558}
!27 = !{i64 2154154847}
!28 = !{i64 2154155387}
!29 = !{i64 2154157738}
!30 = !{i64 2154158087}
!31 = !{i64 2154146018}
!32 = !{i64 2154146547}
!33 = !{i64 2154147521}
!34 = !{i64 2154147083}
!35 = !{i64 2154148181}
!36 = !{i64 2154147877}
