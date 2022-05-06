; ModuleID = '/llk/IR/drivers/pwm/pwm-stm32-lp.c_pt.bc'
source_filename = "../drivers/pwm/pwm-stm32-lp.c"
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
%struct.stm32_lptimer = type { ptr, ptr, i8 }
%struct.stm32_pwm_lp = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@stm32_pwm_lp_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-pwm-lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias237 = internal constant [28 x i8] c"alias=platform:stm32-pwm-lp\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [51 x i8] c"description=STMicroelectronics STM32 PWM LP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_pwm_lp_driver = internal global %struct.platform_driver { ptr @stm32_pwm_lp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_pwm_lp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_pwm_lp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"stm32-pwm-lp\00", align 1
@stm32_pwm_lp_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_pwm_lp_suspend, ptr @stm32_pwm_lp_resume, ptr @stm32_pwm_lp_suspend, ptr @stm32_pwm_lp_resume, ptr @stm32_pwm_lp_suspend, ptr @stm32_pwm_lp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_pwm_lp_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @stm32_pwm_lp_apply, ptr @stm32_pwm_lp_get_state, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"max prescaler exceeded\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ARR/CMP registers write issue\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"The consumer didn't stop us (%s)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_license239], section "llvm.metadata"

@__mod_of__stm32_pwm_lp_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_pwm_lp_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_pwm_lp_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_pwm_lp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_lptimer, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %7, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %7, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store ptr %2, ptr %7, align 4
  %15 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 1
  store ptr @stm32_pwm_lp_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 3
  store i32 1, ptr %16, align 4
  %17 = tail call i32 @devm_pwmchip_add(ptr noundef %2, ptr noundef nonnull %7) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %9, %1
  %22 = phi i32 [ 0, %19 ], [ -12, %1 ], [ %17, %9 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %180, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 16, i32 noundef 0) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %180

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #5
  br label %180

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #5
  %25 = zext i32 %24 to i64
  %26 = load i64, ptr %2, align 8
  %27 = mul i64 %26, %25
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %27, i32 0) #6, !srcloc !10
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = extractvalue { i64, i32 } %28, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %27, i64 %29, i32 %30) #6, !srcloc !11
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = icmp ult i64 %32, 536870912
  br i1 %33, label %180, label %34

34:                                               ; preds = %21
  %35 = lshr i64 %32, 29
  %36 = icmp ugt i64 %32, 35184372088831
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = lshr i64 %32, 30
  %39 = icmp ugt i64 %32, 70368744177663
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = lshr i64 %32, 31
  %42 = icmp ugt i64 %32, 140737488355327
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = lshr i64 %32, 32
  %45 = icmp ugt i64 %32, 281474976710655
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = lshr i64 %32, 33
  %48 = icmp ugt i64 %32, 562949953421311
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = lshr i64 %32, 34
  %51 = icmp ugt i64 %32, 1125899906842623
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = lshr i64 %32, 35
  %54 = icmp ugt i64 %32, 2251799813685247
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = lshr i64 %32, 36
  %57 = icmp ugt i64 %32, 4503599627370495
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.1) #7
  br label %180

60:                                               ; preds = %55, %52, %49, %46, %43, %40, %37, %34
  %61 = phi i64 [ %35, %34 ], [ %38, %37 ], [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ]
  %62 = phi i32 [ 0, %34 ], [ 1, %37 ], [ 2, %40 ], [ 3, %43 ], [ 4, %46 ], [ 5, %49 ], [ 6, %52 ], [ 7, %55 ]
  %63 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = mul i64 %64, %61
  %66 = trunc i64 %26 to i32
  %67 = icmp ult i64 %65, 4294967296
  br i1 %67, label %68, label %72, !prof !12

68:                                               ; preds = %60
  %69 = trunc i64 %65 to i32
  %70 = udiv i32 %69, %66
  %71 = zext i32 %70 to i64
  br label %75

