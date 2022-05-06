; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-uniphier-f.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-uniphier-f.c"
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
%struct.uniphier_fi2c_priv = type { %struct.completion, %struct.i2c_adapter, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_uniphier_f__247_641_uniphier_fi2c_drv_init6 = internal global ptr @uniphier_fi2c_drv_init, section ".initcall6.init", align 4
@uniphier_fi2c_drv = internal global %struct.platform_driver { ptr @uniphier_fi2c_probe, ptr @uniphier_fi2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_fi2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_fi2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_fi2c_drv_exit = internal global ptr @uniphier_fi2c_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [70 x i8] c"i2c_uniphier_f.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"i2c_uniphier_f.description=UniPhier FIFO-builtin I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [54 x i8] c"i2c_uniphier_f.file=drivers/i2c/busses/i2c-uniphier-f\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [27 x i8] c"i2c_uniphier_f.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"uniphier-fi2c\00", align 1
@uniphier_fi2c_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-fi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_fi2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @uniphier_fi2c_suspend, ptr @uniphier_fi2c_resume, ptr @uniphier_fi2c_suspend, ptr @uniphier_fi2c_resume, ptr @uniphier_fi2c_suspend, ptr @uniphier_fi2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid clock-frequency %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"input clock rate should not be zero\0A\00", align 1
@uniphier_fi2c_algo = internal constant %struct.i2c_algorithm { ptr @uniphier_fi2c_master_xfer, ptr null, ptr null, ptr null, ptr @uniphier_fi2c_functionality, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"UniPhier FI2C\00", align 1
@uniphier_fi2c_bus_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @uniphier_fi2c_get_scl, ptr @uniphier_fi2c_set_scl, ptr @uniphier_fi2c_get_sda, ptr null, ptr null, ptr null, ptr @uniphier_fi2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"transaction timeout.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"stop condition was not completed.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_uniphier_fi2c_drv_exit, ptr @__initcall__kmod_i2c_uniphier_f__247_641_uniphier_fi2c_drv_init6, ptr @uniphier_fi2c_drv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_fi2c_drv, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_fi2c_drv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_fi2c_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 712, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %8 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 2
  store ptr %7, ptr %8, align 8
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %69

12:                                               ; preds = %6
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %69, label %15

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
  br label %69

26:                                               ; preds = %21, %20
  %27 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #7
  %28 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %31 = ptrtoint ptr %27 to i32
  br label %69

32:                                               ; preds = %26
  %33 = call i32 @clk_prepare(ptr noundef %27) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = call i32 @clk_enable(ptr noundef %27) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call void @clk_unprepare(ptr noundef %27) #7
  br label %69

39:                                               ; preds = %35
  %40 = call i32 @clk_get_rate(ptr noundef %27) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %66

43:                                               ; preds = %39
  %44 = load i32, ptr %2, align 4
  %45 = udiv i32 %40, %44
  %46 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 10
  store i32 %45, ptr %46, align 8
  store i32 0, ptr %4, align 4
  %47 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #7
  %48 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 11
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1
  store ptr null, ptr %49, align 8
  %50 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1, i32 2
  store ptr @uniphier_fi2c_algo, ptr %50, align 8
  %51 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1, i32 9, i32 1
  store ptr %3, ptr %51, align 4
  %52 = load ptr, ptr %16, align 8
  %53 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1, i32 9, i32 25
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1, i32 12
  %55 = call i32 @strlcpy(ptr noundef %54, ptr noundef nonnull @.str.5, i32 noundef 48) #7
  %56 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1, i32 16
  store ptr @uniphier_fi2c_bus_recovery_info, ptr %56, align 4
  %57 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 1, i32 9, i32 8
  store ptr %4, ptr %57, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %58, align 8
  call fastcc void @uniphier_fi2c_hw_init(ptr noundef nonnull %4)
  %59 = load ptr, ptr %0, align 8
  %60 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %13, ptr noundef nonnull @uniphier_fi2c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %59, ptr noundef nonnull %4) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %13) #8
  br label %66

63:                                               ; preds = %43
  %64 = call i32 @i2c_add_adapter(ptr noundef %49) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63, %62, %42
  %67 = phi i32 [ %64, %63 ], [ -22, %42 ], [ %60, %62 ]
  %68 = load ptr, ptr %28, align 4
  call void @clk_disable(ptr noundef %68) #7
  call void @clk_unprepare(ptr noundef %68) #7
  br label %69

69:                                               ; preds = %66, %63, %38, %32, %30, %25, %12, %10, %1
  %70 = phi i32 [ %11, %10 ], [ -22, %25 ], [ %31, %30 ], [ -12, %1 ], [ %13, %12 ], [ %67, %66 ], [ 0, %63 ], [ %36, %38 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 3
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
define internal fastcc void @uniphier_fi2c_hw_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %7 = or i32 %6, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %3) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %13 = mul i32 %3, 5
  %14 = udiv i32 %13, 9
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %17 = lshr i32 %3, 1
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %20 = lshr i32 %3, 4
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 3) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %8 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, %7
  %11 = and i32 %10, 192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %192

