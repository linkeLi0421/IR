; ModuleID = '/llk/IR/drivers/pwm/pwm-samsung.c_pt.bc'
source_filename = "../drivers/pwm/pwm-samsung.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_pwm_variant = type { i8, i8, i8, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.samsung_pwm_chip = type { %struct.pwm_chip, %struct.samsung_pwm_variant, i8, i8, ptr, ptr, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.samsung_pwm_channel = type { i32, i32, i32 }

@samsung_pwm_matches = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c24xx_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c64xx_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5p6440-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p64x0_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pc100-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pc100_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p64x0_variant }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license166 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author167 = internal constant [43 x i8] c"author=Tomasz Figa <tomasz.figa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias168 = internal constant [27 x i8] c"alias=platform:samsung-pwm\00", section ".modinfo", align 1
@s3c24xx_variant = internal constant %struct.samsung_pwm_variant { i8 16, i8 1, i8 16, i8 0, i8 0 }, align 1
@s3c64xx_variant = internal constant %struct.samsung_pwm_variant { i8 32, i8 0, i8 -32, i8 0, i8 1 }, align 1
@s5p64x0_variant = internal constant %struct.samsung_pwm_variant { i8 32, i8 0, i8 0, i8 0, i8 1 }, align 1
@s5pc100_variant = internal constant %struct.samsung_pwm_variant { i8 32, i8 0, i8 32, i8 0, i8 1 }, align 1
@pwm_samsung_driver = internal global %struct.platform_driver { ptr @pwm_samsung_probe, ptr @pwm_samsung_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_pwm_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_samsung_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"samsung-pwm\00", align 1
@pwm_samsung_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @pwm_samsung_resume, ptr null, ptr @pwm_samsung_resume, ptr null, ptr @pwm_samsung_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pwm_samsung_ops = internal constant %struct.pwm_ops { ptr @pwm_samsung_request, ptr @pwm_samsung_free, ptr null, ptr null, ptr null, ptr @__this_module, ptr @pwm_samsung_config, ptr @pwm_samsung_set_polarity, ptr @pwm_samsung_enable, ptr @pwm_samsung_disable }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no platform data specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get timer base clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable base clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"pwm-tclk0\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"pwm-tclk1\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to register PWM chip\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"tried to request PWM channel %d without output\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"tclk of PWM %d is inoperational, using tdiv\0A\00", align 1
@samsung_pwm_lock = external dso_local global %struct.spinlock, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"samsung,pwm-outputs\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"%s: invalid channel index in samsung,pwm-outputs property\0A\00", align 1
@__func__.pwm_samsung_parse_dt = private unnamed_addr constant [21 x i8] c"pwm_samsung_parse_dt\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_license166], section "llvm.metadata"

@__mod_of__samsung_pwm_matches_device_table = dso_local alias [6 x %struct.of_device_id], ptr @samsung_pwm_matches

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_samsung_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_samsung_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 60, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %120, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 4
  %7 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 1
  store ptr @pwm_samsung_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 3
  store i32 5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 2
  store i8 31, ptr %9, align 1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %14 = tail call ptr @of_match_node(ptr noundef nonnull @samsung_pwm_matches, ptr noundef nonnull %11) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %17, ptr noundef align 1 dereferenceable(5) %19, i32 5, i1 false) #8
  %20 = tail call ptr @of_find_property(ptr noundef nonnull %11, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %21 = call ptr @of_prop_next_u32(ptr noundef %20, ptr noundef null, ptr noundef nonnull %2) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 1, i32 3
  br label %25

25:                                               ; preds = %35, %23
  %26 = phi ptr [ %21, %23 ], [ %36, %35 ]
  %27 = load i32, ptr %2, align 4
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.pwm_samsung_parse_dt) #9
  br label %35

30:                                               ; preds = %25
  %31 = shl nuw nsw i32 1, %27
  %32 = load i8, ptr %24, align 1
  %33 = trunc i32 %31 to i8
  %34 = or i8 %32, %33
  store i8 %34, ptr %24, align 1
  br label %35

35:                                               ; preds = %30, %29
  %36 = call ptr @of_prop_next_u32(ptr noundef %20, ptr noundef nonnull %26, ptr noundef nonnull %2) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25

38:                                               ; preds = %35, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %47

39:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %120

40:                                               ; preds = %6
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %120

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %46, ptr noundef nonnull align 1 dereferenceable(5) %42, i32 5, i1 false)
  br label %47

47:                                               ; preds = %45, %38
  %48 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %49 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 4
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  br label %120

