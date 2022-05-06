; ModuleID = '/llk/IR/drivers/pwm/pwm-bcm-iproc.c_pt.bc'
source_filename = "../drivers/pwm/pwm-bcm-iproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.iproc_pwmc = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_bcm_iproc__162_275_iproc_pwmc_driver_init6 = internal global ptr @iproc_pwmc_driver_init, section ".initcall6.init", align 4
@iproc_pwmc_driver = internal global %struct.platform_driver { ptr @iproc_pwmc_probe, ptr @iproc_pwmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_pwmc_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_iproc_pwmc_driver_exit = internal global ptr @iproc_pwmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [87 x i8] c"pwm_bcm_iproc.author=Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [52 x i8] c"pwm_bcm_iproc.description=Broadcom iProc PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [45 x i8] c"pwm_bcm_iproc.file=drivers/pwm/pwm-bcm-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [29 x i8] c"pwm_bcm_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"bcm-iproc-pwm\00", align 1
@bcm_iproc_pwmc_dt = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@iproc_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @iproc_pwmc_apply, ptr @iproc_pwmc_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get clock: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_iproc_pwmc_driver_exit, ptr @__initcall__kmod_pwm_bcm_iproc__162_275_iproc_pwmc_driver_init6, ptr @iproc_pwmc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_pwmc_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iproc_pwmc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @iproc_pwmc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 1
  store ptr @iproc_pwm_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  store i32 4, ptr %8, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %10 = getelementptr inbounds %struct.iproc_pwmc, ptr %3, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %9 to i32
  br label %57

14:                                               ; preds = %5
  %15 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %16 = getelementptr inbounds %struct.iproc_pwmc, ptr %3, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %19) #5
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %57

22:                                               ; preds = %14
  %23 = tail call i32 @clk_prepare(ptr noundef %15) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef %15) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %23, %22 ], [ %26, %28 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %30) #5
  br label %57

33:                                               ; preds = %29, %25
  %34 = load ptr, ptr %10, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %36 = load i32, ptr %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %38, %33
  %39 = phi i32 [ %48, %38 ], [ 0, %33 ]
  %40 = phi i32 [ %47, %38 ], [ %35, %33 ]
  %41 = add i32 %39, 15
  %42 = shl nuw i32 1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = add i32 %39, 8
  %46 = shl nuw i32 1, %45
  %47 = or i32 %44, %46
  %48 = add nuw i32 %39, 1
  %49 = icmp eq i32 %48, %36
  br i1 %49, label %50, label %38

50:                                               ; preds = %38, %33
  %51 = phi i32 [ %35, %33 ], [ %47, %38 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %52 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #4, !srcloc !11
  %53 = tail call i32 @pwmchip_add(ptr noundef nonnull %3) #4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %53) #5
  %56 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %56) #4
  tail call void @clk_unprepare(ptr noundef %56) #4
  br label %57