13:                                               ; preds = %2
  %14 = and i32 %10, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 7
  store i32 -11, ptr %17, align 4
  br label %192

18:                                               ; preds = %13
  %19 = and i32 %10, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21, !prof !20

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 7
  store i32 -6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %185, label %27

27:                                               ; preds = %21
  tail call fastcc void @uniphier_fi2c_stop(ptr noundef %1)
  %28 = load i32, ptr %23, align 8
  %29 = or i32 %28, 16
  store i32 %29, ptr %23, align 8
  br label %192

30:                                               ; preds = %18
  %31 = and i32 %10, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %117, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %178, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 1
  store ptr %40, ptr %38, align 4
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i32
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !12
  %45 = load i32, ptr %34, align 8
  %46 = add i32 %45, -1
  store i32 %46, ptr %34, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %196, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr i8, ptr %49, i32 1
  store ptr %50, ptr %38, align 4
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i32
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !12
  %55 = load i32, ptr %34, align 8
  %56 = add i32 %55, -1
  store i32 %56, ptr %34, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %196, label %58

58:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %59 = load ptr, ptr %38, align 4
  %60 = getelementptr i8, ptr %59, i32 1
  store ptr %60, ptr %38, align 4
  %61 = load i8, ptr %59, align 1
  %62 = zext i8 %61 to i32
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #7, !srcloc !12
  %65 = load i32, ptr %34, align 8
  %66 = add i32 %65, -1
  store i32 %66, ptr %34, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %196, label %68

68:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %69 = load ptr, ptr %38, align 4
  %70 = getelementptr i8, ptr %69, i32 1
  store ptr %70, ptr %38, align 4
  %71 = load i8, ptr %69, align 1
  %72 = zext i8 %71 to i32
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !12
  %75 = load i32, ptr %34, align 8
  %76 = add i32 %75, -1
  store i32 %76, ptr %34, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %196, label %78

78:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %79 = load ptr, ptr %38, align 4
  %80 = getelementptr i8, ptr %79, i32 1
  store ptr %80, ptr %38, align 4
  %81 = load i8, ptr %79, align 1
  %82 = zext i8 %81 to i32
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr i8, ptr %83, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #7, !srcloc !12
  %85 = load i32, ptr %34, align 8
  %86 = add i32 %85, -1
  store i32 %86, ptr %34, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %196, label %88

88:                                               ; preds = %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %38, align 4
  %90 = getelementptr i8, ptr %89, i32 1
  store ptr %90, ptr %38, align 4
  %91 = load i8, ptr %89, align 1
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr %4, align 8
  %94 = getelementptr i8, ptr %93, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #7, !srcloc !12
  %95 = load i32, ptr %34, align 8
  %96 = add i32 %95, -1
  store i32 %96, ptr %34, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %196, label %98

98:                                               ; preds = %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %99 = load ptr, ptr %38, align 4
  %100 = getelementptr i8, ptr %99, i32 1
  store ptr %100, ptr %38, align 4
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i32
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #7, !srcloc !12
  %105 = load i32, ptr %34, align 8
  %106 = add i32 %105, -1
  store i32 %106, ptr %34, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %196, label %108

