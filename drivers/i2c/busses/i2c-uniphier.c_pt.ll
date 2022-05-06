; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-uniphier.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-uniphier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.uniphier_i2c_priv = type { %struct.completion, %struct.i2c_adapter, ptr, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_uniphier__247_435_uniphier_i2c_drv_init6 = internal global ptr @uniphier_i2c_drv_init, section ".initcall6.init", align 4
@uniphier_i2c_drv = internal global %struct.platform_driver { ptr @uniphier_i2c_probe, ptr @uniphier_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_i2c_drv_exit = internal global ptr @uniphier_i2c_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [68 x i8] c"i2c_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [49 x i8] c"i2c_uniphier.description=UniPhier I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [50 x i8] c"i2c_uniphier.file=drivers/i2c/busses/i2c-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [25 x i8] c"i2c_uniphier.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"uniphier-i2c\00", align 1
@uniphier_i2c_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @uniphier_i2c_suspend, ptr @uniphier_i2c_resume, ptr @uniphier_i2c_suspend, ptr @uniphier_i2c_resume, ptr @uniphier_i2c_suspend, ptr @uniphier_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid clock-frequency %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"input clock rate should not be zero\0A\00", align 1
@uniphier_i2c_algo = internal constant %struct.i2c_algorithm { ptr @uniphier_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @uniphier_i2c_functionality, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"UniPhier I2C\00", align 1
@uniphier_i2c_bus_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @uniphier_i2c_get_scl, ptr @uniphier_i2c_set_scl, ptr @uniphier_i2c_get_sda, ptr null, ptr null, ptr null, ptr @uniphier_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"transaction timeout\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_uniphier_i2c_drv_exit, ptr @__initcall__kmod_i2c_uniphier__247_435_uniphier_i2c_drv_init6, ptr @uniphier_i2c_drv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_i2c_drv, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_i2c_drv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_i2c_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 688, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %8 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 2
  store ptr %7, ptr %8, align 8
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %79

12:                                               ; preds = %6
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %79, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 100000, ptr %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 4
  %23 = add i32 %22, -400001
  %24 = icmp ult i32 %23, -400000
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %22) #8
  br label %79

26:                                               ; preds = %21, %20
  %27 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #7
  %28 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %31 = ptrtoint ptr %27 to i32
  br label %79

32:                                               ; preds = %26
  %33 = call i32 @clk_prepare(ptr noundef %27) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = call i32 @clk_enable(ptr noundef %27) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call void @clk_unprepare(ptr noundef %27) #7
  br label %79

39:                                               ; preds = %35
  %40 = call i32 @clk_get_rate(ptr noundef %27) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %76

43:                                               ; preds = %39
  %44 = load i32, ptr %2, align 4
  %45 = udiv i32 %40, %44
  %46 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  store i32 0, ptr %4, align 4
  %47 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #7
  %48 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1
  store ptr null, ptr %48, align 8
  %49 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1, i32 2
  store ptr @uniphier_i2c_algo, ptr %49, align 8
  %50 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1, i32 9, i32 1
  store ptr %3, ptr %50, align 4
  %51 = load ptr, ptr %16, align 8
  %52 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1, i32 9, i32 25
  store ptr %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1, i32 12
  %54 = call i32 @strlcpy(ptr noundef %53, ptr noundef nonnull @.str.5, i32 noundef 48) #7
  %55 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1, i32 16
  store ptr @uniphier_i2c_bus_recovery_info, ptr %55, align 4
  %56 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 1, i32 9, i32 8
  store ptr %4, ptr %56, align 8
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %57, align 8
  %58 = load i32, ptr %46, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr i8, ptr %59, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 1) #7, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %61 = mul i32 %58, 5
  %62 = udiv i32 %61, 9
  %63 = shl i32 %62, 16
  %64 = or i32 %63, %58
  %65 = load ptr, ptr %8, align 8
  %66 = getelementptr i8, ptr %65, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr i8, ptr %67, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 3) #7, !srcloc !10
  %69 = load ptr, ptr %0, align 8
  %70 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %13, ptr noundef nonnull @uniphier_i2c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %69, ptr noundef nonnull %4) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %13) #8
  br label %76

