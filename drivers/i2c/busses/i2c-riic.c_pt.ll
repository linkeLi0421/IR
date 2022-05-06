; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-riic.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-riic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.riic_dev = type { ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.i2c_adapter, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_riic__248_509_riic_i2c_driver_init6 = internal global ptr @riic_i2c_driver_init, section ".initcall6.init", align 4
@riic_i2c_driver = internal global %struct.platform_driver { ptr @riic_i2c_probe, ptr @riic_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @riic_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_riic_i2c_driver_exit = internal global ptr @riic_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [42 x i8] c"i2c_riic.description=Renesas RIIC adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [56 x i8] c"i2c_riic.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [42 x i8] c"i2c_riic.file=drivers/i2c/busses/i2c-riic\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [24 x i8] c"i2c_riic.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"i2c-riic\00", align 1
@riic_i2c_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,riic-r9a07g044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,riic-rz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"missing controller clock\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error: missing reset ctrl\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to request irq %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Renesas RIIC adapter\00", align 1
@riic_algo = internal constant %struct.i2c_algorithm { ptr @riic_xfer, ptr null, ptr null, ptr null, ptr @riic_func, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"registered with %dHz bus speed\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"riic-tend\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"riic-rdrf\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"riic-tdre\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"riic-stop\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"riic-nack\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"unsupported bus speed (%dHz). %d max\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"invalid speed (%lu). Too slow.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_riic_i2c_driver_exit, ptr @__initcall__kmod_i2c_riic__248_509_riic_i2c_driver_init6, ptr @riic_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @riic_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @riic_i2c_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @riic_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @riic_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.i2c_timings, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 704, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %176, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %7) #9
  store ptr %8, ptr %4, align 8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %176

12:                                               ; preds = %6
  %13 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %14 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 8
  store ptr %13, ptr %14, align 8
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  %17 = load ptr, ptr %14, align 8
  %18 = ptrtoint ptr %17 to i32
  br label %176

19:                                               ; preds = %12
  %20 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %21 = icmp eq ptr %20, inttoptr (i32 1 to ptr)
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  %26 = ptrtoint ptr %23 to i32
  br label %176

27:                                               ; preds = %22
  %28 = tail call i32 @reset_control_deassert(ptr noundef %23) #9
  br label %29

29:                                               ; preds = %27, %19
  %30 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %176, label %73

32:                                               ; preds = %73
  %33 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #9
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %176, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %33, ptr noundef nonnull @riic_rdrf_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 2) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %176, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %39, ptr noundef nonnull @riic_tdre_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %41
  %45 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 3) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %176, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %45, ptr noundef nonnull @riic_stop_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 5) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %176, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %51, ptr noundef nonnull @riic_tend_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %4) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7
  %58 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7, i32 9, i32 8
  store ptr %4, ptr %58, align 8
  %59 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7, i32 12
  %60 = tail call i32 @strlcpy(ptr noundef %59, ptr noundef nonnull @.str.4, i32 noundef 48) #9
  store ptr null, ptr %57, align 8
  %61 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7, i32 2
  store ptr @riic_algo, ptr %61, align 8
  %62 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7, i32 9, i32 1
  store ptr %3, ptr %62, align 4
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7, i32 9, i32 25
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 6
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %67, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #9
  call void @i2c_parse_fw_timings(ptr noundef %3, ptr noundef nonnull %2, i1 noundef zeroext true) #9
  call void @pm_runtime_enable(ptr noundef %3) #9
  %68 = getelementptr inbounds %struct.riic_dev, ptr %4, i32 0, i32 7, i32 9
  %69 = load ptr, ptr %62, align 4
  %70 = call i32 @__pm_runtime_resume(ptr noundef %69, i32 noundef 4) #9
  %71 = load i32, ptr %2, align 4
  %72 = icmp ugt i32 %71, 400000
  br i1 %72, label %79, label %80

73:                                               ; preds = %29
  %74 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %30, ptr noundef nonnull @riic_tend_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %32, label %76

76:                                               ; preds = %73, %53, %47, %41, %35
  %77 = phi ptr [ @.str.6, %73 ], [ @.str.7, %35 ], [ @.str.8, %41 ], [ @.str.9, %47 ], [ @.str.10, %53 ]
  %78 = phi i32 [ %74, %73 ], [ %36, %35 ], [ %42, %41 ], [ %48, %47 ], [ %54, %53 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %77) #10
  br label %176

79:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.12, i32 noundef %71, i32 noundef 400000) #10
  br label %120

80:                                               ; preds = %56
  %81 = load ptr, ptr %14, align 8
  %82 = call i32 @clk_get_rate(ptr noundef %81) #9
  %83 = load i32, ptr %2, align 4
  %84 = add i32 %82, -1
  %85 = add i32 %84, %83
  %86 = udiv i32 %85, %83
  %87 = mul i32 %86, 6
  %88 = icmp slt i32 %87, 350
  br i1 %88, label %123, label %89

89:                                               ; preds = %80
  %90 = sdiv i32 %86, 2
  %91 = lshr i32 %82, 1
  %92 = mul i32 %90, 6
  %93 = icmp slt i32 %92, 350
  br i1 %93, label %123, label %94

94:                                               ; preds = %89
  %95 = sdiv i32 %86, 4
  %96 = lshr i32 %82, 2
  %97 = mul i32 %95, 6
  %98 = icmp slt i32 %97, 350
  br i1 %98, label %123, label %99

99:                                               ; preds = %94
  %100 = sdiv i32 %86, 8
  %101 = lshr i32 %82, 3
  %102 = mul nsw i32 %100, 6
  %103 = icmp slt i32 %102, 350
  br i1 %103, label %123, label %104

104:                                              ; preds = %99
  %105 = sdiv i32 %86, 16
  %106 = lshr i32 %82, 4
  %107 = mul nsw i32 %105, 6
  %108 = icmp slt i32 %107, 350
  br i1 %108, label %123, label %109

109:                                              ; preds = %104
  %110 = sdiv i32 %86, 32
  %111 = lshr i32 %82, 5
  %112 = mul nsw i32 %110, 6
  %113 = icmp slt i32 %112, 350
  br i1 %113, label %123, label %114

114:                                              ; preds = %109
  %115 = sdiv i32 %86, 64
  %116 = lshr i32 %82, 6
  %117 = mul nsw i32 %115, 6
  %118 = icmp slt i32 %117, 350
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.13, i32 noundef %83) #10
  br label %120

120:                                              ; preds = %119, %79
  %121 = load ptr, ptr %62, align 4
  %122 = call i32 @__pm_runtime_idle(ptr noundef %121, i32 noundef 5) #9
  br label %174

123:                                              ; preds = %114, %109, %104, %99, %94, %89, %80
  %124 = phi i32 [ -4, %80 ], [ -3, %89 ], [ -3, %94 ], [ -3, %99 ], [ -3, %104 ], [ -3, %109 ], [ -3, %114 ]
  %125 = phi i32 [ %87, %80 ], [ %92, %89 ], [ %97, %94 ], [ %102, %99 ], [ %107, %104 ], [ %112, %109 ], [ %117, %114 ]
  %126 = phi i32 [ %82, %80 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ %111, %109 ], [ %116, %114 ]
  %127 = phi i32 [ %86, %80 ], [ %90, %89 ], [ %95, %94 ], [ %100, %99 ], [ %105, %104 ], [ %110, %109 ], [ %115, %114 ]
  %128 = phi i8 [ 8, %80 ], [ 24, %89 ], [ 40, %94 ], [ 56, %99 ], [ 72, %104 ], [ 88, %109 ], [ 104, %114 ]
  %129 = sdiv i32 %125, 10
  %130 = add nsw i32 %129, %124
  %131 = getelementptr inbounds %struct.i2c_timings, ptr %2, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = udiv i32 1000000000, %126
  %134 = udiv i32 %132, %133
  %135 = sub i32 %130, %134
  %136 = getelementptr inbounds %struct.i2c_timings, ptr %2, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = udiv i32 %137, %133
  %139 = add i32 %124, %127
  %140 = add i32 %129, %138
  %141 = sub i32 %139, %140
  %142 = call i32 @llvm.smax.i32(i32 %135, i32 1) #9
  %143 = call i32 @llvm.smax.i32(i32 %141, i32 1) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  call void @arm_heavy_mb() #9
  %144 = load ptr, ptr %4, align 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %144, i8 80) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %145 = load ptr, ptr %4, align 8
  %146 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %145) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %147 = or i8 %146, -128
  %148 = load ptr, ptr %4, align 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %148, i8 %147) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %149 = load ptr, ptr %4, align 8
  %150 = getelementptr i8, ptr %149, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %150, i8 %128) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %151 = trunc i32 %143 to i8
  %152 = or i8 %151, -32
  %153 = load ptr, ptr %4, align 8
  %154 = getelementptr i8, ptr %153, i32 56
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %154, i8 %152) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %155 = trunc i32 %142 to i8
  %156 = or i8 %155, -32
  %157 = load ptr, ptr %4, align 8
  %158 = getelementptr i8, ptr %157, i32 52
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %158, i8 %156) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %159 = load ptr, ptr %4, align 8
  %160 = getelementptr i8, ptr %159, i32 24
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %160, i8 0) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  call void @arm_heavy_mb() #9
  %161 = load ptr, ptr %4, align 8
  %162 = getelementptr i8, ptr %161, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %162, i8 48) #9, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %163 = load ptr, ptr %4, align 8
  %164 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %163) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %165 = and i8 %164, -65
  %166 = load ptr, ptr %4, align 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %166, i8 %165) #9, !srcloc !10
  %167 = load ptr, ptr %62, align 4
  %168 = call i32 @__pm_runtime_idle(ptr noundef %167, i32 noundef 5) #9
  %169 = call i32 @i2c_add_adapter(ptr noundef %57) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %123
  %172 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %172, align 8
  %173 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %173) #10
  br label %176

