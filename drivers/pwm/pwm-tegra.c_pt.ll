; ModuleID = '/llk/IR/drivers/pwm/pwm-tegra.c_pt.bc'
source_filename = "../drivers/pwm/pwm-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_pwm_soc = type { i32, i32 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_tegra__207_406_tegra_pwm_driver_init6 = internal global ptr @tegra_pwm_driver_init, section ".initcall6.init", align 4
@tegra_pwm_driver = internal global %struct.platform_driver { ptr @tegra_pwm_probe, ptr @tegra_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_pwm_driver_exit = internal global ptr @tegra_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file208 = internal constant [37 x i8] c"pwm_tegra.file=drivers/pwm/pwm-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [22 x i8] c"pwm_tegra.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author210 = internal constant [52 x i8] c"pwm_tegra.author=Sandipan Patra <spatra@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [50 x i8] c"pwm_tegra.description=Tegra PWM controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias212 = internal constant [35 x i8] c"pwm_tegra.alias=platform:tegra-pwm\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-pwm\00", align 1
@tegra_pwm_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_pwm_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_pwm_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_pwm_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_pwm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pwm_runtime_suspend, ptr @tegra_pwm_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set max frequency: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Reset control is not found: %d\0A\00", align 1
@tegra_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pwm_config, ptr null, ptr @tegra_pwm_enable, ptr @tegra_pwm_disable }, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@tegra20_pwm_soc = internal constant %struct.tegra_pwm_soc { i32 4, i32 48000000 }, align 4
@tegra186_pwm_soc = internal constant %struct.tegra_pwm_soc { i32 1, i32 102000000 }, align 4
@tegra194_pwm_soc = internal constant %struct.tegra_pwm_soc { i32 1, i32 408000000 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__exitcall_tegra_pwm_driver_exit, ptr @__initcall__kmod_pwm_tegra__207_406_tegra_pwm_driver_init6, ptr @tegra_pwm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_pwm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_pwm_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_pwm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pwm_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %77, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 7
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 6
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %10 to i32
  br label %77

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %16, align 8
  %17 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #5
  %18 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i32
  br label %77

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #5
  store i8 1, ptr %2, align 1
  %23 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %3, ptr noundef nonnull %2) #5
  %24 = icmp eq i32 %23, -19
  %25 = select i1 %24, i32 0, i32 %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %77

27:                                               ; preds = %22
  call void @pm_runtime_enable(ptr noundef %3) #5
  %28 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #5, !srcloc !9
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 0, i32 -1, ptr elementtype(i32) %31) #5, !srcloc !10
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %30
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %77

36:                                               ; preds = %27
  %37 = load ptr, ptr %9, align 4
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr inbounds %struct.tegra_pwm_soc, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @dev_pm_opp_set_rate(ptr noundef %37, i32 noundef %40) #5
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %41) #6
  br label %73

44:                                               ; preds = %36
  %45 = load ptr, ptr %18, align 4
  %46 = call i32 @clk_get_rate(ptr noundef %45) #5
  %47 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.tegra_pwm_soc, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 8
  %52 = udiv i32 1000000000, %51
  %53 = add nuw nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %56 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %4, i32 0, i32 3
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = ptrtoint ptr %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %59) #6
  br label %73

60:                                               ; preds = %44
  %61 = call i32 @reset_control_deassert(ptr noundef %55) #5
  store ptr %3, ptr %4, align 4
  %62 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 1
  store ptr @tegra_pwm_ops, ptr %62, align 4
  %63 = load ptr, ptr %8, align 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = call i32 @pwmchip_add(ptr noundef nonnull %4) #5
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %66) #6
  %69 = load ptr, ptr %56, align 4
  %70 = call i32 @reset_control_assert(ptr noundef %69) #5
  br label %73

71:                                               ; preds = %60
  %72 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #5
  br label %77

73:                                               ; preds = %68, %58, %43
  %74 = phi i32 [ %41, %43 ], [ %59, %58 ], [ %66, %68 ]
  %75 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 4) #5
  %76 = call i32 @pm_runtime_force_suspend(ptr noundef %3) #5
  br label %77

