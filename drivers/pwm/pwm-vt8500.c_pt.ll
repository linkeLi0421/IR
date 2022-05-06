; ModuleID = '/llk/IR/drivers/pwm/pwm-vt8500.c_pt.bc'
source_filename = "../drivers/pwm/pwm-vt8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vt8500_chip = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_vt8500__166_301_vt8500_pwm_driver_init6 = internal global ptr @vt8500_pwm_driver_init, section ".initcall6.init", align 4
@vt8500_pwm_driver = internal global %struct.platform_driver { ptr @vt8500_pwm_probe, ptr @vt8500_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vt8500_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_vt8500_pwm_driver_exit = internal global ptr @vt8500_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description167 = internal constant [41 x i8] c"pwm_vt8500.description=VT8500 PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [53 x i8] c"pwm_vt8500.author=Tony Prisk <linux@prisktech.co.nz>\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [39 x i8] c"pwm_vt8500.file=drivers/pwm/pwm-vt8500\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [26 x i8] c"pwm_vt8500.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"vt8500-pwm\00", align 1
@vt8500_pwm_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid devicetree node\0A\00", align 1
@vt8500_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @vt8500_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"clock source not specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to add PWM chip\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Waiting for status bits 0x%x to clear timed out\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_vt8500_pwm_driver_exit, ptr @__initcall__kmod_pwm_vt8500__166_301_vt8500_pwm_driver_init6, ptr @vt8500_pwm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt8500_pwm_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vt8500_pwm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt8500_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %35

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  store ptr %2, ptr %8, align 4
  %11 = getelementptr inbounds %struct.pwm_chip, ptr %8, i32 0, i32 1
  store ptr @vt8500_pwm_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pwm_chip, ptr %8, i32 0, i32 3
  store i32 2, ptr %12, align 4
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %14 = getelementptr inbounds %struct.vt8500_chip, ptr %8, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %17 = ptrtoint ptr %13 to i32
  br label %35

18:                                               ; preds = %10
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %20 = getelementptr inbounds %struct.vt8500_chip, ptr %8, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %35

24:                                               ; preds = %18
  %25 = tail call i32 @clk_prepare(ptr noundef %13) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  br label %35

28:                                               ; preds = %24
  %29 = tail call i32 @pwmchip_add(ptr noundef nonnull %8) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  %32 = load ptr, ptr %14, align 4
  tail call void @clk_unprepare(ptr noundef %32) #5
  br label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %34, align 8
  br label %35

35:                                               ; preds = %33, %31, %27, %22, %16, %7, %6
  %36 = phi i32 [ %17, %16 ], [ %23, %22 ], [ %25, %27 ], [ %29, %31 ], [ %29, %33 ], [ -22, %6 ], [ -12, %7 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.vt8500_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %54, label %11

11:                                               ; preds = %3
  %12 = icmp eq i8 %5, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  tail call fastcc void @vt8500_pwm_disable(ptr noundef %0, ptr noundef %1)
  %14 = load i32, ptr %6, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %7, %11 ]
  %17 = getelementptr inbounds %struct.vt8500_chip, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = shl i32 %20, 4
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %24 = icmp eq i32 %16, 1
  %25 = and i32 %23, -3
  %26 = select i1 %24, i32 2, i32 0
  %27 = or i32 %25, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %28 = load ptr, ptr %17, align 4
  %29 = load i32, ptr %19, align 8
  %30 = shl i32 %29, 4
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #5, !srcloc !12
  %32 = load i32, ptr @loops_per_jiffy, align 4
  %33 = urem i32 %32, 1000
  %34 = sub i32 %32, %33
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %44, %15
  %41 = phi i32 [ %42, %44 ], [ %34, %15 ]
  %42 = add i32 %41, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr i8, ptr %45, i32 64
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %40

50:                                               ; preds = %15
  %51 = icmp eq i32 %34, 0
  br i1 %51, label %52, label %54, !prof !16

52:                                               ; preds = %50, %40
  %53 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  br label %54

54:                                               ; preds = %52, %50, %44, %3
  %55 = phi i8 [ %5, %3 ], [ 0, %50 ], [ 0, %52 ], [ 0, %44 ]
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %58 = load i8, ptr %57, align 4, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  br i1 %56, label %263, label %61

61:                                               ; preds = %60
  tail call fastcc void @vt8500_pwm_disable(ptr noundef %0, ptr noundef %1)
  br label %263

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %2, align 8
  %68 = getelementptr inbounds %struct.vt8500_chip, ptr %64, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @clk_enable(ptr noundef %69) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.6) #6
  br label %263