72:                                               ; preds = %60
  %73 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %66, i64 %65) #6, !srcloc !13
  %74 = extractvalue { i64, i64 } %73, 1
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i64 [ %71, %68 ], [ %74, %72 ]
  %77 = icmp eq i8 %7, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load ptr, ptr %22, align 4
  %80 = tail call i32 @clk_enable(ptr noundef %79) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %180

82:                                               ; preds = %78, %75
  %83 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 @regmap_read(ptr noundef %84, i32 noundef 12, ptr noundef nonnull %5) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %176

87:                                               ; preds = %82
  %88 = load i32, ptr %5, align 4
  %89 = lshr i32 %88, 9
  %90 = and i32 %89, 7
  %91 = icmp eq i32 %90, %62
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = lshr i32 %88, 21
  %94 = and i32 %93, 1
  %95 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %92, %87
  %99 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = shl nuw nsw i32 %62, 9
  %102 = shl i32 %100, 21
  %103 = and i32 %102, 2097152
  %104 = or i32 %103, %101
  store i32 %104, ptr %4, align 4
  %105 = load ptr, ptr %83, align 4
  %106 = call i32 @regmap_write(ptr noundef %105, i32 noundef 16, i32 noundef 0) #5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %176

108:                                              ; preds = %98
  %109 = load ptr, ptr %83, align 4
  %110 = call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 12, i32 noundef 2100736, i32 noundef %104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %176

112:                                              ; preds = %92
  %113 = icmp eq i8 %7, 1
  br i1 %113, label %118, label %114

114:                                              ; preds = %112, %108
  %115 = load ptr, ptr %83, align 4
  %116 = call i32 @regmap_write(ptr noundef %115, i32 noundef 16, i32 noundef 1) #5
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %176

118:                                              ; preds = %114, %112
  %119 = phi i1 [ true, %114 ], [ false, %112 ]
  %120 = load ptr, ptr %83, align 4
  %121 = trunc i64 %61 to i32
  %122 = add nsw i32 %121, -1
  %123 = call i32 @regmap_write(ptr noundef %120, i32 noundef 24, i32 noundef %122) #5
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %176

125:                                              ; preds = %118
  %126 = load ptr, ptr %83, align 4
  %127 = xor i64 %76, -1
  %128 = add i64 %61, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @regmap_write(ptr noundef %126, i32 noundef 20, i32 noundef %129) #5
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %176

132:                                              ; preds = %125
  %133 = call i64 @ktime_get() #5
  %134 = add i64 %133, 1000000
  %135 = load ptr, ptr %83, align 4
  %136 = call i32 @regmap_read(ptr noundef %135, i32 noundef 0, ptr noundef nonnull %4) #5
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %148, %132
  %139 = load i32, ptr %4, align 4
  %140 = and i32 %139, 24
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = call i64 @ktime_get() #5
  %144 = icmp sgt i64 %143, %134
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load ptr, ptr %83, align 4
  %147 = call i32 @regmap_read(ptr noundef %146, i32 noundef 0, ptr noundef nonnull %4) #5
  br label %152

148:                                              ; preds = %142
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %149 = load ptr, ptr %83, align 4
  %150 = call i32 @regmap_read(ptr noundef %149, i32 noundef 0, ptr noundef nonnull %4) #5
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %138, label %152

152:                                              ; preds = %148, %145, %138, %132
  %153 = phi i32 [ %147, %145 ], [ %136, %132 ], [ 0, %138 ], [ %150, %148 ]
  %154 = icmp ne i32 %153, 0
  %155 = load i32, ptr %4, align 4
  %156 = and i32 %155, 24
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %154, i1 true, i1 %157
  %159 = select i1 %158, i32 0, i32 -110
  %160 = select i1 %154, i32 %153, i32 %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %152
  %163 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.2) #7
  br label %176

164:                                              ; preds = %152
  %165 = load ptr, ptr %83, align 4
  %166 = call i32 @regmap_write(ptr noundef %165, i32 noundef 4, i32 noundef 24) #5
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  br i1 %119, label %169, label %180