108:                                              ; preds = %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %109 = load ptr, ptr %38, align 4
  %110 = getelementptr i8, ptr %109, i32 1
  store ptr %110, ptr %38, align 4
  %111 = load i8, ptr %109, align 1
  %112 = zext i8 %111 to i32
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr i8, ptr %113, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #7, !srcloc !12
  %115 = load i32, ptr %34, align 8
  %116 = add i32 %115, -1
  store i32 %116, ptr %34, align 8
  br label %196

117:                                              ; preds = %30
  %118 = and i32 %10, 272
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %175, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 4
  %122 = load i32, ptr %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 8
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 8
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 8, i32 1
  %130 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 5
  br label %131

131:                                              ; preds = %131, %124
  %132 = phi i32 [ %129, %124 ], [ %133, %131 ]
  %133 = add nsw i32 %132, -1
  %134 = load ptr, ptr %4, align 8
  %135 = getelementptr i8, ptr %134, i32 4
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %137 = trunc i32 %136 to i8
  %138 = load ptr, ptr %130, align 4
  %139 = getelementptr i8, ptr %138, i32 1
  store ptr %139, ptr %130, align 4
  store i8 %137, ptr %138, align 1
  %140 = load i32, ptr %121, align 8
  %141 = add i32 %140, -1
  store i32 %141, ptr %121, align 8
  %142 = icmp eq i32 %141, 0
  %143 = icmp ult i32 %132, 2
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %145, label %131

145:                                              ; preds = %131, %120
  %146 = phi i32 [ 0, %120 ], [ %141, %131 ]
  %147 = icmp ne i32 %146, 0
  %148 = and i32 %10, 16
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %151, label %178

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 8
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %196, label %156, !prof !20

156:                                              ; preds = %151
  %157 = icmp ult i32 %146, 9
  %158 = and i32 %153, 8
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = load i32, ptr %8, align 8
  %163 = or i32 %162, 16
  store i32 %163, ptr %8, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %164 = load i32, ptr %8, align 8
  %165 = load ptr, ptr %4, align 8
  %166 = getelementptr i8, ptr %165, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #7, !srcloc !12
  %167 = load i32, ptr %152, align 8
  %168 = or i32 %167, 8
  store i32 %168, ptr %152, align 8
  %169 = load i32, ptr %121, align 8
  br label %170

170:                                              ; preds = %161, %156
  %171 = phi i32 [ %169, %161 ], [ %146, %156 ]
  %172 = icmp ult i32 %171, 2
  br i1 %172, label %173, label %196

173:                                              ; preds = %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %174 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 9) #7, !srcloc !12
  br label %196

175:                                              ; preds = %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  %176 = load i16, ptr %3, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %201

178:                                              ; preds = %145, %33
  %179 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 8
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %178
  %184 = load i32, ptr %8, align 8
  br label %185

185:                                              ; preds = %183, %21
  %186 = phi i32 [ %184, %183 ], [ %9, %21 ]
  %187 = or i32 %186, 192
  store i32 %187, ptr %8, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %188 = load i32, ptr %8, align 8
  %189 = load ptr, ptr %4, align 8
  %190 = getelementptr i8, ptr %189, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %191 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 10) #7, !srcloc !12
  br label %196

192:                                              ; preds = %178, %27, %16, %2
  store i32 0, ptr %8, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %193 = load i32, ptr %8, align 8
  %194 = load ptr, ptr %4, align 8
  %195 = getelementptr i8, ptr %194, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #7, !srcloc !12
  tail call void @complete(ptr noundef %1) #7
  br label %196

196:                                              ; preds = %192, %185, %173, %170, %151, %108, %98, %88, %78, %68, %58, %48, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %197 = load ptr, ptr %4, align 8
  %198 = getelementptr i8, ptr %197, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %10) #7, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  %199 = load i16, ptr %3, align 4
  %200 = add i16 %199, 1
  store i16 %200, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %201