53:                                               ; preds = %47
  %54 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %55 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 5
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %58 = ptrtoint ptr %54 to i32
  br label %120

59:                                               ; preds = %53
  %60 = call i32 @clk_prepare(ptr noundef %54) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = call i32 @clk_enable(ptr noundef %54) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  call void @clk_unprepare(ptr noundef %54) #8
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ %60, %59 ], [ %63, %65 ]
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66, %62
  %70 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 1, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr i8, ptr %48, i32 8
  %74 = getelementptr i8, ptr %48, i32 8
  %75 = and i32 %72, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %78

77:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  br label %120

78:                                               ; preds = %69
  %79 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  store i8 31, ptr %9, align 1
  %81 = or i32 %80, 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %81) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %79) #8
  br label %82

82:                                               ; preds = %78, %69
  %83 = and i32 %72, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  store i8 31, ptr %9, align 1
  %88 = or i32 %87, 1024
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %88) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %86) #8
  br label %89

89:                                               ; preds = %85, %82
  %90 = and i32 %72, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  store i8 31, ptr %9, align 1
  %95 = or i32 %94, 16384
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %95) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %93) #8
  br label %96

96:                                               ; preds = %92, %89
  %97 = and i32 %72, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  store i8 31, ptr %9, align 1
  %102 = or i32 %101, 262144
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %102) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %100) #8
  br label %103

103:                                              ; preds = %99, %96
  %104 = and i32 %72, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  store i8 31, ptr %9, align 1
  %109 = or i32 %108, 4194304
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %109) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %107) #8
  br label %110

110:                                              ; preds = %106, %103
  %111 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %112 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 6
  store ptr %111, ptr %112, align 4
  %113 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  %114 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %4, i32 0, i32 7
  store ptr %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %115, align 8
  %116 = call i32 @pwmchip_add(ptr noundef nonnull %4) #8
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %119 = load ptr, ptr %55, align 4
  call void @clk_disable(ptr noundef %119) #8
  call void @clk_unprepare(ptr noundef %119) #8
  br label %120

120:                                              ; preds = %118, %110, %77, %57, %51, %44, %39, %1
  %121 = phi i32 [ %52, %51 ], [ %58, %57 ], [ %67, %77 ], [ %116, %118 ], [ -22, %44 ], [ -12, %1 ], [ -19, %39 ], [ 0, %110 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_request(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 1, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %7) #9
  br label %19

13:                                               ; preds = %2
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 12) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @pwm_set_chip_data(ptr noundef %1, ptr noundef nonnull %15) #8
  br label %19