174:                                              ; preds = %123, %120
  %175 = phi i32 [ %169, %123 ], [ -22, %120 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  br label %176

176:                                              ; preds = %174, %171, %76, %50, %44, %38, %32, %29, %25, %16, %10, %1
  %177 = phi i32 [ %11, %10 ], [ %18, %16 ], [ %26, %25 ], [ %78, %76 ], [ %175, %174 ], [ 0, %171 ], [ -12, %1 ], [ %30, %29 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #9, !srcloc !10
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #9
  %9 = getelementptr inbounds %struct.riic_dev, ptr %3, i32 0, i32 7
  tail call void @i2c_del_adapter(ptr noundef %9) #9
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_tend_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8
  %10 = getelementptr i8, ptr %9, i32 64
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %15 = and i8 %14, -17
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %15) #9, !srcloc !10
  %18 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 4
  store i32 -6, ptr %18, align 8
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %19, %8
  %24 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %1, align 8
  %33 = getelementptr i8, ptr %32, i32 28
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %35 = and i8 %34, -73
  %36 = or i8 %35, 8
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr i8, ptr %37, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %36) #9, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %1, align 8
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 8) #9, !srcloc !10
  br label %49

41:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %42 = load ptr, ptr %1, align 8
  %43 = getelementptr i8, ptr %42, i32 28
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %45 = and i8 %44, -65
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %45) #9, !srcloc !10
  %48 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %48) #9
  br label %49

49:                                               ; preds = %41, %31, %19
  %50 = phi i32 [ 0, %19 ], [ 1, %41 ], [ 1, %31 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_rdrf_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %34 [
    i32 0, label %51
    i32 -1, label %5
    i32 1, label %14
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  store i32 %10, ptr %3, align 4
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr i8, ptr %11, i32 64
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  br label %51

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %1, align 8
  %20 = getelementptr i8, ptr %19, i32 28
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %22 = or i8 %21, 8
  %23 = load ptr, ptr %1, align 8
  %24 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %22) #9, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %1, align 8
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 8) #9, !srcloc !10
  br label %27

27:                                               ; preds = %18, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %28 = load ptr, ptr %1, align 8
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %31 = or i8 %30, 8
  %32 = load ptr, ptr %1, align 8
  %33 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #9, !srcloc !10
  br label %41

34:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %1, align 8
  %36 = getelementptr i8, ptr %35, i32 16
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %38 = and i8 %37, -9
  %39 = load ptr, ptr %1, align 8
  %40 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %38) #9, !srcloc !10
  br label %41

41:                                               ; preds = %34, %27
  %42 = load ptr, ptr %1, align 8
  %43 = getelementptr i8, ptr %42, i32 64
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %45 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  store i8 %44, ptr %46, align 1
  %47 = load ptr, ptr %45, align 4
  %48 = getelementptr i8, ptr %47, i32 1
  store ptr %48, ptr %45, align 4
  %49 = load i32, ptr %3, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %3, align 4
  br label %51