57:                                               ; preds = %55, %50, %32, %18, %12, %1
  %58 = phi i32 [ %13, %12 ], [ %21, %18 ], [ %30, %32 ], [ -12, %1 ], [ %53, %55 ], [ %53, %50 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.iproc_pwmc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.iproc_pwmc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  br label %9

9:                                                ; preds = %27, %3
  %10 = phi i32 [ 0, %3 ], [ %11, %27 ]
  %11 = add nuw nsw i32 %10, 1
  %12 = mul i32 %11, 1000000000
  %13 = zext i32 %12 to i64
  %14 = load i64, ptr %2, align 8
  %15 = mul i64 %14, %7
  %16 = tail call i64 @div64_u64(i64 noundef %15, i64 noundef %13) #4
  %17 = trunc i64 %16 to i32
  %18 = load i64, ptr %8, align 8
  %19 = mul i64 %18, %7
  %20 = tail call i64 @div64_u64(i64 noundef %19, i64 noundef %13) #4
  %21 = icmp ult i32 %17, 2
  br i1 %21, label %89, label %22

22:                                               ; preds = %9
  %23 = icmp ult i32 %17, 65536
  %24 = and i64 %20, 4294901760
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %11, 64
  br i1 %28, label %89, label %9

29:                                               ; preds = %22
  %30 = trunc i64 %16 to i32
  %31 = trunc i64 %20 to i32
  %32 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.iproc_pwmc, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %37 = shl nuw i32 1, %33
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #4, !srcloc !11
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #4
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr i8, ptr %42, i32 36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %45 = load i32, ptr %32, align 8
  %46 = sub i32 3, %45
  %47 = mul i32 %46, 6
  %48 = shl i32 63, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %44, %49
  %51 = shl i32 %10, %47
  %52 = or i32 %50, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %53 = load ptr, ptr %34, align 4
  %54 = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %34, align 4
  %56 = load i32, ptr %32, align 8
  %57 = shl i32 %56, 3
  %58 = or i32 %57, 4
  %59 = getelementptr i8, ptr %55, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %30) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %60 = load ptr, ptr %34, align 4
  %61 = load i32, ptr %32, align 8
  %62 = shl i32 %61, 3
  %63 = add i32 %62, 8
  %64 = getelementptr i8, ptr %60, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %31) #4, !srcloc !11
  %65 = load ptr, ptr %34, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %67 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  %70 = load i32, ptr %32, align 8
  %71 = add i32 %70, 8
  %72 = shl nuw i32 1, %71
  %73 = or i32 %72, %66
  %74 = xor i32 %72, -1
  %75 = and i32 %66, %74
  %76 = select i1 %69, i32 %73, i32 %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %77 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #4, !srcloc !11
  %78 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %79 = load i8, ptr %78, align 4, !range !20
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %29
  %82 = load i32, ptr %32, align 8
  %83 = load ptr, ptr %34, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %85 = shl nuw i32 1, %82
  %86 = or i32 %84, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %87 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %86) #4, !srcloc !11
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748) #4
  br label %89

89:                                               ; preds = %81, %29, %27, %9
  %90 = phi i32 [ 0, %81 ], [ 0, %29 ], [ -22, %9 ], [ -22, %27 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_pwmc_get_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.iproc_pwmc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %7 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, %6
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 %12, ptr %13, align 4
  %14 = load i32, ptr %7, align 8
  %15 = add i32 %14, 8
  %16 = xor i32 %6, -1
  %17 = lshr i32 %16, %15
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.iproc_pwmc, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_get_rate(ptr noundef %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i64 0, ptr %2, align 8
  br label %57

25:                                               ; preds = %3
  %26 = zext i32 %22 to i64
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !24
  %30 = load i32, ptr %7, align 8
  %31 = sub i32 3, %30
  %32 = mul i32 %31, 6
  %33 = lshr i32 %29, %32
  %34 = and i32 %33, 63
  %35 = mul i32 %34, 1000000000
  %36 = add i32 %35, 1000000000
  %37 = zext i32 %36 to i64
  %38 = load ptr, ptr %4, align 4
  %39 = shl i32 %30, 3
  %40 = or i32 %39, 4
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !25
  %43 = and i32 %42, 65535
  %44 = zext i32 %43 to i64
  %45 = mul nuw nsw i64 %37, %44
  %46 = tail call i64 @div64_u64(i64 noundef %45, i64 noundef %26) #4
  store i64 %46, ptr %2, align 8
  %47 = load ptr, ptr %4, align 4
  %48 = load i32, ptr %7, align 8
  %49 = shl i32 %48, 3
  %50 = add i32 %49, 8
  %51 = getelementptr i8, ptr %47, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  %53 = and i32 %52, 65535
  %54 = zext i32 %53 to i64
  %55 = mul nuw nsw i64 %54, %37
  %56 = tail call i64 @div64_u64(i64 noundef %55, i64 noundef %26) #4
  br label %57

57:                                               ; preds = %25, %24
  %58 = phi i64 [ 0, %24 ], [ %56, %25 ]
  %59 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %58, ptr %59, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2482588}
!9 = !{i64 2151368326}
!10 = !{i64 2151368543}
!11 = !{i64 2482170}
!12 = !{i64 2151361988}
!13 = !{i64 2151362191}
!14 = !{i64 2151364573}
!15 = !{i64 2151364973}
!16 = !{i64 2151365348}
!17 = !{i64 2151365749}
!18 = !{i64 2151366237}
!19 = !{i64 2151366471}
!20 = !{i8 0, i8 2}
!21 = !{i64 2151361307}
!22 = !{i64 2151361510}
!23 = !{i64 2151362669}
!24 = !{i64 2151363222}
!25 = !{i64 2151363741}
!26 = !{i64 2151364186}
