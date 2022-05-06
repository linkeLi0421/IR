; ModuleID = '/llk/IR/drivers/pwm/pwm-brcmstb.c_pt.bc'
source_filename = "../drivers/pwm/pwm-brcmstb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmstb_pwm = type { ptr, %struct.spinlock, ptr, %struct.pwm_chip }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@brcmstb_pwm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author162 = internal constant [47 x i8] c"author=Florian Fainelli <f.fainelli@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description163 = internal constant [36 x i8] c"description=Broadcom STB PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias164 = internal constant [27 x i8] c"alias=platform:pwm-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@brcmstb_pwm_driver = internal global %struct.platform_driver { ptr @brcmstb_pwm_probe, ptr @brcmstb_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"pwm-brcmstb\00", align 1
@brcmstb_pwm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmstb_pwm_suspend, ptr @brcmstb_pwm_resume, ptr @brcmstb_pwm_suspend, ptr @brcmstb_pwm_resume, ptr @brcmstb_pwm_suspend, ptr @brcmstb_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to obtain clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@brcmstb_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module, ptr @brcmstb_pwm_config, ptr null, ptr @brcmstb_pwm_enable, ptr @brcmstb_pwm_disable }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias164, ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_license165], section "llvm.metadata"

@__mod_of__brcmstb_pwm_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @brcmstb_pwm_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_pwm_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_pwm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 48, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %8 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %11 = ptrtoint ptr %7 to i32
  br label %39

12:                                               ; preds = %5
  %13 = tail call i32 @clk_prepare(ptr noundef %7) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %7) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %13, %12 ], [ %16, %18 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %20) #5
  br label %39

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 3
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 3, i32 1
  store ptr @brcmstb_pwm_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 3, i32 3
  store i32 2, ptr %27, align 4
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %28, ptr %3, align 4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = ptrtoint ptr %28 to i32
  br label %36

32:                                               ; preds = %23
  %33 = tail call i32 @pwmchip_add(ptr noundef %25) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %33) #5
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32 [ %31, %30 ], [ %33, %35 ]
  %38 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %38) #4
  tail call void @clk_unprepare(ptr noundef %38) #4
  br label %39

39:                                               ; preds = %36, %32, %22, %10, %1
  %40 = phi i32 [ %11, %10 ], [ %20, %22 ], [ %37, %36 ], [ -12, %1 ], [ 0, %32 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 3
  tail call void @pwmchip_remove(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #4
  tail call void @clk_unprepare(ptr noundef %6) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pwm_config(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %2, %3
  br i1 %8, label %53, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = sext i32 %3 to i64
  %12 = add i32 %2, 1
  %13 = sext i32 %12 to i64
  %14 = icmp ne i32 %2, 0
  br label %15

15:                                               ; preds = %47, %9
  %16 = phi i32 [ %49, %47 ], [ 32768, %9 ]
  %17 = load ptr, ptr %10, align 4
  %18 = tail call i32 @clk_get_rate(ptr noundef %17) #4
  %19 = zext i32 %18 to i64
  %20 = zext i32 %16 to i64
  %21 = mul nuw nsw i64 %19, %20
  %22 = lshr i64 %21, 16
  %23 = mul nsw i64 %22, %11
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %23, i32 0) #6, !srcloc !8
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = extractvalue { i64, i32 } %24, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %23, i64 %25, i32 %26) #6, !srcloc !9
  %28 = extractvalue { i64, i32 } %27, 0
  %29 = lshr i64 %28, 29
  %30 = trunc i64 %29 to i32
  %31 = mul nsw i64 %22, %13
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %31, i32 0) #6, !srcloc !8
  %33 = extractvalue { i64, i32 } %32, 0
  %34 = extractvalue { i64, i32 } %32, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %31, i64 %33, i32 %34) #6, !srcloc !9
  %36 = extractvalue { i64, i32 } %35, 0
  %37 = lshr i64 %36, 29
  %38 = trunc i64 %37 to i32
  %39 = icmp eq i32 %30, 0
  %40 = icmp eq i32 %38, 0
  %41 = and i1 %14, %40
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %83, label %43

43:                                               ; preds = %15
  %44 = icmp ult i32 %30, 256
  %45 = icmp ult i32 %38, 256
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = icmp ult i32 %16, 2
  %49 = lshr i32 %16, 1
  br i1 %48, label %83, label %15

50:                                               ; preds = %43
  %51 = trunc i64 %29 to i32
  %52 = trunc i64 %37 to i32
  br label %53

53:                                               ; preds = %50, %4
  %54 = phi i32 [ 32768, %4 ], [ %16, %50 ]
  %55 = phi i32 [ 255, %4 ], [ %52, %50 ]
  %56 = phi i32 [ 254, %4 ], [ %51, %50 ]
  %57 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %57) #4
  %58 = lshr i32 %54, 8
  %59 = shl i32 %7, 3
  %60 = add i32 %59, 8
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %58) #4, !srcloc !10
  %63 = and i32 %54, 255
  %64 = add i32 %59, 12
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %63) #4, !srcloc !10
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #4, !srcloc !11
  %70 = shl i32 %7, 2
  %71 = shl nuw i32 1, %70
  %72 = or i32 %69, %71
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #4, !srcloc !10
  %75 = add i32 %59, 28
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %56) #4, !srcloc !10
  %78 = add i32 %59, 24
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i8, ptr %79, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %55) #4, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %81 = load i16, ptr %57, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br label %83

83:                                               ; preds = %53, %47, %15
  %84 = phi i32 [ 0, %53 ], [ -22, %15 ], [ -22, %47 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pwm_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 2
  %7 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %7) #4
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !11
  %10 = shl i32 2, %6
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = shl i32 9, %6
  %14 = or i32 %12, %13
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #4, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %16 = load i16, ptr %7, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_pwm_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 2
  %7 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %7) #4
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !11
  %10 = shl i32 9, %6
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = shl i32 2, %6
  %14 = or i32 %12, %13
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #4, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %16 = load i16, ptr %7, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pwm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_pwm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_pwm, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 876387, i64 876414, i64 876436, i64 876464}
!9 = !{i64 876795, i64 876822, i64 876855, i64 876876, i64 876903, i64 876929}
!10 = !{i64 1724561}
!11 = !{i64 1724979}
!12 = !{i64 2148884736}
!13 = !{i64 2148880560}
!14 = !{i64 2148880635, i64 2148880662, i64 2148880709, i64 2148880731, i64 2148880759, i64 2148880779}
!15 = !{i64 2148907739}