74:                                               ; preds = %62
  %75 = load ptr, ptr %68, align 4
  %76 = tail call i32 @clk_get_rate(ptr noundef %75) #5
  %77 = zext i32 %76 to i64
  %78 = mul i64 %67, %77
  %79 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %78, i32 0) #7, !srcloc !17
  %80 = extractvalue { i64, i32 } %79, 0
  %81 = extractvalue { i64, i32 } %79, 1
  %82 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %78, i64 %80, i32 %81) #7, !srcloc !18
  %83 = extractvalue { i64, i32 } %82, 0
  %84 = lshr i64 %83, 29
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 1, i32 %85
  %88 = add i32 %87, -1
  %89 = icmp ugt i32 %88, 4194303
  br i1 %89, label %90, label %92

90:                                               ; preds = %74
  %91 = load ptr, ptr %68, align 4
  tail call void @clk_disable(ptr noundef %91) #5
  br label %263

92:                                               ; preds = %74
  %93 = lshr i32 %88, 12
  %94 = add nuw nsw i32 %93, 1
  %95 = udiv i32 %87, %94
  %96 = add nsw i32 %95, -1
  %97 = tail call i32 @llvm.umin.i32(i32 %96, i32 4095) #5
  %98 = zext i32 %97 to i64
  %99 = mul i64 %66, %98
  %100 = tail call i64 @div64_u64(i64 noundef %99, i64 noundef %67) #5
  %101 = trunc i64 %100 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %102 = getelementptr inbounds %struct.vt8500_chip, ptr %64, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = shl i32 %105, 4
  %107 = or i32 %106, 4
  %108 = getelementptr i8, ptr %103, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %93) #5, !srcloc !12
  %109 = load i32, ptr @loops_per_jiffy, align 4
  %110 = urem i32 %109, 1000
  %111 = sub i32 %109, %110
  %112 = load ptr, ptr %102, align 4
  %113 = getelementptr i8, ptr %112, i32 64
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %121, %92
  %118 = phi i32 [ %119, %121 ], [ %111, %92 ]
  %119 = add i32 %118, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %122 = load ptr, ptr %102, align 4
  %123 = getelementptr i8, ptr %122, i32 64
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %117

127:                                              ; preds = %92
  %128 = icmp eq i32 %111, 0
  br i1 %128, label %129, label %131, !prof !16

129:                                              ; preds = %127, %117
  %130 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %130, ptr noundef nonnull @.str.5, i32 noundef 2) #6
  br label %131

131:                                              ; preds = %129, %127, %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %132 = load ptr, ptr %102, align 4
  %133 = load i32, ptr %104, align 8
  %134 = shl i32 %133, 4
  %135 = or i32 %134, 8
  %136 = getelementptr i8, ptr %132, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %97) #5, !srcloc !12
  %137 = load i32, ptr @loops_per_jiffy, align 4
  %138 = urem i32 %137, 1000
  %139 = sub i32 %137, %138
  %140 = load ptr, ptr %102, align 4
  %141 = getelementptr i8, ptr %140, i32 64
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %149, %131
  %146 = phi i32 [ %147, %149 ], [ %139, %131 ]
  %147 = add i32 %146, -1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %150 = load ptr, ptr %102, align 4
  %151 = getelementptr i8, ptr %150, i32 64
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %153 = and i32 %152, 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %145

155:                                              ; preds = %131
  %156 = icmp eq i32 %139, 0
  br i1 %156, label %157, label %159, !prof !16

157:                                              ; preds = %155, %145
  %158 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.5, i32 noundef 4) #6
  br label %159

159:                                              ; preds = %157, %155, %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %160 = load ptr, ptr %102, align 4
  %161 = load i32, ptr %104, align 8
  %162 = shl i32 %161, 4
  %163 = or i32 %162, 12
  %164 = getelementptr i8, ptr %160, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %101) #5, !srcloc !12
  %165 = load i32, ptr @loops_per_jiffy, align 4
  %166 = urem i32 %165, 1000
  %167 = sub i32 %165, %166
  %168 = load ptr, ptr %102, align 4
  %169 = getelementptr i8, ptr %168, i32 64
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %171 = and i32 %170, 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %177, %159
  %174 = phi i32 [ %175, %177 ], [ %167, %159 ]
  %175 = add i32 %174, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %178 = load ptr, ptr %102, align 4
  %179 = getelementptr i8, ptr %178, i32 64
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %173

183:                                              ; preds = %159
  %184 = icmp eq i32 %167, 0
  br i1 %184, label %185, label %187, !prof !16

185:                                              ; preds = %183, %173
  %186 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.5, i32 noundef 8) #6
  br label %187

