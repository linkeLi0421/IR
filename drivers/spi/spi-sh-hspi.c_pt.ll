; ModuleID = '/llk/IR/drivers/spi/spi-sh-hspi.c_pt.bc'
source_filename = "../drivers/spi/spi-sh-hspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.hspi_priv = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_spi_sh_hspi__227_304_hspi_driver_init6 = internal global ptr @hspi_driver_init, section ".initcall6.init", align 4
@hspi_driver = internal global %struct.platform_driver { ptr @hspi_probe, ptr @hspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hspi_driver_exit = internal global ptr @hspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [47 x i8] c"spi_sh_hspi.description=SuperH HSPI bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [41 x i8] c"spi_sh_hspi.file=drivers/spi/spi-sh-hspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [27 x i8] c"spi_sh_hspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [72 x i8] c"spi_sh_hspi.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"spi_sh_hspi.alias=platform:sh-hspi\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"sh-hspi\00", align 1
@hspi_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,hspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"devm_spi_register_controller error.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_hspi_driver_exit, ptr @__initcall__kmod_spi_sh_hspi__227_304_hspi_driver_init6, ptr @hspi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hspi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hspi_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hspi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hspi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hspi_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %3, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  br label %46

6:                                                ; preds = %1
  %7 = tail call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 16, i1 noundef zeroext false) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @clk_get(ptr noundef %4, ptr noundef null) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  br label %44

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.hspi_priv, ptr %15, i32 0, i32 1
  store ptr %7, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hspi_priv, ptr %15, i32 0, i32 2
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hspi_priv, ptr %15, i32 0, i32 3
  store ptr %10, ptr %19, align 4
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 1, %20
  %24 = add i32 %23, %22
  %25 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %20, i32 noundef %24) #5
  store ptr %25, ptr %15, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %13
  tail call void @pm_runtime_enable(ptr noundef %4) #5
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 2
  store i16 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 5
  store i32 3, ptr %32, align 8
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 36
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 45
  store ptr @hspi_transfer_one_message, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 7
  store i32 128, ptr %38, align 8
  %39 = tail call i32 @devm_spi_register_controller(ptr noundef %4, ptr noundef nonnull %7) #5
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #5
  br label %42

42:                                               ; preds = %41, %13
  %43 = phi i32 [ %39, %41 ], [ -12, %13 ]
  tail call void @clk_put(ptr noundef %10) #5
  br label %44

44:                                               ; preds = %42, %12
  %45 = phi i32 [ -22, %12 ], [ %43, %42 ]
  tail call void @put_device(ptr noundef nonnull %7) #5
  br label %46

46:                                               ; preds = %44, %27, %6, %5
  %47 = phi i32 [ %45, %44 ], [ -22, %5 ], [ -12, %6 ], [ 0, %27 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hspi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #5
  %5 = getelementptr inbounds %struct.hspi_priv, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_put(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hspi_transfer_one_message(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 0, ptr %8, align 4
  br label %159

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hspi_priv, ptr %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.hspi_priv, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  br label %14

14:                                               ; preds = %143, %9
  %15 = phi ptr [ %5, %9 ], [ %144, %143 ]
  %16 = phi i32 [ 0, %9 ], [ %124, %143 ]
  %17 = phi i1 [ false, %9 ], [ %131, %143 ]
  %18 = getelementptr i8, ptr %15, i32 -84
  br i1 %17, label %65, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %15, i32 -24
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ 0, %19 ], [ %41, %22 ]
  %24 = phi i32 [ -1, %19 ], [ %40, %22 ]
  %25 = phi i32 [ 0, %19 ], [ %42, %22 ]
  %26 = load ptr, ptr %11, align 4
  %27 = tail call i32 @clk_get_rate(ptr noundef %26) #5
  %28 = and i32 %25, 32
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 4, i32 7
  %31 = lshr i32 %27, %30
  %32 = shl nuw nsw i32 %25, 1
  %33 = and i32 %32, 62
  %34 = add nuw nsw i32 %33, 2
  %35 = udiv i32 %31, %34
  %36 = load i32, ptr %21, align 4
  %37 = sub i32 %36, %35
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 false) #5
  %39 = icmp ult i32 %38, %24
  %40 = tail call i32 @llvm.umin.i32(i32 %38, i32 %24) #5
  %41 = select i1 %39, i32 %25, i32 %23
  %42 = add nuw nsw i32 %25, 1
  %43 = icmp eq i32 %42, 64
  br i1 %43, label %44, label %22

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.spi_device, ptr %20, i32 0, i32 7
  %46 = load i32, ptr %45, align 8
  %47 = shl i32 %46, 7
  %48 = and i32 %47, 128
  %49 = or i32 %48, %41
  %50 = shl i32 %46, 5
  %51 = and i32 %50, 64
  %52 = or i32 %49, %51
  %53 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #5, !srcloc !9
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #5, !srcloc !9
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 33) #5, !srcloc !9
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %61 = and i32 %60, -65
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #5, !srcloc !9
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #5
  br label %65