201:                                              ; preds = %196, %175
  %202 = phi i32 [ 1, %196 ], [ 0, %175 ]
  ret i32 %202
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
define internal i32 @uniphier_fi2c_master_xfer(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr %struct.i2c_msg, ptr %1, i32 %2
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %6, i32 0, i32 9
  br i1 %12, label %23, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %13, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %13, align 4
  %17 = icmp ugt i32 %15, 3
  br i1 %17, label %18, label %222

18:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #7, !srcloc !12
  %21 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %6, i32 0, i32 1
  %22 = tail call i32 @i2c_recover_bus(ptr noundef %21) #7
  store i32 0, ptr %13, align 4
  br label %222

23:                                               ; preds = %3
  store i32 0, ptr %13, align 4
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  br label %25

25:                                               ; preds = %218, %23
  %26 = phi ptr [ %1, %23 ], [ %30, %218 ]
  %27 = phi i1 [ false, %23 ], [ %221, %218 ]
  %28 = icmp ult ptr %26, %4
  br i1 %28, label %29, label %222

29:                                               ; preds = %25
  %30 = getelementptr %struct.i2c_msg, ptr %26, i32 1
  %31 = icmp eq ptr %30, %4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = icmp slt i16 %33, 0
  %35 = select i1 %31, i1 true, i1 %34
  %36 = load ptr, ptr %5, align 8
  %37 = and i16 %33, 1
  %38 = icmp eq i16 %37, 0
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 2
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 4
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 6
  store i32 6, ptr %46, align 8
  %47 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 7
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 8
  %49 = select i1 %35, i32 2, i32 0
  store i32 %49, ptr %48, align 8
  store i32 0, ptr %36, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %50 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr i8, ptr %51, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 -1) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %53 = load ptr, ptr %50, align 8
  %54 = getelementptr i8, ptr %53, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 6) #7, !srcloc !12
  %55 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 11
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #7
  %57 = load i16, ptr %26, align 4
  br i1 %38, label %84, label %58

58:                                               ; preds = %29
  %59 = load i32, ptr %48, align 8
  %60 = or i32 %59, 1
  store i32 %60, ptr %48, align 8
  %61 = load i32, ptr %42, align 8
  %62 = icmp ult i32 %61, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %62, label %63, label %67, !prof !20

63:                                               ; preds = %58
  %64 = load i32, ptr %42, align 8
  %65 = load ptr, ptr %50, align 8
  %66 = getelementptr i8, ptr %65, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !12
  br label %72

67:                                               ; preds = %58
  %68 = load ptr, ptr %50, align 8
  %69 = getelementptr i8, ptr %68, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #7, !srcloc !12
  %70 = load i32, ptr %48, align 8
  %71 = or i32 %70, 4
  store i32 %71, ptr %48, align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = phi i32 [ 256, %67 ], [ 272, %63 ]
  %74 = load i32, ptr %46, align 8
  %75 = or i32 %74, %73
  store i32 %75, ptr %46, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %76 = load i32, ptr %46, align 8
  %77 = load ptr, ptr %50, align 8
  %78 = getelementptr i8, ptr %77, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %79 = zext i16 %57 to i32
  %80 = shl nuw nsw i32 %79, 1
  %81 = or i32 %80, 257
  %82 = load ptr, ptr %50, align 8
  %83 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #7, !srcloc !12
  br i1 %27, label %171, label %169

84:                                               ; preds = %29
  %85 = load i32, ptr %46, align 8
  %86 = or i32 %85, 512
  store i32 %86, ptr %46, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %87 = load i32, ptr %46, align 8
  %88 = load ptr, ptr %50, align 8
  %89 = getelementptr i8, ptr %88, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %90 = load ptr, ptr %50, align 8
  %91 = getelementptr i8, ptr %90, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 0) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %92 = zext i16 %57 to i32
  %93 = shl nuw nsw i32 %92, 1
  %94 = or i32 %93, 256
  %95 = load ptr, ptr %50, align 8
  %96 = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #7, !srcloc !12
  br i1 %27, label %171, label %97

97:                                               ; preds = %84
  %98 = load i32, ptr %42, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %169, label %100