51:                                               ; preds = %41, %5, %2
  %52 = phi i32 [ 1, %5 ], [ 1, %41 ], [ %4, %2 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_tdre_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %37 [
    i32 0, label %58
    i32 -1, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr i8, ptr %13, i32 28
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %16 = and i8 %15, 95
  %17 = or i8 %16, 32
  %18 = load ptr, ptr %1, align 8
  %19 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #9, !srcloc !10
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %3, align 4
  br label %26

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ %25, %22 ], [ %21, %12 ]
  %28 = phi ptr [ %7, %22 ], [ %20, %12 ]
  %29 = load i16, ptr %28, align 4
  %30 = trunc i16 %29 to i8
  %31 = shl i8 %30, 1
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = trunc i16 %33 to i8
  %35 = and i8 %34, 1
  %36 = or i8 %35, %31
  br label %43

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr i8, ptr %39, i32 1
  store ptr %41, ptr %38, align 4
  %42 = add i32 %4, -1
  store i32 %42, ptr %3, align 4
  br label %43

43:                                               ; preds = %37, %26
  %44 = phi i32 [ %42, %37 ], [ %27, %26 ]
  %45 = phi i8 [ %40, %37 ], [ %36, %26 ]
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %48 = load ptr, ptr %1, align 8
  %49 = getelementptr i8, ptr %48, i32 28
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %51 = and i8 %50, 63
  %52 = or i8 %51, 64
  %53 = load ptr, ptr %1, align 8
  %54 = getelementptr i8, ptr %53, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 %52) #9, !srcloc !10
  br label %55

55:                                               ; preds = %47, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %1, align 8
  %57 = getelementptr i8, ptr %56, i32 60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 %45) #9, !srcloc !10
  br label %58

58:                                               ; preds = %55, %2
  %59 = phi i32 [ 1, %55 ], [ %4, %2 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_stop_isr(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 0) #9, !srcloc !10
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 0) #9, !srcloc !10
  %10 = load ptr, ptr %1, align 8
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %13 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %13) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @riic_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 4
  store i32 -16, ptr %14, align 8
  br label %50

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 6
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 4
  store i32 0, ptr %17, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 0) #9, !srcloc !10
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 3
  %23 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 2
  %25 = add nsw i32 %2, -1
  %26 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 5
  %27 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 7, i32 7
  br label %28

28:                                               ; preds = %44, %21
  %29 = phi i32 [ 0, %21 ], [ %47, %44 ]
  %30 = phi i8 [ 2, %21 ], [ 4, %44 ]
  store i32 -1, ptr %22, align 4
  %31 = getelementptr %struct.i2c_msg, ptr %1, i32 %29
  %32 = getelementptr %struct.i2c_msg, ptr %1, i32 %29, i32 3
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr %23, align 4
  store ptr %31, ptr %24, align 8
  %34 = icmp eq i32 %29, %25
  %35 = zext i1 %34 to i32
  store i32 %35, ptr %26, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 -112) #9, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %30) #9, !srcloc !10
  %40 = load i32, ptr %27, align 4
  %41 = tail call i32 @wait_for_completion_timeout(ptr noundef %16, i32 noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 -110, ptr %17, align 8
  br label %50

44:                                               ; preds = %28
  %45 = load i32, ptr %17, align 8
  %46 = icmp ne i32 %45, 0
  %47 = add nuw nsw i32 %29, 1
  %48 = icmp eq i32 %47, %2
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %28

50:                                               ; preds = %44, %43, %15, %13
  %51 = load ptr, ptr %6, align 4
  %52 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #9
  %53 = getelementptr inbounds %struct.riic_dev, ptr %5, i32 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %2, i32 %54
  ret i32 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @riic_func(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2154201729}
!10 = !{i64 5388982}
!11 = !{i64 2154194112}
!12 = !{i64 5389377}
!13 = !{i64 2154194260}
!14 = !{i64 2154202083}
!15 = !{i64 2154202371}
!16 = !{i64 2154202635}
!17 = !{i64 2154202885}
!18 = !{i64 2154203146}
!19 = !{i64 2154206351}
!20 = !{i64 2154195803}
!21 = !{i64 2154196016}
!22 = !{i64 2154196239}
!23 = !{i64 2154196516}
!24 = !{i64 2154196722}
!25 = !{i64 2154197006}
!26 = !{i64 2154195540}
!27 = !{i64 2154197194}
!28 = !{i64 2154197455}
!29 = !{i64 2154197643}
!30 = !{i64 2154197904}
!31 = !{i64 2154194516}
!32 = !{i64 2154194712}
!33 = !{i64 2154194981}
!34 = !{i64 2154195240}