19:                                               ; preds = %17, %13, %11
  %20 = phi i32 [ 0, %17 ], [ -22, %11 ], [ -12, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_samsung_free(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_config(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @__pwm_samsung_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_set_polarity(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = add i32 %6, 1
  %9 = select i1 %7, i32 0, i32 %8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %11 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = shl nuw i32 1, %6
  %16 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = trunc i32 %15 to i8
  br i1 %4, label %19, label %25

19:                                               ; preds = %3
  %20 = or i8 %17, %18
  store i8 %20, ptr %16, align 1
  %21 = shl i32 %9, 2
  %22 = or i32 %21, 2
  %23 = shl nuw i32 1, %22
  %24 = or i32 %23, %14
  br label %33

25:                                               ; preds = %3
  %26 = xor i8 %18, -1
  %27 = and i8 %17, %26
  store i8 %27, ptr %16, align 1
  %28 = shl i32 %9, 2
  %29 = or i32 %28, 2
  %30 = shl nuw i32 1, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %14, %31
  br label %33

33:                                               ; preds = %25, %19
  %34 = phi i32 [ %24, %19 ], [ %32, %25 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_enable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  %6 = add i32 %4, 1
  %7 = select i1 %5, i32 0, i32 %6
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %9 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %13 = shl i32 %7, 2
  %14 = shl nuw i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = or i32 %13, 1
  %18 = shl nuw i32 1, %17
  %19 = or i32 %16, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !12
  %22 = icmp ult i32 %7, 5
  %23 = select i1 %22, i32 3, i32 2
  %24 = or i32 %23, %13
  %25 = shl nuw i32 1, %24
  %26 = xor i32 %18, -1
  %27 = and i32 %16, %26
  %28 = or i32 %25, %14
  %29 = or i32 %28, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !12
  %32 = load i32, ptr %3, align 8
  %33 = shl nuw i32 1, %32
  %34 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 3
  %35 = load i8, ptr %34, align 2
  %36 = trunc i32 %33 to i8
  %37 = xor i8 %36, -1
  %38 = and i8 %35, %37
  store i8 %38, ptr %34, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_samsung_disable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  %6 = add i32 %4, 1
  %7 = select i1 %5, i32 0, i32 %6
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %9 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %13 = icmp ult i32 %7, 5
  %14 = shl i32 %7, 2
  %15 = select i1 %13, i32 3, i32 2
  %16 = or i32 %15, %14
  %17 = shl nuw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %12, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !12
  %22 = load ptr, ptr %9, align 4
  %23 = load i32, ptr %3, align 8
  %24 = mul i32 %23, 12
  %25 = add i32 %24, 16
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %46

29:                                               ; preds = %2
  %30 = load i32, ptr %3, align 8
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %35 = shl i32 %30, 2
  %36 = add i32 %35, 5
  %37 = shl nuw i32 1, %36
  %38 = select i1 %31, i32 2, i32 %37
  %39 = or i32 %38, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !12
  %42 = xor i32 %38, -1
  %43 = and i32 %34, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !12
  br label %46

46:                                               ; preds = %29, %2
  %47 = load i32, ptr %3, align 8
  %48 = shl nuw i32 1, %47
  %49 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 3
  %50 = load i8, ptr %49, align 2
  %51 = trunc i32 %48 to i8
  %52 = or i8 %50, %51
  store i8 %52, ptr %49, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %8) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pwm_samsung_config(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
  %6 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  %7 = getelementptr inbounds %struct.samsung_pwm_channel, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %3, 1000000000
  br i1 %9, label %180, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = mul i32 %14, 12
  %16 = add i32 %15, 12
  %17 = getelementptr i8, ptr %12, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %19 = load ptr, ptr %11, align 4
  %20 = load i32, ptr %13, align 8
  %21 = mul i32 %20, 12
  %22 = add i32 %21, 16
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %25 = load i32, ptr %6, align 4
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = add i32 %18, 1
  br i1 %4, label %29, label %138

29:                                               ; preds = %27, %10
  %30 = sdiv i32 1000000000, %3
  %31 = load i32, ptr %13, align 8
  %32 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %36 = shl i32 %31, 2
  %37 = lshr i32 %35, %36
  %38 = and i32 %37, 15
  %39 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 1, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 1, %38
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %29
  %46 = icmp ult i32 %31, 2
  %47 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 7
  %49 = select i1 %46, ptr %47, ptr %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = tail call i32 @clk_get_rate(ptr noundef %50) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %134

55:                                               ; preds = %52, %45
  %56 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.9, i32 noundef %31) #9
  br label %57

57:                                               ; preds = %55, %29
  %58 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @clk_get_rate(ptr noundef %59) #8
  %61 = load ptr, ptr %11, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %63 = icmp ugt i32 %31, 1
  %64 = lshr i32 %62, 8
  %65 = select i1 %63, i32 %64, i32 %62
  %66 = and i32 %65, 255
  %67 = add nuw nsw i32 %66, 1
  %68 = udiv i32 %60, %67
  %69 = load i8, ptr %32, align 1
  %70 = icmp ult i8 %69, 32
  %71 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %0, i32 0, i32 1, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = icmp ult i8 %72, 4
  %74 = select i1 %70, i1 %73, i1 false
  br i1 %74, label %77, label %75

75:                                               ; preds = %57
  %76 = zext i8 %72 to i32
  br label %107

77:                                               ; preds = %57
  %78 = zext i8 %69 to i32
  %79 = zext i8 %72 to i32
  %80 = add nuw nsw i32 %79, %78
  %81 = lshr i32 %68, %80
  %82 = icmp ult i32 %81, %30
  br i1 %82, label %104, label %83

83:                                               ; preds = %77
  %84 = add nuw nsw i32 %79, 1
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %107, label %86

86:                                               ; preds = %83
  %87 = add nuw nsw i32 %84, %78
  %88 = lshr i32 %68, %87
  %89 = icmp ult i32 %88, %30
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  %91 = add nuw nsw i32 %79, 2
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %107, label %93

93:                                               ; preds = %90
  %94 = add nuw nsw i32 %91, %78
  %95 = lshr i32 %68, %94
  %96 = icmp ult i32 %95, %30
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = add nuw nsw i32 %79, 3
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = add nuw nsw i32 %98, %78
  %102 = lshr i32 %68, %101
  %103 = icmp ult i32 %102, %30
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %93, %86, %77
  %105 = phi i32 [ %79, %77 ], [ %84, %86 ], [ %91, %93 ], [ %98, %100 ]
  %106 = trunc i32 %105 to i8
  br label %107

107:                                              ; preds = %104, %100, %97, %90, %83, %75
  %108 = phi i32 [ %76, %75 ], [ %79, %104 ], [ %79, %100 ], [ %79, %97 ], [ %79, %90 ], [ %79, %83 ]
  %109 = phi i8 [ %72, %75 ], [ %106, %104 ], [ 4, %100 ], [ 4, %97 ], [ 4, %90 ], [ 4, %83 ]
  %110 = zext i8 %109 to i32
  %111 = shl nuw i32 1, %110
  %112 = trunc i32 %111 to i8
  %113 = and i32 %111, 255
  %114 = icmp eq i8 %112, 0
  %115 = tail call i32 @llvm.ctlz.i32(i32 %113, i1 false) #8, !range !26
  %116 = sub nuw nsw i32 32, %115
  %117 = select i1 %114, i32 0, i32 %116
  %118 = xor i32 %108, -1
  %119 = add nsw i32 %117, %118
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %121 = load ptr, ptr %11, align 4
  %122 = getelementptr i8, ptr %121, i32 4
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %124 = and i32 %36, 252
  %125 = shl i32 15, %124
  %126 = xor i32 %125, -1
  %127 = and i32 %123, %126
  %128 = and i32 %119, 255
  %129 = shl i32 %128, %124
  %130 = or i32 %129, %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %131 = load ptr, ptr %11, align 4
  %132 = getelementptr i8, ptr %131, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %120) #8
  %133 = lshr i32 %68, %110
  br label %134

134:                                              ; preds = %107, %52
  %135 = phi i32 [ %133, %107 ], [ %53, %52 ]
  %136 = udiv i32 1000000000, %135
  %137 = udiv i32 %3, %136
  br label %138

138:                                              ; preds = %134, %27
  %139 = phi i32 [ %137, %134 ], [ %28, %27 ]
  %140 = phi i32 [ %136, %134 ], [ %8, %27 ]
  %141 = icmp ult i32 %139, 2
  br i1 %141, label %180, label %142

142:                                              ; preds = %138
  %143 = udiv i32 %2, %140
  %144 = icmp ugt i32 %140, %2
  %145 = add i32 %139, -1
  %146 = xor i32 %143, -1
  %147 = select i1 %144, i32 -2, i32 %146
  %148 = add i32 %147, %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %149 = load ptr, ptr %11, align 4
  %150 = load i32, ptr %13, align 8
  %151 = mul i32 %150, 12
  %152 = add i32 %151, 12
  %153 = getelementptr i8, ptr %149, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %145) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %154 = load ptr, ptr %11, align 4
  %155 = load i32, ptr %13, align 8
  %156 = mul i32 %155, 12
  %157 = add i32 %156, 16
  %158 = getelementptr i8, ptr %154, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %148) #8, !srcloc !12
  %159 = icmp eq i32 %24, -1
  br i1 %159, label %160, label %178

160:                                              ; preds = %142
  %161 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %162 = load i32, ptr %13, align 8
  %163 = icmp eq i32 %162, 0
  %164 = load ptr, ptr %11, align 4
  %165 = getelementptr i8, ptr %164, i32 8
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %167 = shl i32 %162, 2
  %168 = add i32 %167, 5
  %169 = shl nuw i32 1, %168
  %170 = select i1 %163, i32 2, i32 %169
  %171 = or i32 %170, %166
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %172 = load ptr, ptr %11, align 4
  %173 = getelementptr i8, ptr %172, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #8, !srcloc !12
  %174 = xor i32 %170, -1
  %175 = and i32 %166, %174
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %176 = load ptr, ptr %11, align 4
  %177 = getelementptr i8, ptr %176, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %161) #8
  br label %178