100:                                              ; preds = %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %101 = load ptr, ptr %45, align 4
  %102 = getelementptr i8, ptr %101, i32 1
  store ptr %102, ptr %45, align 4
  %103 = load i8, ptr %101, align 1
  %104 = zext i8 %103 to i32
  %105 = load ptr, ptr %50, align 8
  %106 = getelementptr i8, ptr %105, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #7, !srcloc !12
  %107 = load i32, ptr %42, align 8
  %108 = add i32 %107, -1
  store i32 %108, ptr %42, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %169, label %110

110:                                              ; preds = %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %111 = load ptr, ptr %45, align 4
  %112 = getelementptr i8, ptr %111, i32 1
  store ptr %112, ptr %45, align 4
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i32
  %115 = load ptr, ptr %50, align 8
  %116 = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #7, !srcloc !12
  %117 = load i32, ptr %42, align 8
  %118 = add i32 %117, -1
  store i32 %118, ptr %42, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %169, label %120

120:                                              ; preds = %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %121 = load ptr, ptr %45, align 4
  %122 = getelementptr i8, ptr %121, i32 1
  store ptr %122, ptr %45, align 4
  %123 = load i8, ptr %121, align 1
  %124 = zext i8 %123 to i32
  %125 = load ptr, ptr %50, align 8
  %126 = getelementptr i8, ptr %125, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #7, !srcloc !12
  %127 = load i32, ptr %42, align 8
  %128 = add i32 %127, -1
  store i32 %128, ptr %42, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %169, label %130

130:                                              ; preds = %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %131 = load ptr, ptr %45, align 4
  %132 = getelementptr i8, ptr %131, i32 1
  store ptr %132, ptr %45, align 4
  %133 = load i8, ptr %131, align 1
  %134 = zext i8 %133 to i32
  %135 = load ptr, ptr %50, align 8
  %136 = getelementptr i8, ptr %135, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #7, !srcloc !12
  %137 = load i32, ptr %42, align 8
  %138 = add i32 %137, -1
  store i32 %138, ptr %42, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %169, label %140

140:                                              ; preds = %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %141 = load ptr, ptr %45, align 4
  %142 = getelementptr i8, ptr %141, i32 1
  store ptr %142, ptr %45, align 4
  %143 = load i8, ptr %141, align 1
  %144 = zext i8 %143 to i32
  %145 = load ptr, ptr %50, align 8
  %146 = getelementptr i8, ptr %145, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #7, !srcloc !12
  %147 = load i32, ptr %42, align 8
  %148 = add i32 %147, -1
  store i32 %148, ptr %42, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %140
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %151 = load ptr, ptr %45, align 4
  %152 = getelementptr i8, ptr %151, i32 1
  store ptr %152, ptr %45, align 4
  %153 = load i8, ptr %151, align 1
  %154 = zext i8 %153 to i32
  %155 = load ptr, ptr %50, align 8
  %156 = getelementptr i8, ptr %155, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #7, !srcloc !12
  %157 = load i32, ptr %42, align 8
  %158 = add i32 %157, -1
  store i32 %158, ptr %42, align 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %161 = load ptr, ptr %45, align 4
  %162 = getelementptr i8, ptr %161, i32 1
  store ptr %162, ptr %45, align 4
  %163 = load i8, ptr %161, align 1
  %164 = zext i8 %163 to i32
  %165 = load ptr, ptr %50, align 8
  %166 = getelementptr i8, ptr %165, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #7, !srcloc !12
  %167 = load i32, ptr %42, align 8
  %168 = add i32 %167, -1
  store i32 %168, ptr %42, align 8
  br label %169

169:                                              ; preds = %160, %150, %140, %130, %120, %110, %100, %97, %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %170 = load ptr, ptr %50, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 12) #7, !srcloc !12
  br label %171

