; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sun9i-mmc.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun9i-mmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sun9i_mmc_clk_data = type { %struct.spinlock, ptr, ptr, ptr, %struct.clk_onecell_data, %struct.reset_controller_dev }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_clk_sun9i_mmc__166_203_sun9i_a80_mmc_config_clk_driver_init6 = internal global ptr @sun9i_a80_mmc_config_clk_driver_init, section ".initcall6.init", align 4
@sun9i_a80_mmc_config_clk_driver = internal global %struct.platform_driver { ptr @sun9i_a80_mmc_config_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun9i_a80_mmc_config_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [25 x i8] c"sun9i-a80-mmc-config-clk\00", align 1
@sun9i_a80_mmc_config_clk_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mmc-config-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not get reset control\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Reset deassert err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@sun9i_mmc_reset_ops = internal constant %struct.reset_control_ops { ptr @sun9i_mmc_reset_reset, ptr @sun9i_mmc_reset_assert, ptr @sun9i_mmc_reset_deassert, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_sun9i_mmc__166_203_sun9i_a80_mmc_config_clk_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_a80_mmc_config_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_mmc_config_clk_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_mmc_config_clk_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %2, align 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 68, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %97, label %9

9:                                                ; preds = %1
  store i32 0, ptr %7, align 4
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %11 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %12, 4
  %15 = sub i32 %14, %13
  %16 = lshr i32 %15, 2
  %17 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %10) #6
  %18 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = ptrtoint ptr %17 to i32
  br label %97

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 4
  %24 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 4, i32 1
  store i32 %16, ptr %24, align 4
  %25 = and i32 %15, -4
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %25, i32 noundef 3520) #6
  store ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %97, label %28

28:                                               ; preds = %22
  %29 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %30 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %33 = ptrtoint ptr %29 to i32
  br label %97

34:                                               ; preds = %28
  %35 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %36 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %39 = ptrtoint ptr %35 to i32
  br label %97

40:                                               ; preds = %34
  %41 = tail call i32 @reset_control_deassert(ptr noundef %35) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %41) #7
  br label %97

44:                                               ; preds = %40
  %45 = tail call ptr @__clk_get_name(ptr noundef %29) #6
  %46 = icmp ult i32 %15, 4
  br i1 %46, label %68, label %47

47:                                               ; preds = %44
  %48 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  br label %52

49:                                               ; preds = %52
  %50 = add nuw nsw i32 %53, 1
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %68, label %52

52:                                               ; preds = %49, %47
  %53 = phi i32 [ %50, %49 ], [ 0, %47 ]
  %54 = call i32 @of_property_read_string_helper(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %53) #6
  %55 = load ptr, ptr %2, align 4
  %56 = load ptr, ptr %18, align 4
  %57 = shl i32 %53, 2
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = call ptr @clk_register_gate(ptr noundef %3, ptr noundef %55, ptr noundef %45, i32 noundef 0, ptr noundef %58, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef nonnull %7) #6
  %60 = load ptr, ptr %23, align 4
  %61 = getelementptr ptr, ptr %60, i32 %53
  store ptr %59, ptr %61, align 4
  %62 = load ptr, ptr %23, align 4
  %63 = getelementptr ptr, ptr %62, i32 %53
  %64 = load ptr, ptr %63, align 4
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %49

66:                                               ; preds = %52
  %67 = ptrtoint ptr %64 to i32
  br label %93

68:                                               ; preds = %49, %44
  %69 = call i32 @of_clk_add_provider(ptr noundef %5, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %23) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 5
  %73 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 5, i32 1
  store ptr null, ptr %73, align 4
  %74 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 5, i32 8
  store i32 %16, ptr %74, align 4
  store ptr @sun9i_mmc_reset_ops, ptr %72, align 4
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct.sun9i_mmc_clk_data, ptr %7, i32 0, i32 5, i32 5
  store ptr %75, ptr %76, align 4
  %77 = call i32 @reset_controller_register(ptr noundef %72) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %80, align 8
  br label %97

81:                                               ; preds = %71
  call void @of_clk_del_provider(ptr noundef %5) #6
  br label %82

82:                                               ; preds = %81, %68
  %83 = phi i32 [ %69, %68 ], [ %77, %81 ]
  br i1 %46, label %93, label %84

84:                                               ; preds = %82
  %85 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i32 [ %91, %86 ], [ 0, %84 ]
  %88 = load ptr, ptr %23, align 4
  %89 = getelementptr ptr, ptr %88, i32 %87
  %90 = load ptr, ptr %89, align 4
  call void @clk_unregister(ptr noundef %90) #6
  %91 = add nuw nsw i32 %87, 1
  %92 = icmp eq i32 %91, %85
  br i1 %92, label %93, label %86

93:                                               ; preds = %86, %82, %66
  %94 = phi i32 [ %67, %66 ], [ %83, %82 ], [ %83, %86 ]
  %95 = load ptr, ptr %36, align 4
  %96 = call i32 @reset_control_assert(ptr noundef %95) #6
  br label %97

97:                                               ; preds = %93, %79, %43, %38, %32, %22, %20, %1
  %98 = phi i32 [ %21, %20 ], [ %33, %32 ], [ %39, %38 ], [ %41, %43 ], [ %94, %93 ], [ 0, %79 ], [ -12, %1 ], [ -12, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_mmc_reset_reset(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @sun9i_mmc_reset_assert(ptr noundef %0, i32 noundef %1)
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %5 = tail call i32 @sun9i_mmc_reset_deassert(ptr noundef %0, i32 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_mmc_reset_assert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call i32 @clk_enable(ptr noundef %6) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %13

13:                                               ; preds = %12, %9, %2
  %14 = shl i32 %1, 2
  %15 = getelementptr i8, ptr %4, i32 %14
  %16 = getelementptr i8, ptr %0, i32 -24
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #6
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %19 = and i32 %18, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %19) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #6
  %20 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_mmc_reset_deassert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call i32 @clk_enable(ptr noundef %6) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %13

13:                                               ; preds = %12, %9, %2
  %14 = shl i32 %1, 2
  %15 = getelementptr i8, ptr %4, i32 %14
  %16 = getelementptr i8, ptr %0, i32 -24
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #6
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %19 = or i32 %18, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %19) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #6
  %20 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3399099}
!9 = !{i64 2151591681}
!10 = !{i64 2151591964}
!11 = !{i64 3398681}
!12 = !{i64 2151594041}
!13 = !{i64 2151594322}