178:                                              ; preds = %160, %142
  store i32 %3, ptr %6, align 4
  store i32 %140, ptr %7, align 4
  %179 = getelementptr inbounds %struct.samsung_pwm_channel, ptr %6, i32 0, i32 1
  store i32 %2, ptr %179, align 4
  br label %180

180:                                              ; preds = %178, %138, %5
  %181 = phi i32 [ 0, %178 ], [ -34, %5 ], [ -34, %138 ]
  ret i32 %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_samsung_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %3, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %3, i32 0, i32 4
  %8 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %3, i32 0, i32 3
  br label %9

9:                                                ; preds = %119, %1
  %10 = phi i32 [ 0, %1 ], [ %120, %119 ]
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr %struct.pwm_device, ptr %11, i32 %10
  %13 = tail call ptr @pwm_get_chip_data(ptr noundef %12) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %119, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %5, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 1, %10
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = load i8, ptr %6, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %18, %23
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq i32 %10, 0
  %27 = add nuw nsw i32 %10, 1
  %28 = select i1 %26, i32 0, i32 %27
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %33 = load i8, ptr %6, align 1
  %34 = trunc i32 %18 to i8
  br i1 %25, label %41, label %35

35:                                               ; preds = %21
  %36 = or i8 %33, %34
  store i8 %36, ptr %6, align 1
  %37 = shl nuw nsw i32 %28, 2
  %38 = or i32 %37, 2
  %39 = shl nuw i32 1, %38
  %40 = or i32 %32, %39
  br label %49