171:                                              ; preds = %169, %84, %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %56) #7
  %172 = load i32, ptr %24, align 4
  %173 = tail call i32 @wait_for_completion_timeout(ptr noundef %36, i32 noundef %172) #7
  %174 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #7
  store i32 0, ptr %46, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %175 = load i32, ptr %46, align 8
  %176 = load ptr, ptr %50, align 8
  %177 = getelementptr i8, ptr %176, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %174) #7
  %178 = icmp eq i32 %173, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %181 = load ptr, ptr %50, align 8
  %182 = getelementptr i8, ptr %181, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 1) #7, !srcloc !12
  %183 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 1
  %184 = tail call i32 @i2c_recover_bus(ptr noundef %183) #7
  br label %222

185:                                              ; preds = %171
  %186 = load i32, ptr %48, align 8
  %187 = and i32 %186, 16
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %218, label %189, !prof !20

189:                                              ; preds = %185
  %190 = tail call i64 @ktime_get() #7
  %191 = add i64 %190, 20000
  %192 = load ptr, ptr %50, align 8
  %193 = getelementptr i8, ptr %192, i32 44
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %195 = and i32 %194, 2304
  %196 = icmp eq i32 %195, 2048
  br i1 %196, label %218, label %197

197:                                              ; preds = %200, %189
  %198 = tail call i64 @ktime_get() #7
  %199 = icmp sgt i64 %198, %191
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %201 = load ptr, ptr %50, align 8
  %202 = getelementptr i8, ptr %201, i32 44
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %204 = and i32 %203, 2304
  %205 = icmp eq i32 %204, 2048
  br i1 %205, label %218, label %197

206:                                              ; preds = %197
  %207 = load ptr, ptr %50, align 8
  %208 = getelementptr i8, ptr %207, i32 44
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !38
  %210 = and i32 %209, 2304
  %211 = icmp eq i32 %210, 2048
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %214 = load ptr, ptr %50, align 8
  %215 = getelementptr i8, ptr %214, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 1) #7, !srcloc !12
  %216 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %36, i32 0, i32 1
  %217 = tail call i32 @i2c_recover_bus(ptr noundef %216) #7
  br label %222

218:                                              ; preds = %206, %200, %189, %185
  %219 = load i32, ptr %47, align 4
  %220 = icmp eq i32 %219, 0
  %221 = xor i1 %35, true
  br i1 %220, label %25, label %222

222:                                              ; preds = %218, %212, %179, %25, %18, %14
  %223 = phi i32 [ -11, %18 ], [ -11, %14 ], [ -110, %179 ], [ -110, %212 ], [ %2, %25 ], [ %219, %218 ]
  ret i32 %223
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_fi2c_functionality(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_get_scl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_fi2c_set_scl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_get_sda(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_fi2c_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 3) #7, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uniphier_fi2c_stop(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 192
  store i32 %4, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %5 = load i32, ptr %2, align 8
  %6 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 10) #7, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %13

12:                                               ; preds = %8
  tail call fastcc void @uniphier_fi2c_hw_init(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %11, %1
  %14 = phi i32 [ 0, %12 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %14
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
!9 = !{i64 5394761}
!10 = !{i64 2154123591}
!11 = !{i64 2154123866}
!12 = !{i64 5394343}
!13 = !{i64 2154114097}
!14 = !{i64 2154124191}
!15 = !{i64 2154124524}
!16 = !{i64 2154124869}
!17 = !{i64 2154125207}
!18 = !{i64 2154114688}
!19 = !{i64 2154108941}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2154106452}
!22 = !{i64 2154107034}
!23 = !{i64 2154107242}
!24 = !{i64 2154110758}
!25 = !{i64 2148895446}
!26 = !{i64 2148891270}
!27 = !{i64 2148891345, i64 2148891372, i64 2148891419, i64 2148891441, i64 2148891469, i64 2148891489}
!28 = !{i64 2148918449}
!29 = !{i64 2154108353}
!30 = !{i64 2154107598}
!31 = !{i64 2154121091}
!32 = !{i64 2154115649}
!33 = !{i64 2154113534}
!34 = !{i64 2154111353}
!35 = !{i64 2154111792}
!36 = !{i64 2154116654}
!37 = !{i64 2154119782}
!38 = !{i64 2154120125}
!39 = !{i64 2154122222}
!40 = !{i64 2154122613}
!41 = !{i64 2154123161}