169:                                              ; preds = %168
  %170 = load ptr, ptr %83, align 4
  %171 = call i32 @regmap_update_bits_base(ptr noundef %170, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %83, align 4
  %175 = call i32 @regmap_write(ptr noundef %174, i32 noundef 16, i32 noundef 0) #5
  br label %176

176:                                              ; preds = %173, %164, %162, %125, %118, %114, %108, %98, %82
  %177 = phi i32 [ %85, %82 ], [ %106, %98 ], [ %110, %108 ], [ %116, %114 ], [ %123, %118 ], [ %130, %125 ], [ %160, %162 ], [ %166, %164 ], [ %171, %173 ]
  br i1 %77, label %178, label %180

178:                                              ; preds = %176
  %179 = load ptr, ptr %22, align 4
  call void @clk_disable(ptr noundef %179) #5
  br label %180

180:                                              ; preds = %178, %176, %169, %168, %78, %58, %21, %18, %13, %11
  %181 = phi i32 [ -22, %58 ], [ %16, %13 ], [ 0, %18 ], [ 0, %11 ], [ -22, %21 ], [ %80, %78 ], [ 0, %169 ], [ 0, %168 ], [ %177, %178 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_pwm_lp_get_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_get_rate(ptr noundef %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 16, ptr noundef nonnull %4) #5
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %16 = trunc i32 %13 to i8
  store i8 %16, ptr %15, align 4
  br i1 %14, label %20, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %6, align 4
  %19 = call i32 @clk_enable(ptr noundef %18) #5
  br label %20

20:                                               ; preds = %17, %3
  %21 = load ptr, ptr %9, align 4
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 12, ptr noundef nonnull %4) #5
  %23 = load i32, ptr %4, align 4
  %24 = lshr i32 %23, 9
  %25 = and i32 %24, 7
  %26 = lshr i32 %23, 21
  %27 = and i32 %26, 1
  %28 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %27, ptr %28, align 8
  %29 = load ptr, ptr %9, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 24, ptr noundef nonnull %5) #5
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = zext i32 %25 to i64
  %35 = shl nuw nsw i64 %33, %34
  %36 = mul i64 %35, 1000000000
  %37 = lshr i32 %8, 1
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = icmp ult i64 %39, 4294967296
  br i1 %40, label %41, label %45, !prof !12

41:                                               ; preds = %20
  %42 = trunc i64 %39 to i32
  %43 = udiv i32 %42, %8
  %44 = zext i32 %43 to i64
  br label %48

45:                                               ; preds = %20
  %46 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %39) #6, !srcloc !13
  %47 = extractvalue { i64, i64 } %46, 1
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %44, %41 ], [ %47, %45 ]
  store i64 %49, ptr %2, align 8
  %50 = load ptr, ptr %9, align 4
  %51 = call i32 @regmap_read(ptr noundef %50, i32 noundef 20, ptr noundef nonnull %4) #5
  %52 = load i32, ptr %5, align 4
  %53 = load i32, ptr %4, align 4
  %54 = sub i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = shl nuw nsw i64 %55, %34
  %57 = mul i64 %56, 1000000000
  %58 = add i64 %57, %38
  %59 = icmp ult i64 %58, 4294967296
  br i1 %59, label %60, label %64, !prof !12

60:                                               ; preds = %48
  %61 = trunc i64 %58 to i32
  %62 = udiv i32 %61, %8
  %63 = zext i32 %62 to i64
  br label %67

64:                                               ; preds = %48
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %58) #6, !srcloc !13
  %66 = extractvalue { i64, i64 } %65, 1
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i64 [ %63, %60 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %68, ptr %69, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %10) #7
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #5
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ -16, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #5
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 908496, i64 908523, i64 908545, i64 908573}
!11 = !{i64 908904, i64 908931, i64 908964, i64 908985, i64 909012, i64 909038}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148394040, i64 2148394320, i64 2148394654, i64 2148394988}