77:                                               ; preds = %73, %71, %35, %30, %22, %20, %13, %1
  %78 = phi i32 [ %14, %13 ], [ %21, %20 ], [ %74, %73 ], [ 0, %71 ], [ -12, %1 ], [ %25, %22 ], [ %28, %30 ], [ %28, %35 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pwm_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call i32 @pm_runtime_force_suspend(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pwm_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = sext i32 %2 to i64
  %6 = shl nsw i64 %5, 8
  %7 = sdiv i32 %3, 2
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %6, %8
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %11, label %14, !prof !12

11:                                               ; preds = %4
  %12 = trunc i64 %9 to i32
  %13 = udiv i32 %12, %3
  br label %18

14:                                               ; preds = %4
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %9) #7, !srcloc !13
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  %20 = shl i32 %19, 16
  %21 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, %3
  br i1 %23, label %101, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  br label %44

32:                                               ; preds = %24
  %33 = sdiv i32 1000000000, %3
  %34 = shl i32 %33, 8
  %35 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %36, i32 noundef %34) #5
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %101, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @clk_get_rate(ptr noundef %41) #5
  %43 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %29
  %45 = phi i32 [ %31, %29 ], [ %42, %39 ]
  %46 = lshr i32 %45, 8
  %47 = add nsw i64 %8, 100000000000
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %47) #7, !srcloc !13
  %49 = extractvalue { i64, i64 } %48, 1
  %50 = mul nuw nsw i32 %46, 100
  %51 = zext i32 %50 to i64
  %52 = lshr i64 %49, 1
  %53 = add nuw i64 %52, %51
  %54 = trunc i64 %49 to i32
  %55 = icmp ult i64 %53, 4294967296
  br i1 %55, label %56, label %59, !prof !12

56:                                               ; preds = %44
  %57 = trunc i64 %53 to i32
  %58 = udiv i32 %57, %54
  br label %63

59:                                               ; preds = %44
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %53) #7, !srcloc !13
  %61 = extractvalue { i64, i64 } %60, 1
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %62, %59 ]
  %65 = icmp eq i32 %64, 0
  %66 = add i32 %64, -1
  %67 = select i1 %65, i32 0, i32 %66
  %68 = icmp ult i32 %67, 8192
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  %70 = or i32 %67, %20
  %71 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @__pm_runtime_resume(ptr noundef %76, i32 noundef 4) #5
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #5, !srcloc !9
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 0, i32 -1, ptr elementtype(i32) %80) #5, !srcloc !10
  %82 = extractvalue { i32, i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %101

85:                                               ; preds = %69
  %86 = or i32 %70, -2147483648
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i32 [ %86, %85 ], [ %70, %74 ]
  %89 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %91 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = shl i32 %90, 4
  %94 = getelementptr i8, ptr %92, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %88) #5, !srcloc !15
  %95 = load i8, ptr %71, align 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @__pm_runtime_idle(ptr noundef %99, i32 noundef 5) #5
  br label %101

101:                                              ; preds = %97, %87, %84, %79, %63, %32, %18
  %102 = phi i32 [ -22, %18 ], [ -22, %32 ], [ -22, %63 ], [ 0, %97 ], [ 0, %87 ], [ %77, %79 ], [ %77, %84 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pwm_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #5, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #5, !srcloc !10
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = shl i32 %15, 4
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %21 = or i32 %20, -2147483648
  %22 = load i32, ptr %14, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %16, align 4
  %24 = shl i32 %22, 4
  %25 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #5, !srcloc !15
  br label %26

26:                                               ; preds = %13, %12, %7
  %27 = phi i32 [ 0, %13 ], [ %5, %7 ], [ %5, %12 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pwm_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %4, 4
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %10 = and i32 %9, 2147483647
  %11 = load i32, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %5, align 4
  %13 = shl i32 %11, 4
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #5, !srcloc !15
  %15 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pwm_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = tail call i32 @clk_enable(ptr noundef %9) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %16

16:                                               ; preds = %15, %12, %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pwm_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_pwm_chip, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = tail call i32 @clk_enable(ptr noundef %8) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #5
  br label %15

15:                                               ; preds = %14, %6
  %16 = phi i32 [ %12, %14 ], [ %9, %6 ]
  %17 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #5
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = phi i32 [ %16, %15 ], [ %4, %1 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 2147950955}
!9 = !{i64 449265, i64 2147939236, i64 2147939262, i64 2147939309, i64 2147939331, i64 2147939359, i64 2147939379}
!10 = !{i64 435834, i64 435859, i64 435881, i64 435897, i64 435909, i64 435929, i64 435953, i64 435969, i64 435981}
!11 = !{i64 2147951081}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148364628, i64 2148364908, i64 2148365242, i64 2148365576}
!14 = !{i64 2152331407}
!15 = !{i64 1727642}
!16 = !{i64 1728060}
!17 = !{i64 2152331047}