65:                                               ; preds = %44, %14
  %66 = getelementptr i8, ptr %15, i32 -40
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr i8, ptr %15, i32 -76
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %123, label %71

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %15, i32 -80
  br label %73

73:                                               ; preds = %117, %71
  %74 = phi i32 [ 0, %71 ], [ %118, %117 ]
  br label %75

75:                                               ; preds = %82, %73
  %76 = phi i32 [ %84, %82 ], [ 255, %73 ]
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr i8, ptr %77, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 2147480) #5
  %84 = add nsw i32 %76, -1
  %85 = icmp eq i32 %76, 0
  br i1 %85, label %121, label %75

86:                                               ; preds = %75
  %87 = load ptr, ptr %18, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %87, i32 %74
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i32 [ %92, %89 ], [ 0, %86 ]
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr i8, ptr %95, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !9
  br label %97

97:                                               ; preds = %104, %93
  %98 = phi i32 [ 255, %93 ], [ %106, %104 ]
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i8, ptr %99, i32 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 2147480) #5
  %106 = add nsw i32 %98, -1
  %107 = icmp eq i32 %98, 0
  br i1 %107, label %121, label %97

108:                                              ; preds = %97
  %109 = load ptr, ptr %4, align 4
  %110 = getelementptr i8, ptr %109, i32 16
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %112 = load ptr, ptr %72, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = trunc i32 %111 to i8
  %116 = getelementptr i8, ptr %112, i32 %74
  store i8 %115, ptr %116, align 1
  br label %117

117:                                              ; preds = %114, %108
  %118 = add nuw i32 %74, 1
  %119 = load i32, ptr %68, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %73, label %123

121:                                              ; preds = %104, %82
  %122 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.4) #6
  br label %123

123:                                              ; preds = %121, %117, %65
  %124 = phi i32 [ %16, %65 ], [ -110, %121 ], [ 0, %117 ]
  %125 = load i32, ptr %68, align 4
  %126 = load i32, ptr %13, align 4
  %127 = add i32 %126, %125
  store i32 %127, ptr %13, align 4
  %128 = getelementptr i8, ptr %15, i32 -38
  %129 = tail call i32 @spi_delay_exec(ptr noundef %128, ptr noundef %18) #5
  %130 = and i8 %67, 2
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %123
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748) #5
  %134 = load ptr, ptr %4, align 4
  %135 = getelementptr i8, ptr %134, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %137 = or i32 %136, 64
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr i8, ptr %138, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #5, !srcloc !9
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748) #5
  %141 = load ptr, ptr %15, align 4
  %142 = icmp eq ptr %141, %1
  br i1 %142, label %148, label %143

143:                                              ; preds = %145, %132
  %144 = phi ptr [ %141, %132 ], [ %146, %145 ]
  br label %14

145:                                              ; preds = %123
  %146 = load ptr, ptr %15, align 4
  %147 = icmp eq ptr %146, %1
  br i1 %147, label %150, label %143

148:                                              ; preds = %132
  %149 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 %124, ptr %149, align 4
  br label %159

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 %124, ptr %151, align 4
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748) #5
  %153 = load ptr, ptr %4, align 4
  %154 = getelementptr i8, ptr %153, i32 8
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %156 = or i32 %155, 64
  %157 = load ptr, ptr %4, align 4
  %158 = getelementptr i8, ptr %157, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #5, !srcloc !9
  br label %159

159:                                              ; preds = %150, %148, %7
  %160 = phi i32 [ 0, %7 ], [ %124, %150 ], [ %124, %148 ]
  tail call void @spi_finalize_current_message(ptr noundef %0) #5
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2151043096}
!9 = !{i64 3502003}
!10 = !{i64 3502421}
!11 = !{i64 2151041874}