73:                                               ; preds = %43
  %74 = call i32 @i2c_add_adapter(ptr noundef %48) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %72, %42
  %77 = phi i32 [ %74, %73 ], [ -22, %42 ], [ %70, %72 ]
  %78 = load ptr, ptr %28, align 4
  call void @clk_disable(ptr noundef %78) #7
  call void @clk_unprepare(ptr noundef %78) #7
  br label %79

79:                                               ; preds = %76, %73, %38, %32, %30, %25, %12, %10, %1
  %80 = phi i32 [ %11, %10 ], [ -22, %25 ], [ %31, %30 ], [ -12, %1 ], [ %13, %12 ], [ %77, %76 ], [ 0, %73 ], [ %36, %38 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @complete(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
define internal i32 @uniphier_i2c_master_xfer(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr %struct.i2c_msg, ptr %1, i32 %2
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %6, i32 0, i32 4
  br i1 %12, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, ptr %13, align 8
  %16 = add i32 %15, 1
  store i32 %16, ptr %13, align 8
  %17 = icmp ugt i32 %15, 3
  br i1 %17, label %18, label %153

18:                                               ; preds = %14
  %19 = tail call i32 @i2c_recover_bus(ptr noundef %0) #7
  store i32 0, ptr %13, align 8
  br label %153

20:                                               ; preds = %3
  store i32 0, ptr %13, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  br label %23

23:                                               ; preds = %150, %20
  %24 = phi ptr [ %1, %20 ], [ %27, %150 ]
  %25 = icmp ult ptr %24, %4
  br i1 %25, label %26, label %153

26:                                               ; preds = %23
  %27 = getelementptr %struct.i2c_msg, ptr %24, i32 1
  %28 = icmp eq ptr %27, %4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = icmp slt i16 %30, 0
  %32 = select i1 %28, i1 true, i1 %31
  %33 = and i16 %30, 1
  %34 = icmp eq i16 %33, 0
  %35 = load i16, ptr %24, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = zext i16 %35 to i32
  %41 = shl nuw nsw i32 %40, 1
  %42 = load ptr, ptr %5, align 8
  store i32 0, ptr %42, align 4
  br i1 %34, label %80, label %43

43:                                               ; preds = %26
  %44 = or i32 %41, 3329
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %45 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !10
  %47 = load i32, ptr %21, align 4
  %48 = tail call i32 @wait_for_completion_timeout(ptr noundef %42, i32 noundef %47) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %79, label %50, !prof !15

50:                                               ; preds = %43
  %51 = load ptr, ptr %45, align 8
  %52 = getelementptr i8, ptr %51, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %153, !prof !17

56:                                               ; preds = %50
  %57 = and i32 %53, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %122

59:                                               ; preds = %56
  %60 = icmp eq i16 %37, 0
  br i1 %60, label %122, label %61

61:                                               ; preds = %73, %59
  %62 = phi i16 [ %64, %73 ], [ %37, %59 ]
  %63 = phi ptr [ %78, %73 ], [ %39, %59 ]
  %64 = add i16 %62, -1
  %65 = icmp eq i16 %64, 0
  %66 = load ptr, ptr %5, align 8
  store i32 0, ptr %66, align 4
  %67 = select i1 %65, i32 2304, i32 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %68 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %66, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #7, !srcloc !10
  %70 = load i32, ptr %21, align 4
  %71 = tail call i32 @wait_for_completion_timeout(ptr noundef %66, i32 noundef %70) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73, !prof !15

73:                                               ; preds = %61
  %74 = load ptr, ptr %68, align 8
  %75 = getelementptr i8, ptr %74, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %77 = trunc i32 %76 to i8
  %78 = getelementptr i8, ptr %63, i32 1
  store i8 %77, ptr %63, align 1
  br i1 %65, label %122, label %61

79:                                               ; preds = %61, %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #8
  br label %147

80:                                               ; preds = %26
  %81 = or i32 %41, 3328
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %82 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %42, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #7, !srcloc !10
  %84 = load i32, ptr %21, align 4
  %85 = tail call i32 @wait_for_completion_timeout(ptr noundef %42, i32 noundef %84) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %121, label %87, !prof !15

87:                                               ; preds = %80
  %88 = load ptr, ptr %82, align 8
  %89 = getelementptr i8, ptr %88, i32 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %153, !prof !17

93:                                               ; preds = %87
  %94 = and i32 %90, 2048
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %118, %93
  %97 = phi i16 [ %101, %118 ], [ %37, %93 ]
  %98 = phi ptr [ %102, %118 ], [ %39, %93 ]
  %99 = icmp eq i16 %97, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %96
  %101 = add i16 %97, -1
  %102 = getelementptr i8, ptr %98, i32 1
  %103 = load i8, ptr %98, align 1
  %104 = zext i8 %103 to i32
  %105 = load ptr, ptr %5, align 8
  store i32 0, ptr %105, align 4
  %106 = or i32 %104, 2304
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %107 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %105, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #7, !srcloc !10
  %109 = load i32, ptr %21, align 4
  %110 = tail call i32 @wait_for_completion_timeout(ptr noundef %105, i32 noundef %109) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %121, label %112, !prof !15

112:                                              ; preds = %100
  %113 = load ptr, ptr %107, align 8
  %114 = getelementptr i8, ptr %113, i32 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %116 = and i32 %115, 512
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %153, !prof !17

118:                                              ; preds = %112
  %119 = and i32 %115, 2048
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %96, label %122

121:                                              ; preds = %100, %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #8
  br label %147

122:                                              ; preds = %118, %96, %93, %73, %59, %56
  %123 = phi i1 [ false, %56 ], [ true, %59 ], [ false, %93 ], [ %99, %96 ], [ %99, %118 ], [ true, %73 ]
  %124 = phi i32 [ -6, %56 ], [ 0, %59 ], [ -6, %93 ], [ -6, %118 ], [ 0, %96 ], [ 0, %73 ]
  br i1 %32, label %125, label %150

125:                                              ; preds = %122
  %126 = load ptr, ptr %5, align 8
  store i32 0, ptr %126, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %127 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 2816) #7, !srcloc !10
  %129 = load i32, ptr %21, align 4
  %130 = tail call i32 @wait_for_completion_timeout(ptr noundef %126, i32 noundef %129) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133, !prof !15

132:                                              ; preds = %125
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #8
  br label %139

133:                                              ; preds = %125
  %134 = load ptr, ptr %127, align 8
  %135 = getelementptr i8, ptr %134, i32 4
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %137 = and i32 %136, 512
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139, !prof !17

139:                                              ; preds = %133, %132
  %140 = phi i32 [ -11, %133 ], [ -110, %132 ]
  %141 = select i1 %123, i32 %140, i32 %124
  br label %147

142:                                              ; preds = %133
  %143 = and i32 %136, 2048
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 0, i32 -6, !prof !17
  %146 = select i1 %123, i32 %145, i32 %124
  br i1 %144, label %150, label %147

147:                                              ; preds = %142, %139, %121, %79
  %148 = phi i32 [ %146, %142 ], [ -110, %79 ], [ -110, %121 ], [ %141, %139 ]
  %149 = tail call i32 @i2c_recover_bus(ptr noundef %0) #7
  br label %150

150:                                              ; preds = %147, %142, %122
  %151 = phi i32 [ %148, %147 ], [ %124, %142 ], [ %124, %122 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %23, label %153

153:                                              ; preds = %150, %112, %87, %50, %23, %18, %14
  %154 = phi i32 [ -11, %18 ], [ -11, %14 ], [ -11, %112 ], [ -11, %50 ], [ -11, %87 ], [ %2, %23 ], [ %151, %150 ]
  ret i32 %154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_i2c_functionality(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_get_scl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_i2c_set_scl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_get_sda(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_i2c_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 3) #7, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %15 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %18 = mul i32 %14, 5
  %19 = udiv i32 %18, 9
  %20 = shl i32 %19, 16
  %21 = or i32 %20, %14
  %22 = load ptr, ptr %15, align 8
  %23 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %15, align 8
  %25 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 3) #7, !srcloc !10
  br label %26

26:                                               ; preds = %12, %11, %1
  %27 = phi i32 [ 0, %12 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %27
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2154087409}
!10 = !{i64 5387134}
!11 = !{i64 2154089125}
!12 = !{i64 5387552}
!13 = !{i64 2154086271}
!14 = !{i64 2154083809}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2154084867}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2154087889}
!19 = !{i64 2154088280}
!20 = !{i64 2154088828}
