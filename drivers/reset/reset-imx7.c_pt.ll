; ModuleID = '/llk/IR/drivers/reset/reset-imx7.c_pt.bc'
source_filename = "../drivers/reset/reset-imx7.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx7_src_variant = type { ptr, i32, %struct.reset_control_ops }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.imx7_src_signal = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.imx7_src = type { %struct.reset_controller_dev, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_reset_imx7__162_402_imx7_reset_driver_init6 = internal global ptr @imx7_reset_driver_init, section ".initcall6.init", align 4
@imx7_reset_driver = internal global %struct.platform_driver { ptr @imx7_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx7_reset_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx7_reset_driver_exit = internal global ptr @imx7_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [60 x i8] c"reset_imx7.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [46 x i8] c"reset_imx7.description=NXP i.MX7 reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [41 x i8] c"reset_imx7.file=drivers/reset/reset-imx7\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"reset_imx7.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"reset_imx7\00", align 1
@imx7_reset_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @variant_imx7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @variant_imx8mq }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @variant_imx8mp }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@__const.imx7_reset_probe.config = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr @.str.1, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to get imx7-src regmap\00", align 1
@variant_imx7 = internal constant %struct.imx7_src_variant { ptr @imx7_src_signals, i32 26, %struct.reset_control_ops { ptr null, ptr @imx7_reset_assert, ptr @imx7_reset_deassert, ptr null } }, align 4
@variant_imx8mq = internal constant %struct.imx7_src_variant { ptr @imx8mq_src_signals, i32 53, %struct.reset_control_ops { ptr null, ptr @imx8mq_reset_assert, ptr @imx8mq_reset_deassert, ptr null } }, align 4
@variant_imx8mp = internal constant %struct.imx7_src_variant { ptr @imx8mp_src_signals, i32 38, %struct.reset_control_ops { ptr null, ptr @imx8mp_reset_assert, ptr @imx8mp_reset_deassert, ptr null } }, align 4
@imx7_src_signals = internal constant [26 x %struct.imx7_src_signal] [%struct.imx7_src_signal { i32 4, i32 1 }, %struct.imx7_src_signal { i32 4, i32 2 }, %struct.imx7_src_signal { i32 4, i32 16 }, %struct.imx7_src_signal { i32 4, i32 32 }, %struct.imx7_src_signal { i32 4, i32 256 }, %struct.imx7_src_signal { i32 4, i32 512 }, %struct.imx7_src_signal { i32 4, i32 4096 }, %struct.imx7_src_signal { i32 4, i32 8192 }, %struct.imx7_src_signal { i32 4, i32 1048576 }, %struct.imx7_src_signal { i32 4, i32 2097152 }, %struct.imx7_src_signal { i32 12, i32 2 }, %struct.imx7_src_signal { i32 12, i32 4 }, %struct.imx7_src_signal { i32 20, i32 1 }, %struct.imx7_src_signal { i32 28, i32 2 }, %struct.imx7_src_signal { i32 32, i32 1 }, %struct.imx7_src_signal { i32 32, i32 2 }, %struct.imx7_src_signal { i32 36, i32 1 }, %struct.imx7_src_signal { i32 36, i32 2 }, %struct.imx7_src_signal { i32 40, i32 2 }, %struct.imx7_src_signal { i32 40, i32 4 }, %struct.imx7_src_signal { i32 44, i32 6 }, %struct.imx7_src_signal { i32 44, i32 8 }, %struct.imx7_src_signal { i32 44, i32 64 }, %struct.imx7_src_signal { i32 4096, i32 1 }, %struct.imx7_src_signal { i32 4096, i32 2 }, %struct.imx7_src_signal { i32 44, i32 2048 }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx8mq_src_signals = internal constant [53 x %struct.imx7_src_signal] [%struct.imx7_src_signal { i32 4, i32 1 }, %struct.imx7_src_signal { i32 4, i32 2 }, %struct.imx7_src_signal { i32 4, i32 4 }, %struct.imx7_src_signal { i32 4, i32 8 }, %struct.imx7_src_signal { i32 4, i32 16 }, %struct.imx7_src_signal { i32 4, i32 32 }, %struct.imx7_src_signal { i32 4, i32 64 }, %struct.imx7_src_signal { i32 4, i32 128 }, %struct.imx7_src_signal { i32 4, i32 256 }, %struct.imx7_src_signal { i32 4, i32 512 }, %struct.imx7_src_signal { i32 4, i32 1024 }, %struct.imx7_src_signal { i32 4, i32 2048 }, %struct.imx7_src_signal { i32 4, i32 4096 }, %struct.imx7_src_signal { i32 4, i32 8192 }, %struct.imx7_src_signal { i32 4, i32 16384 }, %struct.imx7_src_signal { i32 4, i32 32768 }, %struct.imx7_src_signal { i32 4, i32 1048576 }, %struct.imx7_src_signal { i32 4, i32 2097152 }, %struct.imx7_src_signal { i32 12, i32 1 }, %struct.imx7_src_signal { i32 32, i32 1 }, %struct.imx7_src_signal { i32 36, i32 1 }, %struct.imx7_src_signal { i32 40, i32 2 }, %struct.imx7_src_signal { i32 40, i32 4 }, %struct.imx7_src_signal { i32 40, i32 8 }, %struct.imx7_src_signal { i32 40, i32 16 }, %struct.imx7_src_signal { i32 40, i32 32 }, %struct.imx7_src_signal { i32 44, i32 6 }, %struct.imx7_src_signal { i32 44, i32 8 }, %struct.imx7_src_signal { i32 44, i32 64 }, %struct.imx7_src_signal { i32 44, i32 2048 }, %struct.imx7_src_signal { i32 48, i32 1 }, %struct.imx7_src_signal { i32 52, i32 1 }, %struct.imx7_src_signal { i32 64, i32 1 }, %struct.imx7_src_signal { i32 68, i32 1 }, %struct.imx7_src_signal { i32 72, i32 6 }, %struct.imx7_src_signal { i32 72, i32 8 }, %struct.imx7_src_signal { i32 72, i32 64 }, %struct.imx7_src_signal { i32 72, i32 2048 }, %struct.imx7_src_signal { i32 76, i32 1 }, %struct.imx7_src_signal { i32 76, i32 2 }, %struct.imx7_src_signal { i32 76, i32 4 }, %struct.imx7_src_signal { i32 80, i32 1 }, %struct.imx7_src_signal { i32 80, i32 2 }, %struct.imx7_src_signal { i32 80, i32 4 }, %struct.imx7_src_signal { i32 4096, i32 1 }, %struct.imx7_src_signal { i32 4096, i32 2 }, %struct.imx7_src_signal { i32 4096, i32 4 }, %struct.imx7_src_signal { i32 4100, i32 4 }, %struct.imx7_src_signal { i32 4100, i32 2 }, %struct.imx7_src_signal { i32 4100, i32 1 }, %struct.imx7_src_signal { i32 12, i32 2 }, %struct.imx7_src_signal { i32 12, i32 4 }, %struct.imx7_src_signal { i32 12, i32 8 }], align 4
@imx8mp_src_signals = internal constant [38 x %struct.imx7_src_signal] [%struct.imx7_src_signal { i32 4, i32 1 }, %struct.imx7_src_signal { i32 4, i32 2 }, %struct.imx7_src_signal { i32 4, i32 4 }, %struct.imx7_src_signal { i32 4, i32 8 }, %struct.imx7_src_signal { i32 4, i32 16 }, %struct.imx7_src_signal { i32 4, i32 32 }, %struct.imx7_src_signal { i32 4, i32 64 }, %struct.imx7_src_signal { i32 4, i32 128 }, %struct.imx7_src_signal { i32 4, i32 256 }, %struct.imx7_src_signal { i32 4, i32 512 }, %struct.imx7_src_signal { i32 4, i32 1024 }, %struct.imx7_src_signal { i32 4, i32 2048 }, %struct.imx7_src_signal { i32 4, i32 4096 }, %struct.imx7_src_signal { i32 4, i32 8192 }, %struct.imx7_src_signal { i32 4, i32 16384 }, %struct.imx7_src_signal { i32 4, i32 32768 }, %struct.imx7_src_signal { i32 4, i32 1048576 }, %struct.imx7_src_signal { i32 4, i32 2097152 }, %struct.imx7_src_signal { i32 12, i32 1 }, %struct.imx7_src_signal { i32 32, i32 1 }, %struct.imx7_src_signal { i32 36, i32 1 }, %struct.imx7_src_signal { i32 24, i32 1 }, %struct.imx7_src_signal { i32 28, i32 1 }, %struct.imx7_src_signal { i32 40, i32 1 }, %struct.imx7_src_signal { i32 44, i32 4 }, %struct.imx7_src_signal { i32 44, i32 8 }, %struct.imx7_src_signal { i32 44, i32 64 }, %struct.imx7_src_signal { i32 44, i32 2048 }, %struct.imx7_src_signal { i32 48, i32 1 }, %struct.imx7_src_signal { i32 52, i32 1 }, %struct.imx7_src_signal { i32 56, i32 1 }, %struct.imx7_src_signal { i32 60, i32 1 }, %struct.imx7_src_signal { i32 64, i32 1 }, %struct.imx7_src_signal { i32 68, i32 1 }, %struct.imx7_src_signal { i32 72, i32 1 }, %struct.imx7_src_signal { i32 76, i32 1 }, %struct.imx7_src_signal { i32 80, i32 1 }, %struct.imx7_src_signal { i32 84, i32 1 }], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_imx7_reset_driver_exit, ptr @__initcall__kmod_reset_imx7__162_402_imx7_reset_driver_init6, ptr @imx7_reset_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx7_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx7_reset_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7_reset_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx7_reset_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx7_reset_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regmap_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %2, ptr noundef nonnull align 4 dereferenceable(172) @__const.imx7_reset_probe.config, i32 172, i1 false)
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.imx7_src, ptr %5, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @syscon_node_to_regmap(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.imx7_src, ptr %5, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %16 = ptrtoint ptr %12 to i32
  br label %27

17:                                               ; preds = %7
  %18 = call i32 @regmap_attach_dev(ptr noundef %3, ptr noundef %12, ptr noundef nonnull %2) #6
  %19 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 1
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.imx7_src_variant, ptr %4, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 8
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.imx7_src_variant, ptr %4, i32 0, i32 2
  store ptr %23, ptr %5, align 4
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef nonnull %5) #6
  br label %27