187:                                              ; preds = %185, %183, %177
  %188 = load ptr, ptr %102, align 4
  %189 = load i32, ptr %104, align 8
  %190 = shl i32 %189, 4
  %191 = getelementptr i8, ptr %188, i32 %190
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %193 = or i32 %192, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %194 = load ptr, ptr %102, align 4
  %195 = load i32, ptr %104, align 8
  %196 = shl i32 %195, 4
  %197 = getelementptr i8, ptr %194, i32 %196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %193) #5, !srcloc !12
  %198 = load i32, ptr @loops_per_jiffy, align 4
  %199 = urem i32 %198, 1000
  %200 = sub i32 %198, %199
  %201 = load ptr, ptr %102, align 4
  %202 = getelementptr i8, ptr %201, i32 64
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %210, %187
  %207 = phi i32 [ %208, %210 ], [ %200, %187 ]
  %208 = add i32 %207, -1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %211 = load ptr, ptr %102, align 4
  %212 = getelementptr i8, ptr %211, i32 64
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %206

216:                                              ; preds = %187
  %217 = icmp eq i32 %200, 0
  br i1 %217, label %218, label %220, !prof !16

218:                                              ; preds = %216, %206
  %219 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %219, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  br label %220

220:                                              ; preds = %218, %216, %210
  %221 = load ptr, ptr %68, align 4
  tail call void @clk_disable(ptr noundef %221) #5
  br i1 %56, label %222, label %263

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.vt8500_chip, ptr %0, i32 0, i32 2
  %224 = load ptr, ptr %223, align 4
  %225 = tail call i32 @clk_enable(ptr noundef %224) #5
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.6) #6
  br label %263

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.vt8500_chip, ptr %0, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = load i32, ptr %104, align 8
  %233 = shl i32 %232, 4
  %234 = getelementptr i8, ptr %231, i32 %233
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %236 = or i32 %235, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %237 = load ptr, ptr %230, align 4
  %238 = load i32, ptr %104, align 8
  %239 = shl i32 %238, 4
  %240 = getelementptr i8, ptr %237, i32 %239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %236) #5, !srcloc !12
  %241 = load i32, ptr @loops_per_jiffy, align 4
  %242 = urem i32 %241, 1000
  %243 = sub i32 %241, %242
  %244 = load ptr, ptr %230, align 4
  %245 = getelementptr i8, ptr %244, i32 64
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %253, %229
  %250 = phi i32 [ %251, %253 ], [ %243, %229 ]
  %251 = add i32 %250, -1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %249
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %254 = load ptr, ptr %230, align 4
  %255 = getelementptr i8, ptr %254, i32 64
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %263, label %249

259:                                              ; preds = %229
  %260 = icmp eq i32 %243, 0
  br i1 %260, label %261, label %263, !prof !16

261:                                              ; preds = %259, %249
  %262 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %262, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  br label %263

263:                                              ; preds = %261, %259, %253, %227, %220, %90, %72, %61, %60
  %264 = phi i32 [ 0, %61 ], [ 0, %60 ], [ 0, %220 ], [ %225, %227 ], [ 0, %259 ], [ 0, %261 ], [ -22, %90 ], [ %70, %72 ], [ 0, %253 ]
  ret i32 %264
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vt8500_pwm_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.vt8500_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %6, 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %10 = and i32 %9, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %5, align 8
  %13 = shl i32 %12, 4
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #5, !srcloc !12
  %15 = load i32, ptr @loops_per_jiffy, align 4
  %16 = urem i32 %15, 1000
  %17 = sub i32 %15, %16
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %27, %2
  %24 = phi i32 [ %25, %27 ], [ %17, %2 ]
  %25 = add i32 %24, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !15
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %23

33:                                               ; preds = %2
  %34 = icmp eq i32 %17, 0
  br i1 %34, label %35, label %37, !prof !16

35:                                               ; preds = %33, %23
  %36 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  br label %37

37:                                               ; preds = %35, %33, %27
  %38 = getelementptr inbounds %struct.vt8500_chip, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @clk_disable(ptr noundef %39) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 3738704}
!10 = !{i64 2151540842}
!11 = !{i64 2151541252}
!12 = !{i64 3738286}
!13 = !{i64 2151523849}
!14 = !{i64 2151524095}
!15 = !{i64 2151523937}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 409995, i64 410022, i64 410044, i64 410072}
!18 = !{i64 410403, i64 410430, i64 410463, i64 410484, i64 410511, i64 410537}
!19 = !{i64 2151531915}
!20 = !{i64 2151532409}
!21 = !{i64 2151532891}
!22 = !{i64 2151533579}
!23 = !{i64 2151533907}
!24 = !{i64 2151536364}
!25 = !{i64 2151536692}
!26 = !{i64 2151538603}
!27 = !{i64 2151538931}