41:                                               ; preds = %21
  %42 = xor i8 %34, -1
  %43 = and i8 %33, %42
  store i8 %43, ptr %6, align 1
  %44 = shl nuw nsw i32 %28, 2
  %45 = or i32 %44, 2
  %46 = shl nuw i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %32, %47
  br label %49

49:                                               ; preds = %41, %35
  %50 = phi i32 [ %40, %35 ], [ %48, %41 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %29) #8
  br label %53

53:                                               ; preds = %49, %15
  %54 = load i32, ptr %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.samsung_pwm_channel, ptr %13, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call fastcc i32 @__pwm_samsung_config(ptr noundef %3, ptr noundef %12, i32 noundef %58, i32 noundef %54, i1 noundef zeroext true)
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %61 = getelementptr %struct.pwm_device, ptr %11, i32 %10, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %67 = shl i32 %62, 2
  %68 = add i32 %67, 5
  %69 = shl nuw i32 1, %68
  %70 = select i1 %63, i32 2, i32 %69
  %71 = or i32 %70, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %72 = load ptr, ptr %7, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #8, !srcloc !12
  %74 = xor i32 %70, -1
  %75 = and i32 %66, %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr i8, ptr %76, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %60) #8
  br label %78

78:                                               ; preds = %56, %53
  %79 = load i8, ptr %8, align 2
  %80 = zext i8 %79 to i32
  %81 = and i32 %18, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void @pwm_samsung_disable(ptr noundef %3, ptr noundef %12)
  br label %119

84:                                               ; preds = %78
  %85 = getelementptr %struct.pwm_device, ptr %11, i32 %10, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 0
  %88 = add i32 %86, 1
  %89 = select i1 %87, i32 0, i32 %88
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr i8, ptr %91, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %94 = shl i32 %89, 2
  %95 = shl nuw i32 1, %94
  %96 = xor i32 %95, -1
  %97 = and i32 %93, %96
  %98 = or i32 %94, 1
  %99 = shl nuw i32 1, %98
  %100 = or i32 %97, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %7, align 4
  %102 = getelementptr i8, ptr %101, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #8, !srcloc !12
  %103 = icmp ult i32 %89, 5
  %104 = select i1 %103, i32 3, i32 2
  %105 = or i32 %104, %94
  %106 = shl nuw i32 1, %105
  %107 = xor i32 %99, -1
  %108 = and i32 %97, %107
  %109 = or i32 %106, %95
  %110 = or i32 %109, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %111 = load ptr, ptr %7, align 4
  %112 = getelementptr i8, ptr %111, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #8, !srcloc !12
  %113 = load i32, ptr %85, align 8
  %114 = shl nuw i32 1, %113
  %115 = load i8, ptr %8, align 2
  %116 = trunc i32 %114 to i8
  %117 = xor i8 %116, -1
  %118 = and i8 %115, %117
  store i8 %118, ptr %8, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %90) #8
  br label %119

119:                                              ; preds = %84, %83, %9
  %120 = add nuw nsw i32 %10, 1
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %9

122:                                              ; preds = %119
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 1734542}
!10 = !{i64 2151491819}
!11 = !{i64 2151492422}
!12 = !{i64 1734124}
!13 = !{i64 2151482973}
!14 = !{i64 2151483418}
!15 = !{i64 2151484342}
!16 = !{i64 2151485278}
!17 = !{i64 2151485817}
!18 = !{i64 2151486414}
!19 = !{i64 2151477201}
!20 = !{i64 2151477517}
!21 = !{i64 2151477964}
!22 = !{i64 2151487341}
!23 = !{i64 2151487803}
!24 = !{i64 2151479478}
!25 = !{i64 2151479916}
!26 = !{i32 0, i32 33}
!27 = !{i64 2151478818}
!28 = !{i64 2151479011}
!29 = !{i64 2151489959}
!30 = !{i64 2151490373}