27:                                               ; preds = %17, %15, %1
  %28 = phi i32 [ %16, %15 ], [ %26, %17 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %2) #6
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_attach_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx7_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %1, 22
  %8 = select i1 %7, i32 0, i32 %6
  %9 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1
  %10 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %12, i32 noundef %6, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx7_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %1, label %13 [
    i32 20, label %7
    i32 22, label %12
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr %struct.imx7_src_signal, ptr %9, i32 20, i32 1
  %11 = load i32, ptr %10, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = phi i32 [ %6, %2 ], [ %6, %12 ], [ %11, %7 ]
  %15 = phi ptr [ %4, %2 ], [ %4, %12 ], [ %9, %7 ]
  %16 = phi i32 [ 0, %2 ], [ %6, %12 ], [ 0, %7 ]
  %17 = getelementptr %struct.imx7_src_signal, ptr %15, i32 %1
  %18 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %20, i32 noundef %14, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8mq_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %1, label %8 [
    i32 52, label %7
    i32 21, label %7
    i32 28, label %7
    i32 36, label %7
    i32 25, label %7
    i32 24, label %7
    i32 23, label %7
    i32 22, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 0, %7 ], [ %6, %2 ]
  %10 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1
  %11 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %13, i32 noundef %6, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8mq_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %1, label %13 [
    i32 26, label %7
    i32 34, label %7
    i32 28, label %12
    i32 36, label %12
    i32 25, label %12
    i32 24, label %12
    i32 23, label %12
    i32 22, label %12
    i32 21, label %12
    i32 52, label %12
  ]

7:                                                ; preds = %2, %2
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr %struct.imx7_src_signal, ptr %9, i32 %1, i32 1
  %11 = load i32, ptr %10, align 4
  br label %13

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = phi i32 [ %6, %2 ], [ %6, %12 ], [ %11, %7 ]
  %15 = phi ptr [ %4, %2 ], [ %4, %12 ], [ %9, %7 ]
  %16 = phi i32 [ 0, %2 ], [ %6, %12 ], [ 0, %7 ]
  %17 = getelementptr %struct.imx7_src_signal, ptr %15, i32 %1
  %18 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %20, i32 noundef %14, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8mp_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %1, 26
  %8 = select i1 %7, i32 0, i32 %6
  %9 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1
  %10 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %12, i32 noundef %6, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8mp_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.imx7_src_signal, ptr %4, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %1, label %13 [
    i32 24, label %7
    i32 26, label %12
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr %struct.imx7_src_signal, ptr %9, i32 24, i32 1
  %11 = load i32, ptr %10, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = phi i32 [ %6, %2 ], [ %6, %12 ], [ %11, %7 ]
  %15 = phi ptr [ %4, %2 ], [ %4, %12 ], [ %9, %7 ]
  %16 = phi i32 [ 0, %2 ], [ %6, %12 ], [ 0, %7 ]
  %17 = getelementptr %struct.imx7_src_signal, ptr %15, i32 %1
  %18 = getelementptr inbounds %struct.imx7_src, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %20, i32 noundef %14, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %21
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
